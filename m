Return-Path: <devicetree+bounces-5144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A45AB7B56FB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B99B11C2074D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C562A1D684;
	Mon,  2 Oct 2023 15:58:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C8D1C693
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:58:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13234C433C7;
	Mon,  2 Oct 2023 15:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696262305;
	bh=zhuPoJEwOQ4Qlq35dEOPbe7DBuThMUV+C5M99EcHH1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oOC23mlk8sZlVA4aqFZ7eRUeeXwqd5O5MfwV1+f4pdLdAyL2MyRwMVIDwTpVCukq2
	 rfY3LVt8P/ykbVhnXXTmkRzJgaJfWYNygxJJs/lNf1KJmapn95FWlG5djiTsjioZAj
	 eCwTXFswdnB83d3JarHkFySLfL5lCZY+bCPnD4ZikJ+HTlGKb50kpEn/6BWBWSqVBs
	 TkU1jeOzrQOK+OCRwru5rcLI9o73qNeBvbLcRfOu4jhCa4tCJIjhpUD73UgaWdeyDS
	 POhLedirho7v4f32CTERSOfDSHlRWURMASgBZ5bHFeLhAM86B5qDTO0AtFD/nS4ER9
	 piC+svoNRDzDA==
Date: Mon, 2 Oct 2023 21:28:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bhupesh Sharma <bhupesh.linux@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 0/4] thermal: Introduce Qualcomm Thermal Mitigation
 Device support
Message-ID: <20231002155814.GB12041@thinkpad>
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
 <20231001155701.GA53767@thinkpad>
 <cefe711b-d274-4d83-9dda-01f33b342387@linaro.org>
 <20231002145239.GA12041@thinkpad>
 <CAA8EJppn-f6R3ObGvagqkg1_KtXGgtNAgRn-LQiN3ORSHQY3-Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA8EJppn-f6R3ObGvagqkg1_KtXGgtNAgRn-LQiN3ORSHQY3-Q@mail.gmail.com>

On Mon, Oct 02, 2023 at 06:00:37PM +0300, Dmitry Baryshkov wrote:
> On Mon, 2 Oct 2023 at 17:52, Manivannan Sadhasivam <mani@kernel.org> wrote:
> >
> > On Sun, Oct 01, 2023 at 06:26:14PM +0100, Caleb Connolly wrote:
> > >
> > >
> > > On 01/10/2023 16:57, Manivannan Sadhasivam wrote:
> > > > On Fri, Sep 29, 2023 at 05:16:16PM +0100, Caleb Connolly wrote:
> > > > > The Thermal Mitigation Device (TMD) Service is a QMI service that runs
> > > > > on remote subsystems (the modem and DSPs) on Qualcomm SoCs.
> > > > > It exposes various mitigations including passive thermal controls and
> > > > > rail voltage restrictions.
> > > > >
> > > > > This series introduces support for exposing TMDs as cooling devices
> > > > > in the kernel through the thermal framework, using the QMI interface.
> > > > >
> > > > > Each TMD client is described as a child of the remoteproc node in
> > > > > devicetree. With subnodes for each control.
> > > > >
> > > >
> > > > Daniel expressed concerns in the past aganist representing TMD driver as a
> > > > cooling device since it is not tied to thermal zones and the governors cannot
> > > > use it. Instead he suggested to represent it as a powercap device with thermal
> > > > constraints.
> > >
> > > Hi Mani,
> > >
> > > Forgive me as I'm not yet super familiar with the thermal subsystem.
> > >
> > > As I understand it, the DT layout here enables each control to be referenced
> > > under the thermal zones, at least this is the approach taken in CAF 4.9.
> > >
> > > Maybe I don't quite understand what you mean, are you saying that using
> > > thermal zones is the wrong approach?
> >
> > Thermal framework expects each thermal zone represented in DT to have atleast
> > one corresponding thermal sensor defined using "thermal-sensors" property. But
> > with TMD, there is no thermal sensor AFAIK.
> 
> As far as I understand, no. It is perfectly fine to have 'cooling'
> devices, which react to external thermal monitoring events. I might be
> mistaken, but I think that is the case here, isn't it?
> 

Yes it is represented as cooling device(s). But I do not see any cognizant way
to plug it with thermal zones i.e., unless TMD itself reports temperature of the
modem, using it as a cooling device for external temperature events doesn't
sound good to me.

- Mani

> >
> > > >
> > > > So please look into that approach.
> > >
> > > Any recommended reading? Or drivers I can use as a reference?
> > >
> >
> > drivers/powercap/arm_scmi_powercap.c seems to be a good reference.
> >
> > - Mani
> >
> > > Thanks
> > > >
> > > > - Mani
> > > >
> > > > > This series is based on previous work by Bhupesh Sharma which can be
> > > > > found at [1]. I'm sending this as a fresh series as it has been a
> > > > > year since the original version and I have rewritten most of the driver.
> > > > >
> > > > > [1]: https://lore.kernel.org/linux-arm-msm/20220912085049.3517140-1-bhupesh.sharma@linaro.org/
> > > > >
> > > > > ---
> > > > > Caleb Connolly (4):
> > > > >        remoteproc: qcom: probe all child devices
> > > > >        dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
> > > > >        thermal: qcom: add qmi-cooling driver
> > > > >        MAINTAINERS: Add entry for Qualcomm Cooling Driver
> > > > >
> > > > >   .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  13 +
> > > > >   .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +
> > > > >   .../bindings/thermal/qcom,qmi-cooling.yaml         | 168 +++++++
> > > > >   MAINTAINERS                                        |   8 +
> > > > >   drivers/remoteproc/qcom_q6v5.c                     |   4 +
> > > > >   drivers/remoteproc/qcom_q6v5_mss.c                 |   8 -
> > > > >   drivers/thermal/qcom/Kconfig                       |  13 +
> > > > >   drivers/thermal/qcom/Makefile                      |   1 +
> > > > >   drivers/thermal/qcom/qmi-cooling.c                 | 520 +++++++++++++++++++++
> > > > >   drivers/thermal/qcom/qmi-cooling.h                 | 428 +++++++++++++++++
> > > > >   10 files changed, 1161 insertions(+), 8 deletions(-)
> > > > > ---
> > > > > base-commit: 9067f80db58bbce81d5f0703aa2fd261e88bc812
> > > > >
> > > > > // Caleb (they/them)
> > > > >
> > > >
> > >
> > > --
> > > // Caleb (they/them)
> >
> > --
> > மணிவண்ணன் சதாசிவம்
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
மணிவண்ணன் சதாசிவம்

