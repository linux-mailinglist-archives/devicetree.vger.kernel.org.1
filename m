Return-Path: <devicetree+bounces-2288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6107AA70A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:40:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2D42A281261
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CED385;
	Fri, 22 Sep 2023 02:40:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFFF37D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27A7CC433C8;
	Fri, 22 Sep 2023 02:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695350453;
	bh=8qIsVL6sv2Akw91FdfMBwVa1nZmidwwqy/fuoJa0HVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pe++EJqt+ieoBhFxCYIpPJrcJiOj+irtamDCPdzxUeWuBGJIH+UXsLFGz2yg2Qh5c
	 1xM0gdD0UFUW4I2/w7H0QcWsKmRlaDENUsyuhFDcTGopr5MweMWAhoBF7MVKlZr/D8
	 iDrKwI6U7T628dsJkHEPL9WHGeuLOnBf0TRVN4p8G5kNr3bngpO01kCpKHdIn7A0Jp
	 otBlQW+2g64kqnnR8BPeDk0jQ4KpBUPNtziXsWkCJEWMk7wurZzRWij+LV+he3TJ0P
	 DAvGk3MZ8wh6bNYsH6L6YazWntB2PzCRyl5u+USSUW/qkH3kjLirF3FoNt7PrCmSIc
	 coLZ+QN11+9AA==
Date: Thu, 21 Sep 2023 19:44:58 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Caleb Connolly <caleb.connolly@linaro.org>
Subject: Re: [PATCH v3 3/3] soc: qcom: rtmfs: Handle reserved-memory
 allocation issues
Message-ID: <3jscpkqc4jpywcfpo3qxkgajtkjhzncw3kpi6cnmjesyrswpr2@ndwvowbq7vrq>
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-3-305b37219b78@quicinc.com>
 <ZQyHS__ZPlnvMIFo@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZQyHS__ZPlnvMIFo@gerhold.net>

On Thu, Sep 21, 2023 at 08:11:23PM +0200, Stephan Gerhold wrote:
> On Wed, Sep 20, 2023 at 07:37:32PM -0700, Bjorn Andersson wrote:
> > In the even that Linux failed to allocate the reserved memory range
> > specified in the DeviceTree, the size of the reserved_mem will be 0,
> > which results in a oops when memory remapping is attempted.
> > 
> > Detect this and report that the memory region was not found instead.
> > 
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> I dropped these checks in my remoteproc patches because Caleb suggested
> maybe putting this check directly in of_reserved_mem_lookup() (or
> similar) given that almost none of the users verify this [1].
> 
> Do you have any opinion on that? I asked back then too but you did not
> reply yet [2]. :-)
> 

I'm struggling to come up with a use case where one would like to get
hold of the rmem when it wasn't properly initialized. So, let's make an
attempt at returning NULL from of_reserved_mem_lookup() instead.

Thanks,
Bjorn

> [1]: https://lore.kernel.org/linux-arm-msm/c3f59fb4-4dd8-f27a-d3f5-b1870006a75c@linaro.org/
> [2]: https://lore.kernel.org/linux-arm-msm/ZIsld-MAdkKvdzTx@gerhold.net/
> 
> > ---
> >  drivers/soc/qcom/rmtfs_mem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/qcom/rmtfs_mem.c b/drivers/soc/qcom/rmtfs_mem.c
> > index 83bba9321e72..13823abd85c2 100644
> > --- a/drivers/soc/qcom/rmtfs_mem.c
> > +++ b/drivers/soc/qcom/rmtfs_mem.c
> > @@ -180,7 +180,7 @@ static int qcom_rmtfs_mem_probe(struct platform_device *pdev)
> >  	int ret, i;
> >  
> >  	rmem = of_reserved_mem_lookup(node);
> > -	if (!rmem) {
> > +	if (!rmem || !rmem->size) {
> >  		dev_err(&pdev->dev, "failed to acquire memory region\n");
> >  		return -EINVAL;
> >  	}
> > 
> > -- 
> > 2.25.1
> > 

