Return-Path: <devicetree+bounces-120996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5229C4D2C
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 04:19:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EEB528336A
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 03:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAED207A14;
	Tue, 12 Nov 2024 03:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tj8CsTYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29525206042
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 03:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731381546; cv=none; b=e8KhnBU6IJn9ja1XTpYCTrGUYFSs0aFFiZcg1yE4YUj26FGos/Wa6tBX+6x1ZQLBmn6P6k9uIVoMmqcspWoSH9id1h2mUHoYaBw4Bv6MMm+g2Y98SiiFmJvHq8iVodvGwy5x+aYiEVE8z1B45aY6xPWBYtfsY95Y+Cx2JQ6aKFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731381546; c=relaxed/simple;
	bh=yQRCixh2ZkF3/J3DRO9bftX9zO4bUPMZm6ldnWS/5LY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gHsNI4rLf9vcg1s70s7hJ2UXINzGWuV01XhPwsc/SXzYemP/TZZ2Anve8LM+cb6Dfdet/NvmLLZYegFXkj7l99HxstMiEaCMb3FZ1TfiuoFHvyii3W+tSrzmM8R/v8zwdd0AV5PbzbCfn7BhC8AmHB3me9HzXNRWKPtH0U93+ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tj8CsTYa; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso875937266b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 19:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731381542; x=1731986342; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oIZCtXt4TQ04xJLqf1FpdE0pILm6/tx+QziF3KaXRzU=;
        b=tj8CsTYa0dsNkighXASM7XYZNd3f8oobQd0uzz2sHxMYW/VNSYDUL+PICObLS1F6LC
         YRVjcfV1obl0NDNF7OaXHOPK0cNBesH8/6Z6P0y5m8ZjKJDq/YkTJqk4wTOLk2MYIt03
         9mVHIriIvfqk8HZ2pFJ54tI6wOcgo4IrJgp5S+Hza/m6wQwT8MgNBuQN89LZIo+/7KKl
         hiq96m4Yz+jTG8A7JEixOMirUal7vX1C8LuHfrVdW0FR3lv3MHRTjC1dJctCzDygqJVq
         C6oa/HcD98Q9wduYRWeMsMvJrgNQrtp0IkE+PBlkEILJoHwLBRuK8KLDPqdkEvu4g7GL
         N3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731381542; x=1731986342;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oIZCtXt4TQ04xJLqf1FpdE0pILm6/tx+QziF3KaXRzU=;
        b=ZNU0BpQUcCtXiB+aayoRA3cC0hXOlqNUWwWU3VIOwTtUOWsZ0rfAY2MnczeMmMGZYO
         x5d8/FD/oITPyC//dks3JRTa8K04xzcsdqrCofVOPG1XNXjPNVsk8jJPEot1TOEwE2au
         4ZQEmcYTZ2zH0dzjE+fEHQrmkchCaZf08VIk+ocdZMO3XcaUxExJ+MgGVqFnCiizNNyr
         ekz/hQu6ruGAuT+MnrAb35ADZYPYYmugYyA7szO/5+BNkbsc9hU7u1ZbPm3bDyk5H2fY
         kDXJl72Gls6SashSMA1kLNzBdWJgimD86auFY6dFTz/nP38wlWH1kvBzNuci4IFIzcar
         fAZA==
X-Forwarded-Encrypted: i=1; AJvYcCUcRF2c2NIkQlERPf/Ivj0V2ZuHWIC5AIwNMKOjgv29OdifbsdvVNy17mRG2GqTLTlB62jaVAu9khyJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2NYsYkKOBnpOGuD/NYR7O2KOb9ApeaMjGlzfy0mpoH5boUvqw
	uxt/D7uQM71oo6VVqDcnGOZIonkprRctPCW3vzFS9nQK6n4ewG6saJ/PzIO6new=
X-Google-Smtp-Source: AGHT+IEepq4U46vHQx+388cSqSZ7dYjmvbGbqe2P+IAhGO5esI0/fqqyiUwogKBqBM8siJyJaJSuXg==
X-Received: by 2002:a17:907:9603:b0:a9e:b5d0:de6 with SMTP id a640c23a62f3a-a9ef0016d4emr1401236266b.50.1731381542331;
        Mon, 11 Nov 2024 19:19:02 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc50ddsm672156866b.103.2024.11.11.19.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 19:19:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 12 Nov 2024 05:18:55 +0200
Subject: [PATCH] dt-bindings: display/msm: qcom,sa8775p-mdss: fix the
 example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-fd-dp-fux-warning-v1-1-705b527f5a63@linaro.org>
X-B4-Tracking: v=1; b=H4sIAB7JMmcC/x3MQQqAIBBA0avErBtIi7SuEi1Ex5qNiVIJ0d2Tl
 m/x/wOZElOGuXkg0cWZj1Ah2gbsbsJGyK4aZCcHIYRE79BF9GfB26TAYUOr1TjYqfdKK6hdTOS
 5/M9lfd8PUvtvj2MAAAA=
X-Change-ID: 20241112-fd-dp-fux-warning-c8764c93f787
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Mahadevan <quic_mahap@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1669;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yQRCixh2ZkF3/J3DRO9bftX9zO4bUPMZm6ldnWS/5LY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7rRSeWfMV+iGi9bLjNSC2e4onl1X41i5xv1KrWD5p1Ji
 qcE3mR3MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAiKz+y/y+4/vVyRY/8VvWN
 bx9djg+d82vZS9W/R4/aFlZpPlyQVSKi/C4xL5Nn5QXl5qo1TGyXVvxurOmxsmF4eiLqcArXO5Y
 oVu13TkV50bWqfJE3/ov7X3sofZd/39b/J6qLmtecmLP8WYNlLcPBnF479/DpjSGsc6M45+Vmes
 n77916/onZ0knhB+Zf3H+Cwd+8V5LNJm+en7x9p+qxmdUap/l/C2i4pwYEG3Z4nNVitJznuP/nz
 kavU//b6v42sFjYLLqa6ryXIe5dz/p/iznlV24NN1PS+zjvRLi9gX5VAyvr+T6O+eyTBeuKmrb/
 Z/pRbjy/+9mS1CfTJC/rSIRsPekfmBwU4SGq73RQ7qU/AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add p1 region to the list of DP registers in the SA8775p example. This
fixes the following warning:

Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.example.dtb: displayport-controller@af54000: reg: [[183844864, 260], [183845376, 192], [183848960, 1904], [183853056, 156]] is too short

Fixes: 409685915f00 ("dt-bindings: display/msm: Document MDSS on SA8775P")
Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/dri-devel/CAL_JsqJ0zoyaZAgZtyJ8xMsPY+YzrbF-YG1vPN6tFoFXQaW09w@mail.gmail.com/c
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index 58f8a01f29c7aaa9dc943c232363075686c06a7c..4536bb2f971f3b7173b8807f90c9af3e460bb01c 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -168,7 +168,8 @@ examples:
             reg = <0xaf54000 0x104>,
                   <0xaf54200 0x0c0>,
                   <0xaf55000 0x770>,
-                  <0xaf56000 0x09c>;
+                  <0xaf56000 0x09c>,
+                  <0xaf57000 0x09c>;
 
             interrupt-parent = <&mdss0>;
             interrupts = <12>;

---
base-commit: ff2ce06d5e28be5ee399a2ff894d6a551c70a318
change-id: 20241112-fd-dp-fux-warning-c8764c93f787

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


