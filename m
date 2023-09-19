Return-Path: <devicetree+bounces-1528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD28F7A6EF5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E235F1C20B51
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50260374EE;
	Tue, 19 Sep 2023 23:03:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419B246A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A102C43391;
	Tue, 19 Sep 2023 23:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164625;
	bh=lpTHIMbq2oWtw9KUg9XlP4EOfa+BFRoIwQ8U5VAOrPU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eUSItx4oATAP4A+QA36/I62dQljE2Zn6Q2By2SlweZL8HFQSjYvTm1zRnCVSAnRip
	 oSaQXKwOFG9HmSgVTdAvJ2E1216yh1Uouq5yjxOaGyD+V975j6tn8lvt94DGmLfVTt
	 NcRV4V6UB20fijyK8tpa9yu/XvPflOH0VC+lfii9IJw1iKWADUva8z34/e+NB0zKL7
	 4qxl25KW9NA2/3GckJi1fUdHyGibywMxc6AQ5YUODrG43XhFGAz8Ubm58MdITH/k0V
	 sTazuuOdQQpTD6uRkB0jAyd893oGXp4ggdRQ3MTwRZyW5F9MeN4wEWIpd/vLWAJUOe
	 3hKRnGYFhSTIA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Georgi Djakov <djakov@kernel.org>,
	Jonathan Marek <jonathan@marek.ca>,
	Odelu Kukatla <quic_okukatla@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/4] Add interconnects to QUPs on SM8250
Date: Tue, 19 Sep 2023 16:07:34 -0700
Message-ID: <169516485973.787935.15890204075994164505.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230703-topic-8250_qup_icc-v2-0-9ba0a9460be2@linaro.org>
References: <20230703-topic-8250_qup_icc-v2-0-9ba0a9460be2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 03 Jul 2023 22:15:24 +0200, Konrad Dybcio wrote:
> SM8250 (like SM8150 but unlike all other QUP-equipped SoCs) doesn't
> provide a qup-core path. Adjust the bindings and drivers as necessary,
> and then describe the icc paths in the device tree. This makes it possible
> for interconnect sync_state succeed so long as you don't use UFS.
> 
> 

Applied, thanks!

[4/4] arm64: dts: qcom: sm8250: Add interconnects and power-domains to QUPs
      commit: 86a9264b6c56c9eee6dd5c8733f92afd3f58ce98

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

