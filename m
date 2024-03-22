Return-Path: <devicetree+bounces-52430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3CC886981
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEBBE1C21181
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3063383AD;
	Fri, 22 Mar 2024 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jDpqOHQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCAF224D8
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 09:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711100571; cv=none; b=kvJjv15zUIK3bPFkZdLgeqfMD3uikc/1XwNTogQHm35VNdWF+0qc4ketB0xWke8ofRQSwyLMrvd/kqfrJ+h3WsIIkb8jBRcvykVcFCbbQY620fPexAdDz3NuSOg1/I7nj6uCsmZK5kOn2u7OoyFilQn0BNWHLCNXvrg3YlOesXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711100571; c=relaxed/simple;
	bh=8/B+tWJIUShz0M+gAUIZn+3gLDyYGJDst8XwZRda3Rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rhITrDK3CkFxg1FA2Sd4FuNSo+CafLXIBucYuYKEVNGQfKC4owp5/x1zUDJs3Gnd/LuSxhSq20iMTMt3nwDs9LWCMFgl82ku45QHpmgBnB/A3knfrw/3SKaDEsm6ITbKip3p51FvM9KjhzM2jge+vpYo6NdblHSQ8mSrZV2fjvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jDpqOHQE; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41412411622so13785715e9.2
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 02:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100568; x=1711705368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lb/oBLLSq3Y47GgvH465o/0zrmlnVPupUFrj/+nzYaw=;
        b=jDpqOHQEP495FpS60coCFTuolJlABQ5JZZXpNCYUhD/4tBfBHqsqWeK1gQilvKRIDM
         I44dF/6tySq8AelsAb9Ehr1+eG3cagSG+hzeGNEhZunUGZO8itRp2dbJYH8UDQSsm0aA
         YHUPSt2DfPg6UeKC0ZPWa6U9RjN4mqupHb23bDdSnPyEbk/DUIplAUXKjj/CgraoPD/8
         OxmwWonS3YXt5gWk1PO63Gd2onkREbWbndUvy6mFLsClmMDvz5Hdy+vPZf6mWROhOZig
         NPtT2PnW5PJoeBA86Fd76uYui4nsY9CvXo0vwiupvLnn4qcCzoRBPn+eEFQdCj4a42GJ
         3BRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100568; x=1711705368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lb/oBLLSq3Y47GgvH465o/0zrmlnVPupUFrj/+nzYaw=;
        b=n60nWJoq5PyJ/oGCX/mcpCgkBXxudBzXYA3g50y0zVyhp4si5i6kZJJUh5AuAY9mxb
         Q1z3wgCurDm9CeJbCGfdtg3MYdjr1eOY/AGV/SDdZb4gIl+/nTZ5orain/a16yDWzO2Q
         iCfQt1LRzA9/67a47UjsF8VJ3eCd26ypUuHY2xql3pX9tcIYwvkINDyyQoCNOHiaunDr
         ZqGYqFc/XvMzJM7rFqUQQw6+uvh/CDiLzU9AABI0Go9uW6h3TzqsZz97lqssQzcdLKdt
         l+ty2LWjWxtLH93z7UenZS7WnhVPK11ZlQj6m9ARMDbFTV08/rI2Nyypyk5LccpG37h0
         ESqw==
X-Forwarded-Encrypted: i=1; AJvYcCVsK0OdxBZmsoj+wg6KqIzGn9pgyxXWtCAiAd0LqcB/m9wO4fIjJMoMN3V/9OlbbA0OyRB0WI9RlYruHWkOvWFCjAVBepx3sbz09w==
X-Gm-Message-State: AOJu0YyYqaTWdvdty07s6eqM1nKmPXoNqDoIe5QlO2XVXWjKNLdyiJoC
	xXD1738inEnC2fsMoLkCEgK5EJowZJZ8fJ6bN8zJMuESVDBGsxbMwXQ3x6hGRVU=
X-Google-Smtp-Source: AGHT+IFhE4WuO1ld2lVoDTkPPQv6d3HT+r0M5r+RWkj/TXlGNstu78Ey7pw4/2GYA85QgQZqG+O0hA==
X-Received: by 2002:a05:600c:511c:b0:414:5ee1:76f0 with SMTP id o28-20020a05600c511c00b004145ee176f0mr1056762wms.25.1711100568408;
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:41 +0100
Subject: [PATCH v2 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1652;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8/B+tWJIUShz0M+gAUIZn+3gLDyYGJDst8XwZRda3Rw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKSX0G2gVAGe+4VuJE+nNjLNKffJh3KLPtIucIn
 AKkO/z+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkgAKCRB33NvayMhJ0QolD/
 0ZwywwKP3CIggFcboOnHfWwGFfJHpkbvVSlcFaSTIsVqQIh1NsG0NOgnaMs8K7kSCW4qldvyYSWJLx
 lUGlCw0sgB7r48+X0uPjMclw1c9hYL1VnnXD/auGKUVUFB1asZLcgsuth2+KxAgEu99YhJU8Dgu5Tt
 2uwCXAEYmjj2WNHQc3E4xbmT8wlbj4waQZ+smw+pRc5PTbDDEfaHQ85NRqkI8GWbDVzTGUBZ2gpKmw
 wNqV+tXDriMtobAUVXyYUNHVbXMih9DlTRK+4nPGSMab9WKOsNuPsg3BdFfsWOlKzINunw3qGuzb3G
 uSerAlGZRI+jkz5qLSvIY76pUpgg3yekA+Sx4/Ov36NpVX1GlZN/uBinJJ8zKODLxpCGOaGObp8diI
 sXQWMW0oRaJLz2l9q29XySQFcR+v2igz9C9uTtt9p3/ntQxOT+eeFAYB2L+VpvnLaOxK+7rdEIs/n3
 XGLlZ5LLYZ4JBUBJBzieB0grQrKqFeXO0AcTAV4Q6AMPDtDcL8tVm71odmjMYY5A57TSKDa6stNLqU
 yNa6woS5qq8NKV302aGjFtfpeURAmZoZ0d+BXjE79kcuaY2iT4aMYOS5qHfsJ104pzCnj+jCGad5IH
 CnS3MFNtIHxAUXJvCd/5I3IrIy1gEQjIoHiphog0zRSVNJ9Cs+1l8FJHIXDw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
enable this second clock by setting the proper 20MHz hardware rate in
the Gen4x2 SM8[456]50 aux_clock_rate config fields.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c9a95e62429..e3103bcc24c4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3141,6 +3141,9 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
@@ -3198,6 +3201,9 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
@@ -3228,6 +3234,9 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {

-- 
2.34.1


