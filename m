Return-Path: <devicetree+bounces-222255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B6CBA7837
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 23:12:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 804C37A1E6F
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 21:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B90229E0E9;
	Sun, 28 Sep 2025 21:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="gWFBrYIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FFA29BDAA
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 21:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759093937; cv=none; b=X1mHNp4oQ2wt/0xklG2RxWk/+QiejjRMexI//b938spj6toDGQaQ+F+HR0iZ3YUcybKWK3gqSWh+q4m3ea8UtAObwT1uvfkPQt5n1aujO64CkLPh0Z2jR6mHW3MT6O8fwkamYqNOF/ztCq3LLrftbXe9MFtV37Z3r0Q0/M1nOgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759093937; c=relaxed/simple;
	bh=L9Wr+oB+yImWWeNWztttdaO+JL7qll64cuGGoO1pokQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jxWULZCxk2T5Y8yDCIFDbGu6076h7lTPJmxsctkpYEJ8+y37vpjdtxDFjqxQj1p9K9J8F6mtUk/nZYABEoiNrXf0MdaL2fuVpuYo3NC7e5tAnIYBgmdSC7bTKrmaokB6IhH11Ow5JcMkzzNzFs1N9z5qK0UWyqHyWwoRUfGeksE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=gWFBrYIE; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b57bffc0248so3015567a12.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 14:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759093933; x=1759698733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9Wr+oB+yImWWeNWztttdaO+JL7qll64cuGGoO1pokQ=;
        b=gWFBrYIE31P/mbQKgAsTlzBoAFb3IcHyuBp6uwitcLEBGkvqmsBd7T+yKBzohlWgB9
         1RDG7CRMIoQjKNbH98sILLVBl3fay4KGET/dHoTSkfgTWB74Y5+BrjcU1HlycH7JGZMl
         Nvv6t4P0pII1VjkLq62AiO2s10xcfWTfg6qKt6nrTvgvLQ1m/lP6UaHjg4Nub3lII4rF
         M+oY3ChiGONdxPcBfVTuUmNtQoTM7F3nF1tsmG1Aa0SAnYK7m74fOSMLRzuiZUWGSTS5
         6w/dyZnet+fz/bBLjeXRD+IfCVA6FOeT/GMRJPCeWaR7CxSHRaXBLrOSDOe2OOFIQ9Jm
         60zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759093933; x=1759698733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9Wr+oB+yImWWeNWztttdaO+JL7qll64cuGGoO1pokQ=;
        b=F8ptr+Yk2msldAZ8lGMVoJ8XzjYxqz+lMS9k1v9cpgGwUTQsDzhBxzVr+g5cKtG39Q
         Kdp4FHHS3jdJiyHJhoem/UUQcHd4DCysZ0JQpzdJwFieSSVbOXfuyFtBiJb4Q2fANn8K
         25nh8X0uLd8ZQTJsKWz+lTjnlWDeqjgxL1sJbbVf76hdYOfNeKeZhi2bW1cA3U4xKbDY
         vEUamTtc4I77i3ppP2iiiPjQ3K8m8eS2c+Bo8AhFB6Mgvc9bA+eaCnWoE0FIlxAHO0Mq
         CjmfFXJWT3ORNG3LO52dUdRLBAvEXGXeO0FMvBtnCbDF7QuPqSTBaMfR5ezSGcWRHgLd
         ANOw==
X-Forwarded-Encrypted: i=1; AJvYcCVeqHwNOXO2U6yAAwOpc3Yfzcw15o4RdQzI4ta9M7vfozS7OleKmd7uIqYRMvG1MSk5rXz0LdgAVxOJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxAyyxCCIIB4DJc2eDooTMpbgKGn3f+bfw6/K9/CoAPLv4pfhxX
	SzrmyosB7jHOdHy5743Cl1kPhpgjnwlZXBdrBgbBBWoETdfx94QfobZyuECMmZ94Aa4VI3E8foa
	jiPZiV4ZZmi2ub/5OL5OQUH64q3uLEkg=
X-Gm-Gg: ASbGncuEcCGIb2dzqQrh08utiWGMaT93k34v7cYuumh5WqYRjnhbYQhoDZLL2xK2dcp
	CoKLPN509+E7FYyaGyLCeCIlByHXSBBMrkjJAhwtSMOxCa6CKJExrgQBelCkGyYXZZhCJSnjYQi
	G+sRo3A1qAG4SKFXjvAnqgw6spY938HSFixmnsTbE26u8IiGRIckxIwpucnOo6SZzRQrvs7yw3X
	6WLMzS0mh0zZlSO3wcTGCDqmdEsRxldzkTR81djH/8Zh9m/4dZ7vvf9xel6GA==
X-Google-Smtp-Source: AGHT+IEzeCWoAcjeQc0mkokrPasLODpJyV0OvfwXH4nf4WOVTR25YxHcNFHmxB2wa/0TSLPGrvZCSjajqVhJuA6GrUs=
X-Received: by 2002:a17:902:ce01:b0:27d:6cb6:f7c2 with SMTP id
 d9443c01a7336-27ed6e0575amr147835175ad.17.1759093933080; Sun, 28 Sep 2025
 14:12:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250927125006.824293-1-christianshewitt@gmail.com> <20250927125006.824293-2-christianshewitt@gmail.com>
In-Reply-To: <20250927125006.824293-2-christianshewitt@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 28 Sep 2025 23:12:02 +0200
X-Gm-Features: AS18NWD6fXr03inON1_wapYEKrdYX1AMtat52gOUZi0JEEmswI8favZ4PtmwBLQ
Message-ID: <CAFBinCDQc=2xrKbGunSKJjLhGd0bCGN+3oYd_bg0ySs+WHxZjA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: meson: add initial device-tree for Tanix
 TX9 Pro
To: Christian Hewitt <christianshewitt@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

thank you for the patch!

On Sat, Sep 27, 2025 at 2:50=E2=80=AFPM Christian Hewitt
<christianshewitt@gmail.com> wrote:
[...]
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-tx9-pro.dts
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2016 Endless Computers, Inc.
> + * Author: Carlo Caione <carlo@endlessm.com>
Is Carlo really the author?


Best regards,
Martin

