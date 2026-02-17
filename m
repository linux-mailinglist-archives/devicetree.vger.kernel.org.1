Return-Path: <devicetree+bounces-266240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL3HKUStlGl7GQIAu9opvQ
	(envelope-from <devicetree+bounces-266240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:02:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A41414EDC4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD22E301DD61
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4185A376460;
	Tue, 17 Feb 2026 18:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="RkthDQWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5255B36AB7A
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771351286; cv=none; b=b9sV5lCI/nd3bRW4crnQyu6NIEAQQakaifB9Rl21A6GgmK08+VaypicIMmwM8R3wGC/DvPkBuJVdm03UFCMndDQcsgoJGux7GQYSeitGYbpjrhTCi+IUcRrmj3BMAA1dz3CfzLJpfByawNJOkPCSP+RWGaSPJtjrjNIuFQMLcKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771351286; c=relaxed/simple;
	bh=AgxCltSAUyLZ7G0AL2eHcAOSn9EOXkwsec6tR9ZUbak=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F155pF6bqdQIDLPcWj6WIDuRUff6PpIvcU9TjGQduLzjF3SSKhLSLwgvm4ssx/zZYzuskxXdFp0InNKFhBkWL22vFPngtp3IpskORuZOIRzeLT91revdINxGVq/SYESKnftHDrYyH4kc2HtWII2CBR6zj40ONzDHUsitxMyBAJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=RkthDQWf; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d18f80b5c2so3835544a34.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1771351282; x=1771956082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ass9Ei6G1Od2zlBkoO6VGTXnMmfUoJe2npzv8hOuU5g=;
        b=RkthDQWfii3frYqXz5IkCImXHhmxvirLfkaDY5HnbdvqbW8FoYjxGH9lPRrOMLuVny
         rglgfWdE1QZm7iRJwfYwtNN4XbhYf8TjSmRJBzEPW0jtfv8i8AUE85qntOa6cjupjPZp
         +3GRdRkPbZMJZS9J+/uSNaof2hB11p8OJTjng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771351282; x=1771956082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ass9Ei6G1Od2zlBkoO6VGTXnMmfUoJe2npzv8hOuU5g=;
        b=nPkLAU2heuEyQwKDqCXatz7jlvvZnIpwUO9qsyqJOslC+1jRdv6G6Z5iMTkmGT8Jc7
         tgDEMJ0C/8Y7SPHkFzI8HzsVYYz4DwGki794Jw9AanEd+WmlKByq5dM7aKHAQNQNJJeF
         cy95TkIY/x0jpXYy0PByib0gYlGD1xdnVl6y9/Zws41/vfRhnyoxKtJ2BbtfMGHj84QM
         9VXJHWVq6nnhMzy17UbHlAeRSQbOZc5z9BNUv0pei+Ot6Toylm2liB3zXzErQLXTBGQc
         WCNm4XXZb6vAHL66VD/xo/mvOfzJI69RAi29wrEYkUjw4X0250kQVlJvNaMytchG5UwP
         r+1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXI5V5vrgvKISH3itqyP6A2U5yykE7NZd7f3l5W+n74J7PLf+KT9N0rZhmZbkXBk1U5F1IOxIDLzf3p@vger.kernel.org
X-Gm-Message-State: AOJu0Yydg2eR5GQxUgdWoXITENIUQiFkvDB2htkt3jE0CNO14XdVkoJy
	6oxP9z/xS4IPtzrJb5aYWnOMT5/IPTFWqnitwIMjnh2nGUl7ui0TQAZa9xslowf6aw==
X-Gm-Gg: AZuq6aIJ1zC7oXJduafL5C6JPYcKGA5s4bL51attDWk1Q3LTV/qc8+McG2OEyqx2Chb
	L3dHwxlvV1tD+b0fZHCaPP/97Dvtc83cCty9E7VwUeOw/JaP9Rm7EUFjU3p9bHjrPCN5K3JQMvR
	G3i/5ljyTtt7wxs5eyqPNBdmPFgoK+AQjIkRYxbiUjr7UVSeNtPLLVcEgzLDNUh33nlh6fv05xP
	XkUNQsSzWzCMTXlfrpT9/ffNkBMgW5M3ExBxLHMq5tjfUtaK0ADXKRl5MoLQplhNR0AkD9vUfSs
	iB9URJI4jWaITtl78zDh2I91Z3bCTqkotNhrQwJdx5zYM06562TXvxy6udDWDYPrdUxBj9M1Znn
	5+Fj0j9PlWw/qqPH3D5F5LVPkEA/lmcno5zd0C1rD8+wN0LItLjzive4fxjdFNskDWray5iTSm/
	lgE1ZqdXyYYsXXxnGjFIO3x1t76DThaOQYl7bvkgpgYpo4mk0usZjVy0QSJA==
X-Received: by 2002:a05:6830:211b:b0:7cf:ced8:b5cf with SMTP id 46e09a7af769-7d4c4adf2b1mr7433098a34.26.1771351282029;
        Tue, 17 Feb 2026 10:01:22 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.googlemail.com with ESMTPSA id 46e09a7af769-7d4a771bcebsm16698857a34.25.2026.02.17.10.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 10:01:21 -0800 (PST)
Message-ID: <11b783ff-56ae-4980-907f-b5e0f11896f4@ieee.org>
Date: Tue, 17 Feb 2026 12:01:19 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 3/3] net: ipa: Grab IMEM slice base/size from
 DTS
To: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Alex Elder <elder@riscstar.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Simon Horman <horms@kernel.org>
References: <20260217-topic-ipa_imem-v3-0-d6d8ed1dfb67@oss.qualcomm.com>
 <20260217-topic-ipa_imem-v3-3-d6d8ed1dfb67@oss.qualcomm.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20260217-topic-ipa_imem-v3-3-d6d8ed1dfb67@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ieee.org,reject];
	R_DKIM_ALLOW(-0.20)[ieee.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266240-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ieee.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@ieee.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,riscstar.com:email]
X-Rspamd-Queue-Id: 6A41414EDC4
X-Rspamd-Action: no action

On 2/17/26 7:30 AM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This is a detail that differ per chip, and not per IPA version (and
> there are cases of the same IPA versions being implemented across very
> very very different SoCs).
> 
> This region isn't actually used by the driver, but we most definitely
> want to iommu-map it, so that IPA can poke at the data within.
> 
> Reviewed-by: Alex Elder <elder@riscstar.com>
> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I know I already provided Reviewed-by, but I have two
minor comments.  (You can keep my tag even if you don't
incorporate what I suggest below.)

> ---
>   drivers/net/ipa/ipa_data.h |  4 ++++
>   drivers/net/ipa/ipa_mem.c  | 21 ++++++++++++++++++++-
>   2 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ipa/ipa_data.h b/drivers/net/ipa/ipa_data.h
> index 2fd03f0799b2..5fe164981083 100644
> --- a/drivers/net/ipa/ipa_data.h
> +++ b/drivers/net/ipa/ipa_data.h
> @@ -185,8 +185,12 @@ struct ipa_resource_data {
>   struct ipa_mem_data {
>   	u32 local_count;
>   	const struct ipa_mem *local;
> +
> +	/* DEPRECATED (now passed via DT) fallback data,
> +	 * varies per chip and not per IPA version */
>   	u32 imem_addr;
>   	u32 imem_size;

Both the address and size are deprecated, and although you add
white space, I feel like you could be more explicit about saying
both are deprecated.  For example, maybe more like this?

     /* These values are now passed via DT, but to support
      * older systems we must allow this to be specified here.
      */
     u32 imem_addr;	/* DEPRECATED */
     u32 imem_size;	/* DEPRECATED */

> +
>   	u32 smem_size;
>   };
>   
> diff --git a/drivers/net/ipa/ipa_mem.c b/drivers/net/ipa/ipa_mem.c
> index 835a3c9c1fd4..583aea625709 100644
> --- a/drivers/net/ipa/ipa_mem.c
> +++ b/drivers/net/ipa/ipa_mem.c
> @@ -7,6 +7,7 @@
>   #include <linux/dma-mapping.h>
>   #include <linux/io.h>
>   #include <linux/iommu.h>
> +#include <linux/of_address.h>
>   #include <linux/platform_device.h>
>   #include <linux/types.h>
>   
> @@ -617,7 +618,9 @@ static void ipa_smem_exit(struct ipa *ipa)
>   int ipa_mem_init(struct ipa *ipa, struct platform_device *pdev,
>   		 const struct ipa_mem_data *mem_data)
>   {
> +	struct device_node *ipa_slice_np;
>   	struct device *dev = &pdev->dev;
> +	u32 imem_base, imem_size;
>   	struct resource *res;
>   	int ret;
>   
> @@ -656,7 +659,23 @@ int ipa_mem_init(struct ipa *ipa, struct platform_device *pdev,
>   	ipa->mem_addr = res->start;
>   	ipa->mem_size = resource_size(res);
>   
> -	ret = ipa_imem_init(ipa, mem_data->imem_addr, mem_data->imem_size);
> +	ipa_slice_np = of_parse_phandle(dev->of_node, "sram", 0);
> +	if (ipa_slice_np) {
> +		ret = of_address_to_resource(ipa_slice_np, 0, res);
> +		of_node_put(ipa_slice_np);
> +		if (ret)
> +			return ret;
> +
> +		imem_base = res->start;
> +		imem_size = resource_size(res);
> +	} else {
> +		/* Backwards compatibility for DTs lacking
> +		 * an explicit reference */

I think netdev style says the end-of-comment should go on
the line below.

					-Alex

> +		imem_base = mem_data->imem_addr;
> +		imem_size = mem_data->imem_size;
> +	}
> +
> +	ret = ipa_imem_init(ipa, imem_base, imem_size);
>   	if (ret)
>   		goto err_unmap;
>   
> 


