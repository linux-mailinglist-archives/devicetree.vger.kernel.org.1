Return-Path: <devicetree+bounces-286717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG7fD35I2mnWzggAu9opvQ
	(envelope-from <devicetree+bounces-286717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 15:11:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B699B3E011A
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 15:11:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 178C530086E9
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 13:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9AA21A453;
	Sat, 11 Apr 2026 13:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Tv/MiZoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0112B214813;
	Sat, 11 Apr 2026 13:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775913051; cv=none; b=VaLdCvhIFcd9i7Pu26ZRNIRt2Vmrxt1nSueNxLIEaHLF+tx2xvoK7SGhkV7Fb8+f4fQ3H0pN++9VDowWrTMqyvGdQfinoJ+NeOoxOntYfIVbarZ7mJMxXObq0TIBi3qcjEur9ZnvBF3OIRsKYLNzNiyTVKpHYlSKyee1Xatvztg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775913051; c=relaxed/simple;
	bh=TKaW/PzxQaj4NPgqSoGeRLDQ5i9RTNV80Zs4dwzeHCw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wlmj2EW6cw6TA67CiOqBTt6uliSbYFWpq0paGyM7x9WSVH56a9zGj3Qazfkyf68x8iWvm4XidfOjhTsXh2di0atD1+KEHx+H3JIgdYB3/o9MfuWbHFa0o42r7aCX5kUWGPEv5E2sOZYVb2B5CLcxex5S9EDZIm+Cb30xDp6LlpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Tv/MiZoz; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C073011371B;
	Sat, 11 Apr 2026 15:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775912586; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=tY+MWIgerZDZMC5nEmhhWGHXS7tYtHnjGnyCGjmdwdA=;
	b=Tv/MiZoz2mDF6OhoVBBgkhaOmCNXJLfj4Me2rHdSLas+bEnY9T0hBDofBHW43DKF6glu+0
	Ihb3tdMKB2Wsr2Sd4jj0mlnsSy4ME5teogtgdL3pNR0uqsp1usSD6dnZPjOsRjfpPhceGC
	0z7PkANosekLZ6D+8ApI0Vj1/djYbhwSJtfORIQSMvJGSQp/OEpGwNDNxyIRs1c2LKf1H+
	0JWJsZHq9ABlW4LeIHNx/hv5wwmYFwZZkaNHSrPJlf2swiYb/t8/DLsFejI2I6RLI6dSZd
	dSI1toTwf9P2W7OwZxD0Rsw3cJAnUi4KQu/CGpBV2w0/vD2qpXMrbt8c2sc/+A==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] arm64: dts: st: Fix SAI addresses on stm32mp251
Date: Sat, 11 Apr 2026 15:02:35 +0200
Message-ID: <20260411130300.19603-1-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nabladev.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286717-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B699B3E011A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The second field of SAI register addresses should be within 0x3f0 bytes
from the start of the SAI register addresses, the second field describes
the ID registers which are at that addrses. Currently, the second field
does not match RM, fix it.

Fixes: bf26d75a95f1 ("arm64: dts: st: add sai support on stm32mp251")
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Olivier Moysan <olivier.moysan@foss.st.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 673fbc5632e69..9c63fdb5a885a 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1202,7 +1202,7 @@ spi5: spi@40280000 {
 
 			sai1: sai@40290000 {
 				compatible = "st,stm32mp25-sai";
-				reg = <0x40290000 0x4>, <0x4029a3f0 0x10>;
+				reg = <0x40290000 0x4>, <0x402903f0 0x10>;
 				ranges = <0 0x40290000 0x400>;
 				#address-cells = <1>;
 				#size-cells = <1>;
@@ -1236,7 +1236,7 @@ sai1b: audio-controller@40290024 {
 
 			sai2: sai@402a0000 {
 				compatible = "st,stm32mp25-sai";
-				reg = <0x402a0000 0x4>, <0x402aa3f0 0x10>;
+				reg = <0x402a0000 0x4>, <0x402a03f0 0x10>;
 				ranges = <0 0x402a0000 0x400>;
 				#address-cells = <1>;
 				#size-cells = <1>;
@@ -1270,7 +1270,7 @@ sai2b: audio-controller@402a0024 {
 
 			sai3: sai@402b0000 {
 				compatible = "st,stm32mp25-sai";
-				reg = <0x402b0000 0x4>, <0x402ba3f0 0x10>;
+				reg = <0x402b0000 0x4>, <0x402b03f0 0x10>;
 				ranges = <0 0x402b0000 0x400>;
 				#address-cells = <1>;
 				#size-cells = <1>;
@@ -1362,7 +1362,7 @@ usart1: serial@40330000 {
 
 			sai4: sai@40340000 {
 				compatible = "st,stm32mp25-sai";
-				reg = <0x40340000 0x4>, <0x4034a3f0 0x10>;
+				reg = <0x40340000 0x4>, <0x403403f0 0x10>;
 				ranges = <0 0x40340000 0x400>;
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.53.0


