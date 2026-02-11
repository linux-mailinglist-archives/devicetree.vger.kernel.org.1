Return-Path: <devicetree+bounces-264811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EB9OD2bTjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:07:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2928127091
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 919913023DFD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF9C34C124;
	Wed, 11 Feb 2026 19:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HfFNO16d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF653303A35
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836787; cv=none; b=tCQjoTqeAsnuxOm5wDOc45veq2dOncd4IYGuIdmoOmWkxjjAJoJlRIG0YC6f7ERoc0plzzM4f9ZahZ+VZXhU+tPKRmwxrMdhymmY+0aD/Gm3X1r5O+YFKtMs9gRMtl7kKal9msk9Yvd+K2u63HIlLddCBuOkzXRHNc9Co4/1UWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836787; c=relaxed/simple;
	bh=vOdoNSHeU8HDREeROBUKfe9mge/JeURRdscf/G0PnMA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fEnhMchHCfohKQlG95vjjFNLkywXDYR7Jxy4qylWR0DcMWAP7ApcY6hjvVRB2FV/LPgZ53aHyyD+kTD/BMhOSWtapMMlIeXQqnOYEDkFT3DPeWk5xfRCyvry0Gw5S5Je+P20tn7qMx9xGgn+3bi6vjF/3/r/RGT0xoVDi1V3U54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HfFNO16d; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43284ed32a0so4916685f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836784; x=1771441584; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wNO6bVNJCn/Dz1MOj6U0INT3b54Rjg4i250hi3XxYk=;
        b=HfFNO16d7gVfonN9fBpzcxAhD0gg81IBBEEBJTviQuPfXVVO8aIuiHCY6iTD7VYwx0
         e3fuOy5ld8jPDGNFZZz2izDPgBgdSTBhwY/XVyC56Vj9dTg5JqM3T7BkFrjk6V9d5AXo
         lBXowwuD392etKfSIxemezZEA2VJgkgPMzYYTuGBfO533U3A7FS45YYzhjB/m/3nxzif
         Zsoe7LJGdaWClDiAgd8DIIzYHgE5WvPPjNq9I4rBOFtWZCgOrCAml3i2fKaynqhG7/Ss
         s0jtupt/0ywO9Asw35lDXnF5+xPvxw8fQoW0lIxLDbQV/6dDlVCQZ81R1aYVxAkZE37w
         wiOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836784; x=1771441584;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0wNO6bVNJCn/Dz1MOj6U0INT3b54Rjg4i250hi3XxYk=;
        b=Mu80uokQQ1JTSf5dYXTZTxSXt6nKHB0h/5Auxy6U2zwUGlERys+SHTn+3KLW26y4Ks
         A44O5YbE3zJUV3F8yuwtdlFx+0JCZ4FzQku46uz/eRBlgNwbpHfKcry18Tw78sviHrAO
         8/QDQ3yOSicaOZn+PwTF++TVDTl0iCYl+bri+FQAPdUgzliwDKS0TIQRpZx/OtLKa/zp
         xXWNKUqobnWX2nX4OtZgujLIkqMn9jRVLnU/6KFFevAJzoV39qRWhC7lh8BpgYjgNx+m
         /oBw8ii3TMTxE6NFgGH1a9Ko86/ZU735EMWm1czjr46IzCZsQEORLik9NYe5g7ngV6bG
         Z31A==
X-Forwarded-Encrypted: i=1; AJvYcCXSiRfxocBt8B1MBE/MSzxlSnr1Zv9cZpVlnv92ZzIfqaqZv23rPV2s66Kfy05haLj+3/XCdDtrjN/6@vger.kernel.org
X-Gm-Message-State: AOJu0YxkwLWwJ1Ly7XetLaTp8iVpyejUhyw1LebQlQRHhlacoy79bFp8
	I6o+1SRpZYcFjSwnBW83VdseTGJKl7pS/aj6p3vDRztGfA0b09UHI+IF3kE80JmU
X-Gm-Gg: AZuq6aJpgrkkYoOFpLc3/zlrqKvRq28uo0IayoxLoSlzqj8fsHbxnjP55f7vUQ6ZFC2
	fvnFOyclcPgY/fkqK+CG7+QGToSQf941tNK57BjJbovmQXFHlMbHgfrckj7vDKi/TAUHrczLw1y
	SYIZa5lbVXcQvte2Y+LZgh0eLxM6qme1fjXVqRrsPKachRPvr1jvNq17NRNUmybwbRQuxnqpAE3
	tdmhacG+BHZXqXcl8st6x0ziv7cE9nJQoAVZ039jICDFcEILWreVVv82FZ1ZNRZHXYfc9i2A/WD
	XTzWbTn0XkWJ9lxgGtJgW2fVXUFQWXGR4lzdymwkoZdUoH7e3/4orOeWLHMv1JAgknJvSIOhu/u
	l6Rt7WVMBK2Nd0P9QvklNjPl37lUU7pdQ+/ervHZ2WvywKUQvNvb8zABoQJpjaRB3t3DSMj/H0s
	HceugodDDSudmvaWRDoPE=
X-Received: by 2002:a5d:5885:0:b0:437:719d:a740 with SMTP id ffacd0b85a97d-4378acabd4dmr760888f8f.49.1770836784090;
        Wed, 11 Feb 2026 11:06:24 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:23 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/7] dt-bindings: mediatek: Add reset controller constants for mt8167
Date: Wed, 11 Feb 2026 19:03:23 +0000
Message-ID: <4786b688175eed89b899bdfd7e72505cafd7c3b0.1770836190.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1770836189.git.l.scorcia@gmail.com>
References: <cover.1770836189.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264811-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D2928127091
X-Rspamd-Action: no action

This file comes from the Lenovo Smart Clock kernel sources.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 include/dt-bindings/reset/mt8167-resets.h | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 include/dt-bindings/reset/mt8167-resets.h

diff --git a/include/dt-bindings/reset/mt8167-resets.h b/include/dt-bindings/reset/mt8167-resets.h
new file mode 100644
index 000000000000..f77c2ca897cf
--- /dev/null
+++ b/include/dt-bindings/reset/mt8167-resets.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause) */
+/*
+ * Copyright (c) 2015 MediaTek Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT8167
+#define _DT_BINDINGS_RESET_CONTROLLER_MT8167
+
+/* TOPRGU resets */
+#define MT8167_TOPRGU_DDRPHY_FLASH_RST		0 /* reset ddrphy and flash pad macro */
+#define MT8167_TOPRGU_AUD_PAD_RST		1 /* Write 1 to reset audio_tdm_in_pad,audio_tdm_pad,audio_fifo */
+#define MT8167_TOPRGU_MM_RST			2 /* Write 1 to reset MMSYS */
+#define MT8167_TOPRGU_MFG_RST			3 /* Write 1 to reset MFG */
+#define MT8167_TOPRGU_MDSYS_RST			4 /* Write 1 to reset INFRA_AO */
+#define MT8167_TOPRGU_CONN_RST			5 /* Write 1 to reset CONNSYS WDT reset */
+#define MT8167_TOPRGU_PAD2CAM_DIG_MIPI_RX_RST	6 /* Write 1 to reset MM and its related pad macro(DPI,MIPI_CFG,MIPI_TX) */
+#define MT8167_TOPRGU_DIG_MIPI_TX_RST		7 /* Write 1 to reset digi_mipi_tx */
+#define MT8167_TOPRGU_SPI_PAD_MACRO_RST		8 /* Write 1 to reset SPI_PAD_MACRO */
+#define MT8167_TOPRGU_APMIXED_RST		10 /* Write 1 to reset APMIXEDSYS */
+#define MT8167_TOPRGU_VDEC_RST			11 /* Write 1 to reset VDEC module */
+#define MT8167_TOPRGU_CONN_MCU_RST		12 /* Write 1 to reset CONNSYS */
+#define MT8167_TOPRGU_EFUSE_RST			13 /* Write 1 to reset efuse */
+#define MT8167_TOPRGU_PWRAP_SPICTL_RST		14 /* Write 1 to reset pwrap_spictl module */
+#define MT8167_TOPRGU_SW_RST_NUM		15
+
+/* MMSYS resets */
+#define MT8167_MMSYS_SW0_RST_B_DISP_DSI0	22
+
+#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8167 */
-- 
2.43.0


