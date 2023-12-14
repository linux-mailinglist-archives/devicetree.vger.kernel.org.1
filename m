Return-Path: <devicetree+bounces-25190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1117E8129B8
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBDA81F21239
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DF7134D0;
	Thu, 14 Dec 2023 07:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNt4STBK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6719412E6B;
	Thu, 14 Dec 2023 07:49:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCE14C433C7;
	Thu, 14 Dec 2023 07:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702540190;
	bh=aKjTmmoOVOxRjZC+1SBv+lZ/01Wzl2vD9ezRGCJZItY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNt4STBKvzvqfafaCOE1wvsddkUjQJJNZpGf9ZPAudcjC/869D3fnoCeiNdThFAYM
	 wVc9JAjIcdUfCjGsU3Blit3Px4w2j2K9Jt6A8IAAP0cgRP4KXtdE/W7vbBYU12npn7
	 75UCzgabkN3krUJlse/2MJ+CeXKR8TtVOXYLtAGhv9ms71PJemXEPaPyfoBaesTOag
	 iNU5qbRYR8z/MjjdUHFhaoZYXIEShXThI1dnjVKtvKSwII3GNoW4JNI3/weK+MWsl6
	 deYxvCj+2Gpne+sHrKEG5vXDpRtB+WO8Sg/sFPzNiGbRjGj1r6bIV9DQ+wf6rkFtc2
	 rX4R3CIzYPBdg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rDgTe-0002v0-06;
	Thu, 14 Dec 2023 08:49:50 +0100
Date: Thu, 14 Dec 2023 08:49:50 +0100
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/11] ARM/arm64: dts: qcom: fix USB wakeup interrupt
 types
Message-ID: <ZXqzntjuvD5ls6IQ@hovoldconsulting.com>
References: <20231120164331.8116-1-johan+linaro@kernel.org>
 <ZXc7KcjF82EgiXWd@hovoldconsulting.com>
 <06354190-b572-46e4-8036-0fae7f15dd15@quicinc.com>
 <6e9c93a6-48d0-4200-903c-caf271e2531d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e9c93a6-48d0-4200-903c-caf271e2531d@linaro.org>

On Wed, Dec 13, 2023 at 07:39:59PM +0100, Konrad Dybcio wrote:
> On 12/12/23 10:30, Krishna Kurapati PSSNV wrote:
> 
> [...]
> 
> > SM6375, I think GIC_SPI is fine but I will try to get back on this.
> interrupts-extended = <&intc GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
>                                                <&mpm 12 IRQ_TYPE_LEVEL_HIGH>,
>                                                <&mpm 93 IRQ_TYPE_EDGE_BOTH>,
>                                                <&mpm 94 IRQ_TYPE_EDGE_BOTH>;
>                          interrupt-names = "hs_phy_irq",
>                                            "ss_phy_irq",
>                                            "dm_hs_phy_irq",
>                                            "dp_hs_phy_irq";
> 
> the mpm node is not yet upstream (I only managed to untangle the
> related mess recently), I'll submit this soon.

Perfect, thanks!

Johan

