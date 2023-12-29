Return-Path: <devicetree+bounces-28910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C72A81FFA0
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 14:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5857E1C20D7F
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 13:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730A9111B7;
	Fri, 29 Dec 2023 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARsCAUrd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B910111B5;
	Fri, 29 Dec 2023 13:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B061C433C7;
	Fri, 29 Dec 2023 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703856022;
	bh=PZ8xNlGCvRbn/i0nNGotIHyKuFdlPak1Ni35jU5x2xQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ARsCAUrdFPk9WlFqWn1bmXWWZPl7mLPBucASz2oJIvyqSx/pIR7CGyRn360YWj3bU
	 i6Vmq78XvLMouTN4NtS5eghI8YGAH8N+39AGUEKs7vdmT8L/1uB/992YFf05u0lPIO
	 1GHFNQktP3L3GrnDSa0z2Ua5B+1QAo+vWI/bnzbxNgLgNZxlCGOg//mG74yC0TMMiM
	 R/8iMW8UTFXaovVw2B/HmFwB5m96hdrktXZ2gVOKxVwFbu3nig6fjLA+u1UgCulXnO
	 BnNStwk8wKf5uRonGrN9WEOxDIOe5rQ5BGE7HHGnXgG457lKI6ijXTVv1k6ERhnqwU
	 D1rphok6WoOmA==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rJCmd-0000A6-1u;
	Fri, 29 Dec 2023 14:20:15 +0100
Date: Fri, 29 Dec 2023 14:20:15 +0100
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc8280xp: Fix PCIe PHY
 power-domains
Message-ID: <ZY7HjxOXhikr4VKM@hovoldconsulting.com>
References: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
 <20231227-topic-8280_pcie_dts-v1-1-13d12b1698ff@linaro.org>
 <ZY6sh8nlEUyEfL0u@hovoldconsulting.com>
 <ce7022e6-011c-4745-a508-4776269708d0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce7022e6-011c-4745-a508-4776269708d0@linaro.org>

On Fri, Dec 29, 2023 at 02:08:25PM +0100, Konrad Dybcio wrote:
> On 29.12.2023 12:24, Johan Hovold wrote:
> > On Wed, Dec 27, 2023 at 11:28:26PM +0100, Konrad Dybcio wrote:
> >> The PCIe GDSCs are only related to the RCs. The PCIe PHYs on the other
> >> hand, are powered by VDD_MX and their specific VDDA_PHY/PLL regulators.
> > 
> > No, that does not seem to be entirely correct. I added the power-domains
> > here precisely because they were needed to enable the PHYs.

> > If you try to enable one of these PHYs without the corresponding GDSC
> > being enabled, you end up with:
> > 
> > [   37.709324] ------------[ cut here ]------------
> > [   37.718196] gcc_pcie_3b_aux_clk status stuck at 'off'
> > [   37.718205] WARNING: CPU: 4 PID: 482 at drivers/clk/qcom/clk-branch.c:86 clk_branch_wait+0x144/0x15c
> > 	
> > Now, you may or may not want to describe the above in the devicetree,
> > but this makes it sound like you're trying to work around an issue with
> > the current Linux implementation.

> Could you please recheck this with patch 1 from [1] applied?

As expected that makes no difference as I'm powering on the PHY without
the corresponding controller being enabled (which otherwise guarantees
the GDSC to be on).

> [1] https://lore.kernel.org/linux-arm-msm/20231227-topic-8280_pcie-v1-1-095491baf9e4@linaro.org/T/#u

Johan

