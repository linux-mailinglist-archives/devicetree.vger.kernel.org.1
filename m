Return-Path: <devicetree+bounces-173043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB82AA752F
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF301BC83CE
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF61256C99;
	Fri,  2 May 2025 14:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="MvHs98x1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BADB2566E8
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 14:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746196864; cv=none; b=BE2jewPnsqxB8cUzznR88eBk1v03XYphJV+t77AejhBYiI2jUdBxUS0+JwjSM4NHIrFGLcE6EU1TwTE9YL1gqIwnWV+KvTgHY47ilsP1BEVKK5sBQ/Ae2yhJDsE7DGaXyYd9+AIVaFYJ0COjwzXq3abzx9FXgbPcpB065Wn3BJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746196864; c=relaxed/simple;
	bh=Tv6HyzmGJHSD/3jqNQZ3cseZiIAIPOloz1oNSkSj0GU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WD8DC/BiEL0kQKd9pRu3FD49gb/MmU2f1/YY/QFyYfu8YEIPxjGxTVOwcHQSGfb2TGmR2YkzeiP74fH+JtZcSXNWHIDda9oFofbHgXJNJYhXp01/+E4jPad5ZzVq4gKPvtHMkuSyOYbVwCW1U7KKIl7nR1cryyC4rK5MOwYKfBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=MvHs98x1; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-73c17c770a7so3135813b3a.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 07:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1746196861; x=1746801661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ZqSQ6cuTeraDQ8N7HfPQ2TAxBQWFkOvwWI2baSiTiQ=;
        b=MvHs98x1Tsbh4d+iBx23CEITqW57QqwJOojThs2KMheFpshIwXBDg3bZjPxcVxQ/bs
         gmvaXmLdSP8fcOhzpN+IYrfkppYSFcfegnT4e3D/ev/fHDsZtdqWh+nudhroMlNgqcE4
         DsC51/sfLwtYS1jLTR/MFHQohci53OcX4Fahf4tv4XgNjBM3K3AKmvAL1rn/rJHbQQLB
         ETDKHzsRqTT31Q1w0okpkAuHuqlTVGf7WPsAASz4Fsqg7YTNkLl00s+tG15EtWRnqEYB
         DA/vBaWG40OSq9lfUP76h0oJpzEjFuD8gfVqmiqbDQOL/IWMwR1T+hozv3B+t+6n7EWZ
         k8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746196861; x=1746801661;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZqSQ6cuTeraDQ8N7HfPQ2TAxBQWFkOvwWI2baSiTiQ=;
        b=XqlgCE5DEzGFqQoPFgZIbWpgegVYpQfsCqQTQTTAm+hzxlQs73U71skvFeWSyvyOQm
         hwMyix0gHlASXeNkJbRab1R6auyG2HJioS61X4SVLb8+o1ZUn6IyvVWSnKpBhMHIsPZ3
         2epKIJsiuo4rknzr7hAsMw7R1FvKvK3w2uH0AmXzqT0+u0vsY020CX/nWINXj8XO1uAu
         ncCu05wrJleaVen6NvYIJhGFXPsBY1Og/qOhnpjIuJTgkszmWRs8UVFxKo5Wusz8SSpM
         1dEZE6DXBzUi2bGFcRCQqE88XSSUV+BPls+aXJd6/1Ur4/0mZIhhxovhNr7Iw7xhGibb
         qI7Q==
X-Gm-Message-State: AOJu0YzGmyAoQ45lrqvrjiBZjR7xC7RchWBq4ARc2Gei99HQWykEUOnA
	OM1kqa9NtdsqlP3hsAofL+yYk7ODI2EFj2CloGkZNpDPCbPzVOTCrGknxjDr0w==
X-Gm-Gg: ASbGncsXlzuf8RylACu8So8O2jJgs+1CetDVjkbl16k2/i9eentJuMCp844yY+OXMX/
	JUgwNZ6nDsjNAerhqUUkwN4+BmbCcZrOOXXhmQM4ZbFBN91MMSw3t4JfTUF+JZ6/CA7TMMDzyCA
	rbLFbRQoRDb9lxJfMO7c3PCV5kcUZJJLGirIclwfknVxklgT0k5Wq1Eae3ggrkYf+QvyLjzKNRS
	aPlHfb/YTDIy4vQDok/YKfl+AjeS1rRaT8Gklb3MoGGsxsOEISfRt207cNCNnPGJDN073ZoGGnv
	nURt9P0h7sEW0Lxy/uwCwNcZrgtvtk9M7xhS7pPUYWDkUkk=
X-Google-Smtp-Source: AGHT+IEtNO1S2XSGAqA6MP+nWqL/WOdbZtcPPBhn8RFLoa3FFCT6OIsXczFLrLap3mpMNQ1kAbXmuQ==
X-Received: by 2002:a05:6a21:920d:b0:1f5:6c94:2cc9 with SMTP id adf61e73a8af0-20cdee3dad1mr4920841637.22.1746196860531;
        Fri, 02 May 2025 07:41:00 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-740590a5bfesm1663820b3a.171.2025.05.02.07.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 07:40:59 -0700 (PDT)
Message-ID: <dba95e76-3d60-41ef-b98c-5aedee808dd9@beagleboard.org>
Date: Fri, 2 May 2025 20:10:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] of: overlay: Add export_symbols_name in
 of_overlay_fdt_apply() parameters
To: Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>
Cc: devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250430125154.195498-1-herve.codina@bootlin.com>
 <20250430125154.195498-6-herve.codina@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250430125154.195498-6-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/30/25 18:21, Herve Codina wrote:

> In order to prepare the introduction of the export symbols node
> handling, add a export_symbols_name parameter in of_overlay_fdt_apply().
>
> The export_symbols_name is the name of the export symbols subnode
> available in the base node that will be used by the resolver to handle
> export symbols resolution.
>
> Having the name of the subnode in parameters instead of the subnode
> itself avoids the use of an export symbol node that is not directly
> related to the base node.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> Tested-by: Ayush Singh <ayush@beagleboard.org>
> ---
>   drivers/misc/lan966x_pci.c    | 3 ++-
>   drivers/of/of_kunit_helpers.c | 2 +-
>   drivers/of/overlay.c          | 7 ++++++-
>   drivers/of/unittest.c         | 4 ++--
>   include/linux/of.h            | 6 ++++--
>   5 files changed, 15 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/misc/lan966x_pci.c b/drivers/misc/lan966x_pci.c
> index 9c79b58137e5..f05cb040ec69 100644
> --- a/drivers/misc/lan966x_pci.c
> +++ b/drivers/misc/lan966x_pci.c
> @@ -128,7 +128,8 @@ static int lan966x_pci_load_overlay(struct lan966x_pci *data)
>   	u32 dtbo_size = __dtbo_lan966x_pci_end - __dtbo_lan966x_pci_begin;
>   	void *dtbo_start = __dtbo_lan966x_pci_begin;
>   
> -	return of_overlay_fdt_apply(dtbo_start, dtbo_size, &data->ovcs_id, dev_of_node(data->dev));
> +	return of_overlay_fdt_apply(dtbo_start, dtbo_size, &data->ovcs_id,
> +				    dev_of_node(data->dev), NULL);
>   }
>   
>   static void lan966x_pci_unload_overlay(struct lan966x_pci *data)
> diff --git a/drivers/of/of_kunit_helpers.c b/drivers/of/of_kunit_helpers.c
> index 7b3ed5a382aa..476b43474168 100644
> --- a/drivers/of/of_kunit_helpers.c
> +++ b/drivers/of/of_kunit_helpers.c
> @@ -56,7 +56,7 @@ int of_overlay_fdt_apply_kunit(struct kunit *test, void *overlay_fdt,
>   		return -ENOMEM;
>   
>   	ret = of_overlay_fdt_apply(overlay_fdt, overlay_fdt_size,
> -				   ovcs_id, NULL);
> +				   ovcs_id, NULL, NULL);
>   	if (ret)
>   		return ret;
>   
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index aa1b97e634aa..73ff38c41de2 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -968,6 +968,10 @@ static int of_overlay_apply(struct overlay_changeset *ovcs,
>    * @overlay_fdt_size:	number of bytes in @overlay_fdt
>    * @ret_ovcs_id:	pointer for returning created changeset id
>    * @base:		pointer for the target node to apply overlay
> + * @export_symbols_name:
> + *			Name of the export symbol subnode of the @base node to
> + *			provide extra symbols. Those extra symbols are used in
> + *			the overlay symbols resolution.
>    *
>    * Creates and applies an overlay changeset.
>    *
> @@ -983,7 +987,8 @@ static int of_overlay_apply(struct overlay_changeset *ovcs,
>    */
>   
>   int of_overlay_fdt_apply(const void *overlay_fdt, u32 overlay_fdt_size,
> -			 int *ret_ovcs_id, const struct device_node *base)
> +			 int *ret_ovcs_id, const struct device_node *base,
> +			 const char *export_symbols_name)

Do we really need the export-symbols node name to be configurable?


>   {
>   	void *new_fdt;
>   	void *new_fdt_align;
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 658690fd6980..11091b0176e0 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -3858,7 +3858,7 @@ static int __init overlay_data_apply(const char *overlay_name, int *ovcs_id)
>   		pr_err("no overlay data for %s\n", overlay_name);
>   
>   	ret = of_overlay_fdt_apply(info->dtbo_begin, size, &info->ovcs_id,
> -				   NULL);
> +				   NULL, NULL);
>   	if (ovcs_id)
>   		*ovcs_id = info->ovcs_id;
>   	if (ret < 0)
> @@ -4198,7 +4198,7 @@ static int testdrv_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   	}
>   
>   	size = info->dtbo_end - info->dtbo_begin;
> -	ret = of_overlay_fdt_apply(info->dtbo_begin, size, &ovcs_id, dn);
> +	ret = of_overlay_fdt_apply(info->dtbo_begin, size, &ovcs_id, dn, NULL);
>   	of_node_put(dn);
>   	if (ret)
>   		return ret;
> diff --git a/include/linux/of.h b/include/linux/of.h
> index a62154aeda1b..d8e0dd210e09 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -1749,7 +1749,8 @@ struct of_overlay_notify_data {
>   #ifdef CONFIG_OF_OVERLAY
>   
>   int of_overlay_fdt_apply(const void *overlay_fdt, u32 overlay_fdt_size,
> -			 int *ovcs_id, const struct device_node *target_base);
> +			 int *ovcs_id, const struct device_node *target_base,
> +			 const char *export_symbols_name);
>   int of_overlay_remove(int *ovcs_id);
>   int of_overlay_remove_all(void);
>   
> @@ -1759,7 +1760,8 @@ int of_overlay_notifier_unregister(struct notifier_block *nb);
>   #else
>   
>   static inline int of_overlay_fdt_apply(const void *overlay_fdt, u32 overlay_fdt_size,
> -				       int *ovcs_id, const struct device_node *target_base)
> +				       int *ovcs_id, const struct device_node *target_base,
> +				       const char *export_symbols_name)
>   {
>   	return -ENOTSUPP;
>   }


Ayush Singh


