Return-Path: <devicetree+bounces-3741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BB37AFFC1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:21:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BF35F281C3F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1747920B31;
	Wed, 27 Sep 2023 09:21:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1F2208CE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:21:55 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D912ABF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:53 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c124adf469so179027461fa.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695806512; x=1696411312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WW9O+qX10fuSUtolwUwOcuZrhGmJhLxghHZNu9pvopI=;
        b=nEB3BZ2EPiEyf3pmGg95/vSGKDBF4UbMPA8WZVbCvyf/8Cg/Vw/DSLcpv3+28EUlg4
         AKL7PRWRpmG47QUofQSJN2QDl7xWTxWltXQdKgiShf7PoHRLrS7S82QCMa9cwN4ol7DM
         UPZ6aQJgsMWkFzirvcbRfYYixe81vnRXvPkoUD+zFlvNQgMbC3kZRag8DxZvkwH2nIFd
         5C11r0485mI5rCACwehcKW9ETPYyfxgSraUEnHBOYtwF6KZOR9hQ1ygw6/7L9nAtyWnM
         A7J1pXtui/YHsu13Dcp7kGImJLL+sDXUsSg4SAZANx5EnTW56GNpYDw1VRRd3PxdP1Fj
         9sfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806512; x=1696411312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WW9O+qX10fuSUtolwUwOcuZrhGmJhLxghHZNu9pvopI=;
        b=ASliaQxNfYDD4nHiYJc3Lc+/4umQyb3WeNTuzm6NigHyWdUKTmDOe1/DIKD3eD2EPD
         zlbMOuYnEcV4zN470TE52RY8lzIBn10askzL7eYkLfEmUdCqhmQy1zJFn4yaZhyAHhi4
         2drcBxUs5+Qifs7rXwWhwfl/Lvl0HqgrbwByF9g0jrS5hzkvRTSzqpyeLhSu8EczovGA
         3It171JnPkcLx9DZk5RqGJ9LcRaBj0R4qIpyyUdIy/WRxUOqBDI61rWE2mdcxgV1MiwU
         FSbnqGsRD0fY214fa3pD1ECk5R4T3ndf8Xpz+V0toD6vE5j8SBy3aLZooZybm3HVk2Vh
         daIQ==
X-Gm-Message-State: AOJu0Yzb2bxzXET+APO6dh2RXx4lUjXKvTfd4fxvZ1bcImSAhMcJPsOd
	b8DOB8j+8OEJyfdeqnJg24n5Qg==
X-Google-Smtp-Source: AGHT+IHoyiXqDP+cgrx4RVf3BNKJAYmDS72/reSUGtR8r2euzrC/AGHJRayfoAjRKNP+PgjJoIF8BQ==
X-Received: by 2002:a2e:b0d6:0:b0:2bf:f365:c7b9 with SMTP id g22-20020a2eb0d6000000b002bff365c7b9mr1682123ljl.18.1695806512171;
        Wed, 27 Sep 2023 02:21:52 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id qq23-20020a17090720d700b00993664a9987sm8948574ejb.103.2023.09.27.02.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:21:51 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Sep 2023 11:21:41 +0200
Subject: [PATCH 2/4] arm64: dts: qcom: sm6375-pdx225: Enable MSS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-topic-6375_stuff-v1-2-12243e36b45c@linaro.org>
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
In-Reply-To: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695806508; l=811;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=75nX4j0RzJI1wshwB+Vg1dphMpUe3Tavrj5ASyWGPHU=;
 b=ZDfATHGXicJ8fB2th8gLs8l0IN62uzMwqI6pInsVBmZfdAc7ICA4/mEv+VoFYumS+6IeFxqaA
 sFk4pBfy8xcA5t2N+zlHi5c2iW/AwP9oEzljWvwWTrTheiw6iiOhYiL
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable the 5G modem on the Sony Xperia 10 IV.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index b2f1bb1d58e9..964fe86a18ef 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -187,6 +187,11 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&remoteproc_mss {
+	firmware-name = "qcom/sm6375/Sony/murray/modem.mbn";
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators-0 {
 		compatible = "qcom,rpm-pm6125-regulators";

-- 
2.42.0


