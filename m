Return-Path: <devicetree+bounces-270582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CP0mKTz8pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0761F26BC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7DD8316B79D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE939481241;
	Tue,  3 Mar 2026 15:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="STLcj1gM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091653D565E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550834; cv=none; b=MezlQ5Zud0UJQihDN5UDMrQMzV+z9R7/gsIOrHCLm7MPvQvekpYDhLUvk7ZeJpawywGoluN86LkF2zoWehFkOxIDBlLhTzEaU92oJNDZTq6Ii6yvshwgxdUtJ0O5Rs3gbZUTUgeVukLGo4srL8LhKVH+zd1yHcI4Sail1DOPlx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550834; c=relaxed/simple;
	bh=9jv4a1vz0B4Y0Se6PnOzjXSDFfM4cHN/74M5HEnLJGA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NxcXrV7YXhIcLqIwbx+RsDoyqgQi8NzKinw9JkQcmtTrMtnuVhMY5650LP+HM9DpZHsr1cGb/baSFFIs6EnaqQltSngaEZxyG4UHnjtrrBC3ainWd9zzrPhvSM6VPzjELpglQfxvdfxk7mKCDs5vsXKGGC1QTQVAKEz8t4O/yZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=STLcj1gM; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso51410575e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550830; x=1773155630; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pqHM9PVtocZZ6dJkagETpj+4ELwjylZhR4+lPK5nnFE=;
        b=STLcj1gMFPpnBlRzRPaGD5cLDek1o2dPTQ1CGIDEvhVatkkN5zvuRuuYj34alnhmJx
         ZcJ0gBlcNPu3Wa8jCAooLNC3Q629WLNBAoMQrSEFLewxuULGAJpZgMZXIUmARtHi30I+
         9wcpFbvaYkyzL9W+2tfd+ypAsYiLun1kO8Uo3qOIXVYld4M+g+n97UUd3oLDK6L/F3SU
         rOdGy7/9r6SeTUpzyErj+5A/zFlsAYmbXi4hOJ2UZNvcVrQHGr7QnYI6IoTsTv9NpLbU
         JA4dvohuobYKMXKKcTxjizNwpW24rHtfg+yUtmgsgrC5xB6QuR+q9+AI7JOib8VDAM1z
         Z17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550830; x=1773155630;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pqHM9PVtocZZ6dJkagETpj+4ELwjylZhR4+lPK5nnFE=;
        b=AdxBzf51TZTs4Qa1O8rI5BCU/L5DwERKC0+v1A/WTMTcxu/4+P90PDv+xHFnMIBDPM
         eJV8JFO0+IxIBlMD5k3321K0DIpbIR+h/9fkTkRisE/eP1IeBzxszxfgu/aHyIzuXVh9
         KvTaFysCqoCdwlOIz9/KWLl9T3s2eVq0zrLisg6QwzzXs7Jc0tqpgT+ltqtspKMNbIfP
         p9x4IwajOomcx7hy3lNH+IxgIbZRWyugorbwo9PDuqP/KxGegO/9/8Hiv1pQ5e+zxqqK
         CQhhKjtaeH0DH8d4nFCFtRK2Yp1NORaf0otj9GRm51Wc7Yr75iA393jjyBzI0GGmyEU+
         suCA==
X-Forwarded-Encrypted: i=1; AJvYcCVydigelXEOyRuu5onFk1leh5jt/+n/OykAmChbCNg0ePE6r6CxW/lpUQEjeEKVSNuzZUG3VtKCkt7x@vger.kernel.org
X-Gm-Message-State: AOJu0YxICD1FX7diZjpHPqZA9i0B5HWfhArpggj23qWmXw7pehARSNMC
	NSy1vHa7Ba7MiovTQs3doVy/FSUA6UnhkYIku/5TYhcRCtai+g4Th6WvpZfULrKcnCE=
X-Gm-Gg: ATEYQzzhaebSN78toKxITICZSUtre0qGxibt9Wsa2YVbFT4bpVwrwG+qqsCPlRgrxzf
	hGc5fSiG0IHKfqwqJciomSBnk/8oiaAYSCFyfoOukRskZO8JO2QHBUjuBz3PlfeiOt2uelUGL06
	e24CgUJTLSjbFuFxPRp5HYDtrZbCm3PMIuKUMvV6UY4tw+CxvCKZFYbQ6v2SakIQmbKyV1bf9Ty
	5Gt9oDFC5mkun3zPN+/u+0xUqT5XhxYljxcJQ5P6P6OHefld+os3eVR8o/pJ6c0JF2OGdByRsKV
	zcvYrn4SgaZXGziPMmkHWRhqUtMjubxP2imy13X7nyQGWduR+atTLbTnlTrqBKPZXtuMygNkbK7
	hrQ7LjFxlYGNpZL4eTTUo9huXkMHt6AUtJEXZ3/QpQMovx8NkU1LMfbVzfRWYbha6E2lDy9BjkD
	LtgW2P8VOotMmWUqHxtGB5iYmQYmsWnnA=
X-Received: by 2002:a05:600c:34d6:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-483c9c1cc59mr302543825e9.31.1772550830411;
        Tue, 03 Mar 2026 07:13:50 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b7713csm321623695e9.11.2026.03.03.07.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:49 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Subject: [PATCH 0/6] arm64: dts: ti: k3-am62a7-sk: Split r5f memory region
Date: Tue, 03 Mar 2026 16:12:58 +0100
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHr6pmkC/x3MwQqDMAwA0F+RnBdIcmjVXxk7FJNpDlppRQbiv
 1t2fJd3QbXiVmHsLih2evW8NfCrg2lJ22zo2gxCEkiY8Mi7T5jWIAk9qxbUA8+APCBpipGFetY
 ILdiLff33z9+f+34AUxmDi2wAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2289; i=msp@baylibre.com;
 h=from:subject:message-id; bh=9jv4a1vz0B4Y0Se6PnOzjXSDFfM4cHN/74M5HEnLJGA=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlvzoO1/L61zJk/4vPK15VZG7vLng/9u7+Cwwnt90Nu
 GbNe0uso5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACbSuIqR4V2JyZ+ZU97MPb/a
 7gGjtFGJccxWsaCru3webIvdJlQ8MZaR4drsuf3GzPPrb/vwPpLfpyi6jcthf6vajiKRw5uVlAu
 1uAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: CA0761F26BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270582-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action

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
Markus Schneider-Pargmann (TI) (6):
      dt-bindings: remoteproc: k3-r5f: Split up memory regions
      dt-bindings: remoteproc: k3-r5f: Add memory-region-names
      arm64: dts: ti: k3-am62a7-sk: Split r5f memory region
      arm64: dts: ti: k3-am62p5-sk: Split r5f memory region
      arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to pre-ram bootphase
      arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to pre-ram bootphase

 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 37 ++++++++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 42 ++++++++++++++++++++--
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts            | 42 ++++++++++++++++++++--
 3 files changed, 116 insertions(+), 5 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260210-topic-am62a-ioddr-dt-v6-19-0da7712081d7

Best regards,
-- 
Markus Schneider-Pargmann (TI) <msp@baylibre.com>


