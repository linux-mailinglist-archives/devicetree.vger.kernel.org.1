Return-Path: <devicetree+bounces-7732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0610D7C53CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D90D01C20AF1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81B21F179;
	Wed, 11 Oct 2023 12:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ypOpv9MT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697C1DDF1
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:26:06 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E8C6E6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:26:04 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-690fa0eea3cso6083017b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697027163; x=1697631963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uv/rlRYitJnK0DrpOEwxamLSxws/97bJsaf1Cey2fBE=;
        b=ypOpv9MTQSM/x9I87a53UyCxwB6tAdg1RxsJvh5M8Dd1Hi7sWLmIrJrpCv/YaFScXg
         J/kwzjFtI+cPGnFaNP1TYRA/r8315yK4SfIAVxhrYP1oqXarshmmSpNcPFKYpm+0Mozz
         1q12WiXOG5YxhL+H30kJWg1d8PXiXVjlIoAQFxALMWKKmc+t8ULLpBqHZlFUmVOd2TuA
         FJvTUETUrzWwUddY/aLL7jOcGcvg7dEikmfkQv3W1GGFkB8i+LaBZd4O13O0Lb97ZvBk
         CnKYgjfzQ6CQndPr59kdSs4U+34WxMuHrFUbx3TCHHZctcIWxbC6tiZskLfa0kXb1XrF
         aqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697027163; x=1697631963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uv/rlRYitJnK0DrpOEwxamLSxws/97bJsaf1Cey2fBE=;
        b=vngH3MFqvddrLjtGvoQJKS8hqVujUto82QgPbLKYTgdeNlaEuENg56mGbMDPsCThHX
         mjYotNmE55W4tEHBO4v8vRbzd2TePf8uQZp6qsTsAF0HC/PnHxDqLelp1ZiczcwNukhD
         kMb/MKJOQeuD5xwfNIno5QU3h2R8h7ROFGVrvgX+oOsIXTPbZDO38o0eM2Sy1+gomnlm
         jkFaSOg3MXiYbT8JKHei915rhJXQal3rog/SIWiUpFW/EHVfpN1KbAHg9DbO0ep5zfLP
         qn6lcO0bNgCSj+jpACnlqBWjO16FPviFI+A4cA7YjhpbgodqYC2fMGh9eZ3a52WHbJxd
         bx1Q==
X-Gm-Message-State: AOJu0YxLdLI8gI5qE1p9RlvnKKvDHJGKhIuvsy3v2lOWea9qFuJ0l6Cs
	6OzoqPgNGqX84lSUX5+VImiQ
X-Google-Smtp-Source: AGHT+IHMgFvyP/ZNlgH1hd7LaMJ22CwW7IVsks4SREGW/bKUOs8S5+Yani2sRPyVQFYaval6GFImcQ==
X-Received: by 2002:a05:6a00:2d23:b0:690:c5cf:91f4 with SMTP id fa35-20020a056a002d2300b00690c5cf91f4mr23872761pfb.12.1697027163274;
        Wed, 11 Oct 2023 05:26:03 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id a19-20020aa78653000000b0068fb8080939sm9953620pfo.65.2023.10.11.05.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 05:26:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vireshk@kernel.org,
	nm@ti.com,
	sboyd@kernel.org,
	myungjoo.ham@samsung.com,
	kyungmin.park@samsung.com,
	cw00.choi@samsung.com,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	linux-scsi@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_asutoshd@quicinc.com,
	quic_cang@quicinc.com,
	quic_nitirawa@quicinc.com,
	quic_narepall@quicinc.com,
	quic_bhaskarv@quicinc.com,
	quic_richardp@quicinc.com,
	quic_nguyenb@quicinc.com,
	quic_ziqichen@quicinc.com,
	bmasney@redhat.com,
	krzysztof.kozlowski@linaro.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 0/5] UFS: Add OPP support
Date: Wed, 11 Oct 2023 17:55:38 +0530
Message-Id: <20231011122543.11922-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

This series adds OPP (Operating Points) support to UFSHCD driver.

Motivation behind adding OPP support is to scale both clocks as well as
regulators/performance state dynamically. Currently, UFSHCD just scales
clock frequency during runtime with the help of "freq-table-hz" property
defined in devicetree. With the addition of OPP tables in devicetree (as
done for Qcom SDM845 and SM8250 SoCs in this series) UFSHCD can now scale
both clocks and performance state of power domain which helps in power
saving.

For the addition of OPP support to UFSHCD, there are changes required to
the OPP framework and devfreq drivers. The OPP framework changes are already
merged and the devfreq change is added in this series.

Credits
=======

This series is a continuation of previous work by Krzysztof Kozlowski [1].

Testing
=======

This series is tested on 96Boards RB3 (SDM845 SoC) and RB5 (SM8250 SoC)
development boards.

Merging Strategy
================

Since the devfreq patch got an Ack from the maintainer, either it can be merged
to scsi tree with rest of the patches or merged separately through devfreq tree.

Thanks,
Mani

[1] https://lore.kernel.org/all/20220513061347.46480-1-krzysztof.kozlowski@linaro.org/

Changes in v5:

* Dropped the devfreq patch since it got applied
* Fixed the bindings issue reported by DT bot
* Rebased on top of mkp/scsi/for-next

Changes in v4:

* Rebased on top of v6.6-rc3

Changes in v3:

* Rebased on top of linux-next/master tag: next-20230731
* Dropped the already applied patches (dts, opp binding and framework)
* Moved the interconnect patches to a separate series:
  https://lore.kernel.org/linux-scsi/20230731145020.41262-1-manivannan.sadhasivam@linaro.org/
* Moved ufshcd_opp_config_clks() API to ufshcd.c to fix the build failure
  reported by Kbuild bot: https://lore.kernel.org/all/202307210542.KoLHRbU6-lkp@intel.com/
* Collected Acks
* v2: https://lore.kernel.org/all/20230720054100.9940-1-manivannan.sadhasivam@linaro.org/

Changes in v2:

* Added more description to the bindings patch 2/15
* Fixed dev_pm_opp_put() usage in patch 10/15
* Added a new patch for adding enums for UFS lanes 14/15
* Changed the icc variables to mem_bw and cfg_bw and used
  the enums for gears and lanes in bw_table
* Collected review tags
* Added SCSI list and folks
* Removed duplicate patches

Krzysztof Kozlowski (2):
  dt-bindings: ufs: common: add OPP table
  arm64: dts: qcom: sdm845: Add OPP table support to UFSHC

Manivannan Sadhasivam (3):
  scsi: ufs: core: Add OPP support for scaling clocks and regulators
  scsi: ufs: host: Add support for parsing OPP
  arm64: dts: qcom: sm8250: Add OPP table support to UFSHC

 .../devicetree/bindings/ufs/ufs-common.yaml   |  35 +++-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  42 +++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  39 +++-
 drivers/ufs/core/ufshcd.c                     | 179 ++++++++++++++----
 drivers/ufs/host/ufshcd-pltfrm.c              |  78 ++++++++
 include/ufs/ufshcd.h                          |   7 +
 6 files changed, 325 insertions(+), 55 deletions(-)

-- 
2.25.1


