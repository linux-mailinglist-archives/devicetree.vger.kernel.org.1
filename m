Return-Path: <devicetree+bounces-130844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884C9F1029
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51C2F1886743
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1F01EBA05;
	Fri, 13 Dec 2024 14:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vdf6hTQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD961EB9F4
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101888; cv=none; b=GMdoUx1CTevYCb3C5jemN8atpVrMsVq348IAaavv12m+65lJzqTGUM3MGBkbAZYqP1Z+wehuAOev507B1DF0Kj2Qo22ApRcS6S+OOA8e7IQCi9PPdPee9+277oPmUWYni3e2QL4gNw5PA+dXeZrDM+cDYDXmTQBQR/IEslLUQyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101888; c=relaxed/simple;
	bh=w4PDo4lU3FmAcpCjU+IT6PySTuUD5F6w5xSf9oPCSi8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QN03rz+PB8EqLC0ceZ5fDznzLe1yPdv6+Qq6b0mCDT6mMqBwO9tFPfxijNSGfeCfKSb0Z5ZUq7yWA0u0kaewHLHvzJ9kAMhbKTPk92aXWHsEoX6cQ8uJfdE31JBC6Y12xxeu4LCumUrVb8AMPzox1dJLi7oufJDX+0gHWTJj8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vdf6hTQo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9uY1I008001
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:58:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9rlitEYMAstCU0CcMg0k4rqH3luwKVbJGjPNhceUqGk=; b=Vdf6hTQofgwk653g
	DmNKsDUZXhpLmOAIM7Nqx1WZRiPbzsEoEEwIS9siXGMyrB0TWHmYRpkbXLQ4QdWG
	bei+bA8osmLBQiEfGag4FyueI+10tV9L4HFUAan0WYGbFbWhohJEoagJoV2XTAoo
	peAWYAxZKr8qKQ8IMiQPqjZHAor/9WI6J5v0jfQaNXDohyTies7xffNZqBsWMUiJ
	kvk2qiHyEfmLdGbTrLeg/CtnXtCOnz3gYi1G/9z1KvsMwF2SM4LrTNsDGwxd4Blp
	eXbaDGEd0PyHkiJlU5fTbi7f3a9tQx6JMdf6K9XRybG3gm8LkPZFLnzHHxMp1sj4
	gQ2aoA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g6xutges-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:58:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46748e53285so3702681cf.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:58:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101885; x=1734706685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rlitEYMAstCU0CcMg0k4rqH3luwKVbJGjPNhceUqGk=;
        b=hMTw3F7q1hE43g+g+9KleZ9G+eVUm8tXfTqP7qbulE8GsHCSOkz/S+eQ5cICok7uwC
         yQJHKACTtUNspqkEsTVX6HAPRd+F1CZBSgrMLFlr9X2e4o5gOWC8CJGT6fVbpsmX2wfv
         wlNyFwTJ8vd3w+WTiQtOkSd8mf4R5PQRL6ykz3t+OYv2wX4n3tWvhBExeJrL9q+Mo2Rn
         Ljv3bm6/K24f5PJia90/LrTJY5iS7nDWl2zDaTHOgBBX59Tb7DJOG798UgmZLcuxx8G6
         bJFYouSgQlj8sMnnfiEMjrtj+HTIG1+m5IEaCpgDzu5k0pwxfho9RDz50bDPqMLSp7Fp
         o7Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXTSkx78ZKpm3z+JQy8xGeFqgOBaCPuRKm0RgS9cCbx8r9ESI/CRS7//9i6nMlYAOqnVir7DLSSsXur@vger.kernel.org
X-Gm-Message-State: AOJu0YwtT5srsY3uaDU5/Z7lhXckHTq7mH0oC6QYqrFS4WecDLXUX9k3
	U5jPHsaIgBcaMX8YbIBTlqiWi/C/HJrQ45gsx+5Qj66/RrbaepOCJrefQpzxofsUHEnpG8LUV5j
	NUm4mknP83qGjVW0Dh0ubXXF1+AIldlG39IsL8R4ZNFYkYHvATg4wesC7KrFC
X-Gm-Gg: ASbGnct6ICoslAJ0MLUgTIkuop4mI3PE8CCGC/yALys6bI7AIQxAZic2OkG2671qi5e
	hkwek1ARBFTrQx7d3EriLeiM/IsRzH/Gwo5d8jKnz3eEl4tUByyiDr08Se6jZWRLAB/vYdGWdeU
	tdZjfAdH05yBmhwIE0zDJlG6wO1mFeRFjlB7s/AbJdKgrKwotk6aRrmpn+ciLJ3n0UT+dkPpM1f
	M/nXTIaH8vBLxbjLYudPcdtONWyKHKpJvclH1wWSrXAIPnXPQNwnp0oahl+OYfUSVCA/tKd5uiJ
	4ZJ3FvAP2TerbMOq63WhjVTlz7nhR9b3gKf7
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr19802961cf.1.1734101885138;
        Fri, 13 Dec 2024 06:58:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVl+CoBmbFo4oYakH+eF5u2smvgvJQ/hIj+BanY8o0pxOB59lIum9KZ+H5dMfNOmDtuvMgXw==
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr19802741cf.1.1734101884711;
        Fri, 13 Dec 2024 06:58:04 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab920c3e95sm6516166b.187.2024.12.13.06.58.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 06:58:04 -0800 (PST)
Message-ID: <0b2c2b55-c41e-4d09-bebb-702d1de49e7b@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 15:58:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 22/23] arm64: dts: qcom: sm6115: Fix CDSP memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <20241213-dts-qcom-cdsp-mpss-base-address-v3-22-2e0036fccd8d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-22-2e0036fccd8d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: P1z-XBp23672XQ-vtq7F0-L12p_gF9qo
X-Proofpoint-GUID: P1z-XBp23672XQ-vtq7F0-L12p_gF9qo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=864
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130106

On 13.12.2024 3:54 PM, Krzysztof Kozlowski wrote:
> The address space in MPSS/Modem PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x4040.  Value of 0x100000 covers
> entire Touring/CDSP memory block seems to big here.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Cc: stable@vger.kernel.org
> Fixes: 96ce9227fdbc ("arm64: dts: qcom: sm6115: Add remoteproc nodes")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

