Return-Path: <devicetree+bounces-11581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D6C7D62FF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C92D7281CAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A03D1862F;
	Wed, 25 Oct 2023 07:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tXhlcUs9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B457E18623
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:33:29 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9453310EA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:27 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40839652b97so41501835e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219206; x=1698824006; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E2eqgnAodNXL6fIehdUVCI+hakeHSDnsMXbTs0DNdW8=;
        b=tXhlcUs9DHDqh2H8uwr0Zb/91auE3/w4rH9fge7ebbh302TQmkxWmi2Nfx+km5dyEc
         ixAmyv7Uy6r8xQ0zwuGyhuahkd9zVCGGpBX5lCt+KtmZErLG1QRGblgXuBCPAMkpZeVu
         OlzpfYFk+AkZ7HGG5p1/20HI7BMH/zfsjTBiy22KzcePDIapC/4bT6mdDfLhYPvVEvY3
         33yaJv2JucBlLqwRfGjNfKw80491aRmASSa0IHsIACEDvkb05KAyzSty2ww3otQ70zjo
         U9GZzVxctSbSG4wbTru2MwmxpIfEaO7DU+bOKDdFpQyEEpM27x2vSmPm/p+/vQ+CuiQz
         WLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219206; x=1698824006;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2eqgnAodNXL6fIehdUVCI+hakeHSDnsMXbTs0DNdW8=;
        b=R6ysEQNg7u6+p1Y+4sxcPBGdis9CR/y+DgZ5k4qt3yDqkF2z98CoyXiYql/czSUrH+
         gQe+yUq08IPiajBww0u4SZruddU4C3So77eHcE/8Vft05n3nlOY3i1VsGTfTboHf/hD6
         FWtSgL1rSTqpxC2iSgEgndtQag3DwH+mY+GnY6wVjuMIMIg8eNf3e53dPzclt4oO5Egy
         joUiDoP5Ag4K+nnzp3NR2mk4w2pflgN3e68TCebOIT3PHJ/ubQKXyI0XOu/1z0isbUFJ
         /gHebbfM1v60ARLgKur33aLlPEMOnsC2qABlgEsORi94+dmqkMirviu3eNwblBHadxRF
         pu0A==
X-Gm-Message-State: AOJu0YwHS7/pCX89raUwvuw45dLnHBCGNOUBAaSnX/uzb/bQgudB49JP
	vlDr677K7893mypP9Q/dDx255Q==
X-Google-Smtp-Source: AGHT+IGR7mUTfR0Jkxhv4FTSNfI8iuxIvO+leW32Tko+z7CAQFiuYBAOOw/u8pEv9wpreB3eT+AZKw==
X-Received: by 2002:a05:600c:4f4e:b0:403:b86:f624 with SMTP id m14-20020a05600c4f4e00b004030b86f624mr10293500wmq.23.1698219205992;
        Wed, 25 Oct 2023 00:33:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k13-20020a5d628d000000b0032daf848f68sm11470533wru.59.2023.10.25.00.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:33:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] interconnect: qcom: Introduce support for SM8650
Date: Wed, 25 Oct 2023 09:33:22 +0200
Message-Id: <20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMLEOGUC/x3NPQrDMAxA4asEzRX4Bwe3VykdgqK2GiIbyw2Fk
 LvXdPyW9w4wbsIGt+mAxruYFB3wlwnoveiLUdZhCC5E7/yMvVQhtC3PyeGnWm+8bCjauVFRZeq
 Ykw9rjpnSNcII1cZP+f4n98d5/gAgqBpUdAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1627;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=isr7qGH7tBgtDgsJyFqvZhEy13eUuJCYCkZnKEkquP4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMTDXHdnY3SCIwzC0AbOIFopob6B/HV9EBNDoNQe
 w4zp+qSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEwwAKCRB33NvayMhJ0Ro1EA
 CZPdznsnpngZJYzBu9c1C9brjIk0lGjOEfMiwHWsq3BXH+MPcfiCVvcy+aWzGkmi/lFxvHaPY21auW
 YCmwB5wog+8KSo9ycR7DYlTBhlfg332XZ1bL9iX0j+rZtaZRW6G9lyPgmmHVGn8EyoA96/+yhPG4gb
 oOxTlijf+ziazFIGYeBis2czjOM1wh1VRcSg/oU1slzEoocaK+Ql2T3LG38PpGNNEyi0C6gn+wJyEH
 jpTh9LlPuFG/FGkD+o9vptjDZcqh8GuOORCGgvDFEw6mKYA7bvqzlVdhdAXeiI11yah+Jpr/N1yxLA
 w/yUGTQDqtAtVHslMEu+B4CuPzwyvNeh3CIBK+Ht7IRiJRDDmmnqXuHCTueNBbKlp37v8gV2i1E48E
 9Y6ZPQ6CYAMb6NTwDoj2nHqOPwoh3Ag66OKDSezEKe0t/0AY/KV2OwKGEM24YKtyHMoIyvTQkCFOyZ
 nv2Sfa/HxUGaFyul9TaOEnFpEmGox0mHaWUsBe1dBGrah59csSD0BoZZmfz6FoAwal/Gc9ZL6/OQBu
 F4lW1WH44cCP714pTyY+x9E07a8aj2wvqT/ZnzEbw/CutVUpylEgj8wryvb/dA0vnQ4FICD4vZqY0d
 0wGSKGj2r0+FNkYDjU92a3Th6JxTrRUyY22pVw7aFpYOa2vfqXBSVwRkHHQA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This covers the RPMh Network-On-Chip Interconnect bindings
and driver for the interconnect framework.

As reported for earlier Interconnect drivers, the IDs
for multi-rsc voting has been removed from this driver
so the proper solution can be developed without having
to remove entries later on.

To easy Bjorn into merging the DT bits, would it be possible
to have an immutable branch with bindings shared with Bjorn once
this patchset have been properly reviewed and accepted ?

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip Interconnect in Qualcomm SM8650 SoC
      interconnect: qcom: introduce RPMh Network-On-Chip Interconnect on SM8650 SoC

 .../bindings/interconnect/qcom,sm8650-rpmh.yaml    |  136 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/sm8650.c                 | 1674 ++++++++++++++++++++
 drivers/interconnect/qcom/sm8650.h                 |  143 ++
 .../dt-bindings/interconnect/qcom,sm8650-rpmh.h    |  154 ++
 6 files changed, 2118 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-interconnect-8512d838c593

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


