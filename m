Return-Path: <devicetree+bounces-24930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A908D811B0B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D10491C2083F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F53524AE;
	Wed, 13 Dec 2023 17:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSK9zqs1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15C91DA3D;
	Wed, 13 Dec 2023 17:31:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94620C433CB;
	Wed, 13 Dec 2023 17:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702488711;
	bh=WYg99u3oYCV70ieWzKifcKaZ5J0do6axiMJ6JXN+PN8=;
	h=From:To:Cc:Subject:Date:From;
	b=qSK9zqs1XFYvKBMPCU0/mde3b1+CccZfagTz5zhX+L7LS+JDOqzBfI8o4Ev3oD3Y0
	 ACUZ1NgRHiQvRBVqqgJRqjsGb+Ly9bmy7cwaLBPNdn2te7W9L9Zstp8Jn4KFbBIols
	 cu4nBAODjuMXxnbJTjLN36n/wJqSy8Xck5LKGKsyo1rIJ6S4nHOKBZTnydwEqp0sIm
	 L2LLPFPICODwnM4633YXEuwK4c7o1iI5EPXTtXX+OKcif9clh2UnyNr+FQWyPqH+iO
	 X7gcmWiQklFdepMUHf7am1VG+kwl5zyXW2gIex4dBCV7WZsU6NvPFmbW1iI939waxa
	 wCnQLCZBoskGA==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1rDT5I-0007f7-0j;
	Wed, 13 Dec 2023 18:31:48 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] ARM: dts: qcom: sdx55: fix USB wakeup interrupts
Date: Wed, 13 Dec 2023 18:31:28 +0100
Message-ID: <20231213173131.29436-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB DP/DM HS PHY interrupts need to be provided by the PDC interrupt
controller in order to be able to wake the system up from low-power
states and to be able to detect disconnect events, which requires
triggering on falling edges.
    
A recent commit updated the trigger type but failed to change the
interrupt provider as required. This leads to the current Linux driver
failing to probe instead of printing an error during suspend and USB
wakeup not working as intended.

While at it, fix also the SS PHY interrupt so that it too can be used to
wakeup the system up.

Thanks to Krishna for providing the PDC interrupt vectors.

Note that these patches have not even been compile tested.

Johan


Johan Hovold (3):
  ARM: dts: qcom: sdx55: fix pdc '#interrupt-cells'
  ARM: dts: qcom: sdx55: fix USB DP/DM HS PHY interrupts
  ARM: dts: qcom: sdx55: fix USB SS wakeup

 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
2.41.0


