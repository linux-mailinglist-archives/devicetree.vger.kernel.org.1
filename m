Return-Path: <devicetree+bounces-254044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 452CBD1348E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 74FFA305E9FC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAAA2C11D5;
	Mon, 12 Jan 2026 14:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ia0cDg7Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899072C1586
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768228256; cv=none; b=k7uC+SmXcIUERMoJnCgjpiRz+5q6cf9VnUT+ZbHRMQfedW2FfOXkzi+I9sIuNEAr0DTs7LDA0kLCuD2gQtOLynNNGKb/g9Bml73KzPOFVhbyvoy7nsp7ZOBjUcbHyFMwenT/wvbR1LTc23v6umw8aETY5TZPfF8ty9e4rHiUe5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768228256; c=relaxed/simple;
	bh=2OEcUKaGpeIYQRWkbVsfAA0C3huLBrW5hMqr5LEvhx8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O6bqzT4yOl0FIZ33vg4VLDVr6sT9qY1qGAl+H7pXPPuaOMieegwKLgDsaV7ilAwxhdyVpFeqqr4hAzt8IfyaK07aHu5LT/08RsyuaK0JXhALlj1KE8ZqTrTyOOG1w1cjNDkqXsSuldWmazxNOOvF5gEEuYPjk7NSKegcMLpol+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ia0cDg7Z; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59b78886454so4833697e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768228253; x=1768833053; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hTPyq4qlUQ/a0K+OplfgSv+5dHeytyE/LkETuVbOzE8=;
        b=ia0cDg7ZH7yZE6RLegvqHQcrMPvEuiUmYBbLC54CzgcvIvFezvQDnBTEgMTLH+mfLq
         P2//EiEibJL6Xtuh6mG56MX910baWo2cK3g/mcKykhgxfPSt3Na/JRYxHEdve4HNqpC3
         ldWHSp0+9zX8NgNQrLs8pygHTcpV73iig/fYiybX9m+hZgZrzhD4EZ0oXi7PTgZNGlrS
         0cLoWWjonb3qgTVVbZDKVCKObdtfsiE8S94uK5j9ycPre6CboWnHA7f4fz9WfBBV7cN+
         Lm/T18XwTorGY/qqQYm569FBbPkrHfW2zyIvlMYbXPueDikZeOscun6ZJwuKh0cA4+Q0
         rKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768228253; x=1768833053;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hTPyq4qlUQ/a0K+OplfgSv+5dHeytyE/LkETuVbOzE8=;
        b=Bj40ltvcJdxBw/sVRsiOe56dVafzmvdyyJR4TZ/cXWkJrz479+WhekCgC+WRdSfxll
         8Q0+G9mcQzVzDZHMK9YKikuJqQvXBvn/DW9ZVaD3d+vNSAVVgmqraY3nE11iM9JCAOTX
         H2t9giEs7+EIv/g/587zX+Qli8OSK1PtYcJKKAJHIGgB4l4/tN4VSbHaV76ugVfEN74Z
         IiQFVfQl3V7hoXOUkQ8zkbKwkZrKMZ5EXVZ+TNrd131vGpc7SVGqvDNm+/se4Nx6qgwP
         W69PGS9n4vs24L2Tx/i+75uYIHFDdsirEWhDkBzRCfat+SN9JUPQ/33KXhqQp9tNv9wa
         wN0A==
X-Forwarded-Encrypted: i=1; AJvYcCU/cKrt9m1GeiVfao2KpIqFnsMha/eOX+RTn3CUuFLMP1OgwY9cXNcX3r9cl/XgUehz3V81vNWea0Ni@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu0fZKPMa3z04pvKIAZSr+rG+CMGI1HFa61ydUmiavns220pZY
	kkBB4KEw3kk52fXQ5QGPicFhU0OClm6cnKOk67bP36mccZvscSe7QqSQDscEyDF0E7FCN+5RxMl
	OZbTuaC7TXuQGh7gSqgUDqc9vCY0WHxE=
X-Gm-Gg: AY/fxX65NPsvHslgbHYl9CPPJBPO73aIOnpcY3zB6YxvVWiKH7WhiLQ4OzbwMKwmSeo
	USMlnoA/aUtw3izChThnnYXso1VgJOE8rj8x8TQwRD8mAXJeyF+HerSq8xuLIj9NBGJJlsIlyS7
	QgqlUYHJQg2OTyIL1pIQosupfTn7eo6tyBp14XuxXmwmEE2lpofhWEA2c4RNhaFS0nnemMuh84H
	62tt0TOICXoa881I5+esaRpj+UUPFiIVsn5q414zrbxFLUtUqGZCjC6HFAwchxYr2YqYJfO7C3e
	m8Edp8mBcQnkvluz9X9muw/GpZA=
X-Google-Smtp-Source: AGHT+IGhCigRJCKOH/vexrtNg3kMW3zuAFzjDSpfErMZ4r2e1dNLwyfSgC/4Mcy0Fr3nxXSWcmYmpXz0yuQkJp7TZZ0=
X-Received: by 2002:a05:6512:2304:b0:594:2dbb:723a with SMTP id
 2adb3069b0e04-59b6f036a05mr6764776e87.39.1768228252123; Mon, 12 Jan 2026
 06:30:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112135612.465325-1-daniel.baluta@nxp.com>
In-Reply-To: <20260112135612.465325-1-daniel.baluta@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 12 Jan 2026 11:30:40 -0300
X-Gm-Features: AZwV_QgTFcA7EUgW_TvWfm8Y1HneVz72_jOkyFz9DocTNUhPwAxWA210gbistJM
Message-ID: <CAOMZO5D_YMfsPpqB4zB4iL+ENO1X31Go2CcBdK+JcmsaZ_HNNQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx93-11x11-frdm: Add MQS audio support
To: Daniel Baluta <daniel.baluta@nxp.com>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, kernel@pengutronix.de, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, haidong.zheng@nxp.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 10:53=E2=80=AFAM Daniel Baluta <daniel.baluta@nxp.c=
om> wrote:

> +
> +       sound-mqs {
> +               compatible =3D "fsl,imx6sx-sdb-mqs",
> +                            "fsl,imx-audio-mqs";

Wouldn't it make more sense to use compatible =3D "fsl,imx-audio-mqs" inste=
ad?

