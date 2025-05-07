Return-Path: <devicetree+bounces-174601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7ECAADBBB
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 11:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B52846884F
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 09:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF3620012B;
	Wed,  7 May 2025 09:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UFc2Z2+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F26F1F417E
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 09:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746611025; cv=none; b=HlNhs9EsZjZWID4VJiBQ8V1KUzFLd5n3z/rnOTl9/Gs4nadayDIBWGtZhP0zSuTaDVsV1PZP3DOUEaePFF57h9wxJJEg4HvzUGmE1BMgdpdm5V2LTDceCgPPw9TASWkjAeagDMAjiTtVIcInqfHSSLoSL541cgBjzPLltXGpnKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746611025; c=relaxed/simple;
	bh=VAw4LvKHXvijiJBA747ZYCqb44eYKH6QLm7/zgf83Wc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RWPQxxeH2lih1Qm3iWDosPAOpS/K0BipZYC7vXbuZryZuRQ9bolBvepUREGVCrXKunIFZsab/GL/XzVvxyDAuGLmbMoY49zwnHOnQzhCmQxL1QxwJDQCt6vQXe7AdtM15TfjSPQVabejmoekxyHYXgFZWOVvy/v7HfzvffTfke0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UFc2Z2+5; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so5138005e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 02:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746611022; x=1747215822; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L9NPb1ubbCYKF9SGt/95PQ+zvu0nmCRl9cb2P0c699U=;
        b=UFc2Z2+5JVKuWxD+G4MGsgwWkG8dxJK4S7wfxryTI5aYO97iURYaL1orC37pMFdLmK
         0tGs+iZkB25asQb25PIeSCXFEBdHMEMAj0Qx3nQ1I20hU1WoUbggrB/kBTmNZt4MyR0m
         00NJmw2fHeCFrjcgcyU3I4nB+oCbn9mH/bMEcuSQ7Qz/7UEO9q+VDPGFCRP4lXg+dYkU
         SvFcoDClaiuttgbGDEwvXt6HhfsLnrXp1yJzbkdq/7diYawIbOC9Kk1BQrb655yTWHa+
         2PppV6KCBScXI7ocdnRqS5QlcAMu43IsV+iUOLaOPFeEMRmEMKW3+b7JiZ7FuF8QVe7M
         jM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746611022; x=1747215822;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L9NPb1ubbCYKF9SGt/95PQ+zvu0nmCRl9cb2P0c699U=;
        b=X3O3FpK6OkgyHHDTrBNgDf/jPciYOouqBIUWbTOj4DwyYKm7u2q9ec6zl9LOPEXtCd
         tf8lM2lk//zt6S3edYd5NfvmUL+2L4cwMNMrK72pkxoLIJxyvT/sguAtLcs9sFsrn01d
         UWqh8kssfr00yNXkyT3vdIPybH9Zqd9TrxOQRCywJGgXSgjjxJg1obVj5NgTyQL/MKt8
         GgnZstH5uC5DIi3SO4XQp25K5w4Rq8YUua4q11Dt3exO9nI30EsgEQ9pC/AoDhX489Qp
         dX/jXt5jvSMNmuW1FQO5t+IaNqHsere7+urT7OmJDjLlQbILh897rg84yXFDp3m6xJ7w
         Csfw==
X-Forwarded-Encrypted: i=1; AJvYcCWXYNcmJZU7/mgxVccxo/kOrRk8LOIZhhL2mR7T1Vs5lw19fhZ/9rAiKGOZUp/CuSJgX5hWA2sxU3/T@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8oNIM0e0GOET9/I3f8dUgpqdJb18lcYiApn5TwWus31UtHGSL
	cNwmsXnpJlDSEoSpJQuosxGk4SFtwJpBqCEvJqwMLl/29YVMc6Bt2dSJ5ZmLQfU=
X-Gm-Gg: ASbGncvRxenc0okaoVrkEC8NA0VD6Dg06TOtttSW65tWaU6odCQuZRCXUbWqSw+1mX3
	Jmkv3NnBMxFR1nhV7Zg8X+VNSy/wZBUeoDJap3G1BM/8YjIOjc7rlLhQsATbIZ6QK9KetQzghx8
	rgQKcbdxEldt0qooRA190KdObEJacajrz/QHVBIzK+VM+nywVcQSFabp4Idabs3ipGj2O4yNXd0
	fuoMbpmGeb7+8KVvb41XDG6drhTuQXwakOWhk6Ubbnk1nyuutgvQxP5jbdEUnuhsYTYR7H3ZM+O
	r67nvIA2IWtwxQD3kwtOlf22d6vrxzUh1yNzkHU8B5K+S71bwZS6CPba+RFYFQ==
X-Google-Smtp-Source: AGHT+IEV2rqMcvfZh9wTygpv0mKHsKvPqg585NNDNe9+GO4gszC9YjKibaKM67xkRPHBeTzlESoR2g==
X-Received: by 2002:a05:600c:4313:b0:441:bbe5:f562 with SMTP id 5b1f17b1804b1-441d3a813b6mr18131525e9.16.1746611021700;
        Wed, 07 May 2025 02:43:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d434670csm25360095e9.15.2025.05.07.02.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 02:43:41 -0700 (PDT)
From: neil.armstrong@linaro.org
Subject: [PATCH 0/2] panel: visionox-rm69299: support the variant found in
 the SHIFT6mq
Date: Wed, 07 May 2025 11:43:37 +0200
Message-Id: <20250507-topic-misc-shift6-panel-v1-0-64e8e98ff285@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEkrG2gC/x3MQQqAIBBA0avErBtQyYquEi3MphooEyciiO6et
 HyL/x8QSkwCXfFAoouFj5ChywL86sJCyFM2GGWssqrB84jscWfxKCvPZ43RBdpQj6o11rdVU2v
 IdUw08/2f++F9P1hcgzZpAAAA
X-Change-ID: 20250507-topic-misc-shift6-panel-1b0825c84761
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Caleb Connolly <caleb@connolly.tech>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=861;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=VAw4LvKHXvijiJBA747ZYCqb44eYKH6QLm7/zgf83Wc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoGytLP7ZsXCLnAU7ck672LmJ0r8Vso2SiYY7gYl81
 L5SQzzqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaBsrSwAKCRB33NvayMhJ0bhkEA
 Cz3e6I7dqaLfzDwySsO8D1JhWqLrItxqTXugkjYmruyJWde2JDWIxkcuhOULI1PNdhpveWJgeqkYTB
 aWrOQFx+5VD5BiYJLRNDk0SKYSgXPjYfLv07x2nKVk0jDGmVXEn/4/oGtx24xUG0/3ILiFmfyd2dvE
 3wzwL/xt93syZlkCM+pDOxvyjq1CqKaNMZsHSwfLu9V0+Vvufb0QorApkmmcW7r2BYknEqeu3qT4il
 fvL6AYz3MmlOPxcGb07jHOJFWk/KWur7cBaEUdIVWVqzMbf9dx0oe/z2ONyu4NbxMDXiLCMI/aFZZI
 eFraIn2MdgCHUJy/0bKlZw2wdeegZYD+qFAjuu2oczIcLCD4UVjEyrCfJtL7Hw8elNUbcdTAYkK8IN
 jCHhSlFmzXhMuYMVl69q1PPU9eHLSeAhohFHJBIk21/BBD6H9ZAk22arACBt9eiuxL/tfbFqGIxpsV
 fGHExGBG0WngvhO/OFRmBEw1fZ0jq4f/JPezje0/vI4ZYZGRC9NPQeJ7rw4QKlJByuc1hkgcp1GrQu
 H4x/JseJTzU7pSnnvKpoUsbQViBWw7mlZPov+SX7UV6MsT4cp+0GYkaIV5N9wwBj60aHhJrF73A790
 z5wnpH7wOlMNs5bMWPBOUDeno5Y+qI+QIThQh24e2aZ/8BpvgUllCOlHGmPQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Re-spin of [1] and [2] to finally document and support this panel
variant.

[1] https://lore.kernel.org/all/20220123173650.290349-4-caleb@connolly.tech/
[2] https://lore.kernel.org/all/20220123173650.290349-5-caleb@connolly.tech/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Caleb Connolly (2):
      dt-bindings: display: visionox-rm69299: document new compatible string
      drm/panel: visionox-rm69299: support the variant found in the SHIFT6mq

 .../bindings/display/panel/visionox,rm69299.yaml   |   4 +-
 drivers/gpu/drm/panel/panel-visionox-rm69299.c     | 221 ++++++++++++++++++---
 2 files changed, 198 insertions(+), 27 deletions(-)
---
base-commit: 08710e696081d58163c8078e0e096be6d35c5fad
change-id: 20250507-topic-misc-shift6-panel-1b0825c84761

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


