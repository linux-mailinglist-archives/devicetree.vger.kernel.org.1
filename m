Return-Path: <devicetree+bounces-159541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB457A6B5D5
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:13:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EA6B3AF67C
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 08:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9AA31EF38A;
	Fri, 21 Mar 2025 08:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="PV2nzyzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F181E9B22
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742544793; cv=none; b=ALtBcee3nK12R8DrqztXPqnosyYzsl/9NjxA0E0nkpKKj89OlbTy05AK3fib1tyrH2Prc06x43PwAOlQgJo0+cOgKQISqxwHcVxNM/4xu1Z4h/ttj7PYNRCI8p1EecxRP5c5UUYzEcvcmY2rhBiCdlK2dQj/J9lCEoOB2daWujc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742544793; c=relaxed/simple;
	bh=i9GzDoeYHWXocHTV/J92qBEXkO6eo++ROgOYxc2baOo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dPKZCjT+o9rap/mdwH8vkz+dPDZSEJ24+Mk/MjjTkEKA33IDLDIlHiI0cr2c2OAVmmwiHyxdDEr8dh5IIPGp/dKDKwBuaz9+p4TkJHCLW53k80J3fWK82oBWc9YYSEvH7FOaoEA9ibwwqr+G3sLOwm1RDZdXnbEBl1DaXLizrhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=PV2nzyzq; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac345bd8e13so299319466b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 01:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742544789; x=1743149589; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jev2S5q0Uq23ZefU3EZw33sQyKB4WKTRkFhU4RqrJYc=;
        b=PV2nzyzqpCInw/j8dN5reUbNXmuyRJVSHtBjUVWZlHRERuG+05StQwoHTfQOd3sqIr
         svmiqYAfkvoo0q7QrZgBma9ZFAxk6i2NJdmb+4DRt4jWX30NXLPbZy+UGkcl/HV2J0Fd
         jOzfA5XPfIafql8pTAiFXHOwYh/G72VYJRsJx2i6LAd0tcQLtWj4OCyQLw1+V/w3JNiG
         VWdhgX4Mmbit61r9RlDwHBNNk6w4+UkP+/Z7n2hakfVqp5xyFSEG6h8dR276lFHZds4q
         JIknrllwIIkWLYhN5HaeNywvBP7TfelEfxt7uYW7qjVxLePR/NSURNVU+wH6tTI4uHsS
         8Z1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742544789; x=1743149589;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jev2S5q0Uq23ZefU3EZw33sQyKB4WKTRkFhU4RqrJYc=;
        b=V0m1akm0Y5BSDA6XD4mZNdA4o5CUHyQPYwCSFG5r/ofc8qCDoU2Dh68pirDU67YSQy
         gwajiKGh+QdJ4wCOqqfwrZQBeXPgxKFydemR13Pd/Ps9fBHD+VfMYmWHG3yEjXmQJLsy
         3V+vsG0IjAbMLYkMJ59qphwEHpg+5Bhi39A48m96rtQHG6hJGvrTMwKyhfuhaP3jZ7rI
         a0XhUt1lIr0wVftT00ySBvp+Hys67l9ZqCsz9yWY5TcDdNLSMZK/7rc0vXAIR2tuhErt
         dcNn32JMEnk+nkyNZF5tgYM405/Y53NV2eVCQ0WhTc584IDgnh5xb+MZf64KZuij4D8T
         vAdw==
X-Forwarded-Encrypted: i=1; AJvYcCU/g73q5m8SRffyx5QA+56CKOcQf7lllgfhlASkHnBMqx5MCgCfteWccGxEVpno9dzDX8WclsCU0Puf@vger.kernel.org
X-Gm-Message-State: AOJu0YzSenmEV7sj8hl/qsu9t7awQ1MYT7lqf3yzJgHGjZofUnhK3RoD
	MiDb+XVhlRZ0+eJ+jPMYPQjnmPfy0PYDig8b7OnsMS7KhZGorcaJfXNJNmn1XUbBfx/t2IAVuut
	V
X-Gm-Gg: ASbGncsw5B6YyOga4kDoOWPZKGpbo6bedkUr02LS/qdbFVcZXFO3WeLVGmrnQB2Ww/N
	xnKKKfnSBaueYbKgCb++2kMuZcFGifyxjqR+GAEUs+0UR6oeUkQO6h9NhQYK729mSdIc/e0kOwz
	kYaLom1rSZrWGkNeRvVsXoVf6HoPvuWYdL3NyuNQEIKlCehO3S6zxPRQjqhc2n6nbzwcP/d158K
	xGo+3tcJ/m57PuRpnchJl/whSHkM6epu9J0Dq+ZJkUbECJLXHkVKpJSvmNprarlg3U3HRmCz8i3
	oHtSKVnmyPSCj1caCT6dNnrzN/9H3KSMqcf7anSvL7eBrJsp3FEoH/buEXrrOTtdKOIcbR4D6U9
	MilrsdxpmyIVZKem1Bw==
X-Google-Smtp-Source: AGHT+IGAzC8uX4v7JqMexA3WN+wQ+YLOprWk5/TUdTQL46LPhqZiEkYuSKewAa1iYNwiAYxSSLKZaQ==
X-Received: by 2002:a17:907:da0c:b0:ac3:f683:c842 with SMTP id a640c23a62f3a-ac3f683c845mr175817866b.42.1742544788929;
        Fri, 21 Mar 2025 01:13:08 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efdaccc0sm104891066b.185.2025.03.21.01.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 01:13:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 21 Mar 2025 09:12:57 +0100
Subject: [PATCH] arm64: dts: qcom: sm6350: add APR and some audio-related
 services
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250321-sm6350-apr-v1-1-7805ce7b4dcf@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAIgf3WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDYyND3eJcM2NTA93EgiJdQ9M041TzVJNU0+REJaCGgqLUtMwKsGHRsbW
 1ABDZ8zZcAAAA
X-Change-ID: 20250321-sm6350-apr-15f3e7e4e5ca
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add the APR node and its associated services required for audio on
the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 59 ++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 00ad1d09a19558d9e2bc61f1a81a36d466adc88e..30d5658665339bdfd803246054878fcb932a4a9d 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -18,7 +18,9 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -1319,6 +1321,63 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 				label = "lpass";
 				qcom,remote-pid = <2>;
 
+				apr {
+					compatible = "qcom,apr-v2";
+					qcom,glink-channels = "apr_audio_svc";
+					qcom,domain = <APR_DOMAIN_ADSP>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					service@3 {
+						reg = <APR_SVC_ADSP_CORE>;
+						compatible = "qcom,q6core";
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
+						q6afedai: dais {
+							compatible = "qcom,q6afe-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+
+						q6afecc: clock-controller {
+							compatible = "qcom,q6afe-clocks";
+							#clock-cells = <2>;
+						};
+					};
+
+					q6asm: service@7 {
+						compatible = "qcom,q6asm";
+						reg = <APR_SVC_ASM>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+							iommus = <&apps_smmu 0x1001 0x0>;
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
+
 				fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";

---
base-commit: 73b8c1dbc2508188e383023080ce6a582ff5f279
change-id: 20250321-sm6350-apr-15f3e7e4e5ca

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


