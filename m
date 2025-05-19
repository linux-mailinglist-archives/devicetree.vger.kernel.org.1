Return-Path: <devicetree+bounces-178613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 109C7ABC6D5
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 20:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9D314A47C0
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 18:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B084288C17;
	Mon, 19 May 2025 17:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ds4IZ/aq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC711BD9D3
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747677599; cv=none; b=kM9vtX58mGj3kQ8VG4SAABXzDVAnnLgboI8cOhfIlK4sIv+QmW7aRP4OwjBaO/o94I7nC3tCifW5Qr5wbhR4ZxIdcC6iL6X6VhyNmd4F9unq3VOPRms0ThlKdwZ57C28WbfvV9Pwxy4ZJ4I70OdxYuhB4B63T4S63d95cUIAz1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747677599; c=relaxed/simple;
	bh=oPDuJpU2aDI3veakBUF05VkL4vY3wVTvTbUP2qIWjRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=szkGBSfKGbuwUVPTUVgmWkU6hElxPe/UPiX9DGwPttp3zoMpWcbJhqTrqHZ6hmiN4dahCqNoFOeqIkxgmLBYX2Zk4tQIFvQ4fs6BYEmVp3mKIm74dngpftxkYfQ55miUV7/eM2Cq/4/98tTVv1S7tCv/5GdpiOIdi2xL9qKFRbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ds4IZ/aq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54JDXqXx006269
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QRhDmJNbBgVCCdG1SgH+0GcltALE5aKIBtKkQzfk7nA=; b=Ds4IZ/aqZWmGiwgn
	sbE/4AUgRZZPZf7UKwixi6I6ie5LuUHBSIx9C+FkPIgEs+BNY3vFdt0JdMi6ZGHp
	tQzILFDQa1Z3NHC3gmoA0lvOYIqNjAtHo5RxKw/Pmc3e7CsFfDA75z7PANnvIa+t
	3RS6WIha7u3oZEWvl77NyzPstdRhm+WRJX/C21I9930VSIq/8h/pFPjIrbZhL9cg
	Jy4PTZv5icbdJljTHf8Qkq/18/brtnkkSbZN7Js0Yh7bV4Heq0pcX+9B5viFmeSt
	+/VdXSVpfK1IAt81vAJ8yOV7XMC5ADO37uSfZJfJBNYNcub8XavqfARykSf3HpVv
	fSDrnQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46qybkhx7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:59:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c547ab8273so74502185a.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747677595; x=1748282395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRhDmJNbBgVCCdG1SgH+0GcltALE5aKIBtKkQzfk7nA=;
        b=uxxSxi7hq1KbQuumQdhH3r3NgoaXvyiS40bAkAftkzCGQTA8WGQaC8Bi7MQKpx324M
         PVXMpctEqBFCKr4o1+7VpqaD8gkyqVrtHr7W7FIOyhPfG2dvy7lk5ugIT/ecrp3XHC6C
         cKsbnoBJO5oYETDX8g4YjJ6h1gY+Qf8HaWcasDGZd2ZIl+I/imPM0daKYf15sSQWDqzk
         bR0ZPoSSeF/TJ9pqMf/spq/zsv2h8ThkcW12uJk0Y4B2ZOBGDyqkMQ6k5uUN6FiJpZQR
         fPYyFhZrmEYgCqDNwFAKapDCNK4hWFgn7Io+js4nN6pBC5ALYWtWjmWStWivWQIZJGyp
         A7dw==
X-Forwarded-Encrypted: i=1; AJvYcCVRXLFP9u3YPeHGUdylwKIWhl/nZsCTRrgE0YjCMVKmLQhDNcUOhda5/HEvSBB+fjgbs5k4n+/pJHBJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwHEUVIYX2AGwENmHRVCYTyn61auv1UkOUKKDc/qMdVtICGdtQ7
	LWw7nDB3KDWuPXdrNb7Hi4lm8moc/6V7BGzqb1aBagiqUMzrXPkuLf9BlhDpttbqhDTXyii5Zgy
	9SO2v2mSDT96r/4xvcW0tyuBvfhcsW49xa6bkEEONM/dFMGTuCtcbuXZMfHAtKZHA
X-Gm-Gg: ASbGncu0XesSD5giohbJ+IDJ2ry6k9Fs/MPn7xzT9VWsAhM1ZcWFMOjWxQnt8a/BntR
	IShjjpyeNZRZZjtL+qrsRh7zlayNWLVxfU+bCRynFodFnNsdUdl6jL0Gi4CEjGS+K1y4FXlSOqh
	AZ4O8aBeHbmUsoJRRN0dV/uTK+6wn1ta4bWf0eEWvILL1kTuK1Q4x5d3Iq8gvw9tZ+aPEHxEW+U
	Xj0iTyuzX2gi1mJgtmOtJsu6joUVxYaqtDeBuFp970aspwTjCSJ4/liIpOmA24mZ1Y7rXtJ32DD
	kLJmJuJ6nBW5UoOoZnuWrqqDD8KerSnClsQaD67lGHwIv5YSRkpW/sbkeUdGRAghIA==
X-Received: by 2002:ad4:5495:0:b0:6f8:daec:8b7c with SMTP id 6a1803df08f44-6f8daec8c02mr14808326d6.6.1747677595379;
        Mon, 19 May 2025 10:59:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGj+7fg16x74gYzVk+YjiEHRe8Kboy7RuyCWGBLuiZoGpt6d9MsVthshVMvw3wwrX5PCaJACA==
X-Received: by 2002:ad4:5495:0:b0:6f8:daec:8b7c with SMTP id 6a1803df08f44-6f8daec8c02mr14808056d6.6.1747677594815;
        Mon, 19 May 2025 10:59:54 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d498b2fsm622845466b.147.2025.05.19.10.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 10:59:54 -0700 (PDT)
Message-ID: <071255ad-ad08-4a15-97d3-016703e7d9a8@oss.qualcomm.com>
Date: Mon, 19 May 2025 19:59:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sm8750: Add BWMONs
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shivnandan Kumar <quic_kshivnan@quicinc.com>
References: <20250304-sm8750_bwmon_master-v3-1-01a5cb330dd9@quicinc.com>
 <d2640b21-41f7-4bb4-a616-42b6bd9cab0b@oss.qualcomm.com>
 <cpwyee5bgu3r36sh76mfd2o7oc2dnm3weuvynkvbsklr5nhm7l@gb2utngj6vfl>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cpwyee5bgu3r36sh76mfd2o7oc2dnm3weuvynkvbsklr5nhm7l@gb2utngj6vfl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: a6FcqSJWyqOqNDQhRQYmnZQOp8dz2yhf
X-Proofpoint-ORIG-GUID: a6FcqSJWyqOqNDQhRQYmnZQOp8dz2yhf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDE2NyBTYWx0ZWRfXwhzKuOLCZm8F
 j9OEhEyPQhbjUWVsK60CCXwE4RbQNQSgcMWmd/FyJTS9zrdeGr8QXP3My1S/Rw+IJqdIUtCv2Ul
 66UcBbVdoHSUUeeibi8/zLPrSpOUzynkYXdCd9c30BrSAypO2CKJ4KS12NgFW1EuZY+6KGmmiYq
 xTmr6Jdk9U3kA9B5I5h358w2tHjnUjfiTLVl2UTqWiRnYQdRA7i8gmknlft3bIrKrJ4Et67J+oX
 6J9cFCioRkIGIgiSwv+x/mjKf9YOkApqhXukmCH+dq+q2BG2MffuukuCANTfvtkhvnJT/IbL4G8
 JlE3M54jlPy6Dbd6EybLgA6neFqiVow8OXvMJuAYsfsIWn4Xyuf3obwfETyjGDjXLBGYh3p8zgX
 Cuz4OxUIi99s9nwXz99SYt2yAXG68iUlt1/63Ez294Uh/UNByCOjWnq/i5e8wvM7zkmNPHXC
X-Authority-Analysis: v=2.4 cv=RZeQC0tv c=1 sm=1 tr=0 ts=682b719c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=wbSWbzf5WjKv6xKPGGgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0 suspectscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190167

On 5/18/25 12:37 AM, Bjorn Andersson wrote:
> On Sat, Mar 08, 2025 at 07:15:06PM +0100, Konrad Dybcio wrote:
>> On 5.03.2025 1:33 AM, Melody Olvera wrote:
>>> From: Shivnandan Kumar <quic_kshivnan@quicinc.com>
>>>
>>> Add the CPU BWMONs for SM8750 SoCs.
>>>
>>> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>> ---
>>> Changes in v3:
>>> - Change cluster 1 destination interconnect to tag active only from tag
>>>   always
>>> - Link to v2: https://lore.kernel.org/r/20250304-sm8750_bwmon_master-v2-1-ead16909397d@quicinc.com
>>>
>>> Changes in v2:
>>> - Change destination interconnect to tag active only from tag always
>>> - Link to v1: https://lore.kernel.org/r/20250113-sm8750_bwmon_master-v1-0-f082da3a3308@quicinc.com
>>> ---
>>
>> This looks good, but I found that this platform may require some more
>> changes for bwmon, we're investigating that
>>
> 
> Did we reach a conclusion on this?

Yes.

Melody, LMK whether you want to proceed or want me to resubmit with
the necessary change

Konrad

