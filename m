Return-Path: <devicetree+bounces-254925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2CED1DC51
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A407C30055A9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FFE38A2A9;
	Wed, 14 Jan 2026 10:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cL7NMaB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2723816E0
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384867; cv=none; b=Gn/x+F0JuKOIFDJUUyYj5kzkUD6eoej4aqY31YiM470L7GRcIyUu2AfNUznWQhKCGncUreqVSwTaRrzm7UWYJ+kcZvFXelN+hbM6S1Elc46+yW0rm6GsBXyjSW4IrC2QQ+H5Hy5BNLnmLwBhs3UyO5hKGIwwO1Z2SK4WN56Z+oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384867; c=relaxed/simple;
	bh=RQLnPkVxpfBC8YhtW+fdxh6hSyY4AvRuI89iOEYCL9g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oUjAZ9Eml/f1+QHeNetQMuGO/5Uwun/LcX5NCvjWk5AnBFjXCgJc4SSvJ/vyENMA+6p3bSSa5QTCdLRbhBphPDjnYn2CfbygGNOHiB7FC2qfunMJh/Bv+nM6JFjUs4uiud6WI91xlj44eObSjlLOI/sSxz3mz0El7p3E18rzEzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cL7NMaB/; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34ca40c1213so4186169a91.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768384864; x=1768989664; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDxrVoNnGJMRmN+HZCVd3oASR4RQUtdYi/trzibhYB0=;
        b=cL7NMaB/mBxze+802mYX2Zf0xePmeLJgzbijopqtS07OoVDEkv5nK7FetJf7gGhjQx
         2MPnZ8QCmwAHTKObNcNWGaYkRTiLnt0/DwmyeNt6NtzHWQMjwMvbCXv2OeXOs70k6rDH
         Bir8Paj/bZJvi0cUDoSFWAZ/4wcZI8TCxGVzsIUv+n+Wr6cz1sPCPpd2safGd0cKyXkd
         pWMvKUUhsLG5WX8Ygw4yUBtXKRtWDJMGk/YtQ4QuG/M8saWxsZF/SY2rZPagYMtbnC72
         9VPNTIWcKLNKFaRsv1xfs/Osd/KeJbCy6C/sFEM+cm9q2MHgU0X/VMoM97ItLcJVrH3s
         0MLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384864; x=1768989664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IDxrVoNnGJMRmN+HZCVd3oASR4RQUtdYi/trzibhYB0=;
        b=RG9AvobtCdsznyLlWR9g0GkMvVcRaZNNjWrxnq11UL1JyOLXkozcG29qZQcXpmt2g+
         PC2CguNHmMEOj1hokuORkk3wg6xJg0gLjtBWer3FAFPSOOJbh+SyVKQNwmeXHCII8T/+
         bBZWCYymVAL/1z08vvFHbU3EQAMVJiuzqBkJnjqHdmiIo3GEG2AcdpTCD5atGyA+/TkH
         XgmDI8pRbNA4B+dGuiSmgC4TxnkXQB5AKDTqyB8TmNJ2DW9DCoLB34RsNSG7bcdxtjcN
         pK/hq84OPUJZ4hM1FWnXL+nzAA5UtKSoUit3SbEq+rBzh3NGxNmrLuqgHqMOHmHreZKV
         vL5g==
X-Forwarded-Encrypted: i=1; AJvYcCWbe2/MeQD2lwd4MUZN7kOr8r6zUMofrdLxlkysKZS1m82RCaddzP31REl4F/A1ZsafXCtVpW+axr8p@vger.kernel.org
X-Gm-Message-State: AOJu0YwXdHcHXyzc8Wx6NqAAOVHLnRqn2Zmn8G2an0EAEeddJrbeyZBH
	/jdGV0RXI7kfEvXUdi9GuggC0jBcBR6HZvSeFvrP94qA+YZsz3uMFKom
X-Gm-Gg: AY/fxX6KEoTw0GL4A5JJ1703Wdg1/Mowe/SxyfQ3oko8pt1uGyuA6X4FkDFGnJFqWsa
	99f7l9ViGF+iScrdIxC79nrHr+yjLx4ypVbrEwEPXAFBjQdNPgeWsz+QQKLsf3YmLeEUwZJNpdd
	vgj8GasCpPugvRyiuORkfPZzGGbwvAVyNOwQ87bHmDrmsAOrWdN7I9q+wWqDCU8vDDtSSh5FPxX
	QS+aGE8VWrIEY8CoiGVP+eGr1haVrZYN0X9xnclSi8KJh22DpKXmYP+yKZ7gUVJ58sW9YeKbbDY
	aqSS5WA6my+Ibrr60EUgj2OXVhLnJynUeSQI335Q5ixRhoTQZ5hsQymQbeXx5g2S3g+DoClion/
	KJgzdkNENdutJXZ4Vko1v45iDqWpfquv6CXE2wZ3EVmDIzKyII2tjis7JjHlyKTmQqayU6iVlR7
	f2dyFARPlJL8cxEgVeaRvJMj+So2Lq275oc65H
X-Received: by 2002:a17:90b:5808:b0:340:29a1:1b0c with SMTP id 98e67ed59e1d1-351090922c0mr2365401a91.7.1768384863605;
        Wed, 14 Jan 2026 02:01:03 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109c78f20sm1522043a91.13.2026.01.14.02.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:01:03 -0800 (PST)
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
Subject: [PATCH v12 2/3] arm64: dts: qcom: talos/qcs615-ride: Fix inconsistent USB PHY node naming
Date: Wed, 14 Jan 2026 15:30:42 +0530
Message-Id: <20260114100043.1310164-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114100043.1310164-1-tessolveupstream@gmail.com>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
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


