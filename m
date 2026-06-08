Return-Path: <devicetree+bounces-307933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q83ANTcrJmoOTAIAu9opvQ
	(envelope-from <devicetree+bounces-307933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:38:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1161665246B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:38:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MCSFQVTy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307933-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307933-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4507730590BD
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF5F31AF3B;
	Mon,  8 Jun 2026 02:33:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06043191D3
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:33:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780885982; cv=none; b=bOLRPhYH5TRU19+BMkaDZAAIY/K4RIH/r/SKDS0qVo5YSFEwpJEA09IzH0U54uRnD1ABUy4jOFHTRXkjx/E7Rl1LcuxrNxzP2Cne4AimujzOsyKfUkBQPvrBrlw0qO+Azx9eir4n9GtK8mX1Jkkoblglfs8js4Jd/lHPb205GoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780885982; c=relaxed/simple;
	bh=++CKghhbrQtUPRbNbH05zSCL2GLQP0/kbTxCcyZXZAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EC+LxN6kR9KFvDaL3OqRizA8IKOmnxoildOpGbjOUP1imcyf2FvL1JzVPfD9QTShk9UikumS4e2vOoLvb+lwiCdK/xkJZI4Kq1lYmaYDmuVKDA1M9x5y6w5kk2Wh1pJum+vDqwlgkZas0vIpLtOFTZAHYmhlLm/V8FuNkKU1FbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MCSFQVTy; arc=none smtp.client-ip=209.85.214.172
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf125989f2so26422365ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 19:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780885981; x=1781490781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j20V0GuPV7rBgGUjbhfpY7XnYJHwynd15A65eNviT9Q=;
        b=MCSFQVTy2oc7efnozeKvKxFjaoY0JLxdHqCWA0iZpoTVGbESFxjrG4Tf2MacgpiAbs
         D191tlOsvWgZaMohQ4ogAlDIipKJrt4OxzOu8iyapNYVD7TNuOUggY0FI41zmhzdgiYd
         Mh0zZnnlw5fAOH+wo+teNcF2kLdgszeifFYJ+x2l7dySsmimtxVQOqrSANIdsFeaBY0m
         D6Bh72TWA6yHXhdPANL9vBOjKLPUd/OydX8xblRXwX5iUTwOWui7LuqgJA7QoYPQgUfY
         ta3PfYffrEKsmkkfLmtbtDi6L0ab5t27/gYXqKCzdolO/0bf86VZspJJOusI6zpdw/NQ
         P7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780885981; x=1781490781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j20V0GuPV7rBgGUjbhfpY7XnYJHwynd15A65eNviT9Q=;
        b=pZO/9BjPUlEoHXV62nktzf/eNrsj2DExPZk6MHRfh0K86J/6n/hV/j6REE0e5cSmOj
         4IIjVzXgo87p+S17pToUmeAhGTGioS7e6dSUcr6Kd2TY2Hxjsntp2cSQTf1WSsaMH2vC
         WzBA5/aJfsEzbkewh1rrsRXumZNA56L/KONU7kN/mC/Kx+qdYZwEfoVKicEiq4C6rZCf
         3RT4Ump0UL+5U87Wf6vYjfClktD0bkd7gS6c2dk9w7wwNvi/2umuEP7G1FPmtzXJBCt8
         eTHJRCTViRAZHtLfM+yxhnjXlMg1kZSG/IPi1Mpjbqmm0u1WRoup67tADVwwmXmT90Eq
         fjXg==
X-Forwarded-Encrypted: i=1; AFNElJ+bU2CwZDVvsy/08Dz8V8QKTZ3z1DI5TNWNc96wc6URyf6XAD4JV1JwVg8BUxODNCyJRAVBD/Z+Zv4p@vger.kernel.org
X-Gm-Message-State: AOJu0YzWmJ4DxdidQoncXd4IF2dmfuiraan4ErBV5btAePZSBcCL1tk1
	yOHTy+9PX2e7oodWWtPb7QQTum0IqVK9ePFCGYnU0z9DUeLqIe4VxqIG
X-Gm-Gg: Acq92OGaSGkdUHjBSUQFwF4Q1/G1AtcAXsNdudq5bw7u0P3c65CjH58JSnh0tCRe3Lj
	5c4IyVtXR/jBjRpXzDsPcjZkzHGFJZ1DOY+JiRA8WePhQgGDWCs/GWRumaPE4XFf/36NWeCjyo7
	J3jTmMkLMJ8cImfzBxl1fqdjnhoXG0epYJ5+QQAZcroUvHHdQlnE26PTlgZzzdf/pFOIsdswBB6
	9YXwBFwFHfYQqk7tBEWLpHixPYzGJwMHSUkvMlhlNLgcNAF+5KQ2RUgUxqG9G5LbrkNJfCGXmX3
	OhOsW8qzCFMllR1lpd8w8s+UFbEK+4Wc7WL+3nM3oGTpcf2QIy05ap9X2HA8xcdN98fxzG9edlz
	4U6gNryHTbIlCN5J9O3zAAlJ1iPO5nYZUU7OZY9E0bk/pZjcjQG4n7Di1pnJvzuDcEtAJxI1V+K
	XFRik97GIWFM6q0YyI9F1+vyEB2YLmtDEC17ZZCtejA5b1h9pQ2JtPC5CfpvkL8trbUxFG1Pk2t
	inQdyqtPtU56UqXYO7nLnM=
X-Received: by 2002:a17:902:d2c6:b0:2c2:245a:3360 with SMTP id d9443c01a7336-2c2245a33c4mr100349275ad.6.1780885981043;
        Sun, 07 Jun 2026 19:33:01 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c245dd3b5dsm38143485ad.81.2026.06.07.19.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 19:33:00 -0700 (PDT)
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
Subject: [PATCH v3 5/5] drm/verisilicon: add DCUltraLite chip identity to HWDB
Date: Mon,  8 Jun 2026 10:32:37 +0800
Message-ID: <20260608023237.305036-6-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608023237.305036-1-a0987203069@gmail.com>
References: <20260608023237.305036-1-a0987203069@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-307933-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1161665246B

Register the Nuvoton MA35D1 DCUltraLite chip identity in
vs_chip_identities[]:
  model      = 0x0   (DCUltraLite; Verisilicon uses 0 for this IP)
  revision   = 0x5560
  customer_id = 0x305
  generation = VSDC_GEN_DC8000
  display_count = 1
  max_cursor_size = 32

Placing this entry last makes it the gate that enables MA35D1 hardware
recognition only after all the supporting ops and DTS changes are in
place.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/gpu/drm/verisilicon/vs_hwdb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/verisilicon/vs_hwdb.c b/drivers/gpu/drm/verisilicon/vs_hwdb.c
index 91524d16f778..7d630a667a3f 100644
--- a/drivers/gpu/drm/verisilicon/vs_hwdb.c
+++ b/drivers/gpu/drm/verisilicon/vs_hwdb.c
@@ -129,6 +129,16 @@ static struct vs_chip_identity vs_chip_identities[] = {
 		.max_cursor_size = 64,
 		.formats = &vs_formats_no_yuv444,
 	},
+	{
+		.model = 0x0,		/* DCUltraLite */
+		.revision = 0x5560,
+		.customer_id = 0x305,
+
+		.generation = VSDC_GEN_DC8000,
+		.display_count = 1,
+		.max_cursor_size = 32,
+		.formats = &vs_formats_no_yuv444,
+	},
 };
 
 int vs_fill_chip_identity(struct regmap *regs,
-- 
2.43.0


