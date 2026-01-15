Return-Path: <devicetree+bounces-255753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68267D28052
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 267B030BD0CF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FEB12F0C71;
	Thu, 15 Jan 2026 19:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jhYhAwbv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8559221FAC
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504684; cv=none; b=ciAWvjkIG8QJ6b6toobww34r2n9KArrUOAkwrsz6fGEJSySx+mPD8XMFluGOUAQFLcBc6aIsQLUHYUF46VrdrgAeGEVf+StuqCxmFKhQlEj3+BoZWaaAU6voWMgEVajH/kMi58vFGoWStkjcEYQdLAUGi+qjUX17alGQjgTmRmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504684; c=relaxed/simple;
	bh=jS4s4+CeEp3p8wbUjI2uvC+K83JDVMWMsUADgn9dTsE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Gp10HCnlzJe9a2iCWBq5tm5vRwkhhDWUizOUDTOyJzGW4mbSzxSPEJRkxsohT/q1wB4DCqbAy2FK25s7G9u1oPGb93Q5YKIPKI1h6XU2N8kChgl7SSmsQs5sItDwXEoizbUs7d2JAc7knHe/fYSUp8mwxtIZonTAVgnjJXFG1D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jhYhAwbv; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fed090e5fso678890f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504681; x=1769109481; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6awU7mxwuWsmRADvbQlSH8CHRST4+YAD1gEKj5q/Fv8=;
        b=jhYhAwbvns+IZSHKCfQvB0La+dKf6os5aADte0XJ+Fi2GQAxhsnFZpaXafh+tAsQsP
         KqYaS+46rkKaq49Htb1cqKwCBQ2ByRh8HQVE/NZ0TCnajIn06hE+mG7W3V8o5HvldLmg
         x1rB5GAjMFL22c1Xp0A4BTbidD23nAjyJtRoCkURoEhvq/02DW+BmoyxYKuKdYVEN13H
         Ca+SGHeHCXxyIHdRQB/fcQuZ8SYgNiAGV6wqnSie5qfCwcdG6rH3Eb4VYpsL6BAHRoTj
         hS+Ja+LMV7rzxB0WewX2bAVf5AprNSKqiHlyBSnYqWy82NEsSxfp9o53p8oa+cnl9tiJ
         FZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504681; x=1769109481;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6awU7mxwuWsmRADvbQlSH8CHRST4+YAD1gEKj5q/Fv8=;
        b=ZnOF9fCRLOuUkYLlctvvimh8aZNbSLHe9N5geWw8X5b62K3vx9hAnbPkCTI3k4x9Za
         uQuHmz77MOEZEQ/6qNNevBYf2ehg9/WbAwh2p35VRdpguaNwLu8muQ/Dagi5B4hrQoDn
         PiwqYsWGRoaFzI0pYDmaOHgQxPZSR/A+ehHjOi1Ya7lOdWB1nuzY4PvtkQioihuSVifM
         O3h2NaCI+x5ZOBRPsJlPzI/7g21MdNynTEzD6P+ULMFRATUakNT25l2blXY1Lne8rDwX
         Xy0brNukBVUUJM+2IDMQA8B8vdp60r1UmUOnso963P172Ili90pk39io/jubAR52rMmc
         ZsmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrdGeXX5zCpDFR0xcnj8mcHUXeZT3/nSRGaWsoYjmfJ7BCvzkIC2sLs5nPH2O0gFUxdOuKNLF87MW/@vger.kernel.org
X-Gm-Message-State: AOJu0YwOl66f+E4EpRG9OzSPNUWjL7IQziDfCBX/qRCSdU6ulk4+o/GF
	NIqWDq3fx1Nf/ClN7EzgSRtJvV2LVn2q7085bhKUGvyKd5aWgNijhikc
X-Gm-Gg: AY/fxX5xc9GXxwKws2ZSxhaMhZysYMe8VW3N76C9Nby4VDbS0yzD1+DrKgBHJRUu7gP
	gaPHP2QDmjZD8fzPPJYtT5Z1oNRwmrHtxCjX6EorfC/q2gElQAV6i4V32UJn7U4g8slGAccb1DF
	j5vLrVqQw2qsIKox4OJxDeSy8tTnoqqXDJ8T+fo6VI/wvIKjRXHqGkGkwoITvc53pH35HBrtscW
	gyphXMRyETjU5XWeyx67awQVUnkao3H6wtOzsVPS5Fk7xXZ3LaB5RuyAf6XtRbh/Fh5nf95ETYt
	ValStEtiVz2SDv7RoDhHbZoq7mnIbEN8Zy8l78DtabsN0ns/nHIJgmKeRxPdTvgUC20pIaNvVS7
	pTmEgFGMAOPDnvVUcVHul1WjF+JsjBPCuNTvIknbHkBhH99sn1Ymkr9jFmgYyG7ItWJq1Sc2YIX
	2QL8iohLbOsLHJITeBPsNJFM6MyvD8mSPs0lxfrBJEBvRQ
X-Received: by 2002:a5d:64e6:0:b0:431:307:2200 with SMTP id ffacd0b85a97d-43569979c5dmr533542f8f.9.1768504680718;
        Thu, 15 Jan 2026 11:18:00 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:00 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH 0/8] ASoC: sophgo: add CV1800 AIAO mux and I2S support
Date: Thu, 15 Jan 2026 23:17:37 +0400
Message-Id: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFE9aWkC/x3MMQqAMAxA0atIZgNN1SpeRRy0jZpFJYUiFO9uc
 XzD/xkiq3CEscqgnCTKdRZQXYE/lnNnlFAM1lhniDr0iQZjVhQbMagkVmw36ofGBfadgxLeyps
 8/3Sa3/cDpTyugmQAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=3006;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=jS4s4+CeEp3p8wbUjI2uvC+K83JDVMWMsUADgn9dTsE=;
 b=KoUoMJjnND33ukztFTj5DwgkDIFIQgsCTyq59umMHCLOC7ss9JO8beohsaIR97SJgVvS0ET3o
 I/MuwDTqc1pCTNweLsYrs6LgSKQwHGsgTIgoam1u2NAaRavYctncy8V
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

This patch series adds basic audio support for Sophgo CV1800B, 
as used on boards such as the Milk-V Duo. 
The series introduces an AIAO audio mux driver, 
an I2S controller driver, corresponding DT bindings, 
and DTS updates to wire the components together.

The implementation is based on vendor documentation 
and testing on real hardware.  This series relies on 
recent fixes in the DesignWare AXI DMA support; 
in particular, correct operation depends on 
the DMA changes discussed at:
https://lore.kernel.org/all/20251214224601.598358-1-inochiama@gmail.com/ 
The current driver implementation supports a fixed audio configuration 
of 48 kHz sample rate.  The series has been tested on the 
Milk-V Duo 256M board using the Sophgo SG2002 SoC. 
The implementation is expected to also work on Milk-V Duo and Milk-V Module 
boards based on the SG2000 SoC, as the audio 
and DMA blocks are closely related.

Known hardware limitation:
On CV1800B / SG2002, the I2S2 output pins cannot be enabled via pinctrl alone.
Due to SoC design constraints, the output path becomes functional only after 
additional vendor-specific register programming. 
This series makes the limitation explicit and does not attempt to work around 
it implicitly via pinctrl or undocumented behavior.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
Anton D. Stavinskii (8):
      dt-bindings: sound: sophgo: add CV1800B I2S/TDM controller binding
      ASoC: sophgo: add CV1800B I2S/TDM controller driver
      dt-bindings: sound: sophgo: add CV1800B internal ADC codec
      ASoC: sophgo: add CV1800B internal ADC codec driver
      dt-bindings: sound: sophgo: add CV1800B internal DAC codec
      ASoC: sophgo: add CV1800B internal DAC codec driver
      riscv: dts: sophgo: dts nodes for i2s tdm modules
      riscv: dts: sophgo: add Milk-V Duo 256M board dts

 .../bindings/sound/sophgo,cv1800b-i2s.yaml         |  75 +++
 .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   |  43 ++
 .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   |  43 ++
 arch/riscv/boot/dts/sophgo/Makefile                |   1 +
 arch/riscv/boot/dts/sophgo/cv180x-dmamux.h         |  57 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi             |  49 ++
 .../boot/dts/sophgo/sg2002-milkv-duo-256m.dts      | 231 +++++++
 sound/soc/Kconfig                                  |   1 +
 sound/soc/Makefile                                 |   1 +
 sound/soc/sophgo/Kconfig                           |  41 ++
 sound/soc/sophgo/Makefile                          |   5 +
 sound/soc/sophgo/cv1800b-sound-adc.c               | 322 ++++++++++
 sound/soc/sophgo/cv1800b-sound-dac.c               | 204 ++++++
 sound/soc/sophgo/cv1800b-tdm.c                     | 714 +++++++++++++++++++++
 14 files changed, 1787 insertions(+)
---
base-commit: 7a52965b6976c936f413eebeee3f78c6faf09012
change-id: 20260115-cv1800b-i2s-driver-4f17836dec56

Best regards,
-- 
Anton D. Stavinskii <stavinsky@gmail.com>


