Return-Path: <devicetree+bounces-259394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDm9IOgsd2nacwEAu9opvQ
	(envelope-from <devicetree+bounces-259394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:59:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A6285AE7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F2D55300233F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CABBB3093AA;
	Mon, 26 Jan 2026 08:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aS2d3Xmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729C53090E0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769417957; cv=none; b=WKJRtbgyS5Th33p3RZKBQEgW6zKRHO3X5W8Ww5qNN8Z7UkV5B1Zd0c+h5uzNMHubUwlb5OJsh13gAETCcfTrcKfmzdWrxQokwVGJYe/OukQGPvczi5YkgEsGH7/k5z8yBEkBlfY51IXLzl79ADj7+8a3OQuSWou6tUD56t8XBc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769417957; c=relaxed/simple;
	bh=sfECNrXqjbV8dOHwg33uBRPR61OqwrseK8uJ9XStgSc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qVZjB+HFAdOHc0Da434cfir21Z5Un6pYbzVdqKBvIRDWNU1Z/xH0q0L/eWOw/6eYrMz0F8lEgHi4pMBWesYglpfp5TSREUX3/uXuckoUkaI3/EdRkaVbZ/rg5R4j6xHJp00Cf409oxmhYx1aie3VjCZxoHIXkJ7xMEVzPypT/kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aS2d3Xmr; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34ab8e0df53so3737963a91.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 00:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769417956; x=1770022756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oQ9aFobDUemcPRrLlp/PuTWIeXOZx5LQW0AdEMjMZ8c=;
        b=aS2d3Xmrun7bJyxxscp2xLJmRja/pTJlaJ0P3CN0YTrnlEIZTxL/tIoO9h4qlDnCGk
         VAyjes5m/AMKlWJ0OmxuyZ5hYgJsi8VOm+iVFl0HANT+lSc/QGr+SVncY8RXZZ9QHWRl
         zpR0s2l0BDioNgXcONFRbz8UjfMz//H3sF6a/oH/IiHqhECLBq1Yplp3Bshb4hCOCKIx
         euby5hmdFDZNoZLIdl7JwBM4eNmry3/deU96bbhh+dI4y1XSCrg1bGNpJd2EWEUpLT8w
         lxIhfBtJnBh0aew12+n4Z1aQOOlpJeOXpbNsox+8s3GsL7+RYEfilZlo6fInXOposxb4
         i3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769417956; x=1770022756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQ9aFobDUemcPRrLlp/PuTWIeXOZx5LQW0AdEMjMZ8c=;
        b=o6PbTvCNIjBU+L5wzLpl2WOj4w/1a1aNU9bN9kj6vU34fIzsH8P9AY7vfp+kn6mosK
         GZz7kDK4SAIB06Wz/noDMCvrZ+C8BYSt3wt/jENqEsoFnM15Txv7mttCbnrmcXSC2aYl
         XDpJb6JOzMQwXvn0uMdBlvLqfCDMB925DF57fUHO80kz8nm1u5+K6vGC3+dR/mP0goVE
         Ehx8Wu3KAeqiWdob7bJqrxnVpsy0KpTz9robOQKcsNvw2RbcxI+sYIcq4vaicQMohn58
         od5Kg4turzJaJ8cAXejarIpGUiMeKWIkfJGhG7/Dz2p1cdPOz3z8BbpocVrBMNCGfczb
         DXzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa7vGTX2vbr86wvEAL3axQkd8n66uvQnxq9HrMyiVPqkfAWzR41TtuZoFPQY2JWHJ08jxDZb9pVv36@vger.kernel.org
X-Gm-Message-State: AOJu0Ywoi8VuNeu8QRwG7+07PJGHyY0eeTWvTQTxUdv1zFMqAWXPecm2
	An6HqwkdlCx90pXM6gYvHmnXuGzXBooFbsqxem2b/UxLGHumLSeMosbF
X-Gm-Gg: AZuq6aKkynHATp4mujDm1UvaLiX+bVgwVjsrufR8d++kCih6DOZziHumnqVhTlvvSHq
	OpQBQUSa0bqf6WSH83ZCAB2eg86z//nWHus/GpJKGCm3iBta7u1XaGuJ5rubBvhKgYSXhQ0sYHm
	EbdQA54cY3Q37+iOA5fjk0RaRAUT9rf0wJLev6AZh92jL1XeFmqSC71og/gQgalkYnOE/OpMnw/
	W1hKnmFsC7k8+XugTlIpoaMN27Um4VQUry+tPGrvCbOY+VAmZNBDl/GMaljNBfv6ec+ZtduhOKt
	gwQx/usJ5zmdNOIbg/S8NVsD27tPaBnfkxU2Cc7nAJmgz5SQpF+UROe2S3OYVkH5LNITwmwdFq2
	ml1MaRJdWEFemryKJ7FPWkt92R6e8DHHMagPmccQ3aJNGZy7PWZKPPwi8TuFjSratYx8gm3RvE5
	mjT4Kp08wbvSwqKLC7YXnDopDz1QCA2hVCQYvqqUVMa7KEI+8dOVXpCHpYqcKlGkjG2PfiF8Gh
X-Received: by 2002:a17:90b:4a11:b0:349:2154:eef4 with SMTP id 98e67ed59e1d1-353c40b84dfmr2930111a91.5.1769417955671;
        Mon, 26 Jan 2026 00:59:15 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536dc3e0ecsm8251798a91.10.2026.01.26.00.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 00:59:15 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	a0987203069@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] drm: nuvoton: Add MA35D1 display controller support
Date: Mon, 26 Jan 2026 16:57:24 +0800
Message-ID: <20260126085727.2568958-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259394-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 23A6285AE7
X-Rspamd-Action: no action

Hi all,

This series adds DRM support for the Display Control Unit (DCU)
found in Nuvoton MA35D1 SoCs.

The DCU is a DPI-based display controller intended to be used with
external panels or bridges. The driver integrates with the DRM
bridge framework and supports atomic modesetting.

The series consists of three patches:

Add Device Tree binding documentation for the MA35D1 DCU

Enable the display controller in the MA35D1 SoC dtsi and SOM dts

Add the DRM driver for the MA35D1 display controller

This has been tested using modetest with a DPI panel and verified
to expose modes and perform atomic modesetting correctly.

Best regards,
Joey Lu

Joey Lu (3):
  dt-bindings: display: nuvoton: add MA35D1 DCU binding
  arm64: dts: nuvoton: ma35d1: add display controller support
  drm/nuvoton: add MA35D1 display controller driver

 .../bindings/display/nuvoton,ma35d1-dcu.yaml  |  74 ++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  42 +
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  26 +
 drivers/gpu/drm/Kconfig                       |   1 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/nuvoton/Kconfig               |  21 +
 drivers/gpu/drm/nuvoton/Makefile              |   7 +
 drivers/gpu/drm/nuvoton/ma35_crtc.c           | 445 +++++++++
 drivers/gpu/drm/nuvoton/ma35_crtc.h           |  78 ++
 drivers/gpu/drm/nuvoton/ma35_drm.c            | 389 ++++++++
 drivers/gpu/drm/nuvoton/ma35_drm.h            |  48 +
 drivers/gpu/drm/nuvoton/ma35_interface.c      | 192 ++++
 drivers/gpu/drm/nuvoton/ma35_interface.h      |  30 +
 drivers/gpu/drm/nuvoton/ma35_plane.c          | 904 ++++++++++++++++++
 drivers/gpu/drm/nuvoton/ma35_plane.h          | 226 +++++
 drivers/gpu/drm/nuvoton/ma35_regs.h           |  88 ++
 16 files changed, 2572 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
 create mode 100644 drivers/gpu/drm/nuvoton/Kconfig
 create mode 100644 drivers/gpu/drm/nuvoton/Makefile
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_crtc.c
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_crtc.h
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_drm.c
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_drm.h
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_interface.c
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_interface.h
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_plane.c
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_plane.h
 create mode 100644 drivers/gpu/drm/nuvoton/ma35_regs.h

-- 
2.43.0


