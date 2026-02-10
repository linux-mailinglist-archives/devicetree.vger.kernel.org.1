Return-Path: <devicetree+bounces-264303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOMPMiAAi2nJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:53:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2401192D2
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A091230B4358
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48D2734253C;
	Tue, 10 Feb 2026 09:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b2uoyaGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD9C342524
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716973; cv=none; b=AyARud4VqtPslyPVHOiHT0DO2sK9wN+WMRskMgyyEIhKO2053ya2HtHdmu/nVpXYxG6ehHhL6RSFaTOeiLtkC4J7LfRqxqx5q99mOGo4M2lEFTLDhvaCJuFv4+0mXly3xu7FPQ5w077Gkq4xSvrlQ9xB+sWBuv0NtdRfz/vbuzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716973; c=relaxed/simple;
	bh=lMzEsshGSRJZOWfPu29o542XgKUbh2dLItyfJE9Cz+I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IkScXyCZe1bW1acqKK73zapuAIQZN50anYbXul+Pz4izCuUQWmQzOPwiYcVGjuPdxvMZ2t5W48ysnNQ8I7zD3OzaRkJchGSgEn53xWY7Es0pXQq2IUYFRLAfcY5fnrJRbpyYuTiyfIZkI0j2hkeZPEEVCrm/BfMZ5bkMio0RpI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b2uoyaGQ; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59dd4b602bfso7041558e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770716969; x=1771321769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=docz6ooNYgx/jlwVUrg5MGlatBXXa4vDb6cy3X3gZsU=;
        b=b2uoyaGQbsxgAC77F4YMPXp0hLKygphMNDbGTfSnXAZvFk+su1jOoiOMo/BmJtPOVh
         FFY9TuRz6y8fLjkCpp0cFk4i4CJM0iuRE/xE4s852D/Q64jk0bVwBqaIVIPUgXaN8cQy
         sadn/1KSxGNNQsv8lsipTICuoxjkHHzkpGEbbhRwavWXpN14yYkV54oW1FCJzDXcKMy9
         S6ZgUcD64w7uOmF+Tr8985AtJ/8zmSxDBZ1HqYh7bebu19cFZyD+6TFy6XUBnKSC7xnG
         yfDbYzK9bIhVZ8yavoaUCYgyvVETzyNNOR28bAkgEgSLtmfrgwCiqus6loLC+V24YCTz
         9Ryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716969; x=1771321769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=docz6ooNYgx/jlwVUrg5MGlatBXXa4vDb6cy3X3gZsU=;
        b=Je5qO4OMj80mUGWo70nolpvvyxpN1a6PUlRcadI7X+b+FuQxSIGt55j1IwlSTNz4gD
         8VJazbVnfmfIAxeTcBaSSR4k+3PsGQ9Fkh5jsAJOvnnE3ywEK5xHg/LI73W3iyMdGX5S
         czF7oQBUn9KBayIfHsFJmd/p16+U4FX6EYECiwi4i9QLI6HxR38EMAMD2snDyQnNjrYe
         rO4HvQMh2Tj1LJQca+Qm8YrJC5VNmtPb9TFRzt4Ya7dqyfMvR3Yg97FF7DXJSgX8vAzl
         mhx6Kcvw6yAYxY/+U349HnAHHZ3b7K0plu47vSrR15+adrODcF0L8+QoSOytL/DHAodo
         aZBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVExB0ajnI/ifNDMvB6MveXZpRQ1SnCwsduyYF8J1FtKRJOPtbVFhCgd74US7Ag8Nh4CQK+th0ePFjZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa+RRvV2TeV7VB4QRl27vQNvEKHuBvenHgNs7U2yuM7P6o/h4i
	v8cgqy93P0T0AnyqQcPsTYif5nx9DKZeqsg62tiOcIIICEmtgDAc7VJv
X-Gm-Gg: AZuq6aJ/c3ITs/t7Bb3sE6+Cf0rznNownqZ+2FiGHC9uz09GhPLrEw70Fd4XqOxDhX/
	je7m3T4mIfES0Q3xLRh6VyDA+oN09a9IzQpvpgXzDQQlJSiPNYaUNDC3RNUTiQlhVCrOrKipxSf
	Ih7+Zp4AVSNlDDo72wsPpRvZMcYTtfuvqYFuNmlO4My2pfrG4KEUJiqh2BSScgMAIbc5hgyJQN/
	1EFNWU99GXcJy6MwOWBTJNkNXVcr8lMGTq6x6QE32PgF4e1q05drFDzFD6D1V2oDyH+PDxuFE8f
	Up90uqD7aI16dykWE6xyUPeIwD1iwefZrMu/K0irCuNoHAcEtYHjEeM6jKWQsm7NU9GShodhPj+
	jeKydkAP5gTqL5YLmYWodSqr0akixOFJVIy9m3krDdHmzTkykFhmlNhekXVB85Zp4KD3/jZBR0k
	+7YFx38BR9mLoN
X-Received: by 2002:a05:6512:b16:b0:59e:1663:941 with SMTP id 2adb3069b0e04-59e55b7404cmr537077e87.3.1770716968637;
        Tue, 10 Feb 2026 01:49:28 -0800 (PST)
Received: from xeon ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e231d5sm3191691e87.81.2026.02.10.01.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 01:49:28 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: tegra: transformers: add connector node
Date: Tue, 10 Feb 2026 11:49:08 +0200
Message-ID: <20260210094908.14276-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260210094908.14276-1-clamor95@gmail.com>
References: <20260210094908.14276-1-clamor95@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264303-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,3.60.63.64:email,3.60.141.96:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2D2401192D2
X-Rspamd-Action: no action

All ASUS Transformers have micro-HDMI connector directly available. After
Tegra HDMI got bridge/connector support, we should use connector framework
for proper HW description.

Tested-by: Andreas Westman Dorcsak <hedmoo@yahoo.com> # ASUS TF T30
Tested-by: Robert Eckelmann <longnoserob@gmail.com> # ASUS TF101 T20
Tested-by: Svyatoslav Ryhel <clamor95@gmail.com> # ASUS TF201 T30
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../tegra20-asus-transformer-common.dtsi      | 22 ++++++++++++++++---
 .../boot/dts/nvidia/tegra30-asus-tf600t.dts   | 21 ++++++++++++++++--
 .../tegra30-asus-transformer-common.dtsi      | 21 ++++++++++++++++--
 3 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra20-asus-transformer-common.dtsi b/arch/arm/boot/dts/nvidia/tegra20-asus-transformer-common.dtsi
index 73c7ee378865..51d99998d836 100644
--- a/arch/arm/boot/dts/nvidia/tegra20-asus-transformer-common.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra20-asus-transformer-common.dtsi
@@ -79,9 +79,11 @@ hdmi@54280000 {
 			pll-supply = <&hdmi_pll_reg>;
 			hdmi-supply = <&vdd_hdmi_en>;
 
-			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
-			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7)
-				GPIO_ACTIVE_HIGH>;
+			port {
+				hdmi_out: endpoint {
+					remote-endpoint = <&connector_in>;
+				};
+			};
 		};
 	};
 
@@ -951,6 +953,20 @@ clk32k_in: clock-32k-in {
 		#clock-cells = <0>;
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		hpd-gpios = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&hdmi_ddc>;
+
+		port {
+			connector_in: endpoint {
+				remote-endpoint = <&hdmi_out>;
+			};
+		};
+	};
+
 	cpus {
 		cpu0: cpu@0 {
 			cpu-supply = <&vdd_cpu>;
diff --git a/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts b/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
index 1ed0536ae3fa..498780a96cf9 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
@@ -67,8 +67,11 @@ hdmi: hdmi@54280000 {
 			pll-supply = <&vdd_1v8_vio>;
 			vdd-supply = <&vdd_3v3_sys>;
 
-			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
-			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
+			port {
+				hdmi_out: endpoint {
+					remote-endpoint = <&connector_in>;
+				};
+			};
 		};
 
 		lcd: dsi@54300000 {
@@ -2302,6 +2305,20 @@ clk32k_in: clock-32k {
 		clock-output-names = "pmic-oscillator";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		hpd-gpios = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&hdmi_ddc>;
+
+		port {
+			connector_in: endpoint {
+				remote-endpoint = <&hdmi_out>;
+			};
+		};
+	};
+
 	cpus {
 		cpu0: cpu@0 {
 			cpu-supply = <&vdd_cpu>;
diff --git a/arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi b/arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi
index 53382e10f29f..0b0713d62e32 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi
@@ -166,8 +166,11 @@ hdmi: hdmi@54280000 {
 			pll-supply = <&vdd_1v8_vio>;
 			vdd-supply = <&vdd_3v3_sys>;
 
-			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
-			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
+			port {
+				hdmi_out: endpoint {
+					remote-endpoint = <&connector_in>;
+				};
+			};
 		};
 	};
 
@@ -1713,6 +1716,20 @@ clk32k_in: clock-32k {
 		clock-output-names = "pmic-oscillator";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		hpd-gpios = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&hdmi_ddc>;
+
+		port {
+			connector_in: endpoint {
+				remote-endpoint = <&hdmi_out>;
+			};
+		};
+	};
+
 	cpus {
 		cpu0: cpu@0 {
 			cpu-supply = <&vdd_cpu>;
-- 
2.51.0


