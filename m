Return-Path: <devicetree+bounces-265718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIq4JYYIk2nO1AEAu9opvQ
	(envelope-from <devicetree+bounces-265718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:07:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D71E143368
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:07:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E778D3014763
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CE77261B71;
	Mon, 16 Feb 2026 12:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QtdpHPkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC892D3750
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771243648; cv=none; b=PsHxFmxQ+4POpsci9lhuzM5u2KZ/Mm62jrZMqbyqT3/UP87MMxd95y/KGdnnVot9Ww44k4x46j1/Az3W3JGklLinOCavAQ0zFu0Ju5SBEAW3cxhIx1EbGaJruhX3MztdHqOlPWxFRgt5z2KatLS+bx6vOJGQGvRxlm+nkokE9iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771243648; c=relaxed/simple;
	bh=+tYVAkfWKjcAL2zrn7RiSIo46XHIYX2z/6h1nPyRqyU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ig4hSFGjEyZWv2aLXJLNuJLBv9BP43FtbMvGcvKMXAFLyJspEyvspNk8xy1Vkq2hnRqqu6pBLVICWt47i0gUx1GQ/MAremFh/Ja+zG9f/g38MvEftNIg1OBdLSjYyXP8OLDd4OLimQ7SQgZaaea4LGUGEbAo96oit2fNvg//FLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QtdpHPkH; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65bfc858561so1582296a12.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771243645; x=1771848445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6kduViMgW1mSAZtgtfFCbkT3EAWTHE6M11C2kxQ8nJk=;
        b=QtdpHPkHWTu8mTBCBjE6dnaWxJjYNUjvusgZtO/1U7QOVbmz00vlTenLTGpshdf54d
         A/J8rqLw7PsssuJaTTLPToMaakwqKZH2pOjh2CbFj6wammqJZzsa553R4Ek6NcDqtFNS
         bFVfGxwkmg3rgRKT6q5O7wm4pgjEy9dL87Ii6kqhg776+XKpn0UXKFkTq2i/z+uKFa+J
         FfMaEmHUEtLbjHs6v1QPYBnb5zV593xGyam1L2pGWyXYy/qkYn3YPVNBii8NoX5xxqIR
         sj7HzA1DBt+PRC7h/YT0b/d1NvZDMS0u2M9DSTc72NtrXoXNafsYiP1KZvUyoK159aZ2
         WmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771243645; x=1771848445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kduViMgW1mSAZtgtfFCbkT3EAWTHE6M11C2kxQ8nJk=;
        b=AG+Kc9f4daHSNSCWvyehXN/3Mw7eFeQtW433QleVr7ShWxQVfR5Q0b1NKFcMlnn7cr
         5B4oaM7j7aJ9M21qim+LjCIUye9+oAHa9FJ1N/CxHLEOVw6wgHDrz+LfyD8TpG+ZilAA
         m/qKHJftgUG/Ochbq8akODiGjDQ7wh/c2TyBGM2HOCe7GH71onXQUVFZjGcSof9x2F/3
         Zsj7Hk82knB0KfE5QNXKx+JNDlC/9o/kQoJJ2wHQptdxZsarpVMdzdbYVv6w5fQJV8vx
         N7/DdstqDze7ofRcGp47zmIsbbPKldoaxAea0kZVCa3yjl2v+OcuzvjQqeYKnVAUJMuS
         w/CQ==
X-Gm-Message-State: AOJu0YweOLOjTLkW9bWtppWvZYt++JipxQ/weQANzqpOSxE4ekup9gGg
	hZRP3B4AiqF/TSop6UeqpeWvqjEQ6wFNyz0sf32sZ7FkufghXFO1IsbhzKo1LfH7
X-Gm-Gg: AZuq6aI3e85a/gUf4J7UWJ2wMXic+3esPLBsHMtdL70jeyAYbEweCzNhj5XbajKiO3F
	CL8Gzzn5RevfJeGsjFmzXghyW3MyL7x4Dd/6S3cQOEkvi/BHSjPTDtJas3dxoO/xgekuNCQp9Md
	+1jtfY9hL0/H2QS7qrSl7b4VOBiMejqFT1hySvK/oV2lMdVxgKghhGjx3fnM2fbrdQvhpOvLu/b
	sw3dqDMoww7jtlS1Kf02i5kQ4q+gSP/YBVMveLhFlDSx0GkSVQFODSZSrqOAxE/tFPSm408sGMv
	2wAiHW88N76UOVp8sUGbJgE2j8s7mPrsLdIJNKvosnDfPKYoI4qylgokbW9Abww1k10GUsXEeJ4
	qL6/tYWTQYtL4igNgxiQkhx89XZTZot90HsFNf4v9leG8ObE8y201/HVuVr0q26QY0h9bfbbXmm
	4xmWfOIojYX7yZ7F/4vxEt
X-Received: by 2002:a05:6402:3645:b0:64b:7b73:7d50 with SMTP id 4fb4d7f45d1cf-65bc784b00amr2289714a12.1.1771243644766;
        Mon, 16 Feb 2026 04:07:24 -0800 (PST)
Received: from workstation ([178.227.214.62])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f0d09sm1867098a12.25.2026.02.16.04.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 04:07:24 -0800 (PST)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v2 0/2] Add Xiaomi 12 Lite 5G (taoyao) device tree
Date: Mon, 16 Feb 2026 13:07:13 +0100
Message-ID: <20260216120715.3432191-1-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-265718-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D71E143368
X-Rspamd-Action: no action

This series adds device tree support for the Xiaomi 12 Lite 5G (taoyao),
based on the Qualcomm SM7325 SoC.

The display panel model is unknown, so bootloader-initialized
simple-framebuffer is therefore used to expose the display.

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
 .../boot/dts/qcom/sm7325-xiaomi-taoyao.dts    | 865 ++++++++++++++++++
 3 files changed, 867 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

-- 
2.51.0


