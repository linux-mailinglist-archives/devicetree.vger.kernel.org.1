Return-Path: <devicetree+bounces-70899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E17708D4EA2
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 17:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F4B8285B91
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D6117F512;
	Thu, 30 May 2024 15:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TTrKwOxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787117D8A9
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 15:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717081577; cv=none; b=hkgq8n7dJIjqUgVgfk+n/ISOwOCvni/wooTyDeyDJtXitUNCPRdGEbINeP5oMJpotNfUkanvQzAOj/kAz30Y7OcacvmUVe6PCT5BWSjXb2y4RrlU4HVXGGGnMHuAnhJhjFHGS156FeQREDXzeK5l6ZGY3YBOj6oe+GVmVKe38xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717081577; c=relaxed/simple;
	bh=GO53uI6GUbwjaW8cPhjYVSZiLvFTBXg7wMm8WUSxda8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qQyJkYpgKz85sW8Y0qZn/ejX4FRD6IqBOavFdjAujySVUwoICkCOake44jcqyLncag9It/i5odlLRN6x551qpvrPWd85VdgozQkQ5AePMkmB9inozIa8uRH4hlM5sx0N6fC9KNVqBW7AmaYjBDD5e5X8BkOebUe2hhN8NXTxJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=TTrKwOxm; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a62ef52e837so105677966b.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1717081574; x=1717686374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MnQFmGhNvzydRfpbiP3XVw/UozOoI6Olw9DBXg7NZ5A=;
        b=TTrKwOxmURNZzYH3HkB4KqSz5ZwxVPpo7N0uQj7xd+158WKeaQvi4zgsH2PySr0LZP
         dmIwhYAUswTkG238xxZPj/ri71Obw2+juK8THL3K+h8Yn1pkfXT7QiTIwrCHfo9PXSFr
         gzHbwbsvgRy2vi2aQBY1hwxqlOu6nA3qex9SzYaky4Iv5DjMNIL9xynelCqDpe1Ntdg9
         oSC5R3LoHhUVJO8pt84A7g9G4xtXi5LMLA0XskEuNYXff73SI52EpQOuyST5zp88mJO0
         ws/wEPP1WIYsDumgMDjZ/JXorGGpTTjvCSxbui9Ss2fdJCXDG+5oeERA6CvVzbIwZYnv
         t9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717081574; x=1717686374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnQFmGhNvzydRfpbiP3XVw/UozOoI6Olw9DBXg7NZ5A=;
        b=NnDokfVLq7BvkRcSFWyY7AGAWCaBhtffyfnfitsGuPjrl+Oro7NOpVlheOqZUVa9ta
         QS/yPkdlYDbXpI7pF36gQGr9qxCsON1GeVaJk7MkUQbbVJ/t89JsfaCB3DL9kZOUHFUv
         79JlSep8JOQZrphQ7SA0f+hSdVqIWis0MYF4faNrx7OMAJg5+O3R1eLe2ThE07Lqu8CR
         njyWwLImt3agxnL+Qxqupz4NEMrxEMiC/2cH5v7aZaEjKWkGjKUBP8aJTid9V1Ep07ya
         PQ0Hka/pCp5jGCUjagmD+RTRO3QshpWRR4i5VPkSFyJHfxXPI2zaNpLRsm3YZI9aC4Lo
         bz9w==
X-Forwarded-Encrypted: i=1; AJvYcCVDbMZz5NV1AI12xe0JPUAc+6AKFXmMe/pfczevW9mtPQ1CZN9mTKyAOa/iqdbBxAKOspk23c90F/WtY54d4yBW400CyvkJ4AVZLg==
X-Gm-Message-State: AOJu0YzRVDFx0n+1nJ8K95H5cwC6fpxcnF0fMABnVoMJIi1aAXTMkVly
	+Janjs5eQvTXW9l1ymxJX4uUFA6hISx0Ni8yh4XCRuouRH3HnOMxyN7fO3IWQqw=
X-Google-Smtp-Source: AGHT+IHBv+u67ofhYHZYMyXJnaNkoyAVZQqwsp7v4/MrGjYuiauM2L/f+UvdpmMs40e+H+xC8NG6Gg==
X-Received: by 2002:a17:906:4913:b0:a67:403a:4bf0 with SMTP id a640c23a62f3a-a67403a4d73mr30681166b.3.1717081574410;
        Thu, 30 May 2024 08:06:14 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67430f8457sm13531066b.122.2024.05.30.08.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 08:06:14 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 30 May 2024 17:05:48 +0200
Subject: [PATCH v3 2/3] arm64: dts: qcom: pm7250b: Add a TCPM description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240530-fp4-tcpm-v3-2-612d4bbd5e09@fairphone.com>
References: <20240530-fp4-tcpm-v3-0-612d4bbd5e09@fairphone.com>
In-Reply-To: <20240530-fp4-tcpm-v3-0-612d4bbd5e09@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13.0

Type-C port management functionality lives inside of the PMIC block on
pm7250b.

The Type-C port management logic controls orientation detection,
vbus/vconn sense and to send/receive Type-C Power Domain messages.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi | 40 +++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
index 4faed25a787f..7dc7262f1537 100644
--- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
@@ -51,6 +51,46 @@ pm7250b_vbus: usb-vbus-regulator@1100 {
 			status = "disabled";
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
+			status = "disabled";
+		};
+
 		pm7250b_temp: temp-alarm@2400 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0x2400>;

-- 
2.45.1


