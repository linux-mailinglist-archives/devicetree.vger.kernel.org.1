Return-Path: <devicetree+bounces-44879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 461DA85FF08
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 18:17:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD54D1F2C76F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 17:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC3A155313;
	Thu, 22 Feb 2024 17:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iNoUCLzj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680BA155303
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 17:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708622229; cv=none; b=VErxLA2tUokHHxF66du6Kc7vRZuJAcWry37UR7FxwQ8gXTBlvbc7kxxwJbhaNK1HTl3tRAKDaDvpd3Fev2VUaty0lNOAMu/rUaUYrNiBqTpP+V0CP9FKB+sIZILKkFlRBLOr1F+6Q4PJRHk+LGTfukaG0o9F2qJ+1GFWluoClg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708622229; c=relaxed/simple;
	bh=Z9TW01ieGheVvSYGj35+wS9k2elxysGt636MZCOr0HM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bZgYpZmMzLJQsf0DNpfkEaG5dI7VQwG1ihcyRprNkoD8KGStMWj6DYSWMX55W3IwLBKv4xSgBpGKZKRxCy71dq1kDsVnh4bnkGIQ74qdwU6keGh2CqedpUzSuhewaGXIYtS6FeYKvtlJ36cjxLFkj7GyRogxwb8S8C3Qlv7hq6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iNoUCLzj; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d26227d508so86341fa.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708622225; x=1709227025; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hty7Q8TdVcE5cj7rf2bC8mc3p4rUC33JHE6Y9JSzuwI=;
        b=iNoUCLzjE98kmZzEVJnjRakmNWsCPq9CDLfvGwkxSLtfWWvl2WAqGXZ8HCaxzq1Yze
         5IW5LO1ZSQwjWX58jMrlbIw3aJSgS5n5Y2XE8FRY9d9X4zbyHgXgr+jYfdu/MgbXAX8/
         VsnQG/rzPOqAJBP9ny/OMbkkw0AVpHP4h7M+Muv2k0GJ1z9t1fguePxqii33ijyMoDLO
         3DNe0nMHrszP6q49BzCZXLnaCarwdl600Sd8565ilBSgsYKIu50qJN1klJBnX4UlH5il
         FmC6OY3hGdjugFHOeAMAD45zRMFdT3C8bydpTCnrAs5xwR98cvs624OMl8EDpWymMw1q
         2kXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708622225; x=1709227025;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hty7Q8TdVcE5cj7rf2bC8mc3p4rUC33JHE6Y9JSzuwI=;
        b=m84Mo4Uw+8VK6oHF2isUh2TUjmTTLvFSHMbhjEx2pe0Xdlw+pGGaYu3KaWRlAASh/d
         2TVqPExfoL3FJ0Vk7J3N/cn0zHshPpetIxoHHeYTMjKsuKWMwtepEPSzUFmKV24OXxFN
         mzKxgk67tal2ZuSsD4N8mnh3vh+jgnGFFrUswhEey/B2dQYYKlAx+TieT9+B/1OCLHur
         glr4ngQfZisYJygBrz2rhCP3AruRC3Le2mwP/5QhY6KPMJUHRG8lNnToGNaiEWJFz3S/
         MIRn6bC8hiHbXvHngUkbZxx5Gbon4XRJS5DAH5feTS1USmNnX9wxDCy/Saj2epE/qA/K
         SEug==
X-Forwarded-Encrypted: i=1; AJvYcCXk5GUsnBP77DSuYJaMbaQ0djlDRACBfjKrz3MvFiIi1nkdhzCbErWXx3SKsN9GcxNTA8z0PbfxBJcfZg8Ys7KMzOOR+ekKW8Igig==
X-Gm-Message-State: AOJu0Yy7dMnmUihYKU+/gYd7/RTDpc+wozQ3nfhY/0otchhCl+mZ7XoI
	ry3sUYjzTLsZZzBU6QqaOi3CY8w0VAQhefbLauu4x/hWoVhNUVE2y2omtaNOJlw=
X-Google-Smtp-Source: AGHT+IEsMvdRwmUi1rMLhFEmCATmy+3oItwsLCQ/1vC6eyzxbtfc74jRuaMhXGmY0NY45DfDcNLYZg==
X-Received: by 2002:a2e:a272:0:b0:2d2:4388:63fc with SMTP id k18-20020a2ea272000000b002d2438863fcmr6008642ljm.44.1708622225561;
        Thu, 22 Feb 2024 09:17:05 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id u7-20020a7bc047000000b0040fe4b733f4sm6656512wmc.26.2024.02.22.09.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:17:05 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v6 0/6] media: qcom: camss: Add sc8280xp support
Date: Thu, 22 Feb 2024 17:16:58 +0000
Message-Id: <20240222-b4-camss-sc8280xp-v6-0-0e0e6a2f8962@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIqB12UC/23OwYoCMQyA4VeRnu2SpqnTevI9lj20tdHCOiOtD
 C4y775VWJjFHv9AvuQhaio5VbHfPERJc655GlvsthsRz348JZmPrQUCaqVAyUAy+kutskaLFu5
 XCUkFp1JAFVi0vWtJnO8v8/Or9TnX21R+Xidm9Zz+adjRZiVBOud2TCEGy3T4zqMv08dUTuLJz
 bgmdI/ARoTBMx3RaI/wRug1YXqEbgQFHfWAzND5gtaE6xHUCGO9sSEiALs3wqwIBT3CNGJgcjT
 EaFy0/4hlWX4B+zwe8b8BAAA=
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
X-Mailer: b4 0.13-dev-4e032

V6:
- Add of camss.yaml passes on linux-stable/master as at
  commit: ff93872a9c61 ("clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC")

- Fixed IFE/VFE comment discongruity - Konrad

- Per my explaination I don't propose to change IFE/VFE naming since
  they are the same thing.

  SFE blocks should be named SFE though, not IFE/VFE

- Referring to Konrad's other comments on IFE/VFE naming
  https://lore.kernel.org/all/9a13471b-fc39-4081-8905-9d0d7c28b501@linaro.org/#t

  The next two changes I intend not covered in this SoC series

  a) Completing the conversion to named power-domains
  b) Camera NOC => OPPs for the camera NoC

  Not covered in this series though.

Link to v5: https://lore.kernel.org/r/20231110-b4-camss-sc8280xp-v5-0-7f4947cc59c8@linaro.org
Link to tree: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp-v6
Bootable: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/sc8280xp-v6.8-rc4-camss?ref_type=heads

V5:
- Fixes the lower case 0x0c to 0x0C not sure how Konrad even saw this.
- Drops frequency table to just individual frequencies not full array of
  opps - Konrad

- As explained doesn't change the finding of frequencies.
  Current array size will ensure testing if (freq[x]) succeeds though I
  do agree this should be changed up.

  Plan to restructure struct params for specificity to VFE, CSID and will
  incorporate this change then.
  Link: https://lore.kernel.org/all/e80d4026-a525-48ef-b53a-f1276dd316e6@linaro.org

-  Reset sequence

   Right now the reset works. I agree qcom's downstream has more stuff in
   it. I've logged a task to evaluate expansion of the reset and to test
   across multiple platforms.

   For now not required for this drop.

- _src clocks

  One assumes the reason at some stage in time we didn't have SET_PARENT in
  our CAMCC which meant setting _src clocks was necessary. In any case it
  ought not to be necessary now.

  Removing the _src from existing platforms should be trivial however we
  might find that as a result some of the CAMCC drivers need to be updated.

  That obviously is a separate series.

Link to v4: https://lore.kernel.org/r/20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org
Link to tree: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp-v5

V4:
- Drops all _src clocks and _SRC indexes in series.
  True enough the CAMCC driver has all of the appropriate SET_PARENT flags
  so there's no need to represent _src clocks. - Konrad

- I've opted not to split C-PHY and D-PHY init sequences up unless/until
  we have a C-PHY init sequence upstream. - bod/Konrad

- b4 trailes --update -> + Konrad's Acks

Link to v3: https://lore.kernel.org/r/20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org
Link to tree: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp-v4

V3:
- Strip pointer to dependencies from yaml patch
  I was hoping the robot would understand the links but it doesn't -
  Krzysztof

Link to v2: https://lore.kernel.org/r/20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org

b4 base:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/b4/camss-sc8280xp-v3

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
      media: qcom: camss: csiphy-3ph: Add Gen2 v1.1 two-phase MIPI CSI-2 DPHY init
      media: qcom: camss: Add CAMSS_SC8280XP enum
      media: qcom: camss: Add sc8280xp resources
      media: qcom: camss: Add sc8280xp support
      media: qcom: camss: vfe-17x: Rename camss-vfe-170 to camss-vfe-17x

 .../bindings/media/qcom,sc8280xp-camss.yaml        | 512 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +-
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 108 ++++-
 drivers/media/platform/qcom/camss/camss-csiphy.c   |   1 +
 .../camss/{camss-vfe-170.c => camss-vfe-17x.c}     |   0
 drivers/media/platform/qcom/camss/camss-vfe.c      |  25 +-
 drivers/media/platform/qcom/camss/camss-video.c    |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 307 ++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 9 files changed, 948 insertions(+), 9 deletions(-)
---
base-commit: e31185ce00a96232308300008db193416ceb9769
change-id: 20231101-b4-camss-sc8280xp-0e1b91eb21bf

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


