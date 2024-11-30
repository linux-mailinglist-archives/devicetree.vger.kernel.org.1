Return-Path: <devicetree+bounces-125736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B1A9DF147
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0B42B20F7F
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A61F19924A;
	Sat, 30 Nov 2024 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPSnlZhO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794484087C
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732978116; cv=none; b=QWfRBRsOpgtEI8unVbKrjRFvlYx1A7izIkEWa85XN2uymqP1vDehdlN3yJbn4Dabb3fikvVes/0tWuw0WWFUWWiax8tnazNGVsVhDxy3fL+4YcZGOPZIAdo68DO4bI5FQuap2KmfST5+1pLYp3JZCBk1fgmu/AUYGLeTxf6ay54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732978116; c=relaxed/simple;
	bh=SxMKZqWHINuMIWk2ERrR36po+nHqNifEB9pvK/kYI2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sz2DD8IJ4E+mpliqwRGJmPAIHPbhK8SN4vBCTOcNhgfDSHRMthwKmQeqHcPwSKHjrOJBqepsoE2daRZ+eUqoRP9ieHGtCaqaHteAjAZ0cGzWPekTo3mb47a9WlPHyKRZc92vGwUukGwGUtSOB54mFwPhXnSpV398Wnrrg09rC/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPSnlZhO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUDJnOJ031789
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7zbg7/a8AqK410FZRMTiXn+gGp6N3/qpdAoKw9aQPDA=; b=cPSnlZhOmCSuNKf8
	MOcZ7IfdAGB8gnU9/BqK03ExM9nLkh3UW2rLySGRgXXjw3C+ry1YJhCeLh9Y5yL3
	K5YJ8reZicLXW3YNLv3i5YyFScbiAvJEWzu4J08VodkendnU58ydgULvg1rjrf9m
	QeVf2JYkhuVt4EduLYMnBBlNrzZnMSZkfEg3rQxFmwV4/SCznoIZcSGT5Uq7Prum
	vDOBYpLRqZv4ledSsI+4fuHsPiEbISXDDYI2Bhq7lWbCZSLg9r3qgboMizbVR1ao
	ZCvoC9BiKCEbBeM135rcMIbaQ+IRSDmgZOFZHCIBQkxMgB6T8pVweUdRpjazLIC7
	BGFqPw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437ta2rw9a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:48:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d87f10a5c7so4700046d6.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732978113; x=1733582913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7zbg7/a8AqK410FZRMTiXn+gGp6N3/qpdAoKw9aQPDA=;
        b=rxnG2LVS2Jjcp60qX6taG3ydC+EAFbTlXbYXIloGkAS5iuRVBliCRxqLx08w9Zwifm
         GsafSQnbr2HmQMCuQygjuBqgq/t+3t/+uG6UO7PM+F155WNsYd/DifgmEdBOeyJpYSh/
         lpDFfd1yUBor5LeoppMih7G0ghGZ7+EAL89PtTusPQCdypFMJdZt39eSsqO2r4BjWQ1B
         eFpvL3qQxCbuudrUMzfQYwOHF0kzHkSzTSLjnzKJgwh7gbN7cT2NDkuYo4wLxv9slCVi
         L78Bq9jFmhdNFNvut8vBbgFR7w82Yh4LSKQqsl1/UAzqy3pp2Zu4NSk+Vf5A+EkGBtx/
         4ssg==
X-Forwarded-Encrypted: i=1; AJvYcCUtQWciL6803BDf+NDcqydBV6OwHnp9KM+fAJx4nxkJ1wsLhtc0qOSRxuvkVHZVbwojiLBR8kge4P4r@vger.kernel.org
X-Gm-Message-State: AOJu0YxTUSy8tCYZ7cVUjtbKGMVnniiSyMiojmKHZm8ztWZsRf3L4LxA
	wZZn/NyvVzS1V6VwQP60l2Hk5e3SiSCrUbWH5id+WzEKQIa+d3zd6N1/My4yNUuaShn7BfZwDd8
	G3r5Q+ZfwGUOa8nd8Bnh6Ss0cr9fy92jUXeBbKUps4malXBwnvDramZzGgWNb
X-Gm-Gg: ASbGncuiqzd8v9r7V21kFSJVMVeTjqto3mUq0OwZMzDVP0MP8vdhwE47llki6P/vjI3
	1XLo6tdnJuSQBkhMYIy5AxXODvWbYyATxio+awU3CIbRm3EpvwizRnWbwd2lP4ClWnkFY+xANnq
	wYsxq5Cem9xpCVN2jWSdJ4E7b+5BdoVOg2RZsXid9jkO9Oj3G0E3yjjR3Dytj82jOPiqIXgzO/5
	35hbsyPd77ifkHjzvhzU1cyky64ahQEJe4KawfnOq1H6bJBP7MlRhBwZ4ax2M+7GdVIZLRYvhuP
	XxeYv0iVwUpRWb3TPPLCpMnyASZrNww=
X-Received: by 2002:a05:620a:400a:b0:7b3:5cd2:783 with SMTP id af79cd13be357-7b67c2ecb97mr812515785a.5.1732978113485;
        Sat, 30 Nov 2024 06:48:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGeY8KeawgKDJwviovT2Bn0JoxwOM88gdpGWgJSdYTdl6Hh3GheAU3zBCTDOc9MEO5DqXkVhg==
X-Received: by 2002:a05:620a:400a:b0:7b3:5cd2:783 with SMTP id af79cd13be357-7b67c2ecb97mr812514685a.5.1732978113206;
        Sat, 30 Nov 2024 06:48:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d0ac78c0f2sm1964681a12.10.2024.11.30.06.48.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:48:32 -0800 (PST)
Message-ID: <a76ef7d1-8407-4ec0-8180-83ff39cc0487@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:48:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: ipq6018: add 1.5GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241110140019.3426181-1-amadeus@jmu.edu.cn>
 <20241110140019.3426181-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241110140019.3426181-3-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: H-gB0em5vDtqHyYT9slc6ILB8-N5p4Td
X-Proofpoint-GUID: H-gB0em5vDtqHyYT9slc6ILB8-N5p4Td
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=667
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300122

On 10.11.2024 3:00 PM, Chukun Pan wrote:
> The early version of IPQ6000 (SoC id: IPQ6018, SBL version:
> BOOT.XF.0.3-00077-IPQ60xxLZB-2) and IPQ6005 SoCs can reach
> a max frequency of 1.5GHz, so add this CPU frequency.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

Similarly, I can't seem to find anything to back this up

Konrad

