Return-Path: <devicetree+bounces-29500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AA8823650
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 21:17:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFCE7B22161
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 20:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3DA1D6AA;
	Wed,  3 Jan 2024 20:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hcsnh19l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FE41D556
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5534dcfdd61so1500261a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 12:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704312955; x=1704917755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Lh+gX4BfitGRmiyCa+I+reBWxcyX/LBKMQuNUp0UDA=;
        b=Hcsnh19leAkOapYDv0PoJGXelrH2ZPbC2xJYS3CM3EF4sFAReyi2PCBVSZVVWV28xT
         pBa+NLGE2W+csKxFvHB+3qOJfmzhVKMDlDUU3jjXWUKFYp0kbcpPc+Cx373vtGQQKli2
         PcNHtByODljypjmqlh7IJTJlpi/IPy/E1cR+5EP8lnL/+Xg9ALpgz1U3n8OoKTR5riUG
         u85W+5a7BFXT1QpLjgH7OaMBnIRZAuBNWgHgMK6njWInKykT5YRwveRswgA8SUQ8gtTC
         ekaxA6v4/OnLA7wIZgBMPnMw4kty0BPg/4EGfn7ttgi0t12NgZy0JwNL9y0FdTLYwaxM
         +VYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704312955; x=1704917755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Lh+gX4BfitGRmiyCa+I+reBWxcyX/LBKMQuNUp0UDA=;
        b=MYxEteGubNiuklYIFMp57ujKCQvvLxrG7HkcPp6cdPxEO91Lt+VKgZzGehfGsKMkbJ
         3pn8oSTkbkRCadz1rVO288U9ubI/1UfcP/SGmdVaMTRIIgaoxD3Q8mUIFz2IVdTCae6W
         U32VdXQ3qMoKYjPyeSn+PtsYSe/LkbLkZfk9Dww3EPVj31QPg44SB7UM4FpvIrCRXf0U
         3DjJMWGySHrnvGV57ARVOY7VlEjncEDPleucxXFBfpEKZvGMkBYl3Oj5JmdqtkPF5Zar
         mzno90Q5uVtDwIo9hBkwFGrLbKWUSLH5wPyfDpJbb/aEoN3XmSBtBQarRE8VtMnUcieJ
         WhNg==
X-Gm-Message-State: AOJu0Yx8Box+z+rqT3i+hvPGI0Pk6YteVCRXMmTqoS5wCINmh0fJFbZE
	7nC3tXJJ3afNhXmSgF4c40ZnlDybIjMvBg==
X-Google-Smtp-Source: AGHT+IFyNHI/21NMgd78PoKefXi8DOIpxVyqBZolldwU+OuruHiNPgHIf/Jm/DhZTUUnerNIJHtYNw==
X-Received: by 2002:a50:99d0:0:b0:552:574a:5390 with SMTP id n16-20020a5099d0000000b00552574a5390mr1581036edb.15.1704312955616;
        Wed, 03 Jan 2024 12:15:55 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id fg9-20020a056402548900b00552691fc7f9sm17549670edb.66.2024.01.03.12.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 12:15:55 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 03 Jan 2024 21:15:34 +0100
Subject: [PATCH v3 4/9] arm64: dts: qcom: qcs404: Drop RPM bus clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230721-topic-rpm_clk_cleanup-v3-4-a66e698932e3@linaro.org>
References: <20230721-topic-rpm_clk_cleanup-v3-0-a66e698932e3@linaro.org>
In-Reply-To: <20230721-topic-rpm_clk_cleanup-v3-0-a66e698932e3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704312946; l=1629;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=PsNkQMZIizOIi2f/yNcFOg+NCxoRsS9FEjGHx1dSF5s=;
 b=VxrgrvAwp05inPdPB+oyWRuE5+jWuGB4k/ubcB1SjcLwr5TQh1LtdeCAk3DBP24OxDi9ct7h4
 BaEMKkjXx5HBFMvuoNzCdH9SPtiD6EAAEkIBzxMWsjcrWMunTUXQRwa
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Some nodes are abusingly referencing some of the internal bus clocks,
that were recently removed in Linux (because the original implementation
did not make much sense), managing them as if they were the only devices
on an NoC bus.

These clocks are now handled from within the icc framework and are
no longer registered from within the CCF. Remove them.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 6ac64ce9bb68..2f2eeaf2e945 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -558,9 +558,6 @@ bimc: interconnect@400000 {
 			reg = <0x00400000 0x80000>;
 			compatible = "qcom,qcs404-bimc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
-				<&rpmcc RPM_SMD_BIMC_A_CLK>;
 		};
 
 		tsens: thermal-sensor@4a9000 {
@@ -601,18 +598,12 @@ pcnoc: interconnect@500000 {
 			reg = <0x00500000 0x15080>;
 			compatible = "qcom,qcs404-pcnoc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_PNOC_CLK>,
-				<&rpmcc RPM_SMD_PNOC_A_CLK>;
 		};
 
 		snoc: interconnect@580000 {
 			reg = <0x00580000 0x23080>;
 			compatible = "qcom,qcs404-snoc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
-				<&rpmcc RPM_SMD_SNOC_A_CLK>;
 		};
 
 		remoteproc_cdsp: remoteproc@b00000 {

-- 
2.43.0


