Return-Path: <devicetree+bounces-223905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34936BBECBB
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 19:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 752053BF256
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 17:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57311240604;
	Mon,  6 Oct 2025 17:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="MRjNcVq1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6487324291B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 17:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759771292; cv=none; b=Op+x192T4He7r+DdBTNGPSr2pgJVPsbAddhXUOCpu1gAKu0Ds+Kf2hYVZYCDFvNbogkF40ZWxumzybzhu6aAz6ptpqFCL3fCyK3Ei9UnhJntj4T1lc2EjwzYKBdWm+7E4K7He7RGI9BWqgLOSAfOGWKv+xQ8JdaOI5WiuH5lXFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759771292; c=relaxed/simple;
	bh=OYYb2M2fECLb+jrNYm1kW1HVJOljI9bg/nvEDHfpPic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KSFcWRYvft8Q2axBPiIJdKgCY9XVnKDrTCAIOR8d+//0GUvId6rgeeUfiGsuoNxhf7wojZfmiRG2xUSrtsKoBZmr+7KVVJOyPly8S/M8TSx/UrjpsoxkCPd/LVwQpChpjdZWhGtA7OeQJwYlNkFGsBdVO1LTJYzlFsxRo3N7lKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=MRjNcVq1; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=fBSs/il4N7pRMizhvkDKpaZKCds+bMrynpG8pj2s5Hw=; b=MRjNcV
	q1paSfwwHAk+Gop4BmtE/gXA6Ou59ed5+UEdKkqyb7IGm3AE4NrLJ/wsZYxqBBv2
	N3uFFT/DWUFVwH+QtlExf4gl4duhWRJ+JNatGHKCqexSaPpAo7TtTA1F5KKenG15
	86mZ58dPhL0PB6xY9PpnitZZq9Cu4uk1lqkewXri7rSPjkeDZeUBESjf6KbwU2LI
	3Q3qjcdJ813md9XWTWDo34rHEAryEX/AAYqqChhwXnwk32ZrHr+/GzjKzopJcQv9
	YW9e8S9+xsLca2ycrm3BQHtP02Ad2GwruovURSC9+ouYVDN67qMRWETZFsJRHDGy
	UyeCtSYFKXfDdz6w==
Received: (qmail 1872562 invoked from network); 6 Oct 2025 19:21:22 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Oct 2025 19:21:22 +0200
X-UD-Smtp-Session: l3s3148p1@JjEuroBAVsUujnsE
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 2/2] ARM: dts: renesas: kzm9g: name interrupts for accelerometer
Date: Mon,  6 Oct 2025 19:21:18 +0200
Message-ID: <20251006172119.2888-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Per the updated binding documentation, both interrupts must be named.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

This uncovers another issue. See coverletter.

 arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts b/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
index 1ce07d0878dc..0a9cd61bcb5f 100644
--- a/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
+++ b/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
@@ -209,6 +209,7 @@ accelerometer@1d {
 		reg = <0x1d>;
 		interrupts-extended = <&irqpin3 2 IRQ_TYPE_LEVEL_HIGH>,
 				      <&irqpin3 3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "INT1", "INT2";
 	};
 
 	rtc@32 {
-- 
2.47.2


