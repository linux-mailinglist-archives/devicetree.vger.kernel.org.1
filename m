Return-Path: <devicetree+bounces-236025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B50C3F55D
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 467ED3B3831
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72E6302754;
	Fri,  7 Nov 2025 10:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hq5IuS50";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AIWz4TAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD6930215E
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510081; cv=none; b=Uz447Oy9B2JkCjL9DVcoaUqhh4Apy57FQxHwYVDC6yUBHpWC19IbZIKrRl5DG2ooAV3x6wXmpvomsd0HzZUsroLapau9paHrf5+ZTqn2cflgRHDgfjB4s/pYX7XHySunZb9UdXiiyJQkZ82sshIegk695R8FD9fgPavyBU9hCTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510081; c=relaxed/simple;
	bh=pAeuv8eOL+5wg9RgGs+Pnrpz+ObPQlxFoMAfwp9+uXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sZiqBb/SBBbEhFIJESW1OptHUuup775mJWVHhJnb9/nvrnYSt2jB/8TxDKPKQtMQi8o2OlxvZwNUaW1So+RnB4doLf5ojRzHxkfaNAGCncl4AFZncMtB8Oa7OdhO7fxGuXzgTmEuctabNPIMfWmt9qKVjpZ5l/zIVkiNaiBLIVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hq5IuS50; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AIWz4TAw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A74oXUT568002
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 10:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MvIAOFltxWle1TwjCIbYDRWklxWqBrXkSsk3joE4gzI=; b=hq5IuS50h/SWhhy5
	stXFwO5kla4H4xLD5en3Z0KYU7FUXfpwrZ5VcS9Oepmh3E0eoMu+INO6pxqUzQEF
	7x3lIh450PIHagJhyvQmvmNJLnSXAD44BXbfjQhbTmxVCv3PZm9KQzsYq9ACQ9g3
	Qm3BebQsop/IP7jRONacxY36359y6Ife0sJ0TyAA9q2rwUdGFsNMj42LW28UOazf
	Txf04PX81BmQ4ioPy8htxvtWtuJ5/ypM68j94XUYf0BOUzuXEN6WRe957wxIFSTJ
	1Y+Kr2NOKLNC+H1juUQo0Xr3Y7+Re7EdR/E+DOrbuVmxFcO1+H9N6ubbcpbFTLx6
	wuVAUA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a905qjk0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:07:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed961884cbso1832491cf.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762510077; x=1763114877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MvIAOFltxWle1TwjCIbYDRWklxWqBrXkSsk3joE4gzI=;
        b=AIWz4TAw6iXadvVCLf9pyRiB7ygdO0u6GfyeToiFeZu9dUYNmhXjEkj4q6XCR+QYrC
         QzMoKq4BJYwwgB6PAMj5LWMb0vEP4RkFzqgycyBmjy0i7QcOSqMXxBPWlytYjc9aQfgW
         w+SG2KeP+uIle5RFJOKXq+1BeO7a5gYULQBCXM2SRkqk8ajL/W7MWb6zQM6z9HOhcTom
         KayrSw0C8b7IE0NV4g31EU4PeYlOLpWodbmzCYIwaHyhLjiH6+YOUlQprBzYAhRlyb0e
         4iKPAUZwSTPKaU5a+yD//9+fdgrhFgLsqi/fezxxP+bXl7OYM4iRahhjvoWI2ba5J4+5
         9/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762510077; x=1763114877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MvIAOFltxWle1TwjCIbYDRWklxWqBrXkSsk3joE4gzI=;
        b=Nemc3gm/4VX8Y3xIYZ7G5iZrjdAZpqq5sfACEpnx5EG/5R9GYw5CsgS4sKTj7+AB5E
         /w30NTQyBjqKxK+oyr8m575DZUIaQaonsY77H+t0Bk4+g69MESR5+41XpERTRy4xzZaA
         3gmblR59at5fLlUhFcPj+nkpfPgf4eS8yK/c57gDVX9ezqaVEiEHzBbWrEuelvnJ4h0J
         FpRU0bIlJVYLeAJtzlgKF4cZI5gfjRSy3C775xD9tkmNEZcU17BPxpb8MK6ZCc4X/h9C
         1HHRRvL3hH+K9FVVLnOSU4oBaQVph8cFdqBRALbf2DQn0q2ux15ZyBsM7OXwpUXNQYRx
         EikQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFRmQmnQr4wTl+MXjSoKu/0kAyeUbCI0qKkLuS1wK7UUzf9REvnrvS+Q9j4GxXd5B02tmz2l6Zw/zh@vger.kernel.org
X-Gm-Message-State: AOJu0YwwTB1WQZ3CKxWCsU/p7sxAU+f40tR5s//jwHKM69LeCkI86d4/
	0QknSeWfDBn7DIhAlnL7Fmj4FkkSH3zNK0uKIffPRt5jdaD2yQWDnvCKi08BrdYB2+ezuAWG4c9
	Ao1wTHsq9rxM/90MsnHbTRLTCCgPaSqujLHO4nQGbd/vzLrGWwv6jvb4b8b2tVBwx
X-Gm-Gg: ASbGnctMClbqOiFE9tM8yYg8CbqEFjBiTjGr7yi7lkay1VKbvwxyU14GNCkSBMlxDvY
	mFRAyuMRQF7Wai23+vZNv7JSXhhMaKZve32aqK/iSO3VrSfB1BJvW61Oe8neOMws89wO5vf8LCl
	JlNBgTbgEjyl7cTDtKGAV3CXRpnf+gu6pIo6tS9E9fbGRO7hog9njCwvRr2nw/dYhuZuOrxA8HS
	cAo5kwDrQWUkA6eaDsg9ionWAxiRziZ4CGkFu8l6i4lCM3V8svK9IEO7nR4sNeyo+J0grqusbWu
	zX8scg8Rk8yLBOW3ZJyv8bxkOH3T59kFsQ5BsY1niytgSxCg75zkgt/lBZgv37tGFOVBBaPdIXw
	VhhptHglX1uEd4sN0VGTrPdp22II3mGHm7X5hib2JueR8LAVNQ6D4ixYl
X-Received: by 2002:ac8:6981:0:b0:4ed:94d5:8d2f with SMTP id d75a77b69052e-4ed94d58d96mr13070821cf.0.1762510077104;
        Fri, 07 Nov 2025 02:07:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCffUKEFhoQWX42OnPuY8WARk25VbAeAdm+d3idM/CIVmUeG3yhPMYpj8qPKqDcpRK9eDRMw==
X-Received: by 2002:ac8:6981:0:b0:4ed:94d5:8d2f with SMTP id d75a77b69052e-4ed94d58d96mr13070671cf.0.1762510076732;
        Fri, 07 Nov 2025 02:07:56 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa2510esm200008166b.72.2025.11.07.02.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:07:56 -0800 (PST)
Message-ID: <22facc8c-7830-4ebe-aa04-003876f093c9@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:07:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 07/14] soc: qcom: mdtloader: Remove qcom_mdt_pas_init()
 from exported symbols
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-7-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-7-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lOlMPEPa8XqteOlzd9SlWy1A5Efj4zXg
X-Proofpoint-GUID: lOlMPEPa8XqteOlzd9SlWy1A5Efj4zXg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4MSBTYWx0ZWRfX02agHeDU6WQS
 Cvbtjk15fJLVdM/L+BigL8P07TlJ1qsVXY3G1M/+YJVOvCIHZP+aPChPDmSHWnOYrWCgyo5X/ul
 Si/AKcZ6IN2RkYMvKoT8eDouGyZ2RaVo8Jsx+NhG4mDROAAyPLX62rt72r02HKMr9kHlvcFgwvD
 keRawCTKytramlShxjhJFg2yyU0lrLRBRX+JjOqDItvDNxKxpCw+a77WswnMi23+Xqcu9A3A7Xz
 ELns8zPekvE6q7TlfQPaUuQtmEDKPuhSaiJb6xt8ajw0wzwIZFnqb6pVXOEVYKPGToAus/SESpb
 YWznS0zU5qldiWF4iaOXCR7A+EX6f4YuTdCognMayOs4n45rIFydGgOqu/Dm42F0GvL3ELRp7Es
 O6Cw2Z7KYT3OD1fatKmPCGIWu6Lmsw==
X-Authority-Analysis: v=2.4 cv=D6lK6/Rj c=1 sm=1 tr=0 ts=690dc4fe cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QTrYF5lwelmmVfwXoV0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070081

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> qcom_mdt_pas_init() was previously used only by the remoteproc driver
> (drivers/remoteproc/qcom_q6v5_pas.c). Since that driver has now
> transitioned to using PAS context-based qcom_mdt_pas_load() function,
> making qcom_mdt_pas_init() obsolete for external use.
> 
> Removes qcom_mdt_pas_init() from the list of exported symbols and make
> it static to limit its scope to internal use within mdtloader.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

