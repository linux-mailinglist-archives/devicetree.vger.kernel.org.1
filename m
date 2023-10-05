Return-Path: <devicetree+bounces-6162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5470B7BA0C6
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:49:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 13754281AC5
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648D427EF6;
	Thu,  5 Oct 2023 14:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeBU9A4w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491A22AB49
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5188DC433CA;
	Thu,  5 Oct 2023 14:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696517385;
	bh=3sV+Kpk/aoS9Ewxx5MLDNTFd0TDttPAvuUnzXSdo9/w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=aeBU9A4wkKpVleSQBS0RU912dt7oDQeQVY99NMmTq6YmxKN3dh2VGyPwCPcHPTLHf
	 eOvTC6eLiHg+xAQ3zUdWo0pPbzW8pLq9AtV2oPcyDyuzAriFblF0jfhNonTYZMtv6m
	 161bbkmQQ2I/bWip2oFAG6+Fh6u/memb20bKtw2aBVRyUWyPm4F8b4C/2hZSBAeeDf
	 Ex3h2Of1QH6FLKh61m8Wjm2Og6BroPPDbJLtPun0Mr43p1DVuYJRNsXBSxkse71jT+
	 P0bcnDsNGU35fdXySL3Bj62LbHvU6iS0ioO3opbdBIYqDJjSlbALLxJ4qdcsZ/B5wK
	 9jZegSmhTS7qA==
Date: Thu, 5 Oct 2023 09:49:43 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v23 12/16] PCI: add T_PVPERL macro
Message-ID: <20231005144943.GA746077@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926122431.3974714-13-yoshihiro.shimoda.uh@renesas.com>

On Tue, Sep 26, 2023 at 09:24:27PM +0900, Yoshihiro Shimoda wrote:
> According to the PCI Express Card Electromechanical Specification,
> Power stable to PERST# inactive interval is 100 ms as minimum.
> So, add the macro to use PCIe controller drivers.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

Beautiful, thank you!

No need to repost; whoever applies this, please:

  - s/add/Add/ in subject
  - Add sec 2.9.2 to spec citation in commit log and comment (can use
    "PCIe CEM r5.0, sec 2.9.2" for brevity)

> ---
>  drivers/pci/pci.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 39a8932dc340..5ecbcf041179 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -13,6 +13,9 @@
>  
>  #define PCIE_LINK_RETRAIN_TIMEOUT_MS	1000
>  
> +/* Power stable to PERST# inactive from PCIe card Electromechanical Spec */
> +#define PCIE_T_PVPERL_MS		100
> +
>  /*
>   * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
>   * Recommends 1ms to 10ms timeout to check L2 ready.
> -- 
> 2.25.1
> 

