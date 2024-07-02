Return-Path: <devicetree+bounces-82370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E563924174
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:54:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92A991C22F95
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718EB1BA071;
	Tue,  2 Jul 2024 14:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lx4AguWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF5815B547
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719932065; cv=none; b=lZO+sSMrkeQVQ6AubW4Rp1BFk1IQlDuuaCkfOSehmsZQcalY2td/uxrvIbLJtUkHTxbp/InmiIeQLrTdnYcapRrxj5vfFjnsyg1RSqI2YYkDZ172aOQ0MLdDx+nR85gidv93DH9WOQ8w6KmiISgpMlERbSxU3u1sd4PeHgDvR0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719932065; c=relaxed/simple;
	bh=VNh1sKgxu/QGgs/OsnATnI6GGjc22mmN4KtUto7Pwxw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sJm3t71py5uPiEBPxoA4nkm+1Lsl6AQYv1kTNSfc1Ef4Zfr4T/YvTkOAtB9WXPue8MCnaBarPDmSp4Hbl76nAZBLuAVMdJNXgu3azRGMs7+NOzseiidVGCmTnygYcRYZwWFipDTdkTvdj+fWKGHk6OexWsVBCVuipPUdM9CJo1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lx4AguWH; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cdebf9f53so4493852e87.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 07:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719932062; x=1720536862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5LwpiUOo/zV8ut5Kk94sM4XFR+9BUnK4is30VOnYj5s=;
        b=lx4AguWHzHiTnNWVab+Il3fXZMdicKIn/FVdws7EGAdCpstfEOZKyO6Jk9jy3k+kPU
         dipQeWE+z1NmRPqggtumSinwGcc0NKG0AMTY7mQxarzDmHvgjBOsj6tpP2FzO0Dh0X+2
         ovvoeWJF6lHFtWQfGbUHwNIKHPpvrwwHTBucmj8DPqosSWkplbmikcIudjZ597pM+61N
         tBkytoJncU93tVib8lYsnIgR4Nzf4y09VdMvxnTx+rdCgltcxYa1JE8DSn3Uc+KBvj7A
         T1BB9WWI/rd23kCSNCu72VtNohjcgBRQAoimoEq0RxB0fVOFzlAzfvB6lMRWjfJSx7rA
         0BSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719932062; x=1720536862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LwpiUOo/zV8ut5Kk94sM4XFR+9BUnK4is30VOnYj5s=;
        b=APHDm4Q91gZxY0qsXlUj2xtYMOJP2E9FhR//heTTLVEGBuatZfzURSHusRWf4Lg+WW
         v6gwOgGJJj0TQaCIUEQuziLNvtxKqQmcOhOhyI7PoArfZ1J0+rEHAtL6lwlW0I5Z/SiH
         neW231DJYE6z5I48zaknbZTioCq558Ey2Bt+8+VMByBsUykMt+QBEEZTQ6syHM+kTUjT
         FM2ozSLk7nQfOQaFedlqmdFSQtpv7r8nG3fdFRtSP0QYoAnxtKKgFcnQ1HxewoESOZtx
         hkEH91zxCnvhC61Lj2DZGXi9MnnxiLjg3mbF9qlI+pijKTNulLMWBfoetMA8rhVGBO4J
         ndTw==
X-Forwarded-Encrypted: i=1; AJvYcCWAzxIMVcpX1LM05gupV8D0PM+12dkJIhAUIlKllqqnD+Jj0Ixv4uMHKevgC4oO/5hRdGjB0D3WYoRGwj9cxDsXdp0Tw4c7WnEK5w==
X-Gm-Message-State: AOJu0YzDq6meO2dilqFLPEdoOU9laKWFj8/eTTIA4mkFUzLD6p4Tudw+
	FTY17nwTtHFTnuZtELAGFroyeCw5rYyNHunY31IqPRTpReQuctWceXCcIrcJA/c=
X-Google-Smtp-Source: AGHT+IH7NNPhg1UZ2JBspUs6kRfUIg18h9HT+vprDWdBkd9V1+0A4sBtLCApPZHN0e3lsyVWgLNmQQ==
X-Received: by 2002:a05:6512:3b90:b0:52e:93da:f921 with SMTP id 2adb3069b0e04-52e93dafb22mr43279e87.19.1719932061649;
        Tue, 02 Jul 2024 07:54:21 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b097bcbsm201843155e9.35.2024.07.02.07.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 07:54:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: layerscape: fix thermal node names length
Date: Tue,  2 Jul 2024 16:54:17 +0200
Message-ID: <20240702145417.47423-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux kernel expects thermal zone node names to be maximum of 19
characters (see THERMAL_NAME_LENGTH, including terminating NUL byte) and
bindings/dtbs_check points that:

  fsl-ls2088a-rdb.dtb: thermal-zones: 'core-cluster1-thermal', 'core-cluster2-thermal', 'core-cluster3-thermal', 'core-cluster4-thermal'
    do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'

Name longer than 19 characters leads to driver probe errors when
registering such thermal zone.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

See also:
https://lore.kernel.org/linux-devicetree/20240702145248.47184-1-krzysztof.kozlowski@linaro.org/T/#u
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 2 +-
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 6b6e3ee950e5..acf293310f7a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -175,7 +175,7 @@ ddr-ctrler-crit {
 			};
 		};
 
-		core-cluster-thermal {
+		cluster-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 1>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
index 17f4e3171120..ab4c919e3e16 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
@@ -214,7 +214,7 @@ fman-crit {
 			};
 		};
 
-		core-cluster-thermal {
+		cluster-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 3>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 200e52622f99..55019866d6a2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -182,7 +182,7 @@ fman-crit {
 			};
 		};
 
-		core-cluster-thermal {
+		cluster-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 3>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 8ce4b6aae79d..e3a7db21fe29 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -131,7 +131,7 @@ its: msi-controller@6020000 {
 	};
 
 	thermal-zones {
-		core-cluster-thermal {
+		cluster-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 0>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index bde89de2576e..1b306d6802ce 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -122,7 +122,7 @@ ddr-ctrler3-crit {
 			};
 		};
 
-		core-cluster1-thermal {
+		cluster1-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 4>;
@@ -151,7 +151,7 @@ map0 {
 			};
 		};
 
-		core-cluster2-thermal {
+		cluster2-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 5>;
@@ -180,7 +180,7 @@ map0 {
 			};
 		};
 
-		core-cluster3-thermal {
+		cluster3-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 6>;
@@ -209,7 +209,7 @@ map0 {
 			};
 		};
 
-		core-cluster4-thermal {
+		cluster4-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 7>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 26c7ca31e22e..bd75a658767d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -492,7 +492,7 @@ map0 {
 			};
 		};
 
-		ddr-cluster5-thermal {
+		ddr-ctrl5-thermal {
 			polling-delay-passive = <1000>;
 			polling-delay = <5000>;
 			thermal-sensors = <&tmu 1>;
-- 
2.43.0


