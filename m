Return-Path: <devicetree+bounces-4575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F10E7B32D9
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D6293281EE0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94761864F;
	Fri, 29 Sep 2023 12:54:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E21A6FB5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:54:29 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88168BF
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:54:27 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9a9cd066db5so1958939666b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695992066; x=1696596866; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+AuRv4KTqJ8bK4vJwp6Rlf7DjgTsFVdEaK8Kexn8Dp4=;
        b=EtO4qQzO0EwnfQP2LmgE0c11zwosPYH7yRn2ZgK4N6quOqrexlV5RD8rHw9D7iPRA3
         7zeEX67iXS7a+ECJqmayhM8Qorq/25apHl2mDKYpSlJZbXQ5PED9bN7PoYDQ/D8IWFX5
         kd9HZ89Jn2jEnt+CvlPpAN8/swrtKPkjETJjSo5RLLM+dvM7b1jJb2n7zhmPv2x9uofp
         euQpeaQ90dN5dVSBe0eKWT8gbwus3EF4Y6wwtBVJp4unsbTAZ9YGX5sZ2UasR1vWm9Lg
         ELdWu8lkHDgp7REbRGi8YRubABrSMxM1lJq8wuylVH3MzJxjyESFomfcE+XMCrl8w3JZ
         17FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695992066; x=1696596866;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+AuRv4KTqJ8bK4vJwp6Rlf7DjgTsFVdEaK8Kexn8Dp4=;
        b=cGdH15xcIeIB9PssJh/EQwCkknUM/a3OiB7h4F4ZAMia0TyRW0/By/FWmhihJq7cxd
         WJ6oQMrLc5MNGqvx3mAffctrvPXNR5+jRKHIqO7Yp6lFwHYvf7eqTEBzthTve5Qa/GfU
         oOwEltJ/CQqA9oOHAMlpdGaT2dgmVqlUKQXlENRDfPx/aeky4aaxXcKZDWkqTzEOV2nI
         oFuQtPeLhAjJ6UVBQDbOw7Pvy0NqwbRVVmgrgSNHWHBfrTchaAlYLBdzhW+nCo4+HG6T
         OKU53f0Es8hhOQ2ssgQlbNXlPWHI16luOlojCkVvlsPHDMRez872PUcHP3kVwha/Iv7M
         uDKw==
X-Gm-Message-State: AOJu0YyS2sNtwH6C9+LVarCXFqmDRcsZAxo/z0crtBYkIjIz4MGdyTDi
	p5mz7ePtcFXSemUw0l7vyVk97A==
X-Google-Smtp-Source: AGHT+IHRZn9LrlpURw5VR8gkE65oLEBKEN+4DaWKjtyxPioqWxZlBs4SfN8Yt45onlSLuw1Zv/bBug==
X-Received: by 2002:a17:907:7851:b0:9ae:594d:d3fc with SMTP id lb17-20020a170907785100b009ae594dd3fcmr3150969ejc.17.1695992065978;
        Fri, 29 Sep 2023 05:54:25 -0700 (PDT)
Received: from [10.167.154.1] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id j26-20020a170906831a00b0099bc8bd9066sm12380376ejx.150.2023.09.29.05.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 05:54:25 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/2] Raydium RM692E5-based BOE panel driver
Date: Fri, 29 Sep 2023 14:54:19 +0200
Message-Id: <20230927-topic-fp5_disp-v2-0-7b5e1d1662a6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPvIFmUC/3WNQQqDMBBFryKz7pQkpWq66j2KlCSOOiBJSKy0i
 Hdv6r7L9+D/t0GmxJThVm2QaOXMwRdQpwrcZPxIyH1hUEJdhFYNLiGywyFenz3niE3dSCeEtiR
 bKCNrMqFNxrupzPxrnouMiQZ+H5VHV3jivIT0OaKr/Nm//6tEgaY2xvZ1K7Ue7jN7k8I5pBG6f
 d+/aCqhL8IAAAA=
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695992063; l=1363;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=2d9A8dWRUIiELWOfFWWRUFTRoeEgh24LYoeTZfnTIdg=;
 b=KFKilxuw2y1VD+FVx1XyC7xUmXUIkaWMvt6MYZK+K3+21M+RhPOmeb+/6P9/3/UQ25nyvjoNk
 lYj79bWX3LZBhrDtvOTAyE/dQBIM3ecP90jsp65aVlQbSgneO/pb2Mu
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Fairphone 5 smartphone ships with a BOE AMOLED panel in conjunction
with a Raydium RM692E5 driver IC. This series adds the bindings and driver
for that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
DRIVER:
- Remove 1ms sleeps after each DCS command submission
- Remove WARN_ON from probe()
- Move DCS off commands from .unprepare to .disable so that they
  actually reach the DSI host
- Do NOT introduce the 60 Hz mode for now, exploring ways to avoid tons
  of boilerplate
BINDINGS:
- Fix weird capitalization at the end of a sentence in title:
- Drop unnecessary | in description:
- pick up rb
- Link to v1: https://lore.kernel.org/r/20230927-topic-fp5_disp-v1-0-a6aabd68199f@linaro.org

---
Konrad Dybcio (2):
      dt-bindings: display: panel: Add Raydium RM692E5
      drm/panel: Add driver for BOE RM692E5 AMOLED panel

 .../bindings/display/panel/raydium,rm692e5.yaml    |  73 ++++
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-raydium-rm692e5.c      | 423 +++++++++++++++++++++
 4 files changed, 506 insertions(+)
---
base-commit: df964ce9ef9fea10cf131bf6bad8658fde7956f6
change-id: 20230927-topic-fp5_disp-7671c009be18

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


