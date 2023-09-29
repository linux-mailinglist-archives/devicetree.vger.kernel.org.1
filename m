Return-Path: <devicetree+bounces-4493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0014B7B2D0A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 09:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A4C8A28345F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B274C155;
	Fri, 29 Sep 2023 07:31:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A530399
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:31:49 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D6E1A7
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:31:45 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5334f9a56f6so17138028a12.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695972704; x=1696577504; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rV15ONO1jUP4uYwgWL2R1qvHOr8y3WbaAo1W8izGcdQ=;
        b=laGBfAL7WcgPorwVnTglqRU0w/mRB9oS2KN7F3zEx79TaDhf8XViEOMHYeANrsxIlp
         tq8N2zuql5jIfCNxtp2uIYaakbV6MsFuajZkRkHz8whhtSHQIDjuxKBf+z657fw1Xp8W
         ZRTdiLDAAM3afa4nMdDIIoK2FTYFmEx3TwkiHNZ8Z9dEmXizof/bIyu+V/DXlcpeC3Zv
         pk15R78kZJBS6uMFTKMqKJ0uh8NZI0z4rKPRi+sS3DGYq3Efotd6n0P/ZBd4cjOfWEcX
         jDXcoF3p5kbHZXoIJsPHta9mDIhodZza2iBG0YinNTFEBL9mPOZhHwvqAq7ysXMoRNKs
         D1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695972704; x=1696577504;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rV15ONO1jUP4uYwgWL2R1qvHOr8y3WbaAo1W8izGcdQ=;
        b=h+pV02q4E6BN5HySLdclIukuYp2r+nWEk679/xn3YnfcNq/toskL1/qFd6rTQQH7lZ
         YZOiNwFTNfjpZWjo4MqpvSME8Js+c177VDReeVuwUOw7fcs1uB4L5Z139kzJcrkJuWaE
         FRk64UWVXZ8Nmk9S1qti2zHJn0pnjNEaf3B02urdRUbGjZLYX2kPNkbT3t7v6oiifjj9
         foI4S2R2xAVIEALQ8uUMPJNJfIEhc3vlPkEy5P4g9EfeowXhTO8xBTu55hh6DHm76q3W
         iYApS9NfUDaMTONXrnOO79WFtTUeyC8bqzeXfsoO04x5Y+UODEns/i+9IbEHtzjpzymy
         0e3Q==
X-Gm-Message-State: AOJu0YzUVAAKdf4BWMx2KZVCkFfqPpfXJbtIgNC4g/m8zZ7ACKffAHWZ
	/kku5S9g0whJShBnYprCkek2Lw==
X-Google-Smtp-Source: AGHT+IElgd8TDrBOM4ypykT+b/lbz87g5gXWJ/ODkeUI+dDXsCHZcN5sByXbMgwX2PkFlH8v5Sauaw==
X-Received: by 2002:aa7:cf0a:0:b0:533:4cee:e52b with SMTP id a10-20020aa7cf0a000000b005334ceee52bmr3335483edy.25.1695972704119;
        Fri, 29 Sep 2023 00:31:44 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id v10-20020aa7cd4a000000b0052ff9bae873sm10724978edw.5.2023.09.29.00.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 00:31:43 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 09:31:41 +0200
Subject: [PATCH] arm64: dts: qcom: sc7280: Add ports subnodes in usb/dp
 qmpphy node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-sc7280-qmpphy-ports-v1-1-7532c11973af@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAFx9FmUC/x3MTQ5AQAxA4atI15pUSfxcRSxkFF1gTEWIuLuJ5
 bd47wGToGLQJA8EOdV0WyOyNAE39+skqEM0MHFONddoruSKcF+8n2/0WzgMmfpxKDjjoiSIpQ8
 y6vVf2+59PwDWwzFlAAAA
To: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the USB3+DP Combo QMP PHY port subnodes in the SC7280 SoC DTSI to
avoid duplication in the devices DTs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 66f1eb83cca7..4e34d00e246b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3399,6 +3399,32 @@ usb_1_qmpphy: phy@88e8000 {
 
 			#clock-cells = <1>;
 			#phy-cells = <1>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_dp_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_dp_qmpphy_usb_ss_in: endpoint {
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_2: usb@8cf8800 {

---
base-commit: df964ce9ef9fea10cf131bf6bad8658fde7956f6
change-id: 20230929-sc7280-qmpphy-ports-20afd4212470

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


