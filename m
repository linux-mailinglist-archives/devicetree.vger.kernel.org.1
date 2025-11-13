Return-Path: <devicetree+bounces-238335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A70C59EF0
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E018234544C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046F828A3F8;
	Thu, 13 Nov 2025 20:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fMRbqKwi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gAqMpwHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4672E30E858
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763064939; cv=none; b=FhF4ZnDAjdngbH0CTlIF4IUIPw18ppjLvLE3UK4W4ZKnRZAyLWlzQG5Atr4lsWz3QBNrRMAx9u+3qsrjpdM7BXyKvN3w4thAbiLnRZkib7VPWup0iMAthGG7qZYMKeWjo8UTCK4pBOX3348bhQH+twpsVvIowxSQK5GXa8233XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763064939; c=relaxed/simple;
	bh=2/Ubuvv4CRNzD5FkKlWviFf1YkbHNjdYEKg/lElsMpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wyn4i3o7PAMKK8i27KmKA/O6ChQxa8J+x8J5F1fKPxNxfnu2cxaLJRg+pe1mdqFUkHLk1uxpupf5GfwmMfUoO/wVc+C6fRlZjZRR7aSF3qT1U8BYuEirC+f34m/vylZ7etVX6ntcs5suQHFVEVWGWmLEjo5Dz5wj88wuBhA05Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fMRbqKwi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gAqMpwHG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADJN4kp1061866
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:15:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ILd9PUMGN2TDvVwIqXslZCpGKIvmjdh159cGGGmejh0=; b=fMRbqKwiuIH8ZEd7
	Gfs36gODraaybkk6C79RshPCRHamKWp6cqxOyCpTYWZHzbTz9OKt1d3aK6PCHePS
	EdUVcLzpVtvPxkw5R3VChZBh3b1vRNHZtGri1vcyw55kbvI32CrQZM0YDI4DsYu/
	SWnpw+xNg3/PPYHLgcgo6Nnk7s5RrbMqJPVoPk1MTO2wyF1Y9Wyfo63KDU9tY3Et
	yudxGYV3AqnQY88orvexm4+vgU9T9wGFBhyZ4qvMLVtN7u2tfAxXrNBtwEdPha6j
	L2+Z9hdZh0Io014C8qwVeDYXxqKU807JIAHaIgFZOsVklRyokbI1LBwRquLBNfrc
	rBDeRw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adnen04ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:15:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2640347c5so390227685a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763064936; x=1763669736; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ILd9PUMGN2TDvVwIqXslZCpGKIvmjdh159cGGGmejh0=;
        b=gAqMpwHGemur94S4+6uKdK0rbxUnCsVLaxkNQrBQFjmVaKMkFqgZ97xlQKEpoBRPft
         CBkxiYutIQG0FP4AGyTSrnNV5REb+qXdM05/CwJJaxbZU/ux4WCmy2R6ju9ZDO5fKDLU
         XaEt5BMaRZkeYTYBYxBYrJzeO/bJDMUcJ9a3rHRRpQF6SpysFHnXW/0v2m7Q9VQs2n+c
         CGzPLaTa5bJH/Mvn9SREfQSg7iJx2dWXJHEgH3Tm9P8+f9sY99Ln5oemTMkvMqfXHkmG
         Y8Mfn20rKWw7aHl1jXwqOycls48FRr6vODzBzzU9njMW+zoBkNm8OTTHd6BIvmXMntNq
         aovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763064936; x=1763669736;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ILd9PUMGN2TDvVwIqXslZCpGKIvmjdh159cGGGmejh0=;
        b=Mpg6OwLfTMF7Y36ecrFrXaur+dMYybIM36u157MrTyYH+xX6nb/tKEtURVJotvMQZC
         m6UrxcnhyQIBfc4vFTIeUjxe95EvURByqFrt58bX6IJ89vJa5sodc7mmB73QigmKNAb0
         2kWC/OhjJmp5oS1KPdy3CQ2RDrejVqYz1NFGkCGt9nTrxBp4ZqrOVYb3Q9HrByayVDMO
         Tj/A0i9srjDDg5CzWeFBj3niasP/pgS1aY0KxNX0uZje4y9IfJXgcnbOXHEi/bzwdM8n
         CyClJiWKiuuhPJ2ZR//4obzeTU+ReAiJjJgD/9+ybHmlrSrV5C/rZQYidw2T6dybpoJG
         C2EA==
X-Forwarded-Encrypted: i=1; AJvYcCU34prod9ING1MauWzjf4QddevWQ5nXMEGWdPrF39cFS3vpIU5lGULGLqqgPuH0aU5JYAupN2jTW4iM@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ/63l+Mlv5BbQ5Bz6U23yukHaP8DN++pVHTLhRGN2dZBxjlnn
	ia8CmHQ5FOlgXBYv1/fPYHwKuR73wKWJNOoEJoMUWiVyD5FrfVUmzsuERqrLfpxQq+aO58WNGH6
	eKnK8tgG7G/OGiM6H2TJwvZaYcCgHjVrGjZ6YxVcfi+jaoEAdRtmCiCrgr8WdJviw
X-Gm-Gg: ASbGncsg3QqdTtRzltqyHb65r0rl9mgjMSUQ/2QNUyY+TWbFQS8p7EUJd53r3v2qAmm
	l7UjJ+3UVJToz74LDkQIigHUU6EC9QTNujwB8Kv6QzVRnhWm/kTh/mKzTMLFhEhIFyniXMpKJsc
	aAqZ/ygI/lwv0dV+GV3/juINMCNo1EaOp65mFd5M/JrZFsNRnE6a1GfH3PNbNsSiKX7iXLAkWyW
	cwsDwH2onUgm3uE8ad9G4x26w9jSUrCbHUAtC9HFrte4S+F48/NnCfvzL/aYETPD7u0bHwuGW0J
	3Ad7qBMHe5Ho7UtZHsUFDAdepIFES6my7C2pjZXhT5zk1T0D+hnI0xyaamKlgERz8Aajjx5Qzgr
	kU1uQ0DISyf7+onWyTGD7MUatEAIf639YCsZOkVn90VTM36zuVSvSSaowhFAnCW+2MQvF49zRlB
	slYlimUmKt1vLm
X-Received: by 2002:a05:620a:4110:b0:82f:10ac:450b with SMTP id af79cd13be357-8b2c31c7699mr92099385a.65.1763064936422;
        Thu, 13 Nov 2025 12:15:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnqy2FoCmPRnlyXOKKZi4eMTrZOtfMsOc1+d2vmlJDOz7xyFgnjO1/YYJpqsIHOPAX691hHQ==
X-Received: by 2002:a05:620a:4110:b0:82f:10ac:450b with SMTP id af79cd13be357-8b2c31c7699mr92093485a.65.1763064935832;
        Thu, 13 Nov 2025 12:15:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce080e4sm6015221fa.2.2025.11.13.12.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 12:15:34 -0800 (PST)
Date: Thu, 13 Nov 2025 22:15:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Deng <wei.deng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_jiaymao@quicinc.com, quic_chezhou@quicinc.com,
        quic_shuaz@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable Bluetooth support
Message-ID: <feaaqnezljrvqyxd5hvkmcjgezl2cqnjw6gmmu43a3h6chs3vc@cx56pcgckwoz>
References: <20251113130519.2647081-1-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251113130519.2647081-1-wei.deng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Zpfg6t7G c=1 sm=1 tr=0 ts=69163c69 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vuKYHiuAbYjNwaP7v-kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE1OCBTYWx0ZWRfX9L5XW5kgMDAJ
 5OhXhDtoHV7rS/cznNuoDwMm5LyGloyZKrBsZWLqkPaoU7MsdBZNxl/rfNTU1rg+LszXpdnSMIw
 rC2FdzWssKhQmV98cX1WXRPgRxGICwYsrKn+8Iftws6CgK9qtaRrjBrf/K//63U8+wolXyys9us
 RAync7ekHcU6+fPp4bHUFZ1AiIktNzAy4b4zZO0YDQ24Qtg0G2p9Mar3EX0RxA2CKYUpKc2yQm2
 CKWPvQU6079kE53FkOp+zb5KftNAEyA2ll3iYXxmiuqb0ShsiAma5ISQDw+5ZkPa5BU9DA0QKYe
 y7/U5JNTxPmZDwgD4391RHKq41QYil+RpVMvDwWObzJiSWfbGBL5vBT7bXlcfE6H0iq0FJIUxGJ
 D3do1rxcygGkLrE5NvAQWbHJmtoNZw==
X-Proofpoint-ORIG-GUID: y1-HIV54ENAJ-jRKcpcP2Br2J_5UbSDZ
X-Proofpoint-GUID: y1-HIV54ENAJ-jRKcpcP2Br2J_5UbSDZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130158

On Thu, Nov 13, 2025 at 06:35:19PM +0530, Wei Deng wrote:
> There's a WCN6855 WiFi/Bluetooth module on an M.2 card. To make
> Bluetooth work, we need to define the necessary device tree nodes,
> including UART configuration and power supplies.
> 
> Since there is no standard M.2 binding in the device tree at present,
> the PMU is described using dedicated PMU nodes to represent the
> internal regulators required by the module.
> 
> The module provides a 3.3V supply, which originates from the
> main board’s 12V rail. To represent this power hierarchy in the device
> tree, add a fixed 12V regulator node as the DC-IN source and link it
> to the 3.3V regulator node.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 99 +++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

