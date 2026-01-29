Return-Path: <devicetree+bounces-260709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OORhMZjcemlE/AEAu9opvQ
	(envelope-from <devicetree+bounces-260709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:05:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F21AB995
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6CCD730028C4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 04:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C8B1E5B70;
	Thu, 29 Jan 2026 04:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kgY5o0SF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202891A267
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769659540; cv=none; b=PT7+C0k6VNtt5KWQUlcg2fvUWgBtlsfNol1qHDS4w8a5t6WJ8hzarmSEvAETnsp1AReCEJVe1nhsTdSq2yE9v6yssLcT+iFc4BSyIX2gIJhu/CftR8Or4nvq71bZk31cIV+ltRNZa4+45siOo+r67ohuo4HWFmX2Kkj5SX728Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769659540; c=relaxed/simple;
	bh=8YkN7w7/Q/L0KLseV2Nr3UoryghRbEisjQVaYgrgTBI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CB3z8RMFa9HdVmGWZiae/Yu5OnC1gYlahXOzIIohUuQX45snQJrGTiwt03W7RRX2OzfvIsLR1dY3dOaQW3+GDCVspWrzvDPqZCJofyCuxxt+HWxR9kbY6nGhaEuCaZXj2EijZuDsEGTCxJbhTemUjd/VIx4mSjERdR+ovVgjAAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kgY5o0SF; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c648bc954c6so197378a12.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 20:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769659538; x=1770264338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GAPh78XXAIfxfDgXO+YnEHKlcDWVZdI7PWnVmQSgPQU=;
        b=kgY5o0SFbgXYHJtgzp76HnsSKy5CvXG4vbVvphvojEAGJRulvgPdNid5Aznu8hw80k
         G09cNNWFvsI8XoROSi0JcGVMovSsz4RtO3CGPYjEIP3uq/1bdFN5KpuzmansZ2rrxGW+
         wNOSdRkb9Yar2mTPbC5fB5n70LDSI/rhOGKsU370Omm/PwspmxUcr+Ynbp48yTwdgHH2
         xgLAy7PbGKcAtzeZg+wXH9ec8dHa1gUvgNBWkM8R9ajr0x84+BWkhVnu5FEiF8RIZmts
         SCvHQ6wzVuWSYaIoyFyORI5vNPM0iGy91sJbBeQd3m2mZrXD3WF0lIsh/xUSz1FoLzm/
         qH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769659538; x=1770264338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GAPh78XXAIfxfDgXO+YnEHKlcDWVZdI7PWnVmQSgPQU=;
        b=K5L6tA1Rki2znfXWzPVOTjp5fhiFfMknVBElrCUHWAmW+1TVS81YzWl40slw2Fi0aA
         DZqn9KEX4Ty32zsgpobhm7onn03uTb1es3nmG8kTr8ojFBqMM1gMKyCtFJU/isHqV1aY
         sTodHchdROgSy2S1FIy0CFEB77/L++39lIXT1C9MB9nIVaaizr1d271mbm5LuYsF/dJq
         pksoJ94jMxFD/sDUTsTHsCwCq/nSp21Yss0Iq7FrKVxSmIyqoE+I1b5SMhAC0M37fcUA
         UIeoI6qNaUOUu3kp1RnAtw6DnAel16eL192QBatSZbQqsQKOpp3lkepzsebwDkJlDrLQ
         cytw==
X-Forwarded-Encrypted: i=1; AJvYcCWKpseYAYjS4k/KzSKxOkZUmW2oZ2c8WN9ll+GL/Il3+X6Db1lDBJCGpWXrIDr9hUbokbLaOt7CrQzD@vger.kernel.org
X-Gm-Message-State: AOJu0YzAxtiy8i+F4q2q39JeDtIFO3XHhr4ueQPPfo1HJW0gPjoa1nw+
	bjaCVV2yih3J72uuE1//IRpOEj550sOl0VO80/0t7pMhfIzlxlG2iLPT
X-Gm-Gg: AZuq6aJx9/PsKDI50uJv8NWgxocKITEF04BcjwSwDsDqDt7I4XikWCST++knwJDlnl5
	q+Su/aw79POkI0sNmm41do4F+hibubYCM/ot2XK0tb2dGqIFRWbJBbCSGSPsgmj+E92gAY2E5dA
	sZl0imnw4PRVAy618vKthuaBAQN6VwNAylyCjUjQmJv2GfWjYBWDfZWNxo9/SzI8HY3R0VB2lvg
	ZUOT1HHIXKkgGmqTvKRZ3i8oOW4cbL8Dugo0dGF7u1aFwNtNpW5cKj4ZFsJ6Lh9JzHtxSryRhwG
	3wsMGrk/hMwnJXISrjEYGuikTm173zGlY4MBkJP5NGrAlE7ZKxPXAow+SjZdIDSyz1ap75GPWHK
	KQYWowSI58clLd5VgMngCy8pDfNrT6dZkxmEuwIUPTZH0Mlr/AA/apYu0nrN/oozvu/5m2ojmsh
	gK4y8iEH4/0BIZQwv1jIhKdnHcL4cyvsXyiIVBkXUKByE2zCVMuvI8yUOrG8NoU9XIJu+FGOhgu
	8MRHMF+UZs=
X-Received: by 2002:a17:902:ea01:b0:29a:5ce:b467 with SMTP id d9443c01a7336-2a870e0490bmr82121145ad.54.1769659538253;
        Wed, 28 Jan 2026 20:05:38 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c22672sm3857721b3a.51.2026.01.28.20.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 20:05:37 -0800 (PST)
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
Subject: [PATCH v2 0/3] drm: nuvoton: Add MA35D1 display controller support
Date: Thu, 29 Jan 2026 12:05:29 +0800
Message-ID: <20260129040532.382693-1-a0987203069@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	TAGGED_FROM(0.00)[bounces-260709-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9F21AB995
X-Rspamd-Action: no action

This is v2 of the Nuvoton MA35D1 DCU DRM driver series.

v2:
  Driver changes:
  - Drop custom CRTC and plane properties and switch to core-supported ones
  - Switch to memory-safe DRM-managed allocation helpers
  - Fix several minor logic
  - Fix W=1 build failure on non-ARM architectures

  Device tree / bindings:
  - Fix dt_binding_check errors in the YAML schema
  - Update DTS/DTSI files to follow proper hierarchy and port modeling

Thanks for the review.

Best regards,
Joey Lu

Joey Lu (3):
  dt-bindings: display: nuvoton: add MA35D1 DCU binding
  arm64: dts: nuvoton: ma35d1: add display controller support
  drm/nuvoton: add MA35D1 display controller driver

 .../bindings/display/nuvoton,ma35d1-dcu.yaml  |  73 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  56 ++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  14 +
 drivers/gpu/drm/Kconfig                       |   1 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/nuvoton/Kconfig               |  21 +
 drivers/gpu/drm/nuvoton/Makefile              |   7 +
 drivers/gpu/drm/nuvoton/ma35_crtc.c           | 372 +++++++++++
 drivers/gpu/drm/nuvoton/ma35_crtc.h           |  67 ++
 drivers/gpu/drm/nuvoton/ma35_drm.c            | 371 +++++++++++
 drivers/gpu/drm/nuvoton/ma35_drm.h            |  48 ++
 drivers/gpu/drm/nuvoton/ma35_interface.c      | 193 ++++++
 drivers/gpu/drm/nuvoton/ma35_interface.h      |  30 +
 drivers/gpu/drm/nuvoton/ma35_plane.c          | 603 ++++++++++++++++++
 drivers/gpu/drm/nuvoton/ma35_plane.h          | 115 ++++
 drivers/gpu/drm/nuvoton/ma35_regs.h           |  88 +++
 16 files changed, 2060 insertions(+)
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


