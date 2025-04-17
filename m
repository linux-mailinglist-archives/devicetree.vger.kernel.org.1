Return-Path: <devicetree+bounces-168096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D335A9166A
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4227044582B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B67822E011;
	Thu, 17 Apr 2025 08:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y8BDrNmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D31022D7BA
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744878423; cv=none; b=K+AXCJzRNdyc9rS9yQrKokOyW0HN9lHeOjP1PRRl/xYf40WyNkhL1AniSKA1MfS38cr6T0ubeIEaFX6iv9jN56w2Cr7we2yq0wqm0pyzpsXI02BsKo87x1HJsdauTpP1UdgduxUVLQGohhhHbkIR4h0Z4+1QDT2ikWg2IajGyDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744878423; c=relaxed/simple;
	bh=BKIivXxHs1b9gAXDElmllbxSSWLFsYSNXq9pLIImI6s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UZK4xR4q+KB0RiPi4+Ubg7sJfBFJD7Nh/NPA41XwhzQk2sXykymkvFLuVPbqLruTR8d9aUKEj3AXL+JrtMZMWDwUgYOPuCoXD5txLVCRzcCjHoVmjcJ3GXNtGQKnWcJG11dUOQwZ4giaOvrn0qKfELMJoIN2ca3AYqI0kTkQP/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y8BDrNmP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5l52L027184
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:27:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	83cvyPAafvlTAvK6AzF/Pwab5EIGaOvKm4TyxCLdeaU=; b=Y8BDrNmPzuHgEJD1
	lYNfo6mVxKXE+P55xiIt6EXMJyr8n9H3CuQ9D+odDT0gbLL1PQDbI0Fq7jeHqVii
	FC8CBAIv320by+yZ/JTlyfHbaZxi9s633Ccik66f7OnRsLzSDdLjqpQ/rxgeFYch
	rCOV9uGmUwumihoH9WmZoL/qfesxpSCDLin0QVZ63Oa9bHdrRw2X6K367U4Z7/qb
	gdCA5ewbArIkFXsQ2IVy0BaSrODgyZDH4Pps+VZsAtYcXFsfbUySviL429Etssir
	uKyTUU2YyXmH8unHNU36kqk9ZK1aR+y7AsVsr2ZcvlheiYM1tFCQd31wVscLCgQu
	w1D5Kw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvjedqn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:27:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767db0bae2so8571721cf.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 01:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744878420; x=1745483220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=83cvyPAafvlTAvK6AzF/Pwab5EIGaOvKm4TyxCLdeaU=;
        b=ikWzySE1zrqu+Liiw0KieiIzXpKTHfopm7q90Salg8bdtQc8tro/VRxMUyLhAhH99/
         LbpbPmvbzbMPhX3y2hwxbJ99FGVc2MOV/81sxAJAEo3mPAZQ5bRP1eeBwGK7BnKdeVAM
         WmwuacM9oUOnfu6gMpE/IFIIDskXZs56nzE58AEfG1lR7CvERKrynMN0fV44mNJPFiJ4
         ff4LmOgCFkFHKJ9c4Y2K0ksW10e5qd4UjsWCA++euP00VGcJzj8FxlVPMrpJeVyph9n0
         Mn9FOGcjzyxB6AYu9VOIL88tBLTdaKtmJ61oksC+knUAUueg6w4OBbeCK9Tb855TeBNu
         7cuA==
X-Forwarded-Encrypted: i=1; AJvYcCWRdfJSLfjtF9kjGppjdd4eDXD0O8nMcA4zJ54/UwK9W796KHeicXD1QMcbxVVLn49IKxVnDEPv0I44@vger.kernel.org
X-Gm-Message-State: AOJu0YwMie9XPsl9pQwAsDVdTH1UCiJUEpWMQXsAMWTv9zsWWnZMjWSn
	1nF30pvJ+4GEmw1eRonMXPxUwg9vrLTKELtwhUCbdvhnCsewaXKQDe8Vlr3dCWmM7a+b27jJOKi
	8ZQW/0LOunvyktfRwZaH7J2CFqIduoR/dGZw94NUk7I9vUJ8g9w/cQvELPDyuJycMcYCVIueNlB
	Clhqaj4B2+CxYyYKjXAef8L4RIoFSAG6ZZO4w=
X-Gm-Gg: ASbGnctBuTECnB6KSIW35x9402D9saQnNcq6H3+BPvCqvCplLAm1nFcvCY/gyqF9lIX
	VSbiEFiu+svyz8iK13HYHVAsr1y36YjcYBoI/C7C9tE+Dlw3IM+2RcHVnK6MuS+vxaYKpewE=
X-Received: by 2002:a05:622a:34c:b0:476:8296:17e5 with SMTP id d75a77b69052e-47ad80b9cc6mr69649531cf.17.1744878419759;
        Thu, 17 Apr 2025 01:26:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGw6Stn4lrmdpFtkqFnNUBhTGAOaF+erBRjqCALhWstDoptoxoNXr/ew2NtJoQpa3RTXxJN/tJot5vn7aJMMwE=
X-Received: by 2002:a05:622a:34c:b0:476:8296:17e5 with SMTP id
 d75a77b69052e-47ad80b9cc6mr69649331cf.17.1744878419451; Thu, 17 Apr 2025
 01:26:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-3-loic.poulain@oss.qualcomm.com> <z5bemevabirdh5qhj6fajdihcucnoa5gxjkjv6s4aztruffn6u@w5rvy3sxeln3>
In-Reply-To: <z5bemevabirdh5qhj6fajdihcucnoa5gxjkjv6s4aztruffn6u@w5rvy3sxeln3>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 17 Apr 2025 10:26:48 +0200
X-Gm-Features: ATxdqUFBO4TZVE8l1wivylXiaXen15vpoE3XSSCeVm-VHtQgPlgpfatKDQ7Va44
Message-ID: <CAFEp6-3h19eJgJkXNR5sJisZbwHG=TmYhVEu10hTCnnBTqH+MQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph DPHY
 v2.0.1 init sequence
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=6800bb55 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=8rjO_nAUO5Pq_63w4wIA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: qWk9pf_lj9BB2L8QXGvGphwrzVwCkQeO
X-Proofpoint-ORIG-GUID: qWk9pf_lj9BB2L8QXGvGphwrzVwCkQeO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_02,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170065

Hi Dmitry,

On Thu, Apr 17, 2025 at 12:36=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Wed, Apr 16, 2025 at 02:09:05PM +0200, Loic Poulain wrote:
> > This is the CSI PHY version found in QCS2290/QCM2290 SoCs.
> > The table is extracted from downstream camera driver.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  .../qcom/camss/camss-csiphy-3ph-1-0.c         | 89 +++++++++++++++++++
> >  drivers/media/platform/qcom/camss/camss.h     |  1 +
> >  2 files changed, 90 insertions(+)
> >
> > diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b=
/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> > index f732a76de93e..0e314ff9292f 100644
> > --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> > +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> > @@ -319,6 +319,90 @@ csiphy_lane_regs lane_regs_sm8250[] =3D {
> >       {0x0884, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> >  };
> >
> > +/* GEN2 2.0.1 2PH DPHY mode */
> > +static const struct
> > +csiphy_lane_regs lane_regs_qcm2290[] =3D {
> > +     {0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> > +     {0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>
> lowercase hex, please.

I don't mind, but all other phy tables use upper case hex.

Regards,
Loic

