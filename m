Return-Path: <devicetree+bounces-36274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43AC840692
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D2C8289391
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A97D6312C;
	Mon, 29 Jan 2024 13:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="efKHsVA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA71162804
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706534352; cv=none; b=JrIo0U78N7NQwMqeIzElTjWYUSZZxq9ltTJv8j5Uhtix8vtMlagfB4yy6S/kTIgKlWIexY7x7AtnbwOTzr61tpJsqOEZNlyTctV50HbjBchJQW4zj2/v9PI+1s/F6KPS95XIvYoYJcM7zoNB8r25/CrF+w7dHNlVOM3Ph6fjaQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706534352; c=relaxed/simple;
	bh=WXwCrF1iMEcXk395vZUIozuTjV7W1KezDJ0wK+pB1dM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qs+Pa1JrhBuw+qd96H+NYqjIkJxDzbOE/OX+0sGC4cIlYtf3kOiFWLaJ3uDcnuc5vSXT+OEzsUsj0Niw3HRp35+3vLm84lHHNcukRuuVG5uNEHxNwFpcqXSwcY4U43aZWwWkgTglI1MecejGJGDDpLMWyGU7K0A2XtxL0DYS8gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=efKHsVA0; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a354fc17f24so185054766b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 05:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706534348; x=1707139148; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I5eVpbB25HXQxgWJrqti9OANlwnBf9Ih23lyrFGGtAA=;
        b=efKHsVA0KSa/VpwFcjm5zRJ5GLZmFXZicAgjLElAZ2UO/s4J3+1iycBq039fumld/w
         uXGhVc1IzXspjtVRiYstkOTvTLYl2ugegHto1nSYJlt5JvkUp+mGOQPCFIsKV04v+Pe7
         2C/h12Do7fAQQjG0QjfTiWJHgRnBuVQtCtej/SFqT/gL75fVEVV1RmLvi+KgG3AAX0a8
         5C+2Trwhj/N4MJT3ZNw4KwLph0BDCr9E7hv2Sef/cM8wDxkqZLZaErBCVRJmEBlHGDfm
         epa2N+U0LPYmuL+YhlaBVslUYiIpTWP9VnQ9/TNx6v6d/c+dookwYGieTu/SNclJOg12
         hwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706534348; x=1707139148;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5eVpbB25HXQxgWJrqti9OANlwnBf9Ih23lyrFGGtAA=;
        b=KVZrf4cXQTlWk9o73SQIhfzZeAKJ79bbQEYkgjgpr+EhWHbszcKyy8TjdVWY6RM/Ll
         jor07L9n2g9gx4RsRMITwbS6hwSSAmQVT+hWWXnrSFCdNh1ikIgGN8gZ92ITDLQvMpOa
         e+X4RTGGE7EVXQ0Ysvf2rhkFmBTEVtYka2c2YfPNh0H3O3df5YKVrOGgZTHHPU81N67f
         q+QKQQhDDSU7kua06s4N4BSB5PO/fIKQg5ce4IWbuEDzMj28XjXAX+pKw8UZmxhBlBxu
         UcBOrUwUX58D1cDN57Yrf+bupOdT1LfM2R5ERucQOOfAujFxxgx0PUDmc0kOe+qAY12z
         wTkw==
X-Gm-Message-State: AOJu0YwwjqrO+cLokvSmzdzL3vKB0MuBUD08kMjg/ELoClMbix0SaN7Z
	0zRlRt7lNXQ1+qjAr2OmO7zy2wD7mjkRc6qvA+ctD6iEWxdQEMrhwLuS3T3dsAQ=
X-Google-Smtp-Source: AGHT+IHqRqczW+spX0XIhFaQfcphzdcZCldgLjhlKdkZECtdAxveG++qjRbAtDQfSWy/ooYRG6xNIA==
X-Received: by 2002:a17:906:bc49:b0:a35:69c3:8af5 with SMTP id s9-20020a170906bc4900b00a3569c38af5mr3225051ejv.36.1706534347903;
        Mon, 29 Jan 2024 05:19:07 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id q15-20020a17090622cf00b00a359afad88dsm1591658eja.10.2024.01.29.05.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 05:19:07 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/5] drm/msm: Add display support for X1E80100
Date: Mon, 29 Jan 2024 15:18:53 +0200
Message-Id: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL2lt2UC/x2N0QqDMAwAf0XyvEBSi4z9ythDqlEDpZOGDUX89
 5U93sFxJ7hWU4dHd0LVr7m9SwO+dTCuUhZFmxpDoNBzIMad9U5MhJP5luVAiUMfYiRKMkPLkrh
 iqlLGtYXlk3OTW9XZ9v/n+bquHx8AJ2B3AAAA
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1409; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=WXwCrF1iMEcXk395vZUIozuTjV7W1KezDJ0wK+pB1dM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt6XAyyrUHNMZ7tZaQaVkKEhqXAPQYD297pt77
 cVz/Nvo4dCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbelwAAKCRAbX0TJAJUV
 Vv61D/9bBdHXS2wO6uKyfd7rbe1VW/qu+1zH6S6JWIsPFoU1rpxKaN3xBeA24PvB/qvt4AD1PYz
 xZNQMdJA1PAC8MDqz4/NanHfBFVySXwo/7+Xu31ocVupozgKfbIevnAJxbMh7YvSaVgiru0UcrC
 p6VigFeydgfKVqWm192f9K2K+GaRC92TfFx7FeHU/ptzu1UbaxxRf6hmn+C/E6nw0SfS20GMkKq
 +QA65vuln5dQ5roWvWsFlj3XCrr9clS8U6nqTlVpC1d1pt81tOERCP1ithcJGeGHqxHHbJFURh9
 7cNwkRfZzVxGPXKREvwbvZxVYxZ/doljclG5U+YWAHR7xWGdygTn0pg3pER3yS6jaD/kqQ2Voc2
 5FPVl3W0u3sBbjP/KGLbQQE+bIYesaqBdnEKcH2p+zMTq7yHgpOA1rOCKZelbIGLCXlAR6pmSgC
 KUO/wHRQDPwh9GIzmVkJnnspHDXEj5sHO1o+tG/PqVP9dvCAQonRXUzKtjtJGRiQpjdbp4JtsnT
 MeiNuutD5Cho2eapVCv1ukETcJA/SfQ3F/MrZn7NMz/RoHjisv0T8mL0Pb4aCdEmilm0Ejisd83
 fMnNXZdfIYU81HG1QH/BkPSAUQjKsLC8yAxa2YNRppJgv7cPkrjW+ITRpI/HITT84XTIv7j03Bm
 F5w42EbmwAIFGmw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds support for display for X1E80100.
The support for embedded DisplayPort on this platform will not
be enabled using the connetor type from driver match data,
but through some 'is-edp' property via DT. This subsequent work
will be part of a separate patchset.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (4):
      dt-bindings: display/msm: document MDSS on X1E80100
      dt-bindings: display/msm: Document the DPU for X1E80100
      drm/msm: mdss: Add X1E80100 support
      drm/msm/dpu: Add X1E80100 support

Abhinav Kumar (1):
      drm/msm/dp: Try looking for link-frequencies into the port@0's endpoint first

 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   5 +-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 249 ++++++++++++
 .../drm/msm/disp/dpu1/catalog/dpu_9_2_x1e80100.h   | 449 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dp/dp_parser.c                 |   6 +-
 drivers/gpu/drm/msm/msm_mdss.c                     |  10 +
 8 files changed, 721 insertions(+), 2 deletions(-)
---
base-commit: 6776c8d0924953c6bbd4920d8408f4c1d898af71
change-id: 20231201-x1e80100-display-a46324400baf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


