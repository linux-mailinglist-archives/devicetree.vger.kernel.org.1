Return-Path: <devicetree+bounces-272331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Cn0B/Ixq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:58:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD942274E2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:58:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D3E13051D0B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1190943635E;
	Fri,  6 Mar 2026 19:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b5+wIoZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58EF3128C9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827120; cv=none; b=Hw/tvUlLp1kZnkLnGcVXGj86yKFN5yXBUyvcXG8AIw3SFoihvcnlsZI0dPV8o16Qye8I8L8kiKnAYN3EE/LGcBap3gNGlPZpmOHAf1GpRsXTRqZHzEjklqNbRCONBzmuY60HzZu705260bACCCJhOCRtRS3eSp7+MsYzGBjkc78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827120; c=relaxed/simple;
	bh=EmsHs4PY5dV6w/dlgUhaa3qubhgIhvpaYihUosLnwko=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lLbTVMbgG6fwXaxMLxHQf6GNK6acHgyT/JxnF0npbbuufcRh7zFnyQ8c3F8O2O6/HTqO4aHarAmdqlwu7xnZyRIYIi7BMbhgf8YDhtOPwUJ0XQv2CKLhK5NqK/1VRo4IVr+NsUrihIQAhqkz7hcF3PVYAkKhrcGOV9ppSlgljAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b5+wIoZm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso84921185e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827117; x=1773431917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pygklHzPZCvqH88rpK8Mu6BNLua8aC7oKSSLfM/aNbo=;
        b=b5+wIoZmMwT2dL47zgGIUJMamYHT3UcJCwtS7KF9MLHIzuTQ9ty1hDlMfOtExcQsGK
         cNtCqa0rphAitZjWYrshbA36DXBlwP9VnWMlhKYbNWRr1l2piXlxLNgDtE5utvNYiQ8W
         kml49JCwRrJ0JgBBUbQ+0cBj+sriHFJX8T/vmFBIlu6IUtt+uReYcg3+az+v4wcsF8v4
         q7zl9+M1RrzXIpUndPX4s4gk7UCcWV0eRJN5jZcess/PXyfyEUOUwhHrvwb1yv1V437D
         LI3Jl3hI5ZqKob+61wiq1FRB/gCHSNjcVZJLJrCHbpcc2Wfz/JzRrB802QPmAkNSBjjp
         k/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827117; x=1773431917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pygklHzPZCvqH88rpK8Mu6BNLua8aC7oKSSLfM/aNbo=;
        b=JAfAlU9lF88Tgru1ZV3xNtKgvyw5bMQNiwrz3FcvGBMnQ+w9ELle+D14PNKVj9cZ6v
         HGqisGnXOmlP7Fblt1WqTw2Zr+zCx+fmSwiMTN49Tnfey9MUkOpSwBVJZcd70wgiJww8
         KBNZT8fKxg9/Yv3vR9AWk3jkSM6rikdyVKj9JhHzvWMRw/rLtjehjpGRMdGV/Q9h7BHd
         jt7p++ZkLzHIusuV0/xV8RmfSZGwxcx/dMy18yhnG0UyQ7KUBceOW+lnp7XSCCkFLIHf
         viQPmpNE2NqNBzgU8C6SN8vv9BaqAK4KqzJp9kuWbVTtQiZ+wYkMdPbs0ZWaZXgSjJU1
         5OEg==
X-Forwarded-Encrypted: i=1; AJvYcCWdkRP47Bms5RVTfp9klJypEjGlSVd71dTOU3ZFrBDLyj5VqLU/zjEfaOB2RFJPav2H5W00jNmG3+gq@vger.kernel.org
X-Gm-Message-State: AOJu0YzMCOvsUn2Eppl5ajE7TihjT/h36tDphh0vK59XqlqVqmXVlMEp
	/uDNJ61W9BgKy3q7+A7IcwC9x8/9AIloHWO3U7KzVUqzSp2TvMvDKtBV
X-Gm-Gg: ATEYQzxkMkVm1pmktk0JoNWM7z8g+lSwpoZAfFMsaxSogFy/D3UNry7SCSkjaOMMboX
	wAP506M3dIB3eWrlEnoEP8Tn7TpASCb02osHpcWpMpR8nyodNSMjwMD2zTG4Ts0I6ymc/9o/NZG
	zTqHN+oCQuKAHjooiozLXDAHowBnAiWWNV1b1LhyPs0iW2xrNjXV4zhlC3ehi5SvrOKCN/mTgDl
	m5euAISvK/B4JE8+4gnP8APZklAK6zPuiH7vxOUrWAa0EIxLq0JqJxJAfUMCUqa6SqiktRvdcLm
	uOhMvqadMf3o2m/yeI+YI+u9+vrIw6epBeNEbY0ant3ypeodQ5efJIiXNRUXu++Usm4HBBumIVG
	7u18CcQYczThe2+A4jScQ1qt4mEIP3QLXD37V73Bd40oA1avTToBWOt2pMhBNAk+dLsvVL/aaM0
	cBoV1A4w+egHxjbYNe2/mn5ofKuX+zLq5jqu8jRxipFMAXXeP7h+tswP97CRYFNwLdM0O/gMA69
	evC2jWTDiL2pdxkA75clBr3fIDlNqanZT3q/Zw=
X-Received: by 2002:a05:600c:8b5b:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-48526927a4dmr57513635e9.15.1772827116958;
        Fri, 06 Mar 2026 11:58:36 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:36 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 00/11] arm64: dts: freescale: imx8mm-var-som: Align SOM and Symphony DTSs
Date: Fri,  6 Mar 2026 20:58:19 +0100
Message-ID: <cover.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7CD942274E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272331-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:mid]
X-Rspamd-Action: no action

This series aligns the i.MX8MM VAR-SOM and VAR-SOM Symphony device
trees with the latest hardware revisions.

The update consolidates the device tree descriptions to better reflect
the actual hardware partitioning between the SOM and the carrier board.
Nodes describing peripherals physically present on the SOM are kept in
the SOM dtsi, while carrier-specific components are described in the
corresponding carrier dts.

The changes were tested on the latest VAR-SOM and Symphony hardware
revision.

v1->v2:
 - Moved phy LED configurations to symphony dts
 - Added Wifi/BT dtsi variants for both iw61x and brcm legacy modules

Stefano Radaelli (11):
  arm64: dts: freescale: imx8mm-var-som: Move UART4 description to
    Symphony
  arm64: dts: freescale: imx8mm-var-som: Align fsl,pins tables
  arm64: dts: freescale: imx8mm-var-som: Update FEC support with
    MaxLinear PHY
  arm64: dts: freescale: imx8mm-var-som: Add support for WM8904 audio
    codec
  arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
  arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT with variants
  arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
  arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
  arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
  arm64: dts: imx8mm-var-som-symphony: Enable I2C4
  arm64: dts: imx8mm-var-som-symphony: Enable PCIe

 .../dts/freescale/imx8mm-var-som-symphony.dts | 223 ++++++++++-
 .../imx8mm-var-som-wifi-brcm-legacy.dtsi      |  12 +
 .../imx8mm-var-som-wifi-bt-iw61x.dtsi         |  45 +++
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 366 ++++++++++++------
 4 files changed, 501 insertions(+), 145 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi


base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
-- 
2.47.3


