Return-Path: <devicetree+bounces-7948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E747C64BB
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:45:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA1E11C20A4B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12B6D265;
	Thu, 12 Oct 2023 05:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K0xbE6Fe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1D628EF
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:45:28 +0000 (UTC)
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD710B7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:45:26 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3af65455e7fso380185b6e.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697089526; x=1697694326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=raoSzlBu377kKldWUANth43g0MsA6j2B790E+ofOJ/U=;
        b=K0xbE6FefcE+vu+l8RaU2MEnrpvjE5hCqFluoCSO3N5IZV+qGpZ1rUm/0cy7Zefx6g
         T7L0vxm5kIf24iteZECcy0T2/s0gN5+1eV5ylwrmScVWYmrQZ4NQ0FhJhkNsbVTt0omI
         KEsFlYRA82BUG1aB4R2GKWCo7SrahAsRr9KuwD1qdfSFk3JXU0GWZfdaEVW0dC+Nims4
         tMeOhHzqnd54BNOyWWOuI1i7G/oHdLbzON84gk0wCysvR/X3mGLmUijai3+c6I6Cc9h7
         eCbBsctqITEVbJxUT/Fb2k01iMj8kcXTDSVwNjVwpxBxha6EhSBSdP4wYpJ/KtC+9gf0
         ap2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697089526; x=1697694326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raoSzlBu377kKldWUANth43g0MsA6j2B790E+ofOJ/U=;
        b=m3dZQffYW3QzFVlKHJhho/Snq70rl+yABaKZR/04gVs6kS0B1t2Hr1+Sn/D3vb5nQu
         6UHa8FSdqaYMmDoJHPn6BxDqhJmenl5apDtFEZCgB3AaECXVTY8v+RUusMk08RsPpqdS
         EMC52r+RFMW4bY1JUOkm0Sbav5Hg2cpgbOkDtU7CzKr8sxNbzB0Zxdcn5dY2CZe0iFrM
         /jXzQ32DzyxzSzWwM/Xcl1hF4V0T0GM5N9FckL+hwz5Uolz5K+qiz7v++bCqeBVtETB6
         6SQdx1u0ZvczEZxjgBOdUvVaOL+EQKXpM3xEz7+kaNLdiYJ/Yx/xM1es3Zu6H120Mq06
         pOlQ==
X-Gm-Message-State: AOJu0Yy1sEiE/ohusIUJfHQ7MKTQkvRRjpdRVsxhTOEhmDSznPyn4Yf/
	PUUBWjFCrt3nEyDAo727BkzD
X-Google-Smtp-Source: AGHT+IFVaISV/7UIfSrZc652ewcqW0S6kGKAv2RdH2i9tzTOlDpdz1KHLLqPcCZcgW0AF89218QNxg==
X-Received: by 2002:aca:2808:0:b0:3a8:472b:febf with SMTP id 8-20020aca2808000000b003a8472bfebfmr23277086oix.21.1697089526137;
        Wed, 11 Oct 2023 22:45:26 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id c5-20020a633505000000b0057cb5a780ebsm812396pga.76.2023.10.11.22.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 22:45:25 -0700 (PDT)
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
Subject: [PATCH v6 0/5] UFS: Add OPP support
Date: Thu, 12 Oct 2023 11:15:07 +0530
Message-Id: <20231012054512.10963-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

Changes in v6:

* Collected tags from Dmitry
* Fixed bindings issues reported by Krzysztof

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


