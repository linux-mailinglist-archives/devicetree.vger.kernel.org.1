Return-Path: <devicetree+bounces-31840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE98F82CD41
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 15:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7665AB22E52
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 14:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52AC017FF;
	Sat, 13 Jan 2024 14:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n/zVgn0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC074182CA
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 14:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-554fe147ddeso8234304a12.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 06:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705157473; x=1705762273; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EIS8BVV6xMe2SYH6GmTY+cChP0QmWaX59VMotnHi2Jo=;
        b=n/zVgn0xg8MuNQql8BimPcwAihQ6GQPFhwgTrAM7RmaTHkMKPu58w4GpFRY4p4FiYR
         2Y745g0Afx3wKQWPvhEFX4GuaKK79kgwm/wcr9mTJvYv0vMquQas1/D0x3zYqCuaJyJ8
         Z513zQtNNuusD3eA48tdBqWIt9f7+mexQSzMT4+eBiDNpZgDpCK25aIbDu5lIxz8fDDR
         AwCe0gYWfKmbBr4fe+zJdg2jECw/ta4IOFwi3eFqVjvm1FcCtD1Fm3vbEqHo5J4nlFJm
         A59FIXeukW00m3j/yofa8gn55nTb0tobkcKLneS9je0gZpn2twz2tNnhRs27G/eGiD2X
         z11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705157473; x=1705762273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIS8BVV6xMe2SYH6GmTY+cChP0QmWaX59VMotnHi2Jo=;
        b=VSLBs5nvFiSmSg3Xce6chsVe7RIiuV1+2vSvU+LJDIchXJSQWeuzQophQxkqTPPoI/
         kmv9obFsjsG64C1sS4afzOnyZwl+lPp21OEg6FHhY/z3ceqZxRNAOJ/C1vdC53asdI3G
         juxihx94jONi+frTY+LCLi7Vrbles6kNhR+sWgjD4u+A9O4JYcJ4kguVOeo7n8sLpToV
         fnIsy8N811eKHL9rOkGxsk/KQQfKEFpD6usmXBaKNst+Swuvn9uQ/CNPmXnYXc+S48ec
         XO0mXyP7H+BLPY7QuXsWH6mQ3wXde1lw4XI0M3qH744qFFmzlg5xqgiGFR5Fi5BG8SzD
         ubQQ==
X-Gm-Message-State: AOJu0YxQWQeTiXJPvbUnisUwgn9VEF4DSN5mVRpRR+JHHELWWoTGtVIb
	i6ODmcTl2Yun6N7JmTPgnBQSIRgU9cP6sQ==
X-Google-Smtp-Source: AGHT+IH1BKgAHHlwIVJSmDL9mfv9JDP1cYjB2BWYyC5LsgCmdVmCPaEC9EbZK60iCEI1e107KNKtTw==
X-Received: by 2002:a05:6402:22b1:b0:556:d6ea:4305 with SMTP id cx17-20020a05640222b100b00556d6ea4305mr786770edb.13.1705157473315;
        Sat, 13 Jan 2024 06:51:13 -0800 (PST)
Received: from [10.167.154.1] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id es18-20020a056402381200b00554b1d1a934sm3014593edb.27.2024.01.13.06.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 06:51:12 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 13 Jan 2024 15:50:59 +0100
Subject: [PATCH v6 10/12] arm64: dts: qcom: qcm2290: Add VDD_CX to GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v6-10-46d136a4e8d0@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705157455; l=764;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=HEE3DdJ4zQzS/Foajh/2RBi9l8ssp2UwDgoH6XqPOSE=;
 b=BhgjiV2lxdGarm82hkVqbXo9xFXjVzGMqv+A7qOkRqNXlz3BeYj8cJ0UtDUiuZrKxIk3ivmOR
 uXL4exR9yUCAd9+C1qvAzE7+7/K0Fa09GUMZhK2F8ntlrkzeqsTyTKP
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GCC block is mainly powered by VDD_CX. Describe that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 0911fb08ed63..51b05019ee25 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -647,6 +647,7 @@ gcc: clock-controller@1400000 {
 			reg = <0x0 0x01400000 0x0 0x1f0000>;
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>, <&sleep_clk>;
 			clock-names = "bi_tcxo", "sleep_clk";
+			power-domains = <&rpmpd QCM2290_VDDCX>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.43.0


