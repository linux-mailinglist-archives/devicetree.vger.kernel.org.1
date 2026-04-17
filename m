Return-Path: <devicetree+bounces-288202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2F/JCHYg4mlX1wAAu9opvQ
	(envelope-from <devicetree+bounces-288202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 13:58:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4866541AFE4
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 13:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 42218300D4F8
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B5B39B963;
	Fri, 17 Apr 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="fdPaiD8Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2639A041
	for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 11:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776427113; cv=none; b=AkoWhLsYp9LC8zhpAf4Ab8pUKn3CqFqvbhZWOfjpSca3HAVo+ryjGsu50V6meb2OVGSlKdVdHWXmgnDcD7T6C7XLXpdDBxhrq/O8yS68Wy5jEBOftzzW1e24T2xwaoqUBJrv2wTVmy1nUBP5KXTCI/oiHWjgVPVPDYcFLZFxjlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776427113; c=relaxed/simple;
	bh=9JIyl//kwjCYLNOV2103lot1jY0NX1t9FFIgbTT2W08=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=QZ0+VWUNXusqQH5edBuBwqCM8ofTYsn8p6ANnwr8sTx4PI3HbOs+QXWqJqItHR9Q6JqFjp4T+oAr/vz37UKG+qOCQgEfVlSuFv2kRQNs3otxVgzeNRy0lP26/+zCaGQOah2KG8rUUIIdBhgTTjcTiJMEdpuk7QX6QeYcyQAEMIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=fdPaiD8Z; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260417115828epoutp04e11d66dd9b930f02bda0926d83466aaf~nIwsJYueH0359603596epoutp04N
	for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 11:58:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260417115828epoutp04e11d66dd9b930f02bda0926d83466aaf~nIwsJYueH0359603596epoutp04N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1776427108;
	bh=tAtME2oAeGw1VYgG3bdSyu5+5ymiofHX2zHNHbOWdQw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fdPaiD8Zx/vk4Hv+SzdixP1t337+RoRvRzCGIB42UtelLLg7XWrrRAjO7wDGcW8uJ
	 yPE4dcd725YVSCLRlgkDfHlrAPOenRNUplFz0OyeaNWNnlui4DHaSXYeySEAaaYC3W
	 5EbHIih47OJeWpCwCZOYJlTDoOLR8sswmYujvgKg=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260417115827epcas5p1678828b1a8e4c5476548edc8396421ad~nIwrOzL0R1376213762epcas5p1b;
	Fri, 17 Apr 2026 11:58:27 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.95]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fxtgk2M8Bz6B9m4; Fri, 17 Apr
	2026 11:58:26 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260417115825epcas5p15b81597e14c7ffcee59293e181f1ae1d~nIwpxwWSL0070100701epcas5p16;
	Fri, 17 Apr 2026 11:58:25 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260417115819epsmtip2516c61249898d4b5efdf1361d9c0ede9~nIwj4foTf0979909799epsmtip2h;
	Fri, 17 Apr 2026 11:58:19 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: avri.altman@wdc.com, bvanassche@acm.org, robh@kernel.org,
	martin.petersen@oracle.com, krzk+dt@kernel.org
Cc: sowon.na@samsung.com, peter.griffin@linaro.org,
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, Alim Akhtar
	<alim.akhtar@samsung.com>
Subject: [PATCH v2 1/4] arm64: dts: exynosautov920: Add syscon hsi2 node
Date: Fri, 17 Apr 2026 17:44:49 +0530
Message-Id: <20260417121452.827054-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260417121452.827054-1-alim.akhtar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260417115825epcas5p15b81597e14c7ffcee59293e181f1ae1d
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260417115825epcas5p15b81597e14c7ffcee59293e181f1ae1d
References: <20260417121452.827054-1-alim.akhtar@samsung.com>
	<CGME20260417115825epcas5p15b81597e14c7ffcee59293e181f1ae1d@epcas5p1.samsung.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-288202-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,samsung.com:email,samsung.com:dkim,samsung.com:mid,16c00000:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4866541AFE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Syscon HSI2 block has system configuration settings for
HSI IPs, like ufs, usb etc. Add a syscon_hsi2 node entry
so that related HSI controller can make use of the same.

Signed-off-by: Sowon Na <sowon.na@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 0bf7c4cb9846..0eb853770732 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1426,6 +1426,12 @@ cmu_hsi2: clock-controller@16b00000 {
 				      "ethernet";
 		};
 
+		syscon_hsi2: syscon@16c00000 {
+			compatible = "samsung,exynosautov920-hsi2-sysreg",
+				     "syscon";
+			reg = <0x16c00000 0x800>;
+		};
+
 		pinctrl_hsi2: pinctrl@16c10000 {
 			compatible = "samsung,exynosautov920-pinctrl";
 			reg = <0x16c10000 0x10000>;
-- 
2.34.1


