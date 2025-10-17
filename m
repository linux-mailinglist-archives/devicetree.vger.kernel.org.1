Return-Path: <devicetree+bounces-227948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D446CBE6313
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:12:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 84FB74EBB09
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 03:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401A0258EEA;
	Fri, 17 Oct 2025 03:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XNv8Kt4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DE4248886
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 03:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760670711; cv=none; b=Euzc8s1ha/BK+9xno4d66hGj3nFK2Ly/S2wzCCSVGCBv2XNoJqdMgdgjoR4AMsBtcouAUHkSeZj9H23iqIz1pUnj9lU1KQ537AhN0Th7T+949YQBsrYh8n5/MYyWzYcoksl59PFTUiFDdr91fVNMtpQpw+CwhEwkXOJLik7idQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760670711; c=relaxed/simple;
	bh=YUDMHULVUsOxFib7C6LTLIogpVOHt02lg6ulsXG2Qng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AmqLPhWMpMy2EqLdGc3pNFA6y+HKaBoux7ZTmM2qxNOjPfGxXrUJc6XJvuCDIsEkFG1Mszzdl8QX8eaF4e7RpnyURL2adJiFBnBUQ0Wfw5eEC00VUCTX/pzjsoDyrKpdEGhCjMRH18nLGmvoao8/PvNI5ixDbxQSFwDfHcc3Wm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XNv8Kt4Q; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-591b99cb0c4so225854e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760670707; x=1761275507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5gXLrtQdT0lhUXSBK7BJhBhznyBhJxh9ehLZNa6wU0=;
        b=XNv8Kt4QPP80Lf/n0GOy4okVBiHEpiiDYH8/BCkIMrG7N1baY7Wd+VtxpiNECgRTYD
         MiSbUz2w6Lx+j9Eh4/K9oeuzIUfzYrPa+i+Vzg1cqEBOO1ojwkdMpkHl+qQcjowgg1sX
         tc2CwFYuLf8xPb1qYB/6S3+DrQbXOZ8x96+BwthXXqFKAtnjZKbLDRHSUFksTsUVdWGA
         Cv4PHMHHlLJ7pigQt5nG5r46EtVZUoq2aIQ7SEf0YjS+Kp4e795R2U6DqbOJ3HvoPu1p
         TuPVWIJpt4C1ZGonJrzTliudiFqmtoDxWdGl+lklFI5w9MHzngaeN3B0GOifB8ZDJpk8
         Ei4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760670707; x=1761275507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l5gXLrtQdT0lhUXSBK7BJhBhznyBhJxh9ehLZNa6wU0=;
        b=nJrb1zj+v0HhRYxw6E8UTk/+9QjSwCg0zxb2GlZfaVbfs5KTnbqJMKm2wZoLAcVSBZ
         bV2eNXtxirWfRYJxe2wapD1S3Auf92zy42hJ5GHOEwgMO3uGGeJNV9VnJxbLaXy0WE/e
         sHPL7me/VUIK4w9nf0RwNyMFZHIrxtdTcRN3tMBGLvxddG7eCznx658Gj1RiDkShnyuK
         BF4pjgw+l8jk/CvAlkEPM2ukSXh4c6k0Wogbtdv60EPPYhY3DRjADvId6Azdmwt08a8u
         TiVFje+r+k1IE5gz5nRm7ZqiAuzuaScIpe1mVwbOLbKL9mfaGgjGu3r4t0alHbXmfPzo
         r4Ag==
X-Forwarded-Encrypted: i=1; AJvYcCUT/AywnaQQZ6PtPl0wb7tJZ5aQb5n7HSjH1d9vb93DlnlK4SyZN0huofQWkduzl3lQUJH9m/bp2h3D@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy0MhCiJbaxp5v3F6rvujqZzyG//jPAEZzMrCWLn5hQlnImoHE
	g+1l7KCGnIeSaVZBZOIqhhC9kW1uTbTuGEnDWjcNfVd2FjDoxiNKrASWhYBRRJiCqfM=
X-Gm-Gg: ASbGncvj4pTA06hIWPN9q8jpaOGpc97cuTBdRqfF68qxS/bn73yLn4vOBAsIwTm9Qij
	Z4hrybaD8GNar0H45RM5RvhhXcAxDF2rM89oLx4t+wTIjP11nkBZTMalFFtFRGIyjnflVVMB73T
	pnD3WhGr+g9OMH6XX3RTHRXE2BShC1k3fsd+Y7gy9rBY89AixjkguWYoncYkHNJE6l6f2VGK8zR
	bp0+AhTr+BO0fvdlDV1pRCA2ekRUWoStmtd9ttwGUF/6KOw+UxT93Jvtdi2+mE3HmzBksGMbPFo
	vap4JCtmpPgSxd8iqeeCWLJvV4Lmateop7FQoqo/m3fRJ/QPXXEXzMhs+wp9ClZulbCNuzAsImd
	svaW9TWYT3orqzXiEwajvjdBz5t9vomLLpTMr9Rxxwm/hCiTfZgzJ6kR9ogglcMSYyKrr06Weun
	xWKebdp6mGXi50jXQiSUG51hVQRoM0HdhGMPGft6DgBV/v6FCNz/rSbA==
X-Google-Smtp-Source: AGHT+IFb3VJnFO2Abw5KoDKRn/BNtJbyNq2liVh2u9hmz6Mfh6gKlPgWomiBROKBpZufK/RmwgpdkA==
X-Received: by 2002:a05:6512:6181:b0:591:c553:e0a2 with SMTP id 2adb3069b0e04-591d850a656mr439950e87.1.1760670707194;
        Thu, 16 Oct 2025 20:11:47 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm7496077e87.69.2025.10.16.20.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 20:11:45 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] media: qcom: camss: Add CSIPHY 2.2.0 lane configuration for SM8650
Date: Fri, 17 Oct 2025 06:11:30 +0300
Message-ID: <20251017031131.2232687-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
References: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a configuration for all CSI lanes into D-PHY bus mode on Qualcomm
SM8650 CAMSS CSIPHY IPs.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index a229ba04b158..619abbf60781 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -587,6 +587,102 @@ csiphy_lane_regs lane_regs_sm8550[] = {
 	{0x0C64, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
 };
 
+/* GEN2 2.2.0 2PH 4 lane DPHY mode */
+static const struct
+csiphy_lane_regs lane_regs_sm8650[] = {
+	{0x0e94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0ea0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e90, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0e30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e28, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e00, 0x80, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e0c, 0xff, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e38, 0x1f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e2c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e34, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e1c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e3c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e04, 0x0c, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0e08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0e10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0094, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x00a0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0090, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0098, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0094, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0030, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0000, 0x8e, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0038, 0xfe, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x002c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0034, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x001c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0014, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x003c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0004, 0x0c, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0008, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0010, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0494, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x04a0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0490, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0498, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0494, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0430, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0400, 0x8e, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0438, 0xfe, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x042c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0434, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x041c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0414, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x043c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0404, 0x0c, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0408, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0410, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0894, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x08a0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0890, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0898, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0894, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0830, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0800, 0x8e, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0838, 0xfe, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x082c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0834, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x081c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0814, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x083c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0804, 0x0c, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0820, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0808, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0810, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0c94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0ca0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c90, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0c30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c00, 0x8e, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c38, 0xfe, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c2c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c34, 0x0f, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c1c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c3c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c04, 0x0c, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0c08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0c10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+};
+
 /* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
 static const struct
 csiphy_lane_regs lane_regs_x1e80100[] = {
@@ -914,6 +1010,7 @@ static bool csiphy_is_gen2(u32 version)
 	case CAMSS_8300:
 	case CAMSS_845:
 	case CAMSS_8550:
+	case CAMSS_8650:
 	case CAMSS_8775P:
 	case CAMSS_X1E80100:
 		ret = true;
@@ -1018,6 +1115,11 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8550);
 		regs->offset = 0x1000;
 		break;
+	case CAMSS_8650:
+		regs->lane_regs = &lane_regs_sm8650[0];
+		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8650);
+		regs->offset = 0x1000;
+		break;
 	case CAMSS_8300:
 	case CAMSS_8775P:
 		regs->lane_regs = &lane_regs_sa8775p[0];
-- 
2.49.0


