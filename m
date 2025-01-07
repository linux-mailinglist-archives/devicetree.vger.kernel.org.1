Return-Path: <devicetree+bounces-136091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC3AA03C91
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 640DF7A1BC2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23E21DED66;
	Tue,  7 Jan 2025 10:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dQprJ9yb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626131E3765;
	Tue,  7 Jan 2025 10:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736246165; cv=none; b=XcCh8j9g9AIv83HPNMU5gC7nrghhzhFsM1o0AXTyZog5ZBkxQnM63zZohxFRz9uV/9zD20Kh0PyO1jErEKqIV+vlvXqD0VHpNod2LBuQMLruel1+riQwvW7r0gP6VICR0GDpe3T2rakOwhU2BvtN7/BFMS3qT8lkPjd15llJ+Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736246165; c=relaxed/simple;
	bh=V46PQ8mG34pgi2wB7fE68m4CiUds/VtZ4km+ZeQTlNM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CRjxLX1t54SurCVdloywJty6XVFG1ubYMmZ/YAEdkkHE8kug4dwKBKVav6W/b4E6i9xm700XQd8lO9MBuXk9KSSuygjVz/Oy/gfAs856kEW28o/rYHj8teTJGSenFbQIyc5lpiAsCSiHJhT77Z26ADefORqeJbNmi2zZJmul+cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dQprJ9yb; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e3778bffdso16978284e87.0;
        Tue, 07 Jan 2025 02:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736246160; x=1736850960; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EbZfbhz7iEzPycXJ2CVFWfaIcALTm8Fom6fe6QVaJ3Y=;
        b=dQprJ9yb6ni6eZB0ZBlxA3K1sKFTxYnOKAr8LVtumER/M2RFjy2l3CkySRkFxVCpz1
         b0qX0t+E4FqcGAzuyH/Yp8mGH2/IsMwu7tRVqpxiTHGctp8/d/jUnii+BXqg/7vB9xPO
         MBUyRequCDlTk9dBCouLfX8omhEukpfQKKy9bhtuHsYUlto6B2KradceE2U2fDGGfkxX
         1LEcG9n4gahsiBDbRRdbAGIoIy2BBhscJgSc2ZjgXg116ElQHc+qvs4WTEutl5m3yOgD
         hDp5B/OzFY4g+5erwREUlb6Ci5rKLWscG6no6b2cv3JueDBc7LCfZPfu+PGnY33SqvPC
         43Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736246160; x=1736850960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbZfbhz7iEzPycXJ2CVFWfaIcALTm8Fom6fe6QVaJ3Y=;
        b=daUft1o0Ll/BfOdCO6hKCTO3B1e5SApwa4ZAxzFG/jUwjedxpVOtcaHqFoRn6BTX39
         p7pSmwpWK6Um4W6xdZJDx7yPJZ+JI3WNBbojDxlHBc0McpUeCoSKxnlw6FXMrbelQQIy
         1zs8lSMsXlZYlOoHmcBgKjzZy6AftE4kCG0xqT7VtQuH9/Q3Sgs+bMDIVFGr43m4Qyjf
         mqOCLy3wsTOT4y3UlFyQVXZLK8KV6lNnR5BbpsvB0jHrBxI28uGeCHFCNbXFU0LEvzD5
         iB4mBDFHlFwIS+15F6n8IFnaZMExoRL23YWgD2y14Yf1j3VZb3hW1Tth+zEG6I1GM638
         voqA==
X-Forwarded-Encrypted: i=1; AJvYcCVB/M71tFfqyRQ81ERdByI0wdKN2dW77GqyPB/yBqU6OhLT7C+yDC9OB4io88iKJamVwoYgJX+a5pCm@vger.kernel.org, AJvYcCVWnLT26Y0hfEZOD19DabJSu/hq2m3BYtu/RUcN5eIcGoTdlotTPBfD2xYzNJu+pwj4fPT/3sXVH/emwtzD@vger.kernel.org
X-Gm-Message-State: AOJu0YyALbaFxo99X1PjMs20o/mPajIwQnTK1HCRjac7XlXf/7lluKAF
	allPhaBVqYH7L3dMbUeYMzl1c9toUnpgjl/dMoUlOhomXuUX5hN76D7ZE+oDDoeA1oqBd3D95Ik
	e+OuJdTcBRXcGYR1p+QznUkqKauw=
X-Gm-Gg: ASbGncts3Qhnvp6BAIgNeqnuHP3EcNON4LIm4JTI9MEatcpTuGEOsaxNOJoNpDrjUlN
	229dZ4suYZohCVg4un7NyylGXMIfD/0/MGpR/smIesYCmzgBKXDn0XyLul1EwFs5a163biQ==
X-Google-Smtp-Source: AGHT+IH/zgB5AIW8SXe9fLjt6csgYHV150OAiMaYUNGL55jIFK9HyFHffxA0F1up0XAC1lvyFU3qoTZjri7PgMpYmPM=
X-Received: by 2002:a05:6512:104c:b0:540:1fec:f321 with SMTP id
 2adb3069b0e04-5422958243bmr18443941e87.41.1736246160170; Tue, 07 Jan 2025
 02:36:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250107094943.518474-1-alexander.stein@ew.tq-group.com> <20250107094943.518474-3-alexander.stein@ew.tq-group.com>
In-Reply-To: <20250107094943.518474-3-alexander.stein@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 Jan 2025 07:35:48 -0300
X-Gm-Features: AbW1kvbqKfp_hBVMEYDDaHbQzJ92mQ9GQWt0UJSLPvbJH41ssSImPCn2Z_2AU3U
Message-ID: <CAOMZO5CasQDRu=U7zUxzuFVBHyREZ7oyG8+SJjg2BF58B9G3wg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: samsung,mipi-dsim: Add imx7d specific compatible
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

On Tue, Jan 7, 2025 at 6:50=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> This add a imx7(d) specific compatible which is compatible to imx8mm.
> This silences the dtbs_check warning:
> arch/arm/boot/dts/nxp/imx/imx7s-mba7.dtb: dsi@30760000: compatible: 'oneO=
f' conditional failed, one must be fixed:
>  ['fsl,imx7d-mipi-dsim', 'fsl,imx8mm-mipi-dsim'] is too long

The warning here is about using fsl,imx8mm-mipi-dsim.

> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mip=
i-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi=
-dsim.yaml
> index 4ed7a799ba26b..e43fec5609417 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> @@ -27,7 +27,9 @@ properties:
>            - fsl,imx8mm-mipi-dsim
>            - fsl,imx8mp-mipi-dsim
>        - items:
> -          - const: fsl,imx8mn-mipi-dsim
> +          - enum:
> +              - fsl,imx7d-mipi-dsim
> +              - fsl,imx8mn-mipi-dsim

But you added a fallback to fsl,imx8mn-mipi-dsim, so this does not look rig=
ht.

I have already sent the following fix to address this issue:

https://lore.kernel.org/all/20241217131431.1464983-1-festevam@gmail.com/T/

