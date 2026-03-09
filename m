Return-Path: <devicetree+bounces-272915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGDfLbK8rmn6IQIAu9opvQ
	(envelope-from <devicetree+bounces-272915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:27:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A52238CEC
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:27:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 636083056E6C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2225B3A4F30;
	Mon,  9 Mar 2026 12:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DgsnBGFs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D183A1A2D
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058850; cv=pass; b=ClmNqs78j5pnXghdvIOn2WjX/0DXOzBpyuPaUU0CgIHdBFoTeWv1/wy4LmvG9/Ypjm73ICiqd6Pouu6ApoBVoX275LgGjUE5fBF8eRFy+oKfWunWsafpNLPHSogDZBhZu1GOO50seCJSZhcxl5FJNgz34QmDSNz0JCXy8Fyx7KE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058850; c=relaxed/simple;
	bh=d1PKWdUH6s0xenlw75tFLRRRzw5FJdFYspjgpzFyMYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dLjXIay66QqJyFHmxMovj/LBlDYCxlGDobu97FrDNm0h6s4cdEl4NNG+rSlyVPOSM1J7/rgRvFtCA4Ttdo+I6qCkQQ84EDheswSiV0CMkEV3Drk9IL0q2OXJ6cpknEc3Czik/U8VMP+QQtFMLqHDsXBGjdoeBGNVVcTvmN3/TT8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DgsnBGFs; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a12cd0bd79so4972578e87.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:20:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773058847; cv=none;
        d=google.com; s=arc-20240605;
        b=EZLAP/jc7XhT4R/Es0gIlwdocnlbdZZPvvam2E8EeBrfw+h2mjWNdhekp1bsu4F45c
         uQGyoxhgPl1W4kmOWL0VsDKiK1xBS8Vo86VpTooX2F9RqDrjud6blDXDCXDjIFQpM07w
         5srGqzAYRORC3miM/mA0L3WZhMQrkh2XMihDsp+S65mlLm412r6IMM7iqiXL2OPIw4HV
         wP522SJ8dgMuGZ5X7W/SOlPw0b6NVUTGAguFq7JZLEQGZfXI2PXp2711mMA8R69FZQ4p
         Lo0qGH5LDPLt1HyWyEXghNWdrknwgBjbNK53PF80ZdKAW1ea8wojOkJJxw/lsoL2sug/
         OBgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6EqYkG8wu12BxjB68VgkSM5Yu2dl95wgUL2GDRyWgOE=;
        fh=KCikrR9CNtJW1iY0iNPwheCTznhONOAJJXyGcMBQkqY=;
        b=IQGPGFD4fK8JwY3i0k78nZYq76g9+dezlBT5DgfbyCrZsvepwIsLduSnZhmNW7NFsU
         qP7/MN9e02QqiRLweFr9IOLTd8eESFZJjVdYIhMgapG78l5HnXftivvEoK3CCxt73fO2
         cOHq9GoqEsxhxoHUR2olKz2EuECmY1u1Qb0f6XQsJh+Ra156muNNlcUo9xcmqOVFIQtP
         BzSns1LR1mfOPhree4OrhbXBAbg0XRPicjXiPpJfsXaFI7DyUCATqjBK5jG5lczaMna1
         Xff+M4WMRkgJ7QJnYbLZJp9aZ1tXZBUZuBIZVvodY5HbI5yN4F4c7lQnUSEIhbFaVEzh
         uuXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773058847; x=1773663647; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6EqYkG8wu12BxjB68VgkSM5Yu2dl95wgUL2GDRyWgOE=;
        b=DgsnBGFsE1WPPMayo+3Zk8o2EOUxVPGgluE7U8dbvMCXer8NTJH7FSF7GOvuBIiBRk
         jslPysnWsaeuUpj96E4Td62VfOdCND7ikUYbRWzt6B8/2bkj0TV7OCr8eNNoUA35plhD
         2Vi49+J3iGec0J3VbNWyd+cX6qf4VsekscIQPpS18axkOJbSfUx59WKMZQSH2L3r+HPZ
         QoRLejIvZ/4bLe/wBOZJ3PuKT7sgsRwATYraksS2dCzF4Bc4yfynIBJzgtcSt3Qyd0Tg
         S7JnWNgaJLISdMtc7gGIfwibu8Sw0oJ5bzjNdZMbg8Y1lw/+O9BsP6byv3WZxRcxns3D
         0dYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058847; x=1773663647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6EqYkG8wu12BxjB68VgkSM5Yu2dl95wgUL2GDRyWgOE=;
        b=BH7PvtmKmyyIeiD0s+u+5S+qqtKRCdkXR4E9KX1qUhhXIlg2gRUJQKPrAFWzc2yBzB
         UgpRA4UjsWoAF3aTKmIpd5z2BJZZMg4igQvZTkg8IYegCq0e0Vw4MyUyrfMBQwok+UYE
         s448ETrUjSleBzoGPDgog+6NEiyNML4bUjk+AOfv77rSddK6418ccmgNxxxasu3FBr9h
         awkuw+xtRlJ2uFeG4oF4qFn3hj6vTLubdEjrjfonn8skBbDbkxf6rNbZt5Ve3w6BP8fS
         f4Fg64yKfnlJ/9ylMDOI8jSFGxhaJgpwRWpSoBPS6xsQHOoF79wbMeida5PyGkoD+KLh
         h1iw==
X-Forwarded-Encrypted: i=1; AJvYcCW5xAth/PwDyC0nt8XXzQCLW14IbaqtHvvfiv42UPf/ogoqHFsGOJhuS7asugqKEo+lcwFVU2leTODm@vger.kernel.org
X-Gm-Message-State: AOJu0Yymr2BefQPYQKOwnqbtIxx8VY7tZ4Dfdi+EjxKrXPRANWm/pOyl
	xGsXVfn9hdIEhMxD29UPkAZwjz2W1G6SDak4Lb5FYN1sUcoO9KqyavZ9Gq7Rb4FvfLvuLE16gK5
	8pNOGjoBRbUeibepQMUkEigElmKA3henUzlFlSxku+Ul1mBbvBFtCKFY=
X-Gm-Gg: ATEYQzwNYRTdgjcn9gZfI4+uncYTANA3U3N9DD6vr1LrhWlIw81Hg5tMGsh7qqtmpOW
	4BSmxjEnN2r5pAcQfYpWIHG3oSws0SRVjrwIsdjX297lorsaiOWMmH4UQEue2DWY/AgssEOn+B8
	pFOrdEapn+Fa4GN5kKiC5NZPU9FzV4dYTEGQiWQgc61NV9luUxfU+Xilm1/OO1WFhM/XaqI0VUD
	F0WMuQcbfGPDwBMmygUgn2xV17auajmGvAyXCUG5roV8qGOj019pZN/vQ3yuicMgEluLFOoPHk6
	WbbXK2m8okI0akjZTB4=
X-Received: by 2002:a05:6512:800a:20b0:5a1:3e94:b7b2 with SMTP id
 2adb3069b0e04-5a13e94b813mr2280749e87.32.1773058846752; Mon, 09 Mar 2026
 05:20:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306112742.64235-1-ulf.hansson@linaro.org>
 <3eb61c4b-2902-4a62-8246-4bed683fe326@kernel.org> <CAPDyKFosu5=gAb0QzhkACO6RhXkOFNiKKOSdwrDsezT-bx4U2w@mail.gmail.com>
 <aa85df27-ebbb-472a-a300-f8ae87080ee3@kernel.org>
In-Reply-To: <aa85df27-ebbb-472a-a300-f8ae87080ee3@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2026 13:20:10 +0100
X-Gm-Features: AaiRm51aa32cHVLFFVHfXIi249VRFQ79xzZslmYs2h8m9Fi7cSXJjiI16fG0r4U
Message-ID: <CAPDyKFovqBNr=9Ab2R+XCNWp_+3KOQJ+absJfxuR4C94zwbtbg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: samsung,exynos-dw-mshc: Make both
 clocks required
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ping Gao <ping.gao@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 35A52238CEC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272915-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 14:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 06/03/2026 13:55, Ulf Hansson wrote:
> > On Fri, 6 Mar 2026 at 12:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 06/03/2026 12:27, Ulf Hansson wrote:
> >>> The current binding allows one or two clocks to be specified, which is
> >>
> >> It allows only 2 clocks, unless you meant that referenced dw-mshc schema
> >> allows one clock. I don't see it there, so I am a bit confused.
> >>
> >>> wrong, as both clocks are needed. This is also confirmed by looking at the
> >>> exiting upstream DTS files. Let's update the binding to fix this.
> >>>
> >>> Cc: Ping Gao <ping.gao@samsung.com>
> >>> Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
> >>> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> >>> ---
> >>>  .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> >>> index 27c4060f2f91..3e560dde714e 100644
> >>> --- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> >>> +++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> >>> @@ -42,6 +42,7 @@ properties:
> >>>      maxItems: 1
> >>>
> >>>    clocks:
> >>> +    minItems: 2
> >>
> >> That's redundant, 2 clocks are already implied.
> >
> > Doesn't maxItems mean the maximum number of clocks? And since clocks
> > are required, it means that it's perfectly fine to only have one?
> >
> > My points is, we seems to be requiring *exactly* two clocks, no?
>
> minItems is already (implied) at 2, so I don't see what is different
> here. You can open any other binding and see exactly same pattern
> everywhere, so that's why it would be good to see here explanation why
> this binding is different than others. IOW, what set here the number of
> items to 1?

Apologize for the noise and thanks for clarifying!

I just didn't know that omitting minItems implies that it takes the
same value as maxItems.

Actually, there are quite a number of bindings that do specify the
same value for minItems and maxItems, but I assume those could be
simplified then.

Kind regards
Uffe

