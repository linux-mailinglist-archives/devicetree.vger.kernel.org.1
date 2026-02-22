Return-Path: <devicetree+bounces-267173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFZ1D5EYm2lasQMAu9opvQ
	(envelope-from <devicetree+bounces-267173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 15:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48C16F7B7
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 15:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DAF6E300C6F8
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F33C352C34;
	Sun, 22 Feb 2026 14:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zxw+XbHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BF52253EC
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771772036; cv=none; b=pSmFZ1CIH8QUpak5Qk76HkJBZ9F1aLGmltYph+8PQfSs1FaKbmJCLLrjk8Jklhs5mLfWWa3w4uXo1+rFJBVj3lAqZjR3qXeYgaM3sgT8jj8/Gy3frqL6IfomWKzllu/DUPJi1LSzhYclgEvCxmpcNLclj5sFGIqZ5sv1Imfl+bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771772036; c=relaxed/simple;
	bh=Z+/k4DynzAY0cJv7pPSLfFgb15c1OOZbG3fb/0Iy1uU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aF+Gm2LWNFmWwKAsUNFuqES2shNRvAEN42Bzz5UAyKe3nu+hAy6b5p5XWtRVXcwBsnvrqv/LZRsPd4HC3lBb9x+Lw7LbXjtkG/clyu+ubPJV64bhmiM/peHkqSV1/IRzBEOpRqcMmpjVTBSIwhm8v3g1vGax3AcVuomNj6pbBQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zxw+XbHn; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-82361bcbd8fso1763788b3a.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 06:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771772033; x=1772376833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=epDmMCbVsSVX/Bna9dzyFpbWPHgpZr4iYJuReaSql4I=;
        b=Zxw+XbHnRh2JY/QUMqEir+gZxrVfWklKwvOsSrqNvgXz4AiQMSR1T6JxBIkI3TEkj1
         fGEL9k05amR70CGdAvtKYtgCXjbx4jck+3XuKpyeREKdKJTATvB32fnJlL66wTVcq1Dx
         MGet915PqAYMgRhQoLSn6ScJFy08Ikxg8SboTFhk2X5qrscMcV0RtOnNYFNGnjEFWKjL
         OnMqALYW1qu3qvZFSf/WlgUIFCDXVFd/SpGRasYxR5BE+CY2UoM/KFFNZtAk32kq6Psb
         3qG3y3bfaf3R3qaCKNx0EUAosFt/uZgC4SVoLf6h87ocMvlQPVy0n6yByZuEjU3yi2AX
         C7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771772033; x=1772376833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=epDmMCbVsSVX/Bna9dzyFpbWPHgpZr4iYJuReaSql4I=;
        b=n1UotyEebbXqd3CpN5iaVe+0eBZnPPh3Fdf/IFkRln+MyFkRAIfSr9UIC7YTl3aJDe
         ufFecHQseDEgyCHsVMwrGlQfzvQ1Chaz71SW6JlbnxYoB0FGzOOBQrdAd740q/tM9+/n
         GuoLlRUt4SbKvGkgVcZla8uD0V3xyCunJqDnzGAPAQV6++vEky0TBj35Uivs4YyR1z5Y
         n1mM21x00gHkwLXVQvJys/KWibHlFxTdwKdcZoogCvzNzi9hmkv7ebPKpo/qocCVExls
         q9LRdEC9yLN+uOyRn507zA8+c/Vuic8B4HBQEl4B/sFwFN3u+/VHsSbFPbR3+N/qwFKp
         /8qg==
X-Forwarded-Encrypted: i=1; AJvYcCUOSN85DEV9vAiAVZfWfmQbs0oZa3/fccEm0G8kzj8lqa7j2voiOnBYR0SMHbLJQ0ChG6y+Gv/QPxbs@vger.kernel.org
X-Gm-Message-State: AOJu0YzJYshahBqi/G+Nvx4LIIWH4/9AHFiocAKOdCaQ0CHI0CGmUJMv
	imtr3tYJOAMf7o4pyjKQVJtLMM6sFJ4auEqTrA3rE5/AAj/YpzqXdf/C
X-Gm-Gg: AZuq6aKQkPJv4NqHqcCQIa+oWXb39H5E6mxWTpArsgLNdIHaxqy6svSIf+FMkPfJ4UL
	7K1WU5s78hgSNvRmoJTI1XY+hRlciQoP3g2q/E3TsCeWYwI/zyWEe7SAu36JbL5AH58mRzL0v47
	M92xo6S8U8fXZqxlaRKpr3lqGnMzCgEKpOB78CgrjF0dI0XvVuicRIXewgDjO4RE39LtUuaPOaT
	UmYcAJsmP+No9eQ8Ma6Qtq5FV0CGQR7Rm4a86tSjvSKQxSO1lkXvrm4sDLOYwMblI8VmLL4cMhL
	Ohc/PgI3FvCIvEAEqgZh5MkFZW25u10d3G5EfbdGcgcevIOqjlJeKI4/W+KLe0ZMriUhNytKI+U
	Wv7kqBFmSt0Z0VDTLhdGL6h4Wl1yaODe84J/aqSCwje2WVW9HPgCDu6zF4QCm/vw6y4G+9X4OHf
	yUcz+K+nM4Gtj1QFehlbEDsJSUTDFMVqE6DS0PibTtKVPhsNb+Qa1Eu8oKSgkNx8YJDc+JmjtfM
	Q==
X-Received: by 2002:a05:6a00:2d13:b0:823:c59:9cb0 with SMTP id d2e1a72fcca58-826da8b41d2mr4650148b3a.1.1771772033273;
        Sun, 22 Feb 2026 06:53:53 -0800 (PST)
Received: from mm2dtv09.. (61-216-20-61.hinet-ip.hinet.net. [61.216.20.61])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd6c601esm4859766b3a.29.2026.02.22.06.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:53:52 -0800 (PST)
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
Subject: [PATCH v2] of: fix incorrect device creation for reserved memory nodes
Date: Sun, 22 Feb 2026 22:53:21 +0800
Message-Id: <20260222145321.1736481-1-chao.shun.cheng.tw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222144507.1736070-1-chao.shun.cheng.tw@gmail.com>
References: <20260222144507.1736070-1-chao.shun.cheng.tw@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267173-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E48C16F7B7
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
v2:
  - Fix missing variable declaration for 'reserved'.
---
 drivers/of/platform.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ba591fbceb56..68bba234cbea 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -500,7 +500,7 @@ static const struct of_device_id reserved_mem_matches[] = {
 
 static int __init of_platform_default_populate_init(void)
 {
-	struct device_node *node;
+	struct device_node *node, *reserved;
 
 	device_links_supplier_sync_state_pause();
 
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


