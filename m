Return-Path: <devicetree+bounces-118692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C44DD9BB410
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82D24280D24
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5B71B3942;
	Mon,  4 Nov 2024 12:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KZbdBzHH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAC0195811
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 12:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730721665; cv=none; b=G4RsKIvPTi/BGJka2OzKC37t8ypnNxDNnFfdGOEexFCQIpixG4xOHTgxIuS1g3yEkWpwN78r1UIymb6fnPmPvLtadvDHDQNcWddPZ/b+3B8JgdfEQxuart7oA1aNW+Tg8b040b4R6HPp7qGheXR6ll/fh6dbHyRBY9xi79IMVSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730721665; c=relaxed/simple;
	bh=0pROEED12QF42oPaeUMBW0a4uQq1rT7XDSEpbhn0euM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GvQlFweTnJHqRGURiWGBr1WI01WnoCMwi9zJn2t/gaGrqQTbjk5wJ5hEXZWb7frDX6HE9mJna3cbXwdGLmTBY9F/9Q2sbQ03iy5A9u0Fi7+Eqr2Cu6RF9HjFgK0Gr94om43xVnazvrCIdJDpiQMsWdUdeCQ/367WyAMyeFCQ7wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KZbdBzHH; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539e7e73740so1571273e87.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 04:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730721661; x=1731326461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WPuhQI0lOHF+Ad4CcmmMCQ7pBg6SlbMgHJcEZYv6FAA=;
        b=KZbdBzHHw5piZPZIj+Z869aJfo4Zg+J+D5RFBXwOG2Br2BE1x24XHsebf0iL7k/eAF
         DPOa0OTWkRLDMUWQXqfB5EeTbygGZjMk4RhJBle76xF/IpFWHgXR2Ee5kW2/57/6rX64
         ChpMSpAi4b+W6MScX1/fkC7iJ7HcfFavzSxVjqEKnj51XB+PGJDfkm6QiVjmNvk3OQpq
         gp9ROmfIHW/I+hrNH3TPVeDGHsfWuMV1l5KoFRXINrj9OGwXMCSLl9QAJaBuU5YJqufc
         W1+hC2DEFEUuMtxRUuyyt/p3Tm9BFwjBXIjZiU8cP/8wJR2bCZi7WMqZJSKWIS5IVTA5
         cPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730721661; x=1731326461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPuhQI0lOHF+Ad4CcmmMCQ7pBg6SlbMgHJcEZYv6FAA=;
        b=ZwSPKHtl5Pv6I5nSG1I9tvMtl+VsOnQ2s1hqlpQjkaCOlyZaWNNZNk4eH/F/EiMMAH
         2/+8p7+RULsTm0rjrpdnKbGmpsSGOvleayd8OZiCSXjc5ac0VmgU3E6tdls1patG2ew2
         J8aQ2xgOSbwKZvwFA1rEAvESLx/YkO3XhJqcMVRCDctKUCRhNL8zYJUbTpdMaasaGMd2
         wv1FQuCgBWC5vvWkJoSJWRfNrrz3orl49BP/Z/BMoHqxtFawOlES9sINYevYVw0H4d9R
         GL69U+dgm/MkCPuYXnEgAwIDhDYllkXw1eQVepSDWlixGTnqicpA5sCkc8VlCfY9mhbn
         7rrg==
X-Forwarded-Encrypted: i=1; AJvYcCWVQaJFwof+taT3QOXajJ2wHGE4XPnNi0arCK19Y13GdOLptw77XhV7fggRnnpqcih+U5x5ev9jHRoU@vger.kernel.org
X-Gm-Message-State: AOJu0YywZXGeluVK7UXbIBNUuMRCmg6wi33khVlVRo7SxzxDVqt4sKIR
	RnjivDdax0lP7CSXHMTVSMQwnh8Aj6rebiOZhQXzF0KZWirkD1Lvb8BB35i+GpA=
X-Google-Smtp-Source: AGHT+IHGDCvSZ82+pqj20lnV2RkzetR2+um5kEOcAMMqRJf6AmgTdZquemX2q3CajdcCaqZBFT9v5w==
X-Received: by 2002:a05:6512:3d89:b0:539:ee0a:4f8f with SMTP id 2adb3069b0e04-53b7ed18669mr9298570e87.44.1730721661088;
        Mon, 04 Nov 2024 04:01:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc95957sm1671039e87.55.2024.11.04.04.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 04:00:59 -0800 (PST)
Date: Mon, 4 Nov 2024 14:00:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_jesszhan@quicinc.com, 
	mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, tomi.valkeinen@ideasonboard.com, 
	quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de, nfraprado@collabora.com, 
	thierry.reding@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com, sam@ravnborg.org, 
	marex@denx.de, biju.das.jz@bp.renesas.com
Subject: Re: [PATCH v5 04/13] media: uapi: Add
 MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG, JEIDA}
Message-ID: <ixckmdku6yriieo4ezzsepg5nflltzkvqbt7ylref4mu6a4t26@crooexpf3v57>
References: <20241104032806.611890-1-victor.liu@nxp.com>
 <20241104032806.611890-5-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241104032806.611890-5-victor.liu@nxp.com>

On Mon, Nov 04, 2024 at 11:27:57AM +0800, Liu Ying wrote:
> Add two media bus formats that identify 30-bit RGB pixels transmitted
> by a LVDS link with five differential data pairs, serialized into 7
> time slots, using standard SPWG/VESA or JEIDA data mapping.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v5:
> * No change.
> 
> v4:
> * No change.
> 
> v3:
> * New patch.
> 
>  .../media/v4l/subdev-formats.rst              | 156 +++++++++++++++++-
>  include/uapi/linux/media-bus-format.h         |   4 +-
>  2 files changed, 157 insertions(+), 3 deletions(-)

Laurent, Hans, can we please hear your opinion on this patch?

Ideally we'd like to merge it together with the rest of the series
through drm-misc (or via an immutable tag/branch from your side).

> 
> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> index d2a6cd2e1eb2..2a94371448dc 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -2225,7 +2225,7 @@ The following table list existing packed 48bit wide RGB formats.
>      \endgroup
>  
>  On LVDS buses, usually each sample is transferred serialized in seven
> -time slots per pixel clock, on three (18-bit) or four (24-bit)
> +time slots per pixel clock, on three (18-bit) or four (24-bit) or five (30-bit)
>  differential data pairs at the same time. The remaining bits are used
>  for control signals as defined by SPWG/PSWG/VESA or JEIDA standards. The
>  24-bit RGB format serialized in seven time slots on four lanes using
> @@ -2246,11 +2246,12 @@ JEIDA defined bit mapping will be named
>        - Code
>        -
>        -
> -      - :cspan:`3` Data organization
> +      - :cspan:`4` Data organization
>      * -
>        -
>        - Timeslot
>        - Lane
> +      - 4
>        - 3
>        - 2
>        - 1
> @@ -2262,6 +2263,7 @@ JEIDA defined bit mapping will be named
>        - 0
>        -
>        -
> +      -
>        - d
>        - b\ :sub:`1`
>        - g\ :sub:`0`
> @@ -2270,6 +2272,7 @@ JEIDA defined bit mapping will be named
>        - 1
>        -
>        -
> +      -
>        - d
>        - b\ :sub:`0`
>        - r\ :sub:`5`
> @@ -2278,6 +2281,7 @@ JEIDA defined bit mapping will be named
>        - 2
>        -
>        -
> +      -
>        - d
>        - g\ :sub:`5`
>        - r\ :sub:`4`
> @@ -2286,6 +2290,7 @@ JEIDA defined bit mapping will be named
>        - 3
>        -
>        -
> +      -
>        - b\ :sub:`5`
>        - g\ :sub:`4`
>        - r\ :sub:`3`
> @@ -2294,6 +2299,7 @@ JEIDA defined bit mapping will be named
>        - 4
>        -
>        -
> +      -
>        - b\ :sub:`4`
>        - g\ :sub:`3`
>        - r\ :sub:`2`
> @@ -2302,6 +2308,7 @@ JEIDA defined bit mapping will be named
>        - 5
>        -
>        -
> +      -
>        - b\ :sub:`3`
>        - g\ :sub:`2`
>        - r\ :sub:`1`
> @@ -2310,6 +2317,7 @@ JEIDA defined bit mapping will be named
>        - 6
>        -
>        -
> +      -
>        - b\ :sub:`2`
>        - g\ :sub:`1`
>        - r\ :sub:`0`
> @@ -2319,6 +2327,7 @@ JEIDA defined bit mapping will be named
>        - 0x1011
>        - 0
>        -
> +      -
>        - d
>        - d
>        - b\ :sub:`1`
> @@ -2327,6 +2336,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 1
>        -
> +      -
>        - b\ :sub:`7`
>        - d
>        - b\ :sub:`0`
> @@ -2335,6 +2345,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 2
>        -
> +      -
>        - b\ :sub:`6`
>        - d
>        - g\ :sub:`5`
> @@ -2343,6 +2354,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 3
>        -
> +      -
>        - g\ :sub:`7`
>        - b\ :sub:`5`
>        - g\ :sub:`4`
> @@ -2351,6 +2363,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 4
>        -
> +      -
>        - g\ :sub:`6`
>        - b\ :sub:`4`
>        - g\ :sub:`3`
> @@ -2359,6 +2372,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 5
>        -
> +      -
>        - r\ :sub:`7`
>        - b\ :sub:`3`
>        - g\ :sub:`2`
> @@ -2367,6 +2381,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 6
>        -
> +      -
>        - r\ :sub:`6`
>        - b\ :sub:`2`
>        - g\ :sub:`1`
> @@ -2377,6 +2392,7 @@ JEIDA defined bit mapping will be named
>        - 0x1012
>        - 0
>        -
> +      -
>        - d
>        - d
>        - b\ :sub:`3`
> @@ -2385,6 +2401,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 1
>        -
> +      -
>        - b\ :sub:`1`
>        - d
>        - b\ :sub:`2`
> @@ -2393,6 +2410,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 2
>        -
> +      -
>        - b\ :sub:`0`
>        - d
>        - g\ :sub:`7`
> @@ -2401,6 +2419,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 3
>        -
> +      -
>        - g\ :sub:`1`
>        - b\ :sub:`7`
>        - g\ :sub:`6`
> @@ -2409,6 +2428,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 4
>        -
> +      -
>        - g\ :sub:`0`
>        - b\ :sub:`6`
>        - g\ :sub:`5`
> @@ -2417,6 +2437,7 @@ JEIDA defined bit mapping will be named
>        -
>        - 5
>        -
> +      -
>        - r\ :sub:`1`
>        - b\ :sub:`5`
>        - g\ :sub:`4`
> @@ -2425,10 +2446,141 @@ JEIDA defined bit mapping will be named
>        -
>        - 6
>        -
> +      -
> +      - r\ :sub:`0`
> +      - b\ :sub:`4`
> +      - g\ :sub:`3`
> +      - r\ :sub:`2`
> +    * .. _MEDIA-BUS-FMT-RGB101010-1X7X5-SPWG:
> +
> +      - MEDIA_BUS_FMT_RGB101010_1X7X5_SPWG
> +      - 0x1026
> +      - 0
> +      -
> +      - d
> +      - d
> +      - d
> +      - b\ :sub:`1`
> +      - g\ :sub:`0`
> +    * -
> +      -
> +      - 1
> +      -
> +      - b\ :sub:`9`
> +      - b\ :sub:`7`
> +      - d
> +      - b\ :sub:`0`
> +      - r\ :sub:`5`
> +    * -
> +      -
> +      - 2
> +      -
> +      - b\ :sub:`8`
> +      - b\ :sub:`6`
> +      - d
> +      - g\ :sub:`5`
> +      - r\ :sub:`4`
> +    * -
> +      -
> +      - 3
> +      -
> +      - g\ :sub:`9`
> +      - g\ :sub:`7`
> +      - b\ :sub:`5`
> +      - g\ :sub:`4`
> +      - r\ :sub:`3`
> +    * -
> +      -
> +      - 4
> +      -
> +      - g\ :sub:`8`
> +      - g\ :sub:`6`
> +      - b\ :sub:`4`
> +      - g\ :sub:`3`
> +      - r\ :sub:`2`
> +    * -
> +      -
> +      - 5
> +      -
> +      - r\ :sub:`9`
> +      - r\ :sub:`7`
> +      - b\ :sub:`3`
> +      - g\ :sub:`2`
> +      - r\ :sub:`1`
> +    * -
> +      -
> +      - 6
> +      -
> +      - r\ :sub:`8`
> +      - r\ :sub:`6`
> +      - b\ :sub:`2`
> +      - g\ :sub:`1`
>        - r\ :sub:`0`
> +    * .. _MEDIA-BUS-FMT-RGB101010-1X7X5-JEIDA:
> +
> +      - MEDIA_BUS_FMT_RGB101010_1X7X5_JEIDA
> +      - 0x1027
> +      - 0
> +      -
> +      - d
> +      - d
> +      - d
> +      - b\ :sub:`5`
> +      - g\ :sub:`4`
> +    * -
> +      -
> +      - 1
> +      -
> +      - b\ :sub:`1`
> +      - b\ :sub:`3`
> +      - d
>        - b\ :sub:`4`
> +      - r\ :sub:`9`
> +    * -
> +      -
> +      - 2
> +      -
> +      - b\ :sub:`0`
> +      - b\ :sub:`2`
> +      - d
> +      - g\ :sub:`9`
> +      - r\ :sub:`8`
> +    * -
> +      -
> +      - 3
> +      -
> +      - g\ :sub:`1`
>        - g\ :sub:`3`
> +      - b\ :sub:`9`
> +      - g\ :sub:`8`
> +      - r\ :sub:`7`
> +    * -
> +      -
> +      - 4
> +      -
> +      - g\ :sub:`0`
> +      - g\ :sub:`2`
> +      - b\ :sub:`8`
> +      - g\ :sub:`7`
> +      - r\ :sub:`6`
> +    * -
> +      -
> +      - 5
> +      -
> +      - r\ :sub:`1`
> +      - r\ :sub:`3`
> +      - b\ :sub:`7`
> +      - g\ :sub:`6`
> +      - r\ :sub:`5`
> +    * -
> +      -
> +      - 6
> +      -
> +      - r\ :sub:`0`
>        - r\ :sub:`2`
> +      - b\ :sub:`6`
> +      - g\ :sub:`5`
> +      - r\ :sub:`4`
>  
>  .. raw:: latex
>  
> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> index d4c1d991014b..ff62056feed5 100644
> --- a/include/uapi/linux/media-bus-format.h
> +++ b/include/uapi/linux/media-bus-format.h
> @@ -34,7 +34,7 @@
>  
>  #define MEDIA_BUS_FMT_FIXED			0x0001
>  
> -/* RGB - next is	0x1026 */
> +/* RGB - next is	0x1028 */
>  #define MEDIA_BUS_FMT_RGB444_1X12		0x1016
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_BE	0x1001
>  #define MEDIA_BUS_FMT_RGB444_2X8_PADHI_LE	0x1002
> @@ -68,6 +68,8 @@
>  #define MEDIA_BUS_FMT_ARGB8888_1X32		0x100d
>  #define MEDIA_BUS_FMT_RGB888_1X32_PADHI		0x100f
>  #define MEDIA_BUS_FMT_RGB101010_1X30		0x1018
> +#define MEDIA_BUS_FMT_RGB101010_1X7X5_SPWG	0x1026
> +#define MEDIA_BUS_FMT_RGB101010_1X7X5_JEIDA	0x1027
>  #define MEDIA_BUS_FMT_RGB666_1X36_CPADLO	0x1020
>  #define MEDIA_BUS_FMT_RGB888_1X36_CPADLO	0x1021
>  #define MEDIA_BUS_FMT_RGB121212_1X36		0x1019
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

