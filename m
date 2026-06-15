Return-Path: <devicetree+bounces-311701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Aj99GhqhL2p1DgUAu9opvQ
	(envelope-from <devicetree+bounces-311701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:52:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC556683F23
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:52:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=U0GXFZU7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311701-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311701-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A9FA3031834
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4BC3AFAFF;
	Mon, 15 Jun 2026 06:50:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66DD3AEB35
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:50:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781506220; cv=none; b=cbB7ltwIV3kBxDczM6koXlmYlwEb0IsReMd02AgYzdvTft8gDVd1WBuHY8Hzon4t0ZVGF6Drw1kRR4MTq0VYX7KIQJPxV11LtxYO9iMSGkGICGCMqlpfhkIsR3IY0mlACbLuOzxxavuA/0KYZIXgWlWBJvbzS1yJtinTyWs3JLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781506220; c=relaxed/simple;
	bh=Gh9vukGG0EkYLgIUTZAT1C0JDx5DzI9vsn6+Jijzi30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ifi0cKBa36FBIiVeYCOFZ8TAGYxHbn0APSASiWWfjNMfCa8x7sDD0me+HiV0vvgX454K9Kqx9A+LXtfc+IfbquescjI1wMaJKYWzyyWa/KNPdqKMNrgZI46UnyJ34Yd/T0isQpgeoTcu5+dyRsqn13TdSQpuDzCHnx7y9kBBGS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U0GXFZU7; arc=none smtp.client-ip=74.125.82.182
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-304d7f31215so2728173eec.1
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 23:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781506218; x=1782111018; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJAMcsXbQ5jLlRv6m7LlcFvxZJca/ceaoDodoBDS/Yg=;
        b=U0GXFZU7C1LMsoJXtJThvBUv/CDyObTPL5wDMEF0h4bPwGJj0GTJl6YbZA45eWJttv
         DV8DYtGx2gY/JW3nsVMSu/fd9MqD6WH0zG7gOm8YUimJmRs0HxvfFUVstxnLiFY9MCxB
         K59dP+j3NljP5Q9Ji8CZvDZGO7kK6AJyvk0gyKKuqbCQh+iPt9YQo3E4G7rYyFOePzB3
         Z7YsRFd8Uj/a4/0z955REhmou1Gbq0Zxf6Z65lqwHCoTslrKd5y8eTJuQhkfsrEqPs4q
         jFPhxxCxVptYiDyCHjbcPEbIwm14MWzpgpOPzNZZnJoIgO03ttEixqeR4b/iXfIIFBbP
         OgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781506218; x=1782111018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VJAMcsXbQ5jLlRv6m7LlcFvxZJca/ceaoDodoBDS/Yg=;
        b=neiAZIY0zO4pgKypAkZIyEnEXPtJdppGWnlP6SWdGA0H7klRm5y/cEtB8RhuuimiF8
         uwks8d/8wTCoSty44tio5rt/ndAcFM8T/2W5z94gQNys/iBHB0ot7sTNQ5DW0vh4fn47
         f9qgMlyL6cA3GzsxQ8KYOZGqzi5E00hLlkVUdMlVmlyclR62fxOBc4/jkF2xT0fhbDsc
         dCy3KP2HaLozozic/2xmmt/B2XGzrDksG68CSzkmB/GfR+uZTPvxG/filzhrWNUOrpdQ
         Y8/exkkONNevpGUq90a1rKsi5Gii1fkh77CGkLW39qPkryZAxXsks+qPu5mgicwxYt/6
         91UA==
X-Forwarded-Encrypted: i=1; AFNElJ8EkwMRtP4Psl4fB/Fl28sgSMdQejw5oKiQZzDOICXeQIoOz9wu6QTDRnrhJk0gRXadJ+IFlQiGCIuV@vger.kernel.org
X-Gm-Message-State: AOJu0YyWqYSq12EKTQ0OwbLToaQ12o7tOwb9Swq/WI4lV/6fjSw+40uW
	CbUJrf+DvYBoazp7/I7hnLFF7LJrTxRbaS/2Q1xjICG5kDSitDNkUmsA
X-Gm-Gg: Acq92OHg5B0E0We2P5SCI/Wfvumb5wv0H/eDZwTp0sWNyKASzqGhXGDeqWS6PPvZ3nK
	CWqP9TJY6qfdt+Y4C1gbcf+oO/L5zY1TnmFUwW11sTjN9m9TSGvV+MkJAG53jT9kpbs2d+exIWT
	aq3JLpMelo8YtVd3uQLSUwlWBRORFfvn95LpGPZU8NNRXZpynIe+DXhe0347UiMNtlQ5eT1C5rr
	zNZ28sRDMpMrN+vJe1yvMUZ4t8WDO6WWQCHVVTX3CJUbTm96m5jvGcb65MuXcpNqo2dY6DxuhPx
	YQkABoEssON9RB1hqfKs3jeNbWkoZS7Hsx0mbYvLjW25BSMglgrRydf5r8I/d3jY7tIN5YbAgNd
	TSnKuGerSs/yw3ckG5OJuQKFuvDb9qBHt7tzWfV6iAuTTEh65xLYZBsu+b/RnS+saBHKZsSjgqg
	YMK1dZtkij0xUjzrFwrw09CbdertIrH0T0XbJpel0y3kU49b1izADINilNV/poq1+Vtv/2LO2jY
	TDRkJRHTM1p
X-Received: by 2002:a05:7300:4348:b0:2ea:ed70:3ea8 with SMTP id 5a478bee46e88-30820098f00mr7010291eec.29.1781506217988;
        Sun, 14 Jun 2026 23:50:17 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081eb9a2e7sm13516812eec.30.2026.06.14.23.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 23:50:17 -0700 (PDT)
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
Subject: [PATCH v4 2/6] drm/verisilicon: add register-level macros for DC8000
Date: Mon, 15 Jun 2026 14:49:59 +0800
Message-ID: <20260615065003.76661-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615065003.76661-1-a0987203069@gmail.com>
References: <20260615065003.76661-1-a0987203069@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311701-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC556683F23

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


