Return-Path: <devicetree+bounces-203826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3D6B229F6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 275DC582782
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E482D373D;
	Tue, 12 Aug 2025 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="RVfkO8I1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C23A2D542A
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755007582; cv=none; b=YqIdx8XeI4viXWZ4FaVay6hTpuznNmBEKRqSVJUBbMc9tFLKyto/jH0uxpFb7EKLF3Huz9oycDYZdkW9wz7pTpkI4WuJuA5d9jr8YZlgeiNrEFrcEHMzXHyAddw1AB0OJq7CA32xC5wkDPByxsqwaqRaA1s4P3E+fMntMUl+uhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755007582; c=relaxed/simple;
	bh=gv54/UhyYxU7/160wHwxgnOOXa7EI1hmdhGIJ/nTmF0=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=m+zhOfoeFwDZD9If4IS1JzCUZ2FfJn0m9g1YxEpEOH1v6Ej0HaN7vrb4a9K6xIn4yDft587tO0g9pYGT2rTty/AW2UGCRM5IxGiF2Jd1HdLcSORN2d9yk41mUJqL+z9ma92yV+COfQ5Muv5T62oENnarURnlgTnMFlcgM50yGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=RVfkO8I1; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 37806 invoked from network); 12 Aug 2025 16:06:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755007574; bh=8+NRamZyzJl3Hb9e7l0RqXmfgcgtdi2vp3O5N1sGpwA=;
          h=From:To:Subject;
          b=RVfkO8I1Gk+FwtCm24Qr2ZmnyETldEqUO1xnA/qRLYb9YKx42MpIqFC/Vpk/dNMwl
           fvbbrSmf0EhHC+BCWPBXy3PZZ892cLwhNzBRv7+V5gR6v231OVCgr760PYRCfSsUPD
           bdRxJRYEnA6Y0tXohUzet1XgO5hVuJ/T/AEIoG2qQz4sjsxWZcMGbPOS8ehSo2utE/
           32bO+YzhG2FoKrkChMTgadCd+/XhsLBsI6JaDiAkTq+cnC0wXxRVQkyqGokiDVsu74
           s1EVHbJb/MPsRSMnKPRlKdnc69o4pU455uGfsSD9KUqCRoMKrvywG9B7/0PYzfzPCK
           2JGTj+gEMNCfg==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 12 Aug 2025 16:06:14 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	olek2@wp.pl,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] mips: lantiq: danube: add model to EASY50712 dts
Date: Tue, 12 Aug 2025 16:06:04 +0200
Message-ID: <20250812140612.990460-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: e0be6f8dff75f897bc9bff45db674e9a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [YbPU]                               

This fixes the following warning:
arch/mips/boot/dts/lantiq/danube_easy50712.dtb: / (lantiq,xway): 'model' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml#

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 arch/mips/boot/dts/lantiq/danube_easy50712.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/boot/dts/lantiq/danube_easy50712.dts b/arch/mips/boot/dts/lantiq/danube_easy50712.dts
index 1ce20b7d05cb..0c60584092cd 100644
--- a/arch/mips/boot/dts/lantiq/danube_easy50712.dts
+++ b/arch/mips/boot/dts/lantiq/danube_easy50712.dts
@@ -4,6 +4,8 @@
 /include/ "danube.dtsi"
 
 / {
+	model = "Intel EASY50712";
+
 	chosen {
 		bootargs = "console=ttyLTQ0,115200 init=/etc/preinit";
 	};
-- 
2.47.2


