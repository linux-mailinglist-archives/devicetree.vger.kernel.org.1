Return-Path: <devicetree+bounces-262182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLIDJKXQgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:40:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D1AD7DB4
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57F2C3084F56
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929EF33C53A;
	Tue,  3 Feb 2026 10:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MAyeeDMe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583CB33A703
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114643; cv=none; b=fxzmZyQlERz8QsClLkipUPL+XRUBPtIeOOtBn8tEeP39DU2Ip/Os3rvSfdAT0ji0D1yobuxTZ5uqtG3r4oTQrUQPbxqgaIgI50++EcIt0CYvytnkYa2XBlgDmo1KX8sBy62w248t2dt4+F799QiNBPSMALDk8qfz+srYpgPwJRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114643; c=relaxed/simple;
	bh=ex1mvqe2mbVjkMNCdMAY4qBzAeJ5mwBkW6yCSYOlsQI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NwBz6YUTOQ1TyJTCEWNl+ZHGN4IB4lahXLgvrvLyD5IgLw4bSfLxRzgH81y8s+mIlkhz47pGar5qJRICX2cHiwknNcNExclnJUz/qmeeyP+/gsplultXb3wn3OI7HtWbKCI01+ojYijhuGH600ds1DVGhN61K2aDYgCsShd9zmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MAyeeDMe; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4806f9e61f9so27995515e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770114639; x=1770719439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SfqVTSyxwRg8Ma/ogFcamAET2PFGRVKefL6mWxk01zY=;
        b=MAyeeDMe5/DKO3oT97qPMkdcBjNat+Pl188xvbojOez1SXuHUmBcS7jQRyGB52iBC4
         lUP+rEbXFDuvLER+dWbckGH+WVY75JYi3oRDEkflje0VtDChnoKSVz9iUJa44U/SCyoe
         ozIEq5oabo6xsnGqP2RXWuRrT9sHjaG/zV9txxG235f5/73b/XkAerSdLbBHFCoTYjIS
         ZGh6El0/hr+xy08vJdPIkEYEPlOB+ixOQM8VK7/iea+8OfPNY3ttpY7lcuZn48DhoGjv
         xsTgnuEaaEuQ8G+iyni0sky3xilSAz+EOVTyACxFo+xpR+TmSuJyJa6+KHACam2RoLBN
         PIfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114639; x=1770719439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SfqVTSyxwRg8Ma/ogFcamAET2PFGRVKefL6mWxk01zY=;
        b=U0Dnay6avXCSRwaaWWjr66sK7k8Gz6X6MdDyvwN/yFWSiIC8rJMsceFHURTcSnvcwT
         4kGU6Ij+6KK03wNP5ZYyUQQRcNQNvxD/ItGnYJ+pgECPMVcBRiWBcRfuw9BnqFG5s6+O
         KAXjczIo3HNEnxy3Q2lftXolrUFDs2Ep/RvyRwFlVJQSgtA5JC5fskBffazrOzJhfwwo
         y8rvFXPUO+LnCpU+meT0otNPnJ74AUsDGBPdfEfVA6YeZJyF7BsTFwR8rm77ixU8ArGI
         UJBNhR1e5wUevqorwdi7oJZTWbvvDJDaDWT+OEjiZ654U+QzSMWCdWuMdNm5N+JufzFz
         vuUg==
X-Forwarded-Encrypted: i=1; AJvYcCWcArZRUPrhTHoW7qgwQMRlWC8Uz+/09CZA3IAHKDTJPo8Lptdb2aPrcR4E+zAlQMm2B/ZDuGfnHIRS@vger.kernel.org
X-Gm-Message-State: AOJu0YwqNPKltSsfwUhLj2gVHksUI9CYGNPH8W6RmGfgo0dqhJVUJBAx
	twi2J175ZaVx/Wa/cv9e5VKvEhRfIVHDTcbtKXAiY1gc1xySMLPAOIRo
X-Gm-Gg: AZuq6aKpeuwDZ/R9sRamlHdAZL9GisJBQ9vF+GNs681ge3fsvu4CbmNVSlOlicyJKYx
	jf2ecukBUaiKsxwbToWK4xfA46k04A22oJ81e6eQS2YYaTsuPrJq8twsGA14XwnO0BOcbWA1U8L
	jsEY0eJwBqkpS6Ktap1kUTrRwXXUY4LmpfQYBb6a+d54HMXJhEiFi7eCG6omxGL7pAZjlHwMMDD
	mn8wyVm2bwpWLAPkvkNRND7w9mxz4igPvixHGJrP2QUEL30b9zXMpDrjhbPr9N9bWPnu4BfhfYy
	HC/TxPQfwGrf1+/vyvCBAhBrFzl+EPH+StMd+FVC5YjFxUIOWhsqi8Ik8+zby0dZDA22jpt0Atp
	/SsoJMHusgC2hMt0drPTc/JlX+E9XG81FZCrZ0Uqlld8ygeC3sHozkqel0M/OZNXk/djwcldw1E
	eFj2cxqyW9Ng63TvSqNg==
X-Received: by 2002:a05:600c:474f:b0:480:6ab1:ed0d with SMTP id 5b1f17b1804b1-482db452587mr187008255e9.9.1770114638974;
        Tue, 03 Feb 2026 02:30:38 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm53160961f8f.35.2026.02.03.02.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:30:38 -0800 (PST)
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
Subject: [PATCH v3 09/10] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Tue,  3 Feb 2026 10:30:17 +0000
Message-ID: <20260203103031.247435-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262182-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: B8D1AD7DB4
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

SMARC2 board dtsi is common for multiple SoCs. So move usb3 nodes
to board DTS as some SOCs (eg: RZ/G3{S,L}) does not support USB3.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change
v1->v2:
 * No change
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 6 ++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 696903dc7a63..cc75f6fdf7f5 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -248,7 +248,13 @@ &sdhi1 {
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
 
+&usb3_phy {
+	status = "okay";
+};
+
 &xhci {
 	pinctrl-0 = <&usb3_pins>;
 	pinctrl-names = "default";
+
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index b607b5d6c259..69c0101ff7f5 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -107,11 +107,3 @@ &sdhi1 {
 
 	status = "okay";
 };
-
-&usb3_phy {
-	status = "okay";
-};
-
-&xhci {
-	status = "okay";
-};
-- 
2.43.0


