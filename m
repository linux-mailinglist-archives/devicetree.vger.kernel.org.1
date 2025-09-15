Return-Path: <devicetree+bounces-217540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB86FB581FC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:28:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80AAD1B2034D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E847427E7EE;
	Mon, 15 Sep 2025 16:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pnEPvriz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F2F27A103
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953677; cv=none; b=d0a9aQCKGC3ZrjCO8+GoKuxKt3Gk0lQstNrCtCpYxtAHcHUTGpz0H4IEfNwC8yEUCQtF3Cl0TG4n0coXL9C0cXryVpOw02BBtkLuzZcz5lUCR2kmkvfhVLvv4wEpZtGX/yWwy2a6hximcLDDVZv8salPoYmivvx2qoIv7ooNbsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953677; c=relaxed/simple;
	bh=torY5xMUo4LN94wUWLyAhtzuLlDNv0MYikDw667vb4E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=azshO2OLLbLJq6L78kgroT2TuhsAvFwIUTOqynpFllGLIsR8WAa7AgHeQ3OxCedm6qB1eShdEoLSL8zxIiA45WOwVlsRIu7wvNHjFzLLNBwCvXedUH1/ZYq575KMxBZz4wJO5XBGhIhOShsjoKsIICbqfBsBX0us/VVws4Cg+vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pnEPvriz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3e98c5adbbeso784615f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757953672; x=1758558472; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHFK7O65CewSPoX3Okkz46bC6c54kw+kmL2r4/dkraU=;
        b=pnEPvrizYNdf/vX442UCf6QFjO95hga7F5HSKgkULLZ78ShuQww3oGCYqrS1iSLrJR
         RIS4M4fe76wzg4cfiYDOMeZYj+suPpfS/bRnQFdBsbMRxgnYWKhPiYMN4jOq31VLNA4/
         ISlm69RFFmequtL3phdeAhcP3VdDE209hHbN9VYSN5QNM12NuYZ+zE0D/18vwyRcax2f
         jM5hxiR1u1bVtMXs/qfEdgM1Lx3y5Im2V1lriosIeiUGOa9m0ew/PlIQZoa4LOfftVHz
         H6t5tr6YHLKMvoM5EJOXswehqMTK7nZUs4DqrmfJMsCVPKUYkyjB8HtLXWpjVUi+jK6k
         CnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757953672; x=1758558472;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tHFK7O65CewSPoX3Okkz46bC6c54kw+kmL2r4/dkraU=;
        b=ZUSfcGw+t1qg0+9PsNuNhp0IpqH9VypsQ6Tr9/Y84RXhHC7L8jSYWvxbug4fJs9kwY
         KSJtGDaZbEUgIZO0j2dnjUDgRG4YOE16SE24n3B34JdtstsvRupFhSnfIxlMfd0kXEuj
         yzVP4p95gcHCSUPqv79FzOGECYCuUoi63BafkaJ+oJKQEF1udfNQ01wJh4tq4lsmiRYZ
         9etdu6jgEnxIiV3AdhSjGaQhD0xabx1b/KvVra9eOBjJy+Qxq1sU81ePRriYXmf6MprJ
         2coPgm0s4/YZAICos4ZomUB0ki0qtyRZVPcHmqfG/3QARbMp/tarB/zPheMS9ivAWz+4
         eNqg==
X-Forwarded-Encrypted: i=1; AJvYcCWSm0KEPpt8I2at1Qsip9dAZEGOtrYCsdygeEmbI6U57JPnXrBo1TvuWycrwFL4c4u+DHb3RTI/mzuW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5rkvLen3RYzkqsR8QkIBotTu6BYHiyE9LYc1ha3raK+9KYMzH
	N/DM3IEKtEYHGVmm8uslYpZQhyA+18MkyLIpJ7K/WGysmk29F2Jtj1U1LqoJeVGJHpI=
X-Gm-Gg: ASbGncstx8Br9ByE/OKkgdVV6CA2uSvPVrRJCcxxt4BoRkCsGH2q0be3alPwuBn5Iv4
	sJJ8hsU5gZVjJmRYSFZWr9kLCOSNcVtG0BN54xUSvXdmJIQ8/afuMtnagK9YQ7+aBOZYjek3tFY
	uz9T9uCsyVhBvdo1emWiBkzYWre6d6I5AWHsEIBU6DcYAEGr+U/sd5zaL+mzCW3Tg0KPFDEAP7L
	IS5NIlJMevXOLoAJm2EqoBR+W0AcUYsMsjI7Y1A3vEQqRn9klHpuf0ZrsGpvM8J7R2YXIaSjKbs
	fpkAWLwJSJ4fSHjAtXBbd/wELumyjSD9zP4aOkRSX11gv1v2yMt2y+C5JU1ghdliAicR74gzYGM
	HpblE00hWdHl9DNenxkeDrhB+C89UtYqRdYv4CIc=
X-Google-Smtp-Source: AGHT+IFIgbJvl+U2ulWaxygfZURQajrFEYZyz5PQlox9ZbDyYQ1ytTxMR9RKVwsGjDB9UpVhupgTJg==
X-Received: by 2002:a05:6000:24c2:b0:3e7:6104:35a8 with SMTP id ffacd0b85a97d-3e7659c4153mr10410604f8f.35.1757953672357;
        Mon, 15 Sep 2025 09:27:52 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:e60f:4b6c:1734:808b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9a066366fsm7857989f8f.44.2025.09.15.09.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 09:27:51 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH v4 0/4] Add PM4125 audio codec driver
Date: Mon, 15 Sep 2025 17:27:47 +0100
Message-Id: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIM+yGgC/4XNwQqCQBDG8VeJPWfszuhqnXqPCBl3J10oV9aSQ
 nz3Vi8SER3/H8xvRtFzcNyLw2YUgQfXO9/GSLcbYRpqa06cjS1AQiY16KS7pQqykh7W+dJ4y6Y
 cVCLBUE4opbVGxNsu8MU9F/d0jt24/u7Da3kzqHn9J85owhnsEU0Ke5LHq2sp+J0PtZjJAVYmV
 +oXA5FRyPpSYKbznL4YXJlCpb8YjAwq0kyyQl1UH8w0TW9pjkE7SQEAAA==
X-Change-ID: 20250626-pm4125_audio_codec_v1-02ca7a300ddc
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, 
 christophe.jaillet@wanadoo.fr, Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

PMICs like PM4125 have in-built audio codec IC. The series here
adds support for this codec driver: DT bindings and codec driver
itself that consists mainly of two parts: soundwire devices and
codec part itself.

This audio codec can be found on platforms like QCM2290 and
on Qualcomm QRB2210 RB1 board.

We are working on this together with Srini
(srinivas.kandagatla@oss.qualcomm.com or srini@kernel.org).

This driver also has a bit limited support for concurrent playback,
since line out path is connected to left input channel.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Changes in v4:
- clean SDW ports/channels as suggested by Srini;
- Srini implemented refcounting for global mbias (we didn't manage to make it proper DAPM widget);
- patch for qcom,spmi-pmic.yaml moved to separate commit
and "contains" is removed there;
- rx_clk_cnt removed;
- HPH{R,L}_COMP kcontrols fixed;
- removed unneeded kcontrols (LO Switch, DMIC Switches, MBHC Switch);
- removed "RDAC3", NULL, "RX1";
- pass dev pointer to pm4125_get_micb_vout_ctl_val();
- Link to v3: https://lore.kernel.org/r/20250814-pm4125_audio_codec_v1-v3-0-31a6ea0b368b@linaro.org

Changes in v3:
-- added qcom,pm4125-codec compatible to qcom,spmi-pmic.yaml
   as suggested by Krzysztof;
-- added braces around if-else branch in pm4125_probe, removed coma in
   pm4125_slave_id[] as suggested by Christophe Jaillet;
-- slightly re-ordered header files in pm4125.c;
-- reworked how driver deals with regulators after Christophe Jaillet
   noted that it is broken, devm_regulator_bulk_get_enable() is used,
   it looks like there is no need for regulator_bulk_{disable,free};
-- PDM watchdog irqs are moved to separate (new) widgets
   as suggested by Srini, therefore audio routing and events for
   HPH{L,R},LO and ERA PGAs are changed;
-- extended pr_err() msg in pm4125_get_micb_vout_ctl_val();
-- small styling code adjustment in pm4125_get_compander();
-- added/reworked pm4125_bind() to add error paths
   as suggested by Christophe Jaillet;
-- removed of_node_put() in pm4125_add_slave_components() after Krzysztof
   pointed out that of_node_put() is out of place, it looks like
   of_parse_phandle() gets the node and component_release_of() will
   do of_node_put() on dev release so no need for of_node_put();
-- Link to v2: https://lore.kernel.org/r/20250711-pm4125_audio_codec_v1-v2-0-13e6f835677a@linaro.org

Changes in v2:

-- added rxclk dapm widget, fixed/changed RX1/RX2 widgets;
-- added comment for pm4125_wd_handle_irq();
-- registers access permission routines have been reworked;
-- changed pm4125_sdw_* functions to static inline;
-- cleaned a bit pm4125_{rx,tx}_sdw_channels;
-- got rid of most of hardcoded magic numbers (for the remaining regs+values I don't have documentation);
-- updated commit messages;
-- pm4125_tx_sdw_ports has been updated;
-- removed of_match_ptr() and OF ifdef;
-- removed couple of pm_runtime_mark_last_busy() calls;
-- removed swap_gnd_mic;
-- removed __pm4125_codec_enable_micbias_pullup();
-- reordered sequence of calls in pm4125_probe() to make it a bit more logical;
-- removed excessive regulator_bulk_free() and in error path in _probe();
-- re-aligned for 100-chars length;
-- removed of_node_get(), replaced with of_node_put();
-- corrected some dev_err() messages;
-- corrected some comments;
-- removed legacy "WCD" from stream_name, replaced with "PM4125";
-- removed null callbacks from struct wcd_mbhc_cb;
-- removed "HPH Type" and "HPH{L,R} Impedance";
-- pm4125_codec_enable_micbias() has been updated;
-- pm4125_micbias_control() and pm4125_codec_enable_adc have been implemented;
-- pm4125_codec_enable_dmic() has been updated;
-- cleaned struct pm4125_priv;
-- some rework to pm4125_handle_post_irq() and pm4125_regmap_irq_chip;
-- updated Kconfig+Makefile (to make things be in sorting order);
-- new patch: adding new files to MAINTAINERS file;

For dt bindings:
-- I think all requested comments from Krzysztof were implemented;
-- squashed qcom,spmi-pmic change into previous patch to avoid warnings on dtbs check;

Not done:
-- Mark suggested to look at reimplementing this as a child mfd device from
MFD PMIC without device tree description.

- Link to v1: https://lore.kernel.org/r/20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org

---
Alexey Klimov (4):
      dt-bindings: sound: add bindings for pm4125 audio codec
      dt-bindings: mfd: qcom,spmi-pmic: add qcom,pm4125-codec compatible
      ASoC: codecs: add new pm4125 audio codec driver
      MAINTAINERS: add Qualcomm PM4125 audio codec to drivers list

 .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |    6 +
 .../bindings/sound/qcom,pm4125-codec.yaml          |  134 ++
 .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |   79 +
 MAINTAINERS                                        |    2 +
 sound/soc/codecs/Kconfig                           |   18 +
 sound/soc/codecs/Makefile                          |    8 +
 sound/soc/codecs/pm4125-sdw.c                      |  545 ++++++
 sound/soc/codecs/pm4125.c                          | 1780 ++++++++++++++++++++
 sound/soc/codecs/pm4125.h                          |  307 ++++
 9 files changed, 2879 insertions(+)
---
base-commit: 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
change-id: 20250626-pm4125_audio_codec_v1-02ca7a300ddc

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


