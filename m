Return-Path: <devicetree+bounces-25886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AE9814F09
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 650B51F21A95
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83DE73012D;
	Fri, 15 Dec 2023 17:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f+ZkY0ds"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01F430117
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50e0ba402b4so1220581e87.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702662123; x=1703266923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UhbQd1vUvvpEtI2ZOqTGTRH3HwBYCdsjTdlr5KRWrfo=;
        b=f+ZkY0ds0tDVp8khQIQhzC+WBZBYnZWw8GzayCCCueNk8XYa7zRePrY6bo09FNB3BD
         VdE9+QBDWmtW7jstztT/aT6H6HFEQN1qWzUnIkCWMSAANOHHq3CWf133ALh0PaaF3LNs
         OazFwKZyltgKSxDGSFNONRlJAJsczm8RHgYLqK9FlwR1TYIt+ON2QDk4Tx/X91yAKzOg
         blGlmEDF1Ehwj97sGbqyxMzeT2v6p9nUdbOJ8yBjXYf3IU12u5TsCuyGrpf18c340K/7
         XcUa5k9sVRWgdZDX/CmE7jvvVzxtUrMTLX3Ar/Ikti/p2avYp7lnngdZiZsiQbWz+TD2
         o3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662123; x=1703266923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhbQd1vUvvpEtI2ZOqTGTRH3HwBYCdsjTdlr5KRWrfo=;
        b=XN1nHwCr3Wbw2uOTd3s82JflkfN2q1vOc/EMpv4n0uuDdIg08zfPNSzPK4J0vfvfAe
         Cv5Y8BDc1LmX8pV9LdITM1zWLSunBvNVuVPc//HZxNBwR3AcwKaDj8bBlW6oBGi+S7Hd
         NhCW5c9v862ZnxkZRxb5ZK+rZaJfPG647M/pOzMJDbs4AVXp3CCUWMqEuXPl1GXFtvQH
         iw22eAJmiPLO0w5ugxggPKAYdN4x9SLqdzFsewpz9XVhmuAmrhSF2en7zVDTxZJjmQ8i
         1iOle1nLAfTf9ehgwe3uchx1Di0neYlyTYc7UFYDa7ZG41rWBEN8ZUeAIO9Zc7ZEncba
         9sFA==
X-Gm-Message-State: AOJu0Yzz6RvNhZ4NCypZo+OR8nJZ7hiUOf/H/w9oNMkxYeXynMxisru4
	FD/57bvdte0rhiYpM1smyKQOMw==
X-Google-Smtp-Source: AGHT+IG+v15rIm/rmQenOWMne7VqTk/cv/zpw52FSDiTavJc0NzdFBwS0Ur80FyHEla6blcNs5Q77A==
X-Received: by 2002:a05:6512:608:b0:50b:f715:387d with SMTP id b8-20020a056512060800b0050bf715387dmr5517133lfe.50.1702662123021;
        Fri, 15 Dec 2023 09:42:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (85-76-13-188-nat.elisa-mobile.fi. [85.76.13.188])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512239000b0050dff5bb793sm1389263lfv.143.2023.12.15.09.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 09:42:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 5/7] arm64: dts: qcom: sm8150: add USB-C ports to the USB+DP QMP PHY
Date: Fri, 15 Dec 2023 19:40:37 +0200
Message-ID: <20231215174152.315403-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
References: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Expand Combo USB+DP QMP PHY device node with the OF ports required to
support USB-C / DisplayPort switching.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 0a002ac744e5..d29dfdd0583c 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3447,6 +3447,32 @@ usb_1_qmpphy: phy@88e8000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.43.0


