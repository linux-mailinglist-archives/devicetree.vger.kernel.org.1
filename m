Return-Path: <devicetree+bounces-261625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG47OAg5gGlX4wIAu9opvQ
	(envelope-from <devicetree+bounces-261625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:41:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52780C8575
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE1F53008E20
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 05:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD512BF015;
	Mon,  2 Feb 2026 05:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QTeLgWnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA0E23FC41
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 05:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770010881; cv=none; b=Y3sH7ebpZkfqDjj7yzUgypMvVRxxfGOxLP7vqEN9HrOHFPndBDK9jfzaulxsChwMY3G6Br3vRGU1oo8eMDxuU5oMZAIlb0kEOb+jPygtfdknBjKUzjvSJvUQgWJWd5hHnkA8ax4+15wdWWWdAOutjCYeZQ7lc7M8QIG5Wv/n6/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770010881; c=relaxed/simple;
	bh=374fjqtyEdgVhwWsr2HpCJEGgFgY/9sUJ7ytMr818tY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r45Klwciz6uivUqjdhnI3McR8a0rusge1mWDuiOta/BpGoLxx+LZYz/mYr6uier2KxXkolkEVd048L+JHbshU4IpH+4kJFungOgDyLI7TdZF/ymVY8SvaQmOnIZOvoWcFptmPzGFTfh0xiQB4qWNHGnAqY/yWgHktNyBXPKP/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QTeLgWnu; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c636487ccaeso1655333a12.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 21:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770010880; x=1770615680; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w/OodEpFjOF1QKMpfh/He7lSljXTwFAUK5yvvx1mDI8=;
        b=QTeLgWnu2AGrIkeTPzfC/TsxCMZ38dbbNuzLzu4rCNAW4JDbwWdfuR+0mHIA6bsB7W
         gsR4CTO/Y3gERnLkCGCmSs0yZ1sJldiGDDT+Yp2ZVlKPlqE0NKGWSM4zuCJm6Mib2TJO
         hw7yV5Dr4BoDumArNC9n0oPM1OU37ZCWcrzm2e7NCZrSVWPm1XX+ev1vbNO+tfOWP7Rg
         5qLqRg+jOOwlLtr6F2AEZw5DA53ZS3cmiuAiSeCGWd4XDI0fzNmO9zpXBTdXXfyB2Mq5
         ieZZlz6bdScIv0GhgrxgoAiABGxSskz6yeYbn5HsU3F803/O5TiryllzYmWWN8+JLL+m
         G36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770010880; x=1770615680;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w/OodEpFjOF1QKMpfh/He7lSljXTwFAUK5yvvx1mDI8=;
        b=fgWu+rMT1yXu+tvde6+PDQ6IymPYmyKGkS4UC6DcnUAundSAdHGt/xTy/zW+RXMy9Q
         539F0Bwn5px7hIhZnrYv18HTI3OvZBtoSBcwiaYnyMh1tTqEoMjCUVmFa53Vjgob9KRa
         oTKTO7mjv213dZ+xas4fgwvHubeehiujCGlUdouanwvct7mR0DCZ+GF2rRTKTXMlV7sW
         zYIDF++aHLceDhLdONxXvkVA+ppRarDKqPqzRm+qPLVECEn3uWCMYgKgYfJ80yxMTZrM
         XqTyC3vrESqnmSHsAHJeMH3JDXeE3w7uCjDzdiPS9+YpPbidhk4lrgpL2fRngWkDIK7x
         dGrg==
X-Gm-Message-State: AOJu0YxeZng+aFvStYyqY7Pn5S5IZeCiDAIBLqE0U5znh3YrLejWD7kO
	CgL0rAJEn5xStrBsXtNv2ATZWq9gHe2oCjZXkKqRJfAtDpIPZiNsEysX
X-Gm-Gg: AZuq6aJsKY8c6oUvjWwWIS1Sr4/fNIGC6k+0+mS3vnRjSCzFa09G2hx8RUUrsvmSpGc
	aCwQEiNlstINl/QGx37U3K/jHNuRrlzNMGsfOO2qr/q0qYuA2xNgRXW9VEOEz3WeJR73o1EuvLI
	uMdeup25IDvlFKTLPVvX8au+FJ7/RbsRwGjhTieui5/M8VKzpAl8EBJf0K46lb+wb8d3tFe6tzv
	omsqwGLh5xyyUbUVwNGcKSnSn/rRgQjCOa513770PKqem9W06Een6/H+nMr0xdbGfJKnBo6+Zz0
	Fi4qrvbQ1JNy3VLLhFTgN94NaMp+lDC/oKqK8aUyELEFc4aMcfYyQIWkASFxnAyNQIyn5Fbot0m
	5Ndz0JAsEViUFnfSKAMLqD3PsPvUVH9OVKxuW4rAGtPzKWyO09LJLoTefd/yfDl6tqzXh7U8TVh
	1a+Eroq0wK2H1AD362R7xKalUBtoSzF0GgKD+B662rn5MnZ6Wos00NYIX2Tm1s36v9LtMmNFPMb
	/A=
X-Received: by 2002:a05:6a20:12d6:b0:351:2c6e:6246 with SMTP id adf61e73a8af0-392e0148042mr8658013637.56.1770010879891;
        Sun, 01 Feb 2026 21:41:19 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c64276efb16sm13296475a12.4.2026.02.01.21.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Feb 2026 21:41:19 -0800 (PST)
Message-ID: <217f7407-ede2-4be8-bbd8-f2e499170e24@gmail.com>
Date: Mon, 2 Feb 2026 13:41:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next,v10,3/3] net: stmmac: dwmac-nuvoton: Add dwmac glue for
 Nuvoton MA35 family
To: Jakub Kicinski <kuba@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 openbmc@lists.ozlabs.org, ychuang3@nuvoton.com, andrew+netdev@lunn.ch,
 linux-stm32@st-md-mailman.stormreply.com, yclu4@nuvoton.com,
 pabeni@redhat.com, davem@davemloft.net, andrew@lunn.ch,
 peppe.cavallaro@st.com, joabreu@synopsys.com, linux-kernel@vger.kernel.org,
 conor+dt@kernel.org, richardcochran@gmail.com, krzk+dt@kernel.org,
 edumazet@google.com, robh@kernel.org, schung@nuvoton.com,
 netdev@vger.kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com
References: <20260129054445.416242-4-a0987203069@gmail.com>
 <20260131015008.970729-1-kuba@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260131015008.970729-1-kuba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261625-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,nuvoton.com,lunn.ch,st-md-mailman.stormreply.com,redhat.com,davemloft.net,st.com,synopsys.com,kernel.org,gmail.com,google.com,foss.st.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux.dev:url]
X-Rspamd-Queue-Id: 52780C8575
X-Rspamd-Action: no action


On 1/31/2026 9:50 AM, Jakub Kicinski wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> net: stmmac: dwmac-nuvoton: Add dwmac glue for Nuvoton MA35 family
>
> Adds Gigabit Ethernet support for Nuvoton MA35 series SoCs using
> the stmmac driver framework.
>
>> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c
>> --- /dev/null
>> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c
> [ ... ]
>
>> +static struct nvt_priv_data *
>> +nvt_gmac_setup(struct platform_device *pdev, struct plat_stmmacenet_data *plat)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct nvt_priv_data *bsp_priv;
> [ ... ]
>
>> +	bsp_priv->regmap =
>> +		syscon_regmap_lookup_by_phandle_args(dev->of_node, "nuvoton,sys", 1, &macid);
>> +	if (IS_ERR(bsp_priv->regmap)) {
>> +		dev_err_probe(dev, PTR_ERR(bsp_priv->regmap), "Failed to get sys register\n");
>> +		return ERR_PTR(-ENODEV);
>                             ^^^^^^
>
> Should this propagate the actual error code from
> syscon_regmap_lookup_by_phandle_args() instead of always returning
> -ENODEV? If the syscon lookup returns -EPROBE_DEFER, this will lose
> that error code and prevent the driver from properly deferring its
> probe when dependencies aren't ready yet.
>
> Other dwmac drivers (dwmac-loongson1, dwmac-starfive, dwmac-sun8i) use
> something like:
>
>      return dev_err_probe(dev, PTR_ERR(regmap), "...\n");
>
> or
>
>      return PTR_ERR(regmap);
>
> to propagate the error.

Thanks for pointing this out. I'll fix it in the next revision.

Joey

>
>> +	}
> [ ... ]

