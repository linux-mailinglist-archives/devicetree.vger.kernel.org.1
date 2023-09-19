Return-Path: <devicetree+bounces-1411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 550E37A61E4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EF96281447
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2043831A65;
	Tue, 19 Sep 2023 12:00:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897361865B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:00:00 +0000 (UTC)
Received: from mx.kernkonzept.com (serv1.kernkonzept.com [IPv6:2a01:4f8:1c1c:b490::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48EEDF2;
	Tue, 19 Sep 2023 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kernkonzept.com; s=mx1; h=Cc:To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:From:References:In-Reply-To:Reply-To:
	Content-ID:Content-Description;
	bh=r3y4yFqUc5uIgQTTYbbXZv7CmCGCkwuSZZhi0rb2wK0=; b=pd76GLmVDxBF1mZweUcfDH4CSH
	DGa1R/y5nINulcIPDuIvhrDMrULp6ogSh8NLdqIMFP9J8AlsvFlHUJlDzfoqtLgCh+EbjO/MEjT9L
	L5/vVBWD50WxL+5s4lruIK1MVKtM5RlNxVJ7DlR34rbVak9dfIsWfiwHyq6TCwNjJFLsY8fpbA1tj
	E60nCsW4KeMSVnRwivOrdLR3RrGsr/7syzPmfbvSV+ofUfocJS/oPDdxsvBLg6F0mt/6ngrvpmFv9
	MHiJR2RGhhRHWtHpvmTclUMIRWfrmE0dZ6L0NmbbDRSQXsjOjuZfJqW+b+XOrH0gNUSSMnVJTzOAc
	yE4QUqdQ==;
Received: from [10.22.3.24] (helo=serv1.dd1.int.kernkonzept.com)
	by mx.kernkonzept.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim 4.96)
	id 1qiZOT-004b4T-2k;
	Tue, 19 Sep 2023 13:59:53 +0200
From: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Subject: [PATCH v2 0/4] spi: qup: Allow scaling power domains and
 interconnect
Date: Tue, 19 Sep 2023 13:59:47 +0200
Message-Id: <20230919-spi-qup-dvfs-v2-0-1bac2e9ab8db@kernkonzept.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADONCWUC/3XMQQ6CMBCF4auQWTumLTGCK+9hWJQyyITYlhYbl
 fTuVvYu/5e8b4NIgSnCpdogUOLIzpZQhwrMpO2dkIfSoISqRSsVRs+4PD0OaYx4lqNp9ImE6SW
 Uiw808mvnbl3piePqwnvXk/ytf6AkUWBNdaO1aI3qh+tMwc7OfsivR+Me0OWcv/JTvQOuAAAA
To: Mark Brown <broonie@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Make it possible to scale performance states of the power domain and
interconnect of the SPI QUP controller in relation to the selected SPI
speed / core clock. This is done separately by:

  - Parsing the OPP table from the device tree for performance state
    votes of the power domain
  - Voting for the necessary bandwidth on the interconnect path to DRAM

Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
---
Changes in v2:
- Vote for bandwidth only when DMA is used and not with PIO
- Add review tags from Krzysztof and Konrad
- Link to v1: https://lore.kernel.org/r/20230912-spi-qup-dvfs-v1-0-3e38aa09c2bd@kernkonzept.com

---
Stephan Gerhold (4):
      spi: dt-bindings: qup: Document power-domains and OPP
      spi: qup: Parse OPP table for DVFS support
      spi: dt-bindings: qup: Document interconnects
      spi: qup: Vote for interconnect bandwidth to DRAM

 .../devicetree/bindings/spi/qcom,spi-qup.yaml      | 13 ++++++
 drivers/spi/spi-qup.c                              | 50 +++++++++++++++++++++-
 2 files changed, 62 insertions(+), 1 deletion(-)
---
base-commit: baaa2957b0c6feb4ff7806b5d8e0039bd80acbdf
change-id: 20230912-spi-qup-dvfs-71fc8a5e0cb1

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Kernkonzept GmbH at Dresden, Germany, HRB 31129, CEO Dr.-Ing. Michael Hohmuth


