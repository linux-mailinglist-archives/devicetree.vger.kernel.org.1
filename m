Return-Path: <devicetree+bounces-268522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CLPOJdVn2mIaQQAu9opvQ
	(envelope-from <devicetree+bounces-268522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 21:03:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 903EB19D03B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 21:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3126300B59D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 20:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD222FFDE3;
	Wed, 25 Feb 2026 20:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wxarhj9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972BB29BD95
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 20:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772049812; cv=pass; b=C7YpYDCmFyjBITtlL9JKpRtVCIavkNIc7VzrGIPLAB7m2lypAMeGPUZfSEa3fIi1PGT1nIXbCFBZG0rR8ST9RnxnoZ52AuzZ9XnDamxYrgA4CiBPiiZv1uKVue1io/SDoB12BF9nthWdxMPSTrR+eMV65lVii2Aw/VcaWKKzo1Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772049812; c=relaxed/simple;
	bh=YjjeQPKHwsysO3aIz1xIueVPmWB/NR0iZT6palKwRdA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KwOXHoS5IrK3gOaWavuwGoQ+HwM61bFjapEI9XStB6HZ4ltzkmQUBkb7wYIh2fCgu8BEwflMZSGYGLfPpx4XlSkxzGPDcWkpLC5kVVKOUpnpSAFynIhhoKi0YPw2gY5nLNdWE17iE8lQPslk5XLMehEVKOi/Ppd7y2PUzFv3yGI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wxarhj9A; arc=pass smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so48636eec.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:03:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772049809; cv=none;
        d=google.com; s=arc-20240605;
        b=ikO0IbbuM1SExo69RE1/1TbLJoSWuejwaP3TJ9ZipEeQ4WtciRhfqPravJThwQQ+Pt
         RezAaNPRu0vZHPAAKKBIiLQep6oXsstg7syPpOCnX8bZkXEUuBvxRkECL1Lg3+kCT+mW
         LeBERTb7NUUbXqQYXhfEQyztIoGr6X6REc2AqH7oSyvaimaEOApTw+2p7xyDx3DeTCas
         EMe4AXQR+fLli3vykxtxJt2f/97dn28Y8PFo3wXUsTxcRTPrl1cNc6OHnh1Ht+nuBWw9
         aAdr9w7ybVGYrFtbN4Gumngt2B/0o9jM5mTDRKN28R01Oe/JsAf54fmpwKqTfXRMt8Qe
         sdjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4kIyGmBg5HXoWLsRB0pfFO9jGQNi7KILjq28N7CKS3w=;
        fh=G5nMOKfM6A/PE66r2wc6H4VoWjrmEhCayL7s5FBFo00=;
        b=N1aXyjMviVIglDYZMyFln0G0gXqgI6BHWphjpdEoXleK8uS31WGJzQlBWvw534w5rj
         5CcBbgo0gLJ2jHFsIPXke8sqV51BZ0aGCdkyxWDjM5mG2O8Kw315jvoTEmV8S2Ed2D8U
         9hMDsz8uMum4hlK9h4O0Mb8fzZ6Ndp+H0N9ZH0kL4eKpesKoCMdtBhdfT8qRQ1zAIu6E
         Msi5Id2ufN43zuyUWQ7NiL4GFTjdgRZN3EIloHg3yncU1js7XtrcAdIFwNSOILHkGAIj
         FaCzUAaXLRURfcqRjMul+UHcXSHnflxioBBWXfBjvj5dHFL1aXEdUWu931U8v73lTBNA
         6TdQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772049809; x=1772654609; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4kIyGmBg5HXoWLsRB0pfFO9jGQNi7KILjq28N7CKS3w=;
        b=Wxarhj9AuiGfLjxdCWtb7DkG+DBoTP306zQBq10XAgCKWNh7IzqKckblYeIDd3brs9
         /WAR+Dm14wjNp+Yoi9lenXRwq8/JtrAAyeKUEctkQuPu3bR5Gh9y0lJasz9vaNnr8FQI
         qZJr2Z0u1p0JpzrdNG+t+ulf9yu2ers11thXuWTsHI4wjtHGodgZKJo/YeSTUa2EF69S
         Xx8xa+aaYftSn2t9xkMiNMi4idAxAkuQ+CDTkqjOi9Ef82HKD0IaJ9WeHLNi34jXG8X7
         5a4uVIuQgiyQky1CmsCaugbfCiBqGH8CJGnEB2DXEzkMQPbUDSSVUrwdgdbD8W0toKud
         4j1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772049809; x=1772654609;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4kIyGmBg5HXoWLsRB0pfFO9jGQNi7KILjq28N7CKS3w=;
        b=jIjqAwnrQVCyaQR+h5zsZ+WeRowL4S5xSKWEul7LgrF2XmSF4eqdY+V7NYSW3/2Iqx
         i/t3aBbBx7R1r56zlFJRspwK7f6gLTu3ob3hDiF5Du6yI/GVWQpubr3WG7gWrNDe8WBJ
         7exsmN1kdNRxC5lJuuie07QVMsR5OIlrqLiH0otSMB2WfXQig+itkiOvmap8Tr6mbeVs
         Wr/hCoQ3ZX28Z2Ek1sZxBL+/QCGfpW6XGMZzRAAJDdO5Hd7DpKxB/IqRWPOzmux592dJ
         8cm5E4JERe8AQgnEYI69hkYKDYJKHFeAxZWJ/jDPKk1v//Eq3mdv3gjURnnrcpAHtpWr
         Nm4g==
X-Forwarded-Encrypted: i=1; AJvYcCUqWrhCY0+8g2mDQsMheEBGPagekIZGlIT/kMmstgoWFF6KCcAdXeFvkKdEfw8zw/63zhOkEY90Msdd@vger.kernel.org
X-Gm-Message-State: AOJu0YztPjJrSCCFMdR+TGQfgHGpjYe0p0+tmRj1jHYMRUhEtIpZIN81
	S0WWhX+97NPw3EN9JditRPbsOa9I3+JTGd2bdWOgFgwgtwnUbyj3JQFpNuShWcJpBjzmF43vhzp
	imt3pK8Va+zJn+3aM0VWpAKsgqmlllJA=
X-Gm-Gg: ATEYQzxFQHzLWPqBQVxt0GomMF2xeTGKMG0neIKmA90By21iOTIlFfe6nscfthPYxeh
	Ll4BzIQlt6QEuiJ5FWkRxDDYku4Jy5d5M8eZYZ3C5PAA4uFcknXopbT3u/WxlT23Pi80Kp7/5gN
	AJ6P84x+qPl4O/tDczZHxrP9TpBTii1xfMBeQRsC7ykVeSdrirsIknB/S+bqWUE2+WDRn21sb4C
	SfC79wEArrnSkpTiuYOVXaL2Alv5NCGniNV37oCTzfMC/XfwpylwTnxrj+BmYeMPNbO9qrRGfZz
	Hzk1qa0=
X-Received: by 2002:a05:7301:1297:b0:2ba:a661:8512 with SMTP id
 5a478bee46e88-2bd7bb55164mr6154017eec.17.1772049808589; Wed, 25 Feb 2026
 12:03:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
 <20260223-panel-patches-v2-1-1b6ad471d540@gmail.com> <20260224-bulky-rabbit-of-courtesy-83fabc@quoll>
 <CAHuF_Zq=Rpg0HoRJv-BSREEhT8tYH4r+BCbZ7obrG36vSmwMQA@mail.gmail.com> <54abd390-113a-4c99-b024-2029c4d68099@kernel.org>
In-Reply-To: <54abd390-113a-4c99-b024-2029c4d68099@kernel.org>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 25 Feb 2026 22:03:16 +0200
X-Gm-Features: AaiRm50pGQkXh7eSkSuu6niLp3TuwxMtUDhrOf8ElhHJQnJMvsWEsPN00BEN06E
Message-ID: <CAHuF_ZoEAT+91trLabyo8rc8afXW=Wd0Q9yxu_v53nXoRFJMTA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268522-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 903EB19D03B
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 at 17:45, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 25/02/2026 16:29, Yedaya Katsman wrote:
> >>> +  vddio-supply: true
> >>> +  ldo-supply: true
> >>
> >> LDO is the name of the type of regulator. Why is it called as name of
> >> the supply?
> > Can you explain more what you mean? Do you mean to change the name of
> > the property? It seems that all the regulator properties are named
> > foo-supply.
>
> I just have doubts that the device has supplied called LDO, considering
> what LDO means.
OK. I don't really have a way to verify if it's true, all I have is
the downstream dts
which calls it LDO [0]

[0] https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/d3766fc8cda2d96de2850faa9ce58e5a37ea9f9c/arch/arm64/boot/dts/qcom/trinket-sde-display.dtsi#L24-L36

> >
> >> Isn't this binding exactly the same as s6e3ha8, s6e8aa5x01, sofef00 or
> >> any others?
> > Yeah they follow the same pattern. Is there something missing in this
> > one? I will add descriptions to foo-supply properties
>
> No, was rather thinking that this should be combined into other binding,
> assuming the actual pins and supplies are the same.
Got it. I don't see any bindings that have the exact same set of supply
regulators, at least according to their names.
I guess I could add the regulators for this one to one of them and make the
not-common regulators non-required, but I don't know if that's what you had
in mind.
> Best regards,
> Krzysztof

Thanks,
Yedaya

