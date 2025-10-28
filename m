Return-Path: <devicetree+bounces-232313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB6C16771
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BA0D1350EC6
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D6633031F;
	Tue, 28 Oct 2025 18:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a1JaxdFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0709C347BA3
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 18:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761675948; cv=none; b=uIrohWG4onNeRz0GqWnbPhAzUJoSVA5IWIUg8KVnA5bOH0lwb2sK6IJnEAbjP9gLM4D2uC0ZJ/0v+R+R0C60ZIeWI0CPoBuoz/iZR9h4+uIqTiRNoJyQm44dfq8I/dR2P6O+mIeF4/Sq8BSXZnPn4JFtqWKimd6UfGxluwCf3c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761675948; c=relaxed/simple;
	bh=ok6Tl7RUMhfY5AW2FmCbXe+CHbPj0fDsuBNMuXfUvss=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IIm06tLFuhZ1qwpGnj8pq+2ZbZx6lkPmSbgiRoS+USncLRP7VrkaSC+aPl0JayFaUh1+mLjIq+fcBki+nqZvi7WKC1IMWkUvbRp+4A56V01xyICA4RFQ5/Kj1nkZUzeyubiwoadM5DZqrK+jhw/P2AYz800xlLxctw6+7ewJN7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a1JaxdFE; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b6d53684cfdso1402210466b.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761675944; x=1762280744; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCqkedhq8gefJ0vq9o5JT8van1611cBRTjmA+ft6YH8=;
        b=a1JaxdFEoW9otWWdrRkL1qXmwKp1MNvcYvfo+UgiujAPVN5BaF5QIGSk+S8ue+V/Zu
         j5JXFhtVROmQ0asi6K2qzXBu+28EDcoYn/slLxLurNL71v3bSKooMq/N/v35qt+ZoP/8
         KSM9CLQW5xvmfpLai+y6Y7Lyxj1+VvWJO92YTP/q91Ckhk3YSCandKn/cdD6EGZKpqcf
         sBh57HRvS0gvj8yVAosSNaR/4euD1+JD/SXdG0jhZwUZCvfllVgQVFm3UHFC/AOd5RFb
         31iDdg9I4MQ3RdEfhDR0nOLjYNR1KtfTAPhRx9Ks4kzi+TC+ZcMht3uOXlQJU5uPGKNx
         seZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761675944; x=1762280744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MCqkedhq8gefJ0vq9o5JT8van1611cBRTjmA+ft6YH8=;
        b=J2ZTGqTq/x+3LaKnR/IdVLwxP4T+4Y6iZ570bCwg6eSwzg2R6fHIuinPrpESzcGFUK
         YH1/WRcOxTI7V8mvZ5hGfQpAnex1plAS0jma87TfGjywwm9UBZPvUeYmmvQjAWeN9m+U
         iYTrDf11MG8vRHi7iDQbW/IuI4ROPvKVMKZq1nam5jXGVwaruPJvUzt2kbuzi+dj0RsM
         bs33aw2lW2mjJcvlCpeFeI14qsOjgHXP/ruLrCGXMW0CcTy97GIsYIVIKlwXDQHXaSoK
         fuXqKfC9XqsXN6yBmXgpZUjzXvWN8BlTe44qA4Tf1ZdtkyvYaRkR6Wpi6HMTkYOClQfU
         R30w==
X-Forwarded-Encrypted: i=1; AJvYcCUkrcahDZjK2NGkYC7vXuDGsMeeQLNVMU+Xdc5R9w3FfQKye/QjeFZuc4NYat4ZKzAtQ+LRaTQDDTpU@vger.kernel.org
X-Gm-Message-State: AOJu0YwT0pJ/v1t8Qzw5kNUrtEoT2EhaQhDHvnY+qJoF2OrdhvKnNIfd
	VdH0utdvSLi05KeSYWQIQjQofcKewu4Yb+iXe/3sWu5XiT6d3ZK7VMLUeEZ3jKsR422YimewwIq
	uAYm9IA+PEKJMr/t9lbFPDKWT4kxbDlI=
X-Gm-Gg: ASbGncvM4KSzb6d0WEC5o+YDG+8SgB1XQPVhIrjFxJYcfZyGVkOxUseSSRc0/fTpJcx
	eq/0Uzxl7EhLgjYH2B+V5/Fo6bAsmkdn0k0HGGi8ExTTrvizXxveDh41+b8qIka1cBiOFy5G+F3
	UNitzvWoiQDWX0HYcu/kuqbbdcE280pivWIE6PSLrq/TqaqVVVWEcPGkSWSICxfseWi94jg7cFf
	AoxvwjX1M+jo+47IBJ43fzuT/FMYqx6l1pNezW9aIqXMo7Pmo4OdBXDc4gU
X-Google-Smtp-Source: AGHT+IHUN9iAMdCMTe6iKPq3e6j4mC/AjCVKjhKIhI0duJ1VlADSpP0NivnP3lrSv3tcevZNdZbSiCNvU3n7YE5rU4Q=
X-Received: by 2002:a17:907:6d0d:b0:b04:1249:2b24 with SMTP id
 a640c23a62f3a-b703290dd00mr58549566b.37.1761675944176; Tue, 28 Oct 2025
 11:25:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002-c55-v12-0-3eda2dba9554@ideasonboard.com> <20251002-c55-v12-4-3eda2dba9554@ideasonboard.com>
In-Reply-To: <20251002-c55-v12-4-3eda2dba9554@ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 28 Oct 2025 18:25:17 +0000
X-Gm-Features: AWmQ_bm2B_mhjyhjxwffXBBORyZZbcAxcXJ9p2Wws_R9xPcbz_GEzTbnOC3k5mM
Message-ID: <CA+V-a8t8H9rYmXtrMrEvnx6otoktK=EFptZndYLTFCc9qM_mKg@mail.gmail.com>
Subject: Re: [PATCH v12 04/15] media: uapi: Add controls for Mali-C55 ISP
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Anthony.McGivern@arm.com, 
	jacopo.mondi@ideasonboard.com, nayden.kanchev@arm.com, robh+dt@kernel.org, 
	mchehab@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jerome.forissier@linaro.org, kieran.bingham@ideasonboard.com, 
	laurent.pinchart@ideasonboard.com, 
	Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 2, 2025 at 11:19=E2=80=AFAM Daniel Scally
<dan.scally@ideasonboard.com> wrote:
>
> Add definitions and documentation for the custom control that will
> be needed by the Mali-C55 ISP driver. This will be a read only
> bitmask of the driver's capabilities, informing userspace of which
> blocks are fitted and which are absent.
>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
> Changes in v12:
>
>         - Removed _FITTED suffix from control value names
>         - Specified bitmask for control name
>         - Used (1 << n) instead of BIT(n) in uapi header
>         - Updated comment to reserve 16 controls for driver
>
> Changes in v11:
>
>         - None
> Changes in v10:
>
>         - None
>
> Changes in v9:
>
>         - New patch
> ---
>  .../userspace-api/media/drivers/index.rst          |  1 +
>  .../userspace-api/media/drivers/mali-c55.rst       | 55 ++++++++++++++++=
++++++
>  include/uapi/linux/media/arm/mali-c55-config.h     | 26 ++++++++++
>  include/uapi/linux/v4l2-controls.h                 |  6 +++
>  4 files changed, 88 insertions(+)
>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Docume=
ntation/userspace-api/media/drivers/index.rst
> index d706cb47b1122b6e145a02ab826eb3ecc7997c2b..02967c9b18d6e90f414ccc132=
9c09bffee895e68 100644
> --- a/Documentation/userspace-api/media/drivers/index.rst
> +++ b/Documentation/userspace-api/media/drivers/index.rst
> @@ -32,6 +32,7 @@ For more details see the file COPYING in the source dis=
tribution of Linux.
>         cx2341x-uapi
>         dw100
>         imx-uapi
> +       mali-c55
>         max2175
>         npcm-video
>         omap3isp-uapi
> diff --git a/Documentation/userspace-api/media/drivers/mali-c55.rst b/Doc=
umentation/userspace-api/media/drivers/mali-c55.rst
> new file mode 100644
> index 0000000000000000000000000000000000000000..74f2cdb717e0dddeb11fb1eab=
a69eeebb2534f95
> --- /dev/null
> +++ b/Documentation/userspace-api/media/drivers/mali-c55.rst
> @@ -0,0 +1,55 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +Arm Mali-C55 ISP driver
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The Arm Mali-C55 ISP driver implements a single driver-specific control:
> +
> +``V4L2_CID_MALI_C55_CAPABILITIES (bitmask)``
> +    Detail the capabilities of the ISP by giving detail about the fitted=
 blocks.
> +
> +    .. flat-table:: Bitmask meaning definitions
> +       :header-rows: 1
> +       :widths: 2 4 8
> +
> +       * - Bit
> +         - Macro
> +         - Meaning
> +        * - 0
> +          - MALI_C55_GPS_PONG
> +          - Pong configuration space is fitted in the ISP
> +        * - 1
> +          - MALI_C55_GPS_WDR
> +          - WDR Framestitch, offset and gain is fitted in the ISP
> +        * - 2
> +          - MALI_C55_GPS_COMPRESSION
> +          - Temper compression is fitted in the ISP
> +        * - 3
> +          - MALI_C55_GPS_TEMPER
> +          - Temper is fitted in the ISP
> +        * - 4
> +          - MALI_C55_GPS_SINTER_LITE
> +          - Sinter Lite is fitted in the ISP instead of the full Sinter =
version
> +        * - 5
> +          - MALI_C55_GPS_SINTER
> +          - Sinter is fitted in the ISP
> +        * - 6
> +          - MALI_C55_GPS_IRIDIX_LTM
> +          - Iridix local tone mappine is fitted in the ISP
> +        * - 7
> +          - MALI_C55_GPS_IRIDIX_GTM
> +          - Iridix global tone mapping is fitted in the ISP
> +        * - 8
> +          - MALI_C55_GPS_CNR
> +          - Colour noise reduction is fitted in the ISP
> +        * - 9
> +          - MALI_C55_GPS_FRSCALER
> +          - The full resolution pipe scaler is fitted in the ISP
> +        * - 10
> +          - MALI_C55_GPS_DS_PIPE
> +          - The downscale pipe is fitted in the ISP
> +
> +    The Mali-C55 ISP can be configured in a number of ways to include or=
 exclude
> +    blocks which may not be necessary. This control provides a way for t=
he
> +    driver to communicate to userspace which of the blocks are fitted in=
 the
> +    design.
> \ No newline at end of file
> diff --git a/include/uapi/linux/media/arm/mali-c55-config.h b/include/uap=
i/linux/media/arm/mali-c55-config.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..7fddece54ada9dadc3c76372d=
496d9395237a41c
> --- /dev/null
> +++ b/include/uapi/linux/media/arm/mali-c55-config.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * ARM Mali-C55 ISP Driver - Userspace API
> + *
> + * Copyright (C) 2023 Ideas on Board Oy
> + */
> +
> +#ifndef __UAPI_MALI_C55_CONFIG_H
> +#define __UAPI_MALI_C55_CONFIG_H
> +
> +#include <linux/v4l2-controls.h>
> +
> +#define V4L2_CID_MALI_C55_CAPABILITIES (V4L2_CID_USER_MALI_C55_BASE + 0x=
0)
> +#define MALI_C55_GPS_PONG              (1U << 0)
> +#define MALI_C55_GPS_WDR               (1U << 1)
> +#define MALI_C55_GPS_COMPRESSION       (1U << 2)
> +#define MALI_C55_GPS_TEMPER            (1U << 3)
> +#define MALI_C55_GPS_SINTER_LITE       (1U << 4)
> +#define MALI_C55_GPS_SINTER            (1U << 5)
> +#define MALI_C55_GPS_IRIDIX_LTM                (1U << 6)
> +#define MALI_C55_GPS_IRIDIX_GTM                (1U << 7)
> +#define MALI_C55_GPS_CNR               (1U << 8)
> +#define MALI_C55_GPS_FRSCALER          (1U << 9)
> +#define MALI_C55_GPS_DS_PIPE           (1U << 10)
> +
> +#endif /* __UAPI_MALI_C55_CONFIG_H */
> diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2=
-controls.h
> index 2d30107e047ee3cf6b149e5b075cc9d4137b7d3f..f84ed133a6c9b2ddc1aedbd58=
2ddf78cb71f34e5 100644
> --- a/include/uapi/linux/v4l2-controls.h
> +++ b/include/uapi/linux/v4l2-controls.h
> @@ -228,6 +228,12 @@ enum v4l2_colorfx {
>   */
>  #define V4L2_CID_USER_RKISP1_BASE              (V4L2_CID_USER_BASE + 0x1=
220)
>
> +/*
> + * The base for the Arm Mali-C55 ISP driver controls.
> + * We reserve 16 controls for this driver
> + */
> +#define V4L2_CID_USER_MALI_C55_BASE            (V4L2_CID_USER_BASE + 0x1=
230)
> +
>  /* MPEG-class control IDs */
>  /* The MPEG controls are applicable to all codec controls
>   * and the 'MPEG' part of the define is historical */
>
> --
> 2.43.0
>
>

