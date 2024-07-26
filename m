Return-Path: <devicetree+bounces-88309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3AE93D1FB
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 13:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99B482827A2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 11:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03B0179955;
	Fri, 26 Jul 2024 11:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KtNCe0t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030A71791EB
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 11:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721992723; cv=none; b=qodYBZ2gACGJQvEK7vcsO6h5nV3DdgH9EjiH+XlS9a3pKc2aEE+4/v9/3AAXvfVctP/7KrJRikkjH2r4VPyZk7sTr3Z4RAc9wl8EIXpE9UbBk4nInhSsG5v5JZfsYPi/aPY+z3cTD6F2bQENPeknr/8VLWVAbprGKgeBR/8hxHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721992723; c=relaxed/simple;
	bh=iPIs676Ucz0BFAPc0hUibqb4aH8rrVS00mYl6TySE0A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qQVynBJNaurRThCGr7jtmp5txa0VahzIPIpPI9eSkNk3ypUdu8GDbuKzyMqpklV3VvgStbILF101kbqqLVwm+4pPQNWpjpTuOPEC7glMnEYgdHpWlCHBmU3p7W6w8ghDzCUGM9He/Bu9CzDS2e/pdDb43LLFKQpD41qIcVvU6XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KtNCe0t8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7ac449a0e6so137843366b.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 04:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721992719; x=1722597519; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s1uKdlL0wSEZi8PR/aafT2ubUVc/pu4j0AuCIvADTbc=;
        b=KtNCe0t8hwo/JeZ1RpiXPi6B17rEl17TzflU14ekmqAvEraiZIU0DYmoJ6+aOrSCuw
         87U9P172wvUHUT8eHxai8h+P8RNgcyHvSFvZzHMcT5EbTIiGiVl/yppzs2nSJVo21wEL
         Y2YVd6IWTVlizoztTneFcPxJ69HG/uNGZbbboEb5fkeMw0iEdpwp0AK8gmDztoN1QySS
         gOZI/LKiTE+M9I1WrH+YZlpXn98EQD4yF8S5lE+zx9QFH+47gCJMxYTqhAS1yE1stxR7
         m/d05XovuFMDBYx5sfwvOVC6HVaXQP/xfD49VmQaXTwl1N4xD1801g66/tFQZ5ebpmPp
         q1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721992719; x=1722597519;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1uKdlL0wSEZi8PR/aafT2ubUVc/pu4j0AuCIvADTbc=;
        b=aJYgIcTDqrAEP4eVkm58E1RsEbAwaR8nr76bzAJ/7xqUD83FKQ7Bkw0xlo5K5uNkHC
         u4iYpPOeNeWdQYhIyBIILL+XxQ3uI+W2BGDQQCJwm+SRf5OmGPk8l1N/M77lcPMhoh30
         +k56f884KGXguGbz4z9Z3toXrTz3+KAZoIr7RYoBCKS42iJL8JbiCSpmOSNKuk1bKzmj
         1xygKuQe3lji9sqD7dDdjXKLnKz3iaXi/ljHuZCwQF2llkTErk2+GMsnhLcmzJbWReoH
         iXl18OZpjjVyOkZSCSbPFJliBLJWtS+ztpVzChxYCVyYfHWXS1MyOBxGh7Dpux1kiH81
         /qjA==
X-Forwarded-Encrypted: i=1; AJvYcCVCkG6Iku0Jo9bCdBeAlUKa4QdhokCxHu5G7pQDJPi4/AYzgZiFmnOStIoNNCgWi/IurxPz6BVRgZXI6SpvO7PmxF65dltI2tEVsw==
X-Gm-Message-State: AOJu0YzfpgzAYzCahPMipFIixyGHS2CnabT37AlKELJ9D63zSHPnX0tv
	wvczS90cXm0MklN/qKp8Xm7o36raymnpQazB0fEL5FVTgd59ntPxlxz2bBw0PN8=
X-Google-Smtp-Source: AGHT+IGHu6xTju0RbmaTB0Dy2P+ddiDMN8D4wOU+C0PeZvuRz87E8qSyxApkJD6EGVWwoobzF5Xq6w==
X-Received: by 2002:a17:907:2d24:b0:a7a:9d1e:3b26 with SMTP id a640c23a62f3a-a7acb549275mr421259766b.37.1721992719060;
        Fri, 26 Jul 2024 04:18:39 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab233aasm164703166b.8.2024.07.26.04.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 04:18:38 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
X-Google-Original-From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH 0/3] Update Konrad Dybcio's email addresses
Date: Fri, 26 Jul 2024 13:18:22 +0200
Message-Id: <20240726-topic-konrad_email-v1-0-f94665da2919@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP6Fo2YC/x3MQQqAIBBA0avErBNMo6SrRITaVEOloRFBePek5
 Vv8/0LEQBihK14IeFMk7zKqsgC7arcgoykbBBc1b0XDLn+SZZt3QU8jHpp2priyjeTGGqkhh2f
 AmZ5/2g8pfQKYJ6pkAAAA
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, iommu@lists.linux.dev, linux-gpio@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721992717; l=2541;
 i=konradybcio@kernel.org; s=20230215; h=from:subject:message-id;
 bh=iPIs676Ucz0BFAPc0hUibqb4aH8rrVS00mYl6TySE0A=;
 b=y37EdpPnKb8Uuo1vP3UyO10uS4Yy5aBrR7It7aQ9tbVd9QdazQPQ5o2NGj8MGWFoSa4MRnPPc
 DnUX7Yunj3PCdZV2CImioEtUcYA9dZXN1FNJa0bSpthvfs1q3b+CGmz
X-Developer-Key: i=konradybcio@kernel.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Patch 3 should probably go straight to Rob's dt-bindings tree

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
---
Konrad Dybcio (3):
      mailmap: Add an entry for Konrad Dybcio
      MAINTAINERS: Update Konrad Dybcio's email address
      dt-bindings: Batch-update Konrad Dybcio's email

 .mailmap                                                            | 2 ++
 Documentation/devicetree/bindings/clock/qcom,dispcc-sm6350.yaml     | 2 +-
 Documentation/devicetree/bindings/clock/qcom,gcc-msm8994.yaml       | 2 +-
 Documentation/devicetree/bindings/clock/qcom,gcc-sm6125.yaml        | 2 +-
 Documentation/devicetree/bindings/clock/qcom,gcc-sm6350.yaml        | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6115-gpucc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6125-gpucc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6350-camcc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6375-dispcc.yaml     | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6375-gcc.yaml        | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm6375-gpucc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm8350-videocc.yaml    | 2 +-
 Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml      | 2 +-
 Documentation/devicetree/bindings/display/msm/qcom,sm6375-mdss.yaml | 2 +-
 .../devicetree/bindings/display/panel/asus,z00t-tm5p5-nt35596.yaml  | 2 +-
 .../devicetree/bindings/display/panel/sony,td4353-jdi.yaml          | 2 +-
 .../devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml          | 2 +-
 .../devicetree/bindings/interconnect/qcom,sc8280xp-rpmh.yaml        | 2 +-
 .../devicetree/bindings/interconnect/qcom,sm8450-rpmh.yaml          | 2 +-
 Documentation/devicetree/bindings/iommu/qcom,iommu.yaml             | 2 +-
 Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml    | 2 +-
 Documentation/devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml     | 2 +-
 Documentation/devicetree/bindings/pinctrl/qcom,sm6375-tlmm.yaml     | 2 +-
 Documentation/devicetree/bindings/remoteproc/qcom,rpm-proc.yaml     | 2 +-
 .../devicetree/bindings/soc/qcom/qcom,rpm-master-stats.yaml         | 2 +-
 MAINTAINERS                                                         | 6 +++---
 26 files changed, 29 insertions(+), 27 deletions(-)
---
base-commit: 2347b4c79f5e6cd3f4996e80c2d3c15f53006bf5
change-id: 20240726-topic-konrad_email-808c630bcb3a

Best regards,
-- 
Konrad Dybcio <konradybcio@kernel.org>


