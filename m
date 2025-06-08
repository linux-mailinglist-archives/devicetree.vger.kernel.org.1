Return-Path: <devicetree+bounces-183578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C11FBAD128A
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 16:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F1E91888290
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 14:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB73822AE75;
	Sun,  8 Jun 2025 14:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CHyg7LiC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25E917741
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 14:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749391826; cv=none; b=ZoEIEIcgFbZCgi0XrbWjkb3BUhtkrdzYCg7RnZdA34SOR2XPKHcxkjbJJTwoJhDnntOeIHoAm5Op54Iix0fEPmP+2hLz9bFQ4AyDPmEZmUCoOywr7UP0llb7PG7SVHHU4YDrMJOuXhcaOa2OuJN32lwjnWHNXPuNa37KMrj4C+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749391826; c=relaxed/simple;
	bh=eRFqNCFkt+f4mqWQ/t/lLEJnab3T/eF+c+S1MTmC7OE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GQyT6gOJnHAcD0MpOrjQGdntoV9bX4NkgIWUXHwXSOhYYapFifUHgverFdHBAkM+vsbuKZGBYXT2EBGOX3IIzQGLEvRjeuV14KgD6EsSZ37lBBSZ0R8rgDq6EOQBm4Eyb5NXD4/G0ur5lTtQpQdcDQ++oDcH7IGlR8eVgMDjPWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CHyg7LiC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558DTGBj002854
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 14:10:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=yO2PTptqLO3J42jrF/h3pZfi+qlyfdweEdQ+r5qxEE8=; b=CH
	yg7LiCRv4rvgF/3pTGCDSbQyGJkGoSqh0si9urg82KJ6HH2xb9C06FQMdw0CYuGN
	jWBU1icw28udLpA7au2l4bsCbcgYkVDIc1BJTnmRundJQ7gP+D7NkglMphoG13iv
	J303ljCEZEMFgzMkxCKCiIUzM0LVWCdKNkJsjS5T0rxwa/u0lq9eWCKYlNeLmvJ1
	nqBSA+SpBarXvYlSq+7e4y3rJXyRZdEjQwXYPnsju7tg7Wl1gJMxohZKhBBgsAfl
	JQJWfcBIkEnTXdHJYEzrEmJUd7kn0kOVqNjmGsQwZfJAXXScp6IfGSLNkp/AkxTW
	vftf+rh/NNbYGRWDGI4w==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn62u1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 14:10:23 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-2e4a20bbd1aso3452176fac.1
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 07:10:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749391823; x=1749996623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yO2PTptqLO3J42jrF/h3pZfi+qlyfdweEdQ+r5qxEE8=;
        b=TAOHisnMTdO8pyCwRVnVA4gZ8cqv0McV4i+Wm/WQUD2aN5Lm07ULxQaU+rT77gdtXz
         eVjgUHFKmfVCaSaTupxGfWskK3VrS460bvUcVW62Qblwc4YFeTyckGhdTOJU1SD6fhnZ
         XK1CXQ6Q0t+vwoHMWlHvNyduKUNMoUdt+ja+SUKDdQAcdcRa89tcr/Q3P+kgoAwnKKIb
         N5mnDCKywVXpjhsndlCRBu0h8phkAAMJTbL8vS0IW6uV8xhQlOETttXsHxcdna1AKNJy
         741Cdu7CcPsYnB8akSg5iYQzQ/wSsHL3BpmOzZH5Y7xb79j+BQUzch28CshwQ+SbL5f0
         e1Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWNRMcf4siM1aA6B/XGFM2F+3c8SBuJyLdAa3wvlU2+towszL9xAYQpcuqrCs8H9JAGtceQUb7ffAnL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw80Xhg3j8VTLh9KMj1n+28pJYcf8DCFoZKxfzkE5iA6r8jAFjz
	oAkE/NQ/YT0dAzNYOUj7Xsjle9ZnL3Krtvw41iJ4gMIezU0OF7VYuzuZicOQ55hggGc09Mkhd+F
	Ihbx/QSbjKr2Qo5lcy+dubQfTwj569o6PjcmWY9q1B98iuVq8hDfbP9ktuaKbirP08ncQpRfCVI
	owOF0cnZ9dJvMFhNpBviLMk4kygkDGCROQRGhJ2xU=
X-Gm-Gg: ASbGncv1aqYXWk9bh5oS7XeqfmORW1QDRfsXlNqmKFTb9N//n8HiS3jbQW/j1FIEoCC
	EHh/NV6A3/5WPhf6LsVrUi9EIePZuFLpD4P3ntYSdm+QPgwDev5IkdbHf7o0Hn/j153jaaEAjwB
	sBSgMlE1fbtYj09Vvfqg55o2WlAIQ/GFDPeWs=
X-Received: by 2002:a05:6870:a89b:b0:2b8:608d:5dd1 with SMTP id 586e51a60fabf-2ea24557e69mr2394047fac.18.1749391822713;
        Sun, 08 Jun 2025 07:10:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/1vxTU2Bz/RL3b0T47zztUUQuS+wl46jL0gULc1T9pUpmM4Jcmy2KcloGXMk7S33UepnxfJaeGsBnweZ2wPk=
X-Received: by 2002:a05:6870:a89b:b0:2b8:608d:5dd1 with SMTP id
 586e51a60fabf-2ea24557e69mr2394030fac.18.1749391822287; Sun, 08 Jun 2025
 07:10:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
 <20250607-x1p-adreno-v1-3-a8ea80f3b18b@oss.qualcomm.com> <wayrour74vlli27xrtxi2ff2v7q7ye2yknmk2mjpur5ry5gruv@hhh2mdb6lw2i>
In-Reply-To: <wayrour74vlli27xrtxi2ff2v7q7ye2yknmk2mjpur5ry5gruv@hhh2mdb6lw2i>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Sun, 8 Jun 2025 07:10:11 -0700
X-Gm-Features: AX0GCFsFNZiZEbNB5QOKdtpp_35NfPnwsAoCQZgzyWAJVSbekumFsonguuDtz3U
Message-ID: <CACSVV03X5EyAb5yCPDn1ot8vOFV_dKG7f6+yO5t9srr31AiUKw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add GPU support to X1P42100 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDExMiBTYWx0ZWRfX/iNb6+0kFix1
 yasCJG0I/K8ydm74HYuWnyzeJgkb3W2/KbBEaCQpqN8CCFizK3xSVfN3zen3Kqoccmt5XR/tvRe
 N7dpagHkAxoBsM7P8ETTYL7+EzezPbT46a3wCRcuE7U7Eh3Unu1LrW9/rZIzGZUevy9zzZn0dIH
 1oCTF3IS1fdQQsV/LBWGUuNOYbvp1U0bqGiKoyZfwNnQw6XPn1Wl62rZO0eRt3mJdb08hdK+hM2
 Mq6Xgm/h45P/rxp1NnUfUsc9Phx26+WNJeD/D7cvUAnErcJEz4LieSnrpUXVkAiTnI6CRDRfTGW
 E0lNS0eWcFurXQfdQMGuzjsxR3t+cVcc7QwRghBGEGzYOeDMVUJZbJitGbX2f+XiHofCB2bcwYR
 xAXpSZlA5SO65Bmjp8y6ubn7fLKZT0Wu4D/l5tI9U+x8zofof/b8rPXRCZIXHXiaN0GQAksQ
X-Proofpoint-GUID: 7hLk0blClLZ3CsL8UTylpYKXCDkXuQXy
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=684599cf cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=EUspDBNiAAAA:8 a=rPe8LK6Ab3Gl33toulsA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-ORIG-GUID: 7hLk0blClLZ3CsL8UTylpYKXCDkXuQXy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_01,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1011 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506080112

On Sat, Jun 7, 2025 at 1:17=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Jun 07, 2025 at 07:45:01PM +0530, Akhil P Oommen wrote:
> > X1P42100 SoC has a new GPU called Adreno X1-45 which is a smaller
> > version of Adreno X1-85 GPU. Describe this new GPU and also add
> > the secure gpu firmware path that should used for X1P42100 CRD.
> >
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi    |   7 ++
> >  arch/arm64/boot/dts/qcom/x1p42100-crd.dts |   4 +
> >  arch/arm64/boot/dts/qcom/x1p42100.dtsi    | 121 ++++++++++++++++++++++=
+++++++-
> >  3 files changed, 131 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/d=
ts/qcom/x1e80100.dtsi
> > index a8eb4c5fe99fe6dd49af200a738b6476d87279b2..558d7d387d7710770244fcc=
901f461384dd9b0d4 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -8245,6 +8245,13 @@ sbsa_watchdog: watchdog@1c840000 {
> >                       interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> >               };
> >
> > +             qfprom: efuse@221c8000 {
> > +                     compatible =3D "qcom,x1e80100-qfprom", "qcom,qfpr=
om";
> > +                     reg =3D <0 0x221c8000 0 0x1000>;
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <1>;
> > +             };
> > +
> >               pmu@24091000 {
> >                       compatible =3D "qcom,x1e80100-llcc-bwmon", "qcom,=
sc7280-llcc-bwmon";
> >                       reg =3D <0 0x24091000 0 0x1000>;
> > diff --git a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts b/arch/arm64/boo=
t/dts/qcom/x1p42100-crd.dts
> > index cf07860a63e97c388909fb5721ae7b9729b6c586..cf999c2cf8d4e0af8307825=
3fd39ece3a0c26a49 100644
> > --- a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
> > @@ -15,3 +15,7 @@ / {
> >       model =3D "Qualcomm Technologies, Inc. X1P42100 CRD";
> >       compatible =3D "qcom,x1p42100-crd", "qcom,x1p42100";
> >  };
> > +
> > +&gpu_zap_shader {
> > +     firmware-name =3D "qcom/x1p42100/gen71500_zap.mbn";
> > +};
> > diff --git a/arch/arm64/boot/dts/qcom/x1p42100.dtsi b/arch/arm64/boot/d=
ts/qcom/x1p42100.dtsi
> > index 27f479010bc330eb6445269a1c46bf78ec6f1bd4..5ed461ed5cca271d4364788=
8aa6eacac3de2ac9d 100644
> > --- a/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> > @@ -17,15 +17,134 @@
> >  /delete-node/ &cpu_pd9;
> >  /delete-node/ &cpu_pd10;
> >  /delete-node/ &cpu_pd11;
> > +/delete-node/ &gpu_opp_table;
> >  /delete-node/ &pcie3_phy;
> >
> >  &gcc {
> >       compatible =3D "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
> >  };
> >
> > -/* The GPU is physically different and will be brought up later */
> > +&gmu {
> > +     /delete-property/ compatible;
> > +     compatible =3D "qcom,adreno-gmu-x145.0", "qcom,adreno-gmu";
> > +};
> > +
> > +&qfprom {
> > +     gpu_speed_bin: gpu_speed_bin@119 {
> > +             reg =3D <0x119 0x2>;
> > +             bits =3D <7 9>;
> > +     };
> > +};
> > +
> >  &gpu {
> >       /delete-property/ compatible;
>
> I think, you can drop this line.
>
> > +
> > +     compatible =3D "qcom,adreno-43030c00", "qcom,adreno";
> > +
> > +     nvmem-cells =3D <&gpu_speed_bin>;
> > +     nvmem-cell-names =3D "speed_bin";
> > +
> > +     gpu_opp_table: opp-table {
> > +             compatible =3D "operating-points-v2-adreno", "operating-p=
oints-v2";
> > +
> > +             opp-1400000000 {
> > +                     opp-hz =3D /bits/ 64 <1400000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_TURBO_L4>;
> > +                     opp-peak-kBps =3D <16500000>;
> > +                     qcom,opp-acd-level =3D <0xa8295ffd>;
> > +                     opp-supported-hw =3D <0x3>;
> > +             };
> > +
> > +             opp-1250000000 {
> > +                     opp-hz =3D /bits/ 64 <1250000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_TURBO_L3>;
> > +                     opp-peak-kBps =3D <16500000>;
> > +                     qcom,opp-acd-level =3D <0x882a5ffd>;
> > +                     opp-supported-hw =3D <0x7>;
> > +             };
> > +
> > +             opp-1107000000 {
> > +                     opp-hz =3D /bits/ 64 <1107000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_TURBO_L1>;
> > +                     opp-peak-kBps =3D <16500000>;
> > +                     qcom,opp-acd-level =3D <0x882a5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             opp-1014000000 {
> > +                     opp-hz =3D /bits/ 64 <1014000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_TURBO>;
> > +                     opp-peak-kBps =3D <14398438>;
> > +                     qcom,opp-acd-level =3D <0xa82a5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             opp-940000000 {
> > +                     opp-hz =3D /bits/ 64 <940000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_NOM_L1>;
> > +                     opp-peak-kBps =3D <14398438>;
> > +                     qcom,opp-acd-level =3D <0xa82a5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             opp-825000000 {
> > +                     opp-hz =3D /bits/ 64 <825000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_NOM>;
> > +                     opp-peak-kBps =3D <12449219>;
> > +                     qcom,opp-acd-level =3D <0x882b5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             opp-720000000 {
> > +                     opp-hz =3D /bits/ 64 <720000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_SVS_L2>;
> > +                     opp-peak-kBps =3D <10687500>;
> > +                     qcom,opp-acd-level =3D <0xa82c5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             opp-666000000-0 {
> > +                     opp-hz =3D /bits/ 64 <666000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_SVS_L1>;
> > +                     opp-peak-kBps =3D <8171875>;
> > +                     qcom,opp-acd-level =3D <0xa82d5ffd>;
> > +                     opp-supported-hw =3D <0xf>;
> > +             };
> > +
> > +             /* Only applicable for SKUs which has 666Mhz as Fmax */
> > +             opp-666000000-1 {
> > +                     opp-hz =3D /bits/ 64 <666000000>;
> > +                     opp-level =3D <RPMH_REGULATOR_LEVEL_SVS_L1>;
> > +                     opp-peak-kBps =3D <16500000>;
>
> This looks odd, why is it so high?

You want max bandwidth on max opp

BR,
-R

