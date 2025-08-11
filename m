Return-Path: <devicetree+bounces-203244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3077B20843
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4F9B1696CB
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526842D320E;
	Mon, 11 Aug 2025 11:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="SsFYy8zO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C431E7C23
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754913509; cv=none; b=VxX05ok4bv8rjjNd7hHfzXzI5X1guOU065F1hsPMjtFijgs1YuwHa/R23X98IxFy+xgY7LZtG7TNNkoEaG7ZuUgHgge7rtueQviHZb/aFw0nU3PyCFn2o2G/4dPSHcvrzTGxpQrL8XOWqs/pWIgewqrHjBYf48vCpKzv58tzA2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754913509; c=relaxed/simple;
	bh=yvLIgwAGw38VJJkAvUN0mEV+cxHYec3LK9NKk3AQX3g=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=X1AGrpiS3Jp+i+N2AevxaahBqB1dh5MIhevpaQW8dND/C/eAW1G5TypVJD2zr6vpPEAZfafcPuo7ZpRoJ7l5GnNAtzRB0Vx4pZZ3y3IsaxaXbOxwGgsmJXP+5Gx9RyDEZP3ezXQJ+sbT5n3MD/h0ZNOEmPbSD/z0ZZN6RSGvTCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=SsFYy8zO; arc=none smtp.client-ip=212.77.101.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 16475 invoked from network); 11 Aug 2025 13:58:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1754913500; bh=W/g/Hibh3hvAkdudgvOt5kmtLe3KXD5a8hM66tf97zI=;
          h=From:To:Subject;
          b=SsFYy8zOljX65jiFZ7PDLoBoL46f4I58dNu5CrA9u1joCsT4kg4CbwI4Dmj6S/Oed
           1aUmbs371gxGLnXst7ZLpolWSIX4/rKI/Pxi4NnAi78vgbb5xshBG6QSSf0b3Vp49d
           5gLCXNvcB6KXPsgctIoGYtPAgj4Z5SYYfQr4Dl92nNdY5Jy2cuzPpgqyqhPJJ1Elqq
           XDjHbD46yJr3/qHxT3+goGT+KsAUCD1lPIACWZMropyWAwkSFkWidRV4D//5oo/dKu
           9P7O9FS6F9AQxHGTZkbt5nA/OKln2FBtrYRn9L4N3LKXCotiEyboY5qv1s4Wf7S2pm
           lRWziKlDmxsnA==
Received: from 83.24.148.125.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.148.125])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 11 Aug 2025 13:58:19 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	olek2@wp.pl,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] mips: lantiq: danube: add missing properties to cpu node
Date: Mon, 11 Aug 2025 13:58:15 +0200
Message-ID: <20250811115818.735670-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: f2511a3017b372137fdf91dbd0a40eb9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [4ZPE]                               

This fixes the following warnings:
arch/mips/boot/dts/lantiq/danube_easy50712.dtb: cpus: '#address-cells' is a required property
	from schema $id: http://devicetree.org/schemas/cpus.yaml#
arch/mips/boot/dts/lantiq/danube_easy50712.dtb: cpus: '#size-cells' is a required property
	from schema $id: http://devicetree.org/schemas/cpus.yaml#
arch/mips/boot/dts/lantiq/danube_easy50712.dtb: cpu@0 (mips,mips24Kc): 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/mips/cpus.yaml#

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 arch/mips/boot/dts/lantiq/danube.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/boot/dts/lantiq/danube.dtsi b/arch/mips/boot/dts/lantiq/danube.dtsi
index 7a7ba66aa534..0a942bc09143 100644
--- a/arch/mips/boot/dts/lantiq/danube.dtsi
+++ b/arch/mips/boot/dts/lantiq/danube.dtsi
@@ -5,8 +5,12 @@ / {
 	compatible = "lantiq,xway", "lantiq,danube";
 
 	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
 		cpu@0 {
 			compatible = "mips,mips24Kc";
+			reg = <0>;
 		};
 	};
 
-- 
2.47.2


