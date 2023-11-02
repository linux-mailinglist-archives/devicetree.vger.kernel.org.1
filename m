Return-Path: <devicetree+bounces-13581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE37DF151
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65906B20C28
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 11:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD2114AB3;
	Thu,  2 Nov 2023 11:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D0jK1QO+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C7914AAF
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 11:42:08 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433A919E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 04:42:01 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99357737980so123384566b.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 04:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698925319; x=1699530119; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ku2yghToBtZf7AmsCT5H5GSjoVJ9gQzHcY+n0fbFqrU=;
        b=D0jK1QO+bGmqY6/kgYiC4wKGvWSuT21bd+alEZ2TBG6qtJRhNI1+DDoS0xGp/L1pj3
         QnFExUNkOWD1U26N1FRzy2M5Z2Kbo4NX7mBhLqqrXDOTcJN/7F0l3gZ8A5eW84Nf4DK7
         rnk+PtHLLFTrl78eKn77b5Gu1BdBtoQXyXOTiueCWLXd3sKSiPKx8ExT8MDl1V5h1bvU
         65pBBVB6YyisXp+EbkFG7K6vedrWJXuroKl35ZpjlkgggryhpKLtQcNnUnr2PhX+Fz26
         BVPfBK92IO1sMXlSUbtIBhx73a6AZHMzzOtwZLASOHjeGVQyOJncirWd/goiIGYUtvjQ
         uz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698925319; x=1699530119;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ku2yghToBtZf7AmsCT5H5GSjoVJ9gQzHcY+n0fbFqrU=;
        b=jPbQkrhjWYK78F5cqhQb4VPpuREzzHfoEE2FM3hc5BxrhfCbGG5QrS5KKgUaNsigM1
         7UD9UjIE2LfRB6RWxpL4EFTQ7b7oO/gDqUmmW/bBz0vuqrD7JfrI1q/C58kVmTWFLg7/
         kCWdEFHiyzPgopWGCT9+AoEHlLVcA9YgBfOE65pKEQDXGGiihHXcqx+yx4pN4qGJnV0I
         tvhpXUYeoRQ3ZSZX/JfvBHhi1ccaHWN5ywf421N4soCmSH1UutaznRW8CmgmY2dQUY/8
         4efs3kiNwzTybdeCHfuJDtfPvNuNWsuXo+G64AGIjxDGKQBEjiONadVlKKObU5/YEm+L
         tZ/A==
X-Gm-Message-State: AOJu0YwT5LrKuyLUkHAKpI6JJWPczVubhc+CmrOQQFYxZdjmjY7CzDQL
	z3cVU9GVYdHb5c67SHDjTn+hwA==
X-Google-Smtp-Source: AGHT+IEycpwS4EGuyKSLia2H6bem4NDEZOuXXECda4Wz+aqXbSFiWLitAGF/ZvZspzKnly99dCr+4A==
X-Received: by 2002:a17:906:7948:b0:9da:a00f:7337 with SMTP id l8-20020a170906794800b009daa00f7337mr3826286ejo.55.1698925319467;
        Thu, 02 Nov 2023 04:41:59 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id j41-20020a05600c1c2900b004060f0a0fdbsm2717720wms.41.2023.11.02.04.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 04:41:59 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/6] media: qcom: camss: Add sc8280xp support
Date: Thu, 02 Nov 2023 11:41:53 +0000
Message-Id: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAGLQ2UC/x3MMQqAMAxA0atIZgNNdaheRRxsTTWDtTQggnh3i
 +Mb/n9AuQgrjM0DhS9ROVMFtQ2EfUkbo6zVYI3tiAyh7zEshypqcNaZO6Nh8gOxt+Qj1C4XjnL
 /z2l+3w8JRkBTYwAAAA==
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-83828

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
 drivers/media/platform/qcom/camss/camss.c          | 376 +++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 9 files changed, 1086 insertions(+), 9 deletions(-)
---
base-commit: f5602ca81598f12d3fdb327beb29688871955596
change-id: 20231101-b4-camss-sc8280xp-0e1b91eb21bf

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


