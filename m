Return-Path: <devicetree+bounces-222369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78266BA8528
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25B941630D4
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44FD5261B8D;
	Mon, 29 Sep 2025 07:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gQfDWEqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A44C25FA2D
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759132349; cv=none; b=WRvMJl7CXx0akHOmka+jIEJeWQr83iHlA4LnoVbfah0/eM/zSg/a5FvylvhAt7H+MfVre3UhRJ5dyQCDPjYDSanlh7s2kFDkeEPVfTMY3bhBeK+enMZkt9scfPgwrkyF/ysba07GqkD2FfsTfn+8bYpQwdMILJ0eXpaCNhQqUqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759132349; c=relaxed/simple;
	bh=OYl49xeEXpiI0RagBTycUAoRztRBz7XsSTezk35V2Hc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PlOObufUZXcGc2pKyWk5TicVE7/BTpdgwISjRvoj4sXuJ1Y5mwELdLgiAtU5iWKeLDbUqEKPNw5ubplTyYRg+3jh3kaLEqeB9AtcsQtLlWcemoEB3jmHCCW6oZ9TBoMayJadNj+FgyLxaobg1AwUlGrdqgoeJZSDq3PdTsLC6u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gQfDWEqA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SIUIh1010573
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/3bhZMKmMUmaTU+3BKHI6HH3EfslIEObhFbsznu1nTQ=; b=gQfDWEqA6pW8PD/O
	PKx7NeY2Dh0Ed/hKDl9I0dGNTt9/XWKHn4rXnzNpbQIWSwHqQ7WIDQvYpYZ0XXee
	VNyPBLu13ODcsT76GqdOqifsEnJM7LFkrPIUMtp7flEmZqIrd8ZOsAop3eBYuzGf
	3Or8LvKCy/WE5W2xFZQIzbCudYRNKzzOi8etky94e5PwzZfSiNaWZPqsU87pvIuX
	TJmSHMjNtfkSpEXftwCJZuSDhGTOSnzx58FEg8evOmcD+fI4OTJRdzPARKWOpddw
	7p3YTQfWSfFJYFiOogqjRfcBLF+m7E5Cg0Iwi2DrOUf8xrzL68hOm7Z+AFjxk7i+
	pgX5bg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5vdc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:52:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de4fb840abso75699211cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759132345; x=1759737145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/3bhZMKmMUmaTU+3BKHI6HH3EfslIEObhFbsznu1nTQ=;
        b=OtxsbT0W1nkdykSbqUvQMVOfTWTiIH3ram4+EKS8yOXcIF+hpLNUPqT2sdO30kJafY
         8BQ5cWHwfY38EiFrgiy8lhvmpJvjCkRReZzRcQt5S3oPPdjSiJ+NuIrQyMjqM8fZX3xm
         Fx+7oWOwUmrMKvO8eCE+OAewLjijHZWFPTb1zpLox9ZiIHgxwzU1oKy+D7+10SiG3z4M
         wbCf5IH2WjTxFzsrgxIZPxCQ7RrfIRr01zJCNdFCNslXbdNJhK+vkJ60XCMmJc9RNMpV
         CzptlWxn5Oha5J99Niwj8DbsyNJUUlGjd6H+IHuTB3p1X8xSLMilnDofKtHC2aNDgtQn
         /MEA==
X-Forwarded-Encrypted: i=1; AJvYcCWZk1Sj/XklCTPx6IJNzAYNzOPMlOubLGHs+DH7LbfGH3H5BXLrxGsFjzy7NAJCCgVeAkFLDfMEoafj@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ+YhA2VqyCQIs7a9Ur58ivfceDaMguYEs2Mw65dLobCCxGj0n
	VZYPgmsL6OFBhwrGRF125WaQHut99J3+wRwIHFUyrSdSIIAJDc3qyNrmAGT5YktyxlZAglMzxS7
	dvkeBlkw/Ll9qxG3yAjtgGxavH3ZNLAbWG3BEswKBnQSEYcu7AgWBbXjgqcg6AFslEtMcIbUyzC
	t1rCfufY8Gru0TjUoy//qptX+EVgfwJVlZSrN6JZM=
X-Gm-Gg: ASbGncuy4iX3Wd8hZT112vLn3n3kZiGE9oaTx+XDzMLp7HOl6UBNcksmeFJgIQvPFDV
	YEk2/dswEBe+IqAaAtCcwvUN3ZAuimcGGsbefWopjvZVg5gnGwL2QRoJXZcGKW9D0CMQFQIwDLU
	LCYXAmkMf5CMhb+cOpw05UDpAqgzAZE8N0lMTxk44S4+msFzulwzD/COa06d4etB4d1hM2c9Kok
	sNCAI27XPg=
X-Received: by 2002:a05:622a:19a7:b0:4d0:b31:e63d with SMTP id d75a77b69052e-4ded5b24c34mr111775041cf.35.1759132345283;
        Mon, 29 Sep 2025 00:52:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwO8ztuFh5yRJFV/G0DsFEp5rqg88Rqt4skhMXTedmpDojowQVpiAMDQ3BA2b1xWzYqlOph04xzyNszTgwz3s=
X-Received: by 2002:a05:622a:19a7:b0:4d0:b31:e63d with SMTP id
 d75a77b69052e-4ded5b24c34mr111774841cf.35.1759132344766; Mon, 29 Sep 2025
 00:52:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <LAizvAKB21pYsBNwprUFqHcf56-GeWV5IFNd-yzGM688kLehFGW9bQ-LgO3uS6zSt5cXJKjwg8HAGa2ev9E4mw==@protonmail.internalid>
 <20250926073421.17408-4-loic.poulain@oss.qualcomm.com> <35402c21-bef8-44ac-844b-1cc97ff83c6f@kernel.org>
In-Reply-To: <35402c21-bef8-44ac-844b-1cc97ff83c6f@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 09:52:14 +0200
X-Gm-Features: AS18NWDOSHkEL4yXiSPWpTN451IiyKugWRO9I8AyA7SxoQ6f_P5gemouvrFXM_s
Message-ID: <CAFEp6-3=5FLnn+uhJDaS4=szmeM6tLqoPCtweCLMV9y9vEtkig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qrb2210-rb1: Add overlay for
 vision mezzanine
To: "Bryan O'Donoghue" <bod@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68da3aba cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MUhHvKHzP_bnBK4GCF0A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: B-J_VvNAKlEb8w4StK8pOBcCbfpMyUd9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX6RwNZUMxPPdd
 CIehRAynMEYhpoBmXBXsYc/T0P83MZ04nRiK3y7TKDsyWHvu0U6R0lI+4tmrbLiPvZir8bfCnMF
 eJAnYcHxaVqYnQLCYsxVaHb2xj9jBKCtaUMVrkTRN8nkS9A0zFkw7pqSZotL7x+Qhp3Re4thyvx
 3iWgIRUKJJZ0i8RBQXRyPVqYqLrKDb2Vjlagdt9yWKJqZpId3pO6ISiiQxT4+N1lAN5UGeiQDkw
 JTuFYj8lA2efEYG7zVWCk/mrO2QvM5vdwcxxTZQgIIwCbBFJxOvpOMXpGIkRmDmkpZNQlqua2vv
 z/2O5VTEtGe2jBQl7Rgy4tLdTlWy5yNtksR6j2W+QuJRQGj4+HlW++RxxmkP5N+4OSLQwfrEzJq
 z1g5VIh0EeMKdE/WQuBLMz1RxUDugA==
X-Proofpoint-ORIG-GUID: B-J_VvNAKlEb8w4StK8pOBcCbfpMyUd9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

Hi Bryan,

On Sat, Sep 27, 2025 at 12:37=E2=80=AFPM Bryan O'Donoghue <bod@kernel.org> =
wrote:
>
> On 26/09/2025 08:34, Loic Poulain wrote:
> > This initial version includes support for OV9282 camera sensor.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >   arch/arm64/boot/dts/qcom/Makefile             |  5 ++
> >   .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 76 ++++++++++++++++++=
+
> >   2 files changed, 81 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzan=
ine.dtso
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qc=
om/Makefile
> > index d7f22476d510..bee021efc249 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -138,6 +138,11 @@ dtb-$(CONFIG_ARCH_QCOM)  +=3D qcs9100-ride.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs9100-ride-r3.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qdu1000-idp.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qrb2210-rb1.dtb
> > +
> > +qrb2210-rb1-vision-mezzanine-dtbs    :=3D qrb2210-rb1.dtb qrb2210-rb1-=
vision-mezzanine.dtbo
> > +
> > +dtb-$(CONFIG_ARCH_QCOM)      +=3D qrb2210-rb1-vision-mezzanine.dtb
> > +
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qrb4210-rb2.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qrb5165-rb5.dtb
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso=
 b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> > new file mode 100644
> > index 000000000000..3b6261131b75
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> > @@ -0,0 +1,76 @@
> > +// SPDX-License-Identifier: BSD-3-Clause
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +#include <dt-bindings/clock/qcom,gcc-qcm2290.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +&tlmm {
> > +     cam0a_default: cam0a-default-state {
> > +             pins =3D "gpio28";
> > +             function =3D "cam_mclk";
> > +             drive-strength =3D <16>;
> > +             bias-disable;
> > +     };
> > +};
> > +
> > +&pm8008 {
> > +     status =3D "okay";
> > +};
> > +
> > +&camss {
> > +     status =3D "okay";
> > +
> > +     vdd-csiphy-1p2-supply =3D <&pm4125_l5>;
> > +     vdd-csiphy-1p8-supply =3D <&pm4125_l13>;
> > +
> > +     ports {
> > +             port@0 {
> > +                     csiphy0_ep: endpoint {
> > +                             data-lanes =3D <0 1>;
> > +                             remote-endpoint =3D <&ov9282_ep>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&cci {
> > +     status =3D "okay";
> > +};
> > +
> > +&cci_i2c1 {
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +
> > +     /* Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */
> > +     camera@60 {
> > +             compatible =3D "ovti,ov9282";
> > +             reg =3D <0x60>;
> > +
> > +             /* Note: Reset is active-low but ov9282 driver logic is i=
nverted... */
> > +             reset-gpios =3D <&tlmm 18 GPIO_ACTIVE_LOW>;
>
> This comment is confusing me a bit.
>
> Shouldn't it be that the driver polarity gets fixed and the DTS just
> declares the correct thing ?

Yes, as Konrad pointed out, this comment is no longer relevant in V2.
I overlooked removing it when applying his suggested fix to the driver.


>
> > +
> > +             pinctrl-0 =3D <&cam0a_default>;
> > +             pinctrl-names =3D "default";
> > +
> > +             clocks =3D <&gcc GCC_CAMSS_MCLK3_CLK>;
> > +             assigned-clocks =3D <&gcc GCC_CAMSS_MCLK3_CLK>;
> > +             assigned-clock-rates =3D <24000000>;
> > +
> > +             avdd-supply =3D <&vreg_l3p>;
> > +             dvdd-supply =3D <&vreg_l1p>;
> > +             dovdd-supply =3D <&vreg_l7p>;
> > +
> > +             port {
> > +                     ov9282_ep: endpoint {
> > +                             link-frequencies =3D /bits/ 64 <400000000=
>;
> > +                             data-lanes =3D <1 2>;
> > +                             remote-endpoint =3D <&csiphy0_ep>;
> > +                        };
> > +                };
> > +     };
> > +};
> > --
> > 2.34.1
> >
> >
>
> ---
> bod

