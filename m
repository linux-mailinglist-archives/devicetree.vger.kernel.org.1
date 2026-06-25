Return-Path: <devicetree+bounces-315585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VIOyObL5PGoYvQgAu9opvQ
	(envelope-from <devicetree+bounces-315585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:49:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B57B6C465E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:49:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kft31trA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315585-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B8FB311530B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82794386568;
	Thu, 25 Jun 2026 09:45:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DFD287259
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:45:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782380707; cv=none; b=uQNXfL3pPKE7hw7Dk8wAgR7nvM3wK3qTeY7tnqiWFo2rVifaZUn2NJSb6SXYOYsJS57U+mcabmn7CDvifyuD/CLODnrD7subuNZtbQ5a9FfyGy/pVQRu7dJ8NvHS1zvOuL5LFqhrvrAkI3Q2f7bmnhErTMvf5vddaFSJwwkO0UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782380707; c=relaxed/simple;
	bh=xzXCpNn8k2uKryu96PqnMaA1WoxyVAdEv3c6jZ2QYYg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DDhrQ74VA0LfLsLCklcPbnQUTdftAUlZ++keGzczuZ4kMd4rbQxmO5sYwkiUHdo6P789tAyqBp1NmaOFCZtxmRJhGtiSxJc1t7QuxNHVIGXGqLL4jO85NaSUvVBQOTpm9aiVCjczgr+eBcaEiVKkJfPgYQDLWNsE/BkEojdghww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kft31trA; arc=none smtp.client-ip=209.85.216.43
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-37e00ef16ccso124339a91.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782380704; x=1782985504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zG+ncOED8kJvI4v12/W3LY0+BgurY5fCH2pouNtIlDQ=;
        b=kft31trA/7AdswB/AurdwejphmPRWVBLm7CypEAAspSCdI/sBvhq2x+0254gN5qzpC
         U9jgLJFY/iC/xBmhrQR+SQpnC3ZGRgwngiYkyOubfmsQkq54SYX8T6HIBs4zFGV8S0GB
         T/PhmN77GQ4KtvbGp4wznRSQvITSLU0elMMtoc6Do3omSv+ju3VWLATFMtyX/wfsU9AG
         JE5GhIqHRU2Yi2bDAWgn/PLeOaKg5NBnnQPgVCFgZXJVbxsMLPMV7ZcDUWcfk0cYge/t
         XwexasHA903wIRXeHEQYHb7W9qlbEFC+8Hpk7zgfAYfqBZVUhQWMWepF0YV4jZD3v7sM
         HZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782380704; x=1782985504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zG+ncOED8kJvI4v12/W3LY0+BgurY5fCH2pouNtIlDQ=;
        b=ImuLiKr/QomOFuzpaZiS1nEZzpLrTluTMWfP67OGV8XTNDQWlsdxXU5PQAPurYlbYM
         +EOEZ35RAlYnSg6yKCwR+d7pl1jMl5NOVUBvvKLJO/JGNTr40Zahtn8db9fnGLl2tY7d
         8G8Y/s7tv975MzDIOSVvwP86IgPErVohDyDy5Nun/DU0ibi2uHuOlhbpz32C7U+BSQRR
         XzaQ4FS3vpUy8QHYALsurpR8b3/7zK+wuOuYqiNGZYHdyKKdCemM0MKmRcdWv93/oxe3
         96dbHMmGLNrw33n7a+kZM8RgQJcj884XcO2MJvwt0eXyGIoWX8cUDySsBjw8Y9ZOFYE9
         mdnw==
X-Forwarded-Encrypted: i=1; AHgh+Rr25tofYkJLqT7Srdx5I0LbLWrjD06ItewzdvXlPLf7qtGxiqWlomgu6KvWeJOK+J4KKM/WGIOaVCxh@vger.kernel.org
X-Gm-Message-State: AOJu0YwYwYr/4pIAcMh5CHCNTm4KGZir5rS6/nGKp23dV2IGkUXbiO6o
	ab0e3kuox35+6dV6J2iVrTGKJ8JAyjITgVltZ98/3hCyd9iBYiexZV7t
X-Gm-Gg: AfdE7clv6Bk6xNSzHcxKuvy9LTORe+BIbttGEL5hFJMVEg0gdPObpulsZNDkWHoUlsT
	zc4/Ky/NAuXqT9sZc67dhZOC5ahEXw1Xm8y0xfgb5MyWz/E50s2IOpQGDLB+MuXr9Eg496XAqoZ
	GKy908OcPCGenAwGSmkIWeUCJGBmWBHYRK+sAJ7nIoGpyKwRYl9uIc1yt4L2ICvh7KLALRhc4Z9
	C+3ZymfIz3d9fmmq4KGqmoaD/8HGpMm4NIK1CwtELHGLQ2vtez9XWB+lIO0UFS3FxcJQQ+PBQNx
	7fAK8QokxFNwfdgsVaseQGiL8PYxtLhPgzzqZTi0XacTVvhZd3YypcC46tc1r5gS+NGmDOSLxyv
	W40Aes2QaKoWGrggh6vG5inWgf89ZhkB6gadTIlNWYzNHVvpDuMNr40bwdrkNJiaURpFiolkNpw
	DcpW2S9r8O+tTsmbRSGDptWHJuP48+rl9Kkm8XNgIQZEvCXTSXEJuqR5V1w648KShdhhKhK6Lxt
	w==
X-Received: by 2002:a17:902:fc4b:b0:2c7:e318:1d86 with SMTP id d9443c01a7336-2c7fc6545f7mr18443535ad.1.1782380704007;
        Thu, 25 Jun 2026 02:45:04 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f5ac8c26sm16614995ad.1.2026.06.25.02.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 02:45:03 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: zhengxingda@iscas.ac.cn,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v5 2/7] drm/verisilicon: add register-level macros for DC8000
Date: Thu, 25 Jun 2026 17:44:44 +0800
Message-ID: <20260625094449.708386-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625094449.708386-1-a0987203069@gmail.com>
References: <20260625094449.708386-1-a0987203069@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315585-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B57B6C465E

Add register-level constants needed by the forthcoming DC8000 (DCUltraLite)
hardware ops:

  VSDC_DISP_IRQ_VSYNC(n) in vs_crtc_regs.h: bit mask for per-output
  VSYNC interrupt bits in DISP_IRQ_STA (0x147C) / DISP_IRQ_EN (0x1480),
  which are the IRQ registers used by DCUltraLite in place of the DC8200
  TOP_IRQ_ACK / TOP_IRQ_EN registers.

  VSDC_FB_CONFIG_ENABLE (bit 0), VSDC_FB_CONFIG_VALID (bit 3) and
  VSDC_FB_CONFIG_RESET (bit 4) in vs_primary_plane_regs.h: control bits
  in the FB_CONFIG register used by DCUltraLite for framebuffer enable
  and per-frame commit handshake.

No behaviour change for existing DC8200 platforms.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
Reviewed-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
 drivers/gpu/drm/verisilicon/vs_crtc_regs.h          | 1 +
 drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/verisilicon/vs_crtc_regs.h b/drivers/gpu/drm/verisilicon/vs_crtc_regs.h
index c7930e817635..d4da22b08cd5 100644
--- a/drivers/gpu/drm/verisilicon/vs_crtc_regs.h
+++ b/drivers/gpu/drm/verisilicon/vs_crtc_regs.h
@@ -54,6 +54,7 @@
 #define VSDC_DISP_GAMMA_DATA(n)			(0x1460 + 0x4 * (n))
 
 #define VSDC_DISP_IRQ_STA			0x147C
+#define VSDC_DISP_IRQ_VSYNC(n)			BIT(n)
 
 #define VSDC_DISP_IRQ_EN			0x1480
 
diff --git a/drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h b/drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
index cbb125c46b39..67d4b00f294e 100644
--- a/drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
+++ b/drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
@@ -16,6 +16,9 @@
 #define VSDC_FB_STRIDE(n)			(0x1408 + 0x4 * (n))
 
 #define VSDC_FB_CONFIG(n)			(0x1518 + 0x4 * (n))
+#define VSDC_FB_CONFIG_ENABLE			BIT(0)
+#define VSDC_FB_CONFIG_VALID			BIT(3)
+#define VSDC_FB_CONFIG_RESET			BIT(4)
 #define VSDC_FB_CONFIG_CLEAR_EN			BIT(8)
 #define VSDC_FB_CONFIG_ROT_MASK			GENMASK(13, 11)
 #define VSDC_FB_CONFIG_ROT(v)			((v) << 11)
-- 
2.43.0


