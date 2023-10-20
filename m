Return-Path: <devicetree+bounces-10325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0138D7D0D49
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:35:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A338B281150
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C06312E66;
	Fri, 20 Oct 2023 10:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="im8LOf5A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAA312E5F
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 10:35:53 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 956951710
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:35:51 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9c603e2354fso143468266b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697798150; x=1698402950; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GPV3+mSCa7UCq+L+t94qLITay8xgJ9TNT1tiFr6+L2c=;
        b=im8LOf5Aa3rFTDlDd4uCcX98bBMcf5l9mwHcjs9CvBC0Cy1QhSvKJZBurpHsBmNtHz
         akkOXLnSw+J1iIWa9jgI/4tyLTzWBRcAY9zL9d/gMFFO41A7RQ55wuDndVqqCA2XuP84
         PHXxz68Ify+PA6KM7RPdiogAZDkmCwjJkjvwmsikOez4B4PvYZ9p6Huqv5VtwYQG8Xrl
         dcMrzsIlTtEEU9MPj9Za6vBI4zgYd3N99YFvSrn1NWUMcntIEBgPtaPSYRMzHywTOGwJ
         2sVlHfr/mOK2iKcG3LLSGK7aSYMp0nIlfanqtgFtRvtz1Rg1d96tL3leJQDZ+Zv4IIJE
         Hukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697798150; x=1698402950;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPV3+mSCa7UCq+L+t94qLITay8xgJ9TNT1tiFr6+L2c=;
        b=esKzblOT1EY4wpsfyFWnZ3mw6PVzER61CphsaiNIvWWjF2ABxkwJB52PvQgaJxT6+j
         1bscbEEMG6654//jK1Oz3HZXldW8kPE8S2GlV3/eFcM0+CfJDzh0YPuO+cTHLoyfNxsI
         HVHkRiXt1b+9WWGC2Akmew7/Cpla+q4GUOQznvodvS+PoU81E7V2F02R0IfruHbL6ndG
         DH6xbiF8nzZ5sOfXYr2bdoOv7kG2uW2bPMeMOJkxS+4EkHHXGHkPyitN9OqYiTM1CoSt
         U2aLcNP2rBWyQqWpKLhKlgsy6d+p5f37ET1t4ki4RHg0MOoUSunkPGROm5fy+/q9OTuh
         W8Xw==
X-Gm-Message-State: AOJu0YyLv8yH/1ob+jyDIVO+FcPr6Fiugjx9UD0Fv5RQm667dkOH0d5N
	aHZ6hl7WbbuWZl/O8zF7V655iA==
X-Google-Smtp-Source: AGHT+IHJToqlCc02RJhLLsWDtbne22EHGQDujcGIxJ09VOwX3CVtjhc4BmJbIkc8DjNLMYWuZ6+PBw==
X-Received: by 2002:a17:907:728f:b0:9a5:7dec:fab9 with SMTP id dt15-20020a170907728f00b009a57decfab9mr4012688ejc.9.1697798149982;
        Fri, 20 Oct 2023 03:35:49 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id h7-20020a1709063c0700b0099c53c4407dsm1226701ejg.78.2023.10.20.03.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 03:35:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Add driver for NXP PTN36502 Type-C redriver
Date: Fri, 20 Oct 2023 12:35:45 +0200
Message-Id: <20231020-ptn36502-v2-0-b37a337d463e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAFYMmUC/23Myw7CIBCF4VdpZi1mAOlt5XuYLggd7CyEBhqia
 fruYtcu/5OTb4dMiSnD2OyQqHDmGGqoSwNuseFJgufaoFBpiVKLdQu6NaiEsX1HBrtZtw7qfU3
 k+X1Sj6n2wnmL6XPKRf7WP0iRAsXQSxzsTSN5d/eW07rEQFcXXzAdx/EFaEvHCKQAAAA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3

The NXP PTN36502 is used in the Fairphone 5 smartphone, add a driver for
it so we can soon enable DisplayPort over USB-C on this phone.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Use FIELD_PREP+GENMASK for register values
- Move FIELD_GET for chip revision from macro to code (to align with
  new register definition style)
- Fix bad code alignment at ptn36502_bridge_attach function
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20231013-ptn36502-v1-0-98109a430efc@fairphone.com

---
Luca Weiss (2):
      dt-bindings: usb: add NXP PTN36502 Type-C redriver bindings
      usb: typec: add support for PTN36502 redriver

 .../devicetree/bindings/usb/nxp,ptn36502.yaml      |  94 +++++
 drivers/usb/typec/mux/Kconfig                      |  10 +
 drivers/usb/typec/mux/Makefile                     |   1 +
 drivers/usb/typec/mux/ptn36502.c                   | 444 +++++++++++++++++++++
 4 files changed, 549 insertions(+)
---
base-commit: e3b18f7200f45d66f7141136c25554ac1e82009b
change-id: 20231013-ptn36502-5a87e507d36c

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


