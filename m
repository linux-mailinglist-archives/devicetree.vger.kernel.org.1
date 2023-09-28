Return-Path: <devicetree+bounces-4248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892E7B1B81
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4FD392814B7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5443937CA8;
	Thu, 28 Sep 2023 11:56:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D79374D8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:56:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE456C433C7;
	Thu, 28 Sep 2023 11:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695902196;
	bh=MqwQqZxSq+rYV16JRtX+1VS187fbXxKqzbTAVy7Reds=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pNv37D6C1Ezqi77ncDvQK5/6Z4Yn/nLr9/qrg5XNCC3rbFlduup7DQsOnAWZs8fA6
	 OXXBMVbxWJe4kwCXLfmaj6qCiu0wQCSekDH5ojmMX0WEQWaEAzteIYDAK8dYDxgWmE
	 lwkgInRQJ8ZZUxc4y9dfnSL9Su+sNDjgnwh/xu3ne3iwoTDN8uLoxriq1wFGm6+wcx
	 HZ8Fc/qfDrnTpCxWqSOad6Lp8DhvGytsZgyZA4oq2YoGirv//4ws56Tr4k3hYJPWqm
	 SsXJNTGbg7Jz2/e3/eq7q58y4rfYnxhPCqvp3IcHD7BmQ2Cufzcsbk8FQs7+upOcL8
	 6Stodsy49PM5g==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org
In-Reply-To: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
References: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
Subject: Re: (subset) [PATCH 0/7] 8550 dma coherent and more
Message-Id: <169590219144.152265.4409423880312803371.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 17:26:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 30 Aug 2023 14:48:39 +0200, Konrad Dybcio wrote:
> Qualcomm made some under-the-hood changes and made more peripherals
> capable of coherent transfers with SM8550.
> 
> This series marks them as such and brings fixups to usb and psci-cpuidle.
> 
> 

Applied, thanks!

[1/7] dt-bindings: dmaengine: qcom: gpi: Allow dma-coherent
      commit: 10c060edf581fdd0d8f23cab84e6c8546c2df8fc

Best regards,
-- 
~Vinod



