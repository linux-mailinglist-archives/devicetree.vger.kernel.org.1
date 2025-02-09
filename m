Return-Path: <devicetree+bounces-144396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C18A2DEEB
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 16:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECE387A2B6E
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 15:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1E21DF738;
	Sun,  9 Feb 2025 15:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EyLswG9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51501DED7B
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 15:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739116189; cv=none; b=a+S+lTZHt5cVaX1quq4sradjlq2PrI9Q6r4aM+ThLQ2fI3O74QNZJ/8dCTrksg6rLvgBEGB5zj3h1xGYBpvVDUDs4adhb4zCumrw8sjmIxgjHkhFJ42D92wm7jEtimWhzkY2VmQQTP4g2WlPaSyzZ3caBwizfnZYJ8YGrhLFbP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739116189; c=relaxed/simple;
	bh=PssKll4JEoMlKe6UK2jH07Ppq8XsuPzXadX333xk3Wo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eaZhMQpnqylPRFQ5sK7n8R75wP/COauhVQGzq+f7E0vYWhuy1Ga08kYIz7alO6B9Z9yACPU1w/163RF0QWB3YfaVhmHLIv0ZBLhpzUBEU/ZIomXgcS+xRRfBTSUPUETB0hGG9x8Fep+14YCcw1CTxp8Zf5JXU2Hwm9F0ENgVkew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EyLswG9E; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2b86cf023b9so211114fac.3
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 07:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739116187; x=1739720987; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PssKll4JEoMlKe6UK2jH07Ppq8XsuPzXadX333xk3Wo=;
        b=EyLswG9ECPSybcFpP5kUZAT1OkFxu2o5T0Fu5MxLo2Sy+9xt/x9THrta5stRmbD1ku
         2ywmF4ufU3IK/GvddaZJYE9K4cimFUH9dDw1/mu+/WFnkhZap6PlL6X8F34JkmqDFeJi
         5dRXBWxlSNrmvJol7a7hQtM5scnltTvZqp3HJGn1CKY97tUBV6b3xUt4vhMOgwgLxOtC
         naEoYKNXl0gPbUOi5aFWUrqqs7QIi+hiPFmv2P007o4neGKlyE0VnctKUyCNtHj7YPXP
         1KCZUzmYpdsztiD3EUPuA06UZ6d4YwGsAcc/I/h6CW7jM2YL9NY2PUXC5/cc0YbqvSJH
         OHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739116187; x=1739720987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PssKll4JEoMlKe6UK2jH07Ppq8XsuPzXadX333xk3Wo=;
        b=BFEm/G37oi3ckoA2d6SACqQgjVvrVW1FexMfbPLQqCjAoveSZJdMpuYJmcVgTCEvIy
         NnEUUHVvidG3Zp9fVeGA7DYYoaKq+YziZ8iIION4+L5yJtfBNIZSE49FSVmigGX2xWmk
         S3REhyz+QgTOcWYql+e3jKB+udksH5fpXAwysBo578vDyOBpttKKdzDIC9zclS9SNWHx
         wBiNhpxv/JVRNLMXbjFo1UJf4u2ptLsxzRM+08KutcpbnflUo1B5wG7XCOFLUghjUETi
         h0rsDSJftJc5+UebpSu/oAUKio5FlIEMX4MXHU3NV2cZTCOFv1XqG//Ef2VoSiMLVkTG
         4Png==
X-Forwarded-Encrypted: i=1; AJvYcCXxvB6DYd843g2+xevJDpe9A5thMI+d8iexhCbV543kbqTFi1zn1EWJ3AULZFgU4YjIMZVcwTvrCNL8@vger.kernel.org
X-Gm-Message-State: AOJu0YxiT55pHbfmudRSKobu3cCKqzzRU0S0fgdaQjycIYzy7vGzcaOT
	Zqlk0AnIloK1hht+s7QFdLAT2GfbfbSqcxnSW7yRmwvpU7/d3tffcnAfdYvtCGitSZex58aDG6U
	RSYfdB2XeM6um1TpKCWkVgZr/+Hr2mIznylHP3A==
X-Gm-Gg: ASbGnctUp2u1IJgRlxizrcydgwlZZNv3jKYfceT3MQjtabMpGi4QYku7SGfbP2mjxCz
	aP1TFMIsuxzTPaHtuVco9xCT5NjsdN6j9XcK6+s07muxi1mMZ+i2qAbsX01YJyTy4Ii9lU0Et
X-Google-Smtp-Source: AGHT+IEJx4GAJCZ1ff4k2hzF9hSjRKWNrgbRsTFnQrR3DUT9d8D8jCv4lfl/PeBdwYbUEL9kQpD9Eg5C5R06EpPRzxc=
X-Received: by 2002:a05:6870:c0b:b0:29e:3132:5897 with SMTP id
 586e51a60fabf-2b83eba9bf7mr6061588fac.5.1739116186662; Sun, 09 Feb 2025
 07:49:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org> <20250206-gs101-renppt-dts-v1-3-cdfe993fb3c5@linaro.org>
In-Reply-To: <20250206-gs101-renppt-dts-v1-3-cdfe993fb3c5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 9 Feb 2025 15:49:35 +0000
X-Gm-Features: AWEUYZlsv4LiCm_NFbOvnGh5QJf88D0c8PjjEovMiCg0gV1Nlhp4jo0ANNrcy54
Message-ID: <CADrjBPrO4o0X45roprKvRsdQ3wRKvRMsk_Ry8z9j6FmzPatG=A@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: exynos: gs101: add reboot-mode support (SYSIP_DAT0)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Feb 2025 at 13:08, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> syscon-reboot-mode can be used to indicate the reboot mode for the
> bootloader.
>
> While not sufficient for all boot modes, the boot loader does use
> SYSIP_DAT0 (PMU + 0x0810) to determine some of the actions it should
> take. This change helps it deciding what to do in those cases.
>
> For complete support, we'll also have to write the boot mode to an
> NVMEM storage location, but we have no upstream driver for that yet.
> Nevertheless, this patch is a step towards full support for the boot
> mode.
>
> Note1: Android also uses 'shutdown,thermal' and
> shutdown,thermal,battery', but that can not be described in DT as ','
> is used to denote vendor prefixes. I've left them out from here for
> that reason.
>
> Note2: downstream / bootloader recognizes one more mode: 'dm-verity
> device corrupted' with value 0x50, but we can not describe that in DT
> using a property name due to the space, so it's been left out from here
> as well. This string appears to come from drivers/md/dm-verity-target.c
> and should probably be changed there in a follow-up patch, so that it
> can be used in reboot-mode nodes like this one here.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

