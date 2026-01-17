Return-Path: <devicetree+bounces-256406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCC6D390D7
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 21:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0E2B300519F
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 20:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E732E62B7;
	Sat, 17 Jan 2026 20:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mLE1NvFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C92244667
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 20:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768681167; cv=none; b=WcZvy0dJ7iL4QftmKfyoT7gMmi/kcCu4oqeDRChWUOM007llgDHYTi4pdHdVA6X/uaNXfY2tL20EBC8AK+Dr5G48B+L+7uRCGTfa/lEhHqb+h2w2kTfCRNJjGILz7V2hCuWkAcMfB7FaHEv/RTLzHn9Kvmms41TmoyG1kEuCSKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768681167; c=relaxed/simple;
	bh=RuCJDqbjt4/1OjYPNQx7uliq1cjVd/YITyDYhrLPVMg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IJuVqadpvUXPBTE2dp9pXfnPswFEB3iJjCyzlbDelX+H/pIiNG4uT+svRyNaVZhX9smtkW8IvY1HKpgb9Daj9HYdOK0vSA1luk62806qO7+Z/mUxqFXdaCOT0DjmwdHtUkDoLctQ0wxjUruzRdKtm9ANIHUQIGS4i1SfcyMIPog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mLE1NvFk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so19665145e9.1
        for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 12:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768681164; x=1769285964; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XuMp3/hIeMrlP0ISwR7NIwGJWIBA2lBFXolUkLdtvk0=;
        b=mLE1NvFkQUv3eDkINtBFs6Tw+LcQWLsnjrilo3lxDyKwu2Z6CxuD78TUHFAoZdkw92
         mWAqiza68JAWItWcAfvWGhxGrtaO152OzY0dsoOk1cSKz/VLCsGterb2BUC5GOkEXsU7
         QZc0uJ8tFobX3jqZUEY8lXQ75BrJ6YwOs2q6eoYHyvKWNMgSUND+Mulyi1wc6Dh+m11d
         0XMxr8Cd/qHJ6CofI8bmB9MHbmoAR7Ru2NdBouJR8WG/t7i7IsXUNvWN4+LmLIzVWjXp
         1YsfxVdN7ym0SlWHicCgciCQ+44Hgaw+9k4a80L1Q0ot9swle4cdxEueH4iUQ+qolSZf
         skFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768681164; x=1769285964;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuMp3/hIeMrlP0ISwR7NIwGJWIBA2lBFXolUkLdtvk0=;
        b=hJ1/j9QMfCnOTkhJRUdj2oYYT0GmucHjl4AaEkf64a0sy80grETtzb/WUNHzGJcQ37
         P5WYnEZKgw7v5tfB3tp5zUb8W7DeCRet1po71rW0/JqANrm5S25BXy3A20/GO4Rwrk0+
         zqcNViwFrpwSErS9htQoaAqKAeuTfKEELG2G2LPN8xL2JvGqmNhEa0L1ODnm41M2eGjm
         DTiESbbP+Xg80FjA9MxKCPmEE4yzPm/IaZ+A2fFCMOBNiQ+yPv+HVG4E4s2JlOx7CfDw
         RGBsOpjfwkBXskriFY/7TXmqm+QULrWOZVUE2l0bqRX5usN1Ek/jgUytoxmUr0Wcz/2y
         KWJw==
X-Forwarded-Encrypted: i=1; AJvYcCWMzBgFhXxyDv5bxBLe6b/Cd20fhCFNRMR45DHZhEYSQGkHf/5kcMKwlOhobGomudKHAv55o0/j9MYx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/vCn+rEN+BqGaDorkIkqsvAm89TQZywSkN18O72CSTznYedZt
	Vh/CIe4ls+LlzCod2bdZBxv1L/GNn+S81ohBRPjsP6AmLVRNAFpi0IJo
X-Gm-Gg: AY/fxX4+pj4MZN9B3fYuHkVBztNqHhgv7WtMb9Q5DwbivwritcxLIoNo5R0/xrKUnZw
	RXxqmZI2dwPg5sRknOhchMaMLfcbli/y2izrDLMSduQy15cHkn10Gd3ejWwQiGKusQ6PoEs7w7e
	YA0UoIFeMrFsfHilt3A8/blEt5lq7UlqYarLozygOx0BghSnonSXPEhM5W+vJ/wNQ3+nHI6y07k
	D4wyBGfd87iT+fHwKbeuh8HU5fAjtgb9RbnRWvSSomaDbI5xOpEkpW+LHfuUKuAq/NxQO36O3xQ
	65QoJwqFrhsTFHd42u7W3l/zQyBoAfmpytIgD9drv6Y7WRgstmgtBo62klN0xdxEn5w0NPYjOdJ
	GjGCYSYhjAIa5RsbU+9qNBc5G/VTAcfEW6uTjcu8zZgczPy122i9eHkpHY2waR478YMu05pbLtt
	Nh3A19r5/115qzNMU1/ERF9jl7jsvbBRLNqVE4CeTMI26x
X-Received: by 2002:a05:600c:6612:b0:47e:dddc:3369 with SMTP id 5b1f17b1804b1-4801e3530b7mr88935485e9.35.1768681163751;
        Sat, 17 Jan 2026 12:19:23 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879542sm112402295e9.4.2026.01.17.12.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jan 2026 12:19:23 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH v2 0/7] ASoC: sophgo: add CV1800 I2S controllers support
Date: Sun, 18 Jan 2026 00:18:52 +0400
Message-Id: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKzua2kC/32NTQ6CMBBGr0Jm7Zi2SmlceQ/Doj8DTCKUtKbRE
 O5u5QAu30u+922QKTFluDUbJCqcOS4V1KkBP9llJORQGZRQWkjZoi/SCOGQVcaQuFDC6yA7c9G
 BfKuhDtdEA7+P6KOvPHF+xfQ5Por82b+5IlEgGaeUM21nrLuPs+Xn2ccZ+n3fvw8+qGa0AAAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768681160; l=3154;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=RuCJDqbjt4/1OjYPNQx7uliq1cjVd/YITyDYhrLPVMg=;
 b=1sf6uqdI6XFVuR4O9E1Fi/GEDfhDfMyI4KYTNmqVXwV9EUQcZwt+LnKRH31/TxkYLA+qjYA1p
 9fVzB584N/fAAsluT+aHjZKfHFVVdKwhjHXHDQuufchXrgVWf62VfYx
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

This patch series adds basic audio support for Sophgo CV1800B,
as used on boards such as the Milk-V Duo.
The series introduces the I2S controller driver,
the DAC and ADC codec drivers, corresponding DT bindings,
and DTS updates to wire the components together.

The implementation is based on vendor documentation
and testing on real hardware.  This series relies on
recent fixes in the DesignWare AXI DMA support;
in particular, correct operation depends on
the DMA changes discussed at:
https://lore.kernel.org/all/20251214224601.598358-1-inochiama@gmail.com/
The current driver implementation supports a fixed audio configuration
of 48 kHz sample rate and only I2S protocol which is used in codecs.
The series has been tested on the Milk-V Duo 256M board using
the Sophgo SG2002 SoC. The implementation is expected to also work on
Milk-V Duo and Milk-V Module boards based on the SG2000 SoC,
as the audio and DMA blocks are closely related.

Known hardware limitation:
On CV1800B / SG2002, the I2S2 output pins cannot be enabled via pinctrl alone.
Due to SoC design constraints, the output path becomes functional only after
additional vendor-specific register programming.
This series makes the limitation explicit and does not attempt to work around
it implicitly via pinctrl or undocumented behavior.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
Changes in v2:
- Updated cover letter.
- codec nodes moved to cv1800x.dtsi with status=disabled
- the commit with dts example for 256M board was removed
- added details in commit messages

- Link to v1: https://lore.kernel.org/r/20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com

---
Anton D. Stavinskii (7):
      dt-bindings: sound: sophgo: add CV1800B I2S/TDM controller binding
      ASoC: sophgo: add CV1800B I2S/TDM controller driver
      dt-bindings: sound: sophgo: add CV1800B internal ADC codec
      ASoC: sophgo: add CV1800B internal ADC codec driver
      dt-bindings: sound: sophgo: add CV1800B internal DAC codec
      ASoC: sophgo: add CV1800B internal DAC codec driver
      riscv: dts: sophgo: dts nodes for i2s tdm modules

 .../bindings/sound/sophgo,cv1800b-i2s.yaml         |  75 +++
 .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   |  43 ++
 .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   |  43 ++
 arch/riscv/boot/dts/sophgo/cv180x-dmamux.h         |  57 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi             |  63 ++
 sound/soc/Kconfig                                  |   1 +
 sound/soc/Makefile                                 |   1 +
 sound/soc/sophgo/Kconfig                           |  41 ++
 sound/soc/sophgo/Makefile                          |   5 +
 sound/soc/sophgo/cv1800b-sound-adc.c               | 322 ++++++++++
 sound/soc/sophgo/cv1800b-sound-dac.c               | 204 ++++++
 sound/soc/sophgo/cv1800b-tdm.c                     | 714 +++++++++++++++++++++
 12 files changed, 1569 insertions(+)
---
base-commit: 7a52965b6976c936f413eebeee3f78c6faf09012
change-id: 20260115-cv1800b-i2s-driver-4f17836dec56

Best regards,
-- 
Anton D. Stavinskii <stavinsky@gmail.com>


