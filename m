Return-Path: <devicetree+bounces-52398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B42248867D6
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22F2B1F22289
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 08:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C7DD22331;
	Fri, 22 Mar 2024 08:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1LUDboFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D121CAA3
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711094515; cv=none; b=WGNazlkks14CSLZI4H7tiOCL+mH49ipgq+Etco5g3HkXB0Ace2b8erDZyRyu5V5t/SpKrJHN6U6GE0RYV2bZFRHEKNKp5R6HbPZuwigSSGtIQVfPtJkFdG0J4lLT1jZkSqhP0zLwxjIJj3YXqCMRI4K5In+Eos3A1KmyoYhTUNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711094515; c=relaxed/simple;
	bh=eRAUypiy6NxphUecfUcmOhK6/zjL6KugszpYnn8ELYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CCAdKmSWKeXYa9VQM0HkMGRtIEwE/Chgtd6kXVQhRLNJlVrE8rFsl+tQc01lPUyjNO/7uFhTzdZrq2GqeBndKk5+8p5VksTiM/kyHnry1Vd6qVDPikZGLAIMaBYlSFq6O17M5bFcPCIbzRMCwZts58rQMaKiImI86k92qwDdvlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1LUDboFm; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-566e869f631so2018995a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 01:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711094512; x=1711699312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5pRYK0AY0UI9ndhzyuHsQHi/IsO1+vFhpELF3E3mlVU=;
        b=1LUDboFmd4Ic28Ky6iPYlJn0azhrckoKdyX2wp/ppC6JY1Ote+xGYlIKLgMOHsAGp0
         RSNpjl1GLtkpX2QIeTx5Ds6VHHTk+llHV6QFQOEFvIE4Yhg0ljJ6r7dCi4P7t7yjnyuo
         H7gzTn7acIg+/azmTkeyhAA0E+CM9f6/zh0B12lfY9bY5OsEFK6ViFQpSFx/dyxWsFRy
         2jHEMNzy9EI47DNJGTij8IkZxICIX/3wbjKp1z4W9RFsqNsbdvq7abWWOa7IDGta17yG
         nlW8gEo4gTwq6PLYrhilWe4QkR0vqHjgGJ+DVKsd0Opu0AFbcix+F/W48JXxL9RsC8tY
         XdJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711094512; x=1711699312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pRYK0AY0UI9ndhzyuHsQHi/IsO1+vFhpELF3E3mlVU=;
        b=RI6CCTH5RR2xsKbiJjKTaAXpL18AUdKxuAfVATGa2SXOxzED92aF2RHb2uuJGR5pRX
         WNxADedJdL5MUVNSpt3YGmOG1FXwfJakqs9tZPF9kMgHpKELC/s2KW4t29W5Fm7NLcTV
         /FONhww3fRMnIwFNN3xa4I315McRh6PzLgJEiN/pSd05ZfQtdRLvkTZrWAnm5HL6v/Pa
         sS8m9p0kguGLvTi2yUEXjHz4Ki+JmeizML1Lzdh/xJzV5YpCd6f9uy9IrZGFiDcZYZp8
         R7NvTzO8HG18U2I4QwehGQIzJP5RSSk+12Zot6sjGqVI/Soi3aq2IbxOi12l/25i8EvA
         kgUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ7vYSvFU83YHeTmlzXuMCapzTjvnZ3stEvSIlgzHtTRyT0udkgj2HvcLFQFjYc/geGWNloq+Ji8DXTv7MjbLytaK/pxYkUe91JQ==
X-Gm-Message-State: AOJu0YzTemkViwNWU9Oj5XCB95lM7I5gYSroAVpIcqkGXwN7JVLsMshO
	gikuhJCqg0TSG6qodRJ4RpcclzYqvPX39M1kQALI3MmLhEDutXRDhAqkPKiG1tI=
X-Google-Smtp-Source: AGHT+IFMV+nhmCMGnciFCjJOMnCNNdWpE+6zHt7ZXFjZQ3ImU8IBSLs+ufVU4s1Y/2jvby1lqIfekw==
X-Received: by 2002:a50:a6d0:0:b0:56b:9162:8e6 with SMTP id f16-20020a50a6d0000000b0056b916208e6mr1069232edc.18.1711094512569;
        Fri, 22 Mar 2024 01:01:52 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (046125249120.public.t-mobile.at. [46.125.249.120])
        by smtp.gmail.com with ESMTPSA id p29-20020a056402501d00b00568c613570dsm739889eda.79.2024.03.22.01.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 01:01:52 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 22 Mar 2024 09:01:35 +0100
Subject: [PATCH 4/5] arm64: dts: qcom: pm7250b: Add a TCPM description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-fp4-tcpm-v1-4-c5644099d57b@fairphone.com>
References: <20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com>
In-Reply-To: <20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Type-C port management functionality lives inside of the PMIC block on
pm7250b.

The Type-C port management logic controls orientation detection,
vbus/vconn sense and to send/receive Type-C Power Domain messages.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
index 91a046b3529c..d9abac052afe 100644
--- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
@@ -51,6 +51,45 @@ pm7250b_vbus: usb-vbus-regulator@1100 {
 			reg = <0x1100>;
 		};
 
+		pm7250b_typec: typec@1500 {
+			compatible = "qcom,pm7250b-typec", "qcom,pm8150b-typec";
+			reg = <0x1500>,
+			      <0x1700>;
+			interrupts = <PM7250B_SID 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
+				     <PM7250B_SID 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
+				     <PM7250B_SID 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
+				     <PM7250B_SID 0x15 0x07 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x00 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x01 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x02 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x03 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x04 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x05 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x06 IRQ_TYPE_EDGE_RISING>,
+				     <PM7250B_SID 0x17 0x07 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "or-rid-detect-change",
+					  "vpd-detect",
+					  "cc-state-change",
+					  "vconn-oc",
+					  "vbus-change",
+					  "attach-detach",
+					  "legacy-cable-detect",
+					  "try-snk-src-detect",
+					  "sig-tx",
+					  "sig-rx",
+					  "msg-tx",
+					  "msg-rx",
+					  "msg-tx-failed",
+					  "msg-tx-discarded",
+					  "msg-rx-discarded",
+					  "fr-swap";
+			vdd-vbus-supply = <&pm7250b_vbus>;
+		};
+
 		pm7250b_temp: temp-alarm@2400 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0x2400>;

-- 
2.44.0


