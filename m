Return-Path: <devicetree+bounces-239827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 110BFC69C39
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 3CE5F2C03E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FA8361DDF;
	Tue, 18 Nov 2025 13:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jvpzAyTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709AE2D641C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474186; cv=none; b=GVGgw5P38CuPRhUL2Tlat9Coixr9sOyP3J5XHb5Y6Zu2ZsBtBPuOGYhVuBEIoyaIKAjSsTT8Wkx5iLWMlzcXh89ing/SVeWagNOLm8b3E6VtXUKpNFS8cj3H0IAz6GsKmBlJ6yZaoYmn9Xs/eMC976P8hVjwY2McZ50WQrQv5/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474186; c=relaxed/simple;
	bh=Kr8mEMg8GUIR0ES8nTKUQqU7gngQ/9e8fD/J6xaVWA8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AyNwRxnGEDWVdvxm+Usdub8yNMdeJXhQJf+QqVKSMMtQFDp2An62p3i7ImCGL+42N7vcrun7ERNkrQKbYXtJYWqSKvRGSbSYSwSfe0kEx9EG7BYsy0zijrC+1/Rtjqi21XMEw7yjk4uxc9VbhQG8ScbaVs4lrTKtJqZzAA0AIVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jvpzAyTd; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so3879027f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474178; x=1764078978; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gGA59MK9dVZM5lN1BpwAauPGxOjSxQZOCE1Zm+eAl04=;
        b=jvpzAyTd8T8WORvEM4lohCAEj/0LLVuT2FZE4DK3gHtfS6MzO5WtImMRCmGfyM45yH
         Hj0v5vKQ4IvOjkvO/2R279hwWj96ZUdIC5Tpjti/577pWQ/7W7wReG5QJV/Ir3FnYQvR
         oyzSiTxFY7M1r6tIhI+ryelwF+tf7ypVDBw15Gjkpo+7Qvm/taSX9mk5lAmL7l27j690
         +gZv/vTtGaoSjRMfiU/J3b6X1CFD+vlVW5avVaUPe2nrP87Nh5xzKMu5zMA009opyHpa
         7xkfFD/BgJOfuzdzGLjLTrJS8mPZLIbeBV+U4YiYuhnr5/r4BMWpeeWhCWLZ2I9amzVD
         QsEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474178; x=1764078978;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGA59MK9dVZM5lN1BpwAauPGxOjSxQZOCE1Zm+eAl04=;
        b=sddmWmBadPSDeKN10nvmttIE2wIglmT6NHuV/Ae3diMIj912AuZ+Gp17y7DBLtcwMh
         CuvYYHJN751Up6P8Vy06bQjgvvnbrbKzRWtsnKCMGYL/1a8gBt1/V2bpq+Z57yKUoqBn
         ARu5FsCj2FMJAxibKHrf84G85Wgx3eNn7HZFtNytXcmrWDy1FUdiFucHB1kn2kOcGaJX
         5GwBxhPe64KoHS/t/mXyz3l01ggWwnaxN1nqxfrh4LEECROmU/og0VyAP4z/PTpLtmPw
         Uosx1T3pGRQYuO8lPgXnIbyJqSPQh+PS5zVszJ8pKTnd5CSJrGeqrbBqXVE+Z0h6W1h9
         f9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWE0ugDVUHrFhzraV2LZwWKN2wET7sQOlCCL5k7zkuYAIBZxdq99gVrMZ6i/zDHWGCRTeT+tY9awSn+@vger.kernel.org
X-Gm-Message-State: AOJu0YyTIi55zAmnKE9pfVeDyFVgflT9X9W+dXH73EvpTYpIUtNOOl9W
	ftoZyt3slDH/QbXJeXsHgyVyOSWX9eqQFLNXb/odpUC6Nj4wl9h/naZhtRCmWBLS9Vg=
X-Gm-Gg: ASbGncu0P18pFLJPIKFmZyPFWjmMn2/392jYnZfIP4Os76LK6vlW7W8Xz04u+6x8kQy
	XejzUxVJ7E7cjwIUT1Mgg6mnczOIc6/mgVGGhVA8kg2gzCfnc7/VwMBl5W4R26PjTG5rStInf/h
	4P5k7xqCr56KePDMudvqEWyvOyNHR3uIabhB3zeY567QiEXTzdqc1L2sMs6LcrTHUNg/WdfRpX/
	q1WirVyHEzPQBWfj0IPrX9jq2qdfR96nk97q53X/s9GAf1hY32ZeEGn9qfeZZnAAE3CB8baPej8
	QcsTYUaHGgkNv6JXQHNzgOeTojERb8aMp61vZEFWX+6ShBsuPM3LSva8afm9jP1f41E6fcKrGsZ
	KZf9k2zhEyKp9H5+2bt+bNfj3hz4WNuIcsG/Tt9AbZdN3N9a14xNpdsTRAQQq5vbmx/T/jG8JQm
	sNVmRgGoMnnBvOLJqN2gYLBleCLT1IqEHcKkrZrB/eULagvU7rDySNt3totaziYg8RFyA=
X-Google-Smtp-Source: AGHT+IGZgxXdUzTGsmQijkdGDIfr7wMhee9CfrwEzDd8qB6n/m1q35GD6+YFJI552JcqQZiyv9YzDA==
X-Received: by 2002:a05:6000:186d:b0:429:d3c9:b8af with SMTP id ffacd0b85a97d-42ca8cd0d7bmr3671679f8f.25.1763474178264;
        Tue, 18 Nov 2025 05:56:18 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:17 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 0/7] soc: samsung: exynos-chipid: add gs101 support
Date: Tue, 18 Nov 2025 13:56:07 +0000
Message-Id: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPd6HGkC/3XMywrCMBCF4Vcps3YkEy8Nrvoe0kVsbgOSlESCU
 vLuxu5d/gfOt0GxmW2B27BBtpULp9hDHgZYgo7eIpveIIW8kDgR+kKCcAm8skFn1NlopZ2WDvp
 lzdbxe+fuc+/A5ZXyZ9cr/dY/UCUUaEZlSIzXhyQxPTnqnI4pe5hba1+rSZ+4qQAAAA==
X-Change-ID: 20251031-gs101-chipid-fd84da8afa2f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=2844;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=Kr8mEMg8GUIR0ES8nTKUQqU7gngQ/9e8fD/J6xaVWA8=;
 b=LVRWlNp4X7IcullcpPaadgDLyqzRT2qebSKjsvSfkZjCX4eK3g7QnnM3DOTUjINKB9zjC3vfk
 wNdkuEWFaYFAUAUWVq3uOk+QcZszuFH+ip5x5/d7jyRSJQU4A9nA01Z
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Dependency
==========
Typical dependency of the DT patch depending on the bindings patch,
thus the bindings patch could go via the Samsung SoC tree with
Srinivas's ack.

Description
===========
GS101 is different (but also e850 and autov9 I assume) from the SoCs
that are currently handled by the exynos-chipid driver because the
chip ID info is part of the OTP registers. GS101 OTP has a clock, an
interrupt line, a register space (that contains product and chip ID,
TMU data, ASV, etc) and a 32Kbit memory space that can be
read/program/locked with specific commands. On GS101 the "ChipID block"
is just an abstraction, it's not a physical device. When the power-on
sequence progresses, the OTP chipid values are loaded to the OTP
registers.

Add the GS101 chip ID support. The support is intentionally added in the
exynos-chipid driver, and not in a dedicated Exynos OTP driver, because
we estimate that there will not be any OTP consumers in the kernel other
than the chip ID/SoC interface. The downstream GS101 drivers confirm
this supposition.

Testing
=======
root@google-gs:~# cat /sys/devices/soc0/family
Samsung Exynos
root@google-gs:~# cat /sys/devices/soc0/machine
Oriole
root@google-gs:~# cat /sys/devices/soc0/revision
11
root@google-gs:~# cat /sys/devices/soc0/soc_id
GS101

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v2:
- complete rework, treat it as a new patch set please.
- bindings were reviewed at:
  - Link: https://lore.kernel.org/linux-samsung-soc/27a5521cd7ddbed0e870ac416dc829722f1b36a5.camel@linaro.org/T/#me139353334db535806ca6462ae1e86b01ff032a7
  - addressed Andre's s/if of/is of
- part of the cleaning patches are from this trivial series:
  - Link: https://lore.kernel.org/linux-samsung-soc/20251112-chipid-trivial-v1-0-ec2dea03bd83@linaro.org/
- Link to v1: https://lore.kernel.org/r/20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org

---
Tudor Ambarus (7):
      dt-bindings: nvmem: add google,gs101-otp
      soc: samsung: exynos-chipid: add google,gs101-otp support
      soc: samsung: exynos-chipid: use devm action to unregister soc device
      soc: samsung: exynos-chipid: use dev_err_probe where appropiate
      soc: samsung: exynos-chipid: rename method
      soc: samsung: exynos-chipid: downgrade dev_info to dev_dbg for soc info
      arm64: dts: exynos: gs101: add OTP node

 .../bindings/nvmem/google,gs101-otp.yaml           |  56 ++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |   7 +
 drivers/soc/samsung/exynos-chipid.c                | 148 +++++++++++++++------
 3 files changed, 168 insertions(+), 43 deletions(-)
---
base-commit: 4b67e4c65c1e0740ac12bd0d790eb5a9d0091aaa
change-id: 20251031-gs101-chipid-fd84da8afa2f

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


