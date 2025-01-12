Return-Path: <devicetree+bounces-137836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 531B7A0AC65
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 23:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 305D13A44BC
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 22:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76661B87F8;
	Sun, 12 Jan 2025 22:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="jhywFXAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234DA1C07C1;
	Sun, 12 Jan 2025 22:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736721905; cv=none; b=ivElYMx64pd7fRVT6wqZZFXLP/gG+vILjNxRyCuUXn8BcUGOjN+OwK+xvolROqvK1oEoq1U55uWpCq8XIWcWnU5LcmEJi9RFLGhlDolVdr9mwIm9HsClKjLthp4Ur4j4VKHQ09Ln4homvKWIEimIYb8amAfCmFOAnM7II93fLw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736721905; c=relaxed/simple;
	bh=JP7/w4gZKtZ+MHZf9R/zwfecgTC5hfetXj9e3QeCdoM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KdMsjlBhPd3UhyZdIvKwyL5viMQB99uN3WL2w/sjdcJ8usGCCOM5G567Ps+wvS0hnmIMSoma9qwS9jpXNlfOkKHIiOxazm2yYjqLHYShYL2fRWbh6GjY1H8Gq6vfcCF/8lw8bm4vukq6uWJUwo0aR2g+epb2okRRgweKhhDjrfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=jhywFXAn; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-21669fd5c7cso63884825ad.3;
        Sun, 12 Jan 2025 14:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1736721903; x=1737326703; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLFoOBjbfRh1gjNLtqlPfhaemkSZmfUAGDlcNvem/wg=;
        b=jhywFXAnn+3JmmNvRzRmsPYGKLXMt8t7SErYHFwSox0sZwOk42Wz+iAGy1G6nxyQaL
         oqDDX2bgF3p47YBEsY8N2wm/4sv+U6APTvuCjr89S7iTJwsheU2bfklkooKg2a62OnZH
         qYv6YI3FB9HigAjwlFGzrbVksdVe3fjMAdYeII4ZBT8CGxrsmHYq2zLv8sBPcwaaoNLS
         lf5IjeIZsHmbVqwteXUGrrveY0WSTl7zv2Ma61XIbp61ohijRpG9ZpXujfntWqqjl56d
         IVuDsOX9cKsinQNu9WAsfdTHezwsMsPIFbjXQgMusYz52YeqsYixe5FLTjKDVLavnugP
         BO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736721903; x=1737326703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLFoOBjbfRh1gjNLtqlPfhaemkSZmfUAGDlcNvem/wg=;
        b=l164aqFZsBasj4JaJoMCUt0gc6syRCSVMWGQ2wcK+caP7xdZT7X7qwzpm1DCnBspeF
         GorbIYwn1FBKbdyL2A42m7WoeyGUAqIvHUtkl59pmNLRo6/FRcWW2DzrpbplPemGG02m
         HO/ZrglAuaN6EDjAF/4Qjuk4agzpsiJt+1TjpuflMrgza67TMsTYLDOy1dF+nDjt9h4k
         X0Hd3MtVh9Perv3WuFDo+j2ybnGzMF3Te+JmSk6tsMiJoT7b+3eohTnjSRDG+YJ48/uT
         VXmBRipVDp/gXXQIqQ/qTk6bzVs9LIUNQYl8/o9/v+J7mxkPc3eqnhoZfnsMybX2/LUV
         nFgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbIVQhbtmInTx6Rr68HhiBzAislYZIz1ZwPQqKNMyGDdgoYVk1u/JOeFfoqgmUE2caAuCGgfUSxxF3c4qQ@vger.kernel.org, AJvYcCXgkUBr5d4IwH1qDYrPdQmB32ZOpgv9Kyu8/ugL8CcrfNfzzZf9mF7M9Kawl5G25w9Sg3LMJdE/I12P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1ApG83Hah26++FOLPFMdsPbhR6qUOfjfbEAq0YZ6M7N3LEx5e
	4xT+edqz3EJpLNdbr43VGhhp0N1OgvFNxwAeWYvTNkw5TPJ/XEc4bVm7MsJHIcsmSx6u1j0+ccL
	HHxUYKFUMreQgWI7er3KjjWTMle4=
X-Gm-Gg: ASbGncszJBI3456i5oehgjaLekuJT2llDCrHlSvjCoRzWYNIz7BTdRIFrLmRW3MNvoJ
	ayrdrEO0j2pXrNlozsB2MJRLfiGb35gKFoi6WXcZjXfbi71Rd1RhyD3g3xjwvc5x/1Ts0wkM=
X-Google-Smtp-Source: AGHT+IGNz3Ruf0X+gVj7nBY3APrFarUB7thQVZMZ4m+s7QUu/pm1goAfZAGCOZYY8Z7GpsZnqZtOgbL3BA33uqULwts=
X-Received: by 2002:a17:902:d510:b0:216:5568:38c9 with SMTP id
 d9443c01a7336-21a83f765dbmr291330955ad.31.1736721903273; Sun, 12 Jan 2025
 14:45:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 12 Jan 2025 23:44:52 +0100
X-Gm-Features: AbW1kvZsSUpdzbvzbuZJcXAZ1UAOMHLx_A3msCo-ZlE0wKJxebqo01Qyaki1jEQ
Message-ID: <CAFBinCDG2in4ZZAp2LXnz8bgiZoPL3G_c9+aCo9+Ort2W-tFCA@mail.gmail.com>
Subject: Re: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for Amlogic S4
To: ao.xu@amlogic.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Jan 10, 2025 at 6:39=E2=80=AFAM Ao Xu via B4 Relay
<devnull+ao.xu.amlogic.com@kernel.org> wrote:
>
> This patch series adds DRM support for the Amlogic S4-series SoCs.
> Compared to the Amlogic G12-series, the S4-series introduces the followin=
g changes:
Thanks for your patches. With this mail I'll try to summarize my
understanding of the situation with the drm/meson driver as I'm not
sure how familiar you are with previous discussions.

> 1 The S4-series splits the HIU into three separate components: `sys_ctrl`=
, `pwr_ctrl`, and `clk_ctrl`.
>   As a result, VENC and VCLK drivers are updated with S4-specific compati=
ble strings to accommodate these changes.
Jerome has already commented on patch 3/11 that this mixes in too many
IP blocks into one driver.
This is not a new situation, the existing code is doing exactly the same.

Jerome has previously sent a series which started "an effort to remove
the use HHI syscon" [0] from the drm/meson hdmi driver.
In the same mail he further notes: "[the patchset] stops short of
making any controversial DT changes. To decouple the HDMI
phy driver and main DRM driver, allowing the PHY to get hold of its
registers, I believe a DT ABI break is inevitable. Ideally the
register region of the PHY within the HHI should provided, not the
whole HHI. That's pain for another day ..."

For now I'm assuming you're familiar with device-tree ABI.
If not then please let us know so we can elaborate further on this.

My own notes for meson_dw_hdmi.c are:
- we should not program HHI_HDMI_CLK_CNTL directly but go through CCF
(common clock framework) instead (we should already have the driver
for this in place)
- we should not program HHI_MEM_PD_REG0 directly but go through the
genpd/pmdomain framework (we should already have the driver for this
in place)
- for the HDMI PHY registers: on Meson8/8b/8m2 (those were 32-bit SoCs
in case you're not familiar with them, they predate GXBB/GXL/...) I
wrote a PHY driver (which is already upstream:
drivers/phy/amlogic/phy-meson8-hdmi-tx.c) as that made most sense to
me

Then there's meson_venc.c which has two writes to HHI_GCLK_MPEG2.
I think those should go through CCF instead of directly accessing this regi=
ster.

Also there's the VDAC registers in meson_encoder_cvbs.c:
I think Neil suggested at one point to make it a PHY driver. I even
started working on this (if you're curious: see [0] and [1]).
DT ABI backwards compatibility is also a concern here.

And finally there's the video clock tree programming in meson_vclk.c.
My understanding here is that video PLL settings are very sensitive
and require fine-tuning according to the desired output clock.
Since it's a bunch of clocks I'd say that direct programming of the
clock registers should be avoided and we need to go through CCF as
well.
But to me those register values are all magic (as I am not aware of
any documentation that's available to me which describes how to
determine the correct PLL register values - otherside the standard
en/m/n/frac/lock and reset bits).

I'm not saying that all of my thoughts are correct and immediately
need to be put into code.
Think of them more as an explanation to Jerome's reaction.

I think what we need next is a discussion on how to move forward with
device-tree ABI for new SoCs.
Neil, Jerome: I'd like to hear your feedback on this.

> 2 The S4-series secures access to HDMITX DWC and TOP registers,
>   requiring modifications to the driver to handle this new access method.
This info should go into patch 1/11 to explain why the g12a compatible
string cannot be used as fallback.


Best regards,
Martin


[0] https://github.com/xdarklight/linux/commit/36e698edc25dc698a0d57b729a7a=
4587fafc0987
[1] https://github.com/xdarklight/linux/commit/824b792fdbd2d3c0b71b21e1105e=
ca0aaad8daa6

