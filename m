Return-Path: <devicetree+bounces-267208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHvcGY2Vm2nN2gMAu9opvQ
	(envelope-from <devicetree+bounces-267208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 00:47:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F422B170D6A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 00:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 338E130175DE
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42FF35F8CC;
	Sun, 22 Feb 2026 23:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iZwiS0YD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBBC35F8CB
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 23:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771804042; cv=none; b=r92X8KgaBb9jVLeY+lk/r3vy2sywEQVEqcIPfhpsqjOsdycc1d+O4L+ZDEbXiB3Z4TmbrjkcebziM/JRkfrICcFg7T/BaW/NZke3M99rVNClsCt4W+ONnTzIvhb50irBje0nDCEL4t/ez2mpvkKUSmuTlSiDXpypqmwhB/fCgF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771804042; c=relaxed/simple;
	bh=gNntrJ8HALGrguLj1UtZemSzkT5zxJ75b7Bp87tqV5c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Db9irqs0mRS/0Rofk/fH5CnB3GmJKcrqbmAi7C5b2LjJEqho93O1v67c2aF1gF21ya/J6TVz08FetZtrIoxcALJjzB74jZUV6F7ReSw4Ywlz+QhrBm4dPf90Ijj9Q5nNRG0Qo3yCTdDHEfUz73RN3YYZice/nfjJeXgxSEG1Pjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iZwiS0YD; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-82311f4070cso2243276b3a.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 15:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771804041; x=1772408841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5FvCHOtEfL1bPoBxFuoolnri1LSbkkHvMPfEITZ2II=;
        b=iZwiS0YDNjonlWHBkEnTvRTl5MuHZ0kstPhA72TEIPiPKexIjrCcyKo0pBrCrcEWdP
         6aYN6ItHdAh9orXT8JFWVUxwGK3Eh5Mhy+xkeDpLtNd23Oc/2qU1Cl2BrlxKXBM8rq5Z
         PRVRFe7sjfps+sDzdtwljVOW1LY1Bw8zALXjGuRbETy2PmOoqAtdYHU8KrxnGc8TK2Jv
         7vmxTZauZWFqqZ1v0i5JdfsQ3yuAW8x00H5a9+Tkjiq5PjmvvLvcbNZlmb6b0kZF8t1R
         7S1Yd3nFzH32OVnNffUkwmAS3fbQWpjoPsrDgJfwB+S5gcaUdhQ13cHYrkAA4ITQ8suY
         +Igg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771804041; x=1772408841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e5FvCHOtEfL1bPoBxFuoolnri1LSbkkHvMPfEITZ2II=;
        b=M6yj9TjI3PERfIeatW8R98AFAfIqrinxR2qANeDK+t0zDLiIeT1aixQSKPeCLWw6K4
         U/ZY7TZQx5iu0biYcCDRLlXoOZ9r84GnLkb86DZu1phvhLORHrX4FS7+KQlkK7avAAua
         I/Tj1M4eWKjS7e9qXeHCkhSdr1QgDB/4aXl8DhnTH2l81qdvP6s8NiA4nQEfUpj75vLD
         iHzYkKU0QXKH34GM/KhOHPZ2VKN5gta/YthK5fFipOyo8FFpwqZefe0HXvT250meO0Iz
         VkeL/6PzUR9LXzm0GgWO8MLxLgiLwYDKggXZUD8tPZEzXCRp2HOT+4SFnN8FH8DZaaCi
         7omQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/23tVU2Vto+rjGoQtLn4TaKxyBK82oT2nlxxgO0zLzFv16Ty6WP/4v5ELV2ObyVhlBfO3iRd1rz/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzaFvxTMU+bvFuqXItIgdU3HR26kbsgvJp1FtUjjDCnmhMnrUQz
	J3tdQYIb8zw+c7DixJ3YnchYIekPWqVgoW7q8ddLjoNE4uSzbAHFcFG0
X-Gm-Gg: AZuq6aImnlaroSRu8qdKScdyQValy1XvW82hYq5i6m/a+1frIk9ItoTxze0cGQzerOE
	cy/VE8vvZxfQ7tF+II5gBMrn9sDW7Zw+NMmYSp8tOdcMkjSR9nH/6/f2OhD+bzCz2zgHQPR9rcU
	MtM5LyLliuMemy23EgiVpnsw1M4Rg4YQhzdBLW6z6tFduOXxKs6CMliCrgDU8rRT3nchMvo0dp0
	gjUtYeabXsjkWyziIOgx6ic7GMK29uhv5AiqZyzqcBXK8X4FqfMORXWunmQZi30mjjEpEIk3yU+
	ghNhRkpmOyvCFGl7nnUSW3m1zxbyai3Rg+ZQAbTXznT3LAsB6ofQSiIW0QNrMfUPuFZCGDLTSOS
	uvRCt/pRw6wp4P4WV4slTCx4cIvMQsFRxbK/ofShqGLuBPIdFLfRf8jmVlRR3QpnycWzFhtQH9q
	ZTtaCCTsaGQffbrWk/LkDdehaBM1bM5xQO18kx4bPnDWuQyim7b4waG8bX0mH5iIc=
X-Received: by 2002:a05:6a00:1ad1:b0:821:8052:e683 with SMTP id d2e1a72fcca58-826badc1f37mr10851564b3a.16.1771804040685;
        Sun, 22 Feb 2026 15:47:20 -0800 (PST)
Received: from mm2dtv09.. (61-216-20-61.hinet-ip.hinet.net. [61.216.20.61])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd640d16sm6029206b3a.13.2026.02.22.15.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 15:47:20 -0800 (PST)
From: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
To: robh@kernel.org,
	saravanak@kernel.org,
	kees@kernel.org
Cc: tony.luck@intel.com,
	gpiccoli@igalia.com,
	andersson@kernel.org,
	devicetree@vger.kernel.org,
	c.s.cheng@realtek.com,
	Kenny Cheng <chao.shun.cheng.tw@gmail.com>
Subject: [PATCH v3] of: fix incorrect device creation for reserved memory nodes
Date: Mon, 23 Feb 2026 07:47:15 +0800
Message-Id: <20260222234715.1748302-1-chao.shun.cheng.tw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222145321.1736481-1-chao.shun.cheng.tw@gmail.com>
References: <20260222145321.1736481-1-chao.shun.cheng.tw@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267208-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,igalia.com,kernel.org,vger.kernel.org,realtek.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoshunchengtw@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F422B170D6A
X-Rspamd-Action: no action

The current global search for nodes in reserved_mem_matches can find
nodes outside "/reserved-memory". These nodes might not have actual
memory reserved (via memblock), leading to drivers (e.g., ramoops)
accessing unreserved memory and causing memory corruption.

Restrict the scan to the "/reserved-memory" node to ensure created
devices are correctly backed by reserved memory. This enforces
specification compliance and avoids dangerous probing.

Signed-off-by: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
---
v3:
  - Remove global search fallback to prevent memory corruption.
  - Fix logic to only allow nodes within "/reserved-memory".
v2:
  - Fix missing variable declaration for 'reserved'.
---
 drivers/of/platform.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ba591fbceb56..2a7111e8354d 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -500,7 +500,7 @@ static const struct of_device_id reserved_mem_matches[] = {
 
 static int __init of_platform_default_populate_init(void)
 {
-	struct device_node *node;
+	struct device_node *node, *reserved;
 
 	device_links_supplier_sync_state_pause();
 
@@ -563,8 +563,14 @@ static int __init of_platform_default_populate_init(void)
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
+		}
 
 		node = of_find_node_by_path("/firmware");
 		if (node) {
-- 
2.34.1


