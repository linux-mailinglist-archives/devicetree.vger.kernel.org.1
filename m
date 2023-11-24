Return-Path: <devicetree+bounces-18682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9661B7F7CD1
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 19:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FD272820CC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 18:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E6B381D4;
	Fri, 24 Nov 2023 18:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k9VROuIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE91D1BD2
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:24 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-7b37982a238so22937439f.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700849844; x=1701454644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdemZMUaHLvbgIQeYpkHPsZSBKipx/K1siuFsuVeo40=;
        b=k9VROuIAAOUImHFOc1hGKYOem/1ZqTDbFMHD1VKTSgfKN474XwLay5UMGcJ3eHWv/M
         Kw9ZYkGUn1peucjYX/qrzyioyXINj1yACzLfT4nRLd1HWsmJeFkDwyXkIKzKuJDsOJZw
         eB5SGIasmlq1/t//q2hgZ8wsnJnPDTR5oKxO65xTCItF3B/Uw+8rD4OdKXn1v4B3O9gL
         cnYaOIjfNDLtbDGQysTrd/vm11g9KIlAWucOp4D/KL/IE5hBCYi/1pnk1hpu3ibEYNak
         JjBswn61uHy29GvfE2p4v9v+hAguYHx2B6ORODnGtkmhTZLljxoMv8J/NmT8MjmGkh+L
         8YxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700849844; x=1701454644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdemZMUaHLvbgIQeYpkHPsZSBKipx/K1siuFsuVeo40=;
        b=mKZC02c/H5jHhNT4IyrUJDG/o1dcXTuBmEHfDQCxww6me7qe4Ztm+/zMFFD1EZlUaA
         hiOuYg0u5kjYeTVXyuJ/IC3mxDW2dSVdikIbevBTUkmxcRl1Qf3xhMclZMIg+SBBrN4+
         IMyAgfqKNHvnarNU+XSxY7hT3RkQYsfSGVd3XwrXoD/MZ0fM1APItlAdKAvuJWDJd3BQ
         QVGitMmPaakouWkdv1apaOraEFsbt6euGR8/c9pQWBT4VraJM+m++v0IccmeDp/Ws+fx
         /b/KQ1l/+nI30DVKKzzjmicyZWgdX9VnQGl/drS77+4Wi39XyzA/iqTLFD/O4PxipgZW
         C36Q==
X-Gm-Message-State: AOJu0YyR1yhFMWInEqgTOLa6M6hsxfVNugG7l0Frn5U/v2zp/MfzRbJ7
	GUMdRFErw/Z2T2Qt1Kg1ZRA39w==
X-Google-Smtp-Source: AGHT+IHIhq5dXURp2uD4Ir7/hFdML3568dF0Pu58bcTRL5x15Elbkl4QdkPBuZPtVxgjzCiy/kuyYQ==
X-Received: by 2002:a05:6602:3992:b0:79f:e800:ea95 with SMTP id bw18-20020a056602399200b0079fe800ea95mr7285009iob.3.1700849844178;
        Fri, 24 Nov 2023 10:17:24 -0800 (PST)
Received: from localhost.localdomain (c-98-61-227-136.hsd1.mn.comcast.net. [98.61.227.136])
        by smtp.gmail.com with ESMTPSA id et21-20020a0566382a1500b004665cf3e94dsm937031jab.2.2023.11.24.10.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 10:17:23 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	agross@kernel.org
Cc: mka@chromium.org,
	quic_cpratapa@quicinc.com,
	quic_avuyyuru@quicinc.com,
	quic_jponduru@quicinc.com,
	quic_subashab@quicinc.com,
	elder@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550-qrd: enable IPA
Date: Fri, 24 Nov 2023 12:17:18 -0600
Message-Id: <20231124181718.915208-3-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124181718.915208-1-elder@linaro.org>
References: <20231124181718.915208-1-elder@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable IPA on the SM8550 QRD.  The GSI firmware on this platform is
loaded by the AP.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index eef811def39bc..34c760549f3ee 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -585,6 +585,13 @@ fsa4480_sbu_mux: endpoint {
 	};
 };
 
+&ipa {
+	qcom,gsi-loader = "self";
+	memory-region = <&ipa_fw_mem>;
+	firmware-name = "qcom/sm8550/ipa_fws.mbn";
+	status = "okay";
+};
+
 &gcc {
 	clocks = <&bi_tcxo_div2>, <&sleep_clk>,
 		 <&pcie0_phy>,
-- 
2.34.1


