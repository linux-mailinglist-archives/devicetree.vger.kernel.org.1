Return-Path: <devicetree+bounces-226439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8677EBD8A9D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:08:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCA0B545240
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49915306497;
	Tue, 14 Oct 2025 10:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yxdma8ai"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431E42F066A
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436181; cv=none; b=h59JsPrGwD2DRArSImgNE/3ZNNjd2UYn6cYnrsdf5MLa+TtlTFFDGm00fpHN6Htb1WiqMt119WRm3up7cwz6TNM8XZ2a23mbO1RYcDCAzypqtvABM4u44XtSXjqLZwYEAf3J+amT9WN8PF3VcqMRNErWYgyM0rlmeMRMOwJ53mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436181; c=relaxed/simple;
	bh=S/KD30P8NP0mNcehUP8pNGC81/R9glKXIgh5wrx2AKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IpaCbhZxPdY/EQr3sGM/iAXaD5HCIkIj3RMPEYNhLk4BeieGe+DyYlIXsLugygEo/K2wuyTPtJ4MjZEi2pKG5IKBYYpc1n1oO+C13UtdNIyoTfyAdKxxTLMM9EClHZ0i1EwUWq/uxe6V+5s0aZh1s8QhDl2fbekrBa0usWcO9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yxdma8ai; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e4ad36541so53646185e9.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436177; x=1761040977; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vaS07fRAp2KaqILcMQz5dgQ+s6oWbriezT3s15GrHVk=;
        b=Yxdma8aiLQ93OFxDCuGOp+G+5fdfAdevdgwyJbx/MFxCZSkSSHpb3S5XJECnvak8qe
         FPQ/YoSNalIXS4P12iAeOtwF6JP11r4LC+4L9qLmZqcBmPfL0lPbB8NBxvO8t44hO4/a
         N4xJj/xJNUHX9Juk7+WB1Xg2hGxt9n3GYlZzJSchReup72sICnV8BFtnpbus6b+Cv8OM
         UqlebTnScMmcpXZz5GsMnnljWzK0sh1tCm5aX7NTAbUr2hxvRBj3xpOuTG5RmjHSZ4EJ
         vjt9YrtBYoAjYUDrKnIN4bMyDqKTABZi6jNELqpOM0jVPHPoX8hw9unbo+VveUTSoxGE
         tpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436177; x=1761040977;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaS07fRAp2KaqILcMQz5dgQ+s6oWbriezT3s15GrHVk=;
        b=jZVVl27ar9geHbXe+8H5k7rmw13GIGQgUpeo9Jmxnh52gpz+htcchfNp3Ye2imEryR
         pCPV6gIhIRVpJMg9AUaoIzsKD+PK4LSXV3eOLWnONLATYJZU0vBH07j7yMdSZ8/0BstZ
         L7sAopQ4Ih18tPzpyNQO86OPTHAuo49M5iQtqWxR7BMwdNFuQqjipy8DwBD0bQXA9wP5
         iwCdkEGskLlCN7xXf+/FGrVGCwkkM6jrNzLC0xxkPcVy4Fw7OrwBXMXsEZcbDCPOtKL1
         EfbpqgM6OcZAD/jzZb6RVHT6QevXdaBKlt2s7wIy+7HpZ+yNjqafEUWRgw7TvjSQW34n
         cGjw==
X-Forwarded-Encrypted: i=1; AJvYcCXldxl33iRdgs8wo/ZftPXnQ8GDMzoc0CoVOXKNptbCa7iSZ3SOpzlvpl5LchnF2HofOKURMVaW2bM+@vger.kernel.org
X-Gm-Message-State: AOJu0YzhzfBhJ0FCA4DCuee7JL1jTk/E1u5Gsk+bGh+73fau/nnuRidH
	ZfvrD2wcckoYacRXkvZfbl4+S2s3h488XZ8tSv8L+1ckyCLLW1Ojt9GrJiBon94bl6M=
X-Gm-Gg: ASbGncvP6JxLLjyCnqg19/vo4Z67pgX62gn8+/fhJvRhjooL3HdWdC00/A7zD4DmLkT
	4SIfNO5OCU7VrZWdF5QPUzKL9+WBV8NMsw32MFqwmkljy0yMj3L+jWtcEYyOhM/0q2UBf+P/cVz
	5fB7dtfyIUWcCGeAzgk/BXFVztM+4hukbAp2WKZyff2+yavTOCJx3rNRosRoepMXq+duHjTBJXa
	kF6Ns9JtQDCX+xPnRZoRk9kWenBsF8RlP///bwZ70x8vAtN+wG2ANA4gOlUSDlh1hpsBz8lJrYD
	sy9wNW2B0/EVhoRiQanxuGmPMts4Gbz7vRIokjfWvL+A3qk1izQEweqzZh9zpAK3rDwN/F2en8s
	agKsTUhFOQTCcrPuySX1C0ulovOb+7vM7arhpLPaLKb8CYgdJ2IK5jA==
X-Google-Smtp-Source: AGHT+IFl2VtEUnOc7K7cnKyCXWZQmxxjgC+HM/RYs8PRHoUIntYpayCUFq/QGa3L5ZN0P6heHafASA==
X-Received: by 2002:a05:600c:1d1a:b0:46e:4a78:dea9 with SMTP id 5b1f17b1804b1-46fa9af17d4mr168450155e9.17.1760436177412;
        Tue, 14 Oct 2025 03:02:57 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:56 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 13:02:28 +0300
Subject: [PATCH v3 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-2-2772837032ef@linaro.org>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1247; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=S/KD30P8NP0mNcehUP8pNGC81/R9glKXIgh5wrx2AKc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h/Chm3XpAOoZ+7P1ptsAjAqkDalQY4X3MdGn
 QpOsnA+z8iJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fwgAKCRAbX0TJAJUV
 Vt/EEADIKuOmzt2Kab1SDBpuRUMisq3zDdHGoozaSKWUjDdjzmyUsli4WK+J726o7f+wz/nl35c
 p/kuytzWM6WmVhNy2uKr3bTBevx3TTZ/khpJOTvjXJD88U0nkiJKFKSw7OtjbRDsPfHNVMRckEI
 XmOO5XxbfoXMDIA9zzEL85yyhcVCvSwMxm4Jl90kloBBBIQxQbfQoeSQtvSVtGxSAE6LW30lW3+
 K59yh/TgbMvl6RCnVS6DJPdiHMvJAk0Zt3fW73KrH1m34+c06n0M0495ABtxd9noT7yP5milXcb
 GP6dGequX+u4P/yA3tM9vyd6GgTPHb3TBnQQ7bDQkIPyEe1F4o/vcW9q2q4G1bmFVNKKw+pnvqp
 DSOPcGQ9W/P8RpEoBDU7b4hrVm4LjeNT2IQvjjH8OVXQPzaMDJ3zvAWvYJsJbiXLSak1LyfIXxi
 ryttjR+DDMutxAj5gh/8PLigLof3N8WYn5Caauk361g5UyeS1y1xRkL9QQyeB+/TrRPuXnqy5DH
 6O1uIIO6JmbCQEqTMEaZ7lSouhkkmKaS5QFZQgo8rT7UqNQGenxFOkqEUc5tvnDup5hsF3YGDoM
 DWtAWrgFO65A/6Guiq6jnkc+Y5YXtji5LchjQCmvHYyCQXiCTCL+11Q+GG6JEJeiTg5ITXHTkSb
 sYesTJCzcqS3h9A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..7b642742412e63149442e4befeb095307ec38173 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


