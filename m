Return-Path: <devicetree+bounces-5627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3E27B6E95
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F158A1C203BF
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 16:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6EF629415;
	Tue,  3 Oct 2023 16:34:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47191154A1
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 16:34:03 +0000 (UTC)
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 414F3A7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:34:02 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6c4e7951dddso750007a34.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 09:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696350841; x=1696955641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tj7w41rLlWbL1bmav/8tesoiRg3+S5FpObDj9wp+gt0=;
        b=XHQTXo7LLNFdckN4snslkD0cCAvkaonJ872Sxzb5HNIV65En7jnlTKn2am8fZfMMHc
         nwAT8FQWQqJW0KLi9wBJFnwPef2kKNJEsar54OcSvjhRpg64bQm/s5m654rZ+ocqz8OD
         QUNH/FnKXYRLIMw/7CUKg13Wm8kQWmMJ+7O9UkTSokgbvngfqtMKxKHGGH5x/sjBGECG
         Py9FnrGTrSgDdQqlcj9FwsZAapy6psAoITkOQKCsE9maveVKGzYjtQdnfQi9PhnHqNaU
         D3Pir2pCNsw/pGI5yMjeuerntzzUxQa8cVAVjcNBJs7x1DiMKZAMVuhGmoaVbrtZvltj
         gopw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696350841; x=1696955641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tj7w41rLlWbL1bmav/8tesoiRg3+S5FpObDj9wp+gt0=;
        b=KkZxJIN7i1+0y1Zaue/6WbOXigkcvIVGt0lKS3AS23yP8h9chwQHEqRH1IcyOwE3iK
         h9hMr8ZhUnT+jObvPGC7IJGKKfhxTTZ05LkhS823YijPYz84mtbzCVLESM0aOXac43Jf
         X0vyl5S25O9sfc4EPWpsXb8eMi4j2r9omflhuYWRMxj/Um3dAAZu60YUnV1JMUSyQdER
         +r+AbApEcbet0Vfyne+tIjQgYsouMnPOToRfe1C8DyeCP54khg3SNtyQMiqPboOyReD4
         As2MwbaUcYh8sMXVl9UyPGqldiE9wM2O88Bzqhc5nn6GhGWaVIsHRHTAs70xckbI8VRt
         kLSw==
X-Gm-Message-State: AOJu0YwWJMkhzgYZbSXY0yEe1EQbmX/jSCClNLiOkvDFUKaAo5ca7uXF
	WMr9sY5FWc7hFPJET8NLy52NGR2lF6I=
X-Google-Smtp-Source: AGHT+IGp7ehnwYSxxxzmEOMYdK8NZTQFwuki8TORAjFYRAYbS2A6pnXFwZ+F3msj0e+Sv+GHMfXdcg==
X-Received: by 2002:a05:6830:3d17:b0:6c4:cdce:5de8 with SMTP id eu23-20020a0568303d1700b006c4cdce5de8mr14687043otb.26.1696350841276;
        Tue, 03 Oct 2023 09:34:01 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id k6-20020a056830150600b006b74bea76c0sm198567otp.47.2023.10.03.09.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 09:34:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/2] Support Anbernic RG351V Panel
Date: Tue,  3 Oct 2023 11:33:53 -0500
Message-Id: <20231003163355.143704-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG351V panel. This panel is mostly
identical to the one used in the 353 series, except it has a different
panel ID when queried (0x4000 for the 351V, 0x3052 for the 353 panel)
and will not work without the inclusion of the
MIPI_DSI_CLOCK_NON_CONTINUOUS flag.

Updates from V3:
 - Removed need for defined variable in probe function.

Updates from V2:
 - Modified the driver so that we only apply the
   MIPI_DSI_CLOCK_NON_CONTINUOUS flag when the compatible matches
   a panel (the 351v) that needs it.
 - Updated the binding documentation to be consistent with existing
   panels.

Updates from V1:
 - Revised text in devicetree documentation to remove references to
   specific hardware.


Chris Morgan (2):
  dt-bindings: display: newvision,nv3051d: Add Anbernic  351V
  drm/panel: nv3051d: Add Support for Anbernic 351V

 .../bindings/display/panel/newvision,nv3051d.yaml          | 5 ++---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c            | 7 +++++++
 2 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.34.1


