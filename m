Return-Path: <devicetree+bounces-34080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C778F838997
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DD731F2609F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EF058115;
	Tue, 23 Jan 2024 08:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zKpM9PPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AD156B99
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705999874; cv=none; b=eXDqk4jD5380Z8/X4Tf2mJGWCHDyP946OK8NfbLQ+567nkq8ShsVkllHWvK9G+TwGmzO2KhD1vY/Sy/MXeNFqbAc61RR/wtkYq6IW1gcP8TRlPLNM237WcNjxxxVdTy0jm8TezllYXjBQPyGWCJGvCTpASvZqHR6IkVUas4f9zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705999874; c=relaxed/simple;
	bh=+gcmOjMQPqlDY3Wgjuyd44I6g+LXA/PY7PT+sGIxmyQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jj5NDJ76wS8QIbBu4GBxhNy1wuWaFBwZu/nx/0OITaGuLQ1fr4UDUdf5E5J1M8GBfCnXc4t0q6QVkOFDRrxAb/HShWRPqKBPFlWRwlzG15gpTNDjXJPaVB7LtnzlcVGJUiUv3nyyIWHfnJjnVfmbHj4nOcjtEVxrZlORGvX2Gcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zKpM9PPP; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e72a567eeso48750765e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705999869; x=1706604669; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DaGJoLogihiL/0UHUPbyeYeS+Spf1Z+WxpkchPy4Grc=;
        b=zKpM9PPPxvH5kyuqvxz+DmOmK0TC5bEM9seJ1XtUomb8sJcZ5tl830uHnBalqXwKPV
         Sma58VnJZHpT/9VVPqURbqWGPslEWo0Kc+yZ8VGAT587+ZonfKxncnUgbsLPROVhWwgs
         1g5HoNIZcSUQGLQHBCWtNpdpGeD8DIjYBRyxLu+EgYten2TG2a63eQscpPI71seYn6b+
         QRHHy7SBsf2uKq15e7FhZS8i/D1X/gBreWI7gay9mLKkxKqyDCCmKK9hmjdO5/Wq6QC3
         ajTW4uiugO6wCltUeWyKSmFWcaqWB2OC5rrAPSZ/GhAx83TbxFzfGpeyqrShFPPv5wq/
         v7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705999869; x=1706604669;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaGJoLogihiL/0UHUPbyeYeS+Spf1Z+WxpkchPy4Grc=;
        b=m8c1w3KitA8clsUH1v9F5SsJAnGs4kswxYjvdUhdcfJ2O1YnzO/K9Azax3+xak/3LQ
         fdDi1IIylnJNHM7e3NsdUuuS3xdj/++XuRXOuZqfsy28/gxo21YhpoyJKso607y67B3u
         Mc9wPIXltSwyv8R66d3Ik63+kWfRAYW2YkU70NQ8qdYRbbPlmcon4zdPDZJVjsc8X2rq
         DpHXSwD3Xsg7tN/e60I5pg3Z+eN+bLTd9xL4pLV/p+EZ2aDUVSQE4rCTocn0OWlKJirx
         iIVTOrO4PG4J+eCw5WCI7TeRRZA1JpIxICBsWNYx3Zy3E9Ne+NhJkT8LiuWtstB8B/z6
         g54w==
X-Gm-Message-State: AOJu0Yzz1vx97sAXFuIjbWkJywIgSOZN9LkDPr3KsB9VRjdeQBd0Qpay
	8k7zPBcMQWd4ueqnrPFPjQBBvTPJw0DtGZ08sMPhfsrlWpuNbvb+dMKPykCY9Bxzb7ObGjpRto5
	NYSkY4Q==
X-Google-Smtp-Source: AGHT+IHb5DtsEtadnShum/J2/T5bgjpckJw73/YgilXwYlRseylnCK8hCZ/tS4FFrOg5ZKxUgJ3h4A==
X-Received: by 2002:a05:600c:3aca:b0:40e:5979:f91d with SMTP id d10-20020a05600c3aca00b0040e5979f91dmr179780wms.183.1705999869527;
        Tue, 23 Jan 2024 00:51:09 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m35-20020a05600c3b2300b0040e541ddcb1sm41847342wms.33.2024.01.23.00.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:51:09 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v7 0/4] remoteproc: qcom: Introduce DSP support for SM8650
Date: Tue, 23 Jan 2024 09:51:01 +0100
Message-Id: <20240123-topic-sm8650-upstream-remoteproc-v7-0-61283f50162f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPV9r2UC/43QTW6DMBAF4KtEXteVPf6lq96jysI2Q2KpYGRTl
 Cri7jVRpVCxKMs3i+/NzJ0UzBELeTvdScY5lpiGGszLiYSrGy5IY1szAQaCM67plMYYaOmtVox
 +jWXK6HqasU8TjjkFqrWzBtHrDpFUZszYxduj4uNc8zWWKeXvR+PM1+kvDup/fOaUUWdbYCgDc
 hveP+PgcnpN+UJWfYaNKNgBEaqoWYOoDCBzsBPFU+TswANmUcXWtzI479BLsxPlUwRmD4hyvbr
 RQaDqWMPFTlQbkcMBUVURjWwcd9KCtjtRb8UjO+oqipZrL0zHlfR/xGVZfgBT2APkawIAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Mukesh Ojha <quic_mojha@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3254;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=+gcmOjMQPqlDY3Wgjuyd44I6g+LXA/PY7PT+sGIxmyQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlr336qQtgKcKrq3FzSf8QH5kAWaCEPmRW+jAqWeJK
 /j0Cy7WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZa99+gAKCRB33NvayMhJ0Q/wD/
 9Uv5inVk+Lysd6DSXn6xNd8s7uE9SPU083joPw2XoLaUYxyhPs9Gn/61SvkaKsDhJzsZqXHuUtYn47
 PCOx3JVQ+ahnnh9XT2EgUvSZyAiXkXYBhnO8Ea2wJL8TwpyGLKiP5Hm3m/NKQZtuf5RHxOkUmhXCyA
 4rLgeo1+rB+OlQBx94YnnKgin9KypzGWyC8iKS/tRhBwM9KZ78PkSP2K6kqqYNbYqKyx5IaeNVbCPB
 4ljpGXJUx/Pwg9bLJvuURFzMiIDiM+9XQFkrg3RjqgYg23XuO7ij+fKOIIAjZJ1pYlStzo8d8tLiyH
 7/hb2VEup3cAt7DwArTBIe56FsvpN4eZhzjqGazaG5YucMFQvzJWHgxdI535PNN2KXYgDev7lGBIBb
 YwNd+F1MiCmf0Y74jGv/W2h5HGwDMPpCymPYDz1MJFTT2l+XsO9KbJbgxMkPUy9++z3LQEy5saR1ol
 VjuQnpYHkwWxfB+oX5bIai4XriSZO/NDb36ZgJzN2pyJV8qus6Ri6AiqvRZgwr4nNJzLQVV534dkzf
 499OidR7+wz9PZjLa6QxVns9Jx3jVliNYqgABb8IBpPPQASgk0aKWPhrYtKt3TBEyv0t77Z1IgHUa8
 6pByja4mzRH/zBJ/i9QBQvsrBhhHeyPdOSWR7bwBxFSwyZQU+qgysvbSfy5w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the bindings and driver changes for DSP support on the
SM8650 platform in order to enable the aDSP, cDSP and MPSS
subsystems to boot.

Compared to SM8550, where SM8650 uses the same dual firmware files,
(dtb file and main firmware) the memory zones requirement has changed:
- cDSP: now requires 2 memory zones to be configured as shared
  between the cDSP and the HLOS subsystem
- MPSS: In addition to the memory zone required for the SM8550
  MPSS, two more are required to be configured for MPSS
  usage only.

In order to handle this and avoid code duplication, the region_assign_*
code patch has been made more generic and is able handle multiple
DSP-only memory zones (for MPSS) or DSP-HLOS shared memory zones (cDSP)
in the same region_assign functions.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v7:
- Rebased on v6.8-rc1
- Add another memory region for MPSS, in bindings, code and DT
  - Kepts Krzysztof's review on bindings after agreement on irc
  - Kept drivers patches reviews because it's only a miminal change (value 2 -> 3)
- Link to v6: https://lore.kernel.org/r/20231218-topic-sm8650-upstream-remoteproc-v6-0-3d16b37f154b@linaro.org

Changes in v6:
- Rebased on next-20231218, last patch did not apply anymore
- Link to v5: https://lore.kernel.org/r/20231212-topic-sm8650-upstream-remoteproc-v5-0-e749a1a48268@linaro.org

Changes in v5:
- Rename _perms to _owners per Konrad suggestion
- Link to v4: https://lore.kernel.org/r/20231208-topic-sm8650-upstream-remoteproc-v4-0-a96c3e5f0913@linaro.org

Changes in v4:
- Collected review from Mukesh Ojha
- Fixed adsp_unassign_memory_region() as suggested by Mukesh Ojha
- Link to v3: https://lore.kernel.org/r/20231106-topic-sm8650-upstream-remoteproc-v3-0-dbd4cabaeb47@linaro.org

Changes in v3:
- Collected bindings review tags
- Small fixes suggested by Mukesh Ojha
- Link to v2: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-remoteproc-v2-0-609ee572e0a2@linaro.org

Changes in v2:
- Fixed sm8650 entries in allOf:if:then to match Krzysztof's comments
- Collected reviewed-by on patch 3
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org

---
Neil Armstrong (4):
      dt-bindings: remoteproc: qcom,sm8550-pas: document the SM8650 PAS
      remoteproc: qcom: pas: make region assign more generic
      remoteproc: qcom: pas: Add SM8650 remoteproc support
      arm64: dts: qcom: sm8650: add missing qlink_logging reserved memory for mpss

 .../bindings/remoteproc/qcom,sm8550-pas.yaml       |  45 ++++++-
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |   8 +-
 drivers/remoteproc/qcom_q6v5_pas.c                 | 150 ++++++++++++++++-----
 3 files changed, 167 insertions(+), 36 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20231016-topic-sm8650-upstream-remoteproc-66a87eeb6fee

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


