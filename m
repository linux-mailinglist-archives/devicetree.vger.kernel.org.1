Return-Path: <devicetree+bounces-2533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E353F7AB2F0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 352341F22E04
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F853D3A9;
	Fri, 22 Sep 2023 13:46:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591E634CEC
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 13:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172F5C433C8;
	Fri, 22 Sep 2023 13:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695390377;
	bh=DM7Txi2MoiWZBA9K95f7zgHK56suYUEDbpXwcyC9bD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=umEVFJrGGX/MrNunUQYkUy82x6LqEdrfsD8jygjAXXFDYOwO9AhUPrLzeJyAk2eKM
	 EH2X9Hkf76IauDXpS2AtvTuNAjzbnmlRzsaELCQhfLhJN8MLsA0+b2XMButKL718IS
	 jChUXG643/daHsdqciafR74kJ24ObxXfg7CRvi5dPA2o1UOuulsOvmPwK0mypO++WG
	 clYbjTQxh0DvrGn0389fsg7fO0ljlnsctrDL9tFAY3aVwwL57w4Tj0Jn+SMjiibfx+
	 wqbLSshF7hKZDB1vhRbyg8SgKE+M+VPDn9HpJiLjCLgBoldFrEs5TsiShoToeN9o2r
	 eLbMGg1RGIofA==
Date: Fri, 22 Sep 2023 06:50:22 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] soc: qcom: rmtfs: Support discarding guard pages
Message-ID: <4dreta5y4rxzrfzeuomm42oszoohus5fg7hhsstx7kzo5kjive@6mosi67enick>
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-2-305b37219b78@quicinc.com>
 <ZQyFliFYV7dUwGJg@gerhold.net>
 <j5ivvbjprgdcekujzjiobk7gpoaz3jxpnda5dsgoh6f4hsn5id@3ug5i74ubkqf>
 <ZQ1DmSRIe56WQmnK@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZQ1DmSRIe56WQmnK@gerhold.net>

On Fri, Sep 22, 2023 at 09:35:00AM +0200, Stephan Gerhold wrote:
> eOn Thu, Sep 21, 2023 at 07:51:42PM -0700, Bjorn Andersson wrote:
> > On Thu, Sep 21, 2023 at 08:04:06PM +0200, Stephan Gerhold wrote:
> > > On Wed, Sep 20, 2023 at 07:37:31PM -0700, Bjorn Andersson wrote:
> > > > In some configurations, the exact placement of the rmtfs shared memory
> > > > region isn't so strict. The DeviceTree author can then choose to use the
> > > > "size" property and rely on the OS for placement (in combination with
> > > > "alloc-ranges", if desired).
> > > > 
> > > > But on some platforms the rmtfs memory region may not be allocated
> > > > adjacent to regions allocated by other clients. Add support for
> > > > discarding the first and last 4k block in the region, if
> > > > qcom,use-guard-pages is specified in DeviceTree.
> > > > 
> > > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > > ---
> > > >  drivers/soc/qcom/rmtfs_mem.c | 9 +++++++++
> > > >  1 file changed, 9 insertions(+)
> > > > 
> > > > diff --git a/drivers/soc/qcom/rmtfs_mem.c b/drivers/soc/qcom/rmtfs_mem.c
> > > > index f83811f51175..83bba9321e72 100644
> > > > --- a/drivers/soc/qcom/rmtfs_mem.c
> > > > +++ b/drivers/soc/qcom/rmtfs_mem.c
> > > > @@ -200,6 +200,15 @@ static int qcom_rmtfs_mem_probe(struct platform_device *pdev)
> > > >  	rmtfs_mem->client_id = client_id;
> > > >  	rmtfs_mem->size = rmem->size;
> > > >  
> > > > +	/*
> > > > +	 * If requested, discard the first and last 4k block in order to ensure
> > > > +	 * that the rmtfs region isn't adjacent to other protected regions.
> > > > +	 */
> > > > +	if (of_property_present(node, "qcom,use-guard-pages")) {
> > > 
> > > I think of_property_read_bool() would be more fitting here. Right now
> > > of_property_present() is just a wrapper around of_property_read_bool().
> > > Semantically reading a bool fits better here though. :-)
> > > 
> > 
> > Are you saying that you would prefer this to be a bool, so hat you can
> > give it a "false" value? Or you are simply saying "it walks like a
> > boolean, quacks like a boolean, let's use the boolean accessor"?
> > 
> 
> The latter. I would expect that of_property_present() is used for
> properties which usually have a value, while of_property_read_bool()
> is used for pure bool values which can be present or not but must not
> have a value. I think a "bool" in terms of DT is simply a present or
> not-present property without any value?
> 
> For example consider
> 
>   regulator-min-microvolts = <4200000000>;
>   regulator-always-on;
> 
> Then I would expect
> 
>   - of_property_present(..., "regulator-min-microvolts"), but
>   - of_property_read_bool(..., "regulator-always-on")
> 
> Does that make sense? :D
> 

Certainly, of_property_read_duck() it is.

Thanks,
Bjorn

