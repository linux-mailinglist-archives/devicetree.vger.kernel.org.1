Return-Path: <devicetree+bounces-278238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKBRNfswvWmI7QIAu9opvQ
	(envelope-from <devicetree+bounces-278238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:35:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 522972D9ABB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:35:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB9583089622
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AD73AB263;
	Fri, 20 Mar 2026 11:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y/vA6mYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A510F3ACEEC
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 11:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774006284; cv=pass; b=Bi88KOy3MrKyjRQUAM2xqf1WuyUILsCmZ5aGpUR+nvFYMNm6+TzqAz3OaPOobfOzA9EuvFHXQaDimaJYfZbaxQ2PMySxhJ/jUC0xrnCBlnv8eaq/V5a4khb/RQyk9yft9vk3J6OnnK17HmjKTg+jBWsoVdhDVMuy2zgIsGtr744=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774006284; c=relaxed/simple;
	bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sDNlVTMXO3ICYrCCX5p6O9TIk40/8Pu0Zw3TwmzakilCghGaceV/z8I74M82UesxlNHGc9+rfl0o+hOLUJFOOOKldX0ZFdzgMFg9i4/PQQNLZvRNTphB89+jRKc6IRnvgnvnEA6E2KIbO0Y2zV9pGOHoaxhekl3T1QRmFCmesy0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/vA6mYV; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so1357487e87.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774006276; cv=none;
        d=google.com; s=arc-20240605;
        b=Q+hrDpfOZlFWHmNbfwZ974fxSlqYG4le3OjLWrzaU/Te9+WTr1qpPZahyJg3OwW0EG
         ywXj3VdvRiHcMd4NrjhU4wAqJoydl+n6vOsfMwPEXUcsTCwcQ8sYxHKAIG4x7YdZtjgM
         GB4IKIh/qXRaCtgNf2C/HeGlLdQtd055mZzovmXOLdeKHowHWKTaL2puObXHtE/h+dPR
         jYuqzXc82e6mrwqkyRY/egstddYpOwaLU3CR5IaHCWz/xlYoqTgNoRZVEP+wyZcvKyyZ
         3hIQqak827yrUgZ3TgmOqEUot3E1Hkd2+1A//+9h/4BS9SJIpRoIwtcngHV8veXQlBFD
         hGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        fh=SyR4/1FKJ4iG8RnEcsH7JikpXS1cIgV9h01U0GQsuoY=;
        b=fmUyiVbYNWV+tktyWxQfXtrydmordu32fdzttLRoqAQBsOmRut3zRgCp+FaZbpfM8j
         p/rlvM5JF5LV4qbX16ljUjhtU5Gzf9REkKFRBqOKXnnO0xUuwGJjU+WUblaYsBdyQZ/H
         ZhhjwEEAl0/mYrRsa01Cz78ZyCMx1bHFcMMSDnaJdlP/NAHEQrZlPYPlyDGSmS2+Ut5H
         Yj6LPNaQ9OZlM7XhTS2739kkVlDZQL/WzDr1u8FM636OhphknNDPLocCHdxtUSBEueNe
         fqyZjZNuzOvmoPZdJYMlbpKNkYoa5v6+sf/DVnm6JE4EWGlfwbz4fCmUyfCXZcCJ3DYC
         xr9w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774006276; x=1774611076; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        b=Y/vA6mYV5MZBwYUoLMs3shxqz/pATeNuJ8XvsMcqcN0hg84hubnbIBunCOZKE243Pi
         o33ob+8LaoyycEYMPw31Yk2zri1LLDZaJsPc6FzWKUP5fb82BHbIGikOJOqnFoEaxcJy
         5y+uJOngEQPSoNcw3AMoO0KhTeb5kwu/n2KKVWEnEUkc5VIGRowJhwNWzabpqchbx2+x
         W1clPxna/JpxYB8zstih7VneYwFGiyuGrVeXVWB8dZoNZ6RJrecYuz8E6iOQ/2EMyEHC
         epnpuaXhavQ285AI6fa1FPY28Kq6AkRmz1FzYLbK9HWc8v8pcddx9olK5B4e7MOqTNXU
         DQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774006276; x=1774611076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        b=mXhBzkX/V4RYjLlfIxmnokNRmUAhnwAYvzau1PtdVa+7uDxvGne5+BoShFDyptGFUV
         sCL7PmGWzze7T0KjkHZTf4aFHisBFeRCiNBLbpA5Ln6UzfmLIeYh4KmhEXuGck6FE0X4
         ZMJ2BxbHduCq2dldK9gPP/q4s6tO/uSq0Wf2lpxyawwj6bVUAudCymvPBBgdO9u9h7/W
         ynlBaUNs9J6hnnppP4E4zLZHvE4WBkGPXT6/2aH392ho0ygQftT8pom+abuuaqQi9f4E
         DA5h454te3BBD5+QMGKM3zWJ7qTWKaJrkwOc23auvA822nC3eGV7svCNYo8RQnIQxC/n
         MrhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWRHPp9mHS9E2vRlisvX1bweiCcfus0qJDd5KAcBlox9bNlXSVwtajyn/eL7l6VMkb7VKGliFyz248@vger.kernel.org
X-Gm-Message-State: AOJu0YxY/+IQKA/0InvAVTznOCb8wa9JfZYH6N9igvhB/Eq9iY4MLq5i
	6lVQbtT0fuhI4Z0deA/ya18ypR8ti0jxPwovP+pnsW+mXz2mTZuUAbjKYViobYFrG/doDaRcyYV
	uuTRkZwGbbY1M9l3QvryBh1dl+rinumE=
X-Gm-Gg: ATEYQzw/uTOLcL4lIxxCnZrHA5lm68Nx7mxCcx4rkUNGRJztasCpfq4vONp0nHc6see
	kYOmDnHA1l8M8SfjnTo4xShn1Si7mqNSBmVf3RTPCyeb7dLAr4NkVhGpgcGJoBaguIDUDu/pm5q
	RXeIMItiK/5VrQoGOuv/VnLkbORDiYUWIXYioPv8JJporlWAoEGfkpKebjW4RvUMDTn8Xh0asZg
	L94yEC2Qd12/sCKpPfznQsbjeS5x5ZUVRI+txz0JKLq+etMlGYqjPepYFVafolyoHLb1y3rWHUb
	TRjytx3s3UDl0RffNBHIUa/AfMu41je+Z6ulP0+H6jqvIEXKoeNbG9FzSUu4hYBDnyk13gM=
X-Received: by 2002:a05:6512:3b91:b0:5a2:81b0:90a0 with SMTP id
 2adb3069b0e04-5a285b54accmr941245e87.27.1774006275214; Fri, 20 Mar 2026
 04:31:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313131058.708361-1-festevam@gmail.com>
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 20 Mar 2026 08:31:03 -0300
X-Gm-Features: AaiRm50va_ccG5R5WwBO3W7VyJgC0oVZfJyFxH8ga_r3f46fHiK6ATpXoolqHSE
Message-ID: <CAOMZO5CksZdgaT1Rg1J9L_T0exsNSbO2G=OCnL5sOr060-neiA@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	shawn.lin@rock-chips.com, Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278238-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.908];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 522972D9ABB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Heiko,

On Fri, Mar 13, 2026 at 10:11=E2=80=AFAM Fabio Estevam <festevam@gmail.com>=
 wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> Add the PMU GRF and IOC compatible strings for the RV1103B SoC.
>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Does this version of the series look good to you?

Thanks

