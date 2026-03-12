Return-Path: <devicetree+bounces-274683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNlmFrrgsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:50:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC84A274DE5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36A91300DCC9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1A63B4EB7;
	Thu, 12 Mar 2026 15:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MhOXyCHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE217397E90
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330615; cv=none; b=s9k3Vay7ZPoIQKhV09x9FkhepwWPvCrhrO40zcZA/0CUVyqTBFDbDQfDS5CodFS24EUnYoOs/sryQjRIjqOx9gZBOFfUW8Qhayo4ThfnY/XLQ2Z2q65va7o2sp9D6Tsh+MCbHNSJNZU4U3JrWYWZ+eRi06Gqha0xIseSjdgMCsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330615; c=relaxed/simple;
	bh=6jsNMOL+D8KolGRI7DunLwHkPvgs8sfX18pRqxzELco=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V8rDzIbWhmlh+r+axlqyiktjNDq8Lt7uGCKMcb9xBxP0NsmZ0xO5+Qd4m4WwkOxSO+qmxM0hQNIKIqczRjJooSdsRpDcfZ27Vj3ceefE28nf6GoxIJKOvLdoNlaHiWXhY3GlX5CIm2oLbFev2N/fajOolF0gxgFIjugbVuMExkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MhOXyCHF; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-485409ab264so8461855e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330607; x=1773935407; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KeehGpxCmRtRJHUVE1AIUDSSmmOUpqcmolBf5xwx4fM=;
        b=MhOXyCHF4a1KmI1jIGuDWgNsWEtL3+v8pOGYrt011h/sQC/g1jwEGWqYZ0kwJWeDQW
         iQfdi1qnS8ycNxAuotBQLVppoBWphQ2rfLyWgTadsOsVP/v0KbHWX+oR9xnMiB7cHGN9
         p2C9rGxeJKLYjBGAIxnA3o+gwV9gZmwA71e/NqPiwfOIzrn0WKimDWSXlUFEpodovssr
         AwErWjD0mg0x/nxjArnAfMZ34h1DqS47mgcJkYMVow4WrEdJsgGTqf2iNxRTzSi56D9r
         BG7ATsaZzZdV9TTLNIBDjymUF00jsS62A0gXuXEkJTZXlrRfhiU/SaUC0Xf32jsVbleI
         SqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330607; x=1773935407;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KeehGpxCmRtRJHUVE1AIUDSSmmOUpqcmolBf5xwx4fM=;
        b=B/5u92pysHB/LbIjEiKdzA+MVWKBXmlsherWSjO/kgLW5E1gzsimFFjQNQr3qhlzum
         MATFoWjj+kKKddqYHgFXJ8BcLl/VLfOVsEUekO05r9MONRPxCpgbqX9Kbag1peFN9p1d
         6LdM5rMahhVYG+JaKGuC65F0AF0BJgTVvZE6YgMjQQCwpBxsk/ue2adof3ajNqaZw32B
         wxGsW29Es/bTx5zANKosBDc3CulaBIEwfkk12S/Z1vJ1gKHN226ClkA8uEUDRnMuNsqH
         9zMANu7rNDsXiOScUQvAkaeiT538QzovVIO9EsrRpmf6Jl4bwBvMyVbHyl4LpcYQuU6d
         Fc1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUEytUvJ5jY9EYdlo0fBwLtIaXg2avhzGMMNFQXK/EXDNK2Tgep734YVsT9F8Ir48A4ZB+fDen3PsBo@vger.kernel.org
X-Gm-Message-State: AOJu0YyyZnNlUx6fxWunzucj761fOEZDY/dPzicJy6wBj+j6+Lb2HVGL
	6EkpjqW0s7TiUorxy6B7apP/DNlDbAtmb/8Jq5ztYSnupmQcUmcxLHCNmim21uijhkY=
X-Gm-Gg: ATEYQzwy4xoL/yJQclk/kePIKTz4dAVxBlWxDUsquQQ2rnFHUQS1xFPb/BdkQeLubPw
	kkktpgiJsh0j1yqF3ThKoFsLkPdPmTMH5eFezI1ZTEQYRfKg84UCwhQP7FB0z+CFeFS+BaxtM38
	rJ5QNALkXgbNf7jRArUeS/TdUkrrrhteRfGMIRz0D0KF9UV5yO3KpdaaxGdUM0JGx/Pwjs+LyGy
	qJ0E+QQGNwODduT+5OzL7NHUwQ10V95A9P8Yf/liwgRFavzezIDcWXxDJPeQI0js/z47EW6r9Bz
	pAZ4CW/uVbdJ1Zg66JYQiVG8bNg7omz1T/kagCZLGUODjS7q/YYTjLKo4ToWl6f1MpiufkN7//q
	nS9wmWWJ5NKukX08TDu3yYcAO+F3tYmV9HRHMekgLDXwhZCWnM6uihPljCOGssy6mGBq/8jyBPx
	9M7JEOOTHvnVn0U2bbttWq
X-Received: by 2002:a05:600c:1f0f:b0:485:3f58:da2 with SMTP id 5b1f17b1804b1-48555b4b087mr2534445e9.16.1773330606655;
        Thu, 12 Mar 2026 08:50:06 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854e67ea40sm98150185e9.7.2026.03.12.08.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:06 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Subject: [PATCH v2 0/8] arm64: dts: ti: k3-am62a7-sk: Split r5f memory
 region
Date: Thu, 12 Mar 2026 16:48:54 +0100
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGbgsmkC/33NQQ6CMBCF4auQrh0zHQxVV97DsGjpIJOIJS1pJ
 IS7W3Hv8n+L760qcRRO6lqtKnKWJOFVgg6V6gb7ejCIL60IqUHSCHOYpAM7NmRBgvcR/Ay5AX0
 B9NYYTXjW3qgCTJF7ee/4vS09SJpDXPavrL/rj62x/sdmDQiaejbk3Ak93ZxdnuIiH7swqnbbt
 g/0ods9xwAAAA==
X-Change-ID: 20260210-topic-am62a-ioddr-dt-v6-19-0da7712081d7
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3504; i=msp@baylibre.com;
 h=from:subject:message-id; bh=6jsNMOL+D8KolGRI7DunLwHkPvgs8sfX18pRqxzELco=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxNDzJ+ra8/MHX3rUrnxOPRp/fzLI+3fvHEc2HpyWdtO
 wKEtVTjOkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAiTKsYGS7lfJ/59qBRTkvn
 i/IstgU3F/IY9c+6tudMDJOCWI1/vAgjw+LiT/8V0hneBy2T2mG/LCLIwaFvmfVThzN71CpLXQ9
 1MgMA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274683-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: EC84A274DE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Split the firmware memory region in more specific parts so it is better
described where which information is stored. Specifically the LPM metadata
region is important as bootloader software like U-Boot has to know where
that data is to be able to read that data and resume from RAM.

IO+DDR is a deep sleep state in which a few pins are set to be sensitive
for wakeup while the DDR is kept in self refresh. Everything else is
powered off.

The changes in this series were suggested as part of the IO+DDR u-boot series:
  https://lore.kernel.org/r/814c211f-a9eb-4311-bb84-165b1a69755f@ti.com

There are currently no real users of the memory-region that is split in
this series. The size of the memory-region in total stays the same.
The new layout is derived from the software running on the r5f
processor:
  https://github.com/TexasInstruments/mcupsdk-core-k3/blob/k3_main/examples/drivers/ipc/ipc_rpmsg_echo_linux/am62ax-sk/r5fss0-0_freertos/ti-arm-clang/linker.cmd#L172
  https://github.com/TexasInstruments/mcupsdk-core-k3/blob/k3_main/source/drivers/device_manager/sciclient.h#L459

Additionally the two important devicetree nodes for resuming from IO+DDR
have the bootph-pre-ram flag added as this data needs to be read before
the RAM is in use.

Best
Markus

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
Changes in v2:
- Make memory-region-names required if memory-region is present
- Fixup memory-region and memory-region-names conditions. Require either
  2 or 6 regions for memory-region and memory-region-names
- Reword and restructure the binding documentation for memory-region and
  memory-region-names
- Add memory-region-names to all uses of memory-region
- Link to v1: https://lore.kernel.org/r/20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com

---
Markus Schneider-Pargmann (TI) (8):
      dt-bindings: remoteproc: k3-r5f: Split up memory regions
      dt-bindings: remoteproc: k3-r5f: Add memory-region-names
      arm64: dts: ti: k3-am62a7-sk: Split r5f memory region
      arm64: dts: ti: k3-am62p5-sk: Split r5f memory region
      arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to pre-ram bootphase
      arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to pre-ram bootphase
      arm64: dts: ti: k3: Use memory-region-names for r5f
      dt-bindings: remoteproc: k3-r5f: Require memory-region-names

 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 55 ++++++++++++++++++----
 .../arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi |  1 +
 .../boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi      |  2 +
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 42 ++++++++++++++++-
 .../boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi      |  2 +
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts            | 42 ++++++++++++++++-
 .../arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi |  4 ++
 .../arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi |  2 +
 .../boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi      |  4 ++
 .../boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi      |  6 +++
 .../boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi     |  6 +++
 .../boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi      |  3 ++
 .../k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi   |  8 ++++
 13 files changed, 163 insertions(+), 14 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260210-topic-am62a-ioddr-dt-v6-19-0da7712081d7

Best regards,
-- 
Markus Schneider-Pargmann (TI) <msp@baylibre.com>


