Return-Path: <devicetree+bounces-277326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADWBK27GumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:36:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B10502BE57D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D2C031E552B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428103E51E2;
	Wed, 18 Mar 2026 15:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1nHo1LUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFAF3DD51B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846859; cv=none; b=bnSv2I4rY2lITcsNa43NQXWZnLnU40h2Id90K9tGhPO9AoLKLYHq9J+916/R+C98HjuBnF1+Ne0i9wUX4SeEkCrnuLNzYGevPk6eRQby9OYctJrRTd68owTBwCFdH3oRr6S0NXMC0nwsQE7tOekMFDGwPUoKOcVc9wt0jx5EXG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846859; c=relaxed/simple;
	bh=O7KJbMSkvzvMpAGjjOIeIlfXCIp/PPoZz5+LKET/qs0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cL3XhKGJFwY2mu+7Jyt8/bVumwuemnZDfZ26lfAKrAaJrs+5OymtKnzd8SiQcSPuMG8zaYBG67bPMLMAVNmqKp1QnwGi8rMxJI4NuUBA8wwcRpv4X8VN2Rb7T9HBYIiAqSbh7w//1+uLi9eoVBUo56uVZg4PAS9S+Ob9kBqpSto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1nHo1LUA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so82130095e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846853; x=1774451653; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/yllf7A2iKXDpzRGmszNp9+Jv/HEAfql39j2Q2qp1aI=;
        b=1nHo1LUAwvqG1fvSlc/qQX1BpgNip5arJExaI2GzdijRNlq1iIyG2PjEoGl8uOC9eM
         CufurKMutzsLRI0qm+JCw+IRnRc/9FDQY3RrBpmvOrZPtgpDACwvJoE4tfuvvYAy8t42
         vYvYq9t6zq4qwb9k5QiA8KQV6qNAExc+6vrwHyDtZojRFCAcCXoNaE8jzUhXh0Y8Q9yZ
         62B3BFR2jnf0FVH454SGl3XjfaJ/2nV03YpZYPBUnj3OMcU9X9A1KLqaoCzKXyCdmEk2
         tmksXAeU+JfAViS0VteoZQJphWb5UgYWtoHLXtsQ5xb/y6EIZY+ppiAD33qwssxZAShf
         uxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846854; x=1774451654;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/yllf7A2iKXDpzRGmszNp9+Jv/HEAfql39j2Q2qp1aI=;
        b=K/IJ3nlJiai+/Goht1sna2Dd0afCqvzUUO/osgVbnLlolJHz6zHZ4y72enKsRu/Sqg
         PcIi8OYT5glsuLGYiXZfx6OXd6cP2WV4M0TL0Wh+WjNpBGbcp4jnGS7KgWBkSm7jSYMj
         fjo9fL4RhhziNef/pA9wwXmISyvtlm9EmYwFssi9JZ4S9uRihHPGDPrZSztSwwKB6qow
         aY7q42OD9/mRsLqAMSYJm+Tw9umm9XnfPdD3p5sjFQjkwxgZlPbIEemAFEqJnaU4c0bT
         0t2WrlFDq8q5zOdCtIqENNMZoM7sFSbigdq/t2FXDZ/8RuFMszGbjr+HRSP+42aaRPVC
         eZYg==
X-Forwarded-Encrypted: i=1; AJvYcCXY/AXG2eFq4AulwjrjpfdfVZ8scG0hTrjesDlaZXnP06ruPgrHFbrQtUMvc5dAKvqcmGeqU45dp6QA@vger.kernel.org
X-Gm-Message-State: AOJu0YwToYp1H3Ho42WZDJwJrqJpibjPB7TGPMspmtWFaWdUWmU30haR
	DKCIJI/2amRkPR/KVMyNTdgcduBSjKRFcTqSUrck82oNb1/nHSbRjgE4UR9DXcEXcds=
X-Gm-Gg: ATEYQzz68VnGdW0NAWj/eM/cNgaIOYckzfpLGu4oOtskwllohjryFAF5I0iOCY55AyG
	b7I0XtmC3Z8zBQb8rXg+ksGNxsbtMDSTxRqKdIY4l4Naf+jHfvp1FU2oJHtfLrn45utxp9OOJgD
	hWN/2TCn7wLDwnN2onphLQvLSz27CYbpF2rTXuhQZ14jMoJ0kURnxKInFFTIQN+3JhB3ckUZ4rN
	Ht0lFYzsyvO5FyZrrXZ8440+9wetCIeeaS5ee9QWghCuQGr5ztOlXVIOjyhWtKqrHpDZFvv7OvN
	xhVXzZcXgQG8Gt2POguXsOGu/Tw3S43sFVy5jt+EYUVyittdSKQkUDmV05eHq2nAVSbNNdHw5eO
	rcvZXOpGS8XhJ4gonaoACY65v4qLWsQDjICpAhBWOtt8OGZttfGhcZ1LaeL5PhPIPIBcTzxby6J
	8WStHrUV0DLJBcsQQr+pIL
X-Received: by 2002:a7b:cd98:0:b0:485:30d4:6b98 with SMTP id 5b1f17b1804b1-486f443c6f1mr42988885e9.15.1773846853405;
        Wed, 18 Mar 2026 08:14:13 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f45f7e96sm43046295e9.0.2026.03.18.08.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:12 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Subject: [PATCH v3 0/7] arm64: dts: ti: k3-am62a7-sk: Split r5f memory
 region
Date: Wed, 18 Mar 2026 16:13:06 +0100
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAALBumkC/33Nuw4CIRCF4Vcx1I6BQUGtfA9jwWXUSdzFwIZoN
 vvustoYC8v/FN8ZRaHMVMR+MYpMlQunvoVeLkS4uv5CwLG1QIlGopIwpDsHcJ1BB5xizBAHqAb
 UDmR01iqUWxWtaMA905kfb/x4an3lMqT8fH9VNa8fVkv9j60KJCg8k0Xv1zLiwbvnjX2mVUidm
 OWKX5rCvxo2TdvgbSAKZrP90aZpegFWQFIQFQEAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3689; i=msp@baylibre.com;
 h=from:subject:message-id; bh=O7KJbMSkvzvMpAGjjOIeIlfXCIp/PPoZz5+LKET/qs0=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdB9kVur1rF5s88AqfFGHq2L//yN9zKkIhW/2lflxb0
 T5Rzda+o5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACbyIZmR4eydIIXbS4wmO+xc
 bRS6KN65RPv/mVsvAiNTPuw6Jno1RYrhf9y65om3fthpfOibv4xP/n7P/vS9+sdFO+1+7VZ+KSN
 qwAIA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277326-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: B10502BE57D
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
Changes in v3:
- Squash the enforcement of the memory-region-names requirement in the
  patch adding the memory-region-names, as suggested.
- Link to v2: https://lore.kernel.org/r/20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com

Changes in v2:
- Make memory-region-names required if memory-region is present
- Fixup memory-region and memory-region-names conditions. Require either
  2 or 6 regions for memory-region and memory-region-names
- Reword and restructure the binding documentation for memory-region and
  memory-region-names
- Add memory-region-names to all uses of memory-region
- Link to v1: https://lore.kernel.org/r/20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com

---
Markus Schneider-Pargmann (TI) (7):
      dt-bindings: remoteproc: k3-r5f: Split up memory regions
      dt-bindings: remoteproc: k3-r5f: Add memory-region-names
      arm64: dts: ti: k3: Use memory-region-names for r5f
      arm64: dts: ti: k3-am62a7-sk: Split r5f memory region
      arm64: dts: ti: k3-am62p5-sk: Split r5f memory region
      arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to pre-ram bootphase
      arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to pre-ram bootphase

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


