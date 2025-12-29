Return-Path: <devicetree+bounces-250068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 818EACE6235
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 08:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78E8930BD510
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1C02DC793;
	Mon, 29 Dec 2025 07:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="krwH5JFr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RukebewQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62A123C4F4
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766992828; cv=none; b=rM5l4DeCrdmB55SYDWj5QocMxoKIZZpSqQPKWCXw4vJWicM68RSiK4bPa/b14AH/qegEwfHfooRlEsB2OC57sFgzCs1KXKxU3DKx1ud5O/lbU7QwkrnrP/ZuAkB6DQXHYDg3oP+3YhAu0bsY4udBw/9XCX2mkMeNQn1tGvHBTvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766992828; c=relaxed/simple;
	bh=iSGJN6w17v85UGowVnZHtEmu07nvSNRTpf8Pe4nBcE8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TE/CROM86i5/tCatACV9+kTNzYFBCeK/2iMIjVqLmcozOuSekehpfoPD3JPPcBr2v3IXcI+WxBabUPUgP63NQkEz6wtmD4+RSv5ujFhxdebSXfajIzMwnY6NIBaelNQAPr8//R901UbFfDY/EZpAW0G2LvB+9TpnO8Lyid10FIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=krwH5JFr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RukebewQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNjFhh106121
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3wnmgtAg5YROYz3C4bYMQ8bWM5TuAXI6aCDCM2G9hZw=; b=krwH5JFrTRplQE02
	/Ssslv5B2G71NfALqKhb8F4Pst4kbQCklMVs6c+wko3yL9xbezeHmPtCRE+oPuQB
	iccfJqCrGoaPJt6g1xrjXgeXj+3L+7epYyXHiq015d26F22mXPTLUcH3PeLQe0Mj
	tz0LcsES7AuQyvtJToVbdY9EsId04Ty5ldVvkMKLTyTJFMk66/fhdqPp+jmTJrlg
	Uhn8s+5gTvJPnV+/sIf1iJPljYFRIOAQIVvOGIDqH009QXH8MmRJNzTE7+oRgxTI
	Y32Hi1pmADGWlybYEIfaPeVvZgnidKT0pG3aay9nYR5qWQ8yKZtWvbMmN6pcQ+vN
	E9gbrw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5kmv3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:20:25 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c0c7e0a8ac1so13400289a12.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 23:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766992825; x=1767597625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wnmgtAg5YROYz3C4bYMQ8bWM5TuAXI6aCDCM2G9hZw=;
        b=RukebewQrjP/zR0UIHQE5xVUweTW1EF+SYwWg76C+yd0/RQq05Vux6o7ZvGNWFsTla
         v+SxPk8/GFBka64J+sQA3c053MattL5MKXf9+5lshJLvBqra3I83vx5/kn/bTZP+BupC
         ni6bfshYK2jn78AfhiZbGTVL6HE24ngxw5c7jkqipfbiwDwomPkXwPayWpyWGLZYR6xB
         My9Un9jgzGdWNdAdQN2suu89QG9wS25HDX7N64uRnE6caJ4Jn/1nbPCfB9lNUgEORvig
         vAXw5JGxeSJKhSKV7Oa05fG3QwVl9QLVK2NZsi7fm1dOxbHUqCvdNg/7gL+sQSdE1JZO
         6Mcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766992825; x=1767597625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3wnmgtAg5YROYz3C4bYMQ8bWM5TuAXI6aCDCM2G9hZw=;
        b=QMVWvBvBuyNE58ekrtASmxq6+pVQcxbSFKgbjJaAKaWLtHDCSuyap9n74HZVQP4Rq7
         Rtk/VF5Mg5FyYdAZoI8GVJ9Kf+nB1avuUCRmk1GczhFR3LqP2COMrkl0qYTzXw50ca5D
         89v2W6iTKQPW/0bmdYiqq2XOPSwrIrnK+zYijjztYyJmN7lnlCsTspCJPGi8cppjbSr6
         QfmY3CNbBw10wYVdMCU69vKoKy09fkidIlWC1cN4Lf/6OlqkvMF/+PJv2ZxW9xFFSVcz
         /KTNv47xu7JF3Y6Ptq0amP8bxAPQ1QxKc8fQtTfLIyQbkjJ+eAM3yFxQWh8dXnG+8jMg
         zU9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVsJ1BrKIoKJzQMJ7+YhX3JO1njLQlv3xEkmlgfRIIGF9wyft18t4Bs4Uyh1xuT9EMR8f4QF8pbageV@vger.kernel.org
X-Gm-Message-State: AOJu0YwN7Br2pQlc3ePg78gm5iEK55c48YJfKNuIBjhHDDWYdVNTwLX1
	gKFtqOWOLkMfaC20eeN+sL3Ujr18hClvVvED2OQGLJ/YHFqFajyqYw38r88nHZKhEhiwe/VlLYF
	iZnGVvpgT7lM4Qu2f6fr2y6eEk4M5C7kOaRanoxExp23bwwcNzDfGqeNycBDEx3K32NbftiLmpP
	ZHZhGqsWO1zlTCih1IdVELYyyqUo2PIT2NfeG2WbvnKnk7bRfigA==
X-Gm-Gg: AY/fxX4HNnJ2knQNUekjLag3qqu3cedBr4qt0/BZI+c9LFltwprD/a0Ng/aJU5oiNIm
	KgHB1A3ErflKyl+mSst4U1oMMP6odt247yn08SS8hyMv8qRt3WsqNAkZCgAy0H5WoSH38qFPNOw
	QMBHZXYIX1ekQvaOpkfe2+8ddFU5+u4AxjvJ83K3Q0agDnllZUE7mxaF6OeHQYASWo6cw=
X-Received: by 2002:a05:7300:ea08:b0:2b0:6a03:e69f with SMTP id 5a478bee46e88-2b06a0468c2mr16811476eec.11.1766992824463;
        Sun, 28 Dec 2025 23:20:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxENBsgsqsdHGu0psfzsguxqMyCL/eNi6YrGMV/5Q+ckljb4kEoGXmV0ws/nMXOc/A8L7I1f5bGOcgoKFqRr0=
X-Received: by 2002:a05:7300:ea08:b0:2b0:6a03:e69f with SMTP id
 5a478bee46e88-2b06a0468c2mr16811461eec.11.1766992823934; Sun, 28 Dec 2025
 23:20:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229070712.456138-1-sumit.garg@oss.qualcomm.com>
In-Reply-To: <20251229070712.456138-1-sumit.garg@oss.qualcomm.com>
From: Sumit Garg <sumit.garg@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 12:50:11 +0530
X-Gm-Features: AQt7F2p4eZPGsI0Sr4KW_jeNDkats20hwB4mCsM5KpYfpeYuyqSNhEt58zNAgQo
Message-ID: <CAGptzHOftKG_3h3KegrYuNiaDFCUHC8oS+eN2JyBDh=aRMod4g@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: agatti: Fix IOMMU DT properties
To: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        linux-kernel@vger.kernel.org, Prakash Gupta <guptap@qti.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: yzQwAsa5UGWxTiYQqHdPI-Yqzuv8xSC_
X-Proofpoint-ORIG-GUID: yzQwAsa5UGWxTiYQqHdPI-Yqzuv8xSC_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA2NyBTYWx0ZWRfX4eAtRKETfTYT
 OUWHU73fnPxoMAj8FnAgoLeuDOYlQ/TsBMafkz2yDKkUwTS6SnASU3KkQ3ODg8Xcqp8UuGqLLhf
 sdQwOMTj+fxrm1+xiGPdJvstTFAynzt1N/QlG5T2hj0Tvn1uAyLjNruvpreYVi3DLE8OhgUNgkB
 Vwe8IuSATU+3siF+o/6YKDXLTUs8hMwZwkUTZtfJrvshKkuusRpPgULT8UOiQdiRxJnZT9pXw3S
 /+PjOVuJvpjPGobtmmHEwd7LIH3v2qMeOpodIoKaqzpqRs50Ajl+i1EJH6hsG154h+QeWmjgP07
 16cZSzfY6dNY7viILVDnrNMJ6oWK0GOE+0piWXeD8rthaFR/q829Vt5XK/BE9GV4RfJQhm83nUk
 ZYtxat5CZXGC7OVEIZKmo/Zluj+JFsMwedEN4EwhPlU38IXyLDgdANjgqf24V8WwWY1/ZjXqsb2
 +ZHcWbNCLJRCxSf/kqg==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=69522bb9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4JOt4Ulxl2wDgeRoSCwA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_02,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1011 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290067

Hey Everyone,

On Mon, Dec 29, 2025 at 12:37=E2=80=AFPM Sumit Garg <sumit.garg@oss.qualcom=
m.com> wrote:
>
> Fix IOMMU DT propeties for GPU, display and video peripherals via
> dropping SMMU stream IDs which relates to secure context bank.
>
> This problem only surfaced when the Gunyah based firmware stack is
> ported on Agatti replacing the legacy QHEE based firmware stack. Assignin=
g
> Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> as a fault by Gunyah hypervisor which were previously ignored by QHEE
> hypervisor.
>
> The DT changes should be backwards compatible with legacy QHEE based
> firmware stack too.
>
> Suggested-by: Prakash Gupta <guptap@qti.qualcomm.com>
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>

Looks like I messed up this patch-set with email delivery leading to
non-delivery. I resent it properly again here [1]. Apologies for the
noise.

[1] https://lore.kernel.org/lkml/20251229070712.456138-1-sumit.garg@oss.qua=
lcomm.com/

-Sumit

> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/q=
com/agatti.dtsi
> index 8bf5c5583fc2..e705eb24160a 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -1613,8 +1613,7 @@ gpu: gpu@5900000 {
>                                          &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>=
;
>                         interconnect-names =3D "gfx-mem";
>
> -                       iommus =3D <&adreno_smmu 0 1>,
> -                                <&adreno_smmu 2 0>;
> +                       iommus =3D <&adreno_smmu 0 1>;
>                         operating-points-v2 =3D <&gpu_opp_table>;
>                         power-domains =3D <&rpmpd QCM2290_VDDCX>;
>                         qcom,gmu =3D <&gmu_wrapper>;
> @@ -1895,8 +1894,7 @@ mdss: display-subsystem@5e00000 {
>
>                         power-domains =3D <&dispcc MDSS_GDSC>;
>
> -                       iommus =3D <&apps_smmu 0x420 0x2>,
> -                                <&apps_smmu 0x421 0x0>;
> +                       iommus =3D <&apps_smmu 0x420 0x2>;
>                         interconnects =3D <&mmrt_virt MASTER_MDP0 RPM_ALW=
AYS_TAG
>                                          &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>=
,
>                                         <&bimc MASTER_APPSS_PROC RPM_ALWA=
YS_TAG
> @@ -2339,10 +2337,7 @@ venus: video-codec@5a00000 {
>
>                         memory-region =3D <&pil_video_mem>;
>                         iommus =3D <&apps_smmu 0x860 0x0>,
> -                                <&apps_smmu 0x880 0x0>,
> -                                <&apps_smmu 0x861 0x04>,
> -                                <&apps_smmu 0x863 0x0>,
> -                                <&apps_smmu 0x804 0xe0>;
> +                                <&apps_smmu 0x880 0x0>;
>
>                         interconnects =3D <&mmnrt_virt MASTER_VIDEO_P0 RP=
M_ALWAYS_TAG
>                                          &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>=
,
> --
> 2.51.0
>

