Return-Path: <devicetree+bounces-229441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1031BF7937
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 18:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D09F04F75B6
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 16:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7E5345CC1;
	Tue, 21 Oct 2025 16:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vm2bICuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209D3341AC1
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 16:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761062776; cv=none; b=uGIEghBYFAEEan0Fdki216XUKkhYareWAfqYIPDGXVFb2wF4ioi9AW3SNnhOMB9fUuA8BZBcajCJL3QDoIncyI07SsNFV9MZhOaxHG5IWM5/qFvCVZ1fr3EeMl7gRzPNyY1bRusQvPzwNylOaWjgxY4UgCM+8IcWEgwsgmVN3fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761062776; c=relaxed/simple;
	bh=uk7aoZWw/Pmc3N7zSyYQt2iO1kp7lxeZJc8qrKXCzcs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fpAm4mDT0rAAC5lR40lIGjAPVL97OnufNU7WRFqx8uQxUPOBA3+8JbVqt3BLBIdQPot7xFTDikzTx/jyPOrr7Bx9XYDDxxZjId4s/EWYKtHkuuAbh90zeRh+z4l0vzXTL6Z27YBkuJ0mLpQeXrvRhXb8klhwwgm09+uVUOeaLII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vm2bICuG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4710022571cso48968805e9.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761062773; x=1761667573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I+ODemdtelodNngZ+cnMjkBp0uDC6f3Gz3zokiA/WGA=;
        b=Vm2bICuGtbAFEpjj0K6dZmoQp3l5Jkkqms6D5FMGWx3FjuKJCCUyVyhiGzMHn9275p
         2QdGkdRPCh0qaXF6+WvqNARHerb34VeB1ZqIet3dQLuE0tYaDyDRYlSkhOuWihjBOB35
         2M356mxHwmC/SQBMWD9roi+WeoNiwraEg7kq7mgJTyFyS0MJNoW9qJ5cZTmiMrkjmbVn
         DRRR+yrVdQnHdxvZa0kPvAdxoSXpyv+ceAvL4qZIEvyMVmzmlednSF8OaQX1HG97Tmzo
         XB/mh3MuoVGLb7BrHzr6fgQWdYWNE+trHX+sOu8T3OPkMcn/cHSjE97kZ1PyRGkzFIHN
         leXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761062773; x=1761667573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I+ODemdtelodNngZ+cnMjkBp0uDC6f3Gz3zokiA/WGA=;
        b=e0XaMTql0rShaI0B1C6yqoxLpZMC82HaVyJSGD12/+UVnQX/yJgSVVCCaOEIt88Djq
         g/49cPwXDRVPHFRrwjPrv7hvMjtLaZuClp0dKsmLKCGiDdaJ6Vh/ps8f6Ah7vlOPvco1
         KpKq+eDM1umgb8T+R4y3vS16dFcjmUP7FQolVHRhEHba+RHBoEejQmyZ2Zioy+SGm5Ae
         PeniJJGS8nQrRA1F/DxNMCSptaUb2U0xtVx/RIYTxpw/NcwyNJjtvTXXZWBYALwZ3nsL
         /XIMUP9Ooj9GQjEjckgBqMpSMHQ0qufDLnk7KoKHN3B+A4CTVJ342VhRJyV36pgG/OHs
         HY3A==
X-Forwarded-Encrypted: i=1; AJvYcCVQgHkA8GRRQQkCa4U9h0ZqESLpDvW0juBbQKid41HN6drCc68LnPdGEimPkj8nF5vNRC4TZaYuQ7ot@vger.kernel.org
X-Gm-Message-State: AOJu0YxHquTGJvSFCT2fF5qfUKpJw++5wNMFnr74pUSkxxHzGDAKlagE
	EkIYCzP46N0ltDIc9LehOPUexWmAMFfMe45pUnqeEP/BHC4V6gm6FUPq
X-Gm-Gg: ASbGncvJ+BgOVrDV1mT9w9UjnwqWon75ImKx/LbfN7ecNEX9TlcN+bHZROvbmTNEhBI
	YPO/OUZRg9EgQIwFH9GzUoQKFkjdfBx6sEqDopK34QV1IQRXut6gCzKGK7LmhX/x0LAjTt6jgZs
	hlARsySgktUtsxvJmjiNF++JpBnR8D1RPr/+qcmQ6yLcvA9C2QUOuSd7C0mAgT7vyyULYANOPVr
	BSRpV1VB04eiPmpZPJD0tLTNeNffMJp2MNgPd9P9TserugA1n0gpAm7ly3eBKTkX3YXP9kTBUpF
	IW6UJBn/DseyRg7eLo8RsXJD6qgHhgDM9wujl8Lc5gOiGUh0AbgW1pfHv9Rwf5YHufu31pNjK8Z
	S0s7tFd781YcjWXly+F4MDsPiusIXG7PWtMrmPUkngHL/2wdYhNSj0iDbghy5Fw+TZvgHeTohY4
	tzjYW1
X-Google-Smtp-Source: AGHT+IFJFL2AbUhadEu3zoiSmflGJqqKLGGnSqi38T2TvHgGSGw3DXC14Yf1ANAfxEsqrqF6d4xXtg==
X-Received: by 2002:a05:600c:450c:b0:46e:38cc:d3e2 with SMTP id 5b1f17b1804b1-47117906a23mr136429645e9.22.1761062773077;
        Tue, 21 Oct 2025 09:06:13 -0700 (PDT)
Received: from debian.. ([193.42.96.237])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496d26affsm18543965e9.12.2025.10.21.09.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 09:06:12 -0700 (PDT)
From: David Petry <petry103@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damon Ding <damon.ding@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	David Petry <petry103@gmail.com>,
	=?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Enable second HDMI output on CM3588
Date: Tue, 21 Oct 2025 18:06:02 +0200
Message-ID: <20251021160603.96934-1-petry103@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the second HDMI output port found on FriendlyElec CM3588 and CM3588 Plus

Signed-off-by: David Petry <petry103@gmail.com>
---
Changes in v2:
 - Fixed commit message according to feedback from Heiko Stuebner
---
 .../rk3588-friendlyelec-cm3588-nas.dts        | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
index 5fbbeb6f5a935..10a7d3691a26f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
@@ -101,6 +101,17 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
@@ -335,6 +346,22 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdmi_receiver_cma {
 	status = "okay";
 };
@@ -350,6 +377,10 @@ &hdptxphy0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 /* Connected to MIPI-DSI0 */
 &i2c5 {
 	pinctrl-names = "default";
@@ -840,3 +871,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.47.3


