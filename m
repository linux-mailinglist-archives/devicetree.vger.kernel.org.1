Return-Path: <devicetree+bounces-117944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B23B49B8809
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 02:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76886281D5B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 01:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708957DA9F;
	Fri,  1 Nov 2024 00:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FuShoqND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092FC38FA6
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 00:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730422780; cv=none; b=BwaGnEQgMAfUaY8NetVyRYZJ3RQ+j8veSCD5eKYKEgajPFA1oRJ6Aik3o6eiM1NwMCv18F914gmG54bQa9UjgRiqhHCp/NjYsVRci8VQ5H2qLOA/3H0mgKUtYTOfuhHeb/Ce4H4czmN/MOW71nyNTv0/LeOKmS9aUAo15DQdSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730422780; c=relaxed/simple;
	bh=j94jq3vGJcIrOguDPhFtJsy9iuNY//3T5GgkTscKZyI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MWPbweCFvFGhyA9svQWQrATPDAGCwOLiwKyT5Xw0MosQHjkz3Fa7v9sFZ7Js+M2yMiMHoR/QXQ2wPXI/gUDJcIxUkAmYpEWDW8bgA3tZ5Fj9ZT6rqd8ZAbJfflFP9goLUn7z7o2vuSJSe9t4vjjk1S7aQyIFFEd8j0y8B47iaIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FuShoqND; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-431616c23b5so9381245e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730422771; x=1731027571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Pnag8ISnHry4lkix9pSW6/v+Tf+7fphW3qIjWj70mo=;
        b=FuShoqNDBGp/vxPYCvidh4Q3QGS/6FPixklxvA5UqKd7Myi1OSppkgT2SqPIolqARk
         K7R48v0QIbF2qtitk/XVHI4fMdY5spm5rrenVjEcv9HMycFtXVXAxn6DqIbf6ftFUJp7
         +f1vy0doBDZnGbZjBxiSARiJ5pwJQ4Vll2BQWRm0Sqs8t2oUsWymUbBg9+H7WvyX17Js
         zHaP/rOamFGjLBqhZaoDCO4hxjQjA4IkWGU/XZ9mnj8N3sVcjfFdggfcvGRc8AY8RcEb
         anO64VcC9bnBtUFnL/6q3trDZXbZOatA15aHgm1tRVajjUxkBl8fhfeOIQ8A5w1JBysg
         7CNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730422771; x=1731027571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Pnag8ISnHry4lkix9pSW6/v+Tf+7fphW3qIjWj70mo=;
        b=HTS6i3NZCg/e7wzKBxTT2qqP9l2ueVDPkhMkX/j7m4f6AazkjzT7c6U1Aw0t8Z5FWE
         LEj5IDkU6sikvipIszKmDQGJ83BhnHHJixHypQNwpQo9lLL6x+1xJnSz3eFzb3YRaBIi
         lI2AuhWCX8mAJNMxZp1BjoXrgI6CqlOWSW3W3ePRoqWRezlGvuSPK1NhWkHzc2XahLbQ
         ao6ZZf4htJgu3oZkobtTNzh6i7Ep26koo7GMcb+8Hz2ZjIQ1S7NdD6OrbGdmBZv4gfQI
         ZOikad5AbeW4I2GtxJXoCtNjTZNBREKi26iUIyz2EfBe0AtcYMqciNogs4809UiJjyMc
         IZLg==
X-Forwarded-Encrypted: i=1; AJvYcCW7izROrlZSF8EQ8gMOtQ8PquLRrxS1t5fz7J7CQjI2GvkUkRubuGjY4+ClPVvhy4fKFx9+PU3Ml8yO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb96S+Wqb4+1WO8SCZogVQhjt8CzTftYP15mQNQh/Z8GlNdnxk
	SYEQJWUAuEu4hCU2V/D5XsSFGA2fHPiKnrhq+JGPZeDETagACX9ToCpShrOoMm4=
X-Google-Smtp-Source: AGHT+IFPJ0LubzZHrwzpNHQoqzbxQbgOtCnxU+OXToXETbFqBbBJ3rL3HRCpuGdl9gwIdN5pJsLoxw==
X-Received: by 2002:a05:600c:1c26:b0:42c:b603:422 with SMTP id 5b1f17b1804b1-4327daa3649mr36215135e9.8.1730422771388;
        Thu, 31 Oct 2024 17:59:31 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd947a9fsm74208035e9.22.2024.10.31.17.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 17:59:30 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	broonie@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com
Subject: [PATCH v4 4/5] arm64: dts: qcom: sm4250: add LPASS LPI pin controller
Date: Fri,  1 Nov 2024 00:59:24 +0000
Message-ID: <20241101005925.186696-5-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101005925.186696-1-alexey.klimov@linaro.org>
References: <20241101005925.186696-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node required for audio subsystem on Qualcomm
QRB4210 RB2. QRB4210 is based on sm4250 which has a slightly different
lpass pin controller comparing to sm6115.

While at this, also add description of lpi_i2s2 pins (active state)
required for audio playback via HDMI.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250.dtsi | 39 ++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm4250.dtsi b/arch/arm64/boot/dts/qcom/sm4250.dtsi
index a0ed61925e12..1b9983ab122e 100644
--- a/arch/arm64/boot/dts/qcom/sm4250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm4250.dtsi
@@ -36,3 +36,42 @@ &cpu6 {
 &cpu7 {
 	compatible = "qcom,kryo240";
 };
+
+&lpass_tlmm {
+	compatible = "qcom,sm4250-lpass-lpi-pinctrl";
+	gpio-ranges = <&lpass_tlmm 0 0 26>;
+
+	lpi_i2s2_active: lpi-i2s2-active-state {
+		sck-pins {
+			pins = "gpio10";
+			function = "i2s2_clk";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		ws-pins {
+			pins = "gpio11";
+			function = "i2s2_ws";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		data-pins {
+			pins = "gpio12";
+			function = "i2s2_data";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		ext-mclk1-pins {
+			pins = "gpio18";
+			function = "ext_mclk1_a";
+			bias-disable;
+			drive-strength = <16>;
+			output-high;
+		};
+	};
+};
-- 
2.45.2


