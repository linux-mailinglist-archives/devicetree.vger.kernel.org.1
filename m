Return-Path: <devicetree+bounces-5149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 741D07B5708
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:00:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 91EAA1C2084A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA35E1D68E;
	Mon,  2 Oct 2023 16:00:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25371182CF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:00:43 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 800F6C9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:00:40 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5a2379a8b69so41707647b3.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696262439; x=1696867239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D+V/XZ/GBu2X13qk+lVWA+BHXaXbkkjFzVNvIc6hVho=;
        b=X0zY5BAii5sSfS5PbfyX9gkW4Kd5wdftt0bThJKDqX66/SSrcaH5ZshIj76vjT65gp
         yRADAUZrjVJajI+Q1zwmudO+N5MUWbHX1SJyVQWeamFP8nGdLDnSgJebBGf8IDbNZpwM
         bzIf5TX3l5WD6opTJcRIbLOZaeT9LFnBuf/Kh0OU1UXsTdsCJBtPQi0wTmBcL1C2qGhD
         PBfk/TluvFGJZEAKYvYTmmeWsnMFyDetWIfQW0fFiWCDTyxp7lR3sA9cmnQpdCcmIhTc
         2D+k+fiP9hVLbzZLuGijIKX84Zeac3eBKy8otXdDz4C/qDqmBhYCGlnXuHxp8TiwMnlH
         2KZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696262439; x=1696867239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D+V/XZ/GBu2X13qk+lVWA+BHXaXbkkjFzVNvIc6hVho=;
        b=X3HQWSF2kvhImANcXrijdql7bim4ial+q8oDLjyCdlJDKdPx329co26Jv26Q3ISJR1
         PzozbNkDj8IhbF4bAHlwIrv6cH/e41I/SkFxxcKW1Lom8t/5BT/cnQL9A6Z6Wtzgj5QT
         RdInkV/OKkkVhuYFgYLrA4TWazz79OKo6A273aPWxzMXLw1+d1zisIIjyqMuM7x1hAey
         k7yJH1ioIeFlnlJh3966lHqHWemR0HDSK1/shffVqim89UC39DFZmHjiOG7x900Q6aXB
         ZB4442WwvwhSEVlrxxfBsvpPmowpHrdTmcB0KQbz1+6oaggiY3seec8/5NNdKhhIFCPN
         +Cow==
X-Gm-Message-State: AOJu0Yz/3jn016PwpDlZYMjoEprEvdcHGa9muTFmIj91021HW5KU9Ta1
	cOx+fMFFug1TqjXP88EEOMWEmA9NeG/Y0NDO9cMNYA==
X-Google-Smtp-Source: AGHT+IEpjQ9liIVFx32qRUTSbZz+I8jC2x+161aRlKeXDuRGa/A6OsadJbefZK8pH8hB4Z/EJSy9KcEWN1pKq7rvpvg=
X-Received: by 2002:a25:c551:0:b0:d81:89e9:9f48 with SMTP id
 v78-20020a25c551000000b00d8189e99f48mr11301435ybe.63.1696262439593; Mon, 02
 Oct 2023 09:00:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
 <20231001155701.GA53767@thinkpad> <cefe711b-d274-4d83-9dda-01f33b342387@linaro.org>
 <20231002145239.GA12041@thinkpad> <CAA8EJppn-f6R3ObGvagqkg1_KtXGgtNAgRn-LQiN3ORSHQY3-Q@mail.gmail.com>
 <20231002155814.GB12041@thinkpad>
In-Reply-To: <20231002155814.GB12041@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 2 Oct 2023 19:00:27 +0300
Message-ID: <CAA8EJpowGjnecOjr9h4r3=UXSrE4VdptoLADpQq3gDv_W9D3OQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] thermal: Introduce Qualcomm Thermal Mitigation Device support
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bhupesh Sharma <bhupesh.linux@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Thara Gopinath <thara.gopinath@gmail.com>, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 2 Oct 2023 at 18:58, Manivannan Sadhasivam <mani@kernel.org> wrote:
>
> On Mon, Oct 02, 2023 at 06:00:37PM +0300, Dmitry Baryshkov wrote:
> > On Mon, 2 Oct 2023 at 17:52, Manivannan Sadhasivam <mani@kernel.org> wr=
ote:
> > >
> > > On Sun, Oct 01, 2023 at 06:26:14PM +0100, Caleb Connolly wrote:
> > > >
> > > >
> > > > On 01/10/2023 16:57, Manivannan Sadhasivam wrote:
> > > > > On Fri, Sep 29, 2023 at 05:16:16PM +0100, Caleb Connolly wrote:
> > > > > > The Thermal Mitigation Device (TMD) Service is a QMI service th=
at runs
> > > > > > on remote subsystems (the modem and DSPs) on Qualcomm SoCs.
> > > > > > It exposes various mitigations including passive thermal contro=
ls and
> > > > > > rail voltage restrictions.
> > > > > >
> > > > > > This series introduces support for exposing TMDs as cooling dev=
ices
> > > > > > in the kernel through the thermal framework, using the QMI inte=
rface.
> > > > > >
> > > > > > Each TMD client is described as a child of the remoteproc node =
in
> > > > > > devicetree. With subnodes for each control.
> > > > > >
> > > > >
> > > > > Daniel expressed concerns in the past aganist representing TMD dr=
iver as a
> > > > > cooling device since it is not tied to thermal zones and the gove=
rnors cannot
> > > > > use it. Instead he suggested to represent it as a powercap device=
 with thermal
> > > > > constraints.
> > > >
> > > > Hi Mani,
> > > >
> > > > Forgive me as I'm not yet super familiar with the thermal subsystem=
.
> > > >
> > > > As I understand it, the DT layout here enables each control to be r=
eferenced
> > > > under the thermal zones, at least this is the approach taken in CAF=
 4.9.
> > > >
> > > > Maybe I don't quite understand what you mean, are you saying that u=
sing
> > > > thermal zones is the wrong approach?
> > >
> > > Thermal framework expects each thermal zone represented in DT to have=
 atleast
> > > one corresponding thermal sensor defined using "thermal-sensors" prop=
erty. But
> > > with TMD, there is no thermal sensor AFAIK.
> >
> > As far as I understand, no. It is perfectly fine to have 'cooling'
> > devices, which react to external thermal monitoring events. I might be
> > mistaken, but I think that is the case here, isn't it?
> >
>
> Yes it is represented as cooling device(s). But I do not see any cognizan=
t way
> to plug it with thermal zones i.e., unless TMD itself reports temperature=
 of the
> modem, using it as a cooling device for external temperature events doesn=
't
> sound good to me.

Why? We have compute, q6, wlan tsens sensors. So it seems natural to
tell CDSP to slow down if compute sensor reports overheating.

>
> - Mani
>
> > >
> > > > >
> > > > > So please look into that approach.
> > > >
> > > > Any recommended reading? Or drivers I can use as a reference?
> > > >
> > >
> > > drivers/powercap/arm_scmi_powercap.c seems to be a good reference.
> > >
> > > - Mani
> > >
> > > > Thanks
> > > > >
> > > > > - Mani
> > > > >
> > > > > > This series is based on previous work by Bhupesh Sharma which c=
an be
> > > > > > found at [1]. I'm sending this as a fresh series as it has been=
 a
> > > > > > year since the original version and I have rewritten most of th=
e driver.
> > > > > >
> > > > > > [1]: https://lore.kernel.org/linux-arm-msm/20220912085049.35171=
40-1-bhupesh.sharma@linaro.org/
> > > > > >
> > > > > > ---
> > > > > > Caleb Connolly (4):
> > > > > >        remoteproc: qcom: probe all child devices
> > > > > >        dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
> > > > > >        thermal: qcom: add qmi-cooling driver
> > > > > >        MAINTAINERS: Add entry for Qualcomm Cooling Driver
> > > > > >
> > > > > >   .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  13 +
> > > > > >   .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +
> > > > > >   .../bindings/thermal/qcom,qmi-cooling.yaml         | 168 ++++=
+++
> > > > > >   MAINTAINERS                                        |   8 +
> > > > > >   drivers/remoteproc/qcom_q6v5.c                     |   4 +
> > > > > >   drivers/remoteproc/qcom_q6v5_mss.c                 |   8 -
> > > > > >   drivers/thermal/qcom/Kconfig                       |  13 +
> > > > > >   drivers/thermal/qcom/Makefile                      |   1 +
> > > > > >   drivers/thermal/qcom/qmi-cooling.c                 | 520 ++++=
+++++++++++++++++
> > > > > >   drivers/thermal/qcom/qmi-cooling.h                 | 428 ++++=
+++++++++++++
> > > > > >   10 files changed, 1161 insertions(+), 8 deletions(-)
> > > > > > ---
> > > > > > base-commit: 9067f80db58bbce81d5f0703aa2fd261e88bc812
> > > > > >
> > > > > > // Caleb (they/them)
> > > > > >
> > > > >
> > > >
> > > > --
> > > > // Caleb (they/them)
> > >
> > > --
> > > =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=
=A9=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=
=AE=E0=AF=8D
> >
> >
> >
> > --
> > With best wishes
> > Dmitry
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D



--=20
With best wishes
Dmitry

