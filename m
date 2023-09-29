Return-Path: <devicetree+bounces-4761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6C77B3CA8
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 00:37:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 31004B209A2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 22:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1162943AAB;
	Fri, 29 Sep 2023 22:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0242433E7
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 22:37:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29AD2C433C8;
	Fri, 29 Sep 2023 22:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696027040;
	bh=+FQSIscV9bqF6D32g6rcCgdI77KM9F6e8NRJftItj7k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=nHTf1To0ChjzbhV1T/9z1W1L5KJpJqgPQ/nDjvgh2b2zZTkOjJ+jM7SpH5f8Sh9ma
	 AQeyYKoWeOfqHnJVSZofA8QWDN1GT695GJf0glmYDxw0w+drOuUTjr9yul2v8Bziav
	 5Oq4SLHYkZtprKmZWIoexApRS1txHTfzueQq9lQao54pWDtUThjhjAo/9ZyYI4L0pI
	 3leK2elL54RqphCRfdXLA3R8ppBQUtDyBNwLOwaQzsnLk27oJHa6xXuFjlVGZ/i9p7
	 Tpz2gfVgcSYyja4qC0C3TRJEpCxvGGJUaHzLrqQfvDt5vmjo9Xe8sHk8zvDd673/ed
	 zHO9EzwaH/bLA==
Date: Fri, 29 Sep 2023 17:37:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lizhi Hou <lizhi.hou@amd.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, herve.codina@bootlin.com,
	Jonathan.Cameron@huawei.com, bhelgaas@google.com, robh@kernel.org
Subject: Re: [PATCH v3] PCI: of: Fix memory leak when
 of_changeset_create_node() failed
Message-ID: <20230929223718.GA558826@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1696007417-42059-1-git-send-email-lizhi.hou@amd.com>

On Fri, Sep 29, 2023 at 10:10:17AM -0700, Lizhi Hou wrote:
> In function of_pci_make_dev_node(), the cset needs to be destroyed and
> freed when of_changeset_create_node() returns null.
> 
> Fixes: 407d1a51921e ("PCI: Create device tree node for bridge")
> Reported-by: Herve Codina <herve.codina@bootlin.com>
> Closes: https://lore.kernel.org/all/20230911171319.495bb837@bootlin.com/
> Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>

Applied with Herve's Reviewed-by to for-linus for v6.6, since
407d1a51921e appeared in v6.6-rc1, thanks!

> ---
>  drivers/pci/of.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 2af64bcb7da3..51e3dd0ea5ab 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -657,30 +657,33 @@ void of_pci_make_dev_node(struct pci_dev *pdev)
>  
>  	cset = kmalloc(sizeof(*cset), GFP_KERNEL);
>  	if (!cset)
> -		goto failed;
> +		goto out_free_name;
>  	of_changeset_init(cset);
>  
>  	np = of_changeset_create_node(cset, ppnode, name);
>  	if (!np)
> -		goto failed;
> -	np->data = cset;
> +		goto out_destroy_cset;
>  
>  	ret = of_pci_add_properties(pdev, cset, np);
>  	if (ret)
> -		goto failed;
> +		goto out_free_node;
>  
>  	ret = of_changeset_apply(cset);
>  	if (ret)
> -		goto failed;
> +		goto out_free_node;
>  
> +	np->data = cset;
>  	pdev->dev.of_node = np;
>  	kfree(name);
>  
>  	return;
>  
> -failed:
> -	if (np)
> -		of_node_put(np);
> +out_free_node:
> +	of_node_put(np);
> +out_destroy_cset:
> +	of_changeset_destroy(cset);
> +	kfree(cset);
> +out_free_name:
>  	kfree(name);
>  }
>  #endif
> -- 
> 2.34.1
> 

