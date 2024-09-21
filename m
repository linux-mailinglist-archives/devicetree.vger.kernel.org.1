Return-Path: <devicetree+bounces-104270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4E97DCF9
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 13:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93C9E1C20CD6
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 11:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F23155CAC;
	Sat, 21 Sep 2024 11:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="KpssY+K0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A223A156C4D
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 11:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726919323; cv=none; b=fR0ID2eQlqkobVtcQ8VBJ5ZdVBlfYFQDY+CD0o3PN1PTxtXxx3ATM7x+CI7pyefqgnB0uig375Zwgtwv6nDYfFpY90BbJ6aBoXAZZnEN0/qQWKOYigekWYirR0b68fIQzr1IH+IagqU+XLz9tRrxPiR2LqXxEHtwBWG8KgIdoRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726919323; c=relaxed/simple;
	bh=s46YgXjYEgUlMZp3wPtzbQDCksgk0DSAsPR2iu4O/b4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m/RgCYh52YHVT6sYSPcMqMkzCV3299Ko95oEGy7F2ielPUJNQi5vdT17WNrSUsJA5qrWn6OaSUgKc4y6MotTe1pIRQQB+oBjxSIFlWjLc2JfVIcyc02KQW+FPr1Y1b4gKx1myAvSZHhA9FpDTihirqnmcLNmGNWmb4lbZPcavtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=KpssY+K0; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=YSf6tpbbA7tJf8yOz0uyncmkQ9adf9l+BY+hCm7lS+4=; b=KpssY+
	K0PJAL2DHpKLJkp3Yye6JkK81Lp2IEBcftoChIvFZiS83wy3+Zb2tNfnAJjF5MzE
	+NO5IO0V18vWov+9+1o8JqC1Jssywxr7THgSDgbaJrUaz6R5UBes3NIlCEPwdc4/
	PR9ZzayPZKeJyRWGMZIUZvkcxcrgtQyCj1ulYnH3LdXGGRiWaqsN8lkNB4xRcI3h
	ft8RPeR6p6Gn30uF7nbLbssVWeJakmzksDB0fAlyFBwChWok1tPv1mv4KiJmNKqh
	10hdsYw+faTBHm0sH80TWYrezoMK2veXvDgS4LOT7mk6Nq6/sGfI383kuoKoJJHG
	yI0xKPie+WmNM34g==
Received: (qmail 3652761 invoked from network); 21 Sep 2024 13:48:37 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2024 13:48:37 +0200
X-UD-Smtp-Session: l3s3148p1@EKt0vJ8iiuEgAwDwn0Nz2qARpwvTE8dN
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] ARM: dts: renesas: genmai: enable OS timer modules
Date: Sat, 21 Sep 2024 13:48:14 +0200
Message-ID: <20240921114813.4124-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240921114813.4124-7-wsa+renesas@sang-engineering.com>
References: <20240921114813.4124-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Driver has been submitted meanwhile. Activate the devices.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-genmai.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
index 226bcff180bb..c4c2d750ad79 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
@@ -208,6 +208,14 @@ eeprom@50 {
 	};
 };
 
+&ostm0 {
+	status = "okay";
+};
+
+&ostm1 {
+	status = "okay";
+};
+
 &rtc {
 	status = "okay";
 };
-- 
2.45.2


