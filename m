Return-Path: <devicetree+bounces-167856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5AA90880
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E64E9189CD68
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A13207A06;
	Wed, 16 Apr 2025 16:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jRxRxxv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435161C27
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744820203; cv=none; b=V/DLCs6UY6gbPLRllR9YAVe84CaSr9EAIZK/qjIK9ib+Ws7QwNn0Ig1y3CC1uZf4vkc2P/jjdSf/VoERInb6Q1Yu4FFc69Stq7scv8CsWweUELVpW0bqwLnp6mrmDDdjOEEjIPn6LPhx3Qh+Kvp2oHcfI41JWD6XmMEN+GmFX6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744820203; c=relaxed/simple;
	bh=CnwNrCRLuflBZPFZFP4NWhNbXGVzpL+XeGZ9wSYRRoc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cd0Yv0CaGusH93KCFU+3tYhqjd3gVimZzVQzSaltpctTEdAgx+TkD53yRGp6o/9984MAZX4IP8a0sjaO+P/K0dM23e/u5hzveE3thmD1qUm/JNODweizOQ8N6rAuG5H5zjdXZIOcXWL1NExZEoGusCfEaLiDWWp0eaCvck3N3yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jRxRxxv3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mVOw030729
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:16:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IUwvyXYOCDlV6AdUm377Hu1dN5POoteGW8cjGXB2J7s=; b=jRxRxxv3DtAaGscp
	ZoAKJKcsSHbJ9NOM8y0hSsCDur3nq5oxxR6i3eP+K6nNJNCLV6/kPKnkbTFIfBlG
	YLOBqOJ4RKr73ONCALqbHKy90IUTgXk3wPtmjBr7HvoKZ255VHaqCi54udqMzY6z
	TCoRupBYg0XYqVAYIpoUTrr6nzJZl1RdSERonPrw6JY/7sY2p2frTS57UE8w34LL
	xeV5q3WagqElCjymS+DRLPj+S3KL1lsmbjFcEnoi+er7LLdxXqiRAncrL/FLVMeM
	7CEYZWwft/cN74Z5oIF8lTrJvzs7EPx6oPRg8boCBG9pK3xyje5j/Hx4lnzgBlWu
	wV05xg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxk40pw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:16:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f2af3128b0so16445596d6.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744820200; x=1745425000;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUwvyXYOCDlV6AdUm377Hu1dN5POoteGW8cjGXB2J7s=;
        b=SFslcc5tm6GtBUl2MGQ0U8HZIxpXYvw/qhZpBYYWjXcjB28/sz9eC7pjmKz3uvse/P
         8GdMbZdAFs2gJHuHo6Q1fHLHG515OrjBqiTy87vCiO1ElXdsd23+UMQMc20ZvH5odDwv
         TMf9pBEnxO7TYHge2vqoPE1FXBUF8dGTJ8rygDUOJOr9OZ8ykLqa0f8uY71Y2r3BHha8
         yK1I+qM65pJzZBh4vyf//dvBv0eQqHgrafHJthD2BjWQtU8tFNfslQZB1WYUKq/r4d5g
         AkQWjeX2cPCqY4dDo+C0v7Kd5ZLimRUseD5xZzgT/e/TXnjsF3oTNkmhol0MHehzA6MI
         g1Pg==
X-Forwarded-Encrypted: i=1; AJvYcCV+1ZXEKndlUnTmT3PiDjZHgFvTWmmwC2AcOiWC3H2E8rxhgL4zDSchwUR3D3CJncjEZbsV8Ev1gXDr@vger.kernel.org
X-Gm-Message-State: AOJu0YwdI213YUXrKmb9YSngqMhgvSKaMW34bh8wYkDGkBY8U94yE4oZ
	aP0uaYOQJY4Acy+uuFxVBx32QgZHkFgW201kZllu45GvbgH9YThIybnk+pB1SaiTG7vhc5fkNv0
	xabLaD1flEx4KnXBY+piDuAp9Lv/GN/aHGjoQC0G3KAacbLvm9STr8yny213/OTrpGDj/vw9rUQ
	qw6dE8RqyXyrBqpcqqnePvUHo73g6z/gsskKc=
X-Gm-Gg: ASbGncvcr86q5MFLZFApcauuoj+UyWhLL3i1MH0tqLvErcSns9tm93xnJfw+uspDn9a
	hI61s3daW0GQOuaKvu7zOOEeFFxLpPrhAj6BSSrU2z4t/WFd2t8ZjbddB5yD54peYVZ5f3Yo=
X-Received: by 2002:ad4:5965:0:b0:6e8:97f6:3229 with SMTP id 6a1803df08f44-6f2b2f4240amr38117436d6.16.1744820199991;
        Wed, 16 Apr 2025 09:16:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx21vZbnq0jtucTsIqzaBf3WtNCjD67d9WEjC1pVtPsaA9mLOnwj0r4CqLBJi/G73/FVZCLE6+697N5DBZyk0=
X-Received: by 2002:ad4:5965:0:b0:6e8:97f6:3229 with SMTP id
 6a1803df08f44-6f2b2f4240amr38117086d6.16.1744820199680; Wed, 16 Apr 2025
 09:16:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com> <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
In-Reply-To: <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 18:16:27 +0200
X-Gm-Features: ATxdqUFW77vP_4OlAAIRog3Se0kprB_UbJE19ejedwG6hLlqKFFJqi_BOdbcfu4
Message-ID: <CAFEp6-1iUapOg3DU2+NG7q9E5EPgwBuNUvpgLJL2jWKT=0SOkw@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67ffd7e9 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Iht8ywTv3xx2x2p8IFcA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: iXQddFvXcMQKcRP1BvJbiVUtUiz0WLfV
X-Proofpoint-ORIG-GUID: iXQddFvXcMQKcRP1BvJbiVUtUiz0WLfV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_06,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160133

On Wed, Apr 16, 2025 at 4:46=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 4/16/25 2:09 PM, Loic Poulain wrote:
> > Add node for the QCM2290 camera subsystem.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 93 +++++++++++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dt=
s/qcom/qcm2290.dtsi
> > index f0746123e594..4b81e721e50c 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -1579,6 +1579,99 @@ adreno_smmu: iommu@59a0000 {
> >                       #iommu-cells =3D <2>;
> >               };
> >
> > +             camss: camss@5c52000 {
>
> @5c6e000
> (first reg entry)
>
> > +                     compatible =3D "qcom,qcm2290-camss";
> > +
> > +                     reg =3D <0 0x5c6e000 0 0x1000>,
> > +                           <0 0x5c75000 0 0x1000>,
> > +                           <0 0x5c52000 0 0x1000>,
> > +                           <0 0x5c53000 0 0x1000>,
> > +                           <0 0x5c6f000 0 0x4000>,
> > +                           <0 0x5c76000 0 0x4000>;
> > +                     reg-names =3D "csid0",
> > +                                 "csid1",
> > +                                 "csiphy0",
> > +                                 "csiphy1",
> > +                                 "vfe0",
> > +                                 "vfe1";
>
> we also have a pair of TPGs at 0x5c6[68]000 - I think it would be good to
> describe them from the get-go

If we want to be ready for TPG, we may also want a camss 'top' reg
(0x05C11000), since it seems to be required for configuring CSID input
mux (TPG vs CSIPHY).

