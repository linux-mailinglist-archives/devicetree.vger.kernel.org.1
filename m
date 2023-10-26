Return-Path: <devicetree+bounces-12184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5D47D8430
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 291D91C20DD1
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40AB92E418;
	Thu, 26 Oct 2023 14:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B075zTCH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2039F2E3F5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:06:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96B39C433C7;
	Thu, 26 Oct 2023 14:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698329194;
	bh=Q4T6YNzviV/YhhhKEggjgAtYZp6sRLmfAiT+GEWyp3U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B075zTCHd/tWysLniMnrAMRXcPLl2UYXlI+l1xr4i5FzX9y5Sks28UYfwdbmUqOoR
	 BPEq2fwy80rE64HaHMSwat+FWzGVuRvUs5tnSvelnvE2hk8iMv5e26xjnzjXi2nVBr
	 2Ve4wm/qYcbrJbbq63Jd+7C7dhewgI23qjPLnRlHr0JaRpnfgj/He2EPzQsmfzzKM/
	 OH8p5mrRjYAZZwZu+lmxeW79yQBB/xFZbi9w3Twh2vDG3ld7pw7LbtneJrTocuBXVO
	 mHUURrsbEoGTHNOFBBYL/KvaTIOqFL7fao8IkQeXq3X+unQXUVdJFTuAuAvkhGXOim
	 ZuLW/+Dt99mXg==
From: Mark Brown <broonie@kernel.org>
To: andersson@kernel.org, konrad.dybcio@linaro.org, lgirdwood@gmail.com, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com, 
 abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 quic_tsoni@quicinc.com, neil.armstrong@linaro.org
In-Reply-To: <20231025135550.13162-1-quic_sibis@quicinc.com>
References: <20231025135550.13162-1-quic_sibis@quicinc.com>
Subject: Re: [PATCH 0/2] regulator: qcom-rpmh: Add regulator support for
 SC8380XP
Message-Id: <169832919131.118035.6543028726284946961.b4-ty@kernel.org>
Date: Thu, 26 Oct 2023 15:06:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Wed, 25 Oct 2023 19:25:48 +0530, Sibi Sankar wrote:
> This series adds regulator support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.
> 
> Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat
> 
> Rajendra Nayak (2):
>   dt-bindings: regulator: qcom,rpmh: Add PMC8380 compatible
>   regulator: qcom-rpmh: Add regulators support for PMC8380
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] dt-bindings: regulator: qcom,rpmh: Add PMC8380 compatible
      commit: ae61939cdf378ae3acc5716ccb43fef3cdace36e
[2/2] regulator: qcom-rpmh: Add regulators support for PMC8380
      commit: afb823a5843e6790106fcfe5029cfa736e05007f

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


