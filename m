Return-Path: <devicetree+bounces-144290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE9DA2DB25
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B24731886B67
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B4B199239;
	Sun,  9 Feb 2025 05:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FThBDY1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A25419D074
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077639; cv=none; b=m5Y5eYgNMM59fsC+6AnVhS0AO+WodgesdgRfa0QJ9WCqdA2b1eFZig269fmmmXd+FgqwuS4RA+WtaeTWaz7gAs1V3L3H76GxbmcpQLq+778RpiK1URYkf/pTdh6bq2KDgMrI9unpSwN5+JeK4oMG8z89EtR5HPtXUd5aV7ZGEuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077639; c=relaxed/simple;
	bh=7KB7IcHxi0VqX9I5ufq901Xoeq2I7R2imjBgnmx5DoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oFqIPhfAr0GovqCTQAIqaehlNzFv7qTkwxkng+lv7K3NcKsxO9t3aZOZNUIA5BdwxJLuKu/TJ2cYMpvhIKq8LC6cOaLm/PfNZ9XYWUsD/zQhviUbi5XM4HteUyDjPjvQSDOhOsyvF1wHZtA7YE8ef76SYuMsI+tVC0EIU+HL/0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FThBDY1U; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5450abbdce0so104220e87.3
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077634; x=1739682434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hlPHSmm8yEMkPCpLMXSlS5GXe/d+EX9J4C1uXL4gVw4=;
        b=FThBDY1UlKtblGbTSXV9L2F63W7zW2GJ4SilXFOZp6rmJj/D9VBpA8mP2f6aF37XsH
         t9zvGG4ADp+7v62hTkGple1B6ipxeHrR+hhOp8RQDcTFZZ2rl7mEYuOKEoADOxWG9V0L
         XfyvM0o0t1wD8E8bQF1Jxrpct8Gke/T15VmEYk+uXwX+xdAXoww7py8zObuB9Bsa6F69
         G4dYFAdBSJpCwgZQVSs+X6Y85MFGSrLyTd1Z5fENB/SmTamNdjLzjeO6JqZ4FSFTIYRq
         /t0DYQ+OUsdiPHOGOnx/aOnnNYRAPHUO7MF4qSOlJEIyEhrL9dlYTlkHjHfrC1XDPZvn
         Hifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077634; x=1739682434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hlPHSmm8yEMkPCpLMXSlS5GXe/d+EX9J4C1uXL4gVw4=;
        b=dY36213o8amIu81xo+zcPoxwlqmg9xuWU1EuO280f7JbiTZr3EjGfLyokVhab0e9Qe
         E8LoL+hyMYSCYTQNiqfcwETs/jDQ/hPFyJ1+DH5KcWqDiNeX5xmQjYGHd4OUtasasOlE
         TpknIWyy1BKL1HZ8eEgDo3li0+W1M1ZLJg64CIbFhhWkbjFzH1wl/P0HkPj6DJKoV+s1
         stGi9KfjsVf779L/3dGata+BO5lBByqtDG0AlNPoG0YcB9wRdVGXxJ+8mqW+9JopjLIc
         dMIlND6Jq1SCqm4xWsAJ4JpETbOtlzyMLBd/RRdpdi6yMLUtvDwKy+RN/609o12JV4g6
         T5WQ==
X-Forwarded-Encrypted: i=1; AJvYcCUN9s7i1TaOYwuS/1063eIFV0EPurFtaU1hPyrrqsj59tONKbJRELxw/IQgGk54R7FoXzQw/PFpJ8FB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9a/LK0IPxuja3HzGH5hXlANRAnSluxTNRlwdZfFjrWfPEzAog
	UUV3erHioKncQpZEe0FyEitwLUJTkdVmg2OesU3xyPq03atspKeyHxmMaPM0OOc=
X-Gm-Gg: ASbGncs7sT/OBGm6sokIfn9Axq3kQ8t5TbjoolC5P8YldgEA7lVz/LTqf9Fx/3CocRL
	rqO0Gj3f4yQ8Arm8dVoIY+SlOkVYW3N957rBTapG7cDmG/vlxnck/qRaC8f5R2MZ/N7GLv0yPE1
	cA2S0/nnqEstqUmEveQBy/QiAexXLNwtL84fkxUaCfdSezaUQL6rme1MYKPNkacJbxCMqNzssMg
	XdBTQnMnXOk7utGOaeboXRf/P68U+HDJVkADw/BIHLg7OqVL/m0EQ2xNzwZu4YTamCBoC5po592
	A5xsqsEpsZlD4D4Ae1SDT3w=
X-Google-Smtp-Source: AGHT+IEd6dicvlKdQV2rRsUxtxE28CChSKCpQgVen389uSlji8/jD6oj/iczUy7fpLXBwrzv/IwjKQ==
X-Received: by 2002:a05:6512:2399:b0:544:ee5:87b0 with SMTP id 2adb3069b0e04-54414a96604mr3354167e87.3.1739077634302;
        Sat, 08 Feb 2025 21:07:14 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:07:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:04:56 +0200
Subject: [PATCH v4 12/16] drm/msm/hdmi: expand the HDMI_CFG macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-12-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2467;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7KB7IcHxi0VqX9I5ufq901Xoeq2I7R2imjBgnmx5DoY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfjFlNku8IROPqumZ4E4rIS6xVD6X6WWajZV
 tgiLp+pqdCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g34wAKCRCLPIo+Aiko
 1XtACACmQHPvaloVCRw6WqW1+yRfCCOJWikCAcXTkM4JJ5bJUFfsy1jAtNccjkUo3nJxp/p+GNL
 Y9hsOLA5Pc2IUQ7X+8EaioPypvW6QelbfocUaIB7nlut86mqKsx7Bk8mB+xRWBgCyUTiUH+i9Gs
 QzYz9wWCSdM+ZyY6WFc+RD6QNPD+NHQ+eYtbfWr7BLYyH4yZfnYGi6tpnj76ocxpFo1AVHEYPhd
 B416qy+4Kmw0nFo4RtXec2GOy8UlCuL3msGn0w4yUxM4cVWTN1G+WIbBlql5toxz5913vWTjOMM
 2EEO4x9dTVVWOZShs1WwynUZ5ECsFQruxJivyWRpz/iJo2dn
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Expand the HDMI_CFG() macro in HDMI config description. It has no added
value other than hiding some boilerplate declarations.

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 16 ++++++++--------
 drivers/gpu/drm/msm/hdmi/hdmi.h |  2 +-
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 8e6e3e6a04bd2d86bcbd23c110f3533f56c17887..3d10fe6f8545198365a047b2f5652081703101aa 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -221,24 +221,24 @@ int msm_hdmi_modeset_init(struct hdmi *hdmi,
  * The hdmi device:
  */
 
-#define HDMI_CFG(item, entry) \
-	.item ## _names = item ##_names_ ## entry, \
-	.item ## _cnt   = ARRAY_SIZE(item ## _names_ ## entry)
-
 static const char * const pwr_reg_names_8960[] = {"core-vdda"};
 static const char * const pwr_clk_names_8960[] = {"core", "master_iface", "slave_iface"};
 
 static const struct hdmi_platform_config hdmi_tx_8960_config = {
-		HDMI_CFG(pwr_reg, 8960),
-		HDMI_CFG(pwr_clk, 8960),
+	.pwr_reg_names = pwr_reg_names_8960,
+	.pwr_reg_cnt = ARRAY_SIZE(pwr_reg_names_8960),
+	.pwr_clk_names = pwr_clk_names_8960,
+	.pwr_clk_cnt = ARRAY_SIZE(pwr_clk_names_8960),
 };
 
 static const char * const pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
 static const char * const pwr_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
-		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
+	.pwr_reg_names = pwr_reg_names_8x74,
+	.pwr_reg_cnt = ARRAY_SIZE(pwr_reg_names_8x74),
+	.pwr_clk_names = pwr_clk_names_8x74,
+	.pwr_clk_cnt = ARRAY_SIZE(pwr_clk_names_8x74),
 };
 
 static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index a28437beb1574553c1dc00a0c693b390389353e0..fb64652162b6c5e6e2fe3357b89c40e2a28aa47e 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -86,7 +86,7 @@ struct hdmi_platform_config {
 	const char * const *pwr_reg_names;
 	int pwr_reg_cnt;
 
-	/* clks that need to be on for hpd: */
+	/* clks that need to be on: */
 	const char * const *pwr_clk_names;
 	int pwr_clk_cnt;
 };

-- 
2.39.5


