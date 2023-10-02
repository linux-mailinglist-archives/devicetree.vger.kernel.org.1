Return-Path: <devicetree+bounces-5028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E43727B4D54
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:34:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2D12FB20A71
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED25A53;
	Mon,  2 Oct 2023 08:33:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE231A20
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30DF0C433CC;
	Mon,  2 Oct 2023 08:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696235635;
	bh=rrrMa7nz3whAggXNqFbdIoDxf26fpbhOB3UDgI26A8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XnYXux6be/fbot4Sk370rY7pwtyVH7C+57xeMNOGXvwrFCH46RsZ1JHgJfMYLIdOQ
	 VREs+go9LwZeU+luk2OzSML/H1pt/jM0yPc+T1dfn4uio4UXn4FPcd0epqOslab2WX
	 Ex9zo9b0wbNm/AhlEVrJff4CzvLRBdZTjlZGv1c1x0vVEOQSIHw1bf2ELNPXEYK+Pl
	 TcMf76YP78VvhINN2TryzvHR9qVKKEPhKjlhnIlRSAHK3kwQIAZy8al/0UINDwl8aU
	 1aDAW18226pNw4E8R8WYiJJo0nem5V1K/dMz9o87csJaj7ez0XIwas6h3NXLlkCDhB
	 1kW8unWkkzRSw==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qnENO-0007kc-0Y;
	Mon, 02 Oct 2023 10:34:02 +0200
Date: Mon, 2 Oct 2023 10:34:02 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 2/2] clk: qcom: gcc-sc8280xp: Don't keep display AHB
 clocks always-on
Message-ID: <ZRqAel1pwLom-h45@hovoldconsulting.com>
References: <20230929-topic-8280_ahbdisp-v1-0-72bdc38309b9@linaro.org>
 <20230929-topic-8280_ahbdisp-v1-2-72bdc38309b9@linaro.org>
 <ZRfsvAJIdlmOWjf2@hovoldconsulting.com>
 <43473e04-ac33-179e-4343-e5c78eef3faf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43473e04-ac33-179e-4343-e5c78eef3faf@linaro.org>

On Sat, Sep 30, 2023 at 06:44:47PM +0200, Konrad Dybcio wrote:
> On 9/30/23 11:39, Johan Hovold wrote:
> > On Fri, Sep 29, 2023 at 03:38:53PM +0200, Konrad Dybcio wrote:
> >> These clocks are consumed by the dispcc[01] clock controllers, so there's
> >> no reason to keep them on from gcc probe. Remove that hack.
> > 
> > Eh, how did you test this patch?

> Oehh you're right, I didn't notice that I still had clk_ignore_unused :/

That doesn't matter since these clocks are never even registered with
the clock framework.

But you'd notice that if you try to verify the clock state by looking at
/sys/kernel/debug/clk/clk_summary for example.

> > The GCC_DISP_AHB_CLK clocks are not modelled by the clock driver
> > currently so nothing is guaranteeing them to be enabled if we were to
> > apply this patch. They just happen to be left on by the bootloader on
> > some machines currently (well at least one of them is on one machine).

> What fooled me is that despite not being modeled by the clock driver, it 
> is defined in bindings and referenced in the device tree.
> 
> Another thing I'll fix up!

Right, a number of Qualcomm SoCs apparently fail to register these
clocks. You should start by determining why that is as I assume (hope)
it was done for a reason.

Then the Qualcomm drivers use sloppy bulk clock look-up and enable so
that an integrator would never even notice when clocks are missing. Once
the clocks are registered, that could be tightened up as well.

Johan

