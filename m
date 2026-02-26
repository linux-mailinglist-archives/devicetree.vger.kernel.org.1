Return-Path: <devicetree+bounces-268895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHMJMZFdoGm3igQAu9opvQ
	(envelope-from <devicetree+bounces-268895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:49:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 674D21A7E70
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:49:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C120A302B4CB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC48A38A70D;
	Thu, 26 Feb 2026 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gDKKWciS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B5F3D7D63
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117337; cv=none; b=rexftmbWF0TLMUx9qXGtbW1JJWQupmMEP/H4qyRneIVXu4x3REJw8LEqlYsJFMMVm1FJynWZTQSv/5MekmN2Bh1fCBdjeTe0bt9Pw/71Fclsxz1nNr241kvkjAVAbDUdz6xjg8obp5EqKEviuTXG7MJDZ86tSeBAR2fzK/TF2fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117337; c=relaxed/simple;
	bh=q9+sCKZfa22zfNW+sD0pHSXKMEdlwnzlRHKunYS8urA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s8K0+yZa3vlgJXBB8BeOnL5Y3GTeeT3aJ6d7m3ESYCVH/Mr0QGZy7pKKoIOV1+dUyLzEWob0KftlxAUs9z1lpHrDJ4pjyO8Ufu2Lg9urzbRackww6EC06iKtq+PB01UwybaFxjiEb6rqLDxn8AYoXD2kO7eQvTc/SqulJ2z9k1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gDKKWciS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4833115090dso9979475e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117335; x=1772722135; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YO7JbDBqxD4DBw7ty3YGZqtipo2bF2AYeLLxY9iiX8=;
        b=gDKKWciS8br1CjSVYQLq2m2jaA7OAtShkpDRW4e0jbsBo9CTXgVskYrAx72AkaZUEa
         wnRYZx6I/5jz3bRmcdr60Lqeum0vSStdHTydB1z5RaL9i4WYOMwILCB2/cVSVMhxX2pG
         VyOYUP2WG5NRzolW7RkHEJFiRVdigpPy+e4cVQSPHeTmDR1HfE26CUyNY5qoZ68Z59zh
         I/vkAPPvpfXgvMmhu3yiN/s/BMwczJpSl03/Clp+mcct5GPuQUh8WQwYWa/SDj0l0Spp
         OG6FJQKOA6Gea/gghylNjXJ3WIuwYJ3xU8f7DrBLu6KCjUcipLfUYngdTvSAd11yrs57
         lbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117335; x=1772722135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5YO7JbDBqxD4DBw7ty3YGZqtipo2bF2AYeLLxY9iiX8=;
        b=mmMkIwr/FpehZ/R5S8sTP5kTUzYdC/i1sBS50MXU/e7L/DwSY3fBvMTpiuw/3AYI0o
         kcF/USeZmcFmRNs2ErttzCvHs8tULy1VLQV5gPXhn9oa72wtbpvThLgYzRk09hMN1Qhf
         2p5lqqwGg1FXfUJ7HcYnDj5/Y4jH3WAUVnLMcFE0niBgLcZJK4xae/p/ST/CdhCdF2P7
         WovaUknnr5q3MROwXWTklGkiB3v5Z+3IlhxEktIQWuLJm/O7m2KSc1qUfYJMY6k3RBin
         VwgeBWtnX2GbwgPXvve4o9sUfi2esq035fYTfTbTrQczvvhvl62lCN3Rzw57yLHtsJ9q
         CDSw==
X-Forwarded-Encrypted: i=1; AJvYcCXBLTMrt14jqB4AAxJIbQ0CI21jJk3QqXhm7w/HvZpasPwwpm0TIYB+r8g4La0sAO4zshqetu20LMvP@vger.kernel.org
X-Gm-Message-State: AOJu0YwzUTn4wCbBMmpI0QQudNc6EaQdATqakxCouHbBXrCzyUsB9ytB
	XKNJF4+WbXboUuqtgSHXGmIN7R26i7HdO047qugbt5xBFAr5mCJbMfUW
X-Gm-Gg: ATEYQzzciQlrHLdEWARA03Qm0+GHmsI/hKFufAQoz0X+0XrGmqpUOySWhbTtX/pabzQ
	exyn44gP24fDwGf74GIVeSIkKTmXbxDVRnH0EfVbngRP35NYOpbliOW+Fh/rygCsOQLpgkxGlir
	d2UCXDNKKTVG2Mudf6f1Lw7PMum984yfrYCkYxm5WdLh2QbGTbIl3INt4k+qdNf+/WJR3jUIvFV
	QrO/6nM2xgNOvObyqPgrXeDhvBCHGDVybxnXieL7PbENnCu02fxIlMeF9h42p9rEzPRIgXhHTwn
	e/PbRQE6i6HBv5LKwZAV8ql5Z92QAzMn2ApXJVmDWTGx5+5OzZoGWDZ/UPfdTNQrvZxQ24EbbDE
	UdTe5bsoy43tbPkZ/46pjUm00P/+9/8NK3jr4qy5QBjac0jRuAfrreWp0vqtfVm93oxNLc257eg
	XXJXlhIMNRBAg+mVmOwkkKnv/JrBTLs5K3oUFN0qC+YZsOJT0+XpWgVeRbLNjwDMZmdvNG1OGm4
	g15p1U=
X-Received: by 2002:a05:600c:a16:b0:483:7783:5363 with SMTP id 5b1f17b1804b1-483c3deb544mr34230505e9.26.1772117334537;
        Thu, 26 Feb 2026 06:48:54 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm91497075e9.3.2026.02.26.06.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:54 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: rk3288-veyron: Fix the Bluetooth node name
Date: Thu, 26 Feb 2026 11:48:42 -0300
Message-Id: <20260226144842.2727107-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226144842.2727107-1-festevam@gmail.com>
References: <20260226144842.2727107-1-festevam@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268895-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 674D21A7E70
X-Rspamd-Action: no action

Node names should be generic, so use 'bluetooth' as the node name.

This fixes the following dt-schema warning:

'btmrvl@2' does not match '^bluetooth(@.*)?$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
index 6a0844e16279..26817848c154 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
@@ -177,7 +177,7 @@ &sdio0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	btmrvl: btmrvl@2 {
+	btmrvl: bluetooth@2 {
 		compatible = "marvell,sd8897-bt";
 		reg = <2>;
 		interrupt-parent = <&gpio4>;
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
index 0d4c50e05558..cba2898f8b7d 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dts
@@ -48,7 +48,7 @@ &sdio0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	btmrvl: btmrvl@2 {
+	btmrvl: bluetooth@2 {
 		compatible = "marvell,sd8897-bt";
 		reg = <2>;
 		interrupt-parent = <&gpio4>;
-- 
2.34.1


