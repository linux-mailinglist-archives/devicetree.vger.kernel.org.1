Return-Path: <devicetree+bounces-5255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB157B5B49
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:30:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 99F7528275A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941111F94A;
	Mon,  2 Oct 2023 19:30:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBA415BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:30:24 +0000 (UTC)
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3C93AC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:30:21 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1e12f41e496so44629fac.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 12:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696275021; x=1696879821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jUiwZsfNL+Nrg1jXw0JxGe3bXbWu0f0psKz9r2m5WiY=;
        b=bQAivvH2rtLW9JQljM1LPAwV+nW3LLCJKxXBq3UyR+MAd87mR0x/M2dLJ5cmr35QwO
         NF81UWD9T+n2MxQCKbAhX9j7VnKLEjAB7Hd9BwIaKEf8SAvL5SIYufGNb5kVDTiSyKez
         M67xBuU9MkWK1I6jbouxEyCoFRy0nUFYQfjEjGTw+7F40YnBQkPpwCfYxv9RZjWp4oh7
         1bKOEALa1ErC50+4mz7HWyAkG86GzDOP95CRVv2cVH6uh8XsjN3hvu8XwHQnO7Ii4w/l
         h+MjyOFRrSPt/lCyaI84/k7D+b0vfu1jEgoKjMU9cEhcu+P9M5QG8g7+Iug8St17FDbD
         SmCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696275021; x=1696879821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUiwZsfNL+Nrg1jXw0JxGe3bXbWu0f0psKz9r2m5WiY=;
        b=BiQxOwT1BfxrlDNaJT4RkT2XBgtQfpegsjL8Hkfx1gA+FT+49X32wnH3zc7ucDOfRl
         BdE9URlpSW7gMfWUoTPDpN+r36Mp/zxOumgoFA6GbFnrU7uFf1rJV99tQnaucYQtFw7P
         yI90Q5xizgU5tIqSw9ugDNOn5vEIfeoJkdO70wmERpQ4hAIM4+AzQuyui1biYlierd7n
         1JHyrjHFaTaoqBtnHH5s9Z+Zpd57I8I2NW+lSc4j3+GnvYvCSIr8a3/7g+537b8jC18C
         ll3uGcJa800i5J9FydoXhEpxBQSys9zHEl0B+ACZ/mZo47C6rt8bYngyqDYHDzrP5vxd
         ECEw==
X-Gm-Message-State: AOJu0Yy4COSzHVLJCuN0EMJbDDwQG61HNI75rZBy4xD7X4cG9taxwlAN
	m7EpIqu8nkRfNAB0jyxqUV6TtgkkoUs=
X-Google-Smtp-Source: AGHT+IENy5FCBijNCtcz5aUwT7z2wWql9RTrKgtXWzxLeSfXf7oVjc5YmkXzfoYQwqhWA/3IUgiq7g==
X-Received: by 2002:a05:6870:a3cc:b0:1d6:cbcd:80f8 with SMTP id h12-20020a056870a3cc00b001d6cbcd80f8mr13452652oak.54.1696275020746;
        Mon, 02 Oct 2023 12:30:20 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ep35-20020a056870a9a300b001dc8b2f06a1sm4846398oab.55.2023.10.02.12.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 12:30:20 -0700 (PDT)
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
Subject: [PATCH V3 0/2] Support Anbernic RG351V Panel
Date: Mon,  2 Oct 2023 14:30:14 -0500
Message-Id: <20231002193016.139452-1-macroalpha82@gmail.com>
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
  dt-bindings: display: newvision,nv3051d: Add Anbernic 351V
  drm/panel: nv3051d: Add Support for Anbernic 351V

 .../bindings/display/panel/newvision,nv3051d.yaml         | 5 ++---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c           | 8 ++++++++
 2 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.34.1


