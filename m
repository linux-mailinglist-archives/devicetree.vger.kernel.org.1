Return-Path: <devicetree+bounces-220793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70884B9A7CE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 795614A6135
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AE130BF74;
	Wed, 24 Sep 2025 15:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRylzg0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0E430C363
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726524; cv=none; b=fvDWt6+XnHo6LRgZMJ5Lm5IYhfN9+87m3aDFvhUoK23qy1MvtBb67GqCTwTC2wC62F58H1YuWhTquQA6xxMng3rInibSZitKRuCcYq9xdpTC1yCFMm6njeh9VD5+AaPUzugzvwWThubBfwhUq7lgrTXdua0gWBURAlEUj7ajkLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726524; c=relaxed/simple;
	bh=aqMS0Jn1TNh3mlyytrjaZuPheLrmPmhjXnM4Dd4ZxXA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TQNv3e0W/gkQGfOVjA7i9GoeHP1fl/HbalX8EN21mByPZXB/uEEBlD49j3d9kXlriApBGSDUbb78W0WfVjpG3UloeLIRcmTuL5Sj1tMBlB32oqVnrzZMyNXIrqUCEcKh+HfbxnQ0cTWB4f/l3EMbZ5EzPJLkO5MQtcI8m5pUFko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRylzg0F; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-27c369f898fso27993835ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726522; x=1759331322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9im2oqF4utRrC8rBpdrGYdBctIiIANDtE89j7rUJb8=;
        b=mRylzg0FMzv7mbqyzPNnbYEZMnvhxr9z9vsX5+bKWwcOkzS1dc3x1HkknHWM0dGymB
         OYtIKUff9ZSvxxqdv02ZOss/KbYN5fEhBcFpL6fZzAwCotA6QzLQ9sIBsqiGohnhVVpA
         WaQnOI4i87QSVyaONmNKvZr+yYJevjhb0IIvs3DsJ4R+BIy+kP79mlpbQ8wQ/Si+r/EQ
         r3n1b+qS7SuwBtPr+KcTGo4IpkcuwsAgZ6QoX80CKKSosscFRRw+Wx8UYCZNdrrEL2rE
         tEroIlEg4CnnFhwcawG7B2UE4jVjzYJ6jbx7iPv5g5SFQg6ueYEKoR3AS+FJ2xt6mu1h
         tOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726522; x=1759331322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q9im2oqF4utRrC8rBpdrGYdBctIiIANDtE89j7rUJb8=;
        b=prkTKEsYI+7Gk+Ek4twKcGDMNZb68qvzqN3wzKH2d7s8UKCS9ukdlNxpJeltDFAICp
         FKTV1LEbkjmfIP7+Nl4vt7VWtan01WU4sOD3EVapp2lL/V3k6RK0RDYn4xxqTNRrFTGd
         9eTlMnElz8Hj0YJz8FAhVGYfFKbBfdNDOdzBdH3dWYP9Qn6A3iz243FPdYL6GH/hEivI
         pGDI4MBWlZcE96Qp0PgTSfVT0cbyOMUDmPITTG8Ml7vd5FxCQ3OSp52+jO9dBc4NqyFl
         Cof7VXPPOO2E16XtnLLIolQpj9t/ikVXo3+0fVKwoOZKPMzkREkfjDZRmvUO1lTNzTF8
         2Yjw==
X-Forwarded-Encrypted: i=1; AJvYcCWZ/tc+Lf9CFL4hBUdKXKWAcEuvFrDhplumnZq0M2Rg4ibZdawNub+QYPI1Gfe+rFLcduBjlVr37X/e@vger.kernel.org
X-Gm-Message-State: AOJu0YzzryFYejcFR9x6AiEA9yVRNVtWX0smH4UoYvu81cRchRexY61h
	g84Y5tGkS7GzF9bnY/sLtY0A9X/0m90b/P2lfEOXFuHqoK5yf3rmvet+k7tQ4SuoLjs=
X-Gm-Gg: ASbGncvjLguvjJuyhBCb71OUoEu6jLOe0e/eb6dMQOi/j/2s9qVQHID+8TzNjd+yS2s
	Qq18nAes+oc5rDPTKoAXSl4l7Cfoah4EQJ/OK/dPdX0W6VUUt8s9PEXb/BhP1R5ZfBw7G/FS7vC
	WUxWxvQ4Pvmxm0FaRNef1QfDECpeXTNJ7GnPu3ShuuvQR/i5n9ejwbqPD/a8+ewfEOTeXCsAeJe
	3JA+pNbiyfrshxvLg0BTmqo//wJHGwoGa8c0AEGnaL9hhAFyf26yXhvsyAS1Ma6VtdZM1t/f4Iw
	sBXFjzUR4eB/MoXGuzWmep2OrKUnZp+iVy+wB1LrQ1n94EE3nrBb5yKz1KcRQWjpTZ8kHbsFBM/
	y7amVP7djQpwEegxf
X-Google-Smtp-Source: AGHT+IGCHLd3pnmTwxyL4D3bJHLTKcwCMZ56M/ra999jlI6cfFbIZbbFFt5flDomb9K12MnR6LGiYQ==
X-Received: by 2002:a17:902:e88d:b0:267:b0e4:314e with SMTP id d9443c01a7336-27ed49df055mr820305ad.23.1758726522301;
        Wed, 24 Sep 2025 08:08:42 -0700 (PDT)
Received: from [127.0.1.1] ([112.64.61.5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26b59d6538bsm158717445ad.82.2025.09.24.08.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:08:41 -0700 (PDT)
From: Jun Nie <jun.nie@linaro.org>
Date: Wed, 24 Sep 2025 23:08:11 +0800
Subject: [PATCH v3 2/3] drm/mipi-dsi: Add flag to support dual-panel
 configurations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-dsi-dual-panel-upstream-v3-2-6927284f1098@linaro.org>
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
In-Reply-To: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jun Nie <jun.nie@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726499; l=1401;
 i=jun.nie@linaro.org; s=20240403; h=from:subject:message-id;
 bh=aqMS0Jn1TNh3mlyytrjaZuPheLrmPmhjXnM4Dd4ZxXA=;
 b=6HLYqVGBQbEyuiZQevtXQREU6fOO4xIxqwSNXpTmZaJF78+kLnDym2AXLAFumXiRTuz5lKPBq
 Bn0Cs8FpfNoAOUh5922IfWiIiiZraGlaBvn+PXp5YEZTERAfDDDR7Ws
X-Developer-Key: i=jun.nie@linaro.org; a=ed25519;
 pk=MNiBt/faLPvo+iJoP1hodyY2x6ozVXL8QMptmsKg3cc=

Some devices treat two independent physical DSI panels as a single
logical panel from the CRTC's perspective. However, two separate DSI
hosts are still required to drive the panels individually.

Introduce a `dual_panel` flag to the `mipi_dsi_device` struct. This
allows a panel driver to inform the DSI host that it is part of a
dual-panel setup, enabling the host to coordinate both physical
displays as one.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 include/drm/drm_mipi_dsi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index 5a85ba01f402a3866b70828391bb417bb8dd5956..0faff285d9ffeb19e4523cdc7bf21c1ec20e6eff 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -170,6 +170,7 @@ struct mipi_dsi_device_info {
  * @host: DSI host for this peripheral
  * @dev: driver model device node for this peripheral
  * @attached: the DSI device has been successfully attached
+ * @dual_panel: the DSI device is one instance of dual panel
  * @name: DSI peripheral chip type
  * @channel: virtual channel assigned to the peripheral
  * @format: pixel format for video mode
@@ -188,6 +189,7 @@ struct mipi_dsi_device {
 	struct mipi_dsi_host *host;
 	struct device dev;
 	bool attached;
+	bool dual_panel;
 
 	char name[DSI_DEV_NAME_SIZE];
 	unsigned int channel;

-- 
2.34.1


