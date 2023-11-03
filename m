Return-Path: <devicetree+bounces-13839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D797F7E0C45
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 133891C210D8
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E3126295;
	Fri,  3 Nov 2023 23:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EEfTxfVA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79474262A8
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 23:35:55 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFD01D77
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:35:53 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1cc5b7057d5so23643305ad.2
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 16:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699054553; x=1699659353; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XoOyn7ZU2hMXx7hgfAQE4i5cJVVLZXv3kQJ/BlZC4zM=;
        b=EEfTxfVAYYU1Ai0rReDxmia/xQ+70WFKt20A8sYqI6MDD5E2WqAE+JZyRDdAYNjDs/
         Nv3RlFyJZTYfxxbVwnzn/iiXsV/IDWcptJSgwItfKR0caAVNCTxihqtxuobsr5lf0ZP5
         Jxh1k0Qpt831qcZz/azEH/Ea8C6E0531z+0Vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699054553; x=1699659353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XoOyn7ZU2hMXx7hgfAQE4i5cJVVLZXv3kQJ/BlZC4zM=;
        b=JXBjD6dvWyXxH8iTVWbhqBeURNIx9asb94162NiXvPa4j9GovSUObsnPg2pxfE9XQh
         2G1A3Ck1ZvDOQPnq1fbXKk4cx+/v+cPAEgnTccd13UGrpvipxKO714D62Yh91K4u9b09
         3eEfxBBR2OwwTUOKcgyhl271tUxlTF4XzWONy6a4mkGlhskmW/qfLdNS2TmqQfl3EOPg
         jGI6kOk5hwtTKlUhvZv4hgDDwaFjTAsD6O14vTXxgzf9Hm5mIzhFFZrmDD9W9OtMUdTx
         Vh/pQAyKNOWLysSlPzkE5izK/AzZWRFAw6UQIJZojgmazZu0uAwI/eimV0iWYC6tXD06
         R8qg==
X-Gm-Message-State: AOJu0Yz6nIYEx3pX47iZ3rEgZjRkPlAsS9yQZIJEL0SB8OIafZ4ShRZC
	71jmMfotMQZkA1e/xmVUg0dSIw==
X-Google-Smtp-Source: AGHT+IHlJZV6Zi12fevoNRAI0nCJ5nZ2LsBAkFmVa3HGcoUhsACMAoJS8o5w/mEXDqBuOA0dOx8SmQ==
X-Received: by 2002:a17:902:b593:b0:1cc:ab06:e6c8 with SMTP id a19-20020a170902b59300b001ccab06e6c8mr2351313pls.19.1699054553182;
        Fri, 03 Nov 2023 16:35:53 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:5195:5e72:f5bb:e3f0])
        by smtp.gmail.com with ESMTPSA id jg5-20020a17090326c500b001b8b2a6c4a4sm1878114plb.172.2023.11.03.16.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:35:52 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	swboyd@chromium.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] arm64: dts: qcom: sm8250: Make watchdog bark interrupt edge triggered
Date: Fri,  3 Nov 2023 16:34:31 -0700
Message-ID: <20231103163434.5.I2910e7c10493d896841e9785c1817df9b9a58701@changeid>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
interrupt should be configured as edge triggered. Make the change.

Fixes: 46a4359f9156 ("arm64: dts: qcom: sm8250: Add watchdog bark interrupt")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index be970472f6c4..72db75ca7731 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -6018,7 +6018,7 @@ watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sm8250", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		timer@17c20000 {
-- 
2.42.0.869.gea05f2083d-goog


