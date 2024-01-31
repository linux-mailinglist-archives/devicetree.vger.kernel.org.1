Return-Path: <devicetree+bounces-37003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F08843750
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 711901F220F2
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2856067E64;
	Wed, 31 Jan 2024 07:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cHL7pueX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD9A67E90
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684955; cv=none; b=TCT+fK4yIoHyU+LEMQwa88sOBP0UQ0NnimarP5z76aEGFqDybRlI3BNm8cLzYtxPJmzChXpq6LSJ+81OmVdQIllhDbTTsOxLCBIcXxP820ozY2tBzAFntnbZFWWRdPTSTcydEHdzo+pmKGhaIHIde0MAfaFWoHYjw4X0ysbXOjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684955; c=relaxed/simple;
	bh=wK5tqh64wjjHKC01oRXS3I38BrjvpCIIBSIYFkTgDwo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SbY9DrpTIfSnX6DFhh8ie+DeNpHvS57lei0Q/jin1X8yAgNYI2CE16lCAcbLZz4K2cw3dWxYzZK2YtXXQROjRjcZx/pOemhrIVBWsH0wJkQ12r8AyIdAT51aqGXMAWPv7NhCrNZ5uQAcRaUJ/cf3K4RwYkfIW/do0lR1tRYFU7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cHL7pueX; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6ddb1115e82so3142007b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684953; x=1707289753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cb96/441ndpPUn21lCcgixKHWXNQ9RDVKXguXeEmJJE=;
        b=cHL7pueXPn+x1GDXOFd4vy0XJXF4TtN63tvbSVkRSBbzkNGwxDe3desm4XvqGktKQI
         cfJxY257TNO1bw1shwzCOmQb4ssvlqviLsrr39qILiyPryTFpHGNn5uO7hNt6oyACmX7
         gbgSkTJMGwOEN+6kbtj166Stj/EStL+9KGCmONAGyZkiW/2zkMgX8M3rNP/aAnf4cnU4
         2V2IKSKAMdDmwQr8lyuSM4Gmlt3j/U384tQ2ygTY75xiMOaMlQlBAx1iXY04XUm8/rjE
         zj6gQafsJYSICFWRcm5KHx2o9kFneqw1deISQ4SWIh0aU+cPZcuVld7riZTduKpgRKJa
         UzdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684953; x=1707289753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cb96/441ndpPUn21lCcgixKHWXNQ9RDVKXguXeEmJJE=;
        b=DJfoRvZ/uJ8zWpqZfZDapVL5mgkqiSZ64MLBjhdrjWFDw8NSNHZJLQw11oyNbD4Ub0
         XDB7sb2KN+xeWiOI1Z6PLvxUkgowUH4MCow+Sh9xLbnb8WU1KEHhVi+0uv/Ag3pPyz+x
         sJ70nWxpRiyGGtzUj5sCndwwDKO3IR0dk7LjhjU15a137wJVSgVmg/7MvGoRlcgeo89L
         drjkC5H8e4vtw2Q81groEftG1slauI7M6vQBL/FUKwvjqAUne1FfdftxzJswc3aM7FQ9
         C6u4M0fkcsksmmZ6dLLs9qWdQBsj0M0htmYkJ8s1DyxHeuoXrEB3XuRi1MVEh3+8ouTS
         eMDQ==
X-Gm-Message-State: AOJu0YyO0M8yNoDsBjycYsm13efXwqkOu1/IKPdvehib29zf+ebgGxD6
	dryrdExnxDsugjwjBRDD5WalnqqwDxwX6B087kGUSO10EklI2yZg1KhIM6uL0Q==
X-Google-Smtp-Source: AGHT+IGYbL2vMpS8vGC9dOjcjL/U6cd0tTuoG6q869OwplKynYvz2JwfetLb10jXjfd3P4gethg+Ig==
X-Received: by 2002:a05:6a20:47ce:b0:19c:9219:f3eb with SMTP id ey14-20020a056a2047ce00b0019c9219f3ebmr720400pzb.37.1706684952909;
        Tue, 30 Jan 2024 23:09:12 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:12 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:36 +0530
Subject: [PATCH v3 13/17] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-13-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1123;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=wK5tqh64wjjHKC01oRXS3I38BrjvpCIIBSIYFkTgDwo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+pb5oFirLIkRag4f9F9BpfPO1+LpFuO1p3
 PRwRvgLcHWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9Tm5B/4iM2TOXXMQNHax1JAPT4o8H7oYOeV1YgRiWZyzGV2NzMJlegipoZaFPuAjiwEFJxwcF01
 xpsD5b6ca2EAiKbyINLFqLylGn27COU+9eNgmCN3covcFXrIyj5vNQWDo0XR5cpYXyCUwgyb7Ga
 X7gGWVQkBHvwZ01KeE68ZD95y4biicfoqc5yzPsrTcMH0R173tTvIMKCZQddJEDuyOg9+JaVtUD
 VA4KYJf6lke9GJpG7VI09J4Xs4qwJCmJhsUZjubKUfwal7Nfo+WX4Vo64u3XY1NnnY7CtoR9/fk
 +6SNY00kwnwqS4EmK5TY8UbjWOGb7ZwzjDZL9gLAUnlRPcot
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SC8180X requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index c64625619a65..45d39762fb27 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2140,9 +2140,11 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			reg = <0 0x01d87000 0 0x1000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


