Return-Path: <devicetree+bounces-235608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6B7C3A5BD
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 11:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D4403350B9D
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 10:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266273009E9;
	Thu,  6 Nov 2025 10:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ysdwnn9I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nf0YooPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9A22EDD70
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 10:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762426210; cv=none; b=W1ne4R5eQESMtEoeBzsAhSOFor0yIEjcTW6Y6p0pFejZEcoJdWLJM0vvJRpFD2O8c/cgH3C/Ev+9MgLFHQ1SSfLE79a7jcMMJGU3w4bVnsFVCCAbY/tCuD/iQw5RNumU4S3vOAycrCbbbWR2Jyo94/cBKR1nt/5V2mpTO51t7zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762426210; c=relaxed/simple;
	bh=IIzlanJESUhT5HfvEWESAycEQAHaY1TGsW3q7CIXFiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KK6eoE8njLSumPjCFidchqpg1MxonfgoceG72dKRMrOtr11Azb+HCnlYNRBZHFVdgmNZfqVsnbbdSndfG0PfDPHnQaNamksUkTS1zsfxEw6euiVEYYmqZM6nkjghv2BtFRWuk6/fE8lZoO3jKDn8NzdRjFVNWFQFNpFYhL6Qifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ysdwnn9I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nf0YooPC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A68jiMG3383532
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 10:50:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/r5TJc2Jt6B9ezU0SWbilao6yYAovw2BCl+MHDUkVwM=; b=Ysdwnn9I0bxhlwS7
	iPQR1rxOPUlmujSnq/VV3kpTbwl1klH8Yze5iHhMd4+6MVLMGHXBWG+2DxfVrhZ6
	FMZzJHAL9a28O6XtTsn6pwHhuw994J3+WqEvJRkmmRze0oET4GmD71EU14WYt5JK
	EVIS6si0CL2Mq2qc9B5MUITgIpLG8L6KFgBshEJ/IINwfq2qbxzQ6MARpZHjx9kl
	bhYpVe0yxFQdbdo/4JEl9KQ+mTWx+wVcpunpfbJLbMIYBFqhgk6J3oMy0ZVN3KlS
	FYlPlwh3zYr+V1r2bDl/+YwPm+Jvc7g0Rt8Qfmh8xjINB1wG/D5c6+ZCgJpDX5AF
	ruJSyw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8reurb73-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:50:07 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8801e2653dfso1105676d6.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 02:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762426206; x=1763031006; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/r5TJc2Jt6B9ezU0SWbilao6yYAovw2BCl+MHDUkVwM=;
        b=Nf0YooPC/K4fqisFGIzztf/MkSoOtN5rnztlQLeRrPvGo44pvGHmjSPiacbjdgMwdp
         3hzw/4WAJTBHuJ2ACLZJ16Xu7P3dO38T6nLhMy0dL75C1Jaxgwanm6J9AnvXggFwCWiF
         olbf6gptJPmMWzAW+HqnQh5uXKUKwNGMJlYDG8ZhYUGHWZ7loDIycG2nFOM9bPCUxI7k
         LOKgMlieOBPBLkEJQHS1+5fK+qM4xNs2nPX8VNsqo2Udhg6xxnzUnjGMHiHqdQAFE4ax
         pTwu4W9YRlRTlz333Hjrg82eMDP37cu0bGAM0TdgNVSwm9OiG8LXbPSSbRyBNgMrILe6
         MePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762426206; x=1763031006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/r5TJc2Jt6B9ezU0SWbilao6yYAovw2BCl+MHDUkVwM=;
        b=XBaC+JiLO/mt1jvLZ+bDhR5ZfC9IdnfbchqIam9bylLwgefrLp0D+T/dJ6tjRKI52V
         IBixayuw4sRL5diIV5S3jNDPRFyfp5d8FUk9VzEru7G2ORUS1HcFHuoNNu1jw5MYxQ3t
         7dLho4lBxGrRo3q9pjNJUPrKuhr4C80fOL6eabLRE/+R0hnzX8ImHaQcdZeSUEoHwMVw
         erogPJSaLh1Lr07gw6FstnRMkvXRm2fRJDhkj/l10fpjKlYmhInhd5B6LdzLdwsll031
         nnYn8/Rznk7I55WsE/OUVbM/5QAU6yy3F6S+M0qaZz+h8akIPsvJqXftxrISS/6ABJXZ
         UCdA==
X-Forwarded-Encrypted: i=1; AJvYcCV/IjVY2EqneNksrH0B98y6z15v/mO8QQWHJxMndxDMxrHeJG0GYY+eK3wvi62QeT8lwWOWI8l5iitC@vger.kernel.org
X-Gm-Message-State: AOJu0YyBY1IvUK2ReiHK+1ZOxHXnNZZLiA9kmht2TzU/U8zN2wJnUqVA
	7kDejHVp4UUhD68nxDYtIqqIzGzU9lxMS1UVVDfkhDf8RMnnOIrRPcOF+wAjBH3ITSx7rSQ6Uji
	k4GLSnjGe+m3yrPNB66R16MtOXImg5Xt6P36krj4/RzUSmLI1qkAEU0+wzizcLgmvitFNd17o
X-Gm-Gg: ASbGnctZoXWGRbKTZjrEwX9z7x+GrRXC7UC39heFC5IkDhdnamuKYDZqMJCiJi5ASAn
	Tj4hhtgMV/PCObOwQOuulh86a95yCdQFq5t7aCbvYMZWnrQ2N/4kXaPRif/CtB7aLcrumDS86FP
	KEIE4gvL7RUGVA64rmc49iOLsrUIIV1SUmr1xog1zRYVC40p9DY9Oc2QLze5+FwFnmRMGNe824C
	RRX3AwCGikxKgAAFzg8m0S3stZswX2BIOIiQR4xBxeek0bXUlDTRQCB59jZr2wvNuwqCNNw+09E
	L8BTNTkeaBVArZ0TPmN0Tt0Y5QkNj2ButztX9XnxlV3Wes2Tgz6lqBS1acz/venxmjzAvXyJ2g2
	45lXPky7rkGLMulnbe9eqkyukAd8yCvXG1H6QZAvNMzR/tCRsgyt/tH+Y
X-Received: by 2002:a05:622a:50:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed725b07cbmr55865591cf.9.1762426206378;
        Thu, 06 Nov 2025 02:50:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAqEDvEf+gqv8veBiEj9E570Xh7oP7Zo77xgq9b/IAxf+sUFMtd0HH5mOmS6G7k1cOolBRfA==
X-Received: by 2002:a05:622a:50:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed725b07cbmr55865501cf.9.1762426205989;
        Thu, 06 Nov 2025 02:50:05 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f8578dfsm1505891a12.24.2025.11.06.02.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 02:50:05 -0800 (PST)
Message-ID: <9b661c7d-6730-428e-ba24-bb35afb011ce@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 11:50:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-som: Unreserve GPIOs
 blocking SPI11 access
To: Xueyao An <xueyao.an@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251106102448.3585332-1-xueyao.an@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106102448.3585332-1-xueyao.an@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA4NCBTYWx0ZWRfX+c1mohQGnGEk
 LrdCrjJqygRXoxxEnkcXJSMdHKm5PJZs2kmuTqu+lc2d3/uZXDuMuBHJclKpSIdgWR6fNV6CVXW
 +atC9uTk0NakXUed2DlEd50KgMOhIUg/V15DXdM1n2kzaPBvwJIj/eaQZS9eOy0qPgITb7OSCVw
 u5PgdEjGp4TbgrQskLUCbtesmQatnLDRenf0aE7r3ZUcaHYuBqv7HNXBQenK1sE4gJ2ZOLU+9S6
 +kcsk7gvQasIvpFY2oFMUkhEMDBFDzD0YkQ1jYzN4/G4ANvr1cfMOoPGeWfyW+Xj6pHkcr6Gt2t
 tABzSpRqsAGJD1IZXF7ubV1csVRPIYtlsSpjbNjcwRcJ4rTtSNSKoyGnsSyp5q6ga1VCGqPfwST
 KvioTupSh2SVL1F3eHVx+jplKPTZnQ==
X-Proofpoint-ORIG-GUID: Jgl4lpqEtnEvXgaYZcDIKv4xKdsv7Mnu
X-Authority-Analysis: v=2.4 cv=RrDI7SmK c=1 sm=1 tr=0 ts=690c7d5f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rx43dS7NxoJ6fGjPFHwA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: Jgl4lpqEtnEvXgaYZcDIKv4xKdsv7Mnu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060084

On 11/6/25 11:24 AM, Xueyao An wrote:
> GPIOs 44-47 were previously reserved, preventing Linux from accessing
> SPI11 (qupv1_se3). Since there is no TZ use case for these pins on Linux,
> they can be safely unreserved. Removing them from the reserved list
> resolves the SPI11 access issue for Linux.
> 
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> ---

Note: you sent a v2 of the patch, it's expected that you provide
a short changelog and a link to the previous revisions.

Please switch to using the b4 tool, which help you meeting that and
other expectations - check out the internal upstreaming guide

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

