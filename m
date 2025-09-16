Return-Path: <devicetree+bounces-217985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CE2B59F0A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 19:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E0A27ACD55
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0A3242D60;
	Tue, 16 Sep 2025 17:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="avYs+ih1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB16C22D7B0
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 17:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758043013; cv=none; b=oeyGcqdJd/xFwBzjJrhWdgpWw7wIyFU1bahUIWxeAo7R2sMUnuxwnoylRRIT7X9eE6cB+FG7adg54TCY0+3vMCThcOnvLsHPhqZISQCxiTp5SAoXAZMSaqNXnCTuKjHeJADIL6fdYcFO5JMVYt8+R6WFPRs0eaCnfZRgZIsdBFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758043013; c=relaxed/simple;
	bh=UrB+H0yILRakp4kBxbK9yn5m03BlYcSRjFf4srWf0mY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WTRwmB8ecqXUabeCbe/zaEDtfL/oBivPnJJ3AnYoUGkIn8bWVmJvP/1iG4J15RVXL4S/mEXe4Cc7+/ISQNKU5SNryUeltA8wY9hFeDVu0YJ5HyrRKru2l3sJedLU1sG34ryFFfS/OPv6gwWcv3gSn+iVhGa43ZcsudofFG+k/mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=avYs+ih1; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3e7636aa65fso5230754f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758043010; x=1758647810; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sXunugfsP8zuDyXjSm9YGg4hKUE4YJh9L2VZnuLOhL0=;
        b=avYs+ih1kw1O+o0Pp/LNRbyQ1xf9INErFqfnbTjqTl/U9vMp7X9FjgCd7EW4WJoJiE
         yyP7gENxZOcKOY8nxkgV9PqgJndmtVKVUCxkp0SYYC/j9T7I/odlumPcpYyVFH61pQSw
         g+cy2c6duksGkXeJvoAbetfTAFI6iZrcfFLXrbgK6Hzsiv2cQMb0/42fgMKQXOHubc38
         Ejpe38hlLF55Z6YY6AEJ5sELzSCJiZ1mFasJUfS8osHmUsWFst/mT+8QYtxLnF+WVy6K
         HY2GBcXeC1AWOa5Ayxmz3Oow/GGc36nl8AJCIjbk1sUs4VGZxSd5Uv9ggU1eHsRuaTgb
         yVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758043010; x=1758647810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sXunugfsP8zuDyXjSm9YGg4hKUE4YJh9L2VZnuLOhL0=;
        b=Xh8d6tmR+ySGlbJV2eCrLMW61rD+jKPK9tXtcnunNrt6/Y6fUNiFJEWBVk3XUwy3bj
         IeLn+ORYtZlNPnK9aNwKV2+x19QoLBSss8omdLjJDnS1r69atKt8GvcheDrgo1XGzcPm
         uAKYNtOO2X45CId/ZDdro/l2SAekI3k5wvrOLqEYGg4yezERUUmDHEgrQ4eHXXduXMUI
         1UlX3Z/3sIRUjGeWaOSqZ9vvkKPviw3zgLtufwiITjbkOXKCmpOtqdJ38wFNEOmCX2NN
         fJpMfF7VSanUH94T7NImysvFefm04whZzMaJ31K5GSCbExZ1QWStak795L+IgK3vVvn8
         fw+A==
X-Forwarded-Encrypted: i=1; AJvYcCWMLsNcQIJupnWQmPNjyB0RV/F/y1HNiVpr4vd6+IaQhouF1DvJYS7GOC+AVsI/VFo8c8sQVB4rUxb0@vger.kernel.org
X-Gm-Message-State: AOJu0YwN2TM2sKgk+aOamPlNZPLYi/nq4BSsYI/jpysGryqZsVQJcIu2
	9LwC08537mlZ7sgcP6kSf/GeL4TlVQVCfDSalDQRq3hZY5HQRv2mUtJV64ERhSJYw9o9KxqWl1m
	daBvIiLV7nQjfOS7jlz4GtMVL3DWatzg=
X-Gm-Gg: ASbGncsBStRFeJC3Y2cefYk5Xcw+8EC+iBenJdWvIWlCicxM4UFQhNFnbBPVnkOo57o
	cDd6c0J0PXM39mQRjCIdsaw8zMMXpIX1rtNzPX8NnmSQtE8IzAKhuUjlUd5lW3r7ZQB9oQLXKQx
	eeGPl8tat2VF6Z23ZUkn593MCkSpEUCUvFfa9wyzcEXxct6G+9t0PNes3Q0jZOGaINFabNE5D6y
	r5bSLrt
X-Google-Smtp-Source: AGHT+IFqtKbkdbMvc8sfBF7NAGkQWbnxp9HrEDPJ04COedo+lOLyWWYScVsHNbKPb0qvFTIJ+DkHeUqPkHZxzlthVWI=
X-Received: by 2002:a05:6000:1789:b0:3ec:db8b:cbf1 with SMTP id
 ffacd0b85a97d-3ecdb8bcc30mr2101171f8f.24.1758043009793; Tue, 16 Sep 2025
 10:16:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912065146.28059-1-clamor95@gmail.com> <km7thoeguhkdp23gatn3w4kibgazzxi7s3cbkhueuokychqcbq@nabzlmfg3dmi>
In-Reply-To: <km7thoeguhkdp23gatn3w4kibgazzxi7s3cbkhueuokychqcbq@nabzlmfg3dmi>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 16 Sep 2025 20:16:38 +0300
X-Gm-Features: AS18NWD97oKjyygDrh6IMRSKq_qvj7eHt051Sltk5_HLhw06CzvSFGSnKXDHzEg
Message-ID: <CAPVz0n16NWiLgz9XT-_NF8gvwBMj+6+L_0Ua2gCDE0WK482QBw@mail.gmail.com>
Subject: Re: [PATCH v1 0/1] dt-bindings: power: supply: bq24190: document
 charge enable pin
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 16 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 19:59 Seba=
stian Reichel
<sebastian.reichel@collabora.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi,
>
> On Fri, Sep 12, 2025 at 09:51:45AM +0300, Svyatoslav Ryhel wrote:
> > Document active low Charge Enable pin. Battery charging is enabled when
> > REG01[5:4] =3D 01 and CE pin =3D Low. CE pin must be pulled high or low=
.
> >
> > Svyatoslav Ryhel (1):
> >   dt-bindings: power: supply: bq24190: document charge enable pin
> >
> >  Documentation/devicetree/bindings/power/supply/bq24190.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
>
> No driver change?
>

That is correct, both my patches for bq24190 charger and bq27xxx fuel
gauge adjust only schema to reflect the hardware configuration of
chips, drivers for these devices do not need any adjustments at least
for now.

> Greetings,
>
> -- Sebastian

