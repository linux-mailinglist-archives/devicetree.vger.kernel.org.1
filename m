Return-Path: <devicetree+bounces-264593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QC2iMRMFjGkeewAAu9opvQ
	(envelope-from <devicetree+bounces-264593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:26:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F622121313
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC9083054D3B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A02C353EFC;
	Wed, 11 Feb 2026 04:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FE+974th"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEB1352C29
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770783956; cv=none; b=jUcB6FWVS8uCYk0autf0r8jv1aNmINPSJtWW5dyn9qzJtY4E9mmUm5nP9WvOBEN1THeSMM7EAxPCdiXum2EtDedUqwLzOJzAPZf//nIxbZ8Fu4EC+QbTtvZwjvYvNQ1RQRjhb3WfkYSu2AhyZFuC4jgKVs0s3qJK6K53VTi0sU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770783956; c=relaxed/simple;
	bh=Lc8AP/F7goFEe9y/c7w/iEuBq53oiIANFFJwNlrCXPI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MADnOIsRWifxSQtEc5ZJd/+uCCU9ttM9Q1fW/nXpUgyOcEafTJbK9AWTOV0pnISSE+6LSKaXeAqTHvkzvssqA03a9e89jj/wvmsulpsS7woqOuvyC8sb3OTqaf9Oqmi1hhNoE9sdTWgod+JXZSIqe1xY2MsXW6O55jiYpdnzW5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FE+974th; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a7bced39cfso16387895ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770783954; x=1771388754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4LhOgJf104IDgtgTCJUFudf8xlA6PPDYvmEI+/p5+w=;
        b=FE+974thoohvdf/b5ojU+McTAICjGsjgpRagbVcFDVcl+WM0meiuOdtkNo4MUsHAt9
         rCw/AiGv6XV9PBoF+z6FEiogV/21rmd1XSrFRZjKuzw5R4Ll5Fqp54M5LYqZg/9k5Rtn
         HF9VvfwqLmTpCx+tf+RJTrhKxUwU0++dVbnjaqCtzEVx2a6XWh9wmQRjoValRM4QFU7e
         omnBaYYyc8GlX0NzeiHGKqQ1+TB9Xl5CRN5YEmxT+Lk8b0pH/N5E3Ki5n5+W98jq5rOL
         K8fP9rXC87gw6dDhHb/BigNzVm1XeA0KSwWleMmRrArgBMOfpteQj3ITnnyxZI3k7BjJ
         ZhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770783954; x=1771388754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C4LhOgJf104IDgtgTCJUFudf8xlA6PPDYvmEI+/p5+w=;
        b=f06ft1d5kjzE/BkRuhEVIVtlimVfDzueP/Bivp8Zu2CWb15mnI9Mh/tD7hI3BdvuHG
         eN60+V53tdwhrN0s4R5A7hVKGjWiQFqygJi2qMk45LFzPKxtdlvqui1+ZQCR/QjgEcsQ
         zGClQYuam74FZDybelhN6xPCPjABtUAPFkiA6Ejnjs4LO4KiwpkPPnFW9cErxPdaJHO9
         xI+1d3/q16zpe5sqOjMnF5lJ8li4RGPyY1jhi0rHXm7RqmovGGuahTNF/Qj6YDPbjvqf
         iDkJ1nNtY23DDCkd1MmmWuOIR1tiwmDqrxtG8GmSWTifMd0AjMzJ+rQxzG4v05ICK49v
         nEsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5vu8Vn3viqcBjJFLbPHWS/yOsg9CfXRq1ucfT6975yvju50BJpuIGZ0eeUJyg99woTxrXn1yjYSKz@vger.kernel.org
X-Gm-Message-State: AOJu0YwkUEPBXz/amHIcVJPmVg7ZuxvEiyMH5wqLpRfs5WuEeqHIdY5y
	iAW1UEXPrqUeGi80+pu6RFEXESMcGkx+czEg/b1RXXpXyyl6/m6tYDNW
X-Gm-Gg: AZuq6aIflPLLxxUdmfNPrfm+ceYeP9icP3i2GTc4z/t10ZJobY0NZxRsE4oZydbQFkt
	HqA/MmXMFCHWl+yYbI4b36TkVgnrFgeF434PFGF1xUWshWAFhGI6e6UFm44alchjXw82Uvpydkv
	6uMmbRtEjBokYav22vOktkRjacnJ0PkTvbCsRJL2BJQjsVsUn6iCbz9J17SVbBavrLrROb//0bh
	xBqD/uMboOI2zBKitHHSBzZLCNewEJmZ6mJoid5FJmzIqJgzGFCsutfqa5BHJwLJS+UnniMUV9q
	dG/4Su/m2loOFy+6dmJoYSOfCEOW2kdAJcJjOYdNBfQADNfR6ya6JXs+krI+W82Trfz8effEjIG
	Ri1K4ORw8UZFxgzy4VIB9J2p4TBaWIclOCqQ6gFZ0AwTX9GVVVb/Ixn1JSRMjOvsFqHEDpxiFf+
	AHrNdND8my8JAtuUUYWUXlp2+B5yhpqXpp2hxFe015aMmxnEEi
X-Received: by 2002:a17:902:ce8c:b0:2a9:451d:a69 with SMTP id d9443c01a7336-2a951670d58mr149461325ad.10.1770783954516;
        Tue, 10 Feb 2026 20:25:54 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2996617dsm8413545ad.47.2026.02.10.20.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 20:25:54 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v13 2/3] arm64: dts: qcom: talos/qcs615-ride: Fix inconsistent USB PHY node naming
Date: Wed, 11 Feb 2026 09:55:33 +0530
Message-Id: <20260211042534.162007-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211042534.162007-1-tessolveupstream@gmail.com>
References: <20260211042534.162007-1-tessolveupstream@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-264593-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_PROHIBIT(0.00)[1.23.142.104:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 3F622121313
X-Rspamd-Action: no action

The USB PHY nodes has inconsistent labels as 'usb_1_hsphy'
and 'usb_hsphy_2' across talos.dtsi and qcs615-ride.dts.
This patch renames them to follow a consistent naming
scheme.

No functional changes, only label renaming.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
 arch/arm64/boot/dts/qcom/talos.dtsi      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index be67eb173046..0ca6b50a6de1 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -609,7 +609,7 @@ bluetooth {
 	};
 };
 
-&usb_1_hsphy {
+&usb_hsphy_1 {
 	vdd-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;
 	vdda-phy-dpdm-supply = <&vreg_l13a>;
diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 95d26e313622..c7dc507a50b5 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4304,7 +4304,7 @@ osm_l3: interconnect@18321000 {
 			#interconnect-cells = <1>;
 		};
 
-		usb_1_hsphy: phy@88e2000 {
+		usb_hsphy_1: phy@88e2000 {
 			compatible = "qcom,qcs615-qusb2-phy";
 			reg = <0x0 0x88e2000 0x0 0x180>;
 
@@ -4412,7 +4412,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0x0>;
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 
-				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
+				phys = <&usb_hsphy_1>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 
 				snps,dis-u1-entry-quirk;
-- 
2.34.1


