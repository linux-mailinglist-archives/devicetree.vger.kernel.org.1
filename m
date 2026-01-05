Return-Path: <devicetree+bounces-251450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A7CF3004
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 11:35:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2EE330088AD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 10:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60AB314B96;
	Mon,  5 Jan 2026 10:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ad3XCPw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D463128D9
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 10:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767609215; cv=none; b=f5drl31Ivvuor+RrCCJghxf91QoOvTIyQYiyr6Jr/ePorGrKg7f56wqairKr7FQ4sUfjXuA6Cfi0TWwmaG3s56AHpZ2JbTUsIKdqf8/YrsrZEWsrqIyYoC+K3VA8VY9LYuQpH4faWpkoxO8I1c70C693epB97vnq+gLTQpZOOEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767609215; c=relaxed/simple;
	bh=87+FuFMoLYug0z7gqUq5Z8pX0X/7AkUpO+9WJeqmtao=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=akZ/SRkimV1SxyTepeOz5QT/A//dZmcRHKNzGTQbclci5KmdNlQZLJjuf6HtPjVPI4ooMFlO46xgJvbwyMstpGzAx7z9nqUulwpYl1t4SzPxd+5Ucuw9+N+OTIRUs4kqd9DEjpNRnc65mDQ1kY2jAH99H21LwhxoDYAunLVlhuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ad3XCPw+; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42fbc544b09so10833235f8f.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 02:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767609212; x=1768214012; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=87+FuFMoLYug0z7gqUq5Z8pX0X/7AkUpO+9WJeqmtao=;
        b=ad3XCPw+ne5qD9cY8HI5wCXEc698X8SbjrpbI+AjMWfP1ruSKUqzWml/Ez4tSaNdD8
         V70LEpJqcGFh7IsMsCIV/vlaiDb8I9EdIRO019caE7+jOSbdhLgIH0pyyGRmkfNJMzb7
         UVgr3Ow/PssJ/kdGr5dNeUV+CfvKJhz0XS00YSzZyte07iCFFPsuHafe3yh1r4cPCf8j
         iampb/VdV009tiUbJ0oXtxj2wMWYOUbrvEO4/7hpK9gRsGKM/Yn8AGmdvfIKp64RTu6G
         huU0iuEN/x8tIz7WZazZVAhgdUumJ3q/vb8DR8AJJlAZzIxpwjaER2DqtdMgrkfJAtFn
         BELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767609212; x=1768214012;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87+FuFMoLYug0z7gqUq5Z8pX0X/7AkUpO+9WJeqmtao=;
        b=JL5S+6J8ISyBco+9I229MNpEHPcTqVMH6kl2nZcCiI5yCTjN+VBOE732caiXfq/epG
         SvSmf+aQWzfCvfA0kP9j1FNdYyJRybJ3mvf8R4pxbZlijnP2FxgPbdYflhBM52/fZQWi
         UAPhTEZMuusl58HTeMialfkji25d0u1Cyaijajr+CEloF2BATGqIgnap4TVCjtjpAxjC
         XANpes0wC+2BOkqQNWixh4ryhIvYrUem5qmaGq4aZTTw3Ly2DHHTgvi5uld0Eapr5Bwz
         uO5JBtqBVrDOWBnZ2oWzZWLP31IZdQ0RrXp/3i2kcWxeczXduxKZbh8W3gAt3VWKfO96
         TiKA==
X-Forwarded-Encrypted: i=1; AJvYcCWdtA3olY4tCUfEffpat8a7TML8gOTco92UKSBk4r67xK6fhrYPn3glvDzJvhXm8W0aHBycz8eMARwx@vger.kernel.org
X-Gm-Message-State: AOJu0YyQT9kPjFL45eVx7oDhFKoOFcxgrW7CpKAodEuRmhzAQjTHYRjO
	h4u6aOv3CXIoIMy4UPTh3/gcmFZ8QJYj1Ohu9pjVYod0fUwofRvdYgcOn1dzD3+DDwI=
X-Gm-Gg: AY/fxX7o3NsTydHIxPxjpjpmWf8vyV2a+cCc6BA5YyKSFd3WtwT/5pIzdQoE7+yuyll
	nQk5/1HL2ge+z3PBR/mZ1mOvTV75P1Vq1kZlfhBRp+l80DzHuAxbVHklD60N4LaebnK85Qa8qTs
	tD3nieIiJEtOmStGwZgmil7fouWsJmIBpjRpDsSwKKz53oYQBiCff0pGMvzIj3xnYG97zVhvFTS
	EXoTup4PPNoVxJbSNrXqI4fmkJfCDHEt0C22BJmwg/tS84bYaBPnmwRUpXEQKMIdUrxM8/W37MF
	h2aOXNquGMeyg8d2pwFeCn2SQMqCiKb+DaX/cJi61K/MySOFLEOGcC9tEn1B6n+VRqOLVbEifJw
	xVGY4VOddww2lhLU0rVhjCR/o9b3d/JQIpSrV144FbiKKhQds39jjSgg9y4BPpFhQxGSUez7VZN
	OOSeH0
X-Google-Smtp-Source: AGHT+IF5w2X/mECN9ZuV3JAcY3/jRJaPTYNcLs1xlZ4DkVwaHx1/DlQVheIQWCeAyX3a9MMJxgLOAg==
X-Received: by 2002:a05:6000:4202:b0:430:f5ab:dc8e with SMTP id ffacd0b85a97d-4324e4c6338mr65493674f8f.13.1767609211878;
        Mon, 05 Jan 2026 02:33:31 -0800 (PST)
Received: from localhost ([195.52.160.197])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43277b0efefsm67215868f8f.25.2026.01.05.02.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 02:33:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=4e65c143e89b164e7daa8cca0ebf34813a0d86c08fe8a1a41299070c2a1e;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Mon, 05 Jan 2026 11:33:21 +0100
Message-Id: <DFGL60RQ7MV5.Z6I2EWG19UZQ@baylibre.com>
Cc: <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
 <msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
 <s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/5] arm64: dts: ti: k3-am62: Support Main UART
 wakeup
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Kendall Willis" <k-willis@ti.com>, "Nishanth Menon" <nm@ti.com>,
 "Vignesh Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0
References: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
In-Reply-To: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>

--4e65c143e89b164e7daa8cca0ebf34813a0d86c08fe8a1a41299070c2a1e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Dec 31, 2025 at 3:38 AM CET, Kendall Willis wrote:
> This series adds wakeup support for the Main UART in the device tree of
> the TI AM62 family of devices. It defines the specific pins and pinctrl
> states needed to wakeup the system from the Main UART via I/O
> daisy-chaining. The wakeup-source property is configured to describe the
> low power modes the system can wakeup from using the Main UART.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>

Best
Markus

--4e65c143e89b164e7daa8cca0ebf34813a0d86c08fe8a1a41299070c2a1e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaVuTcRsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlN0
cAEAsymWEGyn3zumRS4qBP2frRfRk/M0ptrcMeU2m2GEl3EA/jw/uSKEntBvWLh7
+3vrcNWot2uGtEQlf/nbvxYohiAP
=CCHc
-----END PGP SIGNATURE-----

--4e65c143e89b164e7daa8cca0ebf34813a0d86c08fe8a1a41299070c2a1e--

