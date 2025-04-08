Return-Path: <devicetree+bounces-164239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 664ACA7F99F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 110FD7A56D7
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05ED26656B;
	Tue,  8 Apr 2025 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jj+ArSZ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93063264FA0
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104754; cv=none; b=E7yo8aOHtIhdJmmtx5Zz0cV35hn8cAj3VgkxCdaFTVMQ1mD4cVFGW3arLNZQv6/woJqJhH0cClTcxMI8nxJrVYG5Q/m8EfjLQNr+tgzHVvjIqPod1WBeXFpSELDbytQK73QjB4YPt20AgIzjIc9LEH+RZwoo/+AqRnt682Zfpr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104754; c=relaxed/simple;
	bh=1AEBKTBDAudyyJJu0v0FEYIJzL4dQ0geIW9+iP6s1z8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VmUWXG6mkuEhuDL03KNLbI2kM5mshI//SzRdql9hwIKeCaMsqlA3T9RMWx1PlI307jLnur/B80cOSiqj4I9NLaoZ6DstspKz24F7COjAUyjDgCUlaV5XKFkKAmrkN/n+XBapF4o1+28q8Di5fNKGX6GaONrBUNWdAulvuPV3wzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jj+ArSZ6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43eeb4e09b5so1879125e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104751; x=1744709551; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CxnFm39CO9PiqnctlBcQ/WHq8tEhPoykAPdPFuMuQgE=;
        b=jj+ArSZ6KUeom/+BqXjAs+0fUuPKy4nC/B6rbDufACLsEdP5tKKS9h202205I6iTdy
         ulkMLoaT/z2Utqe7dwnBYu0YjJNNuagxAh65eXN5PX7fciYzfsaSsayGdvtMHGr0lRZY
         ciNZTYsAG7VP314+RNBTdQ59+g5Dwp83yNTA/4Ipj3KtBOL1l5bYk9ZPyMJVfi2xtWSp
         eNG7IyMiwa8frgWGDcFCZhl761w3sXBFBNO4Ri5J+UTKEhK7ekqwHQCYnb8ohu5oiI5X
         U/ImdiMpZPN5yJlZYIpLG96EXscahQgRp8BMPHx1zL5cgS/TCOqFj6/6K+jRlLvSk1d9
         /c7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104751; x=1744709551;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CxnFm39CO9PiqnctlBcQ/WHq8tEhPoykAPdPFuMuQgE=;
        b=kGzADOCXo+/g6IlWz3dnLXsmqiCoETPXz6DcLJDCMUgjQKz47mdingbwamJX9/o2EK
         pvEinNfDDynx9yjlSNnzyO0VvJ3iQv8jUraGt5c+5J2Hk2B4nZ98DCPZmZ2sIFPC6PK3
         FPDvPL1G/D/U88CJ8UJ6UAbEQb79/+vZi6ucCmEcLyimCTV9v8N1F7PVA3npkQovl67Y
         Bd0xRIjW3GPyjfIJnT9YmB3JhPmSi3SiwJsPVpDQ9oQk78IJhEBkaDjeduPn7fw+FLyx
         lFM1tjNJC9WAcHtKndZT62xeV4dWxNdht9mJyErJd3UG7OgLdfiq3Z5xnEW/2Hdlz8f0
         RxTA==
X-Forwarded-Encrypted: i=1; AJvYcCU1qZnw/j97gmw+A/Dza83wjrA66zRA+WiAiMNJUp/GC6O7mV2x/+n9Yfqe71jcnFBVgiFdvvR3t8j7@vger.kernel.org
X-Gm-Message-State: AOJu0YyHqdNWMBbyigIG0o1XTO/bKn7Ubftag72HZzoWLXxn5P7JDxWp
	AaSEWGZPfbqt42ynZp/VnYSUZPJFrdzRYZF32y6EZwU98nnHdPuMSV5IaDRl4VUw7QX3rsKM4UA
	K
X-Gm-Gg: ASbGncuZT7ZLEDlOAFSm546auWsJ+mYrvw3SebrHxgS5lqplpMjEl3RWjyP2gokzPRk
	tMWrbUCHWvqMLnn//Y0ky+eAHaJAw8GYu1/Hmf7Zql2tB5G6awykmqe9qEIjCThn6po0EkalRwv
	l+R+p8kur7ZCpnKtOXajfW8S3z/aYxz/KR6IEzNxBS35K9CA04lSERP67q5fphs+5vHwYvZCsgE
	lMjScsr/CtTCXeKkeNEvjIByMrhmU0j2c7F5Yacc3msNWA/HKXRfAw/tSxfNIZiZLYU3UVKKhAz
	wWoNhK8kILaX9bSiV92h5ckF6GhX3aoJy5Hg2QsW/yH2tPdxj05MVAo2uftKETg=
X-Google-Smtp-Source: AGHT+IFtp2BXY2FJRN7SYVZQl9fHx8EcGIYxwgbFTVRysV/aqy68ZdRAn9bs1QeMjNWP5F5EYwRQEA==
X-Received: by 2002:a05:600c:44c6:b0:439:a1ce:5669 with SMTP id 5b1f17b1804b1-43edf8a28bbmr27370065e9.5.1744104750845;
        Tue, 08 Apr 2025 02:32:30 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:31:58 +0200
Subject: [PATCH v2 01/24] ARM: dts: qcom: msm8226: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-1-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1722;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=1AEBKTBDAudyyJJu0v0FEYIJzL4dQ0geIW9+iP6s1z8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0XG8nD10dcYFYEFEPR8ieLprLjIDj1RXtpE
 bSw3k3wK4WJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtFwAKCRDBN2bmhouD
 18CZD/wPWw6spusH7K5QQtLB7z4/8/8YC4HkdchqcbPTivXeBNTC4ns0rRF2uYUi9hQGz5A6fXB
 eM+CSg2DO/uVzGwXHY8IzWt0lgui39TQImNoerAZ29epfGMQ0tszu8yx2+c+Az6/eFm5YD/ya5d
 f9wKlWAnyACDBt8SRxZTPFROp9SupqYbTyygejmt2qBLtFq0dURRnMp+RcwGMUT1sPXSkwIb1/Q
 2qr0kLtmouedHG1Zw2P3zQepeWqUCvqWrtirNvDvSMxpPBpGgWfGsMsQGZsah+xJdUwDE1J/sJX
 sVcHc2Pd+8V/DzpsxET18HUqRDuU7GL6GYuUBXKjeU7a9Jld+h55XFg3QYS5STuODmp9/5GlXAE
 8HZKV8fk7z+sVfGiDPjSqg/XLgO6qSdmgRZs18G7HwRdV/BX+cxo+5VD7B5TDKA6+30tewKXdvz
 I2RLdkD60kasNmHY5v0D2yJ08MucYnalUNmjLwbwc3woy4aifSJj5m8OuD3r1v+GKrw02gcfFf3
 8fiKSxNtQnKNhA0ASIL2gkdy5+oTC5TUwTlZMpa1/0Rc+98+iLEpSgY/MQX1Uvtciqs0x+C2aao
 9z14JEBiaJhVF9/O+YQdfGJLjmIZlAeX9GHgEbh1b/MSnbXObY4DZPLDOLQk09Wrg1td1rBCIKh
 64y0JVEjosBnipA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
index 64c8ac94f352e46dc4a18f902d2c30114ecd91d2..c84320ef5ca24effc50a6f22ee3b403d6d6e85bf 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8974.h>
 #include <dt-bindings/clock/qcom,mmcc-msm8974.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
@@ -983,8 +984,8 @@ mmcc: clock-controller@fd8c0000 {
 				 <&gcc GPLL0_VOTE>,
 				 <&gcc GPLL1_VOTE>,
 				 <&rpmcc RPM_SMD_GFX3D_CLK_SRC>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>;
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>;
 			clock-names = "xo",
 				      "mmss_gpll0_vote",
 				      "gpll0_vote",
@@ -1060,8 +1061,8 @@ mdss_dsi0: dsi@fd922800 {
 
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 						  <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				clocks = <&mmcc MDSS_MDP_CLK>,
 					 <&mmcc MDSS_AHB_CLK>,

-- 
2.45.2


