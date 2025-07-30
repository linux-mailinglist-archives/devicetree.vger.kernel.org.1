Return-Path: <devicetree+bounces-200879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E57EB16729
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FA91620063
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6A722156B;
	Wed, 30 Jul 2025 19:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iHG8/XAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C695E21FF45
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905191; cv=none; b=OU9LneiW6GkcEpLjIwqt6j6FKWWy90xTHiEnm+DZ/IgPtA9WyXHcMMSBuQT4QtTAymctIUZ4BU+XjEiThTiLuhJBT9XkIHKjVCMbdjTgZZNLSMuN+/BVjlJtSCG/lZNrX/cul4zYM7iilaC3QgujSv5y1GSlCZhCa4yPK0u35Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905191; c=relaxed/simple;
	bh=7RciCMLdB/EjIizO99C1aUwFW6lsuJzA7tbC0O2NF28=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JxHYfZsFVUgSdEi+k1p2rnZ5sCnAkN9OVkG7kA/MJaakTK6A5Zlc79GXck8mbzVuEtJWJtYU0jy5RtGCDZMIzufahbhIPFKL9AYkOhX86rlwwzhvAupWlDav8kIEHqaJMPYE5WtTmc+H3iPQV+R4Mx7aHswlI+1e/TwZXGgkaBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iHG8/XAp; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a588da60dfso102679f8f.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905188; x=1754509988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1tDMbTuCN3Y0uldNJTdwwCiPIYOQ819zTdnVjVwO+c=;
        b=iHG8/XApc85qDUWizV2U+7+m9PgP6veA1H9ShIOhchCCRqcxUD83EqZ3tlbPDiI9+/
         Ey8dKh1WYnsfLNjqbk5SPP1p6T7IamJJIHeK5WyEFfNW8gkALV1j7cd1Ftlar8AaNdw+
         KhBHR9mPybF/sXGny987HsB09sSvyH7bVXPbT0ZUoMRVOnrEiYqfZYlBFrnVVNglFJOJ
         DfAtMFwZw2BAwF6kTQsf7AkmB0KdExHk0D8fpsoaSR6ZRKC1bqwBwzL0vEKtllS27knG
         KLpZor0qwimmTdKQ45jHhyJ+ULQbCDkrdZ5T11N2V2H910DJbkneeNNtY4AUYT8+utsF
         +P4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905188; x=1754509988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1tDMbTuCN3Y0uldNJTdwwCiPIYOQ819zTdnVjVwO+c=;
        b=stNxOQUYc0vUl5j7Yg+YtVy2KbTAi1tMakLDKy9DBA2WGW7X3nrXywBIPkP+B3PBhB
         vkIK0Fzp0vsjIsjEkefFwU39ptEPEIMNxvf3fPrq9IyGIuXpZ3e/4D0wUExFvltnCiuT
         K60avcU8KusbH3SlXBWdAJ1zyZ1X3sd0cyCM5J2UOIacPr9UiL8rErhohXzj0s5Mch24
         c+rPUT8tWQt1pvwW8329Ht1CYhK1subfobxL84h6daZ5opiDeH4gvmR/N7aT67dwfsDG
         OzOG3voZuEhgg6aW6NPkvIe6GjOnAfWGblRg0YdjTxfCibyQb/8t+L8l6hA6/5bxTA1J
         Cx1A==
X-Forwarded-Encrypted: i=1; AJvYcCXOvFXJ/3jHBXVKMHKre3bO7YhE8xAJDcp/kn3Bl4X8exxT2WOi9lLD2MPEoL/knzQuw6iS1pyq8ZZz@vger.kernel.org
X-Gm-Message-State: AOJu0YwZl/Qx+scpP6rlgKYKtOVIQfF94sGqG7/G3snHfZCHj7fPbham
	jU6ARmKWxAc7iD+HygJxypsQ5fAXEjd1wYZTIYPCxVaMkA0Ri7ek78b08cjw4QtLD1g=
X-Gm-Gg: ASbGncui0cLaqCuumAmR2+uTuoJVm18KljS7bmYenYwCk7QMR/39CBE6qOTL7+57EDY
	NSEJ+Ap+aGoClO01G+BcKKsyTYhQ6XGIxdUL5xTEriYZzWWctGY6DlSRm1umVzHl6UVR32Nid1B
	Finz+/zvnp4Kbd5LJv4iOFfc9Sq2ARo6FN96WHyGs29B6jVZibI9YnLKYy94IvE5w2dozQCyn8Z
	H4Y/AR6zXCCMmJp3i5mUqoXgklzccqcsiH7zK3D0jIn/DcfZdGhCpVX7Feyydkhb4/jL95XmrqZ
	qZ/pUb32r+TnhxszYW15P2/Nv50Z/+6BOKUnGW3Buqx5Tz/6Weoehe9oKmHlGphPunc2m3QQYLS
	l2Jx0Ua7/Dc/OHus17ZaqbBPFgT9NbSwAzmeZCmz2MMV5NdRQ
X-Google-Smtp-Source: AGHT+IGRYElrDpNrl4+NOhTLGZelVLohbX8W6yyY1T9P0SsEBWFP5ZTfZfawxMYWXsxXjtUKCFrSbg==
X-Received: by 2002:a05:6000:25c6:b0:3b7:8984:5134 with SMTP id ffacd0b85a97d-3b794fc0fb7mr3760889f8f.16.1753905187980;
        Wed, 30 Jul 2025 12:53:07 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:07 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] arm64: dts: s32g2: Add the Software Timer Watchdog (SWT) description
Date: Wed, 30 Jul 2025 21:50:18 +0200
Message-ID: <20250730195022.449894-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Referred in the documentation as the Software Timer Watchdog (SWT),
the s32g2 has 7 watchdogs. The number of watchdogs is designed to
allow dedicating one watchdog per Cortex-M7/A53 present on the SoC.

Describe them in the device tree.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 56 ++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 3e775d030e37..12ce02525ae1 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -566,5 +566,61 @@ stm6: timer@40224000 {
 			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 		};
+
+		swt0: watchdog@40100000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40100000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt1: watchdog@40104000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40104000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt2: watchdog@40108000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40108000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt3: watchdog@4010c000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x4010c000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt4: watchdog@40200000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40200000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt5: watchdog@40204000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40204000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt6: watchdog@40208000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40208000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
 	};
 };
-- 
2.43.0


