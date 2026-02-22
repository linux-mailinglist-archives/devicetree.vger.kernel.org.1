Return-Path: <devicetree+bounces-267171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNVtC60Wm2nssAMAu9opvQ
	(envelope-from <devicetree+bounces-267171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 15:46:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C7B16F712
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 15:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 634B83010536
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6B22192F9;
	Sun, 22 Feb 2026 14:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fvTK7EIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBA4946A
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771561; cv=none; b=nqbjp8yA3/tAj/oIW5OLwWhBD883WiajVgqLlJI0nLw0iv6S6kjH1BIVBIiqYGb8Hf0qikbn0gQ7Bu7Wj6tKdYq8hjNNSDwjWyTjNW+O4Px84oXH+2ODDkvPwrk638ImXf5s/vRraSBDHfN2mX77Px7jz5ocsF9diqcscElHSB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771561; c=relaxed/simple;
	bh=9UfKlVAp4ugnHSqzVIbXc0r+hY2yaXgys6+bbyWd7ZI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RitF6O7bkNFXjE+0t+muJI3q5W4Xbi+dnu88mTewYI+7UruT0b8wqZAWlMWFq8AD7BERCHKc9Av1A1+CBZA9B9Y+UUrS0KZboEY0v0v1z9SMmNqFqKzSoLDr7+3JLEfJgflkETQN84pAUm9u/rwkt4+2hcFmjDlAwvo6qjqek7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fvTK7EIk; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso1249737a12.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 06:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771559; x=1772376359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fM+Dr/5jTilIDrdDzgZn2PhlnWeOYCalUbLR/eM+jb0=;
        b=fvTK7EIk6mQ8CY9ixHrVO45v9y7Mpt4P4D5OQRvSE9RQB90BKXpE2BBBgpOcHlcsM5
         1J7j0QZ0wCbspt3qdXyFOV76nOLpebhEVlv53iz4gFcA9/1QsI5WjB40Y4eD1CC9evVw
         ruXMqAdnTOfzzIgMaTzua9PJeWVx+9s7OKhNOg/oahIRb/BicFn5corZjaummh3sPTa1
         xFJR68r/O4HyIBm45CbGPr2G+A8PJXePT1FULTVQeAIv7+pizhEDmMwq8C+KyNCQl4qs
         gdHEQ2NHkY4Zvfp9cdOgF9fN2naqIJkdJIyzKiEzLboF28e5418xwV5f6tr4DlxFno3O
         iqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771559; x=1772376359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fM+Dr/5jTilIDrdDzgZn2PhlnWeOYCalUbLR/eM+jb0=;
        b=Wdo7gR+I16dVKtRJMti8DnKY5XNvMWRFx0YS5C5JQIzU4V5WZFhkxkua6GV0uVy1A8
         7PXCUSMSlj34KvomLD3PDF7cvJTAJ7M62HcgoNoXG4/k5ewY4CPqYjw1PkWU8cbK6KDn
         1/AGgEEQuFhEg2JIaSIK10YH8qqhjJ7ppwftLVk2KJNGB6qr4zs5gBECYzbbaz8CIoCI
         mf5c1IfmboS6RJHAyGBByvSk/HgQq3YL4NYRidvHcoqUIFqfRNVFwNA1A0VvJLZlqhSG
         QaIWH4RPXaimW0Mv289SCdSWSdV++75kbP7JmTcB9Lig6zv2lEDotQx75mRA85VcOxGQ
         e+cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuDNAyavKtfVhG6v8o75IuwLfgAts2ACXEVXD7mLdEC6pLaqqYYIMZIP/eoSrPIElyhRUutgWCdyZx@vger.kernel.org
X-Gm-Message-State: AOJu0YzGAHjpP+Bib06dlZFUbdhZuC4Qtj4v34lOBvHM+MRpNp4IpQCT
	w+9VK5aUo3fT1eDX5APQplIYp4x7vjOxOVsC5ffIvHsB81HO2U7iWmXs
X-Gm-Gg: AZuq6aJsbqr0Evkyj0ABJCNQT5DDMWjsyglIHC3nt33trHIgmZaCJkIfdqDtxiaHmWi
	B2X9P8AdOA5MuJLiWL/3ZXnMjKVuuXgAItiSNvtt+1xIOBR5yzdRDCkybj0UMLF+UGDyxR9zTTw
	haua92h3zTeoZRhRPbP2EuaTNDOmnNpM7sAb3SbW3TTJw53dsZ+m9e+Vf3ghZBvJyf7FvykURVk
	G38X2PPM3DYKStXyHL3m9E0Yoj1q0D9psHNLPJuXOe29hAtwh4YD2b/OLnKkCefkHgt3q3P+4+f
	0uso6HGe0YLxX7KKx1sgleyd2U2hOVfaJ0AD3Sg8+ocYEE4Nlz0Hl5zbvLv+sqMY+Zu2mj/lJWQ
	7R/rB/J3WgxIBykzOvA0GmH1cL42ixWn+iPeHyJzp1+QIX43fJPnGmb9QEZGp5kqKLaygz4+/8x
	OKxHngJ4lM68ANAjJeYhhlbW5/8GP7p45ZLpwm9eoxmSCQWaenZ6p5SVdYNzsKAU0=
X-Received: by 2002:a17:903:1212:b0:2aa:de7e:efae with SMTP id d9443c01a7336-2ad74595a34mr59550965ad.53.1771771559436;
        Sun, 22 Feb 2026 06:45:59 -0800 (PST)
Received: from mm2dtv09.. (61-216-20-61.hinet-ip.hinet.net. [61.216.20.61])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e17esm49138205ad.51.2026.02.22.06.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:45:58 -0800 (PST)
From: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
To: robh@kernel.org,
	saravanak@kernel.org,
	kees@kernel.org
Cc: tony.luck@intel.com,
	gpiccoli@igalia.com,
	andersson@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	c.s.cheng@realtek.com,
	Kenny Cheng <chao.shun.cheng.tw@gmail.com>
Subject: [PATCH] of: fix incorrect device creation for reserved memory nodes
Date: Sun, 22 Feb 2026 22:45:07 +0800
Message-Id: <20260222144507.1736070-1-chao.shun.cheng.tw@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267171-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,igalia.com,kernel.org,vger.kernel.org,realtek.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoshunchengtw@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 60C7B16F712
X-Rspamd-Action: no action

The current global search for nodes in reserved_mem_matches can find
nodes outside "/reserved-memory". These nodes might not have actual
memory reserved (via memblock), leading to drivers (e.g., ramoops)
accessing unreserved memory and causing memory corruption.

Prioritize scanning children of "/reserved-memory" to ensure the device
is backed by reserved memory. A fallback is kept for compatibility.
Proper reference counting is also added.

Signed-off-by: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
---
 drivers/of/platform.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ba591fbceb56..785ffef48c08 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -563,8 +563,17 @@ static int __init of_platform_default_populate_init(void)
 		 * platform_devices for every node in /reserved-memory with a
 		 * "compatible",
 		 */
-		for_each_matching_node(node, reserved_mem_matches)
-			of_platform_device_create(node, NULL, NULL);
+		reserved = of_find_node_by_path("/reserved-memory");
+		if (reserved) {
+			for_each_child_of_node(reserved, node) {
+				if (of_match_node(reserved_mem_matches, node))
+					of_platform_device_create(node, NULL, NULL);
+			}
+			of_node_put(reserved);
+		} else {
+			for_each_matching_node(node, reserved_mem_matches)
+				of_platform_device_create(node, NULL, NULL);
+		}
 
 		node = of_find_node_by_path("/firmware");
 		if (node) {
-- 
2.34.1


