Return-Path: <devicetree+bounces-8626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7D7C94CA
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08E101F217C7
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 13:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C781C12B77;
	Sat, 14 Oct 2023 13:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C63812B6B
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:38:41 +0000 (UTC)
Received: from srv01.abscue.de (abscue.de [IPv6:2a03:4000:63:bf5:4817:8eff:feeb:8ac7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EDDFCA;
	Sat, 14 Oct 2023 06:38:37 -0700 (PDT)
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 3DCF11C071B;
	Sat, 14 Oct 2023 15:38:33 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
Received: from fluffy-mammal.fritz.box (dslb-088-078-204-065.088.078.pools.vodafone-ip.de [88.78.204.65])
	by srv01.abscue.de (Postfix) with ESMTPSA id BDDE71C071A;
	Sat, 14 Oct 2023 15:38:32 +0200 (CEST)
From: =?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	=?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v4 0/3] pmdomain: qcom: rpmpd: Add MSM8917 and similar SoCs
Date: Sat, 14 Oct 2023 15:38:20 +0200
Message-Id: <20231014133823.14088-1-otto.pflueger@abscue.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add RPM power domain definitions for the Qualcomm MSM8917, MSM8937 and
QM215 SoCs. These SoCs all have the same power domains (VDDCX and VDDMX
in voltage level mode), but different regulators are needed for QM215
because it is used with a PM8916 PMIC instead of a PM8937 PMIC.

---
Changes in v4:
- Rebase on latest next as of 2023-10-14 with new SM7150 compatible
- Add missing Reviewed-by (if there were no changes to rebase on, I
  would have simply resent the patch)
Changes in v3:
- Sort compatibles in device tree binding documentation (suggested by
  Krzysztof)
- Rebase on latest next with genpd subsystem renamed to pmdomain
Changes in v2:
- Fix typo in patch description: VDDMD -> VDDMX
- Split MSM8917 and QM215 changes (suggested by Konrad)
- Remove redundant qcom,msm8937-rpmpd entry from rpmpd_match_table
  and use a fallback compatible instead (suggested by Konrad)

Otto Pflüger (3):
  dt-bindings: power: rpmpd: Add MSM8917, MSM8937 and QM215
  pmdomain: qcom: rpmpd: Add MSM8917 power domains
  pmdomain: qcom: rpmpd: Add QM215 power domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml | 81 +++++++++--------
 drivers/pmdomain/qcom/rpmpd.c                 | 91 +++++++++++++++++++
 include/dt-bindings/power/qcom-rpmpd.h        | 21 +++++
 3 files changed, 156 insertions(+), 37 deletions(-)


base-commit: e3b18f7200f45d66f7141136c25554ac1e82009b
-- 
2.39.2

