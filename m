Return-Path: <devicetree+bounces-134933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9849FEF72
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 14:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F8653A2E28
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 13:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E5A19DF9A;
	Tue, 31 Dec 2024 13:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="go74SY6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3573319D8A4
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 13:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735650161; cv=none; b=qPPCVixw01vsEaBcVNT7X8J+GNx+lREvQKDpcTNQGVm2hKXT/Yi/pkcBbnQ/TXziKEiSxGTnpE26GkcUsWPlqScPMAupBzam8vulxD4YR71oK0cyUZor9F/W8/ZbFavF9/MaODoNtnt8bjLmDNMVr2TTjvW8WLI9iXAqiTKqkXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735650161; c=relaxed/simple;
	bh=hVyAuooOzyUbD/jnmspiTE8wCtobigUKFEsbNH4RJ0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fMbQGPo34pie+fdbpH2cnY9IA+aA4HZ8fbFfFsqlFSHUDfuA+sDuM6Fc0U5vOByhwLCzpT1EqDdaPTuXLSSUchzciaTM0LDwDAPe9hKTOfwM9NpBNQNmOtJUmr0hJjkLVDkTAUwZ/IW2kvSLxLieY9wB01DnnNwLI/t9iRk+PHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=go74SY6m; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2166360285dso133401835ad.1
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 05:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735650159; x=1736254959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvF+49X2gFMGE7dCbt+zol5pHVl//CcUiNX288CxZPg=;
        b=go74SY6mxOHBBTbqFyqzoW0alX3HxVyAkcpc3Fs0ci46EQ64hNCEhrLHEw9wsUzdjf
         StkcX3FZ9S99frVeuOvb5LDFSFPlOR+IX4Gv8ugW6eJEuDH9Bay4d8it+lDgSOY4eWRe
         anM4re/Uni/dwtuyI6LuP8Oku9cxynyn6CqORQpKYgwTEdnDb4GFWyn60+6XV75Gri2J
         zK+o7jwrkDguy3iJhpmwTeosUmscCf7uoP4p+UBr66jaKCaj1DpfBP9CkccC1xEXFUDz
         i1uK96UxqiyiEhwDLv3OqXj04+SBZc+ZKZtg7Wl525pN3yBOExMI8x/kSloYOKssFUl2
         mKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735650159; x=1736254959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvF+49X2gFMGE7dCbt+zol5pHVl//CcUiNX288CxZPg=;
        b=Gj/1ziABMm83j1kSgdWlDhEEcH5v8N/r0/pbDpZtuvg1COU13OAsZ+CXTavAaoV2IG
         xobVbgSR9MCxF8BU0HlkZeDVPhiX+bQ+FyduXQRcAqfygnoTuNRCnY7YDVZrHaO7VfHB
         3Vj5K1pThegqjS5gLUGQboVZeuwtUkkPX80kI0It6dc8czTJIIV0a4yOrBnAjj2CoSZn
         Fu4HAkil7HOsN6gVGqXIkYR8DIEuAmzjPoCxwRhYE+yuukiOfy95DCGYXBzpV3SccWtg
         reIujXAG8LJVwe24skyEKUt6fByGCbJGRmV2+8QcXet1HPdCHTs4hWnBd3yAF8ho56uE
         lxLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvIYz2Wh3wP1di2zS+nBkEjJktVtCA9H6v0kkLYC436oBJaRZeSiOvQ5hKLL9PECKMJwdI3wNWvI+E@vger.kernel.org
X-Gm-Message-State: AOJu0YwtDt0+E2a6iOGyqSI5wIOX5nTmxCMIgk/lAwAuLUBStweXWY0B
	unBMT7n/9FDKBgt7i5nUp0XlDWG9i4aqheMu5EiwCDg1DXWKr1kv3+EbIYL1Eg==
X-Gm-Gg: ASbGncu8Z9JsIGOs3LxLmeWPBhIlj5CkAZN5PYcJvb6taZkfg/UF0CjTBmylrvHxJGF
	U1OCnzEFJCkEwZ93oMO+THfeloi/8oxipDJBhlbtRUkV7ZX4VgAa86lrzst+0aFhu3RCs8dBVae
	B/cRJcs55s4egMDbnTt0A8dc/g8aMhse0NoA3XZ8A7G8fr4R4YOil7sPR4PVMlqJeo32wO6D3Yi
	y+nTy+VvMMFVYWsefcmWcA5l33+b7JAoHFITFXIMEuqTKnGxBG7fc0G/+mrHdeU9+aibMAHZQJl
	YM8eCJpm0Ys=
X-Google-Smtp-Source: AGHT+IEMULsfFORB7W9l9G4XPcBHlz6cU9L2NX3m3xplk+5DtOBI1D2wFJ5g7TgfuAIcWSgnGgDZdA==
X-Received: by 2002:a17:903:2286:b0:215:cbbf:8926 with SMTP id d9443c01a7336-219e6f10978mr531200865ad.35.1735650159283;
        Tue, 31 Dec 2024 05:02:39 -0800 (PST)
Received: from localhost.localdomain ([117.193.213.202])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9d945csm194514275ad.117.2024.12.31.05.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2024 05:02:38 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: sa8775p: Fix the size of 'addr_space' regions
Date: Tue, 31 Dec 2024 18:32:23 +0530
Message-Id: <20241231130224.38206-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241231130224.38206-1-manivannan.sadhasivam@linaro.org>
References: <20241231130224.38206-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For both the controller instances, size of the 'addr_space' region should
be 0x1fe00000 as per the hardware memory layout.

Otherwise, endpoint drivers cannot request even reasonable BAR size of 1MB.

Cc: stable@vger.kernel.org # 6.11
Fixes: c5f5de8434ec ("arm64: dts: qcom: sa8775p: Add ep pcie1 controller node")
Fixes: 1924f5518224 ("arm64: dts: qcom: sa8775p: Add ep pcie0 controller node")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 9f315a51a7c1..368bcf7c9802 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6092,7 +6092,7 @@ pcie0_ep: pcie-ep@1c00000 {
 		      <0x0 0x40000000 0x0 0xf20>,
 		      <0x0 0x40000f20 0x0 0xa8>,
 		      <0x0 0x40001000 0x0 0x4000>,
-		      <0x0 0x40200000 0x0 0x100000>,
+		      <0x0 0x40200000 0x0 0x1fe00000>,
 		      <0x0 0x01c03000 0x0 0x1000>,
 		      <0x0 0x40005000 0x0 0x2000>;
 		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
@@ -6250,7 +6250,7 @@ pcie1_ep: pcie-ep@1c10000 {
 		      <0x0 0x60000000 0x0 0xf20>,
 		      <0x0 0x60000f20 0x0 0xa8>,
 		      <0x0 0x60001000 0x0 0x4000>,
-		      <0x0 0x60200000 0x0 0x100000>,
+		      <0x0 0x60200000 0x0 0x1fe00000>,
 		      <0x0 0x01c13000 0x0 0x1000>,
 		      <0x0 0x60005000 0x0 0x2000>;
 		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
-- 
2.25.1


