Return-Path: <devicetree+bounces-309308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9Yg/MGpsKGqYEAMAu9opvQ
	(envelope-from <devicetree+bounces-309308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:41:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD9C663D64
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:41:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=QmZriRxT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309308-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309308-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BCA53064E0C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D35D3749E5;
	Tue,  9 Jun 2026 19:32:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAD3357D12
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 19:31:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781033520; cv=none; b=hUg+DOyX2pNKx/gpa7dJb0KQ2UP6Y42ShcBqUppnwv4H7QS4Q4FgSjJr8oINGNK+mNZgCpIuPekga3EM2zlY4ikwPMcHa3tGXAPrspnZhBfwDRu93Oh8UVC4PULgoToAAj5kpKU73gFBIy7dVTg2TgteZCJtDM+Mnb/cgsbE18s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781033520; c=relaxed/simple;
	bh=siQdt2hkhW3iAMO5kNOKMav5d04Hqm+XiTImGFfTjnk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ELmxJk97/6JR7RG+JBHz6xwcN0hOxYmcEM4FB2FkvU0/F7EgC1vqyMnu6jPfWfcG6ZW9or/wO/9iQu21OlO7mQqc4UUxuouDYPqvXeSHr9B/UXM7+Ac4/JKfYklu28FqTxea7+KcJSNhbEDo89CZ21P4FCukwarq03id8gcSe/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=QmZriRxT; arc=none smtp.client-ip=209.85.160.42
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-43bf9548df4so4204561fac.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 12:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1781033518; x=1781638318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SB0hkJoV0gPF+mcJ/isTFdgNlIuPqjaVKGVPd+vcG44=;
        b=QmZriRxT3/aOV4I7QK7srMxpTS+gOqS84p76nY/earcSBKTPoXzB/ZkbziD4DQs6cv
         Z013rNBJ+GmCiYIv+51PGtmcaNbQT05zn5Qfx21/ibT9NIh5+pD6fP/rc9+kInOC6e8S
         +CmmRj93evzLK2z5+LKwrNGP8qoFovQ1bX1dPGmLqDUD8mKhIdaiYd5Fgv2vD+izVt/x
         IIAjOAjMDKQHLNM6p1+AU2DYqhAba9+M1YPf1vAuqr85PXi7cjF5T/sUPqJV6IvGrBFw
         w0QD4b9QGLYmdwM3qg1vw6E/+2o3UXNll+nJVTowAOgkmof2Y8phEB+dOnQHBZ/lHDLG
         5Wgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781033518; x=1781638318;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SB0hkJoV0gPF+mcJ/isTFdgNlIuPqjaVKGVPd+vcG44=;
        b=heSiKNYunHpUlXOL2l6hIcUTuSaC31anEuPEYTgc9W5gI1ceVhbXHhEsKv5WWsND5K
         sl/RReSODaE/HNCd9/9EVzrcipbLwKHXLIGBC6A5u/7RolSrtUDX2qqsBf3emcJDZDXc
         9dfp5N/3jkPsLpEe4xJpzADbzaqGDRC6qOxCn/uw21MhFZBE808rLxNaZJ/wyRO8ywcE
         VL4ur/ymGdBf4RkH3dddzaQ/HQYyMXxwB3psyJCkp54+gD8UzVrkovuYPQJ7ve0kKYv6
         tMZww920JD45BasBAcZ+84hLG1r9214fUqon6aBSSBLNDl2Mm32zwrzUw5Q6w+mWBrcd
         Mo2Q==
X-Forwarded-Encrypted: i=1; AFNElJ/1YyZ655XlaZgOwItPdrdrp36hfCkFcXrlpwr//5q0cHKrG5pLMlePcd9qvnFV9du+7HgWcFKiWYUk@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrd0Eap8w3JUU8tvDZn/AQk7LgBnFc0uAr/OEB2R+QlLvveo90
	8kdr+wVxFAlbwewUG2JQ2WD7D/eI3gydXB3P+k1cYoNjwhwE1HXeE1ukpq1V5VlcvUc=
X-Gm-Gg: Acq92OFbARKDlgo44CxqN++MdL5h8QTPy6NhmW1dS7s659Woc+LMmAQF/rZ1fNvb4+8
	z+OD3k7AsEGHHSKUjxoBQOeQCsJrPrERaAjS//K6h9j/c28RbnbGS79ONtRZDMJ+d5kQe0I6PDn
	aRu7SpwxQ8FsPzebMYDNDTWF0DfUn99O/HorW9pufbSCHrQaI8AMk1cIaBXyK9nzuTu+gj1cWBQ
	U/85knQYNZfO/4QGRm/hnBIDnBbKSs7ht7NiNO/Tn+2xQFETCg4r4WGdy7Radj23wfUyk7O1ONm
	spr0734HcTbuvwFFsIoMwh0UymKfW7U9ST9FrMaDpAdXz4fJHgFv5WInue2vPtndALyu9xD+C9w
	uHus9GoWgEVCltLB1QYyyRDm5PB9e9D+3RcqpyUqCwLoh4dbMssz6Gq4b1EX6AoFup7FrH20kSD
	Hvsr/C589gh22LWivuJRol5I9dmIhiE6iGYg==
X-Received: by 2002:a05:6808:2448:b0:467:eccb:b788 with SMTP id 5614622812f47-4868dddb842mr13686943b6e.9.1781033517995;
        Tue, 09 Jun 2026 12:31:57 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b32f372sm16507092b6e.0.2026.06.09.12.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 12:31:57 -0700 (PDT)
Message-ID: <6e289973-53c7-4008-baff-d7f31edf6910@riscstar.com>
Date: Tue, 9 Jun 2026 14:31:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 03/14] net: pcs: pcs-xpcs-regmap: support XPCS
 memory-mapped MDIO bus via regmap
To: Maxime Chevallier <maxime.chevallier@bootlin.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, rmk+kernel@armlinux.org.uk, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linusw@kernel.org, brgl@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org
Cc: Daniel Thompson <daniel@riscstar.com>, mohd.anwar@oss.qualcomm.com,
 a0987203069@gmail.com, alexandre.torgue@foss.st.com, ast@kernel.org,
 boon.khai.ng@altera.com, chenchuangyu@xiaomi.com, chenhuacai@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, hkallweit1@gmail.com,
 inochiama@gmail.com, john.fastabend@gmail.com, julianbraha@gmail.com,
 livelycarpet87@gmail.com, mcoquelin.stm32@gmail.com, me@ziyao.cc,
 prabhakar.mahadev-lad.rj@bp.renesas.com, richardcochran@gmail.com,
 rohan.g.thomas@altera.com, sdf@fomichev.me, siyanteng@cqsoftware.com.cn,
 weishangjuan@eswincomputing.com, wens@kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260605010022.968612-1-elder@riscstar.com>
 <20260605010022.968612-4-elder@riscstar.com>
 <566af63b-05a9-43f8-94e9-19af737c848a@bootlin.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <566af63b-05a9-43f8-94e9-19af737c848a@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309308-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maxime.chevallier@bootlin.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:rmk+kernel@armlinux.org.uk,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:arnd@arndb.de,m:gregkh@linuxfoundation.org,m:daniel@riscstar.com,m:mohd.anwar@oss.qualcomm.com,m:a0987203069@gmail.com,m:alexandre.torgue@foss.st.com,m:ast@kernel.org,m:boon.khai.ng@altera.com,m:chenchuangyu@xiaomi.com,m:chenhuacai@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:hkallweit1@gmail.com,m:inochiama@gmail.com,m:john.fastabend@gmail.com,m:julianbraha@gmail.com,m:livelycarpet87@gmail.com,m:mcoquelin.stm32@gmail.com,m:me@ziyao.cc,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:richardcochran@gmail.com,m:rohan.g.thomas@altera.com,m:sdf@fomichev.me,m:siyanteng@cqsoftware.com.cn,m:weishangjuan@eswincomputing.com,m:wens@kernel.org,m:netdev@vg
 er.kernel.org,m:bpf@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:rmk@armlinux.org.uk,m:krzk@kernel.org,m:conor@kernel.org,m:johnfastabend@gmail.com,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[48];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[riscstar.com,oss.qualcomm.com,gmail.com,foss.st.com,kernel.org,altera.com,xiaomi.com,iogearbox.net,ziyao.cc,bp.renesas.com,fomichev.me,cqsoftware.com.cn,eswincomputing.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,kernel,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,riscstar.com:mid,riscstar.com:from_mime,vger.kernel.org:from_smtp,riscstar-com.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AD9C663D64

On 6/5/26 10:35 AM, Maxime Chevallier wrote:
>> +					  const struct xpcs_regmap_config *config)
>> +{
>> +	static atomic_t id = ATOMIC_INIT(-1);
>> +	struct dw_xpcs_regmap *pxpcs;
>> +	struct dw_xpcs *xpcs;
>> +	int ret;
>> +
>> +	pxpcs = devm_kzalloc(dev, sizeof(*pxpcs), GFP_KERNEL);
>> +	if (!pxpcs)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	pxpcs->dev = dev;
>> +	pxpcs->regmap = config->regmap;
>> +	pxpcs->reg_indir = config->reg_indir;
> Looking at the overall series, is there any reason for this flag ?
> 
> Looks like the reg_indir=false path isn't used at all in this series.
> 
> Maybe just drop it and let anyone add it back should the need arise ?

You're right that it's always true (in this one case it's used).

I think it's fine to get rid of the reg_indir flag, and that
will simplify a lot of things.  It eliminates the need for the
xpcs_regmap_config structure (just register with regmap pointer
instead).

The "pcs-xpcs-regmap.h" header could be removed too if we declared
devm_xpcs_regmap_register() in "drivers/net/pcs/pcs-xpcs.h".  (I
won't do this unless you or someone else suggests it though.)

I will rearrange the code to support only the indirect access
method for this code.

					-Alex

