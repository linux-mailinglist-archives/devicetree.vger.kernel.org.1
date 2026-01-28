Return-Path: <devicetree+bounces-260427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KM/6F0UPemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B59B9A2273
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EDE23044659
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFCC9352FBB;
	Wed, 28 Jan 2026 13:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="umwvbSeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5085A353ED1
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606942; cv=none; b=nBWuS1ZuGspkzGgAVY6KWE06YetM7GjOamqEVL4LIUSfoXokVt++jboA+k+Y3agKZFirrsrriHBrcKCrNkqTLi+hyJKgtWj2ZHzV3fMycvqWZgXle1nojqQhJCW/J9QcQF2dg6dEoCdH7OhICOgSoYjQGvtWs82l/KE8vFeBMf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606942; c=relaxed/simple;
	bh=/SRbLJIOBCp6SkKGBSg0cd0VrfNVnSQQ5K/0eCQIYng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jIIDzcAgNgpQC93XJzXSbqpbbWBFniXkB68H+r+G/VhI2U/4qb/2UbjQ1FAKbf3ybWrhS+Y1K/70Yz0n7quYffzq1UTIXgrlElaQ0dF/xwSPfQYS073T9mu+N0yK46vWhuTSKYUtdY40rYYLcSLBAxNQqei+I+R9H7KlNtOPaGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=umwvbSeN; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-45f053b7b90so522351b6e.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769606940; x=1770211740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O3+eV0m5YOcp1OGVa9q7WwRpTmAwgwaorWnGyCzBuiI=;
        b=umwvbSeN9n4MYXWO5N2doXRRe8f9g2Th/mE7XxzFS/7AWnaJgi5Nd+nGkWHL09muQs
         qVSlX/izxCa2uQ4JK6VpyX6J4eF02phBWZXorOfHuM4ht/8y+K2qUHM0cOdY5ZXNpym9
         fxk0NGvCTNFNoMpL5Ck96btU13rZQu2ibUfYOCGXyVqSxvtCtCLiSZ3klNCuOMjO1oj/
         jUIpH9Ec/bMyXz4a9rCaSY/VzppSXvf/hNyb+G0gpi/yu6PN+upgdYC5AodtqZvfgoHJ
         2e5eZ27+X9NY7PHJO+elQRVMddjoqf/o4jtYqlIlupzcUpTGSVazQsSJaXTxNRsnxmXq
         Kmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606940; x=1770211740;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3+eV0m5YOcp1OGVa9q7WwRpTmAwgwaorWnGyCzBuiI=;
        b=nKja1bl5DH/ekO/UhkjEFrN+F1mLorkEx5jOq7lsKypEcmTpPCv0zZ+L7eyT7+9gjc
         yxq3wYSTE0AbvVKK7w7A0452SiMkDibEiUTGCrOt1aEptPxcZOGAE9mJ7sPneF315+Kf
         DNzYY3VYa5N5rxdbuIQNubsXUxPRDo1WRgOoQ+EhhiQGRGYh/PeLhZq1lsL+hcQaqM9z
         ZXNPYdvJG8Q4DEO4wsPvgpDXscrYM91fVRJdddLz8nBP8leEOJ/n737ZZCJ+6mjE8fUv
         jHouMi0iJrRzbKWapkMdrqq7MImGdtXBtZYvBEi6H+eRxfIvJFPulhtYwa4quPPuLgHJ
         yCHw==
X-Forwarded-Encrypted: i=1; AJvYcCVGAyocnSOkg5VCIboiqIYLOH51naW0ydUT0aSB+Wxm26a427gXEugjnMjxoQIXez3Z62BAbp3F2sUZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8Wuqz5+N/BKI7N3XzmvD3jmDyptmVRCcRE9KBy1ENQfDsWJ3O
	q7AEKJfOnBV6r74ulOAVpYnESsRIrtwAvJeT6aqt8hYwoqVUbNhDqtSG0WjFEJ/kulg=
X-Gm-Gg: AZuq6aJLOw6m0hHseT3w3iGa9JLeXJz8x1Gk/dxBbwSdIMmmHHQL43vbWW+HVvUcuKH
	L3UxOyqFOAtvnU7aQg3i9ZIdN6d1KcoMQIDdsaH8+YdOn2MUfjVnQcCnKLpUA2mpk7GONEpwZFn
	jVm1SMjBOhITnfTnj3O/pOpQ/RI4o5F0PZYD69WYNX92RkmDg/nrzuepubakYtPOT7ew7LG6dro
	Y5uNqTnYPTC+K0VySP5oIx66zZf3OWSpdWCu7qGHmfJoEJqfn34kTNurrJQuJHkUPzlI38ojjBc
	WrPwkD207olSnWhN5bPbNO3N06EcEAOhwGH6+q+fUt5Z5nU4Mv0WXFIx3cbkTGkEQ2FHG+Gm1Qb
	eQk2IWY6f5WZevrfDFzY3b0RFpXeo4TnUgke7Thnxds5Tggslf4UypVAgud5IN9ycH64nb+bP6O
	v0WbnBZyyItBrI7jbJJmTIoLr6l0IKKdj/RTX+0eD69NmWVNiYQYk=
X-Received: by 2002:a4a:ee06:0:b0:659:9a49:8efc with SMTP id 006d021491bc7-662f208c524mr3076054eaf.13.1769606940245;
        Wed, 28 Jan 2026 05:29:00 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f994388fsm1374132eaf.4.2026.01.28.05.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:28:59 -0800 (PST)
Message-ID: <4395bea9-44d7-4f0f-81d6-c1e05976a308@riscstar.com>
Date: Wed, 28 Jan 2026 07:28:58 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] regulator: spacemit-p1: Update supply names
To: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-3-2c86b06694ba@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-3-2c86b06694ba@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260427-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[riscstar.com,gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: B59B9A2273
X-Rspamd-Action: no action

On 1/23/26 6:20 PM, Guodong Xu wrote:
> Update supply names to match the P1 PMIC's actual hardware pinout where
> each buck has an individual VIN pin (vin1-vin6) and LDO groups have
> dedicated input pins (aldoin, dldoin1, dldoin2).
> 
> The supply is a board design decision and should not be hardcoded to any
> existing power source. This allows boards to specify their actual power
> tree topology in devicetree.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

These are good changes but I have a suggestion on the way
you define the DLDO descriptors.  I might be mistaken but
I think you should make this change.

Aside from that:

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v2: No change.
> ---
>   drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
>   1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
> index 2b585ba01a93..57e6e00a73fa 100644
> --- a/drivers/regulator/spacemit-p1.c
> +++ b/drivers/regulator/spacemit-p1.c
> @@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] = {
>   	}
>   
>   #define P1_BUCK_DESC(_n) \
> -	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
> +	P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_buck_ranges)

That was a simple change...

>   #define P1_ALDO_DESC(_n) \
> -	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
> +	P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)

As stated before, I believe the 128 should be 117 here.  (If
you change the earlier patch, make sure the change to 128
doesn't persist here.)  Same comment for the DLDO regulators.

> -#define P1_DLDO_DESC(_n) \
> -	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
> +#define P1_DLDO1_DESC(_n) \
> +	P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ldo_ranges)

Why can't you use _n here like you did for P1_BUCK_DESC() above?

> +
> +#define P1_DLDO2_DESC(_n) \
> +	P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ldo_ranges)

So this is generalizing the input, which is good.  The use
of "buck5" here was a Banana Pi BPI-F3 design and but it
doesn't have to be that way.

>   static const struct regulator_desc p1_regulator_desc[] = {
>   	P1_BUCK_DESC(1),
> @@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_desc[] = {
>   	P1_ALDO_DESC(3),
>   	P1_ALDO_DESC(4),
>   
> -	P1_DLDO_DESC(1),
> -	P1_DLDO_DESC(2),
> -	P1_DLDO_DESC(3),
> -	P1_DLDO_DESC(4),
> -	P1_DLDO_DESC(5),
> -	P1_DLDO_DESC(6),
> -	P1_DLDO_DESC(7),
> +	P1_DLDO1_DESC(1),
> +	P1_DLDO1_DESC(2),
> +	P1_DLDO1_DESC(3),
> +	P1_DLDO1_DESC(4),
> +	P1_DLDO2_DESC(5),
> +	P1_DLDO2_DESC(6),
> +	P1_DLDO2_DESC(7),
>   };
>   
>   static int p1_regulator_probe(struct platform_device *pdev)
> 


