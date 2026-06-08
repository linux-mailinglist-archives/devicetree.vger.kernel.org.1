Return-Path: <devicetree+bounces-308376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xz5hIAvWJmrGlQIAu9opvQ
	(envelope-from <devicetree+bounces-308376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:47:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6D16577C2
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:47:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=B6dYWAZO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308376-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308376-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56AF93098620
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A199D3CC31A;
	Mon,  8 Jun 2026 14:33:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2E13B7757
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:33:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929215; cv=none; b=bn9VQgp9qIAmp3I5Eg0QeWv71bR87kkAS+gr/zxZjgDaC/iy2l+rMmVCeEE2AACFUqLqY6DswDpvVOXD7ZmK5683KXMPjvptNJHd9/2JuP77UR1XCbHPVxXrE0IGVdbFDfasv0bFufw8/ORlbL2QSZXRbMBnripx4WEqgXhXW/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929215; c=relaxed/simple;
	bh=pbwbNrbJA6z7PtQSYVA+FI8l7aV+jWj8gfwGnoKdHXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OrDuMEts1hAm3YO+ANRx0biuntlOoEYYhbW7XH/Ym7p7vNWL34t9sZFtZOcVkXxFCo8amjyzQY/Ia7Wp7OM1T4jnqtJudfALSEoUjphOWgGWod8PJQvu1c2wAAB3lbz0aVJYzwSYevP14Dlz4ZQ4hlpz7fTuaxqBVwPuDYkpS6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B6dYWAZO; arc=none smtp.client-ip=209.85.218.49
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-bec2ddee9bbso886518266b.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780929213; x=1781534013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yd9W+IOgn5PPDdVYXivauCER1Z7usoDbzZMnMqoD9kE=;
        b=B6dYWAZOC/nvCDOTb0Q8+4kIIqz5q2iSwVTtbMDyGboAXUW3Nsj65vvvnlX6wQYRsl
         KgFpmj+JshKO9Qpo8/PqB5wAP0O13shZFAs5cu0NfyRcv0KOY4me2A+rtrZh5mNpGUFl
         VZhz+m3lkBPSUz7tCa7Pj0icBTngkPHWxxu2MtI3jAKQa/JrgwKde5wdoD7/7v+514Iq
         A4v+8okRpcwWXTD3IFyXyNqyzYv7168MRgF2sCAFDaPk66bqBUgQWcdZcqf2sxf6javE
         cwKAXINfiq1EAEdmohTL90U698oPaX4R6N++Xjz9oSezW1j1CeCJDJOInzEFLfb/abgX
         NiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780929213; x=1781534013;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yd9W+IOgn5PPDdVYXivauCER1Z7usoDbzZMnMqoD9kE=;
        b=jSK78HVzXACeKiF5ZxiR4YKU9/dWVi7oyVOm3i58bERuPpanLq7kwDfsh26Sye/zCI
         H+lgR2eM+DxTU8CNInvFWJMTHUR+cQI/u4795ePT3MX8v8/Tx2+n0hJPiVd4mlhucmEM
         dCaoSaxA/85ZHHPqL2yGwO39sSqJYrxvVlNfmENMGqtQF8F4qKNbPqF9Gl9ZBLCpXdU6
         hdyBwGuI/1BZurrNvIHJNgYRoQa4Rar9UaZ7pNGlz+zEvVSBucML87jPgC4G+FUvxoc7
         7sp6IzjzvlgPYrV5XDzqwyTwhoV9Oc4KJDtceSG8veOXJ6wMitQ1Mx6prObi5t/XSrfu
         PcVA==
X-Gm-Message-State: AOJu0YzYBU7TuAx6CfDvTno3yM18gZK6KhxOXyyUphKEcXcFpAui8EDb
	JSyfFwakKg9xrb2TIU8d5GKG4dJTfyFu9gwXL5pIId2boW5nJoNBM7KgDI/qVIiw
X-Gm-Gg: Acq92OH+FAfHiM4yT+LrqyHhZ0JMaU8g18xcSRmHHsTdHi5r0oDzhxjSSxhiUHWQ7Go
	dzvcZhbZRWv9LcFC2jN7HXCz6vUbgGr7nq5MLd7Rp5IcU1H0iLPK9eVK8QAc8p8q+8x2IMluUVu
	TEIo+BC6NbyhHBcpvAipeNtIVqb3A2ppyyodEVJsdpNnTnsRblTrFQJEE6I/XHugmXKiLrDydQ8
	6slgF7hI67bqKkKRPMr2MeG2jMxD5oGPpanOJfwB9CTrgVtFnvLe4lV8w8e4yFQ1T0bceIRHY7b
	8GPSyLbjcB7AO9VMxYCJPfgAvyCoHK2aiHskpcHvO9DbDPFRhglyy4u4jvYuv2DzF/+HdFtpk8I
	MoyxTAgyfRPiv17BOTmJz9cy8jTUjXnpT4RHgDdY/s06RdVEGsVZonUMAhIS/g+LfCrjXTELUBJ
	dOG7fO5jLLxyC8l7nvSkkSTLD6ZYGwWVD5u1sk77bXvMcEwdM45aVFT/LV0znfFo7kR74=
X-Received: by 2002:a17:907:96a6:b0:bee:959e:9ac8 with SMTP id a640c23a62f3a-bf37037f945mr595304466b.4.1780929212431;
        Mon, 08 Jun 2026 07:33:32 -0700 (PDT)
Received: from workstation (161-53-210-87.ftth.glasoperator.nl. [87.210.53.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf051d82a31sm897743666b.19.2026.06.08.07.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:33:31 -0700 (PDT)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v9 0/2] Add Xiaomi 12 Lite 5G (taoyao) device tree
Date: Mon,  8 Jun 2026 16:33:27 +0200
Message-ID: <20260608143329.252033-1-zstaseg@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,oss.qualcomm.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308376-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:zstaseg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D6D16577C2

This series adds device tree support for the Xiaomi 12 Lite 5G (taoyao),
based on the Qualcomm SM7325 SoC.

The display panel model is unknown, so bootloader-initialized
simple-framebuffer is therefore used to expose the display.

Changes in v9:
- Fix SBU endpoint port reg: 1->2 (patch no. 2)
- Link to v8:
  https://lore.kernel.org/all/20260601150752.666393-1-zstaseg@gmail.com/

Changes in v8:
- Patch no. 1 - no changes
- Drop dr_mode = "otg" as it is the default value (patch no. 2)
- Drop usb-role-switch as it is already defined in kodiak.dtsi (patch
  no. 2)
- Fix USB Type-C SBU endpoint port number: port@1 -> port@2 to comply
  with usb-connector.yaml bindings (patch no. 2)
- Use downstream adsp_rpc_remote_heap_mem memory region to avoid
  overlapping with cdsp_mem (patch no. 2)
- Link to v7:
  https://lore.kernel.org/all/20260528152011.376711-1-zstaseg@gmail.com/

Changes in v7:
- Patch no. 1 - no changes
- Patch no. 3 removed. Dmitry Baryshkov addressed that in a separate
  patchset
- Added record-size for ramoops node (reduced pmsg-size by 0x100000)
  (patch no. 2)
- Fixed unit address for rmtfs_mem (patch no. 2)
- Link to v6:
  https://lore.kernel.org/all/20260516090853.2873223-1-zstaseg@gmail.com/

Changes in v6:
- Patch no. 1 - no changes
- Added a comment about reserved gpio ranges (patch no. 2)
- Removed "output-low" property from "hst_bt_en" node (patch no. 2)
- Moved common IPA properties for sm7325 devices to soc's dtsi (patch
  no. 3)
- Link to v5:
  https://lore.kernel.org/all/20260417084749.253242-1-zstaseg@gmail.com/

Changes in v5:
- Patch no. 1 - no changes
- Change vccq-supply to vccq2-supply in ufs node as it's ufs2.2 (patch no. 2)
- Val's patch for goodix-berlin didn't have effect on my touchscreen,
  therefore keep the touchscreen szie (no changes in this regard in
  patch no. 2)
- Link to v4:
  https://lore.kernel.org/all/20260305093941.305122-1-zstaseg@gmail.com/

Changes in v4:
- Patch no. 1 - no changes
- Removed Konrad's R-b tag, please take a look again (patch no. 2)
- Fixed vreg_s2b_0p7 regulator name to spmb2 (patch no. 2)
- Switched bluetooth to wcn6750-pmu (patch no. 2)
- Dropped qcom,local-bd-address-broken as it has no effect (patch no. 2)
- Added wifi calibration variant "Xiaomi_taoyao" (also sent board-2.bin
  files to ath11k) (patch no. 2)
- Link to v3:
  https://lore.kernel.org/all/20260224114424.1966947-1-zstaseg@gmail.com/

Changes in v3:
- Patch no. 1 - no changes
- Drop unit address for framebuffer node (patch no. 2)
- Add Konrad's R-b tag (patch no. 2)
- Link to v2:
  https://lore.kernel.org/all/20260216120715.3432191-1-zstaseg@gmail.com/

Changes in v2:
- Add Rob's A-b tag (patch no. 1)
- Add explicit framebuffer_reserved label (patch no. 2)
- Use memory-region for simple-framebuffer (patch no. 2)
- Fix reserved-memory naming: make node names consistent with labels
  and intended subsystem (CVP/camera/video) (patch no. 2)
- Convert mem-type value from <0x02> to <2> (patch no. 2)
- Fix s2b regulator comment style (patch no. 2)
- Remove unused gpio-reserved-ranges entry (<32 2>) (patch no. 2)
- Link to v1:
  https://lore.kernel.org/all/20260204115645.1343750-1-zstaseg@gmail.com/

Stanislav Zaikin (2):
  dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
  arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sm7325-xiaomi-taoyao.dts    | 913 ++++++++++++++++++
 3 files changed, 915 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

-- 
2.53.0


