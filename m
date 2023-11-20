Return-Path: <devicetree+bounces-17103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A797F12F8
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EB1DB218FA
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCD81945A;
	Mon, 20 Nov 2023 12:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="brOFt4cq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 574D1102
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:13:17 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5079f3f3d7aso6027858e87.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700482395; x=1701087195; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hjbqDcif3jzflMbhtEmEZ70pT8i9f+MEiRbeLY07kxg=;
        b=brOFt4cq0Hc8+t8U79BiOv8onIaJ2s4gnRnXekWw3VQDQMjsyRGky18355CCiD0D8A
         kNiRnjHfjFV8fEVbxhA1eJzYo6ajFgeLoBNp7HncHrx1ayly/xE/WCXuS6ojMN3NvPiR
         s39eq0MZUW047BhlRQddQmabAT/B7jXObOGvCNaxkicwSsAMkLHOU5si3APJ4yAqcHjp
         RPwc1zI0SV5yegLDns+Fl/RVXHfadHW89BOr8hX4Bxtvy8Xu7wjDeKIhL1FgmclrlOrb
         TmfA6Bww+aP5elnK08P1VOhYDgZ72prpEaxzEzsYRSS4yreabxo42dihpi3WLAvqHalC
         ExVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700482395; x=1701087195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hjbqDcif3jzflMbhtEmEZ70pT8i9f+MEiRbeLY07kxg=;
        b=Mwx1pB+t2jpvZL1uBeS0M67s+oyny1pUi8lbs3nRlkGK4ateQg6LgasaJ9aMJtB5dG
         m2tmQnN+OCf002spcNSmfE0tgvLjUwPppy2QKruOaCBteWEZle+n8jcJduB/kes3UyP1
         BHzug48uAsmrmmjK/qw5DTugvDBDNQl4yWZI36rpZ6lmCDWLLZofk4tuu1YoZ/9Rer0O
         W7BwU+tBhO0HZ1NqO+7IpzuleITydJuYJfm6qvGSJ7Ay7H+mPwV9SFPwMnehmWl5L8tY
         AEVj6kbW8aeu9jj6H45rfi8K4NpNGyH8McaiV+mjkbRoaLvegBqu8rm42kw0TDcdR1qg
         dJfg==
X-Gm-Message-State: AOJu0YwypCmr1jOlq9NdxLPw9WnMPdb6pgme9z9sXU2IrXP3kD2JIxgH
	tisjoLE0MPnqRQbsW2EOFxNcBQ==
X-Google-Smtp-Source: AGHT+IFxchI6MuaO4+QAa9CHUiTl9TDpRwO40gYUBYra2bKUEs5p5Bv739G2JhMQRJKThOE6+wo4lA==
X-Received: by 2002:a19:650f:0:b0:508:1edf:92f with SMTP id z15-20020a19650f000000b005081edf092fmr4746097lfb.40.1700482395544;
        Mon, 20 Nov 2023 04:13:15 -0800 (PST)
Received: from [10.167.154.1] (178235187204.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.204])
        by smtp.gmail.com with ESMTPSA id i22-20020aa7c716000000b00548ac80f90csm1324584edq.40.2023.11.20.04.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:13:15 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 20 Nov 2023 13:12:55 +0100
Subject: [PATCH v2 4/4] arm64: dts: qcom: sc7280: Add 0xac Adreno speed bin
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v2-4-06fa3d899c0a@linaro.org>
References: <20230926-topic-a643-v2-0-06fa3d899c0a@linaro.org>
In-Reply-To: <20230926-topic-a643-v2-0-06fa3d899c0a@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, Rob Clark <robdclark@chromium.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700482383; l=2100;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=0f0QQnvO1OvRDYb4hv9oWcG/BSDnRfhPjCkhWoQhfrI=;
 b=0Nffh216XN36a8KAHzJ+iTGHOH9zXgzAyU8cqvps3yJau91tC4fBXin93gUZGtvNdoae0OqNE
 JbFUivsMLrcB0AtbFGl7/mvtmfceuIcCm5lRdcD6IOsN8qbnAw4NPGS
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

A643 (A635 speedbin 0xac) tops out at 812 MHz. Fill in the
opp-supported-hw appropriately.

Note that fuseval 0xac is referred to as speedbin 1 downstream, but
that was already in use upstream, so 2 was chosen instead.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 6964c14ffce5..b4e6951d9359 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2630,14 +2630,14 @@ opp-315000000 {
 					opp-hz = /bits/ 64 <315000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
 					opp-peak-kBps = <1804000>;
-					opp-supported-hw = <0x03>;
+					opp-supported-hw = <0x07>;
 				};
 
 				opp-450000000 {
 					opp-hz = /bits/ 64 <450000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
 					opp-peak-kBps = <4068000>;
-					opp-supported-hw = <0x03>;
+					opp-supported-hw = <0x07>;
 				};
 
 				/* Only applicable for SKUs which has 550Mhz as Fmax */
@@ -2652,28 +2652,28 @@ opp-550000000-1 {
 					opp-hz = /bits/ 64 <550000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
 					opp-peak-kBps = <6832000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-608000000 {
 					opp-hz = /bits/ 64 <608000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
 					opp-peak-kBps = <8368000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-700000000 {
 					opp-hz = /bits/ 64 <700000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
 					opp-peak-kBps = <8532000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-812000000 {
 					opp-hz = /bits/ 64 <812000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
 					opp-peak-kBps = <8532000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-840000000 {

-- 
2.42.1


