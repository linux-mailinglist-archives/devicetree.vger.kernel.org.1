Return-Path: <devicetree+bounces-3252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 968FE7ADE73
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 519F9281335
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 849F7224CD;
	Mon, 25 Sep 2023 18:17:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E42107B8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 18:17:46 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70030126
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:44 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso1295872466b.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695665863; x=1696270663; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lo5CmJ7j45LMzfOTVuYeJkWSf+ItxDRDqPNzngv56Dg=;
        b=HKDCiHHUkz07auBcaacjj8wB48635R1Y11VzG7CvhApzRW7r7HTlvppT+vpdu5VHyX
         2M1+jVrDmvnF8PBxzH+i73P/irnRTj2IvBGVHfRJxLSsRcyTGTK8V67Pcm0HuReUhhxg
         SS6iAKQbtAc4G+nzZdXllHjX1UyYlC8GcFiPLkaQBKrZCAOk+tSwvBSjJS6OlVMcFuYM
         uVuyqwwULJv3ENFliowdcQQPQAfla8K5qsKqLi0QmNxBFVptRGDFzsgcX3om0JsrJ7nl
         V5f5U6rm/V1t69f6OWjmdIOaXIiiO3UOP8Pp/+mEwhSXvELa689NKOdJOk/rEOhnoS8s
         hH4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695665863; x=1696270663;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lo5CmJ7j45LMzfOTVuYeJkWSf+ItxDRDqPNzngv56Dg=;
        b=ZBSGhc104ZXXMsJirqnZWYH69nwUMBu1cdyT9vdJ17w+CqkiEsag/+nscBT01dcfGo
         u/fF2vp2rBvm8He1SCGeDxTVVD4R3GT1JsRQntJLpvK7qCt/puHN4mnffrVH8M0Ptlej
         nWmiWMjrK3oettuoPzitgdg0Gv63lL4jG6L3kHLGVfxI4Jirdyt5ADFp8dskdzpWk8Rz
         Qhldxc6/Nbn1KnDaDVaSV+cc7ay1SdcK2eUlUbYp2XjlonJO8gKrDz5pY8Nkni1/fzKl
         IkbbRge4g5pDRa++0EX2caneAz/+TVnubwhdMEVNWRPt1JyozoaRLM2YhcnUphDsCuxV
         f+qA==
X-Gm-Message-State: AOJu0YzbgROl+p6f0j7+4lb7FeXZ5LQU4c+0SrYAMqQ3iKE99fu9/ktb
	3/Uqe0UDAlqqOpZGuzob7Pgdig==
X-Google-Smtp-Source: AGHT+IHq05umxlWx+E0z9Sd6VJqdsjz1GGLwKvLo3q0XHdysMl2QoqO299axqEC6a1SRLA4tCeZIXA==
X-Received: by 2002:a17:906:101a:b0:9ae:4057:5c81 with SMTP id 26-20020a170906101a00b009ae40575c81mr502560ejm.35.1695665862880;
        Mon, 25 Sep 2023 11:17:42 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j26-20020a170906831a00b00997d7aa59fasm6793962ejx.14.2023.09.25.11.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 11:17:42 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH v6 0/7] Add IOMMU support to MT8365 SoC
Date: Mon, 25 Sep 2023 20:17:34 +0200
Message-Id: <20230207-iommu-support-v6-0-24453c8625b3@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL7OEWUC/33NTWrDMBAF4KsErasy+rWcVe9RspClUS2wrSDFh
 hB89wxdFter4T1437xYw5qxsevlxSpuueWyULAfFxZGv/wgz5EykyAVSOh4LvO88rbe76U+uEE
 roZcWtURGm8E35EP1SxhptazTROWY26PU5++PTdD5/o/bBAeuEwQnUjQyiK/BP6c8VPwMZWY3w
 jZ5CkgCLESTPABqNAeAOgUUAX2HovdRozPxANCngCbA6a531nRBCzgAzClgCEjeJlDWgVPyD7D
 v+xv3FmpOtgEAAA==
To: Yong Wu <yong.wu@mediatek.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2527; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=2VrBRVw7hSEZdQZNKl5eN9fbQ+qaJWa/C2dhMkcyvKY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlEc7F/R8a2dg91I4rS+9QAqXfyCLm6qoGsE40le2+
 Mvr1tdSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZRHOxQAKCRArRkmdfjHURYbNEA
 DHZRLv+8z6hKMJHRu5gGepaQHb2lJzP7V0vQekuINuMxPYuLNeXDPUNCeUY99FkVkNVKDBSm8TqASU
 MSO/n4LkVeIe2HgE8yYN6/MvHI66jTn3xMKgDTnMHRuOobXtqZ4eAHvRpM0aupGXAOKbObUMer4i/f
 BuDYz0O0nbI1OcpMQpf0paZ+jJUc/oI44QbR6COOqBmHgCjAtE7TLrMRgexFmo1Dz4B+v2KfquRirf
 XZeIyNNEIfeiDkBZrqMvjtT7w2e2hJ/bWhlgKybBJ755EPR4AQ6LFgTeIANDE0THJUnunm1BURsMHr
 CyIb9UWcBXZIssZVYOMEE1soAEaCt1Ptc+w2HbIXsIrsYCdJMuD1lAGp6vy1ZdLB5NQR9cOPMB/CHp
 YuiQpv5m+HA27qZw5Fm0MSezEygh/GmZY21eVdT9XyHf4ZJP8eWAnV0aMYju46ci3TiDsvwglxZ3ky
 XavDic1/+wx+Kf2gwCTpWo87T9BtYMZlG8GHxq5LILM2tOQJpS3StNlnLR5cR4oQr84kqdTP2lHznh
 uy3sk/MIvrHcZIxZiXIGKruRSCOO4mlb3AZGfJCvM0+eooJ7uVyy7Ov9tDR1Z+4l4+IMN1pn3ziO3b
 Y1+NAR45oOLTomSZQPKcaW3BYdEI1f1UqR5yiOiT83x7zqLiPi7QwYeexM/Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This commits are based on the Fabien Parent <fparent@baylibre.com> work.

The purpose of this series is to add the following HWs / IPs support for
the MT8365 SoC:
- System Power Manager
- MultiMedia Memory Management Unit "M4U" (IOMMU)
  - Smart Multimedia Interface "SMI"
    - Local arbiter "LARB"

This serie depends to another one which add power support for MT8365
SoC [1].

Regards,
Alex

[1]: https://lore.kernel.org/linux-arm-kernel/20230918093751.1188668-1-msp@baylibre.com/

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Changes in v6:
- Reword "AIoT" to "IoT" in the commit messages.
- Link to v5: https://lore.kernel.org/r/20230207-iommu-support-v5-0-fa6f03680832@baylibre.com

Changes in v5:
- Rebase to v6.6-rc2.
- Link to v4: https://lore.kernel.org/r/20230207-iommu-support-v4-0-84798657c410@baylibre.com

Changes in v4:
- Rebase to v6.5-rc1.
- Link to v3: https://lore.kernel.org/r/20230207-iommu-support-v3-0-97e19ad4e85d@baylibre.com

Changes in v3:
- SMI driver support and bindings patches have been removed from
  this series and sent it in another one which should be merged before
  this one.
  - "dt-bindings: memory-controllers: mediatek,smi-larb: add mt8365"
  - "dt-bindings: memory-controllers: mediatek,smi-common: add mt8365"
  - "memory: mtk-smi: mt8365: Add SMI Support"
- Link to v2: https://lore.kernel.org/r/20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com

Changes in v2:
- Split power domain patch (3) in 4 patches to explain in the commit
  messages the added subsystems.
- Add an independent "mediatek,mt8365-smi-common" compatible to have
  its own LARB bus select.
- Link to v1: https://lore.kernel.org/r/20230207-iommu-support-v1-0-4f0c81fd52c1@baylibre.com

---
Alexandre Mergnat (7):
      arm64: dts: mediatek: add mmsys support for mt8365 SoC
      arm64: dts: mediatek: add camsys support for mt8365 SoC
      arm64: dts: mediatek: add apu support for mt8365 SoC
      arm64: dts: mediatek: add power domain support for mt8365 SoC
      arm64: dts: mediatek: add smi support for mt8365 SoC
      arm64: dts: mediatek: add larb support for mt8365 SoC
      arm64: dts: mediatek: add iommu support for mt8365 SoC

 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 210 +++++++++++++++++++++++++++++++
 1 file changed, 210 insertions(+)
---
base-commit: 2b4f840a1de65d77644236c72b3f252aa2725a42
change-id: 20230207-iommu-support-5e620926e42e

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


