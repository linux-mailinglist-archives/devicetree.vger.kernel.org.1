Return-Path: <devicetree+bounces-257568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJpRKg7lb2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-257568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:26:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7B84B447
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:26:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 06A6FAA18F6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A9A46AEC5;
	Tue, 20 Jan 2026 19:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="agjJnO6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB1346AEF3
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935974; cv=none; b=sMh/re1gUiQByOmlmvTPRYD9VtIxqjbt4xCu9NHqRhmr+o48J5ecTepjVu70w+AaLWGfL5l5S9jmyh71MUOjvFvSXYoXJo8UH8bdZshKsPX0PGX2aOJKroDH1+hqwMv1rIUmhucPEpxqQBB1QMu1ocPTvwtNegJTZ6PKEJsmoSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935974; c=relaxed/simple;
	bh=/i53vqMAIdZNSQKjWuPjGV+34T+Veokykl4U0XdsoqE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sX0nrGDBDAHtMmtQe2K8HQ/LyIE4j69fRA/AJwVNHHgFZyEGys4c+myVM7Rlt+ET8Au+IX4n0ekvDUVRLkicQDZ+bWhTFVVA48ydsHcpPf4ZY1ChhpYYRqwznrz1w12cMmjs05yS9v76Uvuqxb0yMZiLGTcltMqx3fIrf7tAlMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=agjJnO6A; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47edffe5540so49697205e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768935970; x=1769540770; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ef5XZssjPJck2vo2ZHF3UBv8KXbka0JYdX8WDR+tf8=;
        b=agjJnO6AiQ283QSuwOgwsqkfSEkjCdIkMLE9frJn8XS2iCoKTjJcRUMguXba/XQ11V
         bLj1O+3S0z6uhiCyZ+IC+xG3MoNXGGAJrq+KJY5vPi4ppdUurF6BFiK8kQC5KXZ5FWgV
         q01B3Z8BeCoEH1BqmCdo+gGM2M0u5Cl1N/0fLMZ137tJvrOdMn5MISbe7q6xv2QzLoVo
         y2crGoDskg6E4Do50SxMQUy2X31alSHDBkooD+UwO60dlBPvGGm5zMWotEihmvED7qTH
         DKVTImZe49tBEi7SCWz+7CoA5sy3yfNLXd4wn/qq47LtCUNDb/XT9WT328p4ZkVEFwMQ
         +g7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768935970; x=1769540770;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Ef5XZssjPJck2vo2ZHF3UBv8KXbka0JYdX8WDR+tf8=;
        b=ai8j1Q5YvYl0l57jxiwM17IoK0Ig6HfUvTKuGgWIc6Rwavk84xdmM5MRQu0EZyNBLz
         diS5oI3Yh+amifmaperELudFnCazOKpUsAyPCbx8bqlG8WYlHwIgB/tJbFH5mUy1HzWE
         h+CP+iN129ZK8Kt8AJaBVktghD+VWTn1tEoZIuVS3eqyIzAZAFYQHQLgCQgPU4n/fGbv
         E4ZKOalzj5cEHkLeUaM7JQkLDF7/dNt3Ce40+yQWwAMJQ1HiCuIe6ybb6SMSXigOBBgo
         GsiPuwyUrtUd+DGPYf6ftkEVb6MyKmeVZPmrkY9CE/TjNXNtgZtbR7Y058jFrYo86wAL
         oFcA==
X-Forwarded-Encrypted: i=1; AJvYcCUjdOWbA0QtsC0Kl9I18dJ5196Cav5kdiW+AebNHiPZL8bU+noVasIaQi8LbfHJqtRnhtqALNZgLjrk@vger.kernel.org
X-Gm-Message-State: AOJu0YyfP0wDG/Cik2dJKs6sqoiL1c88bfAVVjaIYPw03PnU6SDmNqRa
	VKkm2Cgr13dsFUA2H2KKKVfsuXu+UDAzQdBFgnq8cgT6JTLcqKGrWfTu
X-Gm-Gg: AY/fxX4BLBp2QFQU9pS5F8U5b0kz/e5sr1vO6sHpBqsQ9Gv8/doM0DWua7phQ5OCLlh
	uHUUMMcBw0MeHkJGAVzhaBVAlg57nduHwS3Sd4KYNGAB4kV8mjJIc3ZGBwtmspHuIp2v36daJDW
	BXPkqCb+P3H0dtm5E5zMZxpijUu3WHbtLO0Jqq1fu2CiRm9bYGppNN4GEWFmrc/npYLBj2ll5W3
	Bo7ezs526G5eF4daSxhHY/Q2Jzyo8r93jnrIukhlSonwpTxLat8GJqaoj51tVYgZdH5BvpWBIn1
	K/+YWm3eMuh2N8+kdBm/3n/MpaSciEZcIcMOuMoU/1Tcq/YTPQoJylGBrE/mTvyxIw9/0J3jtyg
	EUzZzgUKgNaVRIg5XacT6S3z6ihcrNJkdv1uYDflofIvjGsJW7HDf1GqkLofLcMAdppH8Vl1wfN
	YE6OPfgZE7khpvZxEt1nHvdrET/tLe0TZJmzPGHjqaNKS+
X-Received: by 2002:a05:600c:3b90:b0:477:7991:5d1e with SMTP id 5b1f17b1804b1-4803e7f184amr42521595e9.25.1768935969900;
        Tue, 20 Jan 2026 11:06:09 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804244c6cesm2005735e9.0.2026.01.20.11.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:06:09 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH v4 0/6] ASoC: sophgo: add CV1800 I2S controllers support
Date: Tue, 20 Jan 2026 23:06:02 +0400
Message-Id: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABvSb2kC/33OwQ6CMAyA4VchOzvTDjamJ9/DeGBsgyYiZjOLh
 vDuDk7EEI9/k37txKIL5CI7FxMLLlGk8ZGjOhSs7ZtH5zjZ3EyAUIAoeZtQAxhOInIbKLnAK4+
 1LpV1rVQsLz6D8/Re0estd0/xNYbPeiPhMv3LJeTAnTZCGC1r3ZhLNzR0P7bjwBYuiS2hdwmRC
 YsAUnqVX9O/RLklTrtEmQmoAJSvENHWW2Ke5y/oNJfUOgEAAA==
X-Change-ID: 20260115-cv1800b-i2s-driver-4f17836dec56
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768935966; l=3943;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=/i53vqMAIdZNSQKjWuPjGV+34T+Veokykl4U0XdsoqE=;
 b=ujF7DVpfDFcIqiJ+hFjkIaX7+EUYOaYF0ozWAVYPkNGd1jyRyVhNuGdrz0jshI7mm1Kg9d0Qb
 sJKZFL2jBg6DCRGo2djEfdHrar5RiLYCQUyiZ/fUOmy3va0Uf+jz6cn
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257568-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 5E7B84B447
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
On CV1800B / SG2002, the I2S2 output pins cannot be enabled via 
pinctrl alone.  Due to SoC design constraints, the output path becomes 
functional only after additional vendor-specific register programming.
This series makes the limitation explicit and does not attempt 
to work around it implicitly via pinctrl or undocumented behavior.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
Changes in v4:
- fix issues with i2s bindings
- rename commit for codecs bindings
- make single bindings file for both adc and dac 
- Link to v3: https://lore.kernel.org/r/20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com

Changes in v3:
- Kconfig: add SPDX.
- sound/soc/sophgo/cv1800b-tdm.c: add const to cv1800b_i2s_dai_template
- sound/soc/sophgo/cv1800b-tdm.c: drop unneeded debug message 
- sophgo,cv1800b-i2s.yaml: removed address-cells
- sophgo,cv1800b-i2s.yaml: reword for commit message and header
- sophgo,cv1800b-i2s.yaml: fixed dma-names node
- sophgo,cv1800b-i2s.yaml: clocks min-items fixed 
- codecs bindings: squash
- codecs bindings: unevaluatedProperties: false, dropped redundant
  description 
- fixed build error revealed by test_bot 
- cv180x.dtsi: removed address-cells in i2s nodes
- Link to v2: https://lore.kernel.org/r/20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com

Changes in v2:
- Updated cover letter.
- codec nodes moved to cv1800x.dtsi with status=disabled
- the commit with dts example for 256M board was removed
- added details in commit messages

- Link to v1: https://lore.kernel.org/r/20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com

---
Anton D. Stavinskii (6):
      ASoC: dt-bindings: sophgo,cv1800b: add I2S/TDM controller
      ASoC: sophgo: add CV1800B I2S/TDM controller driver
      ASoC: dt-bindings: sophgo,cv1800b: add ADC/DAC codec
      ASoC: sophgo: add CV1800B internal ADC codec driver
      ASoC: sophgo: add CV1800B internal DAC codec driver
      riscv: dts: sophgo: dts nodes for i2s tdm modules

 .../bindings/sound/sophgo,cv1800b-codecs.yaml      |  46 ++
 .../bindings/sound/sophgo,cv1800b-i2s.yaml         |  67 ++
 arch/riscv/boot/dts/sophgo/cv180x-dmamux.h         |  57 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi             |  55 ++
 sound/soc/Kconfig                                  |   1 +
 sound/soc/Makefile                                 |   1 +
 sound/soc/sophgo/Kconfig                           |  46 ++
 sound/soc/sophgo/Makefile                          |   5 +
 sound/soc/sophgo/cv1800b-sound-adc.c               | 322 +++++++++
 sound/soc/sophgo/cv1800b-sound-dac.c               | 204 ++++++
 sound/soc/sophgo/cv1800b-tdm.c                     | 716 +++++++++++++++++++++
 11 files changed, 1520 insertions(+)
---
base-commit: 7a52965b6976c936f413eebeee3f78c6faf09012
change-id: 20260115-cv1800b-i2s-driver-4f17836dec56

Best regards,
-- 
Anton D. Stavinskii <stavinsky@gmail.com>


