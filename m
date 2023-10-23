Return-Path: <devicetree+bounces-10868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 645D67D2F39
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:57:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95B331C20852
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D98F13FE6;
	Mon, 23 Oct 2023 09:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B9712B8A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:57:30 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C5631FED;
	Mon, 23 Oct 2023 02:57:05 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SDVr609zVz6J9fy;
	Mon, 23 Oct 2023 17:53:25 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 23 Oct
 2023 10:57:00 +0100
Date: Mon, 23 Oct 2023 10:56:59 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jishnu Prakash <quic_jprakash@quicinc.com>
CC: Jonathan Cameron <jic23@kernel.org>, <agross@kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linus.walleij@linaro.org>, <sboyd@kernel.org>,
	<dmitry.baryshkov@linaro.org>, <quic_subbaram@quicinc.com>,
	<quic_collinsd@quicinc.com>, <quic_kamalw@quicinc.com>,
	<quic_jestar@quicinc.com>, <marijn.suijten@somainline.org>,
	<andriy.shevchenko@linux.intel.com>, <krzysztof.kozlowski@linaro.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Luca Weiss <luca@z3ntu.xyz>,
	<linux-iio@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-pm@vger.kernel.org>, <linux-arm-msm-owner@vger.kernel.org>
Subject: Re: [PATCH 01/11] iio: adc: Update bindings for ADC7 name used on
 QCOM PMICs
Message-ID: <20231023105659.0000163e@Huawei.com>
In-Reply-To: <0401d8fc-1162-ea60-bd91-ad18afece344@quicinc.com>
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
	<20230708072835.3035398-2-quic_jprakash@quicinc.com>
	<20230708155844.31c55ca0@jic23-huawei>
	<0401d8fc-1162-ea60-bd91-ad18afece344@quicinc.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500002.china.huawei.com (7.191.160.78) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected

On Mon, 23 Oct 2023 11:35:43 +0530
Jishnu Prakash <quic_jprakash@quicinc.com> wrote:

> Hi Jonathan,
>=20
> Sorry for the late reply, I could not get back earlier as I got occupied=
=20
> with other work till now. I have addressed your comments inline.
>=20
> On 7/8/2023 8:28 PM, Jonathan Cameron wrote:
> > On Sat, 8 Jul 2023 12:58:25 +0530
> > Jishnu Prakash <quic_jprakash@quicinc.com> wrote:
> > =20
> >> The name used initially for this version of Qualcomm Technologies, Inc.
> >> PMIC ADC was ADC7, following the convention of calling the PMIC genera=
tion
> >> PMIC7. However, the names were later amended internally to ADC5 Gen2 a=
nd
> >> PMIC5 Gen2. In addition, the latest PMIC generation now is known as
> >> PMIC5 Gen3 with ADC5 Gen3 supported on it. With this addition, it make=
s more
> >> sense to correct the name for this version of ADCs to ADC5 Gen2 from A=
DC7.
> >> Since this affects ADC devices across some PMICs, update the names acc=
ordingly.
> >>
> >> In order to avoid breaking the existing implementations of ADC7, add
> >> support for ADC5 Gen2 first now and remove the ADC7 support in a later
> >> patch.
> >>
> >> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com> =20
> > Hi Jishnu.
> >
> > Whilst I can appreciate why you've picked this particular approach to
> > deal with the renames I'm not sure it's the smoothest path - or the
> > easiest to review.
> >
> > If doing a single patch for the complete rename was too much, perhaps
> > doing one header (or if it makes sense set of headers)
> > at a time would be easier to read?  With a final patch doing the compat=
ible
> > addition.  Maybe let's see what other reviewers think though. =20
>=20
>=20
> I don't completely understand what you mean here - but first let me=20
> briefly recap what I was trying to do here.
>=20
> In patches 1-5 of this series, I intended to update all existing support=
=20
> for ADC7 by renaming it to ADC5 Gen2 to match the correct name used=20
> internally. In addition, since I am adding support for ADC5 Gen3 in=20
> patches 6 and 7, I thought it would make sense to rename this older=20
> peripheral, to make it more obvious to everyone that this version lies=20
> between ADC5 and ADC5 Gen3.
>=20
> The patches were organized like=A0 this:
>=20
> Patch 1 - Update documentation to add gen2 compatible and update=20
> examples(without removing older compatible). Add new binding files=20
> equivalent to existing ADC7 files, just with macros and file names=20
> updated to use "adc5_gen2" instead of "adc7"
>=20
> Patch 2 - Update driver files to replace usage of "adc7" with "adc5=20
> gen2", adding new compatible for adc5 gen2 without removing exsiting one=
=20
> for adc7.
>=20
> Patch 3 - Update compatible, macros and binding files included in all=20
> devicetree files, based on the earlier two changes.
>=20
> Patch 4 - Delete all instances of adc7 compatible from documentation=20
> files. Delete all older binding files
>=20
> Patch 5 - Delete the adc7 compatible from the driver
>=20
>=20
> Based on the comments I got, I understand I cannot proceed as such with=20
> patches 4 and 5, I can amend/drop them. But to get back to your above=20
> point about my overall approach, how exactly would you like me to=20
> structure my patch series?
>=20
> Should I make one big patch for documentation, bindings, driver and=20
> devicetree changes where I update the naming and deprecate adc7 usage?=20
> This may be straightforward but also hard to review.
>=20
>=20
> Or a patch series like this:
>=20
> One patch to update documentation
>=20
> One patch to update the bindings (headers) (Or one patch per header file?)
>=20
> One patch to update driver file (adding new compatible and comment to=20
> deprecate old one)
>=20
> One patch to update all devicetree files (or separate patches?)

It must remain buildable at all times.  That can either be done by
duplicating everything, or by pushing through a patch that performs
all renames (maybe excluding bindings as we care less about that).
The all renames in single patch is a lot easier to review as can
see both sides of the change in a single patch.

Breaking that up into sets of renames will keep it manageable.

Jonathan

>=20
> Please let me know what you think.
>=20
> > A few other comments inline,
> >
> > Jonathan
> >
> > =20
> >>  =20
> >>   properties:
> >> @@ -27,6 +27,7 @@ properties:
> >>             - qcom,spmi-adc5
> >>             - qcom,spmi-adc-rev2
> >>             - qcom,spmi-adc7
> >> +          - qcom,spmi-adc5-gen2 =20
> > Alphabetical order (roughly given currently list). So I'd stick
> > this after qcom,spmi-adc5 =20
>=20
>=20
> Will reorder them in the next patchset.
>=20
>=20
> >>  =20
> >>     reg:
> >>       description: VADC base address in the SPMI PMIC register map
> >> @@ -71,7 +72,7 @@ patternProperties:
> >>           description: |
> >>             ADC channel number.
> >>             See include/dt-bindings/iio/qcom,spmi-vadc.h
> >> -          For PMIC7 ADC, the channel numbers are specified separately=
 per PMIC
> >> +          For PMIC5 Gen2 ADC, the channel numbers are specified separ=
ately per PMIC
> >>             in the PMIC-specific files in include/dt-bindings/iio/.
> >>  =20
> >>         label:
> >> @@ -114,7 +115,7 @@ patternProperties:
> >>                 channel calibration. If property is not found, channel=
 will be
> >>                 calibrated with 0.625V and 1.25V reference channels, a=
lso
> >>                 known as absolute calibration.
> >> -            - For compatible property "qcom,spmi-adc5", "qcom,spmi-ad=
c7" and
> >> +            - For compatible property "qcom,spmi-adc5", "qcom,spmi-ad=
c5-gen2" and
> >>                 "qcom,spmi-adc-rev2", if this property is specified VA=
DC will use
> >>                 the VDD reference (1.875V) and GND for channel calibra=
tion. If
> >>                 property is not found, channel will be calibrated with=
 0V and 1.25V
> >> @@ -213,7 +214,9 @@ allOf:
> >>         properties:
> >>           compatible:
> >>             contains:
> >> -            const: qcom,spmi-adc7
> >> +            enum :
> >> +                - qcom,spmi-adc7 =20
> > There is a deprecated marking for dt-bindings. Might be good to use it =
here. =20
>=20
>=20
> Thanks for your suggestion, I'll do this in the next patchset.
>=20
>=20
> > =20
> >> +                - qcom,spmi-adc5-gen2
> >>  =20
> >>       then: =20
>=20
> Thanks,
>=20
> Jishnu
>=20
> >> =20


