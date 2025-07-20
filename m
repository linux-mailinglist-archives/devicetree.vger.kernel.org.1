Return-Path: <devicetree+bounces-197966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B5CB0B644
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 15:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E979165021
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 13:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8758C21578D;
	Sun, 20 Jul 2025 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D3daBPK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5041F1534
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753018471; cv=none; b=I1s6DMbtOJes+WMOyZEF66rXvN0rw+3VcSo+RHD+W45HqUL4b1rdylYMpSxyw3dN+0qgUMY9LhaWVtgVFxEqfIpa5u+hYNkJFzzFI7sayp6tD5YncNtCKIL19PhCE3iZFf6n9lrmo/f4T1M3dcV+RES2z9GPQQkr18K0ff1V0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753018471; c=relaxed/simple;
	bh=VuY0DHHFaW7kyXOA5c0q4PBG2btCCQS33OOoPi2jztQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PS39zPBPBIrL5vWKmqAM7yNk8a3whfLbwkHCQ3eW8LnuMwajBsvARpcA29+ZN4I54L9/Kvh5hzFNa870eQuo0orOSK+Cs8JTmeizpjcYT7uhKHWl6Dtr/rZoxdMyuP0CIMH6F0+5J1dqPJE8O5+Ht1GY/YvGlqzUvLsJdYT5DQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D3daBPK2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56KBo2GL026568
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:34:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9aDr5oRJHrA7ID3S3AHv5io5gP+ebOQU/9zSgcDQr7A=; b=D3daBPK2WaSqDkWf
	R7U7oKm+JnN1qJL3yztiiVTrCIC+5wi7pfUCWU+yc0IzfPHXJ+G+uu8PtRyRtN4d
	TQ3FZXGujxIrDGdz+RHA9gUJAZoTd2Kc86ORcL4s/CbtgOF9kHVSyG48/H0DTePT
	eV+p0OYx8exMhrWV9794p4lc041iWeiRzcI0qIuRz0obcpzRjElHuIWXzO+ul4LW
	c40MG9XkFNqVlWwjmhio+0UV4ecdVP+qff6zGqQa3nXSx570ZTtM5vZ3/Q6ztm4B
	05qyWQVZ4MbGkkaBCVx6Y/3wVP4VwfB9QrwWItC6JxorEkVR045y/NYgz6D/scRq
	0MYkyg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044da902-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:34:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3122368d82bso4621787a91.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 06:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753018467; x=1753623267;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9aDr5oRJHrA7ID3S3AHv5io5gP+ebOQU/9zSgcDQr7A=;
        b=OgBZPBgXCIrHOgrj61jPegwids/WjbP1e8Xk3nzE7blu87YnFmBk7wY3rKYmNBomkE
         pgce+P2UL0aA7ThQLsM5FPzQ+sJFe9gOSDI/S1SYDjBd/dQKjiRCTVXrocNYgysUhsCu
         /RcGoVy/JPX7CQ1pRKU75KWadlaMqV3q7bkjlXsbHY9QYR2t2hMKRb8ncKw4OjD9o6fH
         dINj2mtxbbh34wm4U6MmI/YQiI9GFPF2t71gINLtiUnTCryNChy+Us+kR6CxuCkJ7Qaw
         QA560KQ0F4esrjc/gEKYeCH50cLbCsbks09tnBHlmVRkLB3RGhnX2dmSaJ2cR0/gEu8p
         xDbg==
X-Forwarded-Encrypted: i=1; AJvYcCXfMMZ7/sksMkNzVp90gg41tCURySSfTwBjH+bHkPyfwyhZdYpoI1GqMSi88kJp1ZxWE0s0E/JWljT8@vger.kernel.org
X-Gm-Message-State: AOJu0YxQcq4AnzAqY5+0XZdrUL92P95wM04ZmPbC2o2TTe+Bn8Uc/RLr
	QYt1y3DM/BJNcJ1K/t2SATPE/09rKASQeNznP+0IF6HoHStYXpC+oWeeCEJ87nnRD1rcgAcPyx+
	qvU7eO4Iw4uhQ67TbkDc7z9ey+fFnXRQJr1zGfT6/UMMSpejub76c4bIkyYqwSHYC
X-Gm-Gg: ASbGncvsycEDBjkJxNssoFbSi9XSW7gjgDWRUk3rUYyx6NsoT5DhAq/+XRCJLt4fgvj
	0NXueIfO4o8d2cdGuKOLSVngBkncpQoKhX0KfRK3ByCvNhg9IUQ1hFUP8ozSHi9mqi8vtObbSf4
	dcNpfd8FpjjC7I3yQGVTWetTgRAUadxJnUF/gNqnmsFIeX8OPyaaGoZGfPeXoasPahID3iQla4a
	O87AaJArvFRE9PPZRt+lAZ3/srRxxAIoZUvcLQaAmrgTm6FjIXHHCmUduz3UU34OS/Xm26DTFoU
	j3jDSRalYzpZViP4sPVbX/7B9E/uKg11bUO3ViHJL031Kkcpdl0BwrDaFgChqho6/lGf0jECgVz
	huuX2Wg==
X-Received: by 2002:a17:90b:5385:b0:312:e51c:af67 with SMTP id 98e67ed59e1d1-31c9f3ef43cmr21544685a91.1.1753018467340;
        Sun, 20 Jul 2025 06:34:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHP33IoISya8Q5bWiUZ17jVGNmc0QJE6AZXbO2//c50jlsBWR9t1ni8wZiqCl3Fzwxo7OxIuQ==
X-Received: by 2002:a17:90b:5385:b0:312:e51c:af67 with SMTP id 98e67ed59e1d1-31c9f3ef43cmr21544666a91.1.1753018466935;
        Sun, 20 Jul 2025 06:34:26 -0700 (PDT)
Received: from [192.168.0.168] ([49.43.231.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e5bec9sm4357251a91.15.2025.07.20.06.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 06:34:26 -0700 (PDT)
Message-ID: <0c17d5f2-acbd-49e9-a1ff-ffac70a8c921@oss.qualcomm.com>
Date: Sun, 20 Jul 2025 19:04:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: add glymur interconnect provider
 driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>, djakov@kernel.org,
        lumag@kernel.org, a39.skl@gmail.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716151535.4054172-1-pankaj.patil@oss.qualcomm.com>
 <20250716151535.4054172-3-pankaj.patil@oss.qualcomm.com>
 <37932b96-fc4d-4321-8986-8f975b0c1350@oss.qualcomm.com>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <37932b96-fc4d-4321-8986-8f975b0c1350@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687cf064 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=zhpjAwSWsGC/MCksz6s7dw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=b4-VgOCz04Za3pMyX7UA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 3fNg0VZ7HOhjgcP2Ji-c3EGcWHBvf138
X-Proofpoint-ORIG-GUID: 3fNg0VZ7HOhjgcP2Ji-c3EGcWHBvf138
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIwMDEzMSBTYWx0ZWRfX7mYDb+b8yBbM
 OjQxPbKvkv9O+O75/OJXNx1YWIJgpfj1jFfG6CnCMEo/UbTFNZ3MkfYELHcEqb0kGkMm8+lu+VA
 m3ch6qlmJ+BPBPHVSWVpdB5AY/WbY4Rsm6A1Zw9gHHIPNoL99wV+3bQEBnwjkJGZf8MvX2Rqjej
 GMAB5uzDUWX+QgU2IBYjNt6K4mef2X1sUulHlWJWKtEr7OLqOBf0O+aucxDogatz0MWJYVlJ9Ow
 1/HLUU0qCuO+PjxwCmTs2vI4+X/CdSyE3p6liwFUSdgUNqFEajOlY0Bs+UzrILCoS1SL8BryA0L
 N6s9Kp99wR1xwXnBLZmadO7pdiPyfxkiOH3hdRHhSzvGFUAegyKXhYioLF105UOJhkm7RCJV/AE
 EQ4Lh3KI930go8Uo7udC4TZ/l4Z/ieoqyLmfxXFUEYn36I1IK+wQzSBmPm9uSQ6KhMQ12sv5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-20_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507200131



On 7/18/2025 2:03 AM, Konrad Dybcio wrote:
> On 7/16/25 5:15 PM, Pankaj Patil wrote:
>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>
>> Add driver for the Qualcomm interconnect buses found in glymur
>> based platforms. The topology consists of several NoCs that are
>> controlled by a remote processor that collects the aggregated
>> bandwidth for each master-slave pairs.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static const struct of_device_id qnoc_of_match[] = {
>> +	{ .compatible = "qcom,glymur-aggre1-noc",
>> +	  .data = &glymur_aggre1_noc},
>> +	{ .compatible = "qcom,glymur-aggre2-noc",
> 
> Please unwrap these lines, i.e.:
> 
> { .compatible = "qcom,glymur-aggre2-noc", .data = &glymur_aggre2_noc },
> 
> I'd also request you work with the author to provide the ICC QoS settings
> for this platform (which would be good to see as part of the introductory
> commit).
> 
> Konrad

Sure, will post next revision by implementing the suggestion and QoS support.

Thanks,
Raviteja

