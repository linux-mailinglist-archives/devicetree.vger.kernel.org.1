Return-Path: <devicetree+bounces-163827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F23B1A7E3C3
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:16:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F629423C44
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BF12010F2;
	Mon,  7 Apr 2025 14:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jJzg6auM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DFC200114
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 14:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744037792; cv=none; b=lANoTc4sjoTr0m+28E/TrH4c+77rxAep+9s/M1lMF/V/YlXgnmPRvOMAJKD82Bc8s3yhHsfBsxKUT0F0HAQNK4MfX/rYZIcQJ8d7jN7yk7R2+ssoOc/MFDVNB0/vpWsIQp4xzgQg4ko8InL9e61Nu7r3uhIe9mmg/+LvgCeTGJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744037792; c=relaxed/simple;
	bh=6UI8aTSGakazrUFNzW5IKqoV8tYrfyR5sEwM2oYBLHk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E77YGveaCEPrBpk/CXLBeW1s6IfbmBbGqyBXbVezabN6UCEXruetxjkAt6PUBKtqnKNBpObLe0/TM5J3PjRcbCbmNws1HfFJHVHllRHOS8lq9Uto48O7LM20uVq6w//i1lbvjgcpT9rzBqT6Nyn2DzA3S0xLN9qi2lmtuTM011s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jJzg6auM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378dloE010417
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 14:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qRGNZAniSs5NZThUUphmKckVn/8FyduJRn3s7xrxAng=; b=jJzg6auMLy6ZGL3C
	OO48Xsr57ST5aCLvbCvYpkQEXLZeAKMKh73T1D8ee0cQMT+DckqzWoAWD0pkcili
	zNF+cva8sR1eQpePT4r+jNYqeKlVxbLUcLjCuL0yng4/wtO0kjYrI7rzxgTlACuK
	TM7AZUPp8vQnd/LhsFYAy0NAX6YcCv2wC+xA7AiqkvBlTh+0PN0wMMtYzBKFvaEg
	HpAKumfYcng89nZpn4Z2c/8on9Tj3oX6l+zymYKxVWQXi2b7T1g5vtCvciqNyMz6
	Oh1m6Q/Mp/Sw64zBg7RetyZJiwZHBVCIx4Tc91zzdWwi9c+7TBnZCnLZKaenCsbx
	Smvh2Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2mm4r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 14:56:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e913e1cf4aso125728646d6.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 07:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744037789; x=1744642589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qRGNZAniSs5NZThUUphmKckVn/8FyduJRn3s7xrxAng=;
        b=V3zLcZq7bAC1v+8KpOAF3ucfmRa05KNdVf/yKin5Di6S1w9or3sysaBZyUcGY3RGeO
         3SG/SxTwwcNF0XU0LOvsEDoIMEN3Xo0EOAo+Xl7LmTwG/1T9Is71unXfIlqtOYduMxJa
         BsiiteaM5h0TiL//YRbAV4anTpsikGeEStGcHQS+4YbMnTJ8p7QBHE9FZ1dZuBZVdzWi
         +7JibD2jczaCx1K3drGC/ls2zzhVkBGCtN5QqsvOd3i86URjN/fWeTqvIC5AVA3Fhl4a
         mQYj0R05CW+kdTXoGUIyIBlrhOoIyaaZsLTLE4qf45UOBXBiXwp0y9zsLuBBorKl1L3E
         9Fmg==
X-Forwarded-Encrypted: i=1; AJvYcCX0sdFtBloXNm1w1o80i+bmtWDPQS5jvZ94G9mc4iKDTVgrwiK6zan6sX2ydQE2E0izpy6NhXKMnunX@vger.kernel.org
X-Gm-Message-State: AOJu0YyxN+/Tr1+tCcXG6oAN0rZJ5ZdJ78O+8Gj8frEb41b61Dq/fVF4
	qFmYZQ5ie9OmeYiIUsn/lRgAnxZ8wRLKrd7U5rT6UDh/BHSOmRlvlbDAdEvbIlSXF19m9lYwniv
	u2lFHeHDZtx4V9uiNbjJWdaHnTjQBaJ7M/WgpmG8P2rZKQtWVQHJxVJ6SOiZgQ73lNZlKINmV1z
	44FVdrMSH9Se0q8zAfuiPdFZk0Hau8+66SobI=
X-Gm-Gg: ASbGncvb6f/6ICPIszz65OjbKgVf4XOC5Spzj51PGjfDC348XTwCIf5Sw/5GDfQWyFi
	BZEJMoNf/y7KWZaY+Pk3VeByBINxBWA8dWs4VV1yMax9OdWLl8Gy7/A/ojpzc7drvKhg6tYNxoA
	==
X-Received: by 2002:ad4:4eed:0:b0:6d4:238e:35b0 with SMTP id 6a1803df08f44-6f00df142femr201961596d6.17.1744037788738;
        Mon, 07 Apr 2025 07:56:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4SQlydFr98Bm6VBMKgIf9NDsCokLLolwi3oBO7+k07Ojtak4FpJLuBR1jtlpxKmPcYNpI7RYCVG3JueZAlDE=
X-Received: by 2002:ad4:4eed:0:b0:6d4:238e:35b0 with SMTP id
 6a1803df08f44-6f00df142femr201961116d6.17.1744037788258; Mon, 07 Apr 2025
 07:56:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
 <0YH8BNtmMcywwRXI3xHiLyB_zFED-XbjzCyyI1Vc4184BPadVJ-GWj23lpEwaXEHqDPiMiraMsWlOd1qA_hiog==@protonmail.internalid>
 <20250403102256.101217-2-loic.poulain@oss.qualcomm.com> <1b649ead-f6d6-4fb0-b5ac-02cf2dba92ca@linaro.org>
In-Reply-To: <1b649ead-f6d6-4fb0-b5ac-02cf2dba92ca@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 7 Apr 2025 16:56:17 +0200
X-Gm-Features: ATxdqUFoj_14tfAA0QF2440EoTKH1_UsUUPGa4p8KbJPghjTxaKhuKJn2FcgfCg
Message-ID: <CAFEp6-2kamY6m_vzE0gMi-QKCRYf42RjMd7f2ud6bte=aL9mRA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm2290: Add CCI node
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: xEFS0dNtYFgqK0vPawjSX1nZWiH4KAe7
X-Proofpoint-GUID: xEFS0dNtYFgqK0vPawjSX1nZWiH4KAe7
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f3e79e cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=TG6dkdRgwK_m5Qx8Nx4A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_04,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=943 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070104

Hi Bryan,


On Fri, Apr 4, 2025 at 2:10=E2=80=AFPM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 03/04/2025 11:22, Loic Poulain wrote:
> > Add Camera Control Interface (CCI), supporting two I2C masters.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >   v2: Reorder commits; Update dts properties order and style
> >   v3: No change for this patch
> >
> >   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 ++++++++++++++++++++++++++=
+
> >   1 file changed, 50 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dt=
s/qcom/qcm2290.dtsi
> > index 7fb5de92bc4c..43fcb4f40a8c 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -557,6 +557,20 @@ qup_uart4_default: qup-uart4-default-state {
> >                               bias-disable;
> >                       };
> >
> > +                     cci0_default: cci0-default-state {
> > +                             pins =3D "gpio22", "gpio23";
> > +                             function =3D "cci_i2c";
> > +                             drive-strength =3D <2>;
> > +                             bias-disable;
> > +                     };
> > +
> > +                     cci1_default: cci1-default-state {
> > +                             pins =3D "gpio29", "gpio30";
> > +                             function =3D "cci_i2c";
> > +                             drive-strength =3D <2>;
> > +                             bias-disable;
> > +                     };
> > +
> >                       sdc1_state_on: sdc1-on-state {
> >                               clk-pins {
> >                                       pins =3D "sdc1_clk";
> > @@ -1603,6 +1617,42 @@ adreno_smmu: iommu@59a0000 {
> >                       #iommu-cells =3D <2>;
> >               };
> >
> > +             cci: cci@5c1b000 {
> > +                     compatible =3D "qcom,qcm2290-cci", "qcom,msm8996-=
cci";
> > +                     reg =3D <0x0 0x5c1b000 0x0 0x1000>;
> > +
> > +                     interrupts =3D <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>=
;
> > +
> > +                     clocks =3D <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GC=
C_CAMSS_CCI_0_CLK>;
> > +                     clock-names =3D "camss_top_ahb", "cci";
>
> do you not need an axi clock GCC_CAMSS_AXI_CLK ?

AFAIU AXI is not involved for CCI.

