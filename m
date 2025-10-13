Return-Path: <devicetree+bounces-225989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CC1BD2BAC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32D57188AF18
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEB6E26980E;
	Mon, 13 Oct 2025 11:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RDQRbt3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6492040AB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353744; cv=none; b=LY4tsxgtEjYEgc//sXBHICmUKlrJfZrFIclUTCvFRVNWVgEbGDmvZj9TagH4aWMWZtCcoakwmYL4YUj1lehvtBXUH+halRLys4ukWt/sL7ONclJsjE+yvlSkznPyyd02ZajaEUBLKFMfSoXdgPNiV1eC4dbv4hl4trfW40qTZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353744; c=relaxed/simple;
	bh=JBjcoD6p4V3FBJzZf3IkyyOyuKRE3/OmLmnidKruPC0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NonZWahwQkGN3ahPm1pYohY4/5b9rVzp8B2+0bNSAX0zkKgLydPsHOi+tWM0XFPIaIZG/G8TWj+GHpmO7yby96o0dLAiLmRVwVZ4zUaa2ICraUqkBhLlgenIY6ksalo9rmTrwHTCBwHBIjZjO82imzSoq8ZyfqFLPkOpOOJ30bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RDQRbt3M; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-71d71bcac45so41627617b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760353742; x=1760958542; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KZ0p4RGMaKkdg82zu0ufNV13vLNgFLb6uCYyjivzVoc=;
        b=RDQRbt3MGnpugXnjKCN3EOOg8+qImF7lC+O+0tFZxvkUWyQdE5SrtKSC8lT4KdmjAl
         eGTJn4zVtP1TS4fLTWq3E3wil+Qro5Y4On0D9t/PZ0Sgj3eaw5gVALif+fz6/EeBfnLU
         RaqOo9CqxAEqAQtj/gIdeyr2zMS2k/1Rn3dlzVj2idUhz6uHlN9nRAX7RVnVY+VbXqRx
         4H1a7mgai4coyIvcQ1yujFIInHC9EN2NCjLRCDOS1tk2ufboi0B/hCvgrOORar19mugW
         YpVAanTyoINpthqQTI5X3vtZAQrWj3fYdZxNWAP8gB9V67WEjSpu5TxvO1x20jkKH11z
         Rvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760353742; x=1760958542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZ0p4RGMaKkdg82zu0ufNV13vLNgFLb6uCYyjivzVoc=;
        b=N6WsvzTMutixjU7Hew5fijYb9Fok0QBDuOm58vE2jjoWjIOqVTIR1Q7DZalOaoDVbt
         F49Mgh+Zy1bXRFAO9jB0B5zA8NYSCDjNoCGDDXXdte5PHWZ0HkWgBC3fhPwZbyZ6ODDx
         xFQHRo9YvvPoEwaeWpYVTtaS8j3B6ui34yv8hY85HMyyENK3HureVuxEEOazaoIp21eC
         FYl1Dx5oon0L5xzrIh23ttLodJF1RDpceKd7dW7wAfkKiTZxt8xDvJDf1FroUMvxS6KZ
         TrHRDyo45DcRagm9CnZBWT/THt3Oiapo8YeJIfIkXZyJhmioQv1FGQGZDIpSQ7QHLoyt
         MRew==
X-Forwarded-Encrypted: i=1; AJvYcCXm4jnehHEYKYJsX2/RS1b/88kchdcq1mR3Gb6fLL9/kelM2EJ6qwRRSrb9K6mjrrU7lBUXSufUd+6m@vger.kernel.org
X-Gm-Message-State: AOJu0YxPx8MR53+1PuF8qIoIAWb6F2v+/yZfDvJX3M4yhVrMX1HbFeqH
	GUTJZ5n0nG2xxwC3nKU6zngoa5zpmuy4VqNE3GmBbejF1MvgH0TvS+WCozODolLkUp9Ba2Hk3KE
	Z2S4o1jJOuwOU/RUbUH5edC0K1Prxv2jG0Nr0mbra8A==
X-Gm-Gg: ASbGnctw+soDfm0j/qz43uEm82ZrfSlXCBbfkNkEE0mxgZzVJJfcaB5Pu7QoQqUa98+
	MhxNx7B6IFJAsoJY4jfgj2FgzNCAsL4EE1VYQnVmWQ2wvBnF+JBGs3IcA0Qc+FcudLY3P10a6nS
	i0ZZvrQBqL9fRVI3TO7c+7zpE/92XqjprmdaKoUmUZrVcI7blZN8mzEtDW5Q9gcQ4+dotcP2yRu
	W0keVwYTlIb+YR7ftIh1U3dPvTeo2Vj/kd+TLBGTg==
X-Google-Smtp-Source: AGHT+IHrxYQ9lAwrAdQaAqwn1O+JAjRD1WZ/bFkPUNTQEmfnnv60+IjtPt4OC2P/C+wu47H7hgloLf7dCT2IP6oTbGM=
X-Received: by 2002:a53:5009:0:b0:636:2420:d3ce with SMTP id
 956f58d0204a3-63ccb93456dmr13963269d50.51.1760353741929; Mon, 13 Oct 2025
 04:09:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917063233.1270-1-svarbanov@suse.de>
In-Reply-To: <20250917063233.1270-1-svarbanov@suse.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 13 Oct 2025 13:08:26 +0200
X-Gm-Features: AS18NWDL9Q6dk2HPqdUsVDURwgZHNk0vQNVjiF3dETSyBPsHFLwf7APcaD_mqAU
Message-ID: <CAPDyKFpus05RAkYAoG7zjyvgAJiuXwRt3=z-JB5Kb7mo0AK4vw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add watchdog support for bcm2712
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-pm@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Lee Jones <lee@kernel.org>, 
	Willow Cunningham <willow.e.cunningham@gmail.com>, Stefan Wahren <wahrenst@gmx.net>, 
	Saenz Julienne <nsaenz@kernel.org>, Andrea della Porta <andrea.porta@suse.com>, 
	Phil Elwell <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sept 2025 at 08:33, Stanimir Varbanov <svarbanov@suse.de> wrote:
>
> Hello,
>
> The following patch-set aims to:
>
>  * allow probe of bcm2835-wdt watchdog driver for bcm2712.
>  * prepare bcm2835-power driver for enabling of v3d for bcm2712.
>
>  - patch 1/4 is preparing bcm2835-power driver to be able to
> control GRAFX_V3D pm-domain. This is a prerequisite for the follow-up
> patch-set which will add a v3d DT node for bcm2712 (RPi5).
>
>  - patches 2/4 and 3/4 are adding bcm2712-pm compatible in MFD driver
> and update the dt-bindings accordingly.
>
>  - patch 4/4 is adding a watchdog DT node for bcm2712.
>
> Comments are welcome!

This looks good to me!

Kind regards
Uffe

>
> regards,
> ~Stan
>
> Stanimir Varbanov (4):
>   pmdomain: bcm: bcm2835-power: Prepare to support BCM2712
>   dt-bindings: soc: bcm: Add bcm2712 compatible
>   mfd: bcm2835-pm: Add support for BCM2712
>   arm64: dts: broadcom: bcm2712: Add watchdog DT node
>
>  .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 28 +++++++++++++++----
>  arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |  9 ++++++
>  drivers/mfd/bcm2835-pm.c                      |  1 +
>  drivers/pmdomain/bcm/bcm2835-power.c          | 17 ++++++++---
>  4 files changed, 46 insertions(+), 9 deletions(-)
>
> --
> 2.47.0
>

