Return-Path: <devicetree+bounces-175267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F676AB04CC
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 22:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18D401C27796
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259B928C87C;
	Thu,  8 May 2025 20:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fvs6oQQY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA6C28C5D9
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 20:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746736884; cv=none; b=A58NQW8Wk0h4Xj/8oaoWE4Tnb0St5537CDT7ZpQsjouL8RGyaFLpwJa7SMC+G5naK6CBArv2KNZw82b+xbzM6QSUcMDJHG31I1zhvH/iN+eDNcXt88CsaRyW9glcbrS7edDnjUt87v92M4yxBAZ3xD0hqYgqtUugcDK32nAUvYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746736884; c=relaxed/simple;
	bh=QbQbInT28z8l5bMaj93I+MSq/eE1z7PNcWBODFwxaog=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJTYcW7K0D7Gy1Qr1u9AN/lNYCWdZq/iOGeF8N3DC0/O4kRJLUYjpt7kgohWg/cD83KlJsZqrl2jmIcvIeJ+wtsdigYmfR2Qow60WNoJoH9B0x4mEJAC5HoQ7So4bECwZOBjWM7ryDSrf3LqfHPRO+JyVHRADVVljK3dqfh9Iqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fvs6oQQY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548HvePS020438
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 20:41:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QbQbInT28z8l5bMaj93I+MSq/eE1z7PNcWBODFwxaog=; b=Fvs6oQQYRHilLitm
	34io+n9UO4rUvBOKUB7nxCA9t046gAkqXD00fsuiZsHacF0viZUOWqjH0QueiUNW
	DOxz5zMb/5bqCLHp9AJQz5QceT1coAvLJtYETJmssPMWa0FN0wV1hI+MGefMTHNq
	ij6bD2+qJml2kCEx5KSEzFjenU3Gxp6fd+e6apcWsgaMcGV8WZuyGU0uqEVuWnjU
	z7opC0sEF9BBJyv2UiHbAwS8VdniWeyNCkG67+C+GZboI7RxCf99HC8XJ8ZN9ab/
	hNJTBbTEVoIq8AekA1IpSejkE12kGqYRV/xOVV8OchtpZncsyxVYvepYzyGp+Tvr
	IZVEOw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gsdj1x4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 20:41:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7394792f83cso1293229b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:41:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746736881; x=1747341681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QbQbInT28z8l5bMaj93I+MSq/eE1z7PNcWBODFwxaog=;
        b=L2YZGSTGxxHaNyLNadjYAxEFdFCubmZrEIzWzx8BM+oOaMARZn6h2yG2rdbOmXDeyd
         q2aq9kujjB75TxIDl7Rjzz0sUY7ULdqkdX75QRW0bHqgtInIrStWo4FiRw2/uVRyYgtP
         Na1cBXTZ4rYYd/s0BaNEAXmjY3NNUXYYBSxsfgmjGYrS4A94OdFaLN0/vnWXdwXS75Fp
         DNqj1tbBcurrhpjvzYgPHXMc+I/Uqny1fszCs+SK/Mj58iQOv7qeyI/lhxx8dtrmWwda
         KDbWqjYYR+xYS5+fvIIcpKuAfhS7eTvXWlBQL0nxl5IHLohL4GTveFNQX2QKYUESKdbV
         ovZw==
X-Forwarded-Encrypted: i=1; AJvYcCXr5DX7TZ2mukMliwkvbsEzuq0s7KWQgYJtqle89inxMenGOSMtvGyhaltsq/PTQ1Ky6C70+RPddrZv@vger.kernel.org
X-Gm-Message-State: AOJu0YwcKdwowx/m5LcJea80NKpz43KIPCDvQX2NWrnYENbmzgdgsYOq
	8sR3gUqvRSPvidV++PpW9w3n91d8qFBDKW1jcX9nFVycrYX2C/pAxbB4g0J/Ab6SxaWV0xk3//w
	J15a6Xp8MOQS9HYfPsjsBQIJF8PHNVKWafYyt1+JityNvOQnZONm38Fh995Hn
X-Gm-Gg: ASbGncvpx8ypJoviAWfIWDckMDntHm5SmfEnvDcc/6hmDFWIYT3NBe0Yu62G9x0HAoU
	LPTwz5QchBJyQYxw4JKYNBK6GGnjfzes2jwEhF63o/RqVL+8l4MdY7wiJCcs3go/q8QY3O5ZyZx
	KSPfh8XiFL7s5d/JghGLY6afqJbU2O0179pPTyk5+UvtgUnQhVd5EIYYRrgoa3pArw7KKlYmoq2
	zuf4Yt9J8wr4R4VPTynUd0rvy+32OxOPmQ3XuSzw+bm53VznNPMXWAmUoTmMb8z+2PQStKAtlK/
	iRsXrg5Xd9xKnwL4Py9tlaoiqqIfPsDBeP2SGaNxonodqtFems2PsB8WoEwdLQeA280=
X-Received: by 2002:a05:6a00:a387:b0:736:4e67:d631 with SMTP id d2e1a72fcca58-7423c0847cdmr802798b3a.23.1746736880847;
        Thu, 08 May 2025 13:41:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEprAh+upkBqZbr6AvV6R8fa6aznVOqLH7rPSamRDubjAMwRZxovE7CTUHUv5Q3UkygrNcxiQ==
X-Received: by 2002:a05:6a00:a387:b0:736:4e67:d631 with SMTP id d2e1a72fcca58-7423c0847cdmr802768b3a.23.1746736880454;
        Thu, 08 May 2025 13:41:20 -0700 (PDT)
Received: from [10.71.111.209] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74237a408bcsm467404b3a.149.2025.05.08.13.41.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 13:41:19 -0700 (PDT)
Message-ID: <8c6a8e84-a802-442a-89f5-a99261761d20@oss.qualcomm.com>
Date: Thu, 8 May 2025 13:41:18 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: qcom,ids: add SoC ID for SM8750
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
 <20250508134635.1627031-2-mukesh.ojha@oss.qualcomm.com>
Content-Language: en-US
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
In-Reply-To: <20250508134635.1627031-2-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PMAP+eqC c=1 sm=1 tr=0 ts=681d16f1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=J9Vk1PX46GMNcKasQmoA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDE4NSBTYWx0ZWRfX01E41WfnBAk2
 Je+viKk8wy5g8IbESnGEljclRChScKE/JwJy49/xon3qPx3yPhBXxy2K3nS/oN/yFZYObSPguK7
 5O4kxE9iE2+6zRrtjqgD0qCTuZRih5oDjWAt6buLlS3oykePYRXp4Gm2heP0MeOh/VxItDJoNhC
 ko7FQUACC23I3TtpNCGaCfJuPNU0W/Fue8ig9zqEmErZUTSxy1fQpQBoMR7X+uNXTuvzkuhfI21
 Huqx6NT7a1RIIYXMtVgwca7gFpigFAdhU2J0qqAXxw/Q1aIFSv52F2l9GIoP9HwUmpBS7EI6jrs
 IoREMwgZkhYwH8M2ac8zPbh8tcEQPthZAtZOzUW1atEBzOj7vw4UgieZ9C3Ljbj1Y8ctisM2/fx
 1dGvd3MIMyk8IqhoexDNWCEXFaDXxXmNl3zOpdMEE+IsFb7zBbBIuxKsoEDuhdsQYNNQJMgH
X-Proofpoint-GUID: P53C7VnJbORB7YAGg-Z1_24myf0y6IzK
X-Proofpoint-ORIG-GUID: P53C7VnJbORB7YAGg-Z1_24myf0y6IzK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_06,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 mlxscore=0 suspectscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 mlxlogscore=641 adultscore=0 malwarescore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080185



On 5/8/2025 6:46 AM, Mukesh Ojha wrote:
> Add the unique ID for Qualcomm SM8750 SoC.
> This value is used to differentiate the SoC across qcom targets.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
>

Reviewed-by: Melody Olvera <melody.olvera@oss.qualcomm.com>

Thanks,
Melody

