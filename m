Return-Path: <devicetree+bounces-36999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABC0843740
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1472B253CC
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F5B4E1D6;
	Wed, 31 Jan 2024 07:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rq/a45zr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F360260249
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684936; cv=none; b=gcXgyNEf5D3RO7fZNSexuGfVfgYMg4z9uIAhzB2xOJBLUFSCxeM7loRFA/bM1amWjxZ1fZ2lJv49lnCRvp8SV+1dmBc8cUTeMwsW53YUt6mgYQeWdmivzUDsnBK3HxcPDfaxFKGElXKK5V/y2dKiUS7K/DC0yvQ0Fy2OoMpNS9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684936; c=relaxed/simple;
	bh=K932Sg5/cnLt0pSLtpFRZiy3/pbY2ft7JGRey0Tz5go=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FqdIC9T/evu23rt4KyNorHt5akd07g83cs09wOqqn6vQbRBDJ/U3xo9NKbo5QcYqVDeBcux68daSqoJEb7aZJRwnknzynYVcRjxnm5ncBAvsKk9xNaEVWMmXmkitQaRwpBACZA+7xBn09J/b+lC/w0UYxonrYNhRcq/9OVGLs2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rq/a45zr; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6de24201aa6so2120913b3a.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684934; x=1707289734; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lfqgfEY/9zrFocieEsFvG+BaeQL3QtvBSTTkm6Oh0/M=;
        b=rq/a45zrV/1AyQ06xvCDlrsiHr21f+y9IfDQTRpNJHQoh9aVOcwr3MwesDHylqf6Kc
         ls8Tcmt2fJWbLdsa+pDvBNkgzs7E6tDD4+2KqgktlZO63Aut+SlzQs7Cmb/8mnSY++hs
         BdTGPuPHiC3ZkrfGmzMTzUAo4KBb7ber6OccLPYU1jYKfGHZRD281Q4hHADJfpVHQ/XC
         rrEwbrz4M4NQ+PIG1nRmIfMhuQyaTign4xAWJHU1CJuYLUf80lQ5P3WQQ/zOkOsSWbN6
         H5+hQVC+XMC3EkY9LQTuShQ1UletGYKLyJOcY7ZPJ7p4uQTMmH3K8yqfkFFM27HI+K0k
         mZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684934; x=1707289734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lfqgfEY/9zrFocieEsFvG+BaeQL3QtvBSTTkm6Oh0/M=;
        b=wU93DTU77go4viUjgrFYJuMKkmAnMV001b5HCR5kp3gQrXNFCE6DufvDGLh7x6AEsh
         fMk7dGf6BpR+YDhjbaCSLY31HzTe9Zxmu1crcoN5uJTR2iM6hTCl225HG9CgCyPKDu+3
         wz2ZFWnZSMDDa7idtAoKfvkuEyuCjKyMQYNNzgtkOddDEGEzY2JowCnQqw9SZ/97/AM6
         F1kCFZP8mbW1W27jFeubCS51nCV/SSGVT86D/xdm8rvlUkGgfkhRFi2w8t52wOiZ9uow
         MVl9bbQX7r7qeLOeShmyPH3uDcQrRNhBwKQXw/DtcExW28EMP8a/fgagy9/JY80WXWPm
         iCsA==
X-Gm-Message-State: AOJu0Yy4Wg/biD6st7znLp5/kMLkv2xr/AMfCRPU1PbdTcV7sEubVQEV
	j/ZTCfEyLbkNxvlE/ZghItDglrkgcldVg3LdTcu+rpsKTpupPhN4SD/dVz9UsA==
X-Google-Smtp-Source: AGHT+IE183H4+eBdANrB/y+h/GNBreHlIeZu70BjrckWXN5+iab4z+T0w1c1FZKIZw+rEZuhBpgvvw==
X-Received: by 2002:aa7:9909:0:b0:6de:1d17:f554 with SMTP id z9-20020aa79909000000b006de1d17f554mr668851pff.31.1706684934040;
        Tue, 30 Jan 2024 23:08:54 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:32 +0530
Subject: [PATCH v3 09/17] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-9-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1191;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=K932Sg5/cnLt0pSLtpFRZiy3/pbY2ft7JGRey0Tz5go=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG9rAlbxLZ1YRxZjQkn+XueNJgJv1TDILi5c
 HHslYkwMqKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvQAKCRBVnxHm/pHO
 9XQVB/9lvk7C413OiitfjIvmwPhhsaehwY0HT8cMBf62Rd3UR9apdvaXiZrjPZbOuGFIQ+MgRse
 lCPJdh/c/2AcSAK4msr+ANHA/Vb4IhJsct6GVCzx6TlAEoEc51DFxJSxCX6RJtDidsRXwqRtfp1
 ee7oCVrzneUIywk74pynD2nDlMeLEvWM7Bo+pS5HwJvtiX16RrDEtJz0Y484w43UZd4TB7m2yGy
 kAO8olIfCOskFev9+iDmtFb7K5IBOld/p2E5/eU3t7BOAU0FlEN0uVjZlfDvWTj+eMRs3YjJlcK
 Kq/0lUDrBjDvTTgQtmSORJ+iIizqa2cJSJR+rralqFRNzBxM
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SM6125 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: f8399e8a2f80 ("arm64: dts: qcom: sm6125: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 00a2e0980163..98ab08356088 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -812,10 +812,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6125-qmp-ufs-phy";
 			reg = <0x04807000 0xdb8>;
 
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


