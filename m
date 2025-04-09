Return-Path: <devicetree+bounces-164828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 960F7A8282B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 16:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 872D17B61E7
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403C6266B5B;
	Wed,  9 Apr 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m/6ZRtN8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20B0191F94
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744209507; cv=none; b=KYxjqSgxQOiKerzRntay1Caq7IF69WympYjDRcB31DYeZvj61Y7KH3V4IUBlwhuw89ZRNFKUxABAGmZaQo73Pgh6XANpspJr3PkTKRlmym/pXyr0G8Iq74Bzn7bMR/+cYOOhIK+yH06WdVZXVuWgR1Dqt+reuEfoz0U88n8RRNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744209507; c=relaxed/simple;
	bh=R7g1/e/EDdSSI1ffY8mB9az1iCIWihCE6IwOCMK06tY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JeYZApuNABnOMrdAyJgb8oj3QR88UX1OKpk0SEmxeZfuMEcT5aWz7sXHYPd1bV2b3cV1Ozudr1eroJwRNiOKldKovVaqeBcIlxaNhrwsQuedX6Y3+BViKZD8plnID1OS1GoV9VUi5Q/XChMdzkXbNlXn3XY1Nqy2QQ7osnA3wvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m/6ZRtN8; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso46373965e9.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 07:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744209503; x=1744814303; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qBcdAIVUt4S2ayW/fX394UTJTC28cB0WagW6rirsHxE=;
        b=m/6ZRtN8EKNFwkz23nOsQEck/8k/FXHSayCIem1IX48yXclUdlNwNG4aeZqvdKga4o
         gtJ7I4K/obCmKNWzQcqCtghrdPhSlgpDUdSRvMKC0abCmRvnCkb7IcI6bj/QSwJvg9wx
         8zmOnWUMxLPoUoVt5/qtjcMcGM60v+AROBmMsdDkwm1lN5h6/e5TfSGKB8pNvPCg5nWm
         lDrmd7GnsWnU2Hjs4XIQiZBHu0C046wLnG0MTNG6Me+yWlxqJoV/HCZQSrsYuK/gevs6
         BUCYRUwP8FfIo5abAijwGGWLYbu46TX7rbeUYDXaQ/MuC39XeQylS204lBBDFByfLzSj
         7LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744209503; x=1744814303;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qBcdAIVUt4S2ayW/fX394UTJTC28cB0WagW6rirsHxE=;
        b=vmQ4Anf8zaebPTncSIJ56ZrIMBxjsW56MLeVybvK2gWNqMpUmmD7s/NdUDz3MjU2wv
         wuQX9z3bfiotrnmvuIkX1/1VcOUstn4QCM8f77pr5/wc4echMeajvzp2QHnjiBVCOlQy
         +21N2L3nrCzuDIgdrQdWenDSd4+/N0C8zo/aKLyGATxULdMO/sgj/ndWvM8NFsF+dw+a
         f5QelxImy7a8y0jhW4GH9oDYtxBoIQLf1hpYPNFGbj60IyP5o2CioGXzUxsNmpL8mBYc
         AY2Jb+C94CmZgDziIQLDbVNVxm65GVS25CfTvCreTCY/Yb+u6lLlHfEEUUK7PlMzZyCg
         JMRw==
X-Forwarded-Encrypted: i=1; AJvYcCWVK3dE75zR6RmVrdotQZvJZl7rvPkyjLVjoZqxHt9v3td3zJzYvtKHqVfRqHATlOCzSt+P9FY3iO+X@vger.kernel.org
X-Gm-Message-State: AOJu0YxbGXR04XA8Ae9Y1ZwAwwoY7mF3JaE8oCzt237ys8kTuQDinWiI
	0ciJojYV0GF/o47oWQ4EB8N5DW3lN/Sg7NtUqj36RADm7gRQccQHMmPks2EOSe8=
X-Gm-Gg: ASbGncsI4SghsGzpagIqQG4ODnt/sXJJ8U0orLrV4M3G1SILngzyil/EJIJT0KB89so
	ZpcZ4iCKOf+0BJ/VB1T9L8spj1M5f83HEorUcCt4s18fAKZ5FE4DA7Id8Doa5YfJKvzSwDi9P1E
	RcbfZCUBMZK4UljhCWVa23SKGCd2QKzLx1CCDeuDdE8fat6eOq5vnHe+XNfXzTgZ2lGZ/eNWktB
	xCU7BzqX7gs3lvierd3cDyD9dm4PbB8E0Tf8wChbUQp25fnaJRFMhj/tZF+XHQI+XSWN1nidjvQ
	1jg39DICNmlLSZGX0jpdp8RqVASSnkjvOOBBpjv9WE3dyi6Xn3nfbYrJkTfetbMMPRZIsf65
X-Google-Smtp-Source: AGHT+IF71jca4aQd+v8MehhJzFk/tzY22UwgRqyyh7EIUcqlXRvjn+R4unP3go4vw4IehYoaWeQLVA==
X-Received: by 2002:a05:600c:4688:b0:43c:fa24:8721 with SMTP id 5b1f17b1804b1-43f1ecd6d2fmr32662835e9.17.1744209503238;
        Wed, 09 Apr 2025 07:38:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f20625ea4sm22222045e9.12.2025.04.09.07.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 07:38:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/6] media: qcom: iris: add support for SM8650
Date: Wed, 09 Apr 2025 16:38:18 +0200
Message-Id: <20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFqG9mcC/4XNQQqDMBCF4auUrJsySUw0XfUepYuoUQdaI4kEi
 3j3RjdSinT5P5hvZhKsRxvI9TQTbyMGdH2K7HwiVWf61lKsUxMOXALnko5uwIqGVzFJoOgx0Mi
 AGs50WZiizPKcpNvB2wanzb0/UncYRuff25vI1vWfGBkFynhhG5C1Vkrentgb7y7Ot2QlI98ZA
 YcMT0xZK2lEU4HW9ocRO5NBfsSIxCghlW5UDZkxX8yyLB9Dn7eiSQEAAA==
X-Change-ID: 20250225-topic-sm8x50-iris-v10-a219b8a8b477
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2747;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=R7g1/e/EDdSSI1ffY8mB9az1iCIWihCE6IwOCMK06tY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn9oZbFdj+nJ/3Od5BDhRBFtBJqcjjEko5xRZ5x0gN
 +nQfdNSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/aGWwAKCRB33NvayMhJ0UwYD/
 4jdGXP0Gm3eZEqy5R3baT3zHIewKJNA+mBqObxUwH3+pSnpLdyTMDdYnaBmC3DJO+xqCZuegIGYRk6
 vDbFQLuVlgcuOeBkMprY/gRy/M+3Qi8VVMN8EfAvKC5N/sC0GnjgTtxzXWsC0NykwL1xX31Uc25QoK
 H2FXHCvkqzVwg2TfeNebXI+lCwEsTNGIr4DW9togKgznQHf+nVxygkXa3FP4j9trqSe2FJdpXK5lsM
 NY8mWjmoix75u+3+wkyAYvivpAWnU5fKGf8f8fj3Hx69IvQDvWVSK06NSuVlzs4gRwUERZ0Xt8G3i9
 pv+qB+RIa9vwvvQ/StTtfbUEsnkg+8CpqTFFe1NoBLV+FELl5DZMy1toR4gLt2+KmP6gx9vWuYC3Wi
 9MtYz2DckVpTmXXa17w0pwNGXeTq6zO40apGkibw5XtOh/yRDEnztXobNx/A7NlW9GAjptaddtYyBN
 k/P8oKu4CTZd8UtFc/+0RXDuru8L5hoC4zXjncdCVm+3GnMwmWvjlZRZfMNd56GL4JSqQDDlamEmsl
 iIDb0Qs6DWqK5Q38YSiMOvnAsd2iGTvfv+1HzRrEObED+5vIRFdpgz8QxbIxdhBWp6lWlTq+FJVhjc
 /8CxROWr9mSnkWAposl4VoRd/Um2ybhe8B2NmOqrUr3k6/pfJdf0/T/oa+vg==
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
Changes in v4:
- collected tags
- un-split power_off in vpu3x
- removed useless function defines
- added back vpu3x disappeared rename commit
- Link to v3: https://lore.kernel.org/r/20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org

Changes in v3:
- Collected review tags
- Removed bulky reset_controller ops
- Removed iris_vpu_power_off_controller split
- Link to v2: https://lore.kernel.org/r/20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org

Changes in v2:
- Collected bindings review
- Reworked rest handling by adding a secondary optional table to be used by controller poweroff
- Reworked power_off_controller to be reused and extended by vpu33 support
- Removed useless and unneeded vpu33 init
- Moved vpu33 into vpu3x files to reuse code from vpu3
- Moved sm8650 data table into sm8550
- Link to v1: https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org

---
Neil Armstrong (6):
      dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
      media: platform: qcom/iris: add power_off_controller to vpu_ops
      media: platform: qcom/iris: introduce optional controller_rst_tbl
      media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
      media: platform: qcom/iris: add support for vpu33
      media: platform: qcom/iris: add sm8650 support

 .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
 drivers/media/platform/qcom/iris/Makefile          |   2 +-
 drivers/media/platform/qcom/iris/iris_core.h       |   1 +
 .../platform/qcom/iris/iris_platform_common.h      |   3 +
 .../platform/qcom/iris/iris_platform_sm8550.c      |  64 +++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
 drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
 drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 ---------
 drivers/media/platform/qcom/iris/iris_vpu3x.c      | 275 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_vpu_common.c |   4 +-
 drivers/media/platform/qcom/iris/iris_vpu_common.h |   3 +
 11 files changed, 409 insertions(+), 142 deletions(-)
---
base-commit: 0d6ed9e013fcc33da9676ed870454d2a014a5aee
change-id: 20250225-topic-sm8x50-iris-v10-a219b8a8b477

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


