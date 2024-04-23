Return-Path: <devicetree+bounces-61829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 325608AE557
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 609FD1C2198D
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D838137764;
	Tue, 23 Apr 2024 11:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WP0VnXmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5B884A27
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713873094; cv=none; b=Q4ik3cjlcb2S8gbexLLpEpneH4ciJFnS6MibsKM42RQz0v/ByiJlggzbi8dnNxnnylBJlv6fJwA6uercWwueHz/UPxRsFyXPZDANFG/qLyKgh4paRvbRDd7qTyCGV4yg2B7uTkiebrRmLZZoy0StXFnTuyp5Tfuk9iDGCOlbveg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713873094; c=relaxed/simple;
	bh=ddANpevsQ0h8yC7sChZkSDyELfUcHh2lTwkyZVxuxCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JfhsTQFhCLQiwgx8UoN+yrSfO20RDNaImZrSGJQ+l2Ml67EteEGLwOE80T1s65P6fYeItvCHrFBtGxI2/dgrfVcLV8zSfYsw2ZGtdf+OMQFBw5AoTpYAO7W2j+TALuevQvlU/a3yyiMgBxNj6RX4YPw/we8puI7GM4NL0XTEo9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WP0VnXmx; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-61ae6c615aaso58608117b3.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713873091; x=1714477891; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddANpevsQ0h8yC7sChZkSDyELfUcHh2lTwkyZVxuxCk=;
        b=WP0VnXmxUEc4NZsYug9tqxW6QXQVth4YWa4neSVh+objxK1qv0sgVNJB1chDGb5oIR
         X2XR+tuvG2Xa/OGPhS9Ba9YOq4vdcrHOCsuCdOqN8IYWV4Iw6xxopiWFu0VicB1FX8Za
         v7PhRdrKN68/oEDZoMcFNHvSIs5pH/bVM43YBkAmExnHOt2otm9xRVLYaNxt/ePv+cEa
         STuSuklpxYB5w3AH4lu6eUFR2SEW43X5jXm69zDe8g5Aob9B6jiUi5bvDv9id7vGrnG7
         ExzFzIVqxPow4irN5drE/Zm6ujfJNd592Oo2HKGXF3PYPOkbbHtTRyZL+av2K+aEhlQP
         hWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713873091; x=1714477891;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ddANpevsQ0h8yC7sChZkSDyELfUcHh2lTwkyZVxuxCk=;
        b=HDp/WPvG7tc6G3guFBGXI4yYbR/lY6kPFw/m3a8JIiN2nvehjkXQvFoYyFPP/Suklo
         nk1Fp7gfv88w3zF+h+unBMhRWuzwdM6RoYo3L4+gsplnJWe6vHByHTUKT1zHW/ehMxr8
         zSmJbm/xzTEoYeuWRwy5l1znHCReJlNnbAU5k5LD9AZQoQaeDVYJUtuPiR3HfKhb/G9u
         JaqhDP5XPILvtnROBsMOo9jqnUYlisc2++1nRFbaIHwuk5kAFh7bibaSwZM2yRPU7YyW
         +ebaxlWDgu37bN6/zHamvPMT4Y2Z6S4jiNdO8YQK4ihE8h7W9YUcDyLxq+pHvGcZUKjX
         GwSg==
X-Forwarded-Encrypted: i=1; AJvYcCVovOB6vW4wk9xkXJLAlkyTxaCAAL8WXujt9leABFx4HC/liPMucoBoC5myBnJdFEpZw8YYLzDtHYPhfe4zuP/MVQgRg1XcM2whgg==
X-Gm-Message-State: AOJu0Yx0u3AcbkL5qTRCWH+U+/peETNxbMwhm3SABS2/iQWbKpNg0YqS
	fD6dBHf2/tc+eGHV05SX24fBs0bLahRZ58wQNkUp0lv0G/2SWzgf5yDbgagmDe5Zpgf1oDshi5h
	pxTnPfmnom5hQ0h3eWftlFiluUDLF6581lcFB0Q==
X-Google-Smtp-Source: AGHT+IE5jJvGfgj3iRgV11ykFoGcs5sKXFaguZHxhJpbm+7d0DH1KNrcZry+M8oWEoNCnacit2O4bIf0pXqIyxVcUDY=
X-Received: by 2002:a25:aad2:0:b0:dcf:c7ef:e4e0 with SMTP id
 t76-20020a25aad2000000b00dcfc7efe4e0mr13844166ybi.1.1713873091410; Tue, 23
 Apr 2024 04:51:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
 <20240423-for-soc-asus-rt-ac3200-ac5300-v3-5-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-5-23d33cfafe7a@arinc9.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:51:20 +0200
Message-ID: <CACRpkdZNoQBzqZTZty5iSySj4ZYWF4TwJSTB=uU_-uDDnvePEQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] ARM: dts: BCM5301X: Conform to DTS Coding Style on
 ASUS RT-AC3100 & AC88U
To: arinc.unal@arinc9.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 11:51=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL via B4 R=
elay
<devnull+arinc.unal.arinc9.com@kernel.org> wrote:

> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>
> Reorder the nodes and properties to conform to the Devicetree Sources (DT=
S)
> Coding Style.
>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>


Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

