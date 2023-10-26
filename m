Return-Path: <devicetree+bounces-12044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C95BD7D7A7D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 03:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69402B21113
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 01:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD896ABC;
	Thu, 26 Oct 2023 01:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxmqelvn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF20D469D
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 01:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16ECBC433C7;
	Thu, 26 Oct 2023 01:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698285124;
	bh=uc68CtG1/PmB2c3+G1qYkLU0G3yZyhKP0af8C+0vViw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lxmqelvna5njSYvzoA0nLw61ngRwVaDSkKEMmQ31gysV354IuujhdYvsfxgjZQRtf
	 rQlsRWasYHtpjz1feinFQgQQGMzFv59do8v+sZGdHUjZJDQlyDQDLD4zdxmSAwYy0a
	 gmHmJaN7WuqWWVSLu4BIsRWvG6Grvp+2URDHBTsrcPbbcJnYRuWe3TnBPnrSfdDkfw
	 VEFT7ueeYf6/o5ln6/chIw8khcNno85bjI+0oTCoTfdcnA3/Gv6CEToqIOYdjo8XD8
	 fVRimjDudHv3U5/qZyjupXEi72XJh4aSjE7k9CmN3HvAbOY3O8/X9oykpCeet0SK8Z
	 NNcn8qoXT4WnQ==
Date: Wed, 25 Oct 2023 18:56:21 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: konrad.dybcio@linaro.org, linus.walleij@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com, 
	abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, quic_tsoni@quicinc.com, 
	neil.armstrong@linaro.org
Subject: Re: [PATCH 0/2] pinctrl: qcom: Introduce Pinctrl/GPIO for SC8380XP
Message-ID: <faddmpsixivh3rfbsyvwpkt3mjaempkfdzqws2xjxlyhs5m5pm@7ss2k77rlryk>
References: <20231025135058.11268-1-quic_sibis@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025135058.11268-1-quic_sibis@quicinc.com>

On Wed, Oct 25, 2023 at 07:20:56PM +0530, Sibi Sankar wrote:
> This series adds pinctrl/gpio support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.
> 
> Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat
> 

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> Rajendra Nayak (2):
>   dt-bindings: pinctrl: qcom: Add SC8380XP pinctrl
>   pinctrl: qcom: Add SC8380XP pinctrl driver
> 
>  .../bindings/pinctrl/qcom,sc8380xp-tlmm.yaml  |  143 ++
>  drivers/pinctrl/qcom/Kconfig.msm              |   10 +
>  drivers/pinctrl/qcom/Makefile                 |    1 +
>  drivers/pinctrl/qcom/pinctrl-sc8380xp.c       | 1876 +++++++++++++++++
>  4 files changed, 2030 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sc8380xp-tlmm.yaml
>  create mode 100644 drivers/pinctrl/qcom/pinctrl-sc8380xp.c
> 
> -- 
> 2.17.1
> 

