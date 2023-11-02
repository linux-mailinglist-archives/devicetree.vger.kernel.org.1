Return-Path: <devicetree+bounces-13644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFDA7DF7D0
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 17:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1776A1C20F91
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 16:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB06210D;
	Thu,  2 Nov 2023 16:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE7nTGgC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA5A1DFD6
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 16:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1B50C433C8;
	Thu,  2 Nov 2023 16:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698942998;
	bh=4aX/P2w1iOqWTOFnUksWlwkGyZTIYrlt8CsHwkusO/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EE7nTGgCPIXHw/5aUh8ORBP2cfTlaGM+HZJlAQyJx8MyCnFDuVl3kzfrWNKjge106
	 /ohYegpgbe/d+OilcU+jZCFuMwY6Z3yu0hIrd3C5AR1rKdLuJG3r9jodZqvE5Sdz/1
	 bjQxg3V0W1IgIPnHQpzD8+3omh1dp3rL9MQaxCgcM6mNtGOUlALnlpk4zOVQDEgAma
	 JBJnpJ8ND2GahKVR4U+qtKXfRHmU5DiOQ1eNwlBQeOeaE6lBwIu4F1kFQLWzmMMR6q
	 hcMQfkLdynSYRl57NTr3+1qHnVyOkNf3Ix6os2Z6tWH599kfzwOC1oXCvb8eJYWtjh
	 fwWy5G49fVZ2Q==
Date: Thu, 2 Nov 2023 22:06:19 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org,
	robh+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, robh@kernel.org,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	quic_parass@quicinc.com, quic_schintav@quicinc.com,
	quic_shijjose@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v1 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
Message-ID: <20231102163619.GA20943@thinkpad>
References: <1698767186-5046-1-git-send-email-quic_msarkar@quicinc.com>
 <1698767186-5046-2-git-send-email-quic_msarkar@quicinc.com>
 <CAA8EJpoMoUvF8R3PjgCNijS6-8Gs5FjvC6dYerNBVBuYW3FmPA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA8EJpoMoUvF8R3PjgCNijS6-8Gs5FjvC6dYerNBVBuYW3FmPA@mail.gmail.com>

On Thu, Nov 02, 2023 at 05:34:24PM +0200, Dmitry Baryshkov wrote:
> On Tue, 31 Oct 2023 at 17:46, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
> >
> > This change will enable cache snooping logic to support
> > cache coherency for SA8755P RC platform.
> >
> > Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > index 6902e97..6f240fc 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > @@ -51,6 +51,7 @@
> >  #define PARF_SID_OFFSET                                0x234
> >  #define PARF_BDF_TRANSLATE_CFG                 0x24c
> >  #define PARF_SLV_ADDR_SPACE_SIZE               0x358
> > +#define PCIE_PARF_NO_SNOOP_OVERIDE             0x3d4
> >  #define PARF_DEVICE_TYPE                       0x1000
> >  #define PARF_BDF_TO_SID_TABLE_N                        0x2000
> >
> > @@ -117,6 +118,9 @@
> >  /* PARF_LTSSM register fields */
> >  #define LTSSM_EN                               BIT(8)
> >
> > +/* PARF_NO_SNOOP_OVERIDE register value */
> > +#define NO_SNOOP_OVERIDE_EN                    0xa
> > +
> >  /* PARF_DEVICE_TYPE register fields */
> >  #define DEVICE_TYPE_RC                         0x4
> >
> > @@ -961,6 +965,13 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
> >
> >  static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
> >  {
> > +       struct dw_pcie *pci = pcie->pci;
> > +       struct device *dev = pci->dev;
> > +
> > +       /* Enable cache snooping for SA8775P */
> > +       if (of_device_is_compatible(dev->of_node, "qcom,pcie-sa8775p"))
> 
> Obviously: please populate a flag in the data structures instead of
> doing of_device_is_compatible(). Same applies to the patch 2.
> 

Not necessary at this point. For some unknown reasons, the HW team ended up
disabling cache snooping on this specific platform. Whereas on other platforms,
it is enabled by default. So I have low expectations that we would need this
setting on other platforms in the future.

My concern with the usage of flag is that it warrants a new "qcom_pcie_cfg"
instance just for this quirk and it looks overkill to me.

So if we endup seeing this behavior on other platforms as well (unlikely) then
we can switch to the flag approach.

- Mani

> > +               writel(NO_SNOOP_OVERIDE_EN, pcie->parf + PCIE_PARF_NO_SNOOP_OVERIDE);
> > +
> >         qcom_pcie_clear_hpc(pcie->pci);
> >
> >         return 0;
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
மணிவண்ணன் சதாசிவம்

