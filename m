Return-Path: <devicetree+bounces-268889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGxVGmddoGm3igQAu9opvQ
	(envelope-from <devicetree+bounces-268889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:49:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D251A7E15
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 377A23073FB6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3203624B7;
	Thu, 26 Feb 2026 14:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xji4dyjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B6738BF6E
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117014; cv=none; b=HKq67kpU8t3d16cUrwEU4KkQ49Ouhdgat3nVOYocu6r5bq5fYgNnFLgHAWx2ipyWCFsasvr9UJ/3waJz4eCruQttL8J1+rwuw+EdkYFrvW0day12uR1hRT5K+HlSfa7bSc2cg/5bL4mvZmJYZE+UYGz2JGOpv0W3r2wquJOjLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117014; c=relaxed/simple;
	bh=XYbjqqrS0G7bjIWm7uYetfB0rD/+vrjMnmQ/qeZ5Jco=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JG/rRNpTZmCeDqsS5JXoxPGdihPaQEH1ZC2RygIVTBIyKwHZnYN7hq4SSrEynogkM8WvMPGA5zIFICuk+rMcyOO3ZUR0AuKMCFnCLpzG/kD7zUUwq0HXz0bFXip39uK1jGJQEK1qauM/U7x1heRR9n+9/AVyfGdkJYCSKoW3GgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xji4dyjw; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2ab232cc803so4782025ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117013; x=1772721813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lNyZAD1lUvoy0PIMpeGvYZGlF4UXnE0RK0cG+GRs+u0=;
        b=Xji4dyjwYt8Bujapudkb7NIGuarCfcD3mCTzqd1H/woIyN1tFcp8Xgx3hMTYw17N1D
         EuVOTf/XGhhouUyWI1xTEFaADYOxvg7B6H1kItTOOLGsw8oKjoF8rJdoGEwyk5mdkVIR
         eUuR1dr4GhO/SxCpElQHSxz4lFD4ccsntML29gjNkm2HAHiHCXp5EeomURWtcCFLG6S6
         kx1XS4D3r22kdXcRISHnxAICOWzUnUgk1W19iV51qcDBd1M2rYTPnK5019b4FyZa3oaW
         gXUjneArrkYXWKOC2Hs6sKTg7ibDqUHDW1FDJqSA6rS7MTFlZV9VdrEcfOfzoQupsgu3
         VYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117013; x=1772721813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNyZAD1lUvoy0PIMpeGvYZGlF4UXnE0RK0cG+GRs+u0=;
        b=G2af2fjxtjfWDyrGB+au7e5kZ35U4JWWygSdGtI9tg/x0fL1iuzpFE6jozXHpv07mR
         jxUjnmky5SqSH48+28hQsOIQL18uA4gSd4HePTbfm7Kd/XnBPezpnVJx4Z3u/2HYkzXH
         xPMUcw4GI4NCQJYMklWnA+5em3SwSl8oez892AiXgHxKHKfKUdTCo0HeQ6QDjAk2hsag
         fkfx4ewxQwAf3toJFv36qIyVplMyL5gvA21RybCmAYZJpGvRDOp8u6OZB/K8C+Kup47/
         tN80/I21hjuUagTEldt2zzq7YR0eil2m53gfg6q4sEQfBq90uDjnjbklKT8eZFpslbKR
         SoJw==
X-Forwarded-Encrypted: i=1; AJvYcCXaDfI9AdGwkOAfjUL03kP6XKqL76d3HFsh38yqUCxRTtosoBYpnpBcK2oGu5I2YrKLtrkrkkqMPfMt@vger.kernel.org
X-Gm-Message-State: AOJu0YwvnFIohSFII+zFbnP/qx7kXovlj4tjIW82ytRj9dqlkHdZHsSk
	fk0MV3bu1SUBd4KDTWE2wnpErkuSkZpi6Yi7zshoE5zafXqwjfypW6U+
X-Gm-Gg: ATEYQzyc+rB0Re5KD9ey2IprAaB0/lgOfWNI4lk13RWMkc+PEB3iosWgzGpPJNFgG5Q
	xdtRRFZXdi0QoiaWg9TIoZTRwTgl6QicY3a8Q5IZnO0rRbBdp+rxq6vQDv6imt2raEmejI1/nWk
	d9dGNwEHkqGVANysXw9NgxV2Fh65reYi/VUapSrIAC74hNLvHAB0PtAFIGZfpZqZzAGlgXGT7fW
	YdfKUY9Oo3FAMs4QjAFsmpiCQJcZ3/OJZOB7nSoYG6w5CFkcX0mTYeVM9V3r+sHUFmxZGnTeE2E
	Q15QKXdLUjcFQNxWQVebT7x2MfTKQ4x6lu/BZawKfb0we5mYX7q6s2sEVzxVYinoknA6eZLJZKH
	Xwscn6iTuKWNiAtcciNSdgn13WdNZaurvFnrJAzZpVK+p0/wAk52GMAO/HoD1rig53SL1foBO6s
	i6XzO+2euJ00SeUq4nhGfRAlG1HowJzxGdxHYVwt1YoaLnQRSEYSX0PmRyM3HXI4D9Qaprkx+7S
	+V+mEkSlwA=
X-Received: by 2002:a17:903:19eb:b0:2ad:99bb:3129 with SMTP id d9443c01a7336-2ade9a9fa34mr46530255ad.50.1772117012913;
        Thu, 26 Feb 2026 06:43:32 -0800 (PST)
Received: from ?IPV6:2401:4900:892e:c831:d8f3:2665:7530:4ce8? ([2401:4900:892e:c831:d8f3:2665:7530:4ce8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b53f4sm27503775ad.18.2026.02.26.06.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 06:43:32 -0800 (PST)
Message-ID: <f425cbb2-e9b5-41c9-9ca5-7613c547adee@gmail.com>
Date: Thu, 26 Feb 2026 20:13:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
To: Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
 <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
 <CAL_JsqKSpsj1BQB1q_s1+j1FT+XLORgWRijMTNc4wTawKDZxQw@mail.gmail.com>
 <87fr6opz2x.fsf@bootlin.com>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <87fr6opz2x.fsf@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268889-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,f8000000:email,fc000000:email]
X-Rspamd-Queue-Id: C2D251A7E15
X-Rspamd-Action: no action


On 25-02-2026 21:58, Miquel Raynal wrote:
> Hello Rob,
>
>>>> +    flash@fc000000 {
>>>> +        compatible = "st,spear600-smi";
>>>> +        #address-cells = <1>;
>>>> +        #size-cells = <1>;
>>>> +        reg = <0xfc000000 0x1000>;
>>>> +        interrupt-parent = <&vic1>;
>>>> +        interrupts = <12>;
>>>> +        clock-rate = <50000000>;  /* 50 MHz */
>>>> +
>>>> +        flash@f8000000 {
>>> This is now a warning in linux-next:
>> Now this is a warning in v7.0-rc1. Miquel, please revert this as there
>> has been no response.
> Akhila staying silent, let's try to help with the YAML conversion effort:
> https://lore.kernel.org/linux-devicetree/20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com/T/#m908bf59527847285c0447dd0379b3c88cfd71857


Hi Miquel, i have sent a v2 patch yesterday just a few minutes before
you sent a patch series.
Thank you for resolving the issue.

>
> Thanks,
> Miquèl

-- 
Best Regards,
Akhila.


