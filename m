Return-Path: <devicetree+bounces-40268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB4584FF27
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 22:50:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 235B21F241A0
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 21:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80C520DE8;
	Fri,  9 Feb 2024 21:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yrWBH6Ur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D53C2E647
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 21:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707515437; cv=none; b=TLM5c2ErS/60UuJQa8Qz+w3KHaYdbFocc6TvBeDZiQEtCUIxtMFEC0DZmAl31rY4BQDZbZYIGA0AiGhFaN3VXr+AwVlkOMZ/TjJ7POye1d9qf/ibpi45hnGGoQJk6h6XRYpTgNQ75I2CyvDOF/XxDTyy0jYqr3A0h+VocD9d7TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707515437; c=relaxed/simple;
	bh=rKQzbrAqqd1KguNX4sWQNmk6I70IWybw/1lw83mTeGE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NtodiyCvWl942s7DOAbXspE05ELReVCWS6avwHDXPAvhpRzWqQrMEHVCOSMxTvr/FcvXi2LBBpPwzsUFYv/MbLLdINExWUvricvJIapySFZxIZUu90Ef0GYjqd6en/seVPr0+Yl2sJEY1V9OnoB2PxOC26VR1Ox89LefV0HL1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yrWBH6Ur; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d0e2adfeefso6275701fa.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 13:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707515434; x=1708120234; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u+rbF3nCnEemCEajNhNPavQdeqUFEptSpDx1054Ejmo=;
        b=yrWBH6UrlsXdXJIbiq3jON3isa85zB2ZGsi5weHOpFtBGQd1GnFCwwF3saXgldFylU
         XkO9qgw57JSLRrgA3qate+UuCwKE8lvSRbJvGgpNKPESR8/hnqDjQn4uvF2DLxnPUX9k
         edxO6nnXu3TZAjhxBoWuzbnSrwvPtwJ0dnN4qYuBARv0zR4D0FZErVF/meml+kNUt1Qh
         I52kd1mv3De8PbEhviePRkNSS0YlK3Q3V4lSY4i2rxGBgT34DuWryCHsdzVItonymzRb
         T4Wi/0mJG0hxYA9fXCJhgGCKPdCebVvplUrwWtZj8OkFRk21YAm7eAJUG2UzwmQXlyHe
         m+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707515434; x=1708120234;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u+rbF3nCnEemCEajNhNPavQdeqUFEptSpDx1054Ejmo=;
        b=VujB4DiCXDher8AQOIEyigiK4pfwPH5hhR0M9GeowDcMiENMAwVQElM3/tmBVltRIh
         3WZ6kREz95AS3oO+tzX4rKuZ8unwG+42kW6DB+gPbjITCINSUw/z1nQZ0wRrVfzCv32r
         h1Pw8zE0h7lneZRAuJMqANxvwff3sJsVnvYfTmSEv7CDSWf7y9VH7PC3gWGtmyW6oRYo
         gC3kQ1bjGPnC81n8N4BpM5i32d5XFQFnLSl1BUZIquMAlzjQGzti7EGg8vV41VuXWYDz
         n0WrFP1B0a+6ydmkHVtfjkR4plzndr67YJbvYWjmOsmXXrcROafs0YbeBdXubATgr8mm
         zu+Q==
X-Gm-Message-State: AOJu0YwOH9iXhK8BmksNM5aROWQtppk1oQjl6iRAADvnoNAIJy8CJ+bI
	lm6lEwfAjlgzR9q9aWxaTP6HfL/H8ke5DvnlMWEQ7hxNfqunfHLMGfBDz0Z6EmcriIItCNMP8dw
	w
X-Google-Smtp-Source: AGHT+IFz2QHFwv5uOlCUQUHlkqtTgP8Il/jsPMevDS9LxI0X8AQFkCWFu1bsVicVJ9pKEkbnbDb+dQ==
X-Received: by 2002:a2e:98d7:0:b0:2d0:e3e3:1741 with SMTP id s23-20020a2e98d7000000b002d0e3e31741mr147211ljj.38.1707515433982;
        Fri, 09 Feb 2024 13:50:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUUpDNyFuN8+1VmLvSE48P2NEgJg2+HcRlmC5npjWhpN4+MO/6XONAh8WMEZx8AxNq+Do7EGh+cKv4J3AjHLsSu2ZPQqgxylerqquQ1qUxXriy2qrhVjIkm35Sg3VLRFS/sl5e0TMT5+Cu1mmi+kh/vyNOK4dYDDz3iG8fJxaxn9IqMJndJJxH8dBafIoysfyI5KQ37olrdZpjJZr6/GAhbYLhlEk7T0WmRFN9UbvD4Lfs6A9xXKnB0/BNfZolTQ0/EXdiNQ7O3wp78m6qQdj0MVTbV5wM2/uXg52Y+qYQ911PZ8iAQuIOwVH4woDRwDf/URIr2WW2i2oCw2uYMcaSAodEfuRc5IO5H+ChWcqAZGFvvMpIswcR9N52MFWpFfrSQNSFLObjlLfvXNOQMTUWMksK4oZmmDNCvVBL5nMMO6jqoOxFNgsIom0TXcsBnZmB7fkSpE4qyzHY2MuxeqKVSFdKEdowJ+6BkeU1FcC0q7SjV94N3EHcYKYOLIkJNIC7XxxaX6ChWJye3IXf+EXXCya6pUtbyReNzK2A/Jc+7D/o9QgCjHNq/c51oYMRfuz0PLbSGCgE9sCxaTdr+6NDBnufUP+JZsUQ=
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t1-20020a2e2d01000000b002d0ac71862csm391162ljt.9.2024.02.09.13.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 13:50:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/8] scsi: ufs: qcom: fix UFSDHCD support on MSM8996
 platform
Date: Fri, 09 Feb 2024 23:50:30 +0200
Message-Id: <20240209-msm8996-fix-ufs-v1-0-107b52e57420@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACaexmUC/x2MywqAIBAAf0X23IJJhPYr0UF0rT30wKUIxH9PO
 g7DTAGhzCQwqQKZHhY+jwZ9pyBs/lgJOTYGo82gjXa4y26dGzHxi3cSTFZ7GuMQbUjQqitTU/9
 xXmr9AJWt2M9hAAAA
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>, 
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <andy.gross@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1507;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rKQzbrAqqd1KguNX4sWQNmk6I70IWybw/1lw83mTeGE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlxp4nyDM+WqikJcdCR3OxYK+ULxdVpwllYvvpi
 5uMDkOKfuOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZcaeJwAKCRCLPIo+Aiko
 1RriB/4uUwlvDLEK8SEuSLnr6FF4OM6MMcUY/RLeXoWmSEt4kKwF6/SYA+Xruc86HnUzJaN8R7x
 mgXBiK4lintHRkl0iSzn1jYsCQuFugEP5DkY1zTBwL66qMPEg61ElpgfboNzZPDa7daRRWhM2ul
 JEKyTqwDEBPQqBUqwKBAXlAFYlQJ2Qqy+/N98TF901yzAFzWz08jwkTnfNM8CDYr0kKM5dq6LzE
 iTIPM4lvEqFf5rdjjeuuuLiX6gG+QolAeCLyvgYP6sPzwf37EXvRsMX1l8CTbOxovlcr8QyYuKJ
 b0xToY1KPR3BtHr4INlpI0wJ5aybidch/oFt8Qe3eEt5Qh9t
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

First several patches target fixing the UFS support on the Qualcomm
MSM8996 / APQ8096 platforms, broken by the commit b4e13e1ae95e ("scsi:
ufs: qcom: Add multiple frequency support for MAX_CORE_CLK_1US_CYCLES").
Last two patches clean up the UFS DT device on that platform to follow
the bindings on other MSM8969 platforms. If such breaking change is
unacceptable, they can be simply ignored, merging fixes only.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (8):
      dt-bindings: ufs: qcom,ufs: add second RX lane on MSM8996 platform
      scsi: ufs: qcom: provide default cycles_in_1us value
      arm64: dts: qcom: msm8996: unbreak UFS HCD support
      arm64: dts: qcom: msm8996: specify UFS core_clk frequencies
      arm64: dts: qcom: msm8996: add second UFS RX lane on MSM8996 platform
      arm64: dts: qcom: msm8996: set GCC_UFS_ICE_CORE_CLK freq directly
      dt-bindings: ufs: qcom,ufs: drop source clock entries
      arm64: dts: qcom: msm8996: drop source clock entries from the UFS node

 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 13 ++++++-------
 arch/arm64/boot/dts/qcom/msm8996.dtsi               | 13 +++++--------
 drivers/ufs/host/ufs-qcom.c                         |  6 ++++--
 3 files changed, 15 insertions(+), 17 deletions(-)
---
base-commit: 13e3d132c10bbb94e4efe7824f4aff317969cd17
change-id: 20240209-msm8996-fix-ufs-f80ae6d4d8cf

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


