Return-Path: <devicetree+bounces-29006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E50082067D
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 14:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCC29B21841
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 13:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531A4F9C4;
	Sat, 30 Dec 2023 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6Ymn2wS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C214F72
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 13:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55569b59f81so3172086a12.1
        for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 05:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703941481; x=1704546281; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ls2aUMbVxdc/7lozE+p30ZeM7lcweE8oneLXZx5wYg=;
        b=t6Ymn2wSeYmaehaSWqHMfuSEUXj9ebzBOGbzJI2n2ZwmuilEjFbRv0bOXgm7pP2jfF
         TlDX/Ey1s1+lvEphVYOhciIFbnrkTi25aGNRDs++pw81dco7rQjbUo85SX7Z1dlOjyGz
         /36+wP9W+rs07by18Wd91iX/uvKAcFlr7li4ToKo1ZmsXKWW6rz4tQpXkmAKKDUvA8ix
         xpbfdPICkAyDIWEvesZXTY0tftCAwJY52F3QBy8eVGGlvNr09S/EEpjsDCq7GU5dQB1E
         A9GM2pWOg9BYejrZS4q1C9hM13noU/+d2sVQxSHIpWsNMh3mls1CkZrqsGoK3lYExrQk
         ECqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703941481; x=1704546281;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ls2aUMbVxdc/7lozE+p30ZeM7lcweE8oneLXZx5wYg=;
        b=DSMl0n+XS4bmA98zoMfh9ofoHMKXaItgd134sSL2JxJBo9NOyxxMTYAR6WmQeHncND
         PeknraM6T+5cS+WHEf26Qtpt/DIK3va1C5AjMxZqEF4RPHzz5rp+yLQDclL9kPcj5CtY
         tGk/vu6iBJSQ0N5jXnS4CCuX5qRkId0bo3FdhhqCBILdoPCL3Yd8edNkoAenoTbgjD4/
         EBhC+sWfqoYRfwrGDqQBnIPoOfbD4A3xT6s5mqHMfvDV5rONSvCFfH770lKhQy8/lJPC
         hp+6zYRjHIIERJkKGLX3J2roaq9ghkfJOxfSN9vFbDj15yIVQIAPBhNjqky3fVnn2cF1
         LrGQ==
X-Gm-Message-State: AOJu0YyI7P/Z9+kP/n6QDcMJHdYPhFNBPTIJirwx+JDu/CRDvfKpC3sV
	LYEEiKza1kuS5Rdp4y0XB4vriN62WP0zWQ==
X-Google-Smtp-Source: AGHT+IH/unJ+g/kP9VOSqj2aWQoWVW8jPVfqWy7flcYV7Po/JFYn8MOBPZTTERHE4uxbL3cEkmEM0Q==
X-Received: by 2002:a05:6402:513:b0:555:5f42:38e0 with SMTP id m19-20020a056402051300b005555f4238e0mr2776539edv.52.1703941481355;
        Sat, 30 Dec 2023 05:04:41 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id ij14-20020a056402158e00b00554368c9ce8sm11359578edb.1.2023.12.30.05.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 05:04:41 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 30 Dec 2023 14:04:11 +0100
Subject: [PATCH v4 09/12] arm64: dts: qcom: sm6375: Add VDD_CX to GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v4-9-32c293ded915@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v4-0-32c293ded915@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v4-0-32c293ded915@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703941465; l=718;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Gc/yH23ZENvzGFFViZ7/qVCV3FeiRMp+LehbPO3k6Xw=;
 b=AXltpIs8RZJOvE4T3A8KZNeLYf7tevNxFNmat4ZlYV7ePL3W8QkZREZmjsvG7LVrJZZFqfEtf
 CuIl6V8+gH2D4yVvPewO0deXVphR0FbZVW42iJztMCymXaGM4bXuSVi
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GCC block is mainly powered by VDD_CX. Describe that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 7ac8bf26dda3..f578d110f36b 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -954,6 +954,7 @@ gcc: clock-controller@1400000 {
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
 				 <&sleep_clk>;
+			power-domains = <&rpmpd SM6375_VDDCX>;
 			#power-domain-cells = <1>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.43.0


