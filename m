Return-Path: <devicetree+bounces-27117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEEB81958C
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 01:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2455528C4B3
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 00:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF52A200AB;
	Wed, 20 Dec 2023 00:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OdQp7ptY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9421A1D699
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 00:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-552fba34d69so4887538a12.3
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 16:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703032277; x=1703637077; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tm7vsf6UZKbMh6cnZmrwv/W/K4dUYmjWU07UgTkkSLk=;
        b=OdQp7ptYBoFXdEYO8iACLB9wjDGEJ9/mj6iGtNUBCHpa8MnxDLVHKTrixvaneHb3eR
         S3FmUe67eEWLndkka7YOV49sV+JA66OLTsiC9TEAj+y59k97IhqDbUzJLJfXxUmTqzKA
         VpPtva3dbbmeINkszvboH8403w2AAGuDUvA2d++yfaJ+caLtC7lgEw7CFuTlun+yqKj1
         McuxkdJGUryA0y/PmrABLChc4LEUGJH68ZrmXWY7AZKhBDFgut11Jk1WhNNfOpy3wmpW
         V0BuqJfb6jUNne6bx2eLLowD+6CVX/vB4DE2928aiiZ5Lx5X351yvFFVm8Ek8XYwkmCi
         Jd7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703032277; x=1703637077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tm7vsf6UZKbMh6cnZmrwv/W/K4dUYmjWU07UgTkkSLk=;
        b=gSbDs2Uxc60889rcww7LVIunVQI9T2L04BnQTKSx4kpYiVXXTPF+2wEKnUCkBzSj6K
         fYCxPdyNIXKjT24zixQ1ediiWFDhu1vrocGOJcxiCQtrWUb+JdWNltYWtCFSoyZRz4Pz
         XPUw8VH2i6amRLtiEnrwgA5KqneiCa+JQVLwC8qA3Hj0UqFi0euxniezDiVfa+7a8nnt
         6VCl2K4iNbMrzNQTPCQsKLHKyMJ1gaXW5C6a8vF5qWGDWJ1AxCLZ/HGOklV8dZaOJ2LZ
         ZQ7fpg/IxxXpNXtiayK3kXNvKpCFdaCcDHBrtE1jw5m8s6eKfjevJdzirNxaIIie3Dc8
         xI1A==
X-Gm-Message-State: AOJu0YyUEBT+ocXzyg0tRAS/aF12Dld7ZjvqN47XyXaZpy9aGjxtmV5r
	jGai+V6Iz68exZf/0ZQP6WdbBQ==
X-Google-Smtp-Source: AGHT+IFn6gXZSK6nXSRSXHDYyMx2XjDnIgXTkDupVjqkCwxEwM6UCcB7YXJ8Wqj/8TzuB2J1vi3Bow==
X-Received: by 2002:a50:f614:0:b0:553:dc26:caad with SMTP id c20-20020a50f614000000b00553dc26caadmr53566edn.67.1703032277109;
        Tue, 19 Dec 2023 16:31:17 -0800 (PST)
Received: from [10.167.154.1] (178235179206.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.206])
        by smtp.gmail.com with ESMTPSA id k16-20020a056402049000b00552d03a17acsm4824397edv.61.2023.12.19.16.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 16:31:16 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 20 Dec 2023 01:30:55 +0100
Subject: [PATCH v3 14/15] arm64: dts: qcom: sm6115: Add VDD_CX to GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v3-14-3e31bce9c626@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703032250; l=758;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=L7WLthXykOxwSCjhfTNvX8JtR2g4GIz2oFPri6fp1uU=;
 b=THQoigRdGBzYP00XEQB2h4Z7qY2lWscNTp12Po50hbFNwGrviRM2Vxc8MOfXTChWY4Hj2yU3A
 OSmZF8tnl0VB+j95gq8aAJ9ziCCIGib6PapAY1c2GO3X0CL0qYGGPU/
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GCC block is mainly powered by VDD_CX. Describe that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..30b140e1cec0 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -807,6 +807,7 @@ gcc: clock-controller@1400000 {
 			reg = <0x0 0x01400000 0x0 0x1f0000>;
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>, <&sleep_clk>;
 			clock-names = "bi_tcxo", "sleep_clk";
+			power-domains = <&rpmpd SM6115_VDDCX>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.43.0


