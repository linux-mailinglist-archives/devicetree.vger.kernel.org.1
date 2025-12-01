Return-Path: <devicetree+bounces-243513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0040C987BF
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE65E3A3D89
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE274337108;
	Mon,  1 Dec 2025 17:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XZi7lk5c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R9qFWm5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52992335BA5
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609538; cv=none; b=s8KtfVmLtvULzt7vVIM1mscHqHGw+ZX2xO02aHrAWPKnQ6pC0kRP6WUYIRx/vwcENwGAUg8eL7Ou5hjZHOLtuXEMkoxtINIMvORQKPBT8TIn3TpyK004ZrBnNNMesn3AGX22hHp728DvdPMaGIsbGhPr5pYPOESNoNbNN/UEUk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609538; c=relaxed/simple;
	bh=jQu/0pfExuAoWyGvuNX/rwr2ryXUJjoXP+qbIAGb9PQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F5hkAHJ9ILXx92gTNoxowTfIenAXZZnDHC4l4y+RQizA1J+OTg1MgYLcqC3G6zc+ozuOu/+xd+TwVQgWmgxOm2ihyQqJRrF0Agy4d3qPGsYpnVl1G6kxhTK0nqcrcBGCoCD/XOJUvtnpJxPuFOtfGDRjD5Nawo6X3t+EERj7U7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XZi7lk5c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R9qFWm5m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1Gajpm4060566
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 17:18:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UBbaBOGe5klrtjBehaYCRT7sgkHLPQutgJ4o9PQvSYU=; b=XZi7lk5cbkLhJYrR
	kxy3Z7Edkxo1yd2StWZo6JMkbcyI6Cy7t1MmqbJC/PlsPLSdOvzlLcCl0Rh8YL2o
	8v24etn35hWQLRR9SRJo3DtZI6Kywio+J25GaIPhizY2lqxzE+fmWS9UBLkvjXYu
	APkbS0oAQ3/c1wX/LBTvPt5y1+cTj/gWcsSewUUIBd/IxUrAUPYqBMsg2RDd4XrJ
	MkEcOZVfEU0XDGlG7FqLeIproatHYNdK+CBJDRLwjS6Iisu/WhcyUaHaWVXTAdNw
	X2gb2K9+UCoNOHEACnMMNitlGOc7tYMiSI5labisuuESlZGK7AQ7JG6JNzAnD56W
	0E/R+Q==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as7fwsjtx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 17:18:55 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9371fb8589fso37143241.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764609535; x=1765214335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UBbaBOGe5klrtjBehaYCRT7sgkHLPQutgJ4o9PQvSYU=;
        b=R9qFWm5mxlSX7eOvmfAKsCiEpKS0hQIvq4Z5x07IQCiI00NNfogUhO+Nt+qg3i6kLy
         fwwg8vWJByVKG3DAIlZLCoDHIEawzW5i0YoNhYc9lf+pQXA0oECnM3XhhoKSaDMd93Ly
         KTYBWZCAU0/sm3XoSZ4eeB7xrk+F5v6e4mEeBX60LWJhKQIIo9GN73Q/yi+vDFQuaCDm
         nkNqpFNT03T7XlyGI7FuG+bcHHIvh96ihq5zuGbwRculBAlQih6qJprWlNbjYD3LamK3
         EL94Z64AKNy6Oanvv17IO3AnuOLkxiY1Tp+5TUXn2LqMmRRv/1CoSZ8+4/xyuMwGJijk
         3ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609535; x=1765214335;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UBbaBOGe5klrtjBehaYCRT7sgkHLPQutgJ4o9PQvSYU=;
        b=mzmnks5U6/iYXClBo+AY17Vk32gGwSTNe/rEHIfG3vYoHC4L7x1EKN4fB2FBuUP+cS
         p1U9ShkS6YxRBsj6366+VCVtcuX0zxUF8mVp5FdAY3Mmxeq61fAm2Nm2x9fE8/76qwP+
         QzW0uIFKILW+b3IdnYrUce++L+9tZE/uk6rvae1d81D+Y2CI6Vx+0ie6j7RKM4CioQcj
         EftGPqKaiJh+ShOLAzqjLzNyvIEzW0fMY6qC/EziffHfCxy8Ml1REeweGwgeFlTddMh/
         kocNmbPVreGWi725M32B1nU7dPgj4PiXdwUX/AzZBjVYZ5or0texYi2xt/tupPFn/DIk
         60cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrRdymRUTw2mH2efnRI46SHxIYYNnRtxUN0n6Yp7HZhG6H/ZwwJl8wWYECC3YRmcXTaIdBocUkYbGh@vger.kernel.org
X-Gm-Message-State: AOJu0YxHwnM9MrccZobwiYN+unYEhoJq27xsN3QrhbQ1YaX4u7+WeCFY
	1sOWkYMGEv4cQMAX7yFxs86r+PPD0P0zTNt8eP1yPsmXpVn+RXGqJgMu6FevTsGv2yRXJAHsICq
	EEgJjGeExV8GlDwe2NMKsoQ138J9wnHawIqrQnIYDN1+UFo74h8lVPZZNxnX47ghf4mZvqgvH
X-Gm-Gg: ASbGnctoinJkdu8pPszBAYqcmVaB/mmljCHt8URYNAhLsgY09+L+Jfi9AG6AiLY5FNt
	6uNKZCmlEgrXwUIaVqbaQthfC78LmiRs2K76QSLulW0i0Cjpti1cD5oI1PrXB3GNpf/ZLYgkUmd
	nxuSiGJAZrqFhvo18ty6DOzWBsUA+/DY6OrCCcRgqopnRsZt5Ib6DgQv8em2e9208Sx4Zv2IMwx
	5J9LJ5XWv2J82WE7QGE0BciDUJRKa+J0a9naMRUCUukCyaW7wbFBXrlFrR6PvpQDkl+Hn8/WZbr
	6/RoJooVNnFnzdN/HEpnSqcMz6vgUs+iPv4zr2R0iFWzCWQBpY9VIdHsK8RmrvptB2nWh4p7qrA
	7xi3IWzjDwKkggDHc3ROm1cNs3aWnfEC+/q7bqpK2x7dedTvMIJVuwQJUbltIrhiVfPs=
X-Received: by 2002:a05:6122:8b8b:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b9a9359a9mr7235633e0c.0.1764609535131;
        Mon, 01 Dec 2025 09:18:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYCJada/0RSlX4x+VUaXaxIlUA7b0rcGI56yLg/SM6B1iQRkieH8uQ3kyk9rp6imMAf4/iSQ==
X-Received: by 2002:a05:6122:8b8b:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b9a9359a9mr7235602e0c.0.1764609534618;
        Mon, 01 Dec 2025 09:18:54 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647510508e1sm13023041a12.27.2025.12.01.09.18.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 09:18:54 -0800 (PST)
Message-ID: <577ece85-adf1-41c9-b7a4-ca65e27e6c75@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 18:18:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] media: camss: csiphy: Make CSIPHY status macro
 cross-platform
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251130-make-csiphy-status-macro-cross-platform-v1-1-334664c6cf70@oss.qualcomm.com>
 <ae056a82-e5d4-4a73-b478-37533ce2e0ed@oss.qualcomm.com>
 <b9150026-cd87-4bed-8ba1-800e92203a30@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b9150026-cd87-4bed-8ba1-800e92203a30@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDE0MSBTYWx0ZWRfX96FOi+3775YH
 kRyfX6V4Zhj4vngpr14HKzZ7HD4CsjV4gNFrzCYrVKOtZm0u0xZjMBDQAZYoh26+p5QDP3Pce/H
 xbGJB87jvECeUwD5T0V9zSzpFKfgU/GNDyyAFuRe3VXCd6eGhXK54sZ+V6eXi8sUw6SPCMvo5gF
 csGN58WgdDYCpiTJ+T+4WA9c2rLKFgPNXkDlTKtwklGOLIJMzRTuODMe5xx+uTVfKlBOm1NZ7Cm
 nA++svXwJlyF9GWjA8HWwx6g6CPdoA+dQ+LGTWClZdw2A7yQCQRlQwGVYXx66qocxt26SMzaNWr
 4JZHqSSyixf6JBVSn0rbmC0dNEVuFdxrIXtLDsO7tzOK9rB1JPWy2L6+QWkU9ohu+EaOs2hyXb+
 a/v5xxuewoSMhStwK5NE3qrjTAslyw==
X-Authority-Analysis: v=2.4 cv=TbabdBQh c=1 sm=1 tr=0 ts=692dce00 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OxG7tpPIUWXr36wslIUA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: 6QuDwoEY5n_4lN7r9-XTGLq4ZQ5R9jFv
X-Proofpoint-GUID: 6QuDwoEY5n_4lN7r9-XTGLq4ZQ5R9jFv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010141

On 12/1/25 3:48 PM, Vijay Kumar Tumati wrote:
> 
> On 12/1/2025 4:20 AM, Konrad Dybcio wrote:
>> On 12/1/25 7:25 AM, Hangxiang Ma wrote:
>>> The current value of '0xb0' that represents the offset to the status
>>> registers within the common registers of the CSIPHY has been changed on
>>> the newer SOCs and it requires generalizing the macro using a new
>>> variable 'common_status_offset'. This variable is initialized in the
>>> csiphy_init() function.
>> "offset" + "common_status_offset" is confusing
>>
>> Let's maybe add some platform data where we store the actual offset of
>> the registers in question and pass a csiphy ptr as an argument
>>
>> Konrad
> Hi Konrad, may be I didn't follow correctly. This is consistent with the way we maintain the other SOC specific reg offsets / data in the CSIPHY driver, in csiphy_device_regs, isn't it? I seem to think it's clearer this way for the reader to see all the offsets at one place. No? Thanks.

I thought this driver was a little more complex.. anyway, big
changes that will make this prettier are coming so this works too in
the meantime

Konrad

