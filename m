Return-Path: <devicetree+bounces-2289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 065257AA713
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:47:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BA5461C20932
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF78385;
	Fri, 22 Sep 2023 02:47:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF79964C
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:47:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90F79C433C7;
	Fri, 22 Sep 2023 02:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695350857;
	bh=qyx3IGyXgOk1LNpPqO2sLQkmWUYXhJs8VFn1kQPNpRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T34bs/xhUYnwdBQ2FyGg2ipvtGMswOFWbV9gVEKgnvg2yNWxzQfyk+PJ48LZQ95oR
	 qVHux3rPecDoJYnE0CTifK7dk1QozGnXBXhbOTXrrkbUlNsdKZvkvshRY2EpKAsp/n
	 gEhkUsyQ+sBW5HCDEne3ihu5cK1ZWVhpaiVVOtEUqQvL5VVEGk40vOoHUdg14VWP8M
	 oD0VmwSbi5oT7Qx8FSrqYLAAgB+38GWMqetevzohhY1m1AxdIKpaOoF75lGIfshBch
	 GNgQBzrPF6xF6FLXt1EuxL6gpJDAC0ecvBLbXKoIn3Qw2aaanAsbRQir0/ZSvXZv+D
	 M/cZu0gSZLm0g==
Date: Thu, 21 Sep 2023 19:51:42 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] soc: qcom: rmtfs: Support discarding guard pages
Message-ID: <j5ivvbjprgdcekujzjiobk7gpoaz3jxpnda5dsgoh6f4hsn5id@3ug5i74ubkqf>
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-2-305b37219b78@quicinc.com>
 <ZQyFliFYV7dUwGJg@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZQyFliFYV7dUwGJg@gerhold.net>

On Thu, Sep 21, 2023 at 08:04:06PM +0200, Stephan Gerhold wrote:
> On Wed, Sep 20, 2023 at 07:37:31PM -0700, Bjorn Andersson wrote:
> > In some configurations, the exact placement of the rmtfs shared memory
> > region isn't so strict. The DeviceTree author can then choose to use the
> > "size" property and rely on the OS for placement (in combination with
> > "alloc-ranges", if desired).
> > 
> > But on some platforms the rmtfs memory region may not be allocated
> > adjacent to regions allocated by other clients. Add support for
> > discarding the first and last 4k block in the region, if
> > qcom,use-guard-pages is specified in DeviceTree.
> > 
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  drivers/soc/qcom/rmtfs_mem.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/soc/qcom/rmtfs_mem.c b/drivers/soc/qcom/rmtfs_mem.c
> > index f83811f51175..83bba9321e72 100644
> > --- a/drivers/soc/qcom/rmtfs_mem.c
> > +++ b/drivers/soc/qcom/rmtfs_mem.c
> > @@ -200,6 +200,15 @@ static int qcom_rmtfs_mem_probe(struct platform_device *pdev)
> >  	rmtfs_mem->client_id = client_id;
> >  	rmtfs_mem->size = rmem->size;
> >  
> > +	/*
> > +	 * If requested, discard the first and last 4k block in order to ensure
> > +	 * that the rmtfs region isn't adjacent to other protected regions.
> > +	 */
> > +	if (of_property_present(node, "qcom,use-guard-pages")) {
> 
> I think of_property_read_bool() would be more fitting here. Right now
> of_property_present() is just a wrapper around of_property_read_bool().
> Semantically reading a bool fits better here though. :-)
> 

Are you saying that you would prefer this to be a bool, so hat you can
give it a "false" value? Or you are simply saying "it walks like a
boolean, quacks like a boolean, let's use the boolean accessor"?

> Feel free to fix that up while applying.
> 
> FWIW I don't really have an opinion if "qcom,use-guard-pages" is a good
> way to describe this in the DT. For the implementation side feel free to
> add my
> 

Right, I don't think I commented on your suggestion to make the size of
the guard page configurable. I am not aware of any current or upcoming
reasons for adding such complexity, so I'd simply prefer to stick with a
boolean. Should that need arise, I think this model would allow
extension to express that.

Regards,
Bjorn

> Reviewed-by: Stephan Gerhold <stephan@gerhold.net>
> 
> Thanks,
> Stephan
> 
> > +		rmtfs_mem->addr += SZ_4K;
> > +		rmtfs_mem->size -= 2 * SZ_4K;
> > +	}
> > +
> >  	device_initialize(&rmtfs_mem->dev);
> >  	rmtfs_mem->dev.parent = &pdev->dev;
> >  	rmtfs_mem->dev.groups = qcom_rmtfs_mem_groups;
> > 
> > -- 
> > 2.25.1
> > 

