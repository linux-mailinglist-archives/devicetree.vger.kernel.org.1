Return-Path: <devicetree+bounces-1976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A55C7A9545
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0397F281BC7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01A0BE5F;
	Thu, 21 Sep 2023 14:29:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D12BA3A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CF6C4E764;
	Thu, 21 Sep 2023 14:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306586;
	bh=HPNrgxZmgDrK/7v8w1qWsE4OijoieBpRZDKxz/upQ20=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BtH1ChD9v3Lhaimr7O4iFGTSAiQZu4lSCYhz2K+x9Z7DmqGsODmZnFO/tEo9Exnqg
	 XUwyIE3AqFA+nQy8qDyspp+6lU7AUcELyyug+/MvtklzQXMYaqklyBqyEZJ77MSuky
	 Ux8t6gzVFuD1ZGdYO4lK8+01rMNheQ0tM1Q+R2S1fhB3vGirg63wf6bzm/2Rj6Amn/
	 mIC6CrR/HVJWhV2tlZWo2R2QxmbJ7X3PLl3iPHUCJtkg/Tc+AWQtrRxh01+DRtPJN6
	 66R9mxWdzrQs0mKX2s2AvYOImdFD0sj+55fMAxD9KMhUOkEO/K9uRsU9j4Cc/9ELRd
	 h3AZ8hq1/2hfw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
Subject: Re: [PATCH v2 0/4] EUSB2 repeater init sequence override
Message-Id: <169530658362.106263.16903519035871193100.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 13 Sep 2023 11:53:22 +0200, Konrad Dybcio wrote:
> The EUSB2 repeater goes through a tuning sequence as part of its
> initialization. This series ensures the tuning is "clean" and can be
> overridden for devices that need it.
> 
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
      commit: 2da73b4e0cf1d9847483fe474ce27af987bfb614
[2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields
      commit: dcc8a942852f00845e75c49ca8a7a6865d6b669d
[3/4] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs
      commit: af1c6ec341c3a1cc396784b2ce4619aec7be3e34
[4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning overrides
      commit: 05733bd60f7aa4f260a2837574555bbd3b847cca

Best regards,
-- 
~Vinod



