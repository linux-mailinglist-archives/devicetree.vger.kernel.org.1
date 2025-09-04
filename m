Return-Path: <devicetree+bounces-212505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72243B43002
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 04:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB73B3B7AD7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6654221A453;
	Thu,  4 Sep 2025 02:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dq/qDeOX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47013C01
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 02:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954147; cv=none; b=oD2KJ9oBHezqLdIpzMhBfCRWyZLaLfZU40/8jQ0KCJUMzJIf8Oi6I8nH4TbWMq/gsZgLirg4nfpKT7dt65cEbd8TMbRUAqZSjzNiA4Rc06bjs672ve0nuW3SekWvkX4hY4Jt9XqVdOTGZquJRQBRuIc1v7d76ziI7pPNo/aQ0ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954147; c=relaxed/simple;
	bh=svZaVELrPVpKpzX9SUjpuPRjMgUFepubeojy8bDHPck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sb2jEQ7jgbNX4HgLY3nKQG54M/w7TkCgtYbNp5NzjRXJcQYWM1giu1gw5b6yUhCukjq5EykogA44EAmsTqga+ExWbI3dFG3H+Q6zXYOprcArIoQAZdL/ENWS3ESS4Dwbxj4DfyqgYAUDmGR/qRiVHHYLfdyXaEgmKQPgOlZrA5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dq/qDeOX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58415YRY004224
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 02:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lKt0S7ecs0CtAy+/PB8DTyVHpUERySp0ZgXkiv6AF1k=; b=Dq/qDeOXkgKTS0FC
	qmIXOjDFHE1NV8mvTG3DxpBs20sDbb7ZFcJTIFbgwediO8jHxivwJ5dnGKIWngJn
	1vhgGoAahs8fO4l4KyQ66J29BHPXxMeCsTa7YWzrnYIMoxQAk6Xmm1nGAHw3JIWk
	e2UD1pKHD9hGHsYtu+DhBjg69t2oMtZjaqz0xgFYE/0yNKvcl8yJvP0xRAngt/GN
	VuigZDbo1xyWo5YkpMWTqJGpN1my4YDgdBBscQHgLyZ2CAvFiJOIdlSF5q4qkL3/
	6ufdUiYLnKCCYCaS+LBj+63RN6yQFd5zs7UIoHZLL6wo53A1qc53dCc1kNWE0gTx
	3HCmNQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8wtnn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:49:04 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-324e41e946eso800517a91.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 19:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756954143; x=1757558943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lKt0S7ecs0CtAy+/PB8DTyVHpUERySp0ZgXkiv6AF1k=;
        b=uwPrboJOQygXLMhENCJLgm6R0qtz10USFvSEs2OzUGZW+vAHBBOouN8CSkXT93n+E4
         OsqNpErA0AAW7fr6Xjuw+M8uUQwIk5JI4b6bjp2PwAOvHMTk6gyVV5k47Y5dFBfhgElH
         mQoJZnF/ZGHrmLhiKMubb/3r5IwglhcT+moMTy3JzSblXqz1Y4uglZXufKnV1YQR951c
         NsCmlFDiKm2MVIqDSE96HR5hgCE3iICnASuXC3BG+XGE9gxH91ZsfiFl0A+dT/VaSgrp
         ijiT35aO7/opp7aWbZXZWXJGXCwaVNFvZjIOx0CksFS08lOAeaN25knAcT3y97af6Xfa
         jFxA==
X-Forwarded-Encrypted: i=1; AJvYcCVxo85O4OptOASXatVcvAbThiinuyq0wN8zjGLKLqE6uJ5XeQPMFYsYHLQwthIaa1S3K6DLxntRa0/s@vger.kernel.org
X-Gm-Message-State: AOJu0YyC846BA7waGxV6/Ydvbg87L9eWtBIkNggbnD7MF0UVadbJFYVN
	7QauvihnTYtAY3cnQwMV26xCQS3fBBw1kv5SNvRbhXah/+ZYUVwWAarcu0WslP83NLXLGhhy382
	pT8CBHUAQVBwm5iKK71CRhDj3s5QIPZjjQL/eFqzh1NqwQqrcva+TuagX94GPe70G
X-Gm-Gg: ASbGnct3M3BgnXhvA6vPif1YpMx6C6BEWLvYkec9uxTm21gziB6kmGOehhcAxZyIT+u
	ngd7Wd6WSh9vm23w4sBuyiH0kCbbIEZOTdTuyUlUtKa11TOM4m/XAsfrEMuE+wB66AdVjKzjJjs
	lph0ujPb03cx0ozWY0jgbgJ3xCjdJpYdKQaONFOfKaQcD0o0x5+7vrYlPGH21oDG53PByWvqY6M
	KU8pgtA1jj79EyYeK5MXZoT7iBHKA51URgK8+1g/LvYTpMkGb1Zx4vDUWeqlPqxwUWbwnES0drV
	o1z03iyE6rPz++u1y8vU+E29xXSjitrWlngBhDI9PIjVlcq3lUu4euS4FK5ycRdTwdZoKctS+pE
	IhlhGDsHAzC4ANz6xvuxmqEyBLilL
X-Received: by 2002:a17:90b:1d48:b0:328:bfc:ed81 with SMTP id 98e67ed59e1d1-328156f9a2emr23377041a91.36.1756954143511;
        Wed, 03 Sep 2025 19:49:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELJFGledcyj5orxusevvJh0NdR70AZnkQGjekJR1JcPW2asraw1wJ1eMDCJtOKT1CpY2VcfA==
X-Received: by 2002:a17:90b:1d48:b0:328:bfc:ed81 with SMTP id 98e67ed59e1d1-328156f9a2emr23377004a91.36.1756954143000;
        Wed, 03 Sep 2025 19:49:03 -0700 (PDT)
Received: from [10.133.33.16] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32b92a28a67sm298195a91.4.2025.09.03.19.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 19:49:02 -0700 (PDT)
Message-ID: <d7cd5d3e-3010-4b6e-bcf7-d0ce599f473f@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:48:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: lemans: enable static TPDM
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
 <20250822103008.1029-4-jie.gan@oss.qualcomm.com>
 <a53c6bae-710e-4939-990f-5974346f6c75@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <a53c6bae-710e-4939-990f-5974346f6c75@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: arbY4R337H86VNeKlslH_qd06yVt6QAD
X-Proofpoint-GUID: arbY4R337H86VNeKlslH_qd06yVt6QAD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX1MqGlX+b2wei
 53NMsLmaWQU66IGMJrv0bozBYSRXDACVQ6Y/U3IJRFG+VrbXdReyMN9VO3Kqmozy8PWgbOrDzsk
 /F6Me95xUBiHs9lWwNgNmZIWqhi2XGLkvh9zBflaxjT08uEKcAoYqHn8qiQgH4YyGQtzMUnHU+u
 iMZJi8kf19Fttj5PfPhGYMVSBfbN+aYmI4ylqyQo6IRtNJ7xiXww55MTF20F3zMOsiYj6KZcrP1
 pPLVD9h+lHbmFxrZXlt5cXrePyXtef1B/bgxlT3gIkowtz03PTq1vfmrmABcHWBTnuCzmcwEdpZ
 9dAn5CUhYD8LjK1QZU9SsJbSd++Q346mcSSyDzHYElxtGRvtnF7vLE2SIuTwCkKF0LsC4BAw2Af
 WoBrtOyg
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b8fe20 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vFb9WTq5DyKq8J-f9BEA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020



On 9/3/2025 11:59 PM, Konrad Dybcio wrote:
> On 8/22/25 12:30 PM, Jie Gan wrote:
>> Enable static TPDM device for lemans.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
> 
> perhaps renaming 'turing' to 'cdsp' would make things easier to
> comprehend
> 

We are following the legacy naming rule for the device.

Will consider the suggestion.

Thanks,
Jie

> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


