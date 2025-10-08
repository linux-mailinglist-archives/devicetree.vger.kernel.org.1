Return-Path: <devicetree+bounces-224482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEC4BC43F5
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 590E4188653C
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4842F5498;
	Wed,  8 Oct 2025 10:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="evtrXyIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571B82F39A0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917962; cv=none; b=qAdqKvisa+z3fwzydq+ha4cXf8N7XXjWabRtTyJ4oBkpR2SkImcL5iSpDSSLsdajG2Npzbr7YXjGVI5jGk3B7SbY5UkAdFFEmg1pDfG9UEVWTDtDTNapNWdvf0A+W43Ld4YqP+BV40sgFx2QLauSrHAriTGKI9Q7NtT1egdlPcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917962; c=relaxed/simple;
	bh=3kZ1RI7mpcVgXocM/obd76KaEu7ky1UsfEMWceFJ9Mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=biGb7YF5m1La6qwcjX8w3ZoiZwDwgmtcu1oBB+ZgiZJ57wAMiPjgphpT1sg3+/bmNRiMyRNvhof6hNFimubtgjUx8+i7sF87h1Y2BA7AikIXYFdI/UX6zBqW7A5RRCMBFwq2MuJmr4GYZsKEuA688/f8oObmbHKE00U7783ZLSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=evtrXyIj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890QM9021165
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 10:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VD73KeU6YsLbMOihbyQybjjE88iJUkkFmX1D7MkH21c=; b=evtrXyIjqeAWuIJE
	al4HRRZ6PQJ8wbZV70ti49ewiXBqAMDQdyW3N9oqtD3MxoMI0SrTaLf6UJI2ImOp
	kahd/i6nyOVC7K6ZvWRSBy3iod5z0iFKTo9KRhN3TSMTDtaTedpqc9KAv4PbcSsd
	j5U+kw2C/yyMYZBMt2kPIg8VrAnYPS4D7H9XcjDfKyIsKLcXUuARtJ1DtFzqC66w
	745eCaVfMQ/QfDn35BX8zckOPGU/f0gWDNwtykyaq/225t/DFzlq+aBR8ATgng5E
	ZDuimuSy6u5Ceh7dYALXrPrcYcrqHM0y4y+fXguNJDrp1cz+M78eZTw00YbcEOYo
	T74B3w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1t0cd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:06:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-865c7dee192so154923085a.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:06:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917959; x=1760522759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VD73KeU6YsLbMOihbyQybjjE88iJUkkFmX1D7MkH21c=;
        b=VI20Q2VvnbYvBitKIlSBgRwrV/+3F0NwrnEGZMhKMJlaqPWyRCppDl8S0ehIkCGtjp
         6xbN/MACyLA+cIUqScqs8mKSEex087UPziwXs2PMkJEdHPXWTKBNncjNFzDFFXEp+eOi
         2wmI2J6Fg9qBw2X1n/zC9gX9MGa87Pna3IjRMa/C/1K3ex6Q8mYCXPHaz0GsoaG8sbFz
         cV6y6Onq88h/Tmir5V04hRoqeld9Xyf6oSyetEhBMYhb0cFNFrDKPulW68/YeJeotN2g
         k3Rk0v0PewNJMlNfCpaKoTRRLICVF8quL0LSHzW6LX5YWavZHsUOddySmIHjx5jQCtYs
         o2JA==
X-Forwarded-Encrypted: i=1; AJvYcCVKEJxiJNvE3SV/vus3Njh3uT1bebyQTDYh2MxObnJSJfiWIaM2gljaN6oCByj1oVi3Kn907aAOslBs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdag0lttATePeqJak+4zMD6eRuyuSgY1Z3IEzjNOX8Zoh8KCAB
	VY1p96nj8aMJoJZD+vDwOYNfzy9/FHCJeSjN6V6iu9JKJSLwl+QAJtgZcIbluw5Jz45XrMbntcF
	EErEBji8GcSHo7xpLiTE/XIEwUKljaOrh7N3/irwjBsmwEiYS+KSK/hunyVf0mzYf
X-Gm-Gg: ASbGncvVe7yrI+3IiqShDFnGPqXlPUDHzKf8iXytG+7dTlgPZQr1+K1GO2h8hE4r3SE
	BL4BTR5kdwP55uij45NNirMY53LNvlSqATtNB6LHl0omYCylrG4i9ALBubRQ/uHADQXqWC1ff0Z
	N/QECwqhsX1pLJL9R3YPmFlVimsE4WjGvyfhaDYEiUfkoJkHwvEJVnGUNQUnm/oqIeapw/2yJUU
	IicgMQQ6sWvyBjoabN8WR+1pGYvH2EUwdloWZw/eAF7zxqDFeJgRNmozLVpw2u7JjhK+75WBG/P
	oJIkkBbjyk5RrHNNM6PbbvX0dx+HVrFU5pbwb/0rYrR1jGU+nnSX7961dKbDAEEJA1bzIICCrS5
	dhx0CxJHMGbHGWvFYc75O3ML/0+E=
X-Received: by 2002:a05:6214:20e1:b0:798:f061:66bb with SMTP id 6a1803df08f44-87b20ff97f9mr22224856d6.1.1759917958799;
        Wed, 08 Oct 2025 03:05:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/rs0cV8BNd0GLjGsCk7lVd0vUWi2yqmE+iiQDi/3jhZyHFSQOH6EAqUJz+hGIgliiKwZdOw==
X-Received: by 2002:a05:6214:20e1:b0:798:f061:66bb with SMTP id 6a1803df08f44-87b20ff97f9mr22224486d6.1.1759917958192;
        Wed, 08 Oct 2025 03:05:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788111e1dsm14272683a12.40.2025.10.08.03.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:05:57 -0700 (PDT)
Message-ID: <95704b74-52e7-4831-bc93-d4d7aa32736f@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 12:05:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sdm670: remove camss endpoint
 nodes
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20250905215516.289998-6-mailingradian@gmail.com>
 <20250905215516.289998-9-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905215516.289998-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: f2oNotdG90p-NBuPV-ffN4_3MUYUEGQi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX/johPlzw6e0P
 85pGng5E/5F4lfpmoN+cggvorML2rq4IuTFHuxtIoJR6b9/mGxFrvd9e0mCBkZvx/TGIFwuMC4o
 FnmGb2AO3paNYq5QfqrHGcRPCMMNm27BYkRRKGF0PvJXa10UiSd9fQPr3FmvCvlasyF12ix53wi
 9nOFvwWQFYInPJ7BiNabH20AiFiyMGZxPqdlvPC2JOEwAdwsiIhhU+lHZceGNd9dYzWeLWa7etx
 yEbDGMr+CgOhfLk2Dv9jt769lfOqU6Z6Q3kvTRArTuwBLf4nisV3iEZW9D1T4DrBqtSDT3P7D7l
 4rttoW1Wr7pKRimjjurv6Nv+XEZLAORAwEXIotWKRy/wuiQys28SLsQmCAdaD9DXje2ezlB8DBm
 7kqbkD5dGbfWE1eSUmLK0K/83izuOw==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e63788 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=aFP154w-NJnoEqO5TVwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: f2oNotdG90p-NBuPV-ffN4_3MUYUEGQi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On 9/5/25 11:55 PM, Richard Acayan wrote:
> There is no need to add these by default for all of SDM670. Originally,
> they were added so there could be a label for each port. This is
> unnecessary if the endpoints are all added in a fixup to the camss node.
> 
> Suggested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Link: https://lore.kernel.org/r/488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org

my comment on that discussion is "????????"

referring to nodes by label is the least error-prone way

Konrad

