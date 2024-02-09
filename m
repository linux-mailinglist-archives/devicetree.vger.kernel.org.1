Return-Path: <devicetree+bounces-40116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4882D84F4CF
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B4D41C2143D
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388D82E651;
	Fri,  9 Feb 2024 11:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eHQxB1F4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BA02E644
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707479127; cv=none; b=MeHFAYmQaz/Otp5cavrDcgM2+C+xq2WyeNiy0cRrC3H/kEBKvCoqvMsSsl0EH0cVdPPQFcB9Bm+d63FNS2R4y05JTiSFJWHZcerdRGO9GoP/7HNIO/KFZhGOQcKAbKS1STeRdutoHEJW2aYY15y9S6i0d/xYoinJrC5h2MVhVsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707479127; c=relaxed/simple;
	bh=kpUX+5Fp0emM5GhamAYigk31OhEZhOSBXFWlaXEM8mA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D7y8oc4slq3epTsa/SF8RNNYGjOv0iuXo4UgJZoPOGB7hf6ApW/YTt4UP2gl+HWQtx9QsvwReQ4JU0jChC45ZJ6frUrBrG+KtWnQZ7Oq79l4jzG4NlCZ80O2UwZAVX7Sgh+tvCyC03i0Loglk2xPqKUv90HfhNx7kfKgpvtbQcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHQxB1F4; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d066b532f0so12146271fa.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 03:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707479124; x=1708083924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ed61mmNefo4NF61Anc4jK9I9WqvYzH3tKYcqREzO6Y=;
        b=eHQxB1F43TNTaSP4krW01y6PEjompRuBENauKzW48ChAaTmtK0KkS/hxVMxXihHbWd
         tmbAj6HYf4fVRurCbd1y3zYHFsUOKEv2XBU9tAEzes1a+7aAn+8T1IL2S1AzSm3A5Z9x
         KnA3C/TjemR/7Z8cZ5rod54um39+b7TA+1o81UCIVCe4Ha7Xr9xk86nm/3IMzueVToac
         hcAOquDhVRCGA5xGrH8EOsN7CJk3ev5dRNKyBw+cgjl240X7dj/tl9jKNiBHo1iSXjsx
         FPk7Pm5N0IrgSoq3D8F2NU09wHBWMroC6RIx3ZVGic04sGYIOHd6zA6Kc3eNEs+0Tvg9
         Excw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707479124; x=1708083924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ed61mmNefo4NF61Anc4jK9I9WqvYzH3tKYcqREzO6Y=;
        b=hgpcmqNz+WtpnE7Iq3cMIcWmgKSPi80n4RTl8MTkWpoHCvtyTMozGdsbknlnVfuvLU
         KlIEuUwcLll4581jKmWGmtaMATyM9a3ZUYGPk7y8ZOmTuXJ7RuMYC7Mf+8XPazscM6nk
         1MlC+HUyFEVcR8a0ZZ4spOqPWoxii6hTM9g1sGeVTQDXu0VvonMyU0a6V1UoFHoiR2vm
         c+MR8BMr98cUmdDnnHwnPC09UN/3WU62JqXYY+6VB16pE4Y25pScvwoOk54UWynWazd0
         gjrGYJ2GejBJytON/QP9PnK8JC9bByYSHtUwtaxd8QMNio051S+m+fqqfysxSUu7xtaD
         8pJQ==
X-Gm-Message-State: AOJu0Ywq9wRaGVW4m3PtIJIeMryygJ4MDDhtSAU5UdumtTSW5wU0e6/T
	0YOzg9L2UxKE2H4pWJaojBHdZgZ4GV3uDp9XManxM0gUJPPqB/I7
X-Google-Smtp-Source: AGHT+IHPuiI9yUhj38xnAq24ekaAemX5dHuo9kRydZ/nMn329vwW8svhY3XBIzPKSYXM85Su+qSddg==
X-Received: by 2002:a2e:b018:0:b0:2d0:cd59:f142 with SMTP id y24-20020a2eb018000000b002d0cd59f142mr1230330ljk.40.1707479123460;
        Fri, 09 Feb 2024 03:45:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCURXIpYNJeqV2VUSdTl7HppEggOsY6x/7JIOWfxm7yqQP5oG01RbjWKXp/GdE6OHYIwbMjEQEgjMTNG8MHy5kYWStkAe07ad+9MbENFlXqtOWhW3o3t1aO3K97PeUa2bqRb6RiRGP6V8IpEAo7elzIQ9lKeZGWxBZB42kFiEbkQIdxLFdLkHuNoBi8IhCkJb8IbbmGNoMGDEnfn3cSDjdiTGaWnASzyt0FOYrXl1efSvbHr7gk0ldUMBxTEJ+NRqvcE/2udhkLiqUJzDdf+Rkw6O367Ve6DajyIpOqoas+MSu1KcfLHNA==
Received: from jernej-laptop.localnet (APN-123-244-98-gprs.simobil.net. [46.123.244.98])
        by smtp.gmail.com with ESMTPSA id d17-20020a2e3611000000b002d07aa888d3sm225057lja.23.2024.02.09.03.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 03:45:23 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH v2 3/3] arm64: dts: allwinner: Add Jide Remix Mini PC support
Date: Fri, 09 Feb 2024 12:45:20 +0100
Message-ID: <5752892.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20240209114018.3580370-4-andre.przywara@arm.com>
References:
 <20240209114018.3580370-1-andre.przywara@arm.com>
 <20240209114018.3580370-4-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:40:18 CET je Andre Przywara napisal(a):
> The Remix Mini PC is a "mini computer" using the Allwinner H64 SoC,
> which appears to be just a relabelled A64. It was launched in 2015 by
> the now defunct company Jide, and shipped with a desktop optimised
> version of Android. It features
> 	- Allwinner H64 Soc (4 * Arm Cortex-A53 cores)
> 	- 1 or 2 GB DRAM
> 	- 8 or 16 GB eMMC flash
> 	- 100 MBit Ethernet port (using an X-Powers AC200 PHY)
> 	- RTL8723BS WiFi & Bluetooth chip
> 	- HDMI port
> 	- two USB 2.0 ports
> 	- 3.5mm AV port
> 	- microSD card slot
> 
> The devicetree covers most peripherals, though there is no agreed
> binding for the PHY chip yet, so this is left out.
> The eMMC did not work with the MMC DDR speed mode, so this mode property
> is omitted.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



