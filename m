Return-Path: <devicetree+bounces-261093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBJ0IehSfGmwLwIAu9opvQ
	(envelope-from <devicetree+bounces-261093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:42:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31311B7ACD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB9363012EBB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 06:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41E733DEFB;
	Fri, 30 Jan 2026 06:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fs68VRF2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CiX+GxHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71720337BAC
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769755364; cv=none; b=UwWb8rpDbv94Yh7wltctc6seBUjfvOXlPBQTjV3K8uW7m2kMRcIi7gcjxxESyK/VIsBJ6aXLfzR/+P+iU8bTcdC8IAZD7GNY+mjwNiRqcqYnE3wweXMbVR8dk7olsy7u4xzl67C+7lNGEosuXYenFkeiark2IKJnFD+CrFEyrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769755364; c=relaxed/simple;
	bh=jtw7KOGqnd1x5l3rhpf+dMbdDDnSOzeycNLqpZCEhVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bJXEGxd9GbRBmesvxcCZ2pd3tvHv2S1Z/ooppH8Vns0RJZ0EpVHvq2ECpeBzBc28WCVMjttPBF2KnxUNQ/g+YcGVa1ebl6DxZ+oYwbBFB2aWjE3IpkzcXtQ4iXEIpWxVliMyT2zt1Z9wOWoMSak8OEReZ0vo1DWuhshqv14FkbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fs68VRF2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CiX+GxHn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4brfD1485920
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:42:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cJ6t4kgrhe1eIPNb8YLYC7/0mcFgobKjT0RiB3Hsnm8=; b=Fs68VRF22CKmiccx
	FmOmRTIFBnxljUXUSnk3ieaPwfoIXFl1+Hd1gc3S+/mjm139hniRlsz1Hnvijq1R
	EQtlkSNqnaL4FY54ufY7nf3Xn0ILrHSW8uMwlU+XctZkeoeqZ0klBxPnH48rHykA
	BiqewU7v5Umm7KL3TlDH6JEX/FAm5kyfU4b1k9lNxvtYf2SXZUBrG6eQTELVpCFI
	yVkUDY0PxNh3B3OpE+KDmvsr4eS0nI80orvla0zEBVE+0n7KOn9AYQ/FYpqGjYOT
	DklKDXTRhzivgwbXXhZo3qPl9mfJjs1RHpZ4gHYe+mQ78E5iluQ8lBxN4SCIqceA
	aWqGsA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsf8a5y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:42:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c704d5d15so3511411a91.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 22:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769755362; x=1770360162; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cJ6t4kgrhe1eIPNb8YLYC7/0mcFgobKjT0RiB3Hsnm8=;
        b=CiX+GxHnORvNS8Guo5F1IRJneTyoTfW9ugHNFNXCrGIoAjl4N3gLo8jcIqKeWMUzvs
         tHOdABTE20ZMx72XiBLqJtvDdGHMhqr+EFdDRpzjp5R7CRZMMuzF9Ql0fuNUZxcvQ9FN
         4WcC1o+ZZMUL40+uztc9ho8vUkmlnD9nqYJa4Jh5mHmAAfSleVBqiaUnrfBkTkkzmUt7
         8ZcHdZn55oYLXFvcV+KaxtPCKj3Ce1XRzbwR3h3HORdscKFcKGtu+swID8CFHHkfLYWY
         49Zt/oLywjwMwaxFy8BCnzLjE177LHc3E+N2L/uHc1V+Oh0r4NfZLx65A0GxqWbo7Rqv
         eSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769755362; x=1770360162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJ6t4kgrhe1eIPNb8YLYC7/0mcFgobKjT0RiB3Hsnm8=;
        b=hcevA/+puJZ9QNrc5FO9UunKA9dS5DOihGg+e7EKIXzd38P8/7X6L7vSXmArXiq+as
         +qbJWy2S17K/WRqglep4UFrje1lpI3eGEzSvFcpfE29FJYgojG4BeYBmugjAszSz3RUQ
         seQq6ByOfJJB6hPTgNQPRqJVMHQOkAIBis7QBmkQfJUkkGL6U7v2l8aq9DcuF4jTl435
         TwuzjQUJ/hUIth8RjBO9qqppYTr3j6tNke05OMruiNQBqRVosvJM+7eX0R1s5yc6uzYm
         jz90AzDnewu1HRQv0q8GoGP7D9Ed0AnQpQt6jP3nfWhxUYeTzBAdZYVGw8DoWeJklz5k
         RnpA==
X-Forwarded-Encrypted: i=1; AJvYcCWi3b2ACTGqHZMzM8/olWYsQX2DsbHgBYVOY42AKIe+QglfS+TqTtTy9dLfYjOd8TgethQk2FsPaBVn@vger.kernel.org
X-Gm-Message-State: AOJu0YxpiEgJjg9xeW4rc/bzQcExTqFjQmXOltF3lLaoRNqdbC8S/P0N
	CIE3lUb7qBnr1F38oDAdNzxriXSCSKk7gEfPx267mHGhvmJF5oAGDoZFsPNEd56/zRafYZkDTI4
	wC2XGKaB8274qxrcSUf9BTNnoiruyU9Pq5mOlsXrDp//bzBv8QHE9JSyKUyOF1Kkc
X-Gm-Gg: AZuq6aKYjhrAUoGdRVFeAOtpfZiriRukemilXRX2DfsvmxXBweDYKeLo9H5+czYKAcO
	Y/dNLYZeNb14jorx7tvhEj4+fkWmenYNwLqVcpxg2/mcA/U2Fj+vxpSvyRNqJbZOnBQ9J0jJ7HZ
	p8Ui7wbM6S76szgVuhnnb+12XrawwPFTmQIFfASGz1WMGmS9T6E4s/034ZP9rLlSMKcjU3EO15X
	b/1Yuz3fSbS6HBQvcre8IJ34skGAD9U0E6zB7RkRocMXKHZ2lxl+4Nqk1Zm3JElF+mDP6muMpHK
	ytK/p52wEIogbc7JK5c2gYq5ybfSZIOMbRPZkTDUvBkglDYGH4qLrpIDuXS7oSLJ8QU+PF5bir6
	5JgIR3b3/0Jja0Ov6i2x/PFu9w+/j/f83avWmzz8P
X-Received: by 2002:a17:90b:1c09:b0:349:2154:eef4 with SMTP id 98e67ed59e1d1-3543b2dc04fmr1791625a91.5.1769755362097;
        Thu, 29 Jan 2026 22:42:42 -0800 (PST)
X-Received: by 2002:a17:90b:1c09:b0:349:2154:eef4 with SMTP id 98e67ed59e1d1-3543b2dc04fmr1791592a91.5.1769755361608;
        Thu, 29 Jan 2026 22:42:41 -0800 (PST)
Received: from [10.217.199.117] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f2cb419sm7086345a91.1.2026.01.29.22.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 22:42:41 -0800 (PST)
Message-ID: <07f0515a-8c1a-456a-aaa8-1533717573ab@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 12:12:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] thermal: Add Remote Proc cooling driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-2-gaurav.kohli@oss.qualcomm.com>
 <20260128-colorful-caracara-of-persistence-dbfaf2@quoll>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <20260128-colorful-caracara-of-persistence-dbfaf2@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7RCPQfsNEonpDPVo8tk6h__p1WlwjPOc
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697c52e2 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=SE6imBzcV5aIF2VMCmAA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 7RCPQfsNEonpDPVo8tk6h__p1WlwjPOc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA1MCBTYWx0ZWRfX8uF3tiMmdzvZ
 zjjDA+XXSH2C8fkKfWnRVCcX3prlJdtuDhNzQBX2E6PP/4E9Oc3xoBky62qy5HzgxoE5xQ27jC3
 RyuTyjcDc0izTY4zLNfKvg6MP5dLEjh11CpnM1sq6jWCHb51ffn0A49xe1HUVRtsfmbtQF6Fcyx
 586RCXs1CzMaeFpQlfRzt3BQ3+cjKA5hDWst89AoCBWUTCeZWMzhOyRSq9sMKJkbnyBGYxiOgR6
 pM/pVFgdTA6DecMqX2sMNeITfcNC5d2oZeThbZcTJm9fvGBRvSN6PBAhxgiL5RmIOaNyAbAOZLn
 AXDiQ9fPhMAFTv5jZoLqyuu7xOazM70W9My5ny2nIhLfEtrCyODadc1940v2JzWvKjNOOjJ0NdU
 ZT9cqNGH9eOeOKl3ZbXDaZqu/JpmHJd77qlsXyAfkXieWA/VQ3HaSdzKppTEJ3CGSQUH3jHO6jS
 XHMBda6ozlu4aaiW7vQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261093-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31311B7ACD
X-Rspamd-Action: no action


On 1/28/2026 5:06 PM, Krzysztof Kozlowski wrote:
> On Tue, Jan 27, 2026 at 09:27:15PM +0530, Gaurav Kohli wrote:
>> +	if (!name || !ops)
>> +		return ERR_PTR(-EINVAL);
>> +
>> +	rproc_cdev = kzalloc(sizeof(*rproc_cdev), GFP_KERNEL);
>> +	if (!rproc_cdev)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	rproc_cdev->ops = ops;
>> +	rproc_cdev->devdata = devdata;
>> +	mutex_init(&rproc_cdev->lock);
>> +
>> +	char *rproc_name __free(kfree) =
>> +		kasprintf(GFP_KERNEL, REMOTEPROC_PREFIX "%s", name);
> Ah, you keep ignoring review and sending the same buggy code.
>
> There is no point to spend any time here. It's also fastest way to get
> your future contributions ignored or NAKed.


Apologies for the miss, will make sure not to miss this in future version.


>
> Well, ignoring review is obviously:
> NAK
>
> Best regards,
> Krzysztof
>

