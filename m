Return-Path: <devicetree+bounces-126960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B335F9E3BF1
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 795FD280632
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 14:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51EF0204F7E;
	Wed,  4 Dec 2024 14:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GuQpHd+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E312F1F8ACE
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733320838; cv=none; b=hmjwJUVZb9T8JeJ9aeGpCv2ky+kLt9A3hAH27o+D66TpKI/3Uc/giitlU3++gyS1Lhgpl+zg8hNbtRsMKZ6Mr1CGTE5JpVf85Zx7FwDcFaxX4ZQeCQkj+EGKVuLXe+RqExbPPD7o9EPxIXNn4IL3OhRti56gvVVWPthvv3paZDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733320838; c=relaxed/simple;
	bh=ssp4dcsZCDyLM82QaOE3c2k7MIcONTsg6QEdlf87K3s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K0SMXp0bkSFh9IxUIPEWdi4A2YlGsRsA4juHUDSQhwurQo17R5vhHkO+kpEMGkurKiacTK6zIxhMPcLA7rnB56YwETbDe4SeQZpQQB2oLvcKTCs+JXDwSovkE6/qe1kxSgOahNtWHytHiohiWBh0nfleULR0QVeKKZZfoBIODl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GuQpHd+B; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385de9f789cso3876952f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 06:00:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733320833; x=1733925633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLrHu50pzztwUqxBZk1ZRxPuancx79BTgjqfe/nlYrM=;
        b=GuQpHd+BknyYyIB5IEpeAd525TxBvFkPimTeMlQMAGcuid448fy8iWlPu6h8wVyiZD
         ez1+vq8QMD6B7iPULs0idlUZA8YBrsyFa+AJFPn4FD4wzhPWic/eEIqXw75nyCpp0Qf6
         aFCKTQWYKbNxnkyXrCEXql+7X4dCxV4jZqnEM+0HHv9fRITeVx8wruTppYNeJaIwQfV8
         JlBxYCcVzPBYXSCgLjxYSPu0eN1eQRjLhfkvJLzw1VwIdKaH7ERNE/N8FrYlLU9p7hz7
         lk/MHEc8vCZRM3cGPGV6DmDVCJ9YI2iX9dxb9wBx8mAipTljsXAFVREN5CYl3fbnaxFU
         KS3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733320833; x=1733925633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLrHu50pzztwUqxBZk1ZRxPuancx79BTgjqfe/nlYrM=;
        b=OQqVm8dAjk0K2P3ZpYBUNbicjc8zWz6q4voM7CfuBJOSY0LH60mgh7SZS9jDddXtPx
         +pzi7qapaIfZ23nuj4wxXAHWTtReUiArBMpbrjgsF5kIPg7RoWVewKSKrEPl5AWrBix9
         GjyUTMeKnHc+jvhURgX2wqGp60PzfiGpB4IqUNMJBO1KVT5TexOcH9uvNq+WzOBByss/
         yDOvobAXMtSkPeg9cf3KkPufZQLWYoKXrUi5AmOYdNwpfXaufRu/fS354LnP8Cm7LxE0
         Sjl1cX4sAcoeWIoR5Nms5j0T9qeue830VAvEVPNdchfb6Gbs63DQje6uR3QzpUDbXZFz
         ydUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZBQD0XS0eK6AONuJyGM02KH7Q4mtNyujREHaK2sQMhcn7cycm9qdQwzNxYVX3cbZ28PzeaEvoVgj5@vger.kernel.org
X-Gm-Message-State: AOJu0YwzIG7S2Sn5pM8ijruiBAcn1TLeotAhN3qZM8MGmOQ/qcGBwe2a
	LwU+4LO9sjQgnB3YldaiSJGnkPtNEWNWgWAUb53kLJBvoD8pd/KhVPu8nap9BNY=
X-Gm-Gg: ASbGncvlTNZ+Ly7D8aUiWLavyf1Q7JTWtMjPDDcAhUPY6UNENqAQ/WZzuzdAGtKarK/
	Z2M1tZ84edvzN27w6O4tfO+e18zFhbWQt3ik+hglIq8+7eY1FQ0B0AiZ8TE2454+K+BRtaqaXRH
	ckny0PYCq+9pcyTfTfXma/3UkMUmP/Tbhxe1Ny3ZksKCytABPvGEZ+xm2bSBrnE6yLr3Q7C+YML
	yr3q8jWAx6Ct7PBpvzqSxJte2vFxg1sKkryvbSgX7RvJ8cigY/GeKypM5CsNJdVeNaMvMk=
X-Google-Smtp-Source: AGHT+IHYK7Du5iUylGSHkyu3iZhxC6pu4WEqdTfJd2HA8NRTO0kPBBavxBK4pbJjpzuedl5Cz9JDnA==
X-Received: by 2002:a5d:588c:0:b0:385:edd1:2249 with SMTP id ffacd0b85a97d-385fd433008mr5794874f8f.50.1733320832123;
        Wed, 04 Dec 2024 06:00:32 -0800 (PST)
Received: from localhost.localdomain ([2a00:2381:fd67:101:8e2:966d:36c4:3579])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e2c84d52sm13689978f8f.49.2024.12.04.06.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 06:00:31 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/4] arm64: dts: qcom: sm6115: add LPASS LPI pin controller
Date: Wed,  4 Dec 2024 14:00:25 +0000
Message-ID: <20241204140027.2198763-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204140027.2198763-1-alexey.klimov@linaro.org>
References: <20241204140027.2198763-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node required for audio subsystem on Qualcomm
QRB4210 RB2.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 816b8331933d..df2241237b26 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -16,6 +16,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -810,6 +811,20 @@ data-pins {
 			};
 		};
 
+		lpass_tlmm: pinctrl@a7c0000 {
+			compatible = "qcom,sm6115-lpass-lpi-pinctrl";
+			reg = <0x0 0x0a7c0000 0x0 0x20000>,
+			      <0x0 0x0a950000 0x0 0x10000>;
+
+			clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 19>;
+
+		};
+
 		gcc: clock-controller@1400000 {
 			compatible = "qcom,gcc-sm6115";
 			reg = <0x0 0x01400000 0x0 0x1f0000>;
-- 
2.45.2


