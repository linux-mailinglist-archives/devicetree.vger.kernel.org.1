Return-Path: <devicetree+bounces-142238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6208A249BC
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75FAB18877B9
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BDD1C1F20;
	Sat,  1 Feb 2025 15:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j+lNUpa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E921BD014
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738423300; cv=none; b=bTp+028hEOpNX1is+cYgyt+cBt8Xkpa38DzGpqiyiCLPPgkiRbX2yp9W0Av/fyfVeOUEMsPrRih4ELR4Ri54LXA3tvJUxWPt69QDl998ae1dlHPALwX2YIUDWCli3Top01NlhhGC7M3pIp7m0sGTr5MmurXXwDU5u63itiiBHos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738423300; c=relaxed/simple;
	bh=jwlgbM58gVPmYcQpvsJIy+oPufT9yeu6uuA3sKSpgfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kP4qT9Q0eJGeiIH9gVu0ND8vCLdGpK5pb0yEDuhUDg0SiCQ/1FhjZYGP6IjsjrIHxNtE80CrIiuJ7opuKaZVqm5U68OD0s0z1tYxAk4ENEz/zDsfqQYvfVKTX4uWNcPyEK6FnYCs/xgISkq9KBvxeovidPlzihFAD7tuqDGXJaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j+lNUpa/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5115bJVj026232
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OYn14RVc/FnUbOz6NZcw5IacFoIiXOj9waoegmQ0C2w=; b=j+lNUpa/HZ/qqHHN
	ej0VzMAKatRapM+8hvwowBusVtTTIWyL46Vxfc/XDTw1KflGu3yR/R1AkrKrzp0r
	XC8UHphMfSbmdfsvVX2wZXPWJZSXhwe8EVC2gwh5qwbTqebJ2C8gD72CqAeD7ylj
	lWw9OZhlDZ/AkaIx4yEOSqcKXyW9lWdVWhoCtkMVwtwyA8Adb1TQGq2Fzw1NZ9ub
	cNTzy4fgzzg31i5zfPr94zYCdefJ7Aj663DqwodpLItrgVHXbIj3trEApPX0qRld
	GNSZ8JtgZVUVqVUh6Vl6Xa+/pEQPHz1S7OsWAbTTFmmSHNhkQ3Oy4b4dgr+hpOSa
	r5G5Yg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd7j125r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:21:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso7232891cf.0
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:21:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738423296; x=1739028096;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OYn14RVc/FnUbOz6NZcw5IacFoIiXOj9waoegmQ0C2w=;
        b=ffk7qiY3i8c7OLh5Oza74E3w44C80tRhG69DrsqDs7Q8uvFnhq2peG85gLr5vN6kYV
         jDi6Wst0OksBNjykp3v7Ftqe1i9/jhCl3FkWuAAEAPBtyghpEQlhpJV/7+O0eT4IxAvZ
         BIKFgcbOMrMFCvWm1TnyIyTAR4aS/9ovc9Fp8Xku1BuFaVHQZ3Cnj0SV5uVRMRx4HS6u
         1STB4Mynj/Bnv4izvuDZJ22sOZgIa7qsxEB7AhaDmqUUrRUI24oWbh9QJaoK4jrJ/wRG
         MvBJ1it4tE1S7c3CXOT/xFFqfq57XiuosGmRwGk+M8TPZwqrCrjUYngHXHj7s9/jCL6I
         QDFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr1Vs6Z11SnC3EG4ucErYhE4pIjdCpIcBQ+ptRKTEZPBooL5Vrg3C61Af26M8z1qTAUOcRoNhFD28U@vger.kernel.org
X-Gm-Message-State: AOJu0YxPs6QFINjxqkD1aWXHGrfB5Q2sByDImSqCZVcXPg4PyRl922lL
	3S7wHJ4WnacsmOvc02OPDFKeP2LO8wFHwM0VZtIEz1zFPIpd9aQn2GSZOdL4vjfiGu5nKbAcqb1
	4abqFeifQH6zQ8yKtoUaCtSyg3u8ZdTlKPaqs7F/fDAQmTqHO697EPZIScfl4
X-Gm-Gg: ASbGncsTnAuBP2z8RDR09NFC1SQ5Z6N4Ff/dnRMz9afRiCaZefNLzX2fbqkVevWsutW
	n2UKCsNrpzKYoppj27o7sjs8qDQyVxWHaxUX14FZ9Q5vLxNXTiH21c2M/jdqyWKgPE/CCUGvbBl
	W1lfCNGTUbQ61v2vB74eY3/M4/HBja1KTnOcnwLT2I/NywvyuXsQpn7r3IxhjsQH+u5/zAjv5Gh
	xUVKUwcs325g4tv4E5257fk1mNJCkCCp4vNmbshNQEBzaxKV/eujU2hyUWMtWoqEaABqc8G1aSv
	O9REUKHUPLjGoRXfNZaEUMzkH2wCvmNEiCOI9j208gLu0wgX6VSlOJLmH8s=
X-Received: by 2002:a05:620a:1921:b0:7b6:6b55:887a with SMTP id af79cd13be357-7bffcce582emr868789085a.6.1738423296264;
        Sat, 01 Feb 2025 07:21:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEySoHd41wM76d7YXvZgBoCWYiEpndiihi7DUAJYjYG7YdkAiWAxYQXu8K6ao9XqT6ueBFG2w==
X-Received: by 2002:a05:620a:1921:b0:7b6:6b55:887a with SMTP id af79cd13be357-7bffcce582emr868786685a.6.1738423295862;
        Sat, 01 Feb 2025 07:21:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7044bd8dbsm220728666b.2.2025.02.01.07.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:21:35 -0800 (PST)
Message-ID: <ee608de8-ad3c-4cb4-994d-fc3cf930e29c@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:21:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: clock: ipq5424-apss-clk: Add ipq5424
 apss clock controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sricharan R <quic_srichara@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250127093128.2611247-1-quic_srichara@quicinc.com>
 <20250127093128.2611247-2-quic_srichara@quicinc.com>
 <0c26af56-ed7a-4de8-ac47-7447298b87f0@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0c26af56-ed7a-4de8-ac47-7447298b87f0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PRyf0yO4DcudUAXLYR7-Dt4eAUjG_aa9
X-Proofpoint-GUID: PRyf0yO4DcudUAXLYR7-Dt4eAUjG_aa9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502010133

On 28.01.2025 8:34 AM, Krzysztof Kozlowski wrote:
> On 27/01/2025 10:31, Sricharan R wrote:
>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>
>> The CPU core in ipq5424 is clocked by a huayra PLL with RCG support.
>> The RCG and PLL have a separate register space from the GCC.
>> Also the L3 cache has a separate pll and needs to be scaled along
>> with the CPU.
>>
>> Co-developed-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> Considering that there were multiple conflicting patches coming from
> Qualcomm around IPQ SoCs and that we are in the merge window, I will
> skip this patch.

I think you confused this with something else, I don't see any other IPQ
clock patches

Konrad

