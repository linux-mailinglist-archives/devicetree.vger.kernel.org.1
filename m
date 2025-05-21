Return-Path: <devicetree+bounces-179085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE35AABEC04
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 08:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EE547A6B32
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 06:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7017233134;
	Wed, 21 May 2025 06:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B+H/JhV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247ED230BD5
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747809303; cv=none; b=Eb0SQeX2qfgz0IkDYuWNCUMy0lU7xmJmYB1uTp1i/K9BSH6drIox7JSadI7oeuz8XwnpazGE5P8WbipMgioQEJILRo9NlARsOS3ebyFm76OXlbL9ZJpyr62nxaqYEZxlCBLb511cZTjvVwN1YrcdE4kmLEXWf/+ZveKrPQ3X/jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747809303; c=relaxed/simple;
	bh=yX5uXk8xZuF8KykN3btTAQn+eR1OpEbcKHd8ywumTVY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QrfVGOg3QOnrFFNoOjfwL38w/XTJM3VSdS9r7mlydq1G2PpCCTdDbWKDLBi/W7Y+uYU8nPQ67xOKczzBt4iSLgc8cBIbZMKD7EKJLSOjhGTWztjntxB8qFK3a0zqQlnR4u6qErNNfuSyeV8gsaAohI9M092B0glf05+la8QzTEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B+H/JhV3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L5sEiJ020632
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sZ9hKputcd1338BrnRNmVIdwAO2+8E1/p45jvoCFYRE=; b=B+H/JhV3PLJpUBSs
	ILfVntPasJvRg5MuEQm7m/GebKraXecKRXtAvjzKBr7HD3t+miPrGSQ0B52XA+s9
	a4HnxK3IaPuR1r/2ZROJZvQy1lH+NvXJypDYDRxR3DQOpI5GLQ7UJyXbgYSMT0wn
	FwSJTKzCdUlJj/xVlzjBV5u8Ltlob3RztSKOgfNbT90r9LDHXeOGyBpExc5iXO8P
	khTyGgePcFVVNvEA19V8rFkRrUguEZtsU+0m1INgf/tH3M01ghw9xSJwruQvBdI9
	uU8MzoPqLSJk4zggSBT/RGdm3k1BElqhMKpFLGiyHA+ruqUVgRXYn2+o7w1UwKo+
	cDWRBg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9sqxa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:35:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c82c6d72so1154256785a.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 23:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747809300; x=1748414100;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZ9hKputcd1338BrnRNmVIdwAO2+8E1/p45jvoCFYRE=;
        b=EvRMVp6NbMMO6ZnPBgMWy/7h/C4rW2R1VTJecuyvUc9+B/Ce3nDpElfPgaaYXeoDn1
         IKf5Me3pX77OCT2fSSAojyunmMDZtxLbxI8GUJH4fo3JycV8XQdi64l3sgPjYwtafpUU
         SANc03oPH2rjog5qJnm1MHXjkZKHZ961+J/x33sAiK3TS3cfCjiiLzGZEYuSOUPo0wQZ
         kghe+1tWFuIIL6rWfHDHDPR7Fd7DtFF1tDc/SuMyd+w2guI00F2uVXP3O/7Z+AMsU/O3
         6uK5G31epYmQ6zmkpHATzBUS/WX3vvaJewk+klFuUAQcrt41gHunxVbhao9q0ZnCXBAH
         FM7w==
X-Forwarded-Encrypted: i=1; AJvYcCW8wVkNXoRZSoI5jIZiEFAr0zjnRoill/S3nYkdQhL8vtaighhxTBbQA99TVRBMfwigi6rpbkp/0h9m@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4vHrA6+4EOgkzB7JJsQczZtQ6Q+PBrnOMtlUUm83V1ID+T9MQ
	8DlYnA9J/jsPJUXAMfwsLcRh1xTwrH49TiHgx5w5e6za4c83ogmlTtSzXo+filHWnvDAb/+DHJ1
	Xd5+iC1rgVWGPyxM7hi1YOtrcPUMD9WNpkPyHR0Cf50PXuo6l++rPCjHpUm4cygvPsLQBDB+RcL
	cHe1+LQ43yk2F4omgR7KWe8aNxrvmBd9Rrjta9c9Qdmvt5458=
X-Gm-Gg: ASbGncvtrw0g/JeDl1Ua5IKCKCOLL/h/Xa4IFbtpSL4f8uR1noPRwNw0VdVkZh3jHx4
	sPnwOM9xAOXdUmNxrFdO19ykXPFKQ8+kSwK32ETbSZqYE7ZhvOK5xIwSPK44MrsK0IxQuSQ==
X-Received: by 2002:a05:622a:5c95:b0:494:b316:3c7e with SMTP id d75a77b69052e-494b31640afmr313606891cf.28.1747809299979;
        Tue, 20 May 2025 23:34:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhL/8XUvaTvdbPP3M/jAlhpC+jim7euSMn6JxVG7/tX7Zqm2OcngXdvkAaGGLBTeDl/gT4n33IPTAgb635QxE=
X-Received: by 2002:a05:622a:5c95:b0:494:b316:3c7e with SMTP id
 d75a77b69052e-494b31640afmr313606551cf.28.1747809299623; Tue, 20 May 2025
 23:34:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-qcs8300-camss-v1-1-1dfcb2e3bf93@quicinc.com>
In-Reply-To: <20250520-qcs8300-camss-v1-1-1dfcb2e3bf93@quicinc.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 21 May 2025 08:34:48 +0200
X-Gm-Features: AX0GCFugv4ozE6oN7_Lq0Cwf2qtCI-Rj0snyB97U0vzVGF9Yp5a-qiJ_uQuP00w
Message-ID: <CAFEp6-26HVokO-0+HEUf+cm1V7=OO5z1ndP7zVAk=Qk440Qviw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, bryan.odonoghue@linaro.org,
        todor.too@gmail.com, rfoss@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682d7414 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=PPW_EwrsXE-T7dBlnmkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 84OpatxWUh527FnfyymvKSc9XMZYMgpc
X-Proofpoint-GUID: 84OpatxWUh527FnfyymvKSc9XMZYMgpc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDA2MiBTYWx0ZWRfX3BJ7W9GZSHQo
 x+I58LxGegtIBE6yS3yP0B2wUUpBTl3a9UB4X6v7jGZK3rh5Hffh56MLz1tXV5Sqvp+cdMu0h34
 5ulCWRquV4P5nJkeZKTcjX6/5fle9Or2tBLsVo1Np/iNpTucrnmbsf7xKXc9tks5OBgTzLl0fc5
 znBbDEAgBhFuc2IBOJAPr7bEtNgLoe0LsxceT/O6OwJI9ovsQ9Ez3Uqr/IpgaMT1DNBDrZggrIS
 iLzg99hT3Woc/SdvmNd+oXYc/4r2OzwMe3i0RX396nvpFOX0LyF7CRRQgkYwSEpbSnAHoyhNuGe
 HUf2bgHsRF3pLjfc0/QxL7+pagusSuvmX7hap/3zgAbea335ii5pG617mpNzou7bSU8P4BLQPKt
 7zgd4+cIwNg480fe+ENBlV3SAlk3kK7gTXr8m1clrgifCsMQNsNvxvgPPJkEs5gI2TciIb0D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_01,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=837 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210062

On Tue, May 20, 2025 at 11:40=E2=80=AFAM Wenmeng Liu <quic_wenmliu@quicinc.=
com> wrote:
>
> This change enables camera driver for QCS8300 RIDE board.
>
> ---
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
> This patch series depends on patch series:
> - https://lore.kernel.org/all/20250214095611.2498950-1-quic_vikramsa@quic=
inc.com/
> - https://lore.kernel.org/all/20250211-sa8775p_tpg-v1-1-3f76c5f8431f@quic=
inc.com/
> - https://lore.kernel.org/all/20250217-qcs8300_tpg-v1-1-6e0f4dd3ad1f@quic=
inc.com/
> - https://lore.kernel.org/all/20250214094747.2483058-1-quic_vikramsa@quic=
inc.com/
> ---
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/=
dts/qcom/qcs8300-ride.dts
> index 3ff8f398cad31a36fa46060855b075c8c2020aa7..97281d6d7376a406e5c31466e=
175358b10441256 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -207,6 +207,10 @@ vreg_l9c: ldo9 {
>         };
>  };
>
> +&camss {
> +       status =3D "ok";
> +};

Same comment as for qcs615, what is the reason for enabling camss
without an actual sensor? If it's for testing via TPG, I'm not sure
why it should be enabled on this specific board.

Regards,
Loic

