Return-Path: <devicetree+bounces-254803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B09DBD1C98F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FE8E300E4F9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 05:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9E2357A30;
	Wed, 14 Jan 2026 05:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkSyw4M8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jxOoKxsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5EF366557
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768369251; cv=none; b=c8MPFFGQJ4wzEXZHcuXOBqvnUf4QnrGK6PSQ0UiW1rAmVDOvgSy/zQuGA1dAbg4nzWbhrpGoElyu/IhUXNu4THA066UjGFbtx86A0ZfNCgt3stX1o2BWeWXdtfftvtuKgNXnWyN0v/o2wnrPNOFcO0ALWoKtXzJaMbSaCUFINrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768369251; c=relaxed/simple;
	bh=a4WsXzZWoNjdg0FfAqolDc7/Dwwielkku9o9g6uKcQ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fPrjh+WzPARNPn+3a+Ol/oVSRoDVStISxezj7EKSw6Ts94duChkhFZ95ooXYq2DzH6YvL6gqIp2Pa2yj7t7nU8SSz6PbPVHaHWKTSHygdG3JVxiXg4y+HIT4+rCtm2/IB+UFopr5YzEiPzhMz6c1ISWjklGQW6vbcBEPiGMAD2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkSyw4M8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jxOoKxsN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E5ErLY2522075
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YltZYJZ8/FFCqWJQVPD4dTiy7205pY/75qTvfZ0+xvI=; b=hkSyw4M8nm/XdsIo
	bEdd72AoWWkJb9CaYG+R40/+NCSF3mAeKKZDDPtKY3DX4i1kBZQ7zebb7juQmVbx
	K5o1B9jNCrVNU9zZSQ6AB55ksRKg2t4P2z7giRRJPS5iFCeyVEQYUsxXQonfaXTy
	nz8LV3rqLqg90Sr43GJIfOWhYnAfWXC1GeNzuljYRhF+eyMUHoZgR1lVs1iXqgrY
	j5sS0/ywqudIPj6BUpZKFw9Vvp5JkFIyrIR1KlimVSoTJv6DtoSktEJXd1YwmPz7
	1c7+KOUJtGYvMz/YjQ2Tp6vHp1HDeFEYVsnBnjSyT5AVDuJNGiC7z5MXdgD8bDpK
	VQemaA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnuk91xy7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:40:39 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a2ea47fa5so11881286d6.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 21:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768369238; x=1768974038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YltZYJZ8/FFCqWJQVPD4dTiy7205pY/75qTvfZ0+xvI=;
        b=jxOoKxsNch3FlFit7qa6TAKD8XrnLfU4VsewTyRJogr4U+jEynSl5FPi5vwSB+w58X
         yzMlbUb9jzUcOJcoCl060Dbp26C6ch3xMjnChrphvvC821LPwBRpkdc2IiBlU6XkNDoI
         byAQ1IQLxB1ra3KLcjoyGHjatDBHL2qpEZNmISrURMyT1Vpbs5gxxH36okK1uKyYtnU2
         yHRoal4KX0XMtH2dfMcE+OexBn9N/wDcxZpt7MOSObVLXYgJRK3wX/T0jKnDIC9pbOjA
         U/pidH1HD1KE5vpxMU5gSaNCXAl0ULXmtRrp80OBIpPxCLKyFjCiKM7Tj1LvRWbKal8p
         Jv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768369238; x=1768974038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YltZYJZ8/FFCqWJQVPD4dTiy7205pY/75qTvfZ0+xvI=;
        b=CWRP8fdYY7Jij7mq85pvPhD1z2weoY1G4zkbKjBblIdxxypQyJXq8UZSWmc9UgaGF8
         /BG4LASBKs3jfWK+hCFFzBNTyQ5jWQw6A7KxCCcu4kEqenJSKl+VXx0/kkmoPtFEeBlo
         FI+TjpF/vE1jajE7R6gQXmWYGP1wICz7q0eU/22Hms3r4Q3ewaS7+DgKsDSgKuTcxnvY
         ROGHqsrGL4XyIgQ1zum35oZB/7agDvUSADB/0hdEluysZL2SQ3vIXGK0LOmHguLCd/jO
         zerWHb+MNbT7CcdAZCtAqiw68Lr2YC/t2O72EU1DsdAaQJ0jSjpHm0890bXQ+klsrwaV
         SAnA==
X-Forwarded-Encrypted: i=1; AJvYcCWpQe5VhWu/liaOe5+Wk7tFI0YfqWoiY13JgR2givQ4MEVpeJVTTjyjU0dTgS5s4qmx6bcsWXBDDsI7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3dQTo6xrcqsgyKpSTGu1g78pJ5wsFzysV769EVtFIfvJqmz8M
	tW52BS88t0eUClze2Fwd36dJSbxXlNSaZdTG9Zzf65GztCAVKFb9xY9wvU0pjI42mx3w8z6CiL4
	MWKoKMJXeD9gWVobM2Lym7YmEX7Ja/InTeaJP62FS0JG4EKDDiKjsgexUsg+5Ay8RhCNHy+YeJj
	oYIBtIfrdGr3vuAzuyjncp/xdJwmTeHeeXT8hwZps=
X-Gm-Gg: AY/fxX7re51niVF8HpUK+cweV1ABthl5qaNaH5XDhbgWVVBFT3TIVSAyb2ieHOyFEs0
	00IeOgYtfMtvipFHLD7LiIX2kUNLpcTs0fxMdMZ+klJXAnX9cWDY2CTBSwFzpmRffuQWZqo3CQ2
	O2diVzwcYBaQBL5ggk+rs87PNvKh573Gy5C7/CJTGYkXvEH2sXqI8SaopztKfXTX6Zm/k=
X-Received: by 2002:a05:6214:301e:b0:888:4930:7989 with SMTP id 6a1803df08f44-89274188cedmr21693486d6.36.1768369238491;
        Tue, 13 Jan 2026 21:40:38 -0800 (PST)
X-Received: by 2002:a05:6214:301e:b0:888:4930:7989 with SMTP id
 6a1803df08f44-89274188cedmr21693246d6.36.1768369238047; Tue, 13 Jan 2026
 21:40:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com> <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com> <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
In-Reply-To: <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 11:10:26 +0530
X-Gm-Features: AZwV_QjHwh5ovf5EN6Tyl3Ug9Cf5imbrDy6Du4j2KN4SYA_3sBdnF4y6Nbv7fyg
Message-ID: <CAHz4bYtYMZQSdw4XKSB06fT2MzZHu=AgdXGrZ73XVXi1sMwyyw@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=ebQwvrEH c=1 sm=1 tr=0 ts=69672c57 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=d3pjDsmsH-2TaDM6u_MA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 2HY8bfL-xnuDDJHRkLp0YgkvyWd5fMM_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA0MSBTYWx0ZWRfXzu7058N525jy
 Agc3pNXS9FEAhQkSINdh5Qdr47hmBJfnGU1vv//z03FdroFTmSVbs+rS3jis75u/AyA13KmdjLk
 AEMq5U12/dX8GcelKJ7m0VZtcH2qU1uH+wpE12VgDaIDlWP+99S1+AfbCldJfr6jJtGnAwEwEdo
 OkHPqu3vcQHR4rETbfWpszbIkGUvZ2vxGclSSvH84ySc9viAdSuFY9Z4KObXQSfQbdVw0uzHHkd
 pPX/nWiHymvME6Rzf/z+8x6GCzDWLCXWJyW4MEjzyYZ7UFlPqUEsxfdolag2V1cbdXvBI2W97+N
 /ht5DeLNQ5BvtNZB2WULmVucCkunUMHEcWLnv9TWyDTWe8Ixw7zm7NQcTwQPhmQVYvv0+V4qxFA
 b87PsXSU32jU3kQUVtUGd2sy5zXdoXs8S9WYAAO7Wftsb4ZLI800ziOjMMEO3xjReZPfGxIzAI1
 1nVB0aQPBjd3r+M/odg==
X-Proofpoint-GUID: 2HY8bfL-xnuDDJHRkLp0YgkvyWd5fMM_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140041

On Tue, Jan 13, 2026 at 4:59=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
> > On Sat, Dec 20, 2025 at 9:47=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
> > > > Enable secondary USB controller in host mode on lemans EVK Platform=
.
> > > >
> > > > For secondary USB Typec port, there is a genesys USB HUB GL3590 hav=
ing 4
> > > > ports sitting in between SOC and HD3SS3220 Type-C port controller a=
nd SS
> > > > lines run from the SoC through the hub to the Port controller. Mark=
 the
> > > > second USB controller as host only capable.
> > > >
> > > > Add HD3SS3220 Type-C port controller along with Type-c connector fo=
r
> > > > controlling vbus supply.
> > > >
> > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 158 ++++++++++++++++++++=
++++
> > > >  1 file changed, 158 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/b=
oot/dts/qcom/lemans-evk.dts
> > > > index 70d85b6ba772..d72639479d75 100644
> > > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > @@ -67,6 +67,47 @@ usb0_con_ss_ep: endpoint {
> > > >               };
> > > >       };
> > > >
> > > > +     connector-1 {
> > > > +             compatible =3D "usb-c-connector";
> > > > +             label =3D "USB1-Type-C";
> > > > +             data-role =3D "host";
> > > > +             power-role =3D "dual";
> > > > +             try-power-role =3D "source";
> > > > +
> > > > +             vbus-supply =3D <&vbus_supply_regulator_1>;
> > > > +
> > > > +             ports {
> > > > +                     #address-cells =3D <1>;
> > > > +                     #size-cells =3D <0>;
> > > > +
> > > > +                     port@0 {
> > > > +                             reg =3D <0>;
> > > > +
> > > > +                             usb1_con_ss_ep: endpoint {
> > > > +                                     remote-endpoint =3D <&hd3ss32=
20_1_in_ep>;
> > > > +                             };
> > > > +                     };
> > > > +
> > > > +                     port@1 {
> > > > +                             reg =3D <1>;
> > > > +
> > > > +                             usb1_hs_in: endpoint {
> > > > +                                     remote-endpoint =3D <&usb_hub=
_2_1>;
> > > > +                             };
> > > > +
> > > > +                     };
> > > > +
> > > > +                     port@2 {
> > > > +                             reg =3D <2>;
> > > > +
> > > > +                             usb1_ss_in: endpoint {
> > > > +                                     remote-endpoint =3D <&usb_hub=
_3_1>;
> > > > +                             };
> > > > +
> > > > +                     };
> > > > +             };
> > > > +     };
> > > > +
> > > >       edp0-connector {
> > > >               compatible =3D "dp-connector";
> > > >               label =3D "EDP0";
> > > > @@ -140,6 +181,16 @@ vbus_supply_regulator_0: regulator-vbus-supply=
-0 {
> > > >               enable-active-high;
> > > >       };
> > > >
> > > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > > +             compatible =3D "regulator-fixed";
> > > > +             regulator-name =3D "vbus_supply_1";
> > > > +             gpio =3D <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > > +             regulator-min-microvolt =3D <5000000>;
> > > > +             regulator-max-microvolt =3D <5000000>;
> > > > +             regulator-boot-on;
> > > > +             enable-active-high;
> > > > +     };
> > > > +
> > > >       vmmc_sdc: regulator-vmmc-sdc {
> > > >               compatible =3D "regulator-fixed";
> > > >
> > > > @@ -527,6 +578,33 @@ hd3ss3220_0_out_ep: endpoint {
> > > >                       };
> > > >               };
> > > >       };
> > > > +
> > > > +     usb-typec@47 {
> > > > +             compatible =3D "ti,hd3ss3220";
> > > > +             reg =3D <0x47>;
> > > > +
> > > > +             interrupts-extended =3D <&pmm8654au_2_gpios 6 IRQ_TYP=
E_EDGE_FALLING>;
> > > > +
> > > > +             id-gpios =3D <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > > +
> > > > +             pinctrl-0 =3D <&usb1_id>, <&usb1_intr>;
> > > > +             pinctrl-names =3D "default";
> > > > +
> > > > +             ports {
> > > > +                     #address-cells =3D <1>;
> > > > +                     #size-cells =3D <0>;
> > > > +
> > > > +                     port@0 {
> > > > +                             reg =3D <0>;
> > > > +
> > > > +                             hd3ss3220_1_in_ep: endpoint {
> > > > +                                     remote-endpoint =3D <&usb1_co=
n_ss_ep>;
> > > > +                             };
> > > > +                     };
> > > > +
> > > > +             };
> > > > +     };
> > > > +
> > > >  };
> > > >
> > > >  &i2c18 {
> > > > @@ -690,6 +768,14 @@ usb0_intr_state: usb0-intr-state {
> > > >               bias-pull-up;
> > > >               power-source =3D <0>;
> > > >       };
> > > > +
> > > > +     usb1_intr: usb1-intr-state {
> > > > +             pins =3D "gpio6";
> > > > +             function =3D "normal";
> > > > +             input-enable;
> > > > +             bias-pull-up;
> > > > +             power-source =3D <0>;
> > > > +     };
> > > >  };
> > > >
> > > >  &qup_i2c19_default {
> > > > @@ -849,6 +935,12 @@ usb_id: usb-id-state {
> > > >               function =3D "gpio";
> > > >               bias-pull-up;
> > > >       };
> > > > +
> > > > +     usb1_id: usb1-id-state {
> > > > +             pins =3D "gpio51";
> > > > +             function =3D "gpio";
> > > > +             bias-pull-up;
> > > > +     };
> > > >  };
> > > >
> > > >  &uart10 {
> > > > @@ -903,6 +995,72 @@ &usb_0_qmpphy {
> > > >       status =3D "okay";
> > > >  };
> > > >
> > > > +&usb_1 {
> > > > +     dr_mode =3D "host";
> > > > +
> > > > +     #address-cells =3D <1>;
> > > > +     #size-cells =3D <0>;
> > > > +
> > > > +     status =3D "okay";
> > > > +
> > > > +     usb_hub_2_x: hub@1 {
> > > > +             compatible =3D "usb5e3,610";
> > > > +             reg =3D <1>;
> > > > +             peer-hub =3D <&usb_hub_3_x>;
> > > > +             #address-cells =3D <1>;
> > > > +             #size-cells =3D <0>;
> > > > +
> > > > +             ports {
> > > > +                     #address-cells =3D <1>;
> > > > +                     #size-cells =3D <0>;
> > > > +
> > > > +                     port@1 {
> > > > +                             reg =3D <1>;
> > > > +
> > > > +                             usb_hub_2_1: endpoint {
> > > > +                                     remote-endpoint =3D <&usb1_hs=
_in>;
> > > > +                             };
> > >
> > > Are all other ports disconnected? If so, why do we need a hub?
> > Hi Dmitry,
> > I didn't understand your query, can you give more context to it?
>
> You have described one port of the hub. How are other ports routed? Are
> they connected to outer ports? To some other devices? Unconnected?
Hi Dmitry,
I would like to put it this way, USB HUB has 4 ports but only one port
of the hub is used between SOC and Type-C controller.
Remaining 3 ports are used by other devices.

Regards,
Swati

