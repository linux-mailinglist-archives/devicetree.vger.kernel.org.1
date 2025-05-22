Return-Path: <devicetree+bounces-179537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF56AC0B77
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D1C73B7A6E
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD4B28A71D;
	Thu, 22 May 2025 12:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gaiO47So"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E86D1527B1
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916234; cv=none; b=usXV8Oeg+1zjak8AcBfYc9Ek+9gerYawXLZSx3EdefWd09WnhcsCOUmP7gAWCj6wbCNq9miPC5032P8QGOf4O0pR7opkH2AVALTbvuwhz1OUNAwFfK/EmILBcX9xBAC/TPFPx3Jd8J/s6x0i4YkoMvWW3miPIVVzylVXIDZcgiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916234; c=relaxed/simple;
	bh=r/iDDrr0XfmgJ4JFhFolvnmGEfB4M3tzmf/f8qCwh3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NkHp+CCZirzjOjDD+HFeH5KC7pVo7LzDB1MeAOeMOKHAcckJnXrtmReD3FwXo5mAMYHhZ8/Fknh7fnI56c/GgqJhDhkcPkX6KuVAEnl/JicyWQBhf32jRFkuXM6WeFNNDL6r19QTTH3vem+37jvzVF/vwy/8AUpt318z2LPfLCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gaiO47So; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M71gHL000805
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pTNm4E8KMM0tOBGRYkPHrmoGvUWhWy8i+SlbW2+nzf0=; b=gaiO47SoPG6ZvyJ7
	1hr+FM+TAt1xz+OGeIDb3jozC1jcNU4wd5iAeh/hR8F+unZn90CwTjE0zM3NmUzL
	FoWycWT9kXG33zz/fBACGEfTiuc2PScGJL5Gy78Os2MYpYoSr34k1zKgZqCEmIeG
	67LhAyu9l3WR3eCcyChOXwLg7XUiN3ArzbmMDWVYMxspmQmvmwKQ9FB3o+RIJnKQ
	sFw1IQoDP3IBD7dhm9O6DN8SVaWig+KXfZQjH6E8lJ7Q1Ilz4eHJ0lN8pAkYHSjN
	lmaSWmIXNfKOyYXIOo3khheo0akoyZad9CDoVJAL/7x7vGwFDUAFgfFJHuD4vwX3
	/1+6yg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95tmmda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:17:11 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-231de0beccbso44945345ad.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 05:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747916230; x=1748521030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pTNm4E8KMM0tOBGRYkPHrmoGvUWhWy8i+SlbW2+nzf0=;
        b=AqY2rNKcHyHiYepQmMzi5ackNYlLoXS1NuDV2tyZYuBf6BtHlXhcpKYCILmEYrtvxl
         dmtn5ovbXIZMts8jRjzMsFhKsh18tBITp6fA2+Lm/TcHpysSlvelhniD8GUM63QN1Tye
         hEDkJ+aebMYS4L2Zt/OfG8HAai0qloAEB0DvsUXQbKfsDIo8UAAST8/eqJH8vFyCiBz/
         1cYF+Zw7z4ut+NiBctAviDdq/ewbnll17jTL8ZkraMVTNN06hzUl1ZKuMiiGSZXdT7qw
         fspz8xuwzLGIGvP1zEVvk0hrqv3xMjDrAEGoi6MjrvGHgtJ2OgtFfrH5zQzJ0hnboTTF
         avUA==
X-Forwarded-Encrypted: i=1; AJvYcCUCJumM2CFlXY3xYiq7dbGdUePzW2YhRsRy/GeAD6VDDWqd4gOUfiO5FUBxy8M/v2nlWl07W+pVNNmA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0dzfGJtp7A/joqZaKOr3K8N2WUQLQAnJWO2bylajbHbwAg4Xd
	Wtvp0A9sLAipQVqA13sCssdwpUbyFjg6+uBG85XpI4G9nU8iPekagZBdWjAPx/F7eS3dZU5uoCF
	wpxlSUSoWoF0HqRj9FOZBLAlxaVLPq4zHdw1NJmcfEXhG4Ie0kqaUbSC5LhwdONykB9dopx2eva
	A5qzvyUMKKW09KgTWroj18YdwsBBhsah4RTWPVjMM=
X-Gm-Gg: ASbGncvN+TbPyedRvFRC1A+VygWlVHHBxSNxrGfx+srmxJPIfAVM2Hkb70NH7NNW7k0
	YxpkSxfv1/Wwc/AxZL6krP0hmQnTlNvBN2ZbCIjrtAqB3LsFOGWTb4+oHf4+GaFHwigbjo/qSLp
	2ee8Xot/M=
X-Received: by 2002:a17:902:ce90:b0:232:5d3:aa73 with SMTP id d9443c01a7336-23205d3ae44mr310121185ad.13.1747916229929;
        Thu, 22 May 2025 05:17:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoSLXl5/4cgxXoGRMtvVyt7iK7+o/RJ/VrVLSgRKQy9k8zDOJHOO8r4gvb0ubtnF919mgbZwicxDSQ8BkmA5Y=
X-Received: by 2002:a17:902:ce90:b0:232:5d3:aa73 with SMTP id
 d9443c01a7336-23205d3ae44mr310120615ad.13.1747916229543; Thu, 22 May 2025
 05:17:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250516110029.1637270-1-quic_lxu5@quicinc.com>
 <20250516110029.1637270-2-quic_lxu5@quicinc.com> <uzyxagnmxz5tsjy32mfro2alwdpcq5kybwzcbsysul7u6adgdf@x7katw7eme6u>
 <b90ee18a-5e88-4c36-a623-ae9447c53a46@quicinc.com> <2mu3bncxoq57rxi22dyd6ys2wa5n3wmtadfvixozshxgenutai@dlkbqgplzrrd>
 <46caa88e-790b-4733-83bc-75ed6c7ca2d8@quicinc.com>
In-Reply-To: <46caa88e-790b-4733-83bc-75ed6c7ca2d8@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 22 May 2025 15:16:56 +0300
X-Gm-Features: AX0GCFuDjJasRehFewEiiJw-x3UccHeyPWTYxkBPQlNLcvub_E3TBxXS5baFHug
Message-ID: <CAO9ioeVoqQhDhBW_fVU8kkt=3trV9YhEDUO0izdf8cuCDqU4Tw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7280: Add memory region for audiopd
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682f15c7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=bh7bGpV3_KY8qhbZdMUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QA1e3h76IT4tEuecwI3jBPobdbgbw-kr
X-Proofpoint-GUID: QA1e3h76IT4tEuecwI3jBPobdbgbw-kr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDEyNCBTYWx0ZWRfX0LKM+gAxNx9A
 2i/NHc0SGcnsVwhl4W5fC938NxOUWQbaVQ30uTE/VQC2vR6thnWIGE4z/KpvGJr+fSDnWRIdMfe
 UzpKmtADJXuVN9KQgCyOQe4G519rLX0MinsNCULpmrsQKIrgUHh6VyCKNVQD+jEif6Wm2485y2Q
 eiMEAVKqzxQjjBvsQE8nZgd8yjEFKNURDJGvNRxfeiPfz2TkpNJLvC3lQF4e21IBKRNMD9j4gKI
 7J6rpdKskAqZPCmzihaaCCwoMML5Pt5BK/yNlCw2eSj9ocxorHL+19sBURNmk67O6dm8ltq9D7X
 upi08xfxI0SmRaFOU2eYjDHuF7AakttsrLGJ7tMXVdh7cZouCCBzyBEnfsNfP1RoIEo1dz6w5M9
 tSoRZ7tqMNZ9PHEQUvIEr4swe9t+8XYWCllQXN1gE1ltvFIV8ZlY3qaWcOWsBNgtITGCW8Wj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220124

On Thu, 22 May 2025 at 13:44, Ling Xu <quic_lxu5@quicinc.com> wrote:
>
> =E5=9C=A8 5/20/2025 9:53 PM, Dmitry Baryshkov =E5=86=99=E9=81=93:
> > On Tue, May 20, 2025 at 02:41:22PM +0800, Ling Xu wrote:
> >> =E5=9C=A8 5/17/2025 5:47 AM, Dmitry Baryshkov =E5=86=99=E9=81=93:
> >>> On Fri, May 16, 2025 at 04:30:27PM +0530, Ling Xu wrote:
> >>>> Add reserved memory region and VMIDs for audio PD dynamic loading an=
d
> >>>> remote heap memory requirements.
> >>>
> >>> Why? Was it not working without this heap?
> >>
> >> yes, it will not working without this heap.
> >> Memory region is required for audio PD for dynamic loading and remote =
heap memory
> >> requirements. For more info, please refer below patches, it has provid=
ed a more
> >> detailed explanation.
> >> https://lore.kernel.org/all/bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.q=
ualcomm.com/
> >> https://lore.kernel.org/all/effea02f-6ffb-42e9-87df-081caafab728@oss.q=
ualcomm.com/
> >
> > This triggers a bunch of questions:
> >
> > - What is audio PD?
> >
> Audio PD is a protection domain which is running on DSP for audio
> specific processing.
> > - Is it a required component?
> yes. it is needed wherever there is some audio use cases where
> DSP audio PD dynamic loading is needed.

Which use cases?

> > - For which platforms ?
> >
> For platforms that require dynamic loading of DSP audio PD.

Please be more specific, we are not playing a guessing game here.

> > - What happens if there is a memory region, but it is not used by the
> >   driver (SM8650, SM8550).
> >
> It won't be used.

So, what happens? DSP crash? system reboot? blue smoke coming from the SoC?

I'm asking all those questions to understand:
- whether this is applicable to previous SC7280 platforms or just RB3Gen2 /=
 IDP
- whether this needs to be backported or not
- whether a similar fix should be applied to other platforms.

> >>
> >>>>
> >>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
> >>>>  1 file changed, 11 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/=
dts/qcom/sc7280.dtsi
> >>>> index 8e86d75cc6b4..d9af79ff8c4e 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >>>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >>>> @@ -188,6 +188,14 @@ rmtfs_mem: rmtfs@9c900000 {
> >>>>                    qcom,client-id =3D <1>;
> >>>>                    qcom,vmid =3D <QCOM_SCM_VMID_MSS_MSA>;
> >>>>            };
> >>>> +
> >>>> +          adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> >>>> +                  compatible =3D "shared-dma-pool";
> >>>> +                  size =3D <0x0 0x800000>;
> >>>> +                  alignment =3D <0x0 0x100000>;
> >>>> +                  alloc-ranges =3D <0x0 0x80000000 0x0 0x40000000>;
> >>>> +                  no-map;
> >>>> +          };
> >>>>    };
> >>>>
> >>>>    cpus {
> >>>> @@ -3863,6 +3871,9 @@ fastrpc {
> >>>>                                    qcom,glink-channels =3D "fastrpcg=
link-apps-dsp";
> >>>>                                    label =3D "adsp";
> >>>>                                    qcom,non-secure-domain;
> >>>> +                                  memory-region =3D <&adsp_rpc_remo=
te_heap_mem>;
> >>>> +                                  qcom,vmids =3D <QCOM_SCM_VMID_LPA=
SS>,
> >>>> +                                                    <QCOM_SCM_VMID_=
ADSP_HEAP>;
> >>
> >> Thanks. Will modify this.
> >>
> >>> Please align '<' vertically.
> >>>
> >>>>                                    #address-cells =3D <1>;
> >>>>                                    #size-cells =3D <0>;
> >>>>
> >>>> --
> >>>> 2.34.1
> >>>>
> >>>
> >>
> >> --
> >> Thx and BRs,
> >> Ling Xu
> >>
> >
>
> --
> Thx and BRs,
> Ling Xu
>


--=20
With best wishes
Dmitry

