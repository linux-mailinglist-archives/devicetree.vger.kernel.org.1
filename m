Return-Path: <devicetree+bounces-3878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7AB7B0528
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CF710281978
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B1630F8D;
	Wed, 27 Sep 2023 13:19:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B91CAB6
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:19:09 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D67FF5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:19:08 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-533c92e65c9so9637789a12.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695820747; x=1696425547; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ex2j1HgBhR1f7+T8Tw8OuGpDZVU+3dvDfXhVV1inwiM=;
        b=Cm/s4e+x/ImggxCAUVrJ0nevsrQ8Q+YT/UpQUUzBxBB+N35PF/UdyB9JrfdHLcK/NG
         SU2TbzeZF1otKX4Sh7gwTUUCgh3X2+KD1CSq+E8sSIxxTbG9nS4p0QYs9SF/2QCel0vu
         9dAkzr76l7Txinn7ykON/ORvUboMY1paUpS3sBIOqZgVHmZlfj6vXNBCkRdL5dIodsp8
         79j4gitb9NYCIT5VXis8jFXmI+LdeyS8QzRJjg/Jumx2OwhKykpzAqb74q91UDC+S8+x
         cnIQE7ZeXO8UhZpVVZLRD5VSkvzAZGvQK7htpfCheHGrgIOwPJSq3rOi/GiEy6mTjSec
         ZQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695820747; x=1696425547;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex2j1HgBhR1f7+T8Tw8OuGpDZVU+3dvDfXhVV1inwiM=;
        b=AtxvGUpBQBs25TPXkn4ismvWQpNC1gV4Fqp3u+yWTXwrOFVGgncJTuCeyCJN7kxDpO
         FsHCWeYlKYuGc/4xNtglSMPAcv+dfyGB07N3FBUmLAeeUwgE99jeEiq0QDaPSWqgPzWM
         bFVCqxta2Ff/Uftfuxb0m9nrnFc9ztA+kr+IjNC2faMLZRA4j4Ti9BHrBFO0aF2nVSac
         qTiDAzoZXZzcqJh8ncSm9TDriBKQiRTyvsqm7bxg/4CWJH17Oi+f8Cyy0Uig8R5Ino+N
         2KzLBSNel5Tl0ll2O2rqWFBFUeNpDjV+UqzdCqZrfUAlHVq62dlPx8svUWM08j2aA9e9
         rYvw==
X-Gm-Message-State: AOJu0Yw8jcIAxTE+GYhhKBpDQXRP7keZBVeNriN/UeRLo7OX6ygF0KsX
	X7+xEclnsLlaVaaE6z84YNY1YQ==
X-Google-Smtp-Source: AGHT+IGu1wbqk0GFZX73piIbUS2jzIqtwNkAydKLJwpjj4a/7CTd7GSLrjBK4RB9WdRKN9Vy71i0Kg==
X-Received: by 2002:a17:907:2714:b0:9ae:68bf:bf2 with SMTP id w20-20020a170907271400b009ae68bf0bf2mr1572481ejk.69.1695820747090;
        Wed, 27 Sep 2023 06:19:07 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id md1-20020a170906ae8100b009ad8acac02asm9369335ejb.172.2023.09.27.06.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 06:19:06 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] Raydium RM692E5-based BOE panel driver
Date: Wed, 27 Sep 2023 15:19:00 +0200
Message-Id: <20230927-topic-fp5_disp-v1-0-a6aabd68199f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMQrFGUC/x2N0QqDMAwAf0XybKCtbFV/RYa0Nc6A1NJsYyD++
 8Ie7+C4E4Qqk8DYnFDpw8JHVrBtA2kL+UnIizI44zozOI+vo3DCtdzmhaWgv3ubjBki2R40ikE
 IYw05bZrl976rLJVW/v4v0+O6foj5ieR1AAAA
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695820745; l=836;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Mn59zuX+Tdfbn5rVObYzOLlA/VLiJznWMnAdWQMfYA8=;
 b=NzCtxa23q/2zxYt92xRQO7kNc4G/KZmOcaxHWz5/6n27ZskvfSWBTIAy7Gqa9C+ha1ag9+eix
 6V03J2YinCKBoLCiI1wCkwKyt5ddjE/A4BTLPESBKMbEO634TIeqTuj
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
Konrad Dybcio (2):
      dt-bindings: display: panel: Add Raydium RM692E5
      drm/panel: Add driver for BOE RM692E5 AMOLED panel

 .../bindings/display/panel/raydium,rm692e5.yaml    |  73 +++
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-raydium-rm692e5.c      | 496 +++++++++++++++++++++
 4 files changed, 579 insertions(+)
---
base-commit: 18030226a48de1fbfabf4ae16aaa2695a484254f
change-id: 20230927-topic-fp5_disp-7671c009be18

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


