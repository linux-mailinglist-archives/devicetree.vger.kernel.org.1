Return-Path: <devicetree+bounces-316596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Imw4MmWqQWoFtQkAu9opvQ
	(envelope-from <devicetree+bounces-316596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:12:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D90C6D53E8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:12:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bIGbXV2o;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316596-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316596-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB9F1300D6BC
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E63A372EF1;
	Sun, 28 Jun 2026 23:10:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF463559F8
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:10:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782688253; cv=none; b=WtAkVpCY/KC92FbGy4uDzEpbWGO16w7B8Vq6IdIZqapMn2VH5TKL8Nit3YE8DcgPbBg06kZzl5pUN51+dQrytU+AiDGPeZDP9aUZow1+1tjZrWmvsFiIw96OEwqmsscpIgCjGc760kfFqDMbBViUFqa8yNaI6bhndUpJBfEBDtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782688253; c=relaxed/simple;
	bh=y9/4AxteBtQzJzdaF3W3RoLrtwd6cFsBj60iIV20PEo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GDoiHBE+YIrRkWjSBXEnoed6NigIrO8nct4oXmuxdMH8nR1vaDvucy8HrmJnebU2ZrjufyAsWoleReZrY/vPfgxYj7/k2OgV6EVN9gr5pMuIj3+NSmuDMZ0ykTYbFezwQAgSkbkSY2jGiLG93ORUb47eyRlTXbM/C9tGZEw/Lvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bIGbXV2o; arc=none smtp.client-ip=209.85.214.171
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2c6bb8a5980so21080515ad.2
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 16:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782688251; x=1783293051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jxRo8SI92NrIJkPLXL6SLhpmiCKCo8TNk+32dpKenYo=;
        b=bIGbXV2oJuQ59NHt6XqEEVJEsyJGCJodMltefhqsKflMiipHCwG0askKpVzZwMGBkz
         MVIyOeOkN+B0Wb6ThAylJ25qpxvGfUvoJ8p2x1womlpvYzCCDTIyH4x3nxxWfoqzOZKU
         i21vr1fLCI/6XdxEFgjDENGgDqLUGZD3MToVz5AXkAjmeqauJejiCSMmTIgZesnl7RnX
         sRVKjXFP6j8b9dGUu/RycESB0GtbSwr03yTEQt1oaSM2if0VoJtVyqDfr6fEfhiNtj+u
         ARVqgUFDd27f1z8YPOkxpCZlHiaIE4jjJ6F4j3gE3xkySkreMOKln0k7j9ndAfBXa7i7
         nofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782688251; x=1783293051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxRo8SI92NrIJkPLXL6SLhpmiCKCo8TNk+32dpKenYo=;
        b=j6qI+XWTsaEKIMNaip3fqO90EPDb0mOdMizXFLJcMqbZWvqX9j8BctP89s/v5bivIt
         8WsCiiFwbA8Q2T6U8Q9zDs0CW87msP3fO07ZI5zjc+AHqY9IkVV23GAw78nmNbjeW0F9
         pxyvenEcUwT/SfKa3gzUTxsPrh78LQ4CMx0ML6cezXmmcf1QHx3+SvLB4rWvYy+hrQId
         a71hXFbnsbw/cNSfoZQvODg6w9nPCItCwvp4HrGoAEgcaONPGcEewsz9WfyaQBuzjqqO
         +hXVFskkBkxN7k+pazSiZlsl5tN7XIS533fJ0fS0qiYIaWAjTWFjxUzzpSLGKGe9UAtp
         Weqw==
X-Gm-Message-State: AOJu0YwIVVF8eryTW2eVx77LgKotzNWLRB1g+JyxjXSg4n1GhlpIsOsi
	cRfYEkwNNtdERaDMG453Ccg3FN1r6+AhEFtXMwXd/PxxikCoM9e2FcfEtzLZXg==
X-Gm-Gg: AfdE7cnTIAcDl/Aqtg9Q53x0T4MkYbTo61GjRUaLRvXXVw0TW+Is5uL5bFdFtb15XoV
	b2kCbn/V/jtFPxNWRL9+thmDnKUvxPGV/JiKtCp1t6JW5SyDP6DjP8PqjxEqDYuReJi030qsqEl
	OMOK3L8QjNlmlvPK+NPtHWGOQfaGysjEcIUzST+rWKewMo4zgExIz2xacAHfpJU5U5Bfmgi4tij
	6mkMS4ZN8lgNoSoUbzHkdeQ+G9qCqzcnBxrlKY3s4UcX5qfh5B8Sp4TdqpD8/35/cM3/G5Dz2Wo
	6Bn9jszqOVR7v7KG+fMtSjY43aQsLZ+KhOZWkWAHMx9LjU2N+fu3vIFrFFaDN4O7CHVjomigxSX
	ZiAwNjILeDdEeTsE0MyzDZ6chmfeywdwdyfwqvMQkxtqFVJmBvaG2CI1VTRoIJtAJBnsaOF6vSF
	avO6kcHZMFj492WRMq1P8Rfu4YxW25E+IUpRtegWJR/yJBnE3+3tO5TSEMcyUKxFF+6K9vN4Omb
	sLxAAZuDJkwManqgp1X
X-Received: by 2002:a17:903:22c4:b0:2c9:c6f3:457a with SMTP id d9443c01a7336-2c9c6f3463dmr42101555ad.31.1782688251186;
        Sun, 28 Jun 2026 16:10:51 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c9dbe5c5b6sm19461565ad.65.2026.06.28.16.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 16:10:50 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] ARM: dts: BCM5301X: EA9200: fix nvram size
Date: Sun, 28 Jun 2026 16:10:49 -0700
Message-ID: <20260628231049.1248899-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316596-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:florian.fainelli@broadcom.com,m:hauke@hauke-m.de,m:zajec5@gmail.com,m:bcm-kernel-feedback-list@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D90C6D53E8

Fixes:

[ 0.182121] WARNING: CPU: 0 PID: 1 at drivers/nvmem/brcm_nvram.c:85 brcm_nvram_probe+0x400/0x480
[ 0.182159] Unexpected (big) NVRAM size: 1056112 B

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index af411679a14a..37593e7582ba 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -26,7 +26,7 @@ memory@0 {
 
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
-		reg = <0x1c080000 0x180000>;
+		reg = <0x1c080000 0x100000>;
 
 		et2macaddr: et2macaddr {
 			#nvmem-cell-cells = <1>;
-- 
2.54.0


