Return-Path: <devicetree+bounces-223081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFDABB0BA8
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A18D4C195E
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3CC26980E;
	Wed,  1 Oct 2025 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cxgOmmgm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771C0260565
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329322; cv=none; b=d7ekv+qKoaijxYO8TIJ/30ZYDX5yuGhT7afLt0J8LIjzz0Adly+FwAifn83g2XyVXi8I5Wdo40c8UEzgJvj55jeIMEWxSIqgnKK4ksAh03LlxLjPx1bQCxgYyEgJ8akOUhFgdu6IkSpLKP0fr84dlwoFDvikc0whMZM+RZTTB/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329322; c=relaxed/simple;
	bh=6hGcnBOkrSMQIKieC/McV84XZyXymXT7FDaWvZWNWbs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J3YQzccUOooyxUM843A66cbotZ/2ddTI9Z28eo97LmOv/3uRIpByQSdSlt9Ih+Cm87sum9T0i2DymPIbiGIm++46G88swMVYS5betU3HZ66bY6tB88xlN4w3Go6qVwY0c8fHRRxtJevcbGc12HI9cINbuXM/GPjFKvTBXgqNfD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cxgOmmgm; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-62ec5f750f7so10885518a12.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329319; x=1759934119; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=cxgOmmgmiCCNLqUW26Luv82cx20E/ZMz9qh5uUrp/2QeDf9zaJUfDpLvgYes/ZlUoR
         FKi45jsCtMFaHXZkznsEdCqn2fZOGr538tvdfZyPkEIlKnhnDk5OH7IEIpNc6NAnPnRO
         jXncvwT8sutehUvaAj82TwTg0yW3mOGrSWCs3adTXt50H84I+oxUj3TPgKePewCf1KEJ
         jYBCRTXlettLROi/dbh/pUiu/vk1NBRAThoAM1pcCGrWU9d84w4Yp05xsEMhRi9CeL8Y
         pdFy2YdAmkDcVele4Tt4t8gAg1TvxhYmxeoKK0ujfbnYLJmmv/4ym9qs9AOCsGNCAySH
         kcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329319; x=1759934119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=BD11fpk74O3zdIwEdFizdZa7u7dGdRKmWkmazzs9kHzq+SwgprAJ/hLYNS1DeiSIAv
         LpuFRQzGLy8m46fAedWJg/bP5W+9l44dCloQ+oDG7SvXKnjE87gUjxnCS/ba4aq13sdO
         D6vS4G823P3243yIoq8EGEw+vyTGLdC4NwnvT9g+bY4ihQMvwhd7GqTD2W9JXuSNQMA5
         mIJD1Gk23DO2/qeboz5cQPDEZHKELANqgTmKl3IVyuVTDFRL1wz2+B26Vpux6XF8QNUr
         C8Ue0OpbNyxrhcyDP70amLCK3voqu4HTZqnjxtQEXdbldQpUCyS895OZwbqwiOyVGbB+
         kbqA==
X-Forwarded-Encrypted: i=1; AJvYcCX5czloKLhmVbqlrPclC4IjQIVrJtIXodX6ZgRWBwubWGLiAbWZDdhJrSTXuz82Vp+6TazdrpMzgB8A@vger.kernel.org
X-Gm-Message-State: AOJu0YySKeQOmmZLuQsgamgTCC6V/R6y+mX89kMBNL7Eko2PSs5xYRTc
	CjCnPV65uDi5m8EMp6S9H5NdD8exmI5tTnQc2j6SMjlD2eugX+j9IAxTbo7/UCD2hSM=
X-Gm-Gg: ASbGncvi/mQYPhvt936fn4LoOLWQ7PBmWurxOUBFGKqlAzR8PBdpxIZYgNDOUieeRLt
	UYl+Sa1ehlRODXooT66YtHdjznTv/js3oxgK7Lnp5VH3+1u9fXhvamjSG0jwG3q228XRzMbfk51
	xpoX0I+ZBN5XmDdHOt31rvsjt5+UFBOFfVdqfe7g+tZtlS/TIiJxXJDTigp/Zrcuc5oykqzHIPI
	8eDw8NIklfA9/PMmy4jNbKq5LRFObSgodCASMzGM/w6OsGCvOgiJpFsaMrURl+PyMCHD7/7x4wZ
	G2KbRlPHN7mbtQAqJ57+TKzoHnZi3ZnuGSUfOTLGsmONedP4/UmMyevTCW7ziYJwEMXdZZb0cpw
	hgNlW34pzsmMgH1pxc7bnphqorJ/+mNJQdwCnOoMXTiRE
X-Google-Smtp-Source: AGHT+IEzvHyBc92HNqPVs3GdFrOt6YeTSsFc4xFWvIA6c2/HM9PJxT6oIh991UA0FNDgVEprf2xa1w==
X-Received: by 2002:a05:6402:2355:b0:636:7c68:6e31 with SMTP id 4fb4d7f45d1cf-6367c6870cfmr3014070a12.4.1759329318650;
        Wed, 01 Oct 2025 07:35:18 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-634c065a67csm9859870a12.36.2025.10.01.07.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:18 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:15 +0200
Subject: [PATCH v3 3/6] arm64: dts: ti: k3-am62p: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-3-7095fe263ece@baylibre.com>
References: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
In-Reply-To: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357; i=msp@baylibre.com;
 h=from:subject:message-id; bh=6hGcnBOkrSMQIKieC/McV84XZyXymXT7FDaWvZWNWbs=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy7NkxHbT9olx58ocZ7ZNFJlrrwVAtJLcEQRY6Sctb4x
 L1Bn491lLIwiHExyIopsnQmhqb9l995LHnRss0wc1iZQIYwcHEKwER+VzEyLLrcOd9DfLtaZLf/
 brFtlpz/WZfK/v9YV2Uyxf3kqhqeLQz/czNyeVWmFewsmXDs/nt525hzHgy5i9s7Nq4UvBlydvV
 FLgA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on TI AM62P SoCs.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
index 75a15c368c11b068430362fe0b8d2d9ecc052588..c69e16f16c835489f2bc5cba158235ab955347e3 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
@@ -44,6 +44,33 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "off-wake";
+		};
+
+		system_io_ddr: system-io-ddr {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-deep";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "mem";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-mcu-active";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;

-- 
2.51.0


