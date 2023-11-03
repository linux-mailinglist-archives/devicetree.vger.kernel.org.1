Return-Path: <devicetree+bounces-13775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B579D7E0664
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 17:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE75C1C21073
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1F01CA88;
	Fri,  3 Nov 2023 16:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KradHAIU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB831C6A8
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:25:16 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34EDE191
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:25:07 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-409299277bbso16202955e9.2
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 09:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699028705; x=1699633505; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cKP6IQc+TaLeXk9YRQCHSXv1g3/KaIhaK69CBx/ySdI=;
        b=KradHAIUi/4Tj8bPYgHODtMi5kbsxmWoS9BRIOTQ4bEgAsjxLjdOfglZZJ3wRhrMMa
         hYZchDSE7i6wqQQfEhvI5ScHYuso4/UIU/rwYq+Zn9/PpQUMmFnkYonVcJmggGAXcCHs
         U6nRkhujfV1XlrEi/jLEGiZaSeuEHgpQw4Q6LYvzJ3URYzO2chdecRYThsbqyUfg6O+D
         Oav9wL1xdKTjdcSBS4MLLcuDSbRUGq29xvJ8JoEgfa/AjEUGERXu7x89E91d6BmOvVhZ
         4S+aA+Yud43Ug/JkT2/QzaE/y2ujZckjm14DLkwsRst9NyOnGrXJ3VRYNv95JQDLOKhq
         se7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699028705; x=1699633505;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKP6IQc+TaLeXk9YRQCHSXv1g3/KaIhaK69CBx/ySdI=;
        b=eGlBsW6DiQdV6Cu+LEVbugSziVWkO8zzN1YDPFt+1pjltZnoHLiJNEN/r9OKP2Gi4E
         niZcFt7zTi8RNdvStRwxy3flJKdLPEhlkG+JbaivgcChNWGSkWeThDKT6NnoZaCkflGi
         H24IEbJpfvAI3P4vxCaWMDQykh59WMLH8yEmbzsnP7oFE7I3kfIayPo4xx0O7+o/dtSm
         rQp5DKusrqvKHiR1Vf+RwXfxv36GizoXyaMjT7x90N4SaFbqN7Qg+IMyfsZNXA+cyEM3
         XN5Nw5iNZs/yXPTXbszLrq/5dX3OoXBaGkIw8zysE5Mpo/ePJFtX5NTydUwxnxpF8db3
         IzbA==
X-Gm-Message-State: AOJu0Yx+q1gaWUElgZSKmjqXC/nDERDZFjBp97E8mK0CKJviDj+PH3jW
	6fHcZ9FXLBejZq88JacUa7yf9RfMgKM9li10TOTdEg==
X-Google-Smtp-Source: AGHT+IF66A6v5KxZN37QG9HZoMChuewXwE8Gs3r4G3ydzoegkfy2MJnAj5hC7kI7XfapQnX8KqCbvw==
X-Received: by 2002:a05:6000:1209:b0:32d:9d3a:d8c0 with SMTP id e9-20020a056000120900b0032d9d3ad8c0mr15950748wrx.60.1699028705602;
        Fri, 03 Nov 2023 09:25:05 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d650d000000b003142e438e8csm2219972wru.26.2023.11.03.09.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 09:25:05 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 0/6] media: qcom: camss: Add sc8280xp support
Date: Fri, 03 Nov 2023 16:25:03 +0000
Message-Id: <20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN8eRWUC/22NQQrCMBBFr1Jm7UgmFmlceQ/poomTdkCbkpFSK
 b27seDO5Xvw319BOQsrXKoVMs+iksYC9lBBGLqxZ5R7YbDGnogMoa8xdE9V1NDYxiwTGibviL0
 lH6HspsxRlr15awsPoq+U3/vFTF/7q9k/tZnQoHPuHGsffBPr60PGLqdjyj2027Z9AI0tMEKzA
 AAA
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-26615

V2:
- Rebase to capture is_lite flag from named power-domain series
- Amends commit log of final patch to give more detail on rename - Konrad
- Opted not to change switch() statements with returns. - bod/Konrad

Requires CAMCC for sc8280xp which applies to qcom/clk-for-6.7:
https://lore.kernel.org/linux-arm-msm/20231026105345.3376-1-bryan.odonoghue@linaro.org/
b4 shazam 20231026105345.3376-1-bryan.odonoghue@linaro.org

Requires the named power-domain patches which apply to media-tree/*:
https://lore.kernel.org/linux-arm-msm/20231103-b4-camss-named-power-domains-v4-0-33a905359dbc@linaro.org/
b4 shazam e700133b-58f7-4a4d-8e5c-0d04441b789b@linaro.org

Link to v1:
https://lore.kernel.org/r/20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org

b4 base:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp-v2

V1:
sc8280xp is the SoC found in the Lenovo X13s. This series adds support to
bring up the CSIPHY, CSID, VFE/RDI interfaces.

A number of precursor patches make this series smaller overall than
previous series.

sc8280xp provides

- 4 x VFE, 4 RDI per VFE
- 4 x VFE Lite, 4 RDI per VFE
- 4 x CSID
- 4 x CSID Lite
- 4 x CSI PHY

I've taken the yaml from a dtsi series and included it here since 1) I sent
the yaml to the wrong person and 2) it already has RB from Krzysztof.

Requires CAMCC for sc8280xp which applies to qcom/clk-for-6.7:
https://lore.kernel.org/linux-arm-msm/20231026105345.3376-1-bryan.odonoghue@linaro.org/
b4 shazam 20231026105345.3376-1-bryan.odonoghue@linaro.org

Requires the named power-domain patches which apply to media-tree/* :
https://lore.kernel.org/linux-arm-msm/20231101-b4-camss-named-power-domains-v3-5-bbdf5f22462a@linaro.org/
b4 shazam 20231101-b4-camss-named-power-domains-v3-5-bbdf5f22462a@linaro.org

To use the camera on x13s with say Google Hangouts or Microsoft Teams you
will need to

1. Run Firefox
2. Update about:config to enable pipewire
3. Use this WIP version of libcamera
   https://gitlab.freedesktop.org/camera/libcamera-softisp

A working bootable tree can be found here:
Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/lenovo-x13s-linux-6.5.y

b4 base:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (6):
      media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding
      media: qcom: camss: Add CAMSS_SC8280XP enum
      media: qcom: camss: csiphy-3ph: Add Gen2 v1.1 two-phase MIPI CSI-2 DPHY init
      media: qcom: camss: Add sc8280xp resource details
      media: qcom: camss: Add sc8280xp support
      media: qcom: camss: vfe-17x: Rename camss-vfe-170 to camss-vfe-17x

 .../bindings/media/qcom,sc8280xp-camss.yaml        | 581 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +-
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 108 +++-
 drivers/media/platform/qcom/camss/camss-csiphy.c   |   1 +
 .../camss/{camss-vfe-170.c => camss-vfe-17x.c}     |   0
 drivers/media/platform/qcom/camss/camss-vfe.c      |  25 +-
 drivers/media/platform/qcom/camss/camss-video.c    |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 383 ++++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 9 files changed, 1093 insertions(+), 9 deletions(-)
---
base-commit: 89e965e1a58f58cd359472b14c0cc25587bcf264
change-id: 20231101-b4-camss-sc8280xp-0e1b91eb21bf

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


