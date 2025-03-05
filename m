Return-Path: <devicetree+bounces-154549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 420A2A50ADD
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75604188918E
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 19:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43A5D255229;
	Wed,  5 Mar 2025 19:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NjX6jsiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FAA251785
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 19:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201531; cv=none; b=SzrhrfchG+u75524jYk0yphK9EvGgsFS3FSCCHdBh49iNfMpzaZQWzkC8BWCUonWWB8kR89Wy6dPN+dLpc12UY3ZHp+ws2yNad5Gko+oJ7PslVw5jz8IJWp3Kz/NyUtJ2OKIFXGB0QJL5wQn8d95VsDt56y5ZsrLnNUMCYdtvro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201531; c=relaxed/simple;
	bh=YYkkIgxTX4GLstfNmstSzp+GmhvTVjBPJ/IVcq/Gt2I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IY9BHa/AmMHNAuDvxJjRIYcBDqZK/nZdDbW0m6lrcvHDAEOsFQela6hK2UNqMZEJxy6IZKuR4vRddqNKLDZYhYaqqgL1rg1ce1MwihN6qkcG6N15hTGecHbBiRrLTZoZndSXfuEEyM5qcR47u9Topf58CDv9ekVKYvAdOEo8vXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NjX6jsiL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3910e101d0fso2498832f8f.2
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 11:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741201527; x=1741806327; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zCeTGmrbEmfaxnM+HfYUd9pc64+DFd0KUaW1eYYXTqU=;
        b=NjX6jsiLcAAwKuLPpbj3aMJfuPYZx+URnw/40/q6WLIfMNFYn8kDeLWfTl5wLrBXk9
         0KsOP3+joktfP1hLGCsezTfiJBo/SqaZBk1TVaYngENWTX1MFg4+5MnptkfixpIDF9py
         DSVu8qbLA9XMZTZz/zyczlXaOSprZh32Rsz8dz4GyPYLsgzIhwnI7RvQrX3SzxyF9lNp
         VIayVk6o/bPC5YBlDgd9NropHIztNduYXXRtxGRAVFG6+728WNkr2Vf5t+0DcKQQ0mXA
         XVG7lznBCks9KM4G00CmfI9vTnQ8Ka2JQg5zfbYUaZyIcXY7oO4XBd/AYvwqSEPhQg2J
         x1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741201527; x=1741806327;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zCeTGmrbEmfaxnM+HfYUd9pc64+DFd0KUaW1eYYXTqU=;
        b=K0jpfApswdxP3cwZ/mrAScq4inEzWg+HbOZLHnML2zKRxnfH3enAsSr8jIZ5mqBiAu
         FSnXhegTPX3EYPy9MYzpB4OifNNaDas/vB85n/qw5NnGmh/u/7dYSE9QB2XuMctH+IDo
         SBB0O3ELNV8LQIuY+BZAp408ML+MG1Rb5jngDVW31Do5+6ambJ49Z0ffAZSDvdG1xvck
         j5fZhWS3bC2AJTGhYfT3HVXYWvviEYhOD+eFpOfdUkiPiYvZkztlw8++R6H8BbTlLm5M
         YeU8xL94H3n4HuDALNOdcLpipC0HHdBB2VVhZxiprdKwkWp76Mie4HIf+q7ObsZxHV/B
         1zmw==
X-Forwarded-Encrypted: i=1; AJvYcCUT6Tml/V3k67JKvfctQos3j8fLVmMnKbryE4VsSfqCtWNPO4WbZf4zXqJHdB2vr1Cs3qgi40f1d2Of@vger.kernel.org
X-Gm-Message-State: AOJu0YxKfvUNfh9KRavhP1FwnrRG1IAxaA4zssLqSFswWibdHxStoxsY
	3tnWc0pnAvHkfiIkVrAzBXiiuPpbpixPQozfKRFYN0AIf2MJtw7nZE9klpi+D/Y=
X-Gm-Gg: ASbGncs+fh1f7cNGvIcOVBwzFDbD9n8WLwrVzbotMAtW6wk5WCMcr5D6LcNhwVgDPtZ
	/9SV53RZ/ERh5vtBQaqX4trJP4uAFP14ggt98dtPZWr6PODyK8rauaUZBPnABbOafdniWs9uW9D
	S7movXnZ7Ji4avAXn18fzdS0E4SYzcb0JrYvMRI1JopU0IDWM8R4Z1ljHrN5IhCtCDt7lX/fbGD
	yql/dL97Y66KWnWNTNnbvmNBLPkvXUev0u8E9wUUzAp9PmWSQ7wLXuQ1/im3zwld2fQXYv7kKnF
	MQMaFmX3plOoL/8lqilxzq8290pBLRLa432pGdsXOC2ynAZRtqFfh93wuSjAOd4t7Q==
X-Google-Smtp-Source: AGHT+IFzaYt6uJmVt2V5dfAj+VuriUTAalW+RMPdMF2a+gpJZwtrkkCYA/Tu/gq37wE/CmmOMeo+qg==
X-Received: by 2002:a05:6000:1fa8:b0:390:fb37:1ca with SMTP id ffacd0b85a97d-3911f7d33b4mr3275177f8f.53.1741201527299;
        Wed, 05 Mar 2025 11:05:27 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-391241bd151sm2045218f8f.21.2025.03.05.11.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 11:05:26 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/7] media: qcom: iris: add support for SM8650
Date: Wed, 05 Mar 2025 20:05:18 +0100
Message-Id: <20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG6gyGcC/4WNQQqDMBBFryKz7pRkaDR21XsUF1GjDrRGJhIs4
 t2beoEu34P//g7RC/sI92IH8YkjhzkDXQroJjePHrnPDKTIKCKDa1i4w/i2m1HIwhGTVuhI161
 1tr1VFeTtIn7g7ew+m8wTxzXI57xJ+mf/FZNGhZqsH5Tp67I0jxfPTsI1yAjNcRxfRxd0IbsAA
 AA=
X-Change-ID: 20250225-topic-sm8x50-iris-v10-a219b8a8b477
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2363;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=YYkkIgxTX4GLstfNmstSzp+GmhvTVjBPJ/IVcq/Gt2I=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnyKByUOQ46x3JULN3aAGoTOKskSugv5QgvN+pLXlF
 iVTi+xmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8igcgAKCRB33NvayMhJ0YyaD/
 48jxnemSfZspspqdWNesmNitkcLTL0obauhi+CUoXRtcQNVHGqyUSYs0dLrB+W0BXrqPE66cHk+lpF
 DjLVj/2A1OkSHXWgOnPAU4T+7W4TseLRK6WB8t+7EmUxHkMHgqaybMANHl3dNx/3FtKsKb8vP5F2C9
 8ADzfHeYyhPTKMW072lt8bLtanRqB97d/M61a6kncRgE1QfaLEjhJ63CkRO3tap4AJyQJmlR5mLkXC
 bSbEmZz2B32LHUR6+lm1ZcT9YJYUhEhrGSW1ijd+dYEuMGVWVi/2ATs6gF9RsqwQOlsfDAOhrMqcR3
 DRWkqP46HOl1uo3kYB+fGyKK/kGe4cS3y4zDWgQ3jp9Q185MyLFHsL3pp7ehZwQjlRCrUAro2q+J6F
 srvKmMeft1zVwxdAYeiq/izm1KGbBUcxXPx22OlvGXgFduRgjGzLUItc0/kj60Xia7XYvP6rAQaH/p
 ADhKyVm6XFMfMnzaCuyYRl/IQ5pxZ3ZtqAtvVuZ85bGXZxnLU/d6jv4jZ3xtyBVbTMW5WgdrneDixp
 hFz+KQ4DJbYYRKQnmgmx2x1G2XzLYNKf38RVtaOGBJthv5jcFUVPe81n5SIS1x3WTL0L9pB7OTmOLs
 gXaRcXVmx+bHXoi8Z7xQjK42N1KfEZBpnZu7SX51Y9isczHlpxtdhIi2SRTQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add support for the IRIS accelerator for the SM8650
platform, which uses the iris33 hardware.

The vpu33 requires a different reset & poweroff sequence
in order to properly get out of runtime suspend.

Based on the downstream implementation at:
- https://git.codelinaro.org/clo/la/platform/vendor/opensource/video-driver/
  branch video-kernel.lnx.4.0.r4-rel

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Collected bindings review
- Reworked rest handling by adding a secondary optional table to be used by controller poweroff
- Reworked power_off_controller to be reused and extended by vpu33 support
- Removed useless and unneeded vpu33 init
- Moved vpu33 into vpu3x files to reuse code from vpu3
- Moved sm8650 data table into sm8550
- Link to v1: https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org

---
Neil Armstrong (7):
      dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
      media: platform: qcom/iris: split iris_vpu_power_off_controller in multiple steps
      media: platform: qcom/iris: add power_off_controller to vpu_ops
      media: platform: qcom/iris: introduce optional controller_rst_tbl
      media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
      media: platform: qcom/iris: add support for vpu33
      media: platform: qcom/iris: add sm8650 support

 .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
 drivers/media/platform/qcom/iris/Makefile          |   2 +-
 drivers/media/platform/qcom/iris/iris_core.h       |   1 +
 .../platform/qcom/iris/iris_platform_common.h      |   3 +
 .../platform/qcom/iris/iris_platform_sm8550.c      |  64 ++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
 drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
 drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 -----------
 drivers/media/platform/qcom/iris/iris_vpu3x.c      | 244 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_vpu_common.c |  58 +++--
 drivers/media/platform/qcom/iris/iris_vpu_common.h |   5 +
 11 files changed, 420 insertions(+), 156 deletions(-)
---
base-commit: 7774f84cfb99eb068539c27485602396a579da57
change-id: 20250225-topic-sm8x50-iris-v10-a219b8a8b477

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


