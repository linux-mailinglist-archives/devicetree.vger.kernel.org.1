Return-Path: <devicetree+bounces-188137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F20E4AE2E38
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 05:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EE62188ECBD
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 03:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB9417A31E;
	Sun, 22 Jun 2025 03:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="o0/fpa5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA961482F2
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 03:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562996; cv=none; b=Y8NZaDQ42CRPcOJ5H2bpZi4Whohgol2hCiFstnTACAk09dCCjl6EtcuPp79NB1ZvCGuSu9sXnTPKleqAT5yK6ZL2Wwv4y1gVgmMm53JvRQS1u272zMQz751aos42DNkf7Wq8dUwt6edrVt8n8g4G2OZVRFlF8MMM/XnihUxUQpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562996; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fcqTqmYI9dQuUUeGx7YB2Qu/+dw7f1AO+Kn4YB2gtZA8dKWly6ZGljWyPhQsJZTI1HUHdZ//h8vI7Lc0iPWCZyVaciCjMRnpKabfSgmob1oTL849FpKdv6wx/GK8BgzXJwCyqIAu9JpvtLdSTobElToxjafzmsAS4Gbq4IGA4mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=o0/fpa5B; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6fb3bba0730so36398466d6.0
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 20:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750562994; x=1751167794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=o0/fpa5BgbaGZTiZLjE3iww3xG6/TJyz/TW/RCsbN0owQLb0MVsja+BleejVA6C0V/
         3DnO81f4hWaqFBSvpOUw+ldXg2BRdxkP4vP8qwCkq3ElXYMe7SYXFRinpZhiXLWhOQAi
         qI00pGbXlC6P4hPFfFL3cW08BdZhI5+C03JhuGBguSKrj/LuqbLc352RJaUMo4R1zKgZ
         W1K06iTD3abiQ9NBemY2j47iPEOfXB3ujqQ3es2YsCCQIkJkEm9Kzv2vGmr4WQkr9/4K
         FajuhXZNTq88kEl6oflHzT5JTOuxpy2mAi8Laua32wcwJHCuu9U4aBqQIIHEWoYMNJbX
         zWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750562994; x=1751167794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=fBchmUMYefvy1JQp4rukKT/ddbN8B49P5V5qMx76GABdHcwD75RNmbsGAqIg6HER1X
         qB5qJWHPcvlSA4ClIg2893ei2HP9v33cAXMO2cvlwvJBfb0qCQM18JT7nbuxcvdbbm/Q
         DnctTetQSJCRTSq1Wf4TNPfaDUAoX08yiQk0cM8fe6TGgap8loN1pQ8YyhxCU2Cs/hyB
         6/aSU+pXCqAjnP3CPsGrJa/krW2InY5jxFOG+8R1jb6Bd9HZepOExTkMMTb5tyeL5klM
         ttBKjJ+O34X3M+heED3BPe91mwykbDxa5aQGrxeIhX7PtRoHrWhTRvSSXYjzRDxvfPgd
         MoIA==
X-Forwarded-Encrypted: i=1; AJvYcCWMjBQvjOQGTCqk/i1afK1P00JqcJUsnjr/VnqJ7L4I9qx4s+3RVHR6fXHYCARP/BTl19Z6W86oHXBE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh29d3mt8hWsWXxhhYmvmKCMnEFDGYBmJuEwlqOeVU4jE4KVuf
	0yvpcRq4Lzcjv/ffiL+oOvnI81lXufkNlnoKIgh/Ret2MNClZgO4sjJn6WmUhOgAFoA=
X-Gm-Gg: ASbGnctwumDCSTAEGNaSby8FsHoxjeZFEeQgxHe8+7W8EsbolDg63B4uHjf41Uax1Db
	JVmbQ5atE2oHPIsTV4lhGEP+GS4WRAl9VperOTvohAyqWKZkKZQRX3sc7am2mVsaX5c9JUfK0te
	ow4UJmfNyC7NAbuCT1+C3YC90S7MZ9y8k9Bjpxn2p2tm+CsMwEpMiq280JNojhxObMJboJOLVQd
	ozlevOpJNvtpkNpFIi+5wYJPx3fo8ihNoDkCnurWqMS7LAC1kHr+clx5RJqqLc1Xm6/YvV19Lb1
	ZThPaZKSCRI5eLCgXdEllffQT6wPesmoKvYaNZz7SuxIZwLApWNH/w8/KY7RmEiEVoKch6gjUMu
	AcozLIuN5lRnRIe2dA1txE5SSlkzFqAWdkr8=
X-Google-Smtp-Source: AGHT+IFx7soANp4iyxPjh25Qy4p98v7iDm54ya/OEbJv3+HBB/XlyEpTgKQt20ORZjbaNTVgNKCyAQ==
X-Received: by 2002:a05:6214:3385:b0:6fa:9ca0:c67e with SMTP id 6a1803df08f44-6fd0c87da04mr119950596d6.5.1750562994099;
        Sat, 21 Jun 2025 20:29:54 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd0945183dsm30014526d6.44.2025.06.21.20.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 20:29:53 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	alexandre.belloni@bootlin.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	wangruikang@iscas.ac.cn,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-rtc@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 6/7] riscv: dts: spacemit: define fixed regulators
Date: Sat, 21 Jun 2025 22:29:38 -0500
Message-ID: <20250622032941.3768912-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250622032941.3768912-1-elder@riscstar.com>
References: <20250622032941.3768912-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 7c9f91c88e01a..a1c184b814262 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.45.2


