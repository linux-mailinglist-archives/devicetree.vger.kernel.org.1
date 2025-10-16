Return-Path: <devicetree+bounces-227516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F43BE2373
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EDB7D4EE2D6
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4786F27E066;
	Thu, 16 Oct 2025 08:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KBje1WTg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1EF220F37
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604446; cv=none; b=E1W1qk8yZKYqCErhu5GgqyH2roStRBleRmya6R0nIsUirvhZqZmYpD3yxQIwh0wXMvkDclaE8VBUHfWmUkY4MhxU1dTY+sZMXCkSu6L1+Zgv1WSCqWFZbLo+w8gip4YNP0hX/zLaZCb5TjgqoKBMPDJjYvTlHsAp8ntw57VGFr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604446; c=relaxed/simple;
	bh=4Cr3hLvCCrouiag43KD+fwe7CAMY7VqZErV48pL/VOA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FB5oh6EI8/eLVBWCYvct9dgarwwUeUVQzs3CZszA94eNkVdbG+5ackTHJmDstQpjO/7MS4Hy75MVlkhW7Fy7f0VH5eLIaMkfgPt3dQ+UgJOIZ2ZLix0dkSv4Es/eFGzL8/kGDJeHtB1+4sf6gFZwJ2Y9mY5ujes+9JLBBt3DYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KBje1WTg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7Uefn004070
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DtK2jXcjWQPbKB7OnX2TPJKpHc1AyZMAFUwhHWo+ek4=; b=KBje1WTgyhZ37KRv
	On83yXBfGXbNXOOwqTu69Gof1xwbOtsQVzIMUOaWhqJAH14FsD+2g3ptjOhhggGG
	O/G61XyTeZzgFxtpTCcAZsDtiruQ/XX/V1mFqpBuDjVOc+qhEMI4UhVVM9Zhms0C
	b0qrY+XqgoLLpJg2AIptG//5SEm9TojJTt1A0j+FvvhLqOauzd4xTWw3hsPtgnro
	qvJz4dT4dW6Gb93cOuYGaocMUfHPXsqxk6YQojuMEWy96m6tvyHdK35CQ0MGSD48
	ll11UmuQ7eI0qMtstRSSzPML9uyFnqqfiFF9NT9iOSGZ3SnmEJhb/i8FB+PpquFU
	yM+wPQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg7g03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:47:23 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78e45d71f05so15894176d6.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:47:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604443; x=1761209243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DtK2jXcjWQPbKB7OnX2TPJKpHc1AyZMAFUwhHWo+ek4=;
        b=lvAdg9ekhHvgK/IEHjcIOuDJKPO1amJZB1iNsvgJSDsngs4v5MZftPMprvHDuXAIJL
         J3YP2WbZ9pteyidp6D0KOJh+FwV7dd4cxJjU0ngxCX87LH3klGo7N2cXjqD5zYb9nRh+
         6nhF86+UCo6xKlh0wAxdJ2xQQmz964/6fFMsGSbDmIkRtdyyVv88DAMGp3crD/dfK0p0
         AYAV6M2ojU22+CK9AQ+DBzfgKYN05MDf57Nl/3JEzni5JYTiTHTamvF0sThnE8MqD2dw
         pfZfgYS8nXpqWqcq1SCwDJSAYWDcc0MZODZjQwKoEHUb+2r4glPuCEhZrW2ecPT8W/bQ
         0Q2A==
X-Forwarded-Encrypted: i=1; AJvYcCWEdNBLbzuoBeXylLi/1IVrKotkeWTZ0V8rXvN0N6i/i0DCVZDhGt2JBX1idft3ZRGzXbbDD/vxufcm@vger.kernel.org
X-Gm-Message-State: AOJu0YxchO+VBvSOihi/dozr8wOBVfZ2JzhftgEN3mlvcG/nJzCBPlV7
	YGnfxbNHZbqze2yeZOEju5uvxpKCZRRQl68340hnae8XL5vx1wjAKhD/IZDVNjGUEmhdWPdDi8b
	E5hmHicw50Hq9MGc85sibb8jd2rqoYY8z1eknGv4p/XpSk8cHhPsrndHdDMG+RI+6/dKFmKeLlz
	muOefXqmqJCrXqqWLntbrMQ94lMWQMFIQEyA5W9FM=
X-Gm-Gg: ASbGnct7PqD6TaKpM8N+KrZATiwxa6Fj9wgI7jbl3uXLu9I20P9eO0YL4cNeeiFlc2c
	p/Vxji918Dj3+xOrHo0nNB2EZgv1AGMHAcVegqQISP6zw7k4l8kWEfim1FzlAhshE0/OuyznWus
	L5q0qepVHfTy0VqhxKrNxrxqgZ7ucemfCf2cT7kfpYZhm5pLF/ESA01ivGmy5o/7SHbFUwjjTel
	1VtNHF2Tp2N1GrHsUBw25dkkIFbwjb3CB/JS1Bj3PJrJw==
X-Received: by 2002:a05:6214:cc7:b0:879:db53:dd2 with SMTP id 6a1803df08f44-87b2107bdc2mr384170086d6.22.1760604442620;
        Thu, 16 Oct 2025 01:47:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKIDwd0H080pXEFK1kdHvRTAf/OHzMp8h2JpG4d2oyZ6MvcF5FnRmiKkwvO8LcA8cfNV3BhP6f4FxVJw0D0mg=
X-Received: by 2002:a05:6214:cc7:b0:879:db53:dd2 with SMTP id
 6a1803df08f44-87b2107bdc2mr384169876d6.22.1760604442226; Thu, 16 Oct 2025
 01:47:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
 <20250924-knp-cam-v1-2-b72d6deea054@oss.qualcomm.com> <CAFEp6-1o11B9o3HjdJY-xQhDXquOTknXo0JeW=HfpTxXcEaK3g@mail.gmail.com>
 <a7be3a42-bd4f-46dc-b6de-2b0c0320cb0d@oss.qualcomm.com> <d8dfe11f-c55a-4eb2-930a-bfa31670bef0@kernel.org>
In-Reply-To: <d8dfe11f-c55a-4eb2-930a-bfa31670bef0@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 10:47:11 +0200
X-Gm-Features: AS18NWDQrzQKYCHdrrwTe9-7hmb4jjMXDlC9wkwV60oUqGOhB-GFpY7hHhqu3ys
Message-ID: <CAFEp6-1zpobZNLHt1192Ahtn2O7bV+As0P1YvVHrkRsORyH_Aw@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: media: camss: Add qcom,kaanapali-camss binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX6rTQJJ27aZRA
 6GIN3rjUQYfChUNOjAnR2QAkK/qNexEXhwnjFX223SUOw8Ci3QIljeWA8oqCHYvkg5A/qMO3XLO
 9w0Pp/eAFsPyqcADh7/2JNEPnL61RBD+aDE8GX9O+9vcIHIZfGqjoudqDfnzbvfw/kc3jFJT6fL
 kMxHNFuyP0cA4vH2uc2NPsBMoSCUxlThSWo21cz3ib24sSAP9fH6Ab32VgV2E3DBM9a10lMsYts
 0bSf2GBFUrMrQ1lznpMdn3OFLo24/S39lv2nE2BERXiZ3d1h8yXQa9iuMyea8r+SyCFLbIKuwxh
 BKAuBPhrBYwm5cv5PQUhM7RGv2xkxV/z5Tg1yECMHsJq2vPv9iNXoW0sOXI6cv9AOU55tWSRDUF
 WY3KCgNgX/vc/3FB8dnTFdOvOrTe7Q==
X-Proofpoint-GUID: le-qZZ-IK-mRl0slJ1O_UguDhijV8neN
X-Proofpoint-ORIG-GUID: le-qZZ-IK-mRl0slJ1O_UguDhijV8neN
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68f0b11b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=GOxOaFmcAZOYw-Nqf4IA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On Thu, Oct 16, 2025 at 7:52=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 15/10/2025 05:21, Hangxiang Ma wrote:
> >>> +      - const: csiphy4
> >>> +      - const: csiphy5
> >>> +      - const: vfe0
> >>> +      - const: vfe1
> >>> +      - const: vfe2
> >>> +      - const: vfe_lite0
> >>> +      - const: vfe_lite1
> >> Wouldn't it make sense to simplify this and have different camss nodes
> >> for the 'main' and 'lite' paths?
> >>
> >> [...]
> > No such plan till now. Other series may take this into consideration.
>
> We don't care much about your plan. You are expected to send correct
> hardware description.

To be fair, other platforms like sc8280xp-camss already have the
all-in big camss node.
Point is that if Lite and Main blocks are distinct enough we could
have two simpler nodes.
Would it make things any better from a dts and camss perspective?

 camss: isp@9253000 {
    compatible =3D "qcom,kaanapali-camss";
    [...]
}

camss-lite:ips@9273000 {
   compatible =3D "qcom,kaanapali-lite-camss";
    [...]
}

That approach would create two distinct CAMSS instances and separate
media pipelines.
However, it may not work with the current implementation, as the CSI
PHYs would need to be shared between them.

I guess this should be part of the broader discussion around
splitting/busifying CAMSS.

Regards,
Loic

