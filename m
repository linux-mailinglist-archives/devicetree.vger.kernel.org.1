Return-Path: <devicetree+bounces-226632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E6024BDA3AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:08:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6C476347EC9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4989E2FFFAB;
	Tue, 14 Oct 2025 15:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IsP1gdb2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0BF302769
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454322; cv=none; b=MaN7FXd+xMCn9ULgrZsXNHK7FCmT4+9h8oqHttGSL4lRWITqmbFcBrQRFHZC7zBZpQmBoiNHuWG6KpdNo9nG7TXLLZQW44VXoqneN63e0AYgvnJcjMrzktNUCHOfhDD5COal2Ctz61iDW/EmDQohThgWPDH8N3Z60huGL3JrpeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454322; c=relaxed/simple;
	bh=q41LAG04mQN+h/yjsDMGUnk4+iW5c6zrOTH+jcEbjrs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NFNxTqvta2RJj8yxxzZhdKkPZmBjHvTD58qwwWh4BBsDPUuG305nvnCp3DELTEhycNfvyehpvPIoWfXK8ApDmZbOTxdJzqYSwKEX+J5zDC/gIVbGRIERAmC/Z0pMLnWlL+JNwNKe7NkH6F/p53q8Txo7dlIfftvBXmkQjduU3WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IsP1gdb2; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3324523dfb2so5348106a91.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454319; x=1761059119; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1i7iqUxmgg/DXwXQpNr1KmCqr3Rj4mhCflPyxgc9Us=;
        b=IsP1gdb2wTXS79BtDxR/L7vOm02xs47qA36vLtxaqrB3oPX5Wnb8XDb/sa2lEk4hbN
         /lAaBOrJdKWU//gSmTHFiMwjUcaYXo7RVdNI9tI77urF9jHHEs18cfgpKjaUxQehP2x3
         QwIV3RczK+Y5/bJ45KVpKscxh94Rh9jnBSIsIkPuglM1CeabYTcK1/dY/AzebGvRnCX6
         TJ66ftDR7WYNMmLlnaiOxgIraXGmwltdhmgGMdFj1wXpmHbNd09lj52ADes1dBSSSY1s
         ODpFIJJRc7GmdGdfJgTOwnBX2g+RWLmIUHjbJb8goTVx/9Ql4kGmAbs03UYA5JPqntOT
         SDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454319; x=1761059119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1i7iqUxmgg/DXwXQpNr1KmCqr3Rj4mhCflPyxgc9Us=;
        b=U3bOtV8rIfOcXeDrbyuPnEbzhnXIwnqu44Nkyk6b3M1O8ZEDTO/aC1xnsgMluoiwBg
         L1WrVK/y/cqRq/klza91NCxJOWr9amhmzq3dF8X7oOfNMZtD51uMZb9T0fcJ2P+yCHyo
         TqLbi007Bq7GpLjQHSMp4IlmbRampG9Bk1QA+UQQTm342BcsXH5c4gY0fztQZ30Vg8CY
         1iHtmcXBKoCgiFdXK8z8dplPgTY0Qgj6EXvBEu9y/eto/v0UTEgPmxI6cEFfDeISfMK+
         itouscCc04nx/76PVfu8O2u+0QT8bl0/OkF0I4nNQlKStfYlSAlGNYp05gJwUim297qZ
         J8Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWXw3rLcePA6ZJpy5A4Ih0PPpFoYTwlphnmo82LuC+QmTdg4k8dYu7CvZ88DiO/Oz0xzcqz+kMFDZrO@vger.kernel.org
X-Gm-Message-State: AOJu0YzRd1PXM13NohEDiLTuAQNp51W0O9UqphdkuWSxko8H+372IkS9
	fNT28U/yXOiCbdf0bXHXPrvVANnzIZMBbiNcIengCc1kD7W/x0eYmddc
X-Gm-Gg: ASbGncu5YjqpsvLPHwbXHCkl71+Yu3+ZCNwtkZgr28/7xKxIQEbjrAoZ99wfN6DLTCP
	Ob8z8FLmresHRkVQ2Le8oZLNhEMFDjNB1J8jAWVrVISTQEIRJz04J7UDj1RxW7CbGXVUUkOYb12
	00nD62seOhqgJahJdBlw+MPYlq7SeFEYzjXSliVRPNSaR2ZPFdtYUNuZQ78xRr6PmGk6XqPyWuA
	xemZji0qe4ams4YGk8XEEZrejwLiFgVm8ZEWWU71H3i6GsoX91F1NJCQNfayYu4N/cHu5ubZxPP
	YSrbDQ+X/8Xvk8tk1MQK58SfEURAEDcjrvvC+E5Ny/pT0yTJWH+DUMdv3amq6LVcDGvwxSVAaWj
	dACWin4skS5Ot5+CBzKoEQg1WlR9vSWmLe/Htxpw7a1dKYn8k86L3SQ==
X-Google-Smtp-Source: AGHT+IGxU1aUYANixpQW6+RfJwrDQsy0lpaNBp+StZI5SmcT71Y9IkZbC/eBjms/hpV0Ia1TiVCOIQ==
X-Received: by 2002:a17:90b:1c81:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-33b513be2c9mr33511721a91.35.1760454319490;
        Tue, 14 Oct 2025 08:05:19 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:19 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:50 +0800
Subject: [PATCH RESEND v8 17/21] arm64: dts: apple: s8001: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-17-3f94d4a2a285@gmail.com>
References: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
In-Reply-To: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=895; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=q41LAG04mQN+h/yjsDMGUnk4+iW5c6zrOTH+jcEbjrs=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZuq26ljD+z+Y6MIqkOiTRV6L4Hn+JOROQ9G
 KHaTtZDhTiJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbgAKCRABygi3psUI
 JAyjD/wPsIPDTqdU23/DJv1noYw4bjYDPRNP+6mTAR6BfTFdSrVMb87GTXJiFVLJA/BdtCdKYUE
 G7yhhrNCrXaschGxzuQ8ryViFpkYgEEZvKlUWMpqBfhaoK0OO66J+qne8ZNvAShnVwoXXLZauBx
 rajcv0TGz6krDyTimriCyB4cbKzvB4Q7pgyz0MdtaH0JTRWxODkrZh//gPjVdYy4TNPmnlSGsEf
 WVYVHhLdKOQZAXRDXqRwIJWugYgYKodtn7P+0aEYAUBv8sTQ8MqprSnglNZBfnNHhxp2hTE5id2
 PeuQQ+nV2v05y5J3A20srKU1MBsNZzXCq3zKuSUzlPQADPsNJXSdLOmfBF7qhDKJjaDRMpu7VMc
 cHZJnplzhOz4tRc3u39wPE4Uby3q8ks/mDy4s1HzaGwkFt0IQeXIdWe/pwuK3s0gnEtFkkGZboI
 ZPRpXp3D27UByUNRylPxQ6mcnqFIKExaekyf+oL30EpcEruYJif8e0jpYzxWVg5kg4je0eMs/Ms
 EcMDV2RTzujgVfyFjFZkL8uFEEdwNaLEFB7semPfrdcEUKE71Un8A+qjevZfDxfV3Xpw/XVQL9S
 IJRRkb1FohBVPqW0Hz0odA6o7Owk8RluXHygcYYAr3Wnxq3Z7dlrHRP/vBjweGnxtwBWToOGDm9
 R0So6USZLiD2QLQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A9X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s8001.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s8001.dtsi b/arch/arm64/boot/dts/apple/s8001.dtsi
index fee3507658948a9b4db6a185665fdff9f5acc446..ee2702fc807b678023915f72b5276cc5a31e1222 100644
--- a/arch/arm64/boot/dts/apple/s8001.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001.dtsi
@@ -222,6 +222,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,twister-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s8001-pmgr.dtsi"

-- 
2.51.0


