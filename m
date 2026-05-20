Return-Path: <devicetree+bounces-300560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFJJBLegDWqC0AUAu9opvQ
	(envelope-from <devicetree+bounces-300560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:53:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C02458CFEB
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D5AA304200F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D46D3DA5A7;
	Wed, 20 May 2026 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WTWyVFjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874DB3D1CDB
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 11:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779277913; cv=none; b=gQuNeVJDVT3gVBC6R7BjOz+Wc+HZpqZWZLc3cUlBvmyL3+jEzH6nZ5MRHxkJZWFInwLw71mLpXVAZpxtEHUwp4KVYwAs5l+pAfyNKz2oY35VIp8ujJsRLDMvki04tJaWxDiMX0PqgaHZIrIWYRkLRMTnAV9csXbbfTdaZJbI3Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779277913; c=relaxed/simple;
	bh=jc/BJZYlhiCdS7GzYVUJrVusKUB3AN0IZyb14geligE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u0OrALoAn8nhtI6iVwe9fyl99hCpuhVnGIncS/G3Lpkycyyr30OhJOiTPIDsejxm4DAcAOzuiJY34Rdy1FGCkzXgPOF3xVFCSFrk9usWpE2DAv72BrgSMQmx10i2OXTaWlDwYG740wvyK592BcAVeo5O1z9f/av7gUGcPFz0ovY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WTWyVFjH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so69688405e9.2
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 04:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779277909; x=1779882709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6RTSBWKxe7fDt7zc6Gx3+6zJWuLhwRwQu11TwkO9shM=;
        b=WTWyVFjH32kocKR12d9CoahYgZkqzl9mCILGKLl8QF2sxARC+Oca1e1o0FvHdgr28N
         elLeIlXGsh1FGn9AEzSdXccHnddpziYHyjZ6CXt+KmiSnTHrvg4TwRQxPDO1vSBbj9ob
         Pzj58eVhQWxuBlXqwYNfutlntflyzl4UkAPD+2byKlTtOqBPXDpWb9DW4DjMwVNHROD2
         OQI5Qc3esldoLRz3VNM0swvR5RVP2pI8SEubJm9iEze6KSZLlSKlLVNJq/LzzH27lzat
         wCt++/Z1L95+rzRCghyVo5To5SYBXc/OqfjkyQfId1Fue/Wx/tLMbF9jxSFcHWboeZeU
         p2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779277909; x=1779882709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6RTSBWKxe7fDt7zc6Gx3+6zJWuLhwRwQu11TwkO9shM=;
        b=BBAyRbQWrEkYe6APzs2rU+e2w6SaAyw66JKF3/2qW3fgAzwyQxP+JE7VMLOS+XfxmX
         R+eRM/nr2nAVa+ctBo7kEcWY6Qtmf2bTczh5OkmLCS53kx+09jKxHpOkkcOc/8SY+1kD
         9YXJaOlU9l3DOZ0+Km3GQJw5zGH8MvVE4hGBF1+CBMfxIg9w98lgT42yv/DLuIhOh7Xc
         R8cfx+vWtmq855B1g7uPT0fdvYixNjHQrPrtbtS543bYjr8ChPrLbMxG/Ms8Wfy0DgCQ
         QAPcVC8A3o2Eg8nXzhPlRtfVvGq9CtW13f5B0uj8JUzKocwBWL7KFNM4GT4V56yQDVmV
         66WA==
X-Forwarded-Encrypted: i=1; AFNElJ8+kA7+NePzkgZQYnSfLzfHkU0ci+kP6TlZbpyh/A4m4GUnz2PW07Bg5JIWWesTeSur4cRJQYvmWOWX@vger.kernel.org
X-Gm-Message-State: AOJu0YyDxIX0gHYKzI0Ii7b2s2vXPlQv5BDkHli8dTu2rTseEF16ZFp9
	0ZIG9U+mRUpeRGyBvaXEnq6/hEnPvLQvP/tz21vp79UZZN5ePQKd8tRe
X-Gm-Gg: Acq92OG40bfZt4CRekeEzGlqnX3pgA7c045BVJldJoB3JFRk58SPaMZ4qNK+PmnLsT1
	k3I/gxWZ/UTbR8FYU0X2ln4t2+5acnRgEBku/k3l4dPKDqA9zMDORHSca/82RybdwhfC6cMAz7u
	M+NC0qoy02bAAjpPbPeTpsL1HtuUKVXGvkJE8smuG3Ugftt8CPlbo6jyieUCwZtw5Jd+1VLyICp
	AnL+gkgusH216tDHi6B70UZWkvInol2rj//u8r0c/0xmdFE+sfmOL1ABI7cQgxuJEMj1bObHgAF
	fgQQT3xgR66VGK3sZFGYVjm4saq2/hjl0cTgxyYV/HS91xbDiCHFKz6V0ZTwsGJTdQY4x3PQJHQ
	qboNoQLPeTyOHksOlX9egYX/idp5PV6lVOe64Eo1QZ14PibZ6jhqfB4U9kbGsNFPlYxq0Rc+pTI
	00kMo2e7FlG/ZE4+krbkoQm6UCo6NbXfmwSsi8aC1sgPNsfvI=
X-Received: by 2002:a05:600c:3b12:b0:488:b14f:b8ed with SMTP id 5b1f17b1804b1-48fe59ab80emr359832025e9.0.1779277909196;
        Wed, 20 May 2026 04:51:49 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:a11b:196c:5f9e:ac5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48ff43f8799sm278842735e9.2.2026.05.20.04.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 04:51:48 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 2/3] arm64: dts: renesas: r9a07g044: Add max-frequency to SDHI nodes
Date: Wed, 20 May 2026 12:51:40 +0100
Message-ID: <20260520115144.60067-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260520115144.60067-1-biju.das.jz@bp.renesas.com>
References: <20260520115144.60067-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300560-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,11c00000:email]
X-Rspamd-Queue-Id: 9C02458CFEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the max-frequency property set to 133333333 Hz (133.33 MHz) to both
SDHI0 and SDHI1 MMC controller nodes in the RZ/{G2L,G2LC} (r9a07g044)
device tree.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index cb0c9550aa03..36488f89c256 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -1175,6 +1175,7 @@ sdhi0: mmc@11c00000 {
 				 <&cpg CPG_MOD R9A07G044_SDHI0_IMCLK2>,
 				 <&cpg CPG_MOD R9A07G044_SDHI0_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
+			max-frequency = <133333333>;
 			resets = <&cpg R9A07G044_SDHI0_IXRST>;
 			power-domains = <&cpg>;
 			status = "disabled";
@@ -1191,6 +1192,7 @@ sdhi1: mmc@11c10000 {
 				 <&cpg CPG_MOD R9A07G044_SDHI1_IMCLK2>,
 				 <&cpg CPG_MOD R9A07G044_SDHI1_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
+			max-frequency = <133333333>;
 			resets = <&cpg R9A07G044_SDHI1_IXRST>;
 			power-domains = <&cpg>;
 			status = "disabled";
-- 
2.43.0


