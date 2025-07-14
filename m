Return-Path: <devicetree+bounces-195986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 675A3B03BD4
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74F9118991F9
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA52245010;
	Mon, 14 Jul 2025 10:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SV2NH9S3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71AA23BD0E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752488792; cv=none; b=j+NbqlPBPGon/MNtEAeCySWmYIm7kD9qfeQjp7lvPvQM2OShesmk0gyskhk3TIK4ZudwNALR7vsWGP2NFhM195f6ZIbnKHwGKdfyC3riJGcbO5yG8kaMJgshYqiEz8UApwsdMEZubrvv834EuRQR/6yRUIA/ZK1nwjs3TFFMHnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752488792; c=relaxed/simple;
	bh=3WgJKsJNXm6nkCQk25rfynsk5InHOlPiGe+VoI8VjoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CDiRs4Lf8Ed8lV6WAJBBazvcnsOuupX0rJy6VF8Abmwah6s00Jh3azutNiOyqqcBcjarUpdu51mAyTzsbipnkXO83sFbZF4D4GqBI3bCC2BDvUzNfsL7ECAo1WX/xD46rG1q8SkigXiqXTHrkKQdpV2x2HfmsTpgfx0qryOVBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SV2NH9S3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9MblN013581
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:26:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	egAELupiCZx06w7wEK2KFv4UsZXmQJRYPb1g2z2YVqY=; b=SV2NH9S3KyTAlgcK
	40EZ36lyqXFJ1HVoZwyB43XOXkIu/ldTZXodxZ6bC0y/XckneTlzgE+yFYlWffGf
	udJcJT8CmQfddyxX+vsvS+Frevh0IqP93p8ajTOG+Ymk2dGVvWOIFNow3kCjZCGo
	5jXDUahHQ+M66zDYi/f/vYf6V/bzDDaFKLEt20AVX36dQpUqcM1cuqA7qvXW2AG0
	fF5Yg0ez6bVk7x9UbM2TYItKccB/dwFUtrXHQ4G1/GdnOZUM8vQ3+pfn9mHwBry8
	fjPwD8Q0Tw6UbWr4HB1julg/Mqnt1dZYBhvGh/uSOCs2Xwv5ztg4+eh5LuBKGnij
	LP5w1g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugvmv9f5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:26:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab716c33cdso2766221cf.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:26:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752488788; x=1753093588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=egAELupiCZx06w7wEK2KFv4UsZXmQJRYPb1g2z2YVqY=;
        b=a6JpWLGvtFDUC86mCLIR3PFxfjU/hp74JR72waMJ8Dfy4VOXe3+FZDiTE+pXkCfD2X
         +JW46EnEgTWBHnlx88Tqi+3AQuc4u3eCJgieI2RZAqXyeDDichO6YzlMuvxh5SVqtdvG
         qITwDVbVNCH4gbxDDSkZXlOUw0v5AvsgG59SH5uVd1mBqVxUw+/I3gMWKQcnk7UF4VKW
         YPcQbSsJLTG6bEHJayKsSBoY+nzdhbVyhB0st7NE1M1TwS2XUIIUQbv8goLg7p0pdgPE
         YFbdl3AoqAP8UYQl/2ry3EU/zuSAP1rJaogysIvU2FT08yc7i4m+pVwtJmH8ggGYt67L
         XACQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXjHhqxtrkdiu495POCElXQv28Y9N/4RZMJolb2SQ150dAWL8F7qMhDGxuAVDXPlw4fUdyXWJzTiGf@vger.kernel.org
X-Gm-Message-State: AOJu0YxdNmb8E5XzTPugvmn3r0l3KD9aXgXdWr40vUTlPDZuReSQTS6R
	H1pQ8wejBCqKF9O6uClbYzWSV7XmHiWIweXZcchL/X+QhchIFkOIa+CN1DqgFEGDLmqXrdlt3/t
	S3uFb4TObP93JgqeSs71hkP8GVKhLNXVQY7QTIshPMw9ekWj0FQr3Vf9N6JvbwU5kqx5YMURP
X-Gm-Gg: ASbGnctiWJXKHqgOI0gBSto70oGd8P1i4zfEhKo4yN0+HgAxRdgq2fvtFDgFbIYH8Bm
	DRah1ZZZD2HrUjemh/IAfeMgI3bSA8ELvI/fCyDEfeVqxTOHuxe6q3WPcEu9qBDUzBtJTkqoqDG
	e9lJvMqydtG7e8t5LwX8012ecgycoeu5TSTN4Ey3eLGswQmUjdYCw6k7SUcsAoLt/4PrKkjfiX/
	roSRRHuM36s33b9aGDV5QliFIkWDEnmSWMPB5Om86OgCUTV5pYwkeTU8UCu6gb0mlxveXwDHq5U
	5w9mnjxW3PO+bFmzSLO9OspQ91VsI7VjMwohC+KuHc7vGyHVVLH0x/Xxw0PJ4jgCMEKiIyvZYH2
	CDljP5FfVcr9O4R8ILNYk
X-Received: by 2002:a05:620a:3194:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7dea52c0555mr554053785a.11.1752488788027;
        Mon, 14 Jul 2025 03:26:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDL1NLrtu1vBkvJOxO8syOjdbhxl5epP7yC4DT9HmFC8zYh1BXgqTPIUl4qDv2CMgF8y+JcA==
X-Received: by 2002:a05:620a:3194:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7dea52c0555mr554051585a.11.1752488787599;
        Mon, 14 Jul 2025 03:26:27 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7f292d2sm801836866b.72.2025.07.14.03.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 03:26:27 -0700 (PDT)
Message-ID: <e0e08139-6231-40c3-8153-5a1acebadf3c@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 12:26:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] PCI: dwc: qcom: Switch to dwc ELBI resource
 mapping
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
 <20250712-ecam_v4-v6-3-d820f912e354@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-3-d820f912e354@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: eVficvm9e3eSIDffZrvDtloUgtb4MMf2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA2MSBTYWx0ZWRfX+QSEFS0PPDFR
 vUUtR1aO1zCIvuR+n3Np2s61kqeaoJDz2RIFuAuN+nRLbHclUmlY0E4JjFR4jCxeY9WLKpjYghQ
 xV1oL6rSTYeDGBhDyYvSm5nEW/si+tkdTec39uOb+96IfUikRHg1JH3tHADVESdjUYEQLzTm8jK
 4r6oUjyHlW7L7qhgZBd+KXGcpFrSTbFFl3zNaxjzCK0zynbbgSLtXxwh7oI+cPtZVTdL4A5XVdN
 orvhgH720dPV2svyRU8WNlZoJBtrvJrH11KaExCvNgDj+e4z3KKPGpveHUpK18GXGtLn89nLZ6b
 eR8Q8tpKJgtUsbsVO8coJcHYQfLYC8v0WjbG6fuyuKSOTh9YiejgzZB1/VD1Wb3NcipSORBEO1Y
 pjAsSwL1UEFAiAKT2OxR9Weig9Y5Tt8RAeyQLZbGHqvYo8TEoUkhs4Lvl1I3lx812XTIrnjY
X-Proofpoint-ORIG-GUID: eVficvm9e3eSIDffZrvDtloUgtb4MMf2
X-Authority-Analysis: v=2.4 cv=C4fpyRP+ c=1 sm=1 tr=0 ts=6874db55 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=6pHcnep46kEejBPVP2gA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 mlxlogscore=803 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140061

On 7/12/25 1:42 AM, Krishna Chaitanya Chundru wrote:
> Instead of using qcom ELBI resources mapping let the DWC core map it
> ELBI is DWC specific.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I see this can also improve:

pci-exynos.c
pcie-histb.c
pci-meson.c
pcie-qcom-ep.c
pcie-kirin.c

but this is ok to put in another series

Konrad

