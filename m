Return-Path: <devicetree+bounces-18522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1D47F7019
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4F9B1C20F25
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAAB8C18;
	Fri, 24 Nov 2023 09:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="etL+CSQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71585D7F
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:38:54 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-da3b4b7c6bdso1609669276.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700818733; x=1701423533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=geI8GtZzgpBXL5dK3wkA+z2fxGZtMOBQC6A7G59OA2k=;
        b=etL+CSQrBatydm0PGGfHEH9tq/QRETNazIDKmg5AesapV+i2MRq+fnshfUTJaUaYjZ
         Jyd9CBHN0nS8g0fGSRgwu79Fct7LDyMn7ni50M8TqPB2TfPiYqcn8Yix2Xh1Hp7EyZZ5
         I8ZuJdcJMMSRA/stKrj3j2aqvygpb+COFwkh1JSn11nOI/cfd0MypYJmTS9ot0fV0oA7
         lZIBBV59VHdZ92Ej2DppxxKY/Dm3sfSp+QfmL7SJctQVLCZaBViSQVZzJ8Dyeogzlb4F
         SiNtn7aq/8k5Cl+hGYGsM/bJdUvezST/pU6OJSptuMPbDsfuQSbunzlVocT+K+2HbSdZ
         nUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700818733; x=1701423533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=geI8GtZzgpBXL5dK3wkA+z2fxGZtMOBQC6A7G59OA2k=;
        b=fGmPMU1h92mxiNNcw+f4lTbpWqjRak457rrcMnA/8vk6Hj4IgO/fsY7oUj+DWYfdZb
         I32RufdToCwwrppeHrzvOKHrXpEhW+bWi4bHxedWRXa/JOa3SCX0bxJERjUqbpYX/sma
         5OF5Hv03/4wv8OjVRoNIdTBgHqaELJq7j5qVR2pF7bfa1o/w8avuH5nqNpdM/91yQRJ4
         4bt+cT4ZKMPxUPLhJTJrSXJke5+rEaumxhzkTwHDIA56Sby8gOUzgWHCSIgXI16NQnVO
         AfN8uYD3ItyB9reQwdW2GUMnzkj4LzYqv4ocikikGRUOsUc+Cyf+N7h5mCYN802shWnU
         wGCg==
X-Gm-Message-State: AOJu0YwLMxlsbipTKfF/bvWnu67FSg7USZHvbc1TRFw/KfBuKZVwBt2V
	WQhaNmPzaxFh3GVD/rMA8HB/4YUK9LCnp6ETQuZA3w==
X-Google-Smtp-Source: AGHT+IEXXvMFd13QXsC43cgyzVVZZH5cHNcXyPv3BXDDLd7/Rf5DZugdNE2BTv/Vm4WYLEoYNSUMRpCXrTwn21upVX4=
X-Received: by 2002:a05:6902:49:b0:d9a:cd50:b99a with SMTP id
 m9-20020a056902004900b00d9acd50b99amr1760789ybh.12.1700818733666; Fri, 24 Nov
 2023 01:38:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116111441.2339-1-tychang@realtek.com> <20231116111441.2339-3-tychang@realtek.com>
In-Reply-To: <20231116111441.2339-3-tychang@realtek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Nov 2023 10:38:42 +0100
Message-ID: <CACRpkdZTFWnH1iwLCeJy02OXJAgTSSVTomzDNEQ3ebWocwkgPA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Add GPIO support for Realtek DHC(Digital Home
 Center) RTD SoCs.
To: Tzuyi Chang <tychang@realtek.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tzuyi,

On Thu, Nov 16, 2023 at 12:14=E2=80=AFPM Tzuyi Chang <tychang@realtek.com> =
wrote:

> This driver enables configuration of GPIO direction, GPIO values, GPIO
> debounce settings and handles GPIO interrupts.
>
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>

Apart from the missing kerneldoc that the autobuilder is complaining about
this looks good to me. If you fix the kerneldoc:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

