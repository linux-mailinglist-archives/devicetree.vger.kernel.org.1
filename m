Return-Path: <devicetree+bounces-168907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F108FA94DE4
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:16:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E25DF3B3DF3
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38855259CA3;
	Mon, 21 Apr 2025 08:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JeTCoBSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B438255E3F
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223327; cv=none; b=srMKzVRwy6cSs2Dm8IcM5d36lAExx6BpAX3+DCxVCSFh+aIIHiIbiYAV11A+YWfxvGs7v4SKXlkqAUdXqrpnGoda17QbFZFixfiLUoqrNlCFzrJko1rT/V2XC1M4X+rW8QWoO9biF9N1vytxHmm4ays4PILVHI1TKAsCh8f6ibc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223327; c=relaxed/simple;
	bh=4mbiitJOV2jiTWN9UUogzVPYkr73KyyYvrruA0u3aCA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K7oCSQ/AB4yaB1bMLTU9g/2K/N5ddNJ2hK7pMJYqP5G53aNNyYAjO6vttKIs8qQ6T/WZIb0SDryDwOshkvrujXgRF41yQ5qFgBgzbt9Ymbv6Htjquz1quwOMxlL4pYSxl/6XGByG3Muo7NMdXj3SRaVy2oAeWG2PorSDEe5Mpsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JeTCoBSK; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so6054103a12.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223323; x=1745828123; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5xv2vJFkovmvpyKW48QLNHvOxtZkDSAa2Dz+3SaF3+E=;
        b=JeTCoBSKOYNGopYJvHfa6w9Nu8vYjDil6YEuGLqhyf7y0olPNGmbhgWxkyDnLtDLcy
         E//scuCx9zsgUh6I8/sgFZ0LDGJTk/4kpjT/rFh6bEF8rUZ4GbPnVqO10iN/fUQr/sYn
         /qO1cDQG8kImqmfkjuKIBXps2anPxZcDY3QNlaUmJrQ7P1wofVri/SOAYgbTlUuuh77M
         u3mIyaExNMFvI1baiGquJwy5upYDBa9lFTTMEzNM4t+4cH6zkBZMpA5QQYbF+KIvk8RH
         VCMNboBbqL2ZErD1cq+IyiWv21m6pJSVrBsagUYT0cTLvgSYEoe2iDp7GJgjG6bWc1OU
         aQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223323; x=1745828123;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xv2vJFkovmvpyKW48QLNHvOxtZkDSAa2Dz+3SaF3+E=;
        b=WxufSqibPFw+OjfWSe+gpz/mFefGTjB8ohwuXIz7N06XD4cS4Zm6+pY1Silfirm0QP
         Hd6mmk5mUQJIhwsaSOHbEtfCaar70tyBydSxHd9yNlyYwb5FTxOoTlKkchycAf2egBC7
         KU7xIUdkymLiSHKk0XU7fEm+epBVPZx96ntXIsmlHT1qdkI/Kl4QRFGyGD275MymIpyc
         4PPwaZ7VCkdLVvw9mEFFPPE7IBZD2BmFtnElKO3hNpHMyMpBUqZEGy0joU9sKVBKBWt8
         G1WfEtzQxApjYzkKCtUEpWZiAkcSCd/idkYM6FmppHQCMiL/CumZOfMscvUfJByICtY6
         yGPA==
X-Forwarded-Encrypted: i=1; AJvYcCWUWzk1qkE1bk9DKXZMTQJ5iIZSiTQpFgnY9FD3Z7pYc54Vlf0dBjMAoxW497R7DwsG2QjE1kARmnqc@vger.kernel.org
X-Gm-Message-State: AOJu0YyYR2b9aZTXAjybsuFutRCUfjg49rAV2ANmDn/Zi7arDqLYjGDg
	wQ0TXWjWm62QyZcTPrqdefGh92UT2AJYVc68xgExeWeDd9P+JFOLjaa21eCVYEk=
X-Gm-Gg: ASbGncvHssICOAI9pmtNE7YFaou71UbjATIaOdxcdOYyVpMU1IP5J2JUtNKX1bmrTPS
	CrP2Eby/Nkn+mzLZK0N1LIzfXjtNubCaB5YCbw2FBb0/vAfGl+5XQvtVPnPxBjHTpJOATzmWs7G
	amTvZWFdAPuhqjcK62U15j3FW6dXJPq9d/AypCgPeUvb6alvDgB9y5REoXeB98MeZY1P9xVyb1Q
	f1HrSFdqwXrb3zzq9FdYlKvq8KJnCjEAMVb8S0D/uqDCgkhNFImWiMOrL+0h09jO4Noyl6GHAbL
	1q5wzRhZ6uRBFbiWDSZSx7s8FQZuk8qD520bCNZM2qODfQ==
X-Google-Smtp-Source: AGHT+IFyGy/aZv6K0xGfVhdi7ZI6Kcv/gvzsExuIG2ExmgkYKFcEvOhC89+Wox//FbIGAWXvsOz36g==
X-Received: by 2002:a17:907:98b:b0:ac1:e881:8997 with SMTP id a640c23a62f3a-acb74aa9ffemr1086229666b.3.1745223322902;
        Mon, 21 Apr 2025 01:15:22 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb72ced2bfsm452450066b.45.2025.04.21.01.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:22 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:22 +0200
Subject: [PATCH 4/7] arm64: dts: ti: k3-am62p: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-4-6ced30aafddb@baylibre.com>
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
In-Reply-To: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1345; i=msp@baylibre.com;
 h=from:subject:message-id; bh=4mbiitJOV2jiTWN9UUogzVPYkr73KyyYvrruA0u3aCA=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWfzW+l3YeMl/x+Ebkh023b+j7e/yz7Ge5yflwepP+A
 akIvpiUjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZiIfjfDP/01+7fYmjWx3Vnr
 ZvPoterfbs/yEif+1extJ45XyH74sIuR4d+XltgJ/yrlP50wUlhsF5RX/iRx4fb1YUvbvVUCV+5
 MYwcA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on am62p SoCs.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
index 75a15c368c11b068430362fe0b8d2d9ecc052588..64cd070f196fdd2999ddc7bfee3ac9a03f1366b4 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
@@ -44,6 +44,33 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "Partial-IO";
+		};
+
+		system_io_ddr: system-io-ddr {
+			compatible = "system-idle-state";
+			idle-state-name = "IO+DDR";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "DeepSleep";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "MCU Only";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "Standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;

-- 
2.49.0


