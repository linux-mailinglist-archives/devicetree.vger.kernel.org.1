Return-Path: <devicetree+bounces-236755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC690C4719A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B09EA3B4AAD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654E53128B5;
	Mon, 10 Nov 2025 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gr/BdksQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G2wfs4g0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE023128A9
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762783582; cv=none; b=iMKif5B5yqhov9dQhGTDSevXW+nITuobCfhFuVGQvZr/nzRvUF6ZEIsgTQNPiIYVrlyDaC5PZKin9cyLzFrN6RI2JPbJeW616JGHUMXJS8iYlR/s7pKErh2QsDc0qD+0zipkIHuLcWNaJOtYcVCmkrPV6D60J4bBv/DmsOF61nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762783582; c=relaxed/simple;
	bh=L/CmvJYCyYfrJvD22vpA92Xdgu8gpWQ82QXdZUA9Vz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TYQAcosnxElkT0COKsb6BpiqUfK/Ul01L8PCXZh4T9AvprL7LbpyptT7rx964URzsRhpwNl8n/crL8us0izNBpx0VU8U8DSryNnRZeQWbw4vttsSnGOpsaMFQS9+ZaUdSOGXuGZlUOKpHLThw3HTJFUWjR0qQkUjlfdppu1xC0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gr/BdksQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G2wfs4g0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA9EjNW2992499
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:06:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PUXRgMzr0O6XUgHM9OyGr8SqbOOjNjkdqNOeZDXnadI=; b=gr/BdksQK+r5Br+N
	S4urR3GLlEvoohCwwxlyiz1AVcTHVzu20BTfThsupKInBX1hT+Vri03YGUz5z+BH
	X9k+wlHlRSPZFtLb7VvzcKQDXbEuSy7QsySywxs06qVdui7PYfmtbE8Khq90afVg
	fwgfSRIYCrrG/jI1DyYlfVbE2zNcxrDoT6A4A49O0aXGt5RYbguaHKKuvKDadKB7
	DpWRd9IGQgS4AnwvPbF4vI4+K7uCrWCj6NFdrRgfpAR/uU6GnR5gzdJZTNomvs9L
	wwrZq8JxP1W2NNpGocNfbQFhBulX8DFEmyfBzKwYDopDkqfLB7qTXfOtkacs0L4Q
	Wkx9HQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abd88rthy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:06:14 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3438744f11bso1812434a91.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762783574; x=1763388374; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUXRgMzr0O6XUgHM9OyGr8SqbOOjNjkdqNOeZDXnadI=;
        b=G2wfs4g0QnmH+BgKnZlEjVrT7JIW1UDCXs3ZjFz5okHuY+G0vYw7IhsJ8mf5RHQdYM
         kYDE1rp6tPi5IirrqN9UfllIOKSURW03uaSCPG/aIsLRnLgIxy/8zCnH+HCXqSCEHFrt
         moO0ADHPYh5FyyGXeb8Q+ZFwA0onjVsrZAR0EPI7bDrNZefE5JJg3xW0kE37ZNEDJdw1
         mR2IYLjcpQgM25Pk/fYobRriPTnvT4qYZQ0bdePlLBYB3P3gdPQFwzCqAy05bofzydgT
         0aXQ3Crx82/YYlJe1CenvVxOSTyy7GYrmru3Uu5izNfwePAWGyoskibfgIqVV+OQK9kp
         7Lpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762783574; x=1763388374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PUXRgMzr0O6XUgHM9OyGr8SqbOOjNjkdqNOeZDXnadI=;
        b=f+THG5zknfFkrM249VtgufS11JoV5KmcbG7+HvhGJHum9UeyOmpcpF0u7UKLUqIT7n
         QQx9KWHytDxRA1im8KfMGPBhsQjBZnf4VGBSGgq/7CuFkWCzJmk7rqdeG3/RQV0vpHMg
         z6hfYPajyS19ilY2sa1ZEP2RVR05aVU1MjqHpSN1QHtuJILaBmCZulypmbcFwx4e9JE2
         u21T4QTimWdkMkt5rSbwGD/Mnj44MwydBA0uZnGtiVqAB1hrVY7j30oV9olE5Nx0VJFV
         6yXqCLb6+0Rjpe03xZAkeLZfe9cWXGmpvsycoxsksKQrJZk+Q+tXtN3vYmh+ccBvI/2z
         l+zA==
X-Forwarded-Encrypted: i=1; AJvYcCU1ahS+kD2j3ddoXkFnoVs+GhcsETf/RGLvtYkxNy2Qmz6BBA31p475VvNHSPz6EDhzQ7ZpNIlItZeL@vger.kernel.org
X-Gm-Message-State: AOJu0YxHY1HA1fHeoWncT9/bqquyWGnPkBJQRQE/V4tFZrjmTll38YDi
	IKoszilDXHqVoIITpQ+d5h0IGxaYOIqBJ5nIcu4o3nduY+nUFxXID99N9i0a313WZEz5dZxd4ml
	V659fH4NCjkkkFJBnw8XhOOwalBqSpTs2RM8OkVpE4Ti7mS7A12t1vPdvM0qhpLpelzMgdQiTNH
	H8T2CwMtV0iwi8MCUjv6HM0/pr1F3b8mLzSi5qct0=
X-Gm-Gg: ASbGnct9hdsQzmNdcwKIVvgBKcJvNP5rQPgMuXBj1z9kJlKk4gsDP0MQnnPA3wbU+Ty
	qhLRvOyBkbLv+MI6HbE5FtdePU0sTT1PZqXzbIZCDzFTc5o7lEyVQ1z6BnisAeMqMBRGVvPJm3V
	zRdi+t944VEcwVSz9+eoFfrEnBeS/0IkHvFogOx9GVRYze4hn4lm2F/bP4L4qqRPCHLpvlgIFqW
	AA+xcFvrM7KB2Qi
X-Received: by 2002:a17:90a:e7ca:b0:340:f05a:3ebd with SMTP id 98e67ed59e1d1-3436ccfe431mr8790508a91.28.1762783573517;
        Mon, 10 Nov 2025 06:06:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcZK/I+Oqj7cXYIYbymAdZsmrBRsLxABQMipK9Bn1Ts4Upxyiuw930Gmr6hZFgRBDHnDCcsb3fu4H6bnas7ys=
X-Received: by 2002:a17:90a:e7ca:b0:340:f05a:3ebd with SMTP id
 98e67ed59e1d1-3436ccfe431mr8790452a91.28.1762783573001; Mon, 10 Nov 2025
 06:06:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
 <09b2ee28-ee2b-46a8-b273-110fb0b4d8a7@oss.qualcomm.com> <064d2a33-22e7-446e-9831-a390510698cc@oss.qualcomm.com>
 <20251103102651.ywxi7lqljsmjg7an@hu-kamalw-hyd.qualcomm.com>
In-Reply-To: <20251103102651.ywxi7lqljsmjg7an@hu-kamalw-hyd.qualcomm.com>
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 19:36:01 +0530
X-Gm-Features: AWmQ_bnH5-5jNfhWCOUYTXVu7I9tmNhczMz2vx19inA6uDgAVRKJo8Gomv4g6H4
Message-ID: <CADhhZXaD=ut7MCQD_uEvY1ew7o=rqUUtviaXwQSkE-nmvCxMhg@mail.gmail.com>
Subject: Re: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: yoOsHSAj5mlKqC1ioWtdc7iDBJqXCuC5
X-Authority-Analysis: v=2.4 cv=PL4COPqC c=1 sm=1 tr=0 ts=6911f156 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=_wFouAXmutvAtFiYnf4A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEyMiBTYWx0ZWRfX8LiTKvNaqJZF
 ZpGeFll0sFASGkzsIBlqNpJQWrz8B0O4xr/i5cbZYFrACDg6lVlzaCCGSSSPuJ7UO3CcFtHfw4K
 dYGZcPjwfHiv0r6tqSVJ/K6Q5+2kv0TwdL2w0oVTc5JYEpdMKZX85DPwAbC185WfTmVv6A5kmws
 gvZRHVXQ6v/pgdjQ2n8ZqC9Mnz+rfpayIfEeieWUEoAZN6bInpRg40LyuPK7GblA63zfxc6sxzd
 /6c8NvNq5G5EQduKW6ThY5u+7LC2Bl4NAJL7himbWDP88/0pNTaJYsJzxUR3E6xRweRBxtEr8Yy
 I7gfbWketjbxnPDEf/rQUzcq89ndGdT1Zo24OBdBypOoqTcBoUNDGeuBAcwjGQrGnNDGYr0E9xL
 5t96xlSSk7KvF4ursga42vtxsYaeAg==
X-Proofpoint-ORIG-GUID: yoOsHSAj5mlKqC1ioWtdc7iDBJqXCuC5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100122

Hi Konrad,

On Mon, Nov 3, 2025 at 3:56=E2=80=AFPM Kamal Wadhwa
<kamal.wadhwa@oss.qualcomm.com> wrote:
>
> On Wed, Oct 08, 2025 at 05:25:39PM +0530, Pankaj Patil wrote:
> > On 9/25/2025 4:02 PM, Konrad Dybcio wrote:
> > > On 9/25/25 8:32 AM, Pankaj Patil wrote:
> > >> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > >>
> > >> Add the pmic glink node with connectors.
> > >>
> > >> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > >> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > >> ---
> > >>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 28 ++++++++++++++++++++++=
++++++
> > >>  1 file changed, 28 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/bo=
ot/dts/qcom/glymur-crd.dts
> > >> index b04c0ed28468620673237fffb4013adacc7ef7ba..3f94bdf8b3ccfdff1820=
05d67b8b3f84f956a430 100644
> > >> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > >> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > >> @@ -79,6 +79,34 @@ key-volume-up {
> > >>                    wakeup-source;
> > >>            };
> > >>    };
> > >> +
> > >> +  pmic-glink {
> > >> +          compatible =3D "qcom,sm8550-pmic-glink",
> > > You *must* include a glymur compatible
> > >
> > >> +                       "qcom,pmic-glink";
> > > Are you sure this is still compatible with 8550 after this
> > > series landed?
> > >
> > > https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5=
-0-270ade9ffe13@oss.qualcomm.com/
>
> Sorry for late reply, earlier when we were sending this series our unders=
tanding
> was that we only need to support for usb shell, and anyway the device was=
 on the
> debug board so this feature(battery/charging) was not tested.
>
> However, after testing i found that the power supplies are getting regist=
ered
> properly however the data is not coming as expected. we are working to fi=
x this
> internally from the firmware guys.

As you had asked,  i was able to check with this patch (and firmware fixes)
https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5-0-270=
ade9ffe13@oss.qualcomm.com/

The qcom_battmngr driver is working fine with this patch included as well.
(though i faced some conflicts which i had to manually fix when
pulling this patch on latest linux-next tag)

