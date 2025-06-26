Return-Path: <devicetree+bounces-190119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08AAEAAB4
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:35:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D97A1C408A8
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF224223DD1;
	Thu, 26 Jun 2025 23:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ns6C5b8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5DC12DDA1
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750980917; cv=none; b=dRGXeS/9EiMVZZjSi078X7tJi0QIEZ8GoNTK8AoItIiYXQ+/6MfgQv4ESL4nLKcFmcTZ5UnjNk6ET9lrtZwjlI5uaJfRjnkms0fmN5G58PTXCo9S8wU2Repd6Nw2WsPClc8BBG7B+R07vYHaMeexUEv0yyxt3AhfHINJJltZHZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750980917; c=relaxed/simple;
	bh=9qan4SOQiAV+IvZmYG3SDHvA0EovSnRG2C70bJxoLFk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FmwuvrVBXxOUf44wmi4ai7+oynPvswWW1wGNxdWON5V9qURhbY/aLlRD/ygFhp3GpXehEHDDbjdhjRasl24oWy3FSBMWbpytRJU5LgzhloY6Y1Z65bJd+/0ugs1dkVCP3KFMzXjJgAwQhj6tkU5ABFA9PiOQjUwkl8UWImYZkXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ns6C5b8C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QHeTfT026622
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hAd7DVeEwKm1wjaALp+4bwWbD2AnwwiOE18te0+qjjs=; b=ns6C5b8C5cHhNyBM
	qN8s9Gao8T8QD5IecsR9XxRVP0o8FaiePsCFa8rKbb4USlm8eEjJOdwfku2xR0ms
	pRV/xgB6VPxVMHdPWIRxLrQuOXfmyB9wvmH4imFJUNA2w5LRB5zwB8wlXf9S1Oed
	Q7/Ca1D/jNBC/GzL91hjeQ0l+cg03S8YuH2FoCb4eVetCUZ6Z1sodR4En8TgUpFr
	NVSOIjCf50nA3C5c333LwVDbr2UfUZrr6Wa4iNS3YZ30Gp0/YnL5wXl/FXR6KU/Z
	6uG/DCV3/Y/HiVdh66bJezJ0MdOuu8xHg81PrSj+vyfBI0rpqVCxzgpxDhNlnugO
	DJqwYA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5x0pm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:35:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3ba561898so18682585a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:35:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750980899; x=1751585699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hAd7DVeEwKm1wjaALp+4bwWbD2AnwwiOE18te0+qjjs=;
        b=RIxldD9SftK9KpuR5iRjraOfRCmpYvq9WacI8BrqgGGRBu90xgH2Twjdc8Wz7MYKO1
         bXdeEqnZn0SF57PwZhtKeg2gYDh8nDP1WBbhteoWeqzQly8Mb6CeeevOTZKUVDBjVyFP
         sUP3C+u54fqo17RFDu24nAThIefdZIGrsxEiRNJv5oZ3Vxedn+jrzbTco9PH3KlAxFeA
         HNRbftCg65WjSttf2nShiNXxu1vbGGCyGiSrovA+Ef9BfPlhZlmEqXrblHe6psYAZPAs
         Kg2Bw45BP5lm3DcNgEeejKwLgsfipSb8mwMXrMWahIG9KgaMMEy763XAugskS+8EIeCz
         ITvg==
X-Forwarded-Encrypted: i=1; AJvYcCUoksb+2SYtr/3GjN3mnDxaz85MDt9I5gsA34Ya7TIe6jht3ewCV+CjTrsfGg6owpWRE7YqZf4SFlXW@vger.kernel.org
X-Gm-Message-State: AOJu0YxLuaP2dFLeUV7Jef8OwgyuVvmgvqKSadhJ9c1P81r/wQFfLmcm
	Qvmqqartm1lmyg/XOhegLtrUeUm+mKOwXKMPwPFZwdVUMZsDF6LIJ4YWbE8T3Xx7oL1j7AAp83o
	UNkUkbcZ/FG2P/+wL3rwtCS27CvSIUgo6nilvQJKs26DLjeXaNXysJcy0zSlrpjeY
X-Gm-Gg: ASbGncvFDTXnv4JxvNWJf4A3ew9Eabtwfb/O8H+956dVyvUy6+lLCAgZPTkAcT4KbkZ
	2KMDlFuI+0H0Pze0XuQtzwrc7+GRE2hm6R5HIIKYv5901dzXQrxuLmIzNGDuu2SVAK57aSu/Tcb
	fG7t70GEDZLki9EWBJu0pA6wGzvzGwhwi9Uw26d/DnbD0Gbkpayvo+QxZEW0qJZzxfptaBEc40i
	1/l25pxV/r8/kKSpo1lc0n26otzghe2pAbkFVGxJm3Lf8WM/yYF7zr4vZ7Wa5uchn9lOB4gyWN+
	M3Avgb9s//xmdKd0fbFwUKN6/esh6OGtwMlz3ETYEkgSe83q82UQgdIqgH7jfdmj0oXJ2J3aewE
	Dq6o=
X-Received: by 2002:a05:620a:172c:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4439630ffmr61358285a.4.1750980899092;
        Thu, 26 Jun 2025 16:34:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2PRBC7jtFvKC0qYTyxR07iUAWipF4qkqzOBUkWOdASYf2yymdYdIveUVPc/yVZg1FF4AV4g==
X-Received: by 2002:a05:620a:172c:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4439630ffmr61357585a.4.1750980898667;
        Thu, 26 Jun 2025 16:34:58 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363a9a8sm15771766b.33.2025.06.26.16.34.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 16:34:58 -0700 (PDT)
Message-ID: <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 01:34:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] firmware; qcom: scm: enable QSEECOM on SC8280XP
 CRD
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: x4Avw_TWrV2hZMAOWlX9BFTtZPpuMTv_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwMyBTYWx0ZWRfXwo2j1Cyj67iM
 dvgCOnFC6tO4QtFuzCvpoL3bwoUUy4iNNczlDjlYwBY3arp8JvlVAGi3JYW9TSuy5ALdTZsyr5C
 BrfHwdJ+WruVKJPw/3uDN9PlOF+o921Qk/TnWTjPIPBs7uel310STqAm9QJQvNQ+jfljIOw2ZYw
 XBvHCN0yIGUQT74rg+PcgYDDFXwA4L91gNMrVqMO0i9/oqZUmUKvUwh7mX5tGTMHwLP5p8Im8Wy
 W/oKpdm/CXMC0OekReGxnwTqR3ignmmMRK4g3OD62CARZ2mjJgx2Jr9Njy5V2HPZsw9Lo8eyAxi
 1Msq/2kN6gEYwpDOHt/pqNk5EUQH423s5kJ+osRMHkiHdHOwwtYZMx9HMFeh9eH44C3jU/lBx55
 vrqNzw96A1hbNluC8vZOkr/SpW1EqtyPWCSQrDhtMQiU8FpHVmwItkzbTtLEQq2nleWqZl7Z
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685dd932 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=UcOP7Zb98ZuMvhyqNpcA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: x4Avw_TWrV2hZMAOWlX9BFTtZPpuMTv_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260203

On 6/25/25 12:53 AM, Dmitry Baryshkov wrote:
> As reported by Johan, this platform also doesn't currently support
> updating of the UEFI variables. In preparation to reworking match list
> for QSEECOM mark this platform as supporting QSEECOM with R/O UEFI
> variables.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index dbb77c3f69ddaa931e7faa73911207a83634bda1..27ef2497089e11b5a902d949de2e16b7443a2ca4 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -2005,6 +2005,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
>  	{ .compatible = "microsoft,romulus13", },
>  	{ .compatible = "microsoft,romulus15", },
>  	{ .compatible = "qcom,sc8180x-primus" },
> +	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },

R/W works for me (tm).. the META version may be (inconclusive) 2605

Konrad

