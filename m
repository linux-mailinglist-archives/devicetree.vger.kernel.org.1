Return-Path: <devicetree+bounces-134375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B109FD4FE
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68EE2161C2A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440B91F37D1;
	Fri, 27 Dec 2024 13:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="UmzCS16E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FB2192580
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306481; cv=none; b=tHpX+Ro5fJDdcAYZYEGU1DbBk/yJ4PkN/GoV0cAoNem7FvQJc9CImKpEqw76K91GtOUC324leUYH55tMM9oGtz9Usc0hgtMb6obzKFn+hmnZRFdjxUd8hJunhY2+uT86gkXNF2frDMUBXsUGUH1SCt6Hqr6IN21mRd/4h6JLk6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306481; c=relaxed/simple;
	bh=b33YHdg6nPOxHfaU2o76T4VF6+vUasTmx6WMp/8F9eE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=raMuHbkT/0ko9/uTkfn6Ge5zPoq4twy5lmlwtAsgmGzUZqelzhO3B8QRAfJzlZsxyViXfWjs44E/4jpOqz0a2tnXVNkdOfikbpgfkxak3RfXpL/PeatEX25iCquCj/2R4+nmgNcExLIH1ZOgkL14l9aLm4Fe8PhFh2zaHqCQu7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=UmzCS16E; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2166360285dso89246025ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306479; x=1735911279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuXjo3JGZawNXnVh34G3BVvcpo5eexvbjdWC4vxEYVU=;
        b=UmzCS16Ejc9uMBm2t7+I1mSVn/F5xSt4DXsMRknH2oisnRbS/wdRLT5oMB6DZClTyR
         LVdBoY6wEZ6iw5dCWmC1A3pDcuUrDj6vAsfEpUwgekLHam6YU0Ai7iIW7lTq9ZXkcNNt
         ssZh/0UajiylbLZOEO/9qGrQCVBBfdfmgglYQiBMEGyN5gY0U52e6o7B+9zZE/dEMvTW
         NGS1I+MrTXkxcYi4PVQNchjMJHxrGzOpdcxHOr1hvwEq0g3YV3n65wm+HTlgAMhAqK/n
         7iBFwosQ393nFksdqhKhLfIIeS9p7ximtT7SoI9MavW7NAoUnZRqcA+elnijhy97jsnP
         3CaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306479; x=1735911279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xuXjo3JGZawNXnVh34G3BVvcpo5eexvbjdWC4vxEYVU=;
        b=h99usQPXFDb5u56Jwz9u5vAv2dD/VHaXtzVOWjKZuD0PJI4uBRDAkOPI6wWiyLejek
         sKC8TCww0/nFhG20cyZcVppmrLZnj/Od1sQ1QuKc6nVTm4MkeaSTctKAprJ3fL9OlSSs
         Odlqbfzp/W1MvOXPRllC/z6H7R3THf1jCnFa8ac8gQ6E0f6U8k3bHwq7+HFU981xKmJn
         74/cAyCk1kVpHMPxy+R7YVdLP/FhQk5lfSvP0zunqcLkuiZFFRe+TrKV5izE9ATsDlhg
         fjsSDWiSClAB1JK9yHaBk3c6oj8C1RRtsTbmaXwlQaDZjoOdbU7XFHayKOfh8Ptw2+zy
         Nxxw==
X-Forwarded-Encrypted: i=1; AJvYcCUKjVAjur300dwEX4aY1nK3Zk09evNOs8k0ePWpem+6pYrBApNwJGEkvCx74QPBEvGEazQyrQo8THAU@vger.kernel.org
X-Gm-Message-State: AOJu0Yylv57GNl3CtSXngwZo0UiNHSuFuuWv09Ox2fez+i2XuuRoO/wf
	w0yNs3km5qX0gfD4DnRX11jTAn7e/exWKBjOJSvxmHXt3Gwu2U7jlloiJCSDAcZuZY9CwBmTJQU
	4FO8=
X-Gm-Gg: ASbGncvqNDqbJq0HBxE2gs4lDaOT23MAhkUDEKYwC4YVC8Iu3YQmd4CRAOud5BQexeu
	WVh6h8ouo1BnwrgYlHDoeJ8OhrjjxhB29Bj0AVLGYMJMfgFjcdmVexMfVEYyfdx/WVzJwNifFSO
	gj7AFYJ9nifWGuw1gPLUMge277oLtAWIz9EIp5roJajouSqRn3sB9qCzRFH7wYX3GAD2Rs4a2pu
	E9VZrvlW1KB2dgtLS0wJt3POLeZKYXBedKF4wUirE5a11mVz0eQLFUUJnEcxEfBO1nMqRM=
X-Google-Smtp-Source: AGHT+IFXkXBm1QSSKkDzkvGxOci8jtBovYoGFK+VfgBPfLEbz3spqaHBx+B/XcRXQ2Ybz2HyRRadqQ==
X-Received: by 2002:a17:90a:d646:b0:2ee:ab29:1a63 with SMTP id 98e67ed59e1d1-2f452dfccb7mr35641883a91.3.1735306479201;
        Fri, 27 Dec 2024 05:34:39 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:38 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add Edgeble EAI CM6 Industrial IO for Automotive
Date: Fri, 27 Dec 2024 19:04:20 +0530
Message-Id: <20241227133420.169714-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Edgeble Edge AI CM6C is an Automotive Edge AI Accelerator module based
on Rockchip RK3588M, operating with -40 °C to +85 °C temparature.

Edgeble Edge AI CM6 Industrial IO board is an evaluation board that
would compatible with Edge AI CM6.

Add DTS for Edge AI CM6C with CM6 Industrial IO board for Automotive.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile             |  1 +
 .../boot/dts/rockchip/rk3588-edgeble-neu6c-io.dts | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255..6701b296f3e0 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -136,6 +136,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-genbook.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6c-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c-io.dts
new file mode 100644
index 000000000000..1e484991d1a4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6c-io.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rk3588m.dtsi"
+#include "rk3588-edgeble-neu6c.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
+
+/ {
+	model = "Edgeble Neu6C IO Board";
+	compatible = "edgeble,neural-compute-module-6a-io",
+		     "edgeble,neural-compute-module-6c", "rockchip,rk3588";
+};
-- 
2.34.1


