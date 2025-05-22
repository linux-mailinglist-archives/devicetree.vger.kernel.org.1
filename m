Return-Path: <devicetree+bounces-179605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0425CAC0EB9
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BB9850194D
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1435B28D8E7;
	Thu, 22 May 2025 14:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="txGIx7Z+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C140F28D839
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925417; cv=none; b=o80rDVwXUZfFcYP4xSiBC6qBOg6NJQ7zLYNYvf2Hw+TmVXFtJMnSqn9SM2jaNz2soKq3AQepdUj/qAuefOwrFU0p0RaxRqfMlUaw3cSDS5lc3i52h6LkvjAQWD9S9E6SxX4of+AOOVRsRuc9N7UT8eZtKKIUTlkepPy2bmE5yNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925417; c=relaxed/simple;
	bh=/EynnhopfbTRqZUx18La6mxqssjQJuoyYP67ASJw3dQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Rb4l1gvPy43nbjGs67QU+Na8jJOmz0iadrAM3isZfaEdqKTSDOxG6dUcmPUmSVCQQ2XzN9KPJ5D1SCzbEzGtNiLwSGi65gUEkV9SW32QGldPgvt90HFFfULSm9SlRpFRvXGZAtkao9PclssedGlQCC6NRPj44dTDtD3EpfY3CkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=txGIx7Z+; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3feb3f54339so8372965b6e.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747925412; x=1748530212; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ejTtGZf7vUHOXsjk+JkTm8wtREmvSS0UiwkyQWSFLcc=;
        b=txGIx7Z+rLEl4yaSJCIv4QuVp1bcTfxFARD9iSFXLS9eOiunHDcgMzW/GlaghVLbDU
         QVzuAzeBf4/IYp8tRbs2qiFULuX1SvuSeaN/pPhapv1CEuKAC1TxRLlsB+IrTp3VS6me
         CvVsn6f/2n9hH7hTTN/IXuslsOA7E8SaDTNqaCq4n3kCYp949msySiiQrhBy5kn12Y4n
         Abc8q+RXnHkdsBp9CKftuSM0iAartj4We/UKg0KB6YDZ0rKjcW2/uFXETBLWtq+UTaU4
         rxPucju1rU8fFkcncEA1QHB7ott+GITIBOSv5xJb+Ag55+WYxx9VYbP6vXKa3UW3j/OD
         S6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747925412; x=1748530212;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ejTtGZf7vUHOXsjk+JkTm8wtREmvSS0UiwkyQWSFLcc=;
        b=fNEM3N+L2aPbIxNC26e4O1jirv0BLE6VpuETwafm4z7Zb4kd32DuRxL2cOF8/bRwtq
         Zi4Ei1T+e7Mps34BCNLDBISwKXyMai+Ig6EnEaFVjWh9vKgkwTvWLYaGYv1M/mkD7sgV
         sIoayuEtGRnw/Vh/nZJrvsLSyFfBCy1a9GKZYzPoWbHpxCp5fgYfDVSKk63SUCM61ErJ
         1/5ziohKU7CZrIkRoQFuMGuSb4ttwoY3VYrRrQZmoqOc8iHAlTdZlmntuC5Pvrv4mVJX
         DgC/Ai8zcI57WNXB6QOpcPo5toV2tKm6/ioH76LxMTxoWVKOZlgmCmibxsdL99ADA4mK
         WnuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpSchBh2Jj2uaYFrh2ByUkw6NXPFAajyj6BUXksPhjgZk80c0mM/yi2WuJyA3Iwt0isXDWdRRk28m0@vger.kernel.org
X-Gm-Message-State: AOJu0YwB9BVj/dl46my9aADrnssn/CRz8ycmW4jjg0RjjRClDLYzdgug
	QHD8QQtk/2UHtIKIMlB6v65fgRMEvJSIpf8cvLGWph45bS87A9vQA7sK+XnaxK8DAKA=
X-Gm-Gg: ASbGncuwZYg03avXzoV+hJhZ5vEN1rqO1GwPDZ9NGWgHp1Dw90JVDZDS0Iqry9lcH7d
	JQj+h5+2kd7hZRo1eEoWvj/XWwoE6uN985nIvn7yl2eklewCF/zhgVHpI/Z/+WHSBaEqGk9ulJd
	PNREQdi7DnqO9ick1Dl3ibojulqD9Mx6h1s74V/QKUShA/30XA/SzC7TwEpWhyNOhz+lxI0LHBd
	mXb4ZvCK/5Lrma5jGL8VBpRHL4WnC6D3gPEyntWAZDXmZgGHxhfl3vwn6LFlfHheQVUOYoWflqO
	qRmQOwyBNtvamUQiq2Eh+1A+7XdwtYfy2FOukRhBZL19aFLLHxU50aqftw==
X-Google-Smtp-Source: AGHT+IH2N+y8pkPgaDi3tRswr18F+2IgYVvh+GwM6qOt21ptYCccNFRGv2rQ7CTXfqsQL6HJMQvEVA==
X-Received: by 2002:a05:6808:83c8:b0:3fe:ab15:5ed6 with SMTP id 5614622812f47-404d86d8c97mr11952177b6e.12.1747925412599;
        Thu, 22 May 2025 07:50:12 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:3407:53d5:68cd:400d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-404e303ffcasm2228234b6e.4.2025.05.22.07.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 07:50:11 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 0/3] pwm: axi-pwmgen: add external clock
Date: Thu, 22 May 2025 09:49:38 -0500
Message-Id: <20250522-pwm-axi-pwmgen-add-external-clock-v2-0-086ea9e6ecf0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAII5L2gC/42NSw6CMBRFt0I69pm2CEFH7sMw6OcBL0JLWoIQw
 t4txAU4ujl3cM7GIgbCyB7ZxgLOFMm7BPKSMdMp1yKQTcwklwUvRAHjZwC10LEtOlDWAi4TBqd
 6ML03b+B5eWu0bSp+1yx5xoANLWfjVSfuKE4+rGdyFsf7s0v+h30WwKE0tsyN4VyY6qnV2pMOe
 DV+YPW+71/0rloz1QAAAA==
X-Change-ID: 20250515-pwm-axi-pwmgen-add-external-clock-0364fbdf809b
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1627; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=/EynnhopfbTRqZUx18La6mxqssjQJuoyYP67ASJw3dQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoLzmFTW/ivzWssbER3tY1m2n9IU5m09Ey/Jm9U
 15+EL45EBuJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaC85hQAKCRDCzCAB/wGP
 wDWzB/9IBW7j3w6siigBYnZVCoMwr8Vz3bO+m0cYpglLO5H4XSWcLfgDygzkOyhHaLVssxO/iQ2
 fODAXNAq84Y6lNtwyJ9FVZFqjlfIJxbfVqRyYB/qXpkNxtouqHYowjCtlExAw1dwp0uQmDR3jid
 ppnfglEgBPbbUb51qPHozIoFCzDnbB1EMS0+3IdkD5Jk6O4gEuzrzXxICX2FulW1p+lXh/MmJTA
 abRwyonqfKbpDclhXnxkpbq6tyqppnSyDqfeFH5VUViEksV2nSxQH5F0fzke/RbfmTsQdhXLfNa
 dcTH2mripYCZb+b5dTY6aT54Sr0l1U2UZwFSBMwXC3u9tRC6
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

When we created the driver for the AXI PWMGEN IP block, we overlooked
the fact that it can optionally be configured to use an external clock
in addition to the AXI bus clock. This is easy to miss in testing
because the bus clock is always on because it is driving other
peripherals as well.

Up to now, users were specifying the external clock if there was one and
the AXI bus clock otherwise. But the proper way to do this is to would
be to always specify the bus clock and only specify the external clock
if the IP block has been configured to use it.

To fix this, we add clock-names to the devicetree bindings and change
clocks to allow 1 or 2 clocks.

---
Changes in v2:
- Consider this a fix rather than a new feature.
- Make clock-names required.
- Simplify the logic in the pwm driver to avoid needing to test if
  clock-names is present in old dtbs that used the broken binding.
- Link to v1: https://lore.kernel.org/r/20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com

---
David Lechner (3):
      dt-bindings: pwm: adi,axi-pwmgen: update documentation link
      dt-bindings: pwm: adi,axi-pwmgen: fix clocks
      pwm: axi-pwmgen: fix missing separate external clock

 .../devicetree/bindings/pwm/adi,axi-pwmgen.yaml    | 16 ++++++++++++---
 drivers/pwm/pwm-axi-pwmgen.c                       | 23 +++++++++++++++++++---
 2 files changed, 33 insertions(+), 6 deletions(-)
---
base-commit: 484803582c77061b470ac64a634f25f89715be3f
change-id: 20250515-pwm-axi-pwmgen-add-external-clock-0364fbdf809b

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


