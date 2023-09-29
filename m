Return-Path: <devicetree+bounces-4695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA277B37A6
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:16:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3C85D28455C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13DE521CE;
	Fri, 29 Sep 2023 16:16:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36716C8E0
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:16:51 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D661AE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:49 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3214cdb4b27so13273943f8f.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696004207; x=1696609007; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6B/E0C5Y9HDPBbLwfMxu8cDXR2QSrQXT/5EMKQgQGJ4=;
        b=yYLYY15TvCfxbDTHxFLQaq01iSQ1lJiSBMoq8yXGMNx4VsFpj3Qfw+fQZs8Bu6QU3c
         B37pmYP5tY01XuS1wXjCk2SsdQo/JhpBqO+b10Tba2+k8ykCoWrupCstufaSZAmk7x6o
         j1rUpI9psQYXd2xK1lnbaXFRUggHnZc1RvwdtFIlDd75nOQNoMRRypY8cW563SGztviH
         7p9v47VtTlOvJh2yWilAymBgdCsxp2JXQpN4XQB4zwwcChLGh4vBl6jXr6p3HSZPkhxS
         JkYFZptVvRI8Yr3nCu5zWs1GdC1/uI9uO4hzNF9X6ahl6qU6YC8Vv6UVwVZLDohrPqJ5
         Uhzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696004207; x=1696609007;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6B/E0C5Y9HDPBbLwfMxu8cDXR2QSrQXT/5EMKQgQGJ4=;
        b=rSoSS4fImy+0YInQIvgDfNHFCL38N8usV58DV3fedpIRcn/gfFx6qnILOBsNTDZCMG
         R/i9unWX2pAqXtaRIK1bVOJLW9wIc1GsheAgbSvf3qKH356M/zqtQ4iJg2+mhLqkpSzH
         KStL72B+Zuk2NZU0ci8sHiNtaRIo7EdENgENLYY3ezJB5Nxtsiw9NLRMpIf5l+4cGE7X
         kofwJoXIkbv6m0HuR4129/HzWKBhwu/Zv/SMr/JrQWyTDNr7CN4YOBmWhjnxLFmfGI2U
         nA5iOlBonEdfWqYCx99Dilj6lVsHcbAtUJLo33uvqUfYNFbceXu05u2drzz6en8IcCBP
         TarA==
X-Gm-Message-State: AOJu0YzcbfHFZScsSMPOLaZxpP0MVo8QGYKIZ8dvVR9cQICSoCEtkWLO
	gUXprYHdhbz2+IshvnRK9/e1tg==
X-Google-Smtp-Source: AGHT+IEURs7bInoQ81f7TxnaWBu2zV/xWMNibaPJeamfCDb/iMreoEFs2yEUilVfvFeJeX7kmmcn5g==
X-Received: by 2002:a5d:6687:0:b0:317:5b32:b2c3 with SMTP id l7-20020a5d6687000000b003175b32b2c3mr4321868wru.6.1696004207465;
        Fri, 29 Sep 2023 09:16:47 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id x15-20020adfcc0f000000b0032330e43590sm10226848wrh.22.2023.09.29.09.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 09:16:47 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/4] thermal: Introduce Qualcomm Thermal Mitigation Device
 support
Date: Fri, 29 Sep 2023 17:16:16 +0100
Message-Id: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFD4FmUC/x2N0QqDMAwAf0XyvLK2Q8X9yhgjzTINaOvSKQPx3
 1f3eBzHbZBZhTNcqw2UV8mSYgF3qoAGjD0beRYGb/3FdrY2hCMH857kQSmNEntTN65pkbo2OA+
 lC5jZBMVIw1Eu83nC/GE93Kz8ku//d7vv+w9mbY5tfwAAAA==
To: Andy Gross <agross@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1836;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=VEPqvD4CC9Ro8CIyvLwYQ44Yqd1l9r+l5d1hnsJWdDY=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSxH3klzcXeAlrxp/SMEmubHvy+v/Pz6aIZZnN/z4yqb
 XgWwRTTUcrCIMjBICumyCJ+Ypll09rL9hrbF1yAmcPKBDKEgYtTACYy9yvD/4JJz5Q/nWj62xgR
 9/veg2NzQgtiTpUePXFx0n2llyb7r29g+J8llnla/JdiqdPm+b+vziv6oz+D5/ieSTuev+lQn/B
 Rfl49AA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Thermal Mitigation Device (TMD) Service is a QMI service that runs
on remote subsystems (the modem and DSPs) on Qualcomm SoCs.
It exposes various mitigations including passive thermal controls and
rail voltage restrictions.

This series introduces support for exposing TMDs as cooling devices
in the kernel through the thermal framework, using the QMI interface.

Each TMD client is described as a child of the remoteproc node in
devicetree. With subnodes for each control.

This series is based on previous work by Bhupesh Sharma which can be
found at [1]. I'm sending this as a fresh series as it has been a
year since the original version and I have rewritten most of the driver.

[1]: https://lore.kernel.org/linux-arm-msm/20220912085049.3517140-1-bhupesh.sharma@linaro.org/

---
Caleb Connolly (4):
      remoteproc: qcom: probe all child devices
      dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
      thermal: qcom: add qmi-cooling driver
      MAINTAINERS: Add entry for Qualcomm Cooling Driver

 .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  13 +
 .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +
 .../bindings/thermal/qcom,qmi-cooling.yaml         | 168 +++++++
 MAINTAINERS                                        |   8 +
 drivers/remoteproc/qcom_q6v5.c                     |   4 +
 drivers/remoteproc/qcom_q6v5_mss.c                 |   8 -
 drivers/thermal/qcom/Kconfig                       |  13 +
 drivers/thermal/qcom/Makefile                      |   1 +
 drivers/thermal/qcom/qmi-cooling.c                 | 520 +++++++++++++++++++++
 drivers/thermal/qcom/qmi-cooling.h                 | 428 +++++++++++++++++
 10 files changed, 1161 insertions(+), 8 deletions(-)
---
base-commit: 9067f80db58bbce81d5f0703aa2fd261e88bc812

// Caleb (they/them)


