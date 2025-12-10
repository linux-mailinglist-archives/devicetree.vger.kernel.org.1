Return-Path: <devicetree+bounces-245557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78896CB2255
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 192CA302530B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 07:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6688D299AAB;
	Wed, 10 Dec 2025 07:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pby8F+tb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T5NfMvsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DDF2D3A94
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765350434; cv=none; b=t2ZRYOdPTUt+mgcQ1iBG/b4MV0Czii2HPcsEinDDZHZ9C4dhxndcVr5wW/U1EYUJKKbeXro3KozRyaa6Cu832pirqO6uj4U0zjY3UP9+VH1hkBIBvN39viFhBbYOPikOjNtTVEi/XPq2nX8Uen/wIA3I1i9y113a4ZYuZz4Z1zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765350434; c=relaxed/simple;
	bh=NiyXanpsfhVgv6gz073g8MPx/HCF0VxoJePYwihCCmU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P3wnP3bWQMh+UuQFbDI/Ov+lzPJn7NoLRwSDClI1kUl5rAjZ2rJ5yG+ELQXuZ82Aa8nyMJBQKH1QIS6ydO1NOFI108Q2hl7Kp4wkOyEc7ZpZdQ3giiWJ3/kPpGpGqxPm1M8SBkKaj226YkAdjphOpAMmsqgajtDXx6Mwnrd7x84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pby8F+tb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T5NfMvsv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA6Dmrb1615984
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NiyXanpsfhVgv6gz073g8MPx/HCF0VxoJePYwihCCmU=; b=Pby8F+tbBD4W+B/M
	QMCm33WmbSt4cUDwzauZKq2Q7zt27elELK8RIV9QmEcZdTEOKQY4kCk/nKlKVqQ4
	fznD3zEegvHAGoM5ijTFFvNTxSmZRa+Cw6Wr/hV+JmWQWy+yOli+Ak3kMtTLWHCh
	JBbdNamYbgezPpsw4XeAIOXPSBeg+3uecKIbUh2eE9aZoix+tyrEG3JMdjIZMeCD
	tFr12FCuSNWeH53bScaVsF57ldjtd14uGZ2aupqv489eTbEQYS1iXkpzSwue7tM4
	P15N4znFPnKrKQGF+P55TRGPa/9yXz20xZJGorgB56W30ioTvpEnZr1gzLR6YDLt
	ofp86w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axqqn2ebu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:07:11 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so11751302b3a.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765350431; x=1765955231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NiyXanpsfhVgv6gz073g8MPx/HCF0VxoJePYwihCCmU=;
        b=T5NfMvsvDTQ4q4B+Jlu0TO4tLJnj0lg+kCgPQy3JJR5JZ8MNsUxHuRGrBBpxkI22LR
         tNBmlI6xePTss0FiO8g9w2OAZNCeXEh4rhtfI7uppbNlU3O5cdZlcvlVjrkjW6GPUKJN
         xB19Q+P6hUwogks79PH4zgN5fhI6yJoOvl/MjPHMKencqAT5Fpg3hqonfmswMqC2CWGP
         0vavs/eqq27WBnhllJ7hiMOz+7PiyWCwnbZ1DDnz+xRME4J9ZGnlicPgUtAK7BNq0s/0
         51of1T47ga+F//OmEFYWLQr/zzATwJzD0RC4v06JtazD+YDQBKhKDleoph3PdVRupEoV
         RJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765350431; x=1765955231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NiyXanpsfhVgv6gz073g8MPx/HCF0VxoJePYwihCCmU=;
        b=K+u7vixKsEsv4ZnTQWu4nzWXbCECsGiXP9JeJDVZ+enSUWagt8evdOHhF7JrzPzGe8
         F+78jMGSybi1LnCNnBHAC+KEqUTfJlAZd4v8p4g3QzXR5NurtjP2jZDT+tUN9/9rYLTc
         yWcgQwU8psTCZpK4tXjdzCb9Q+ktVkG9BJzhMCpRwTaRHaStNmgFy0d9WLkvfDSv5VAW
         TvIAM34DDQkUZHMVzLmuZW45rt11I+7vSv44FlCpeKyoEGUMUduiri0HaUxnDO/LEed5
         Aw2WdHraPWYu8obOKeVEpr+mNJyVBf0wDNgMarLvijxv7ggfw1+F8SdBo0sWaDpoY40T
         zQqg==
X-Forwarded-Encrypted: i=1; AJvYcCVrM0PDCkRceIeLTsx2RMXYfp+olSEaGJCsF25SjXp1E/b7kRxdQQH6fHJEUY5Ii2pFwNWfgmnH2ZGx@vger.kernel.org
X-Gm-Message-State: AOJu0YwotdlA+2fb3Btr+y3pCGUncSmbCZylK1tz76Jo2YtY+sbOHZ9X
	c2hyxsNy+tAiRNrosVugsTWn3X1rKqY9AsNe3XddApRvf/v6xMGWrjHJATBH090MuMML+XSb1IF
	XTYs2sTb802/JrbGQkHUGJravgHhkZEQjW0nrQWwMI4/JjGn2jjJPT6clxty13nBc
X-Gm-Gg: ASbGncsYBG7cT1b193bDG2lrs1lQmXr/LKl9wrNhMFUUeuZ7mg++6xPYJK/AUaQvPHx
	Wt+p7uW7obN8Tr+fPu/6c+hiB3vP2t4hmMf/vzQ1NaOAxx17eWQZG3Uc2/Tk97geaJuvwKYbKZ5
	D4dliUAmsNJxr9DgYDR3yCjpD04lJeGX5oH9XtnNalC3zYfpOc1ma290N7inwocKeIjKLYC10GK
	FB1+XM7urddn+Wfpu6soebdHLPtXOLUhUrkprLIr730pTsoU4vKzugZbbMhRya9nPt+qDVFdGf5
	LzDQQAf1VhSov5CddPXlABOuySwjyq1vTgoG7Pekagx6qJTf8MnnSqdueBMcC/d7NzXSxWAP9uS
	dNOghL2qqCI1ssKdS2kj3LkkCdbCA5QaRiVx7p7ru
X-Received: by 2002:a05:6a20:72a1:b0:35d:5d40:6d79 with SMTP id adf61e73a8af0-366dfdcdcbbmr1403378637.12.1765350430629;
        Tue, 09 Dec 2025 23:07:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJOdoKhw+chafPNDZ6WC4Wy5WqdXiFGHDwU35IE0le7EkyzbFaI+NXUGJ34EBRL0gaSMjKiQ==
X-Received: by 2002:a05:6a20:72a1:b0:35d:5d40:6d79 with SMTP id adf61e73a8af0-366dfdcdcbbmr1403343637.12.1765350430189;
        Tue, 09 Dec 2025 23:07:10 -0800 (PST)
Received: from [10.217.199.111] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf68155047asm16694655a12.7.2025.12.09.23.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 23:07:09 -0800 (PST)
Message-ID: <87454dcd-9eac-47a9-9d0f-e2e10791bc6d@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 12:37:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco: Enable cpufreq cooling devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251208114558.2343462-1-gaurav.kohli@oss.qualcomm.com>
 <a3mzhjs3kl7yfrar3gh6p3benvfa5bx22xwuznaqlhyytlyxkj@r5p3vfd3ykde>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <a3mzhjs3kl7yfrar3gh6p3benvfa5bx22xwuznaqlhyytlyxkj@r5p3vfd3ykde>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sCKa8fUKlzQDO8SDijhupqx5s4mRAE7M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA2MCBTYWx0ZWRfXwWwBLZs3rndJ
 Xyk9q1p9TBJiU1881GSYpoYTEGmRi7iAgE/nhQkj4sfj6GempfN5HvqjFr0Hl5axGv/gK8fa4fK
 plIr+d7EZgZg3o6nHahqW24DVw5cJbzXx/eZ7ii4665zXXeNK1+370jqvcaFI9MrcgTlg4VKgrL
 J5ik7voNuX5MzuRiAZosYi9eGTj1t9hxd8uFGl5pTREzGPLDkqWh80q4cZdU0Fa3biCSUjOvh5x
 GzCLmLNpRDsXOT00QDoOT6hjnMZCWOFHkzWN0v/W4goRzr1rYDByseBAidRd88T0cxjmyL7VUsb
 XBJxkaE2hm1t7VfaX5NUBZfs0p7SoQyBt2GZTCGZqmIkPUV4oCEB7m7h9VQxBy6U/6kyFlbMhm2
 ZuuGoSpOgiGFL/HZCDW8c87lfAoJzg==
X-Authority-Analysis: v=2.4 cv=A5Jh/qWG c=1 sm=1 tr=0 ts=69391c1f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=D3e1WIiYQBwYsdH1qrMA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: sCKa8fUKlzQDO8SDijhupqx5s4mRAE7M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100060


On 12/10/2025 1:38 AM, Dmitry Baryshkov wrote:
> Are there any cooling maps to be defined?


We need it to configure from userspace daemon.


thanks

Gaurav


