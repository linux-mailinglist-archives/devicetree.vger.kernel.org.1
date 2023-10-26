Return-Path: <devicetree+bounces-12046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184547D7AB1
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 04:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49A591C20E0A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7168C13;
	Thu, 26 Oct 2023 02:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyAHD95f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52D18C11
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 02:11:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2941BC433C7;
	Thu, 26 Oct 2023 02:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698286264;
	bh=R2ZbMNpdOpfJaB62Jul1L9JZ9xwhe/4teAKNNVrfx28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OyAHD95fdOd+HAODdk/x8mwrujgZx5m6WQ0k89PXxYbVg26EbQKU22QMamEBa+EES
	 EBYIVRCNxyEPKUGhy7VIB8VEvQ89wGVylsl4exapIO2q+2zmDfDFrEAVnV79jpmZ2a
	 zT3OxtWlNZ05dvR6MmyVfwfkNlwdPpnQVnE4s16bMo39M1/ulQSXjNnJBffcWDX5iV
	 V1lwX0dU26CjhMSDm4jdlqyEIyHCpsXW+CphcaTEPnB0ElzkZykAD6WCwA/eUUADRT
	 5uSddfKca0f1NMh6OOJZYBiwl/T/1wClk1pkTFJqZr9AWiTRbDDZF8vrNsWLTd+Mw0
	 wgNdX1Pk0FkWA==
Date: Wed, 25 Oct 2023 19:15:21 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>, agross@kernel.org, 
	conor+dt@kernel.org, dmitry.baryshkov@linaro.org, jonathan@marek.ca, 
	konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	quic_tdas@quicinc.com, robh+dt@kernel.org, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3.1 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC
Message-ID: <htdwp25oqvy6vmp6ff2z7ycmckvem2ejhitqonjgfzinqv5nds@rlfuary2ouc3>
References: <20231023153821.189331-1-bryan.odonoghue@linaro.org>
 <20231023153821.189331-4-bryan.odonoghue@linaro.org>
 <aef93a48cf270d5078ccdc39d95113a4.sboyd@kernel.org>
 <866d5582-a4e2-4b98-a291-6e41939bd9f3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <866d5582-a4e2-4b98-a291-6e41939bd9f3@linaro.org>

On Tue, Oct 24, 2023 at 10:40:04AM +0100, Bryan O'Donoghue wrote:
> On 24/10/2023 01:34, Stephen Boyd wrote:
> > Quoting Bryan O'Donoghue (2023-10-23 08:38:20)
> > > diff --git a/drivers/clk/qcom/camcc-sc8280xp.c b/drivers/clk/qcom/camcc-sc8280xp.c
> > > new file mode 100644
> > > index 000000000000..0631bd5fad57
> > > --- /dev/null
> > > +++ b/drivers/clk/qcom/camcc-sc8280xp.c
> > > @@ -0,0 +1,3048 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> > > + * Copyright (c) 2023, Linaro Ltd.
> > > + */
> > > +
> > > +#include <linux/clk-provider.h>
> > > +#include <linux/err.h>
> > 
> > Is this include used?
> > 
> > > +#include <linux/kernel.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of_device.h>
> > 
> > Should be mod_devicetable.h instead?
> > 
> > > +#include <linux/of.h>
> > 
> > Is this include used?
> > 
> > > +#include <linux/pm_clock.h>
> > > +#include <linux/pm_runtime.h>
> > > +#include <linux/regmap.h>
> > > +#include <linux/pm_runtime.h>
> > 
> > This got included twice.
> > 
> > > +
> > > +#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
> > > +
> > > +#include "clk-alpha-pll.h"
> 
> You're right, I didn't scrub the autogen headers.
> 
> Update sent as v3.2.
> 

Resubmitting one of the four patches as 3.2 confuses both me and the
tools. Please send a v4 of all 4 patches instead.

Regards,
Bjorn

