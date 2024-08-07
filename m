Return-Path: <devicetree+bounces-91779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE56094A8A2
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 15:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62758283709
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 13:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5C911DD38E;
	Wed,  7 Aug 2024 13:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="R8+qSQ4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB0F1E3CBA
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 13:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723037520; cv=none; b=FV7YYgi/gxKRQoz6Hkz+jF0gifWS5dluCA3dIjkiGUGkYTV2xOma0LM3J74mdD1OgVD3rhSq/k/3ME0dHU5iNgyrPlCaaAaZCFi23yD4xpKXrRpr06G+YPfgsRMoiYZS+xVo79Q8zG9X9I0PG1m9sRA6aMc217f0Vr5PYcfXB4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723037520; c=relaxed/simple;
	bh=I0YOAeMMQ/RBgnuOGksJ5QaMn2vrXWE6rlYOy6/JtqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=OKpNlb9VYUbnMi25C1P11hvkw1SwRY/rTRWwghAXnXIDhkHXeLjEaqA2h2q1AySzLyiM49PJ2mTjeSHdnkZe55lJYZ76Fxni27+Pl7Ra2C0VJzpwuaq+tSw7anlXCslciIV5FY2Da0Nvtp+/Jm4QspLOR6pMfuFa2ygblhQsn8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=R8+qSQ4O; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428178fc07eso12316785e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 06:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723037516; x=1723642316; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=164tr0yz7inawChH82oVEAaUXNqCqs8bMXCcFphhnjM=;
        b=R8+qSQ4OviuAr6tkU1BYBmhxX8t5vFRzXrPXt4yj+6fDzyE1TYzyHA0jlzW388Q7BJ
         AEercpD2riORcuUi4LNjoy50+4u+FgcZLvKoMk4O5xklCRl5K8cd+UhX6ToJrgR/sZgY
         l29T8ewhmFX/7l8KdoEUddgY0xLej0WvmoNjUCjl6P+OFJebhGzEWk5BfyUw0Zhomvic
         aJSQO4udYVdYieZgZPjjtYYhFdz4i+2N7gLgHKOYSLwGeaBXVVYIFx7bqhvz/tdRC6Jc
         cosiuM02hwWhkV0MFSgrzsyjA2OSdRDwCQKlXTN+nlfmCcz46Z0hBZ7Qhj1a0XmKHfTd
         zufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723037516; x=1723642316;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=164tr0yz7inawChH82oVEAaUXNqCqs8bMXCcFphhnjM=;
        b=VTnx1lXXPQzsB3jrsn1D1cGAP4NwBD+0/YNtILv/yknwfIs8WdXrgH9sTwmQxu+PT/
         O7dDuXES4WnlYtjrr1XLDqyhThbC6XkiR4Gft0H9LbTu0gt33PwNKsZid5UWLH1QY2GM
         kgl9+Z4jOGyzwEN0gpmcGGvZ1mjQxAuQLx0Q/ADJV7PYwWTSB/vVE3dFzMiANISb0HiW
         KqLiE5XS/yS/m9W8hHmosQdMXWqURzuaWn+Z5A5glWVs4CNcrPdiiot4DMi94LYRjbwh
         g0IWAYJXoyVbICM2ITLuWQoSVGZYLrvvfxdw02JF4HvF9kbFo3z4ZvW10WKmIVlomm6M
         vEmg==
X-Forwarded-Encrypted: i=1; AJvYcCW9iC/oiqWm76wW/hZ+sVBos0YuvITyEv6JWahmEOD6NoOGSRayjaLI9+CSg8f8iSDGqLjiMo+HsPrXkWEu4oXkfbwaNAYbw/X7mw==
X-Gm-Message-State: AOJu0YxsqNLXP+CQ4bq80p6rgPSHsfp1R5LSyN60jp/oxe+bvPbw9i+C
	T4WRhGTPL9yfUt8Yr9z6kaDz3Ueqc+WWHQlrrjRXyeKUkkhaPAaVns33+myxeJo=
X-Google-Smtp-Source: AGHT+IHZ6j7eB4eff+ZU6Ljgi316Ng/lSjNPepGxFzSz5LPlCb6rjcJjFdNp87kEzPvobstUNi9b0g==
X-Received: by 2002:a05:600c:358b:b0:427:d8f7:b718 with SMTP id 5b1f17b1804b1-428e6b7f0abmr127289625e9.24.1723037516192;
        Wed, 07 Aug 2024 06:31:56 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:a3e7:be71:fe4f:c360])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429059cd2b3sm29360505e9.44.2024.08.07.06.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 06:31:55 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 07 Aug 2024 15:31:43 +0200
Subject: [PATCH] arm64: dts: qcom: sa8775p: add CPU idle states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240807-sa8775p-idle-states-v1-1-f2b5fcdfa0b0@linaro.org>
X-B4-Tracking: v=1; b=H4sIAD53s2YC/x2MQQqAIBAAvxJ7TjBL0r4SHcTWWogSNyIQ/550n
 IGZDIyJkGFqMiR8iOk6K3RtA35354aC1sqgpBqk7qVgZ8ZRx6oPFHy7G1kYZXyQ3lgbEGoZEwZ
 6/+u8lPIBvl3dzmUAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4120;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=EKlSo1FtkBt4LmDA1XAsl6pXZ1ICErv1hWvRoyPvAQk=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBms3dIxeBiVUpzBwdqkeLTAo2bBFKAJWFoDrocu
 GEmOqxQfwKJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZrN3SAAKCRARpy6gFHHX
 cjvpD/9HQSDQMSUE8M5EvCrys8L34H2quxpDiOKMwodwroCf2fNgjM60xBRanLfCcSXXnfJDMJU
 jxJAtZVrz3flcf/TTBJgpId6hipemMZTPasYjuVvdMCR4+HkUcf0gA7Xy3mMdEzxG8Zo4y9b+Fl
 sjj5n0zj3M53WdpSvUI7bRo6FWo23yl6NSxWuspMcAkE69tPVLa2WUfysBiPtIPcetcLJet6p3J
 lF+wPcyB2i/myEVOdUYIKGlC8hxcFkOzwONdzsINZ8l4pARgZt+cP4ioiQUNeqeU0uPalVNqMNU
 xkhll52MvKIs0cH0J867CKk/l2CPERCirvQ0g8pfNDfO48fmO8zwPP4gc8RPrvuoUYwpMBhFXtv
 xXT6ckanim+pr5mRH2XL3U/tIfByxVqMLbZcyJ2xYBg28gyBpfXmHDNLd5j2kbptiHdQnzl6VSA
 BanBZwwuGMyalbxgfMg61k6WUUWXbnddv0zT7oTJRoYRsnH7W/tBWm/fDYhPG+AGpT88jebFsKh
 uQWh6GNvYtYakm9OJ2DLrX0F6dhEl/zmkuIkU7rheAM34RVZNS77B6ig0z2IjunpXeOq3Xa4Je4
 AteYA5/jaaQUnJ6rfim1Uq6/PaEh3zQIasf4QIbs18PrfKPdaGLWnnNwwPkODQB/idc6BKEiPqf
 tc3hMd8CYTuPXMA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add CPU idle-state nodes and power-domains to the .dtsi for SA8775P.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 115 ++++++++++++++++++++++++++++++++++
 1 file changed, 115 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 602e20d5f1f7..6e50ee5f3578 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -219,6 +219,48 @@ core3 {
 				};
 			};
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			GOLD_CPU_SLEEP_0: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "gold-power-collapse";
+				arm,psci-suspend-param = <0x40000003>;
+				entry-latency-us = <549>;
+				exit-latency-us = <901>;
+				min-residency-us = <1774>;
+				local-timer-stop;
+			};
+
+			GOLD_RAIL_CPU_SLEEP_0: cpu-sleep-1 {
+				compatible = "arm,idle-state";
+				idle-state-name = "gold-rail-power-collapse";
+				arm,psci-suspend-param = <0x40000004>;
+				entry-latency-us = <702>;
+				exit-latency-us = <1061>;
+				min-residency-us = <4488>;
+				local-timer-stop;
+			};
+		};
+
+		domain-idle-states {
+			CLUSTER_SLEEP_GOLD: cluster-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000044>;
+				entry-latency-us = <2752>;
+				exit-latency-us = <3048>;
+				min-residency-us = <6118>;
+			};
+
+			CLUSTER_SLEEP_APSS_RSC_PC: cluster-sleep-1 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x42000144>;
+				entry-latency-us = <3263>;
+				exit-latency-us = <6562>;
+				min-residency-us = <9987>;
+			};
+		};
 	};
 
 	dummy-sink {
@@ -348,6 +390,79 @@ pmu {
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
+
+		CPU_PD0: power-domain-cpu0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_0_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD1: power-domain-cpu1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_0_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD2: power-domain-cpu2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_0_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD3: power-domain-cpu3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_0_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD4: power-domain-cpu4 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_1_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD5: power-domain-cpu5 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_1_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD6: power-domain-cpu6 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_1_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CPU_PD7: power-domain-cpu7 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_1_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>,
+					     <&GOLD_RAIL_CPU_SLEEP_0>;
+		};
+
+		CLUSTER_0_PD: power-domain-cluster0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_2_PD>;
+			domain-idle-states = <&CLUSTER_SLEEP_GOLD>;
+		};
+
+		CLUSTER_1_PD: power-domain-cluster1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_2_PD>;
+			domain-idle-states = <&CLUSTER_SLEEP_GOLD>;
+		};
+
+		CLUSTER_2_PD: power-domain-cluster2 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_SLEEP_APSS_RSC_PC>;
+		};
 	};
 
 	reserved-memory {

---
base-commit: eec5d86d5bac6b3e972eb9c1898af3c08303c52d
change-id: 20240530-sa8775p-idle-states-828cf0c899fe

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


