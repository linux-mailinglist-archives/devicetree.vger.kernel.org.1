Return-Path: <devicetree+bounces-31219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB3282A562
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 01:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A664289C4D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 00:48:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABFA27E4;
	Thu, 11 Jan 2024 00:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="ViWZJ+gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA938F
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 00:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-598a32d05ffso449511eaf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 16:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1704934098; x=1705538898; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOEWrRl8YYVpU1CBtgGPyMXsnglfEvh/E73IzWifIH8=;
        b=ViWZJ+gxofOOvb4P19nGkCWefBK0FRIiMSan5KxrhGP/FfuTOQrD6NZT2ri+doshYx
         kbTSzFu8K2ao3hF86IzcGl9PhdyHozbLr++oIoxoCvhFjxOaFwqCIkYSs6RemB1KbRxT
         9C39s9xEtif6JjD0VkqTp+Sn1zy1QJjbB/Vv1lKKPMEpe6GhYrd+SekkjTaOK8TwpfY2
         oXpVQDUVB070wDhvgIDVV3XdFdxHovrM3o9VsV3LqZ5YyzsrupqVtkeBTlMDvZcd1pq0
         5yN1y4fYdbdKW8AhHz4x0gGtGbOn9l06hozDdAB7RWcaiK1hJ+7oXOdxtaYMQh5rfcO+
         PRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704934098; x=1705538898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nOEWrRl8YYVpU1CBtgGPyMXsnglfEvh/E73IzWifIH8=;
        b=BoieDW2K+/gwlPuhZ7EGG+IthqCPbifr+PxUPEo8QHB7VPoiD79RnOb1K/B51xNowL
         4WFFjyow+RMpAb0E8tRFgMwjPAUr7AO15r3AJJE5BjiQHfp5dj2mcs9bnHbGegZqFSxS
         U+78u2r1ZWAAzG521UdSaMuW37UvPUBRXbZf3vLJmFFDzToO1NqXZBlNizSIh2CZ5oE4
         HpXW+EXh0EEya9XmWtSD9wmBbwhnLISrF4YNf7lc88hBLVEmwWaW7TDtuT/SkpedXcc4
         2yx+gZryKORtD3+aS7k5kKA+7LN+gkHLBMvWEIHRfFa2+b/kL/dZ6GN0dA8m+9/magOT
         9dzQ==
X-Gm-Message-State: AOJu0YwAzXqpfI0ZtXo3xm/HACRsSuMgnBQBYt5sv79TyFZO4NYTzDug
	utriOb+EuUd1KArMDFG69blZYnqwE9oSgAGSA1mc1W8o6qjv
X-Google-Smtp-Source: AGHT+IHz4ad/qvepzF7nLDXuFd9LMeIswNA09PD2TNtK0hUztE+LIcOHtVWm80Wgwv9m+bfFkcSUyz0bZSBbjVCwsow=
X-Received: by 2002:a4a:4bc7:0:b0:597:ba83:fb9b with SMTP id
 q190-20020a4a4bc7000000b00597ba83fb9bmr334374ooa.10.1704934098075; Wed, 10
 Jan 2024 16:48:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110140903.4090946-1-nm@ti.com> <20240110140903.4090946-14-nm@ti.com>
In-Reply-To: <20240110140903.4090946-14-nm@ti.com>
From: Jason Kridner <jkridner@beagleboard.org>
Date: Wed, 10 Jan 2024 19:48:07 -0500
Message-ID: <CAK8RMs3JjtTwbv8NiPMG7nTAbubyObD4z+23W15+tfqDH6ucyw@mail.gmail.com>
Subject: Re: [PATCH 13/16] arm64: dts: ti: beagle*: Add MIT license along with GPL-2.0
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Ayush Singh <ayushdevel1325@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Robert Nelson <robertcnelson@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, Wadim Egorov <w.egorov@phytec.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 9:09=E2=80=AFAM Nishanth Menon <nm@ti.com> wrote:
>
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for device trees belonging to BeagleBoard.org Foundation
> platforms. This allows for Linux kernel device tree to be used in
> other Operating System ecosystems such as Zephyr or FreeBSD.
>
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
>
> While at this, update the copyright year to sync with current year
> to indicate license change.
>
> Cc: Ayush Singh <ayushdevel1325@gmail.com>
> Cc: Jason Kridner <jkridner@beagleboard.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Robert Nelson <robertcnelson@gmail.com>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Wadim Egorov <w.egorov@phytec.de>
>
> Signed-off-by: Nishanth Menon <nm@ti.com>


Acked-by: Jason Kridner <jkridner@beagleboard.org>


>
> ---
>  .../boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso      | 4 ++--
>  .../boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts            | 6 +++---
>  arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts        | 8 ++++----
>  4 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso =
b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
> index 5e80ca7033ba..3b4643b7d19c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
> @@ -1,7 +1,7 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
>  /*
>   * ALINX AN5641 & Digilent PCam 5C - OV5640 camera module
> - * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.=
ti.com/
> + * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.=
ti.com/
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.=
dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
> index 5e1cbbc27c8f..81a2763d43c6 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
> @@ -1,7 +1,7 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
>  /*
>   * Technexion TEVI-OV5640-*-RPI - OV5640 camera module
> - * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.=
ti.com/
> + * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.=
ti.com/
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/=
boot/dts/ti/k3-am625-beagleplay.dts
> index eadbdd9ffe37..600db09b8ad3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> @@ -1,9 +1,9 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
>  /*
>   * https://beagleplay.org/
>   *
> - * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.=
ti.com/
> - * Copyright (C) 2022-2023 Robert Nelson, BeagleBoard.org Foundation
> + * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.=
ti.com/
> + * Copyright (C) 2022-2024 Robert Nelson, BeagleBoard.org Foundation
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/ar=
m64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> index 2f954729f353..dfc9adacd511 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> @@ -1,9 +1,9 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
>  /*
>   * https://beagleboard.org/ai-64
> - * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.co=
m/
> - * Copyright (C) 2022 Jason Kridner, BeagleBoard.org Foundation
> - * Copyright (C) 2022 Robert Nelson, BeagleBoard.org Foundation
> + * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.=
ti.com/
> + * Copyright (C) 2022-2024 Jason Kridner, BeagleBoard.org Foundation
> + * Copyright (C) 2022-2024 Robert Nelson, BeagleBoard.org Foundation
>   */
>
>  /dts-v1/;
> --
> 2.43.0
>


--
BeagleBoard.org Foundation is a US-based 501(c)3 non-profit providing
education and collaboration around open source hardware and software

Use https://beagleboard.org/about/jkridner to schedule a meeting

