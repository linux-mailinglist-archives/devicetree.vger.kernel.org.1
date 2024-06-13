Return-Path: <devicetree+bounces-75527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E3F90794A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 795371F2491F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CFD14A09F;
	Thu, 13 Jun 2024 17:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aSlngvGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD97149DF4
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298313; cv=none; b=P758ltphPlLOGd0tUe6TzenWlUBvNpwXZ4+A2gGif+vi7iwWwQepy0xevur2+pCu7m41cQI7qbHxJvn3jMb+gQKMje6Vpw3tRAY8rLICcTJm6CDQz2o1Y3kE9zen1riEzPBslUCrRdGc+MKpTxuw8T6vVVX/3XW3d1JuNwhHav4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298313; c=relaxed/simple;
	bh=HIriNWIocgMjwNxbdTrc6hdy7i8ETZY5Lp1WWcPraew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uG8uMnx5Y1M9swbuRz2l+csb0Q7JK44HleM60Xh/rW5b1WhTk7j6QAfUTKBNJ89pm+JnbKtnur3+L4+4guwbe03no9u5RcJgBuQDRuoG16g/JZQ/dpZnF+jmNhEySu4u6SvV4+TG86g90k1yZY32yTYWuuzYhorlIyhmAVS4/c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aSlngvGJ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so13783691fa.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718298309; x=1718903109; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5FbDBTh475IVXrIAo8lTadv4qb1jnkcH0RKtaD/LKVI=;
        b=aSlngvGJCasZ6DwHx8nP2maT0q/VdcuBAJ32/dZO3EGABttzm/nfIq2/yfLVViN34L
         5fZk8vIpnnsjbzAtnAdcrmkdKMBR6NWmF/JXfWmJugp70T3mU+pq+zITRRy0R9UlRsx4
         emgSiUY8kUe7bUeVe2ZOdvFI7MRRc85+mxmC3kJIVIsc21Y0rGsk5p0zn7JYbum+PleU
         FOCI4gh8Gs5nUgPiazRKOOh85Y+JllZY2Oq8MY6Q8sDZvR19X2svbk1M+c5FbJzjzNrO
         WAMnrMyA2ezFp1LX3LALnpv4c+CmarAMKrIwsrR2iEZsQpfJPEAWZsjvvC70xzMsYEMM
         T0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718298309; x=1718903109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5FbDBTh475IVXrIAo8lTadv4qb1jnkcH0RKtaD/LKVI=;
        b=efz1ZPskhtvccUo/ekiqldUV6Jluj7IUMisViuMzd0mc3mtfCBr8Z+FSmm3YhroOHR
         FJPX51aezWABlBJsvnHIplmQTHnt9z5BHKE/QgPo3HnqDlGoNNtR49y34ueAgkJPRUao
         rVvw313Q3ush3moZqQ3A4fYDB8seS7y9ttClAqctU4S4+E/bulinZAzVC9xf/Ez1VSIW
         Mm3OtuJqKO+KrCpUcRsPYFcBNyY8eKN3N6SbQMNQlmHorgKO8UJq+wsQH6aEFOMwZ/Xx
         RxgRm0zBibNIiCKTVzmtTXMxcErWN3FQvVV9fxXEMxZVsqzyWGCLs1cswpj9oDLQY8QD
         UBDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh2NZPTHY/wrVUA5j2T6S7SLkqjYbQitfVEKuAECPsc8i1jmJGt8p1Ld8V3F0L33pAAORDo1oKtygG6Khor5oo0FUrWK13Dc99RQ==
X-Gm-Message-State: AOJu0Yx2hFTCM80dVeWSVsjqyWW55BTmREvhTZYtHo8O7PO/RKEEUps5
	ZWSL85Nglxl+WIyZoZwAME90hDvW8/E9dQnXYYGo0C5s5zzzOFWKCqSbl29clT4=
X-Google-Smtp-Source: AGHT+IGuznTjlxqgv3P0bkflpBLh9xuQS717dGNXxqv0wmC+Kmsqddvyv7lJuM6V8HQaJ/ykaiaJzw==
X-Received: by 2002:a05:6512:41e:b0:52c:8abe:f54c with SMTP id 2adb3069b0e04-52ca6e6dc74mr285044e87.32.1718298309708;
        Thu, 13 Jun 2024 10:05:09 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825733sm287312e87.60.2024.06.13.10.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 10:05:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 20:05:07 +0300
Subject: [PATCH v2 4/8] drm/msm/dpu: pull the is_cmd_mode out of
 _dpu_encoder_update_vsync_source()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-dpu-handle-te-signal-v2-4-67a0116b5366@linaro.org>
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
In-Reply-To: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1480;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=HIriNWIocgMjwNxbdTrc6hdy7i8ETZY5Lp1WWcPraew=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaybB5Z7y89l6cLJU2BChnXolSpVGWDwUrZSkL
 OaZ1V9hqdeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmsmwQAKCRCLPIo+Aiko
 1ULwB/9Pts9j6Uygy7d2/fSSfPP0RqwjRv5Iv9unMTzra3+hxJ9O0Kr//2C5aMkvHRJAxhDtDPI
 xoExO5kpEw1MspSzz9beEkuiO3KjLAtQ2AGEdpASLZldN+fGEsAmeC5uAcN4kAjKD05Vtt5pC40
 KVEePDKceoilkivmi80GIUlqXY16PujTuS8xsFoSUPcCfSf43OQUwgcERq22JIJz5p1FwWsI1ch
 qyd7Iroz8L5T3ynIrCuTQ1GUwcLewRilsc9Ugby00p5QxnKsV8qa118qeVaWAbYjZj2oJjDj1lS
 GVi6+urbLyxS1sMgZdTudWDyCZ42ew965Rzbhey1d2CP3tIE
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Setting vsync source makes sense only for DSI CMD panels. Pull the
is_cmd_mode condition out of the function into the calling code, so that
it becomes more explicit.

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index 4988a1029431..bd37a56b4d03 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -736,8 +736,7 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
 		return;
 	}
 
-	if (hw_mdptop->ops.setup_vsync_source &&
-			disp_info->is_cmd_mode) {
+	if (hw_mdptop->ops.setup_vsync_source) {
 		for (i = 0; i < dpu_enc->num_phys_encs; i++)
 			vsync_cfg.ppnumber[i] = dpu_enc->hw_pp[i]->idx;
 
@@ -1226,7 +1225,8 @@ static void _dpu_encoder_virt_enable_helper(struct drm_encoder *drm_enc)
 		dpu_enc->cur_master->hw_mdptop->ops.intf_audio_select(
 			dpu_enc->cur_master->hw_mdptop);
 
-	_dpu_encoder_update_vsync_source(dpu_enc, &dpu_enc->disp_info);
+	if (dpu_enc->disp_info.is_cmd_mode)
+		_dpu_encoder_update_vsync_source(dpu_enc, &dpu_enc->disp_info);
 
 	if (dpu_enc->disp_info.intf_type == INTF_DSI &&
 			!WARN_ON(dpu_enc->num_phys_encs == 0)) {

-- 
2.39.2


