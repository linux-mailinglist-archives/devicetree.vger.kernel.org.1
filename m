Return-Path: <devicetree+bounces-270175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCBGL6vLpWl3GwAAu9opvQ
	(envelope-from <devicetree+bounces-270175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:40:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 178501DDF45
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19AF43045A9F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D8B425CC9;
	Mon,  2 Mar 2026 17:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="A2xoGyuQ";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="pSdYVrap"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FDC317144
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772473166; cv=none; b=JMUA8sIuYHYXaxSCgQnemMww+wJKEwwBIvpo7An/6RX9Uihaq8eXbP8692HfSfbJxaiQPLFb+jDyxdv9ZILCciB7zrwwMKYtmg9AkE7wLdtyKn32EkprEWN3i4y4sisi4ErmRYD4JacdH9Dby+X/nQojIh49bXwpI1MjRocyBik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772473166; c=relaxed/simple;
	bh=uUvCAGGb52PuwK+CGHANQS62FlOFRBknxd+wtqQSDTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evE33tGS5bYvzljtnPungTEQDq1k0V/AOvfv/6pd2mcvsKPdtsvW+jzH6wB3xSwBRHAvXk/njkcHhKFbVskPovmReak/PmHe2gm0cApHuHyROcBbFbuhfg8AVl5GEJvQA0jNAZkdkYvv/mOyvsHOfXr44sQZVGhX6xstAwBeQbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=A2xoGyuQ; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=pSdYVrap; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772473164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i1tUwxzrUgsmfVWvT+mkxBs36R16WUO3Sf96FjGd71g=;
	b=A2xoGyuQbR9CdOuVf3AeM6h0P3/1k9HAVT9rj4dPzCql+2y5PhPY2xWosjy3+JPUlWcX2Q
	B137JwHHWx1o814drKc52kW5d4I9R1adDPbOxgbNTmdybFMlywkkW5zVzSnzWGUaN/7Bbi
	u4rmjCPJqN9BaWBxA/VzU1eBghTRMWQ=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-632-4WJgNPKANaeZLjB-sVlAjw-1; Mon, 02 Mar 2026 12:39:23 -0500
X-MC-Unique: 4WJgNPKANaeZLjB-sVlAjw-1
X-Mimecast-MFC-AGG-ID: 4WJgNPKANaeZLjB-sVlAjw_1772473163
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ca3ef536ddso117482785a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 09:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772473163; x=1773077963; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1tUwxzrUgsmfVWvT+mkxBs36R16WUO3Sf96FjGd71g=;
        b=pSdYVrap5TLaq7UUWM/3I26SlPaiIhIrp4UU76aVDtSXnwEOLDj8ZpAdSo1YsQqL+1
         gHHe954gF8VfwVe4lCmMWEWnjEZQ5GdjH6ijL1T0IV/ZbiuyWBgAJlXXwKM8JdGutdoQ
         P6Qhz5W0MOrjjmEjCRmreXzngMbcnxg9oWdQmjSHFJKBHc/J+mZ410BRQYpo0p3Vuqe4
         7bhge9dgFwyldujgJhI08BYq7SKfCSJYUihhlLkCLKq9faRqYfgSO6txRJWKZC4nM8xR
         ONoDt2Bm+gY79LqDFNshs9bUyWx8zuCXzsmxwyGnjH2TPTbxbFXVTqWvM8p2BWR6irxj
         vV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772473163; x=1773077963;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i1tUwxzrUgsmfVWvT+mkxBs36R16WUO3Sf96FjGd71g=;
        b=I55aki9iN9uUKAywCq5Z0OOQoZDtFUOVe1hW/u+39nB3WtmSaS4TyqXq82CSrcXYVs
         TIymMHQNOqkBh5i6CP5lv2w+R2sEMvFHiwDly/K65E/QIdh2oeEKT9eKGCQnTGL+0Vhz
         pw4xkRd1wiYcD6dmUFbkws0DuE1uWutkdsS+BYRdITCwnFPt8R4x9GPGvHfEDVCX5pLG
         OPKqJpOU/xA1QO1qfEVsyZYYeQ25LH/6ymB7O9qDpqVYitPIFQnRggnz+nMkxF7pduOP
         fQ6+qGqkLALN5GQ/OU8CVRkV/Y5TxGwQoKZ+TezJytrYagcskV+9r/JqTuzDb3b0CUJK
         5w/w==
X-Forwarded-Encrypted: i=1; AJvYcCUgWzfJrx0LIlthC2a0RpNoQHWG8N11MK7uTnE3vh6uGH+7eyxqlR79Jo3aUrtqWLjQ/szhyainqNBu@vger.kernel.org
X-Gm-Message-State: AOJu0YxoQ85W2EwKPIqG+NIjaVJvVpmxZeywSL7tnwOIDCVGg8EJ7H88
	RSuAmG6HemUNvqeWWHYykOGwDL5M6jjzjdwjNC+5+3Nj5OOgMb0vbDSnbzZvd9DtEpis0E6FcXD
	17h24/+AfLN5X4fGG4MYfECAf0quaDty2vshfG5/zKX5jWx7+0PpX/7EZpxmN3Ks=
X-Gm-Gg: ATEYQzzN5WSjAZDVZUcbsWFYWeU6mSIyybLVkDtyCV6oNnWOKBndWZOYIkIFgMJhmMh
	SxZQC/wEwKKRuznqmH9hsbYLA+BpYaMFeoo/qpV9LF8JaXujseXPaukktT/ulzPChHYRbvEekSU
	8xcHbyHtdom9vU5TKvOiCcQ3wYbLOYGt80rE8irav3Zkm/UALHsO2tRvFF4qpFe/h+RjkqyCQAl
	1evk6Ixxs5DpypH0AlB9ywJXP8/2kUKFXoAxWjEp704izy1edmZXKHcNsxRqxGJMNYgMnLWaTG5
	jnsuhjnjNhQw9EdibkmxDZWrrR3biQU7t7s0FuKBtZ7He+AxxE2xVkAGCrD+L1pAzA5Z2X0kQ9X
	dgLzcNwLGLvVCOg0PyyhKjNLUx9C6Pz+UYgyMe3L4LVskSuKMCjm5UHv/
X-Received: by 2002:a05:620a:3703:b0:8ca:7b14:16d4 with SMTP id af79cd13be357-8cbc8e2d0a6mr1630209885a.63.1772473162764;
        Mon, 02 Mar 2026 09:39:22 -0800 (PST)
X-Received: by 2002:a05:620a:3703:b0:8ca:7b14:16d4 with SMTP id af79cd13be357-8cbc8e2d0a6mr1630204685a.63.1772473162215;
        Mon, 02 Mar 2026 09:39:22 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf64ef00sm1206428685a.10.2026.03.02.09.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 09:39:21 -0800 (PST)
Date: Mon, 2 Mar 2026 12:39:20 -0500
From: Brian Masney <bmasney@redhat.com>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: [PATCH v14 3/4] clk: eswin: Add eic7700 clock driver
Message-ID: <aaXLSGxL_J2Bk-Wt@redhat.com>
References: <20260226090513.1696-1-dongxuyang@eswincomputing.com>
 <20260226090646.1867-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226090646.1867-1-dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 178501DDF45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	TAGGED_FROM(0.00)[bounces-270175-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,eswincomputing.com:email]
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 05:06:46PM +0800, dongxuyang@eswincomputing.com wrote:
> From: Xuyang Dong <dongxuyang@eswincomputing.com>
> 
> Add clock drivers for the EIC7700 SoC. The clock controller on the ESWIN
> EIC7700 provides various clocks to different IP blocks within the SoC.
> 
> Signed-off-by: Yifeng Huang <huangyifeng@eswincomputing.com>
> Tested-by: Marcel Ziswiler <marcel@ziswiler.com> # ebc77
> Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>

[snip]

> +static struct platform_driver eic7700_clock_driver = {
> +	.probe	= eic7700_clk_probe,
> +	.driver = {
> +		.name	= "eic7700-clock",
> +		.of_match_table	= eic7700_clock_dt_ids,
> +	},
> +};
> +module_platform_driver(eic7700_clock_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Yifeng Huang<huangyifeng@eswincomputing.com>");
> +MODULE_AUTHOR("Xuyang Dong<dongxuyang@eswincomputing.com>");

Add space between the name and <.

> +MODULE_DESCRIPTION("ESWIN EIC7700 clock controller driver");
> diff --git a/drivers/clk/eswin/clk.c b/drivers/clk/eswin/clk.c
> new file mode 100644
> index 000000000000..3d40d1d7e696
> --- /dev/null
> +++ b/drivers/clk/eswin/clk.c
> @@ -0,0 +1,588 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2026, Beijing ESWIN Computing Technology Co., Ltd..
> + * All rights reserved.
> + *
> + * Authors:
> + *	Yifeng Huang <huangyifeng@eswincomputing.com>
> + *	Xuyang Dong <dongxuyang@eswincomputing.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk-provider.h>
> +#include <linux/iopoll.h>
> +#include <linux/math.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include "common.h"
> +
> +#define PLL_EN_MASK		GENMASK(1, 0)
> +#define PLL_REFDIV_MASK		GENMASK(17, 12)
> +#define PLL_FBDIV_MASK		GENMASK(31, 20)
> +#define PLL_FRAC_MASK		GENMASK(27, 4)
> +#define PLL_POSTDIV1_MASK	GENMASK(10, 8)
> +#define PLL_POSTDIV2_MASK	GENMASK(18, 16)
> +
> +struct eswin_clock_data *eswin_clk_init(struct platform_device *pdev,
> +					size_t nr_clks)
> +{
> +	struct eswin_clock_data *eclk_data;
> +
> +	eclk_data = devm_kzalloc(&pdev->dev,
> +				 struct_size(eclk_data, clk_data.hws, nr_clks),
> +				 GFP_KERNEL);
> +	if (!eclk_data)
> +		return ERR_PTR(-ENOMEM);
> +
> +	eclk_data->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(eclk_data->base))
> +		return ERR_PTR(-EINVAL);
> +
> +	eclk_data->clk_data.num = nr_clks;
> +	/* Avoid returning NULL for unused id */
> +	memset_p((void **)eclk_data->clk_data.hws, ERR_PTR(-ENOENT), nr_clks);

The (void **) cast shouldn't be needed. However, stepping back, this
memory is allocated using kzalloc() above, so that range should already
be zeroed. Unless I am missing something.

With those two minor issues fixed, you can add:

Reviewed-by: Brian Masney <bmasney@redhat.com>


