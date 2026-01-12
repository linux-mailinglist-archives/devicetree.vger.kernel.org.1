Return-Path: <devicetree+bounces-253704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4EBD10AB9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E53D930072A0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573F130F925;
	Mon, 12 Jan 2026 06:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kLx5sOeq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OyzL5qCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC78B3093CF
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768197699; cv=none; b=niaum3TbV713m69DazwLQpqFjJc4ePVdPXxU/OoKOceLvbvCE294lT/i9S71cmI1eZ5KC+IS0/ZVqGO+DcI1Z7KS+EzGakjjmhtfnENP4dwTIrmfuVoM2IBrIHi/3Pk6wWltXEys1DFHgm67o22R0F8lK0hJ6RgAwa8DLDKvXXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768197699; c=relaxed/simple;
	bh=ldRUibakNqt+KrUuDSlSldBsPaK2f9o6bvdH6yhF4fc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OedVFbxIwxSH/F/Jqa54sEXRH//CZhBCr8uVEboQmW2e0GLEh+PhXnz4hXbNbxwYom1MTVlgHD7as9nlVcoEW8PzMMwckgpHjAap40gynURAsGelMnLbjwfjbUoIRQBop+ysnzu5RLcnXRe7VzqwMGyrZrTatoVjRXPoREVIxd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kLx5sOeq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OyzL5qCu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BLHORQ3014049
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:01:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p4yyeW8H9AwBD3N3+BZ7jflIWD9eijZ62aIyvZeBMPk=; b=kLx5sOeqXocqPCXX
	I1XA0Le0xBJRGm6AHDUSPxWVDnMpp27XW8mIcqXVRFzWENDU3QeqyCD1ISkRouP0
	HVTLrxTkxYRH4v0+yUFkAwHfU8BUTVmLsPXGddtEB7oKqEGMLZ4l8sXGibjrtWfH
	slIk9Sr2KK/DkKjz5YN8ySTAN0GzVfFd5FA/XxUx7dNJxb7M/5VE/JhrcJ1XABdK
	t22TrF0WcIrDxKaZasba0psNeA0AtmnwD4CiNUPWkiDUjWUXT2qIeLE0laEOJwU0
	UUYwnUU0Ckl7+esm6KOmVzeP9u7KSrdhV3PROmeSDVM60PtUcdHBjZmF8+wzrVCu
	/3bQuA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkntuk46e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:01:37 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34aa1d06456so7581068a91.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 22:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768197696; x=1768802496; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p4yyeW8H9AwBD3N3+BZ7jflIWD9eijZ62aIyvZeBMPk=;
        b=OyzL5qCuARCzarj1+//N1/LPnmWSk101VX4w/zWGwniCMwxp1QhTgSHeUCHS90ggm6
         +EL3vfp2eAAUCNpFRXIGm+mQFJ0VcgtgIuG/u4LT4OduVuH4lcVWpvdTOndofuwUzFki
         seZTsS/OQvTk5GXZ1Zz9EC7c+35eKxk6DRCWHGKDBvq0/TIcwARmGpNQtk948eNVSkD1
         xnXjc0fZuAqYoi4NTX9yaunZ82d566EfkM954ja7Yn2ntcxLf0wyxIZFzEMh3grbG6mC
         Hk4AA7PZTAjMtqgVC4QYDxuDoMZTSCYoRlHxz2NagTqFdlWltcdwfT2w3txIDkhHvirQ
         caUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768197696; x=1768802496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p4yyeW8H9AwBD3N3+BZ7jflIWD9eijZ62aIyvZeBMPk=;
        b=wnBL4heaad7bbABM8MLaQSr1ly6vRJcz3cLVwUvW6pINszPV/Ho15ea02qY2g7Y+Op
         k4Y/h+9lYv/115tOYDIQhiwM6I0GvTKOq2f3mGt6yWFoO+Fh609Z7b6V05Se7/JbrO0+
         lBiK4Pj7abYhn5cnfrcdxlUUBrHD+Y1QbSt204e+QysSQIbWDpZH88piQMsfwtqYQkKw
         1NwfU2nwXptvVuFAxgIZhPoeyqeJzrRHGsJ5iKl56lBLiHoav2HXFQ1FE2YcItqP//rt
         9N50Ne/d8fNqSDCtov+Svag22EO/6xstJe/In2+yjX+8k08qIxQhSbZCIDPOlHcjfhUU
         ba0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUn5aZiRcb5rzjVHFs82KA1bhkCYzds34/ptDvQIu4SjA8rCkk4kPh+p6n3uQvWNN/sA0Q57G6bL1qg@vger.kernel.org
X-Gm-Message-State: AOJu0YxjqaSVOx85/b/OQjd2wfllKfZTCaeEVSWN4+7VYS+9c+8oVh9L
	zTvyVLdGZZrXKfocoraxjovCwBjWzMLuIGv7Ta/dI7LHALmhlnA1+xi5H/WwSampN0oURgJArDL
	6y7SJZCRlGy5RX58y7sUDSEuTh6eqPqPAQk/x9Y0vZT3jPyMLpQVscQfUvMtAAQFVLs6PAwObt1
	FQzUOPYwLtzmwh4scFljJiWvdfmZxG/KZdC/Rv4b4=
X-Gm-Gg: AY/fxX7j7Jr8U3Zzs3XNZa09j6Zyq+J0WyJBV7o18q//rqn+/qkS1R9AxEmhwj5/gPX
	yIwVkBhezAEkZDViy5cp4cPH6K/Kqpg55ay+A+ofD92CKP+bbuVkaQVsy4oqbtQKo6/Uox0tpVG
	QEpa98yZNGJbq04m0I2+RtFXQali4ShfWIMsSqABuKNSSaNm5LYmJvmdSF9QSe2t0K6WMpOdHuv
	EaUUFqu
X-Received: by 2002:a17:90b:3c01:b0:34c:2ecf:2b2e with SMTP id 98e67ed59e1d1-34f68c282bbmr19099091a91.12.1768197696263;
        Sun, 11 Jan 2026 22:01:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1lj47lNYZdw48nFMWoPsvTSPEplpxVaR/Afv8C5xbG258eitLtUGCVuazNlPkkGI6u5Gq6O5nJElxfNhc0ts=
X-Received: by 2002:a17:90b:3c01:b0:34c:2ecf:2b2e with SMTP id
 98e67ed59e1d1-34f68c282bbmr19099049a91.12.1768197695737; Sun, 11 Jan 2026
 22:01:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com> <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
 <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com> <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
 <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
In-Reply-To: <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 08:01:24 +0200
X-Gm-Features: AZwV_QjfN1MA6eA9W83iSHOPi0V7tYeMDWt0snIKUwJlTSUHGhiFRZIViitH-Q4
Message-ID: <CAO9ioeUTPopTg+S-6uASXa=L4DQaVVEJ_CYRGzKbJR3MkcZMFQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA0NSBTYWx0ZWRfX+DhQOdaG9Mz+
 nHXIcCoT4HMeQqe/WaPaxMcS1CYQttg2R4eRYSJRybl+CmPsOywdKeXuZp1tEiWY4hJgujLzSq4
 BcasRROQZCuPtMR8pgnzBjtOHrp/kA75uOMG5sOEPfEIm0mF6Zz/YZPDBk5rVKuE3yJofN2Z/zB
 F4WhA2hFkJ1ZYuGTzJ5fEspHmv8a4SwxWvAaLWRaeJevB3AcplObBVxpmGCdWEUgUZhMYvnWjL5
 Nffqx+sjKZZhUwmDGMlx+W8LOuc9eBZsSDJ5Jf6IDWYZaV2/3GcL4k9o6rIkiKjPWuakWSJ+RGr
 4WsnCM8BBUEiRQ7HECR5Z4d0tr8T3AGOySL49ZK985ZhCxt9unS007lbFXd2JVLAE6WYfBlzQ5J
 FdLjzwNf646971RQoUD7uI5ZFa9dO0AgAPwIE3NrRsIXl3Jd1LvAlVY2us5aBETp7XoiIT3lumV
 E52U4VGq3NEIqK6OELw==
X-Authority-Analysis: v=2.4 cv=R6AO2NRX c=1 sm=1 tr=0 ts=69648e41 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=E746VpiyXhNrftZtulsA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: NCjy28v_7gWerUS3fDRIj3O_cUwuUM5E
X-Proofpoint-GUID: NCjy28v_7gWerUS3fDRIj3O_cUwuUM5E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120045

On Mon, 12 Jan 2026 at 07:51, Yijie Yang <yijie.yang@oss.qualcomm.com> wrot=
e:
>
>
>
> On 1/12/2026 1:00 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 12, 2026 at 11:12:09AM +0800, Yijie Yang wrote:
> >>
> >>
> >> On 1/9/2026 7:29 PM, Konrad Dybcio wrote:
> >>> On 1/9/26 8:59 AM, YijieYang wrote:
> >>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >>>>
> >>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, compos=
ed of
> >>>> the Purwa IoT SoM and a carrier board. Together, they form a complet=
e
> >>>> embedded system capable of booting to UART.
> >>>
> >>> [...]
> >>>
> >>>> -  backlight: backlight {
> >>>> -          compatible =3D "pwm-backlight";
> >>>> -          pwms =3D <&pmk8550_pwm 0 5000000>;
> >>>> -          enable-gpios =3D <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
> >>>> -          power-supply =3D <&vreg_edp_bl>;
> >>>> -
> >>>> -          pinctrl-0 =3D <&edp_bl_en>, <&edp_bl_pwm>;
> >>>> -          pinctrl-names =3D "default";
> >>>> -  };
> >>>
> >>> Is the backlight infra different on the Purwa IoT EVK?
> >>
> >> As you can see, this Purwa file was copied from the latest
> >> hamoa-iot-evk.dts. However, not all nodes have been verified on Purwa.
> >> Therefore, I need to retain only the functions that work correctly and=
 keep
> >> them aligned with the nodes from my initial version. The deleted nodes=
 will
> >> be updated later by the respective authors from different technical ar=
eas.
> >
> > Please, only delete nodes which are not present on the Purwa IoT EVK.
>
> This isn=E2=80=99t a deletion=E2=80=94it=E2=80=99s just not ready yet. Wh=
y do we need to include
> all the nodes like a mature Hamoa platform in the initial push?

Purwa seems to be mature enough. What exactly can't be enabled at this mome=
nt?

--=20
With best wishes
Dmitry

