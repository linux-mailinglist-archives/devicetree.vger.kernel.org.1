Return-Path: <devicetree+bounces-266967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Py9CZppmGn4IAMAu9opvQ
	(envelope-from <devicetree+bounces-266967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:03:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AA91681E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 59AA83023A58
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4594234B1BE;
	Fri, 20 Feb 2026 14:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jUx31nWk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i1sbzI+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005C434A3D8
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771596176; cv=none; b=hTBchl+yd/PxoWRpkdLVbQFdkhv6FVG01uIfBzfn6ZkOUmmhYbv0ZrfsCIdo4TclUxxqBHLo22Gi6xs553u1nKT5fVJv7+kKbZv2qFQ3sQzM3hABuLhnmf2IRKId8ELPnuQO6ZFWsX68yx6p/nHWGLLcbd/pQ/sVn/PjWYLcl7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771596176; c=relaxed/simple;
	bh=ib9OugNAfMwq2K/bOmAt+9WJ8EivQpVD5ZQMf8doYxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o4tmU/zpQCkxHlwB0/eTOUlPEwDfvmH6RrfdAIIq1Cv78EwbosIdJl6yYHGkpcDTfYE2NiDXLBiF9Qqn3CRO67eifu5arsEy5g5g955g+SYIPAuD4pi7bNm1nq2fu7at2dpGjVjopljAKZh6YFdE7OQO9cbk6iYhZ0askx4wSZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jUx31nWk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i1sbzI+D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RwdI1851387
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nXAIJDkZLCji9Bgqcvm5E89D2YAm91p72Uf08Xb+ppQ=; b=jUx31nWkHBOtPyL1
	BmrM3meSb8Y6XhLrzQKn7UGPfLaCPeRdvJg9A8Ikd1vnvpQsXaBATpSeVP1iuxTC
	c48EVHg6pbrgiLhM3b+fiil8w1WNCyvkVgDAX+GVNBJlDXQnpy3Lc1cUsO1CsToh
	V8L+ugpC1t5QbPYaIxl4JWRGUdT6T3DPydGilXwDsk0V0rv0DoRC+Oxe8lAb33Dx
	fXrNJU8wD09Qy2ug7Hbz6XfMXhhQcq//w7zz3hXcArmFYeV65f7py+NzaZsTrcjk
	ttOTDzfS/Y6ggGet7aVOptY/6DSJ1L9Vatb+0pBcG3tnopFAK2D9fS7FEDb1B8G0
	/HoPkw==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce9ngaag7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:02:53 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-45f04afa8f5so1869694b6e.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771596173; x=1772200973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXAIJDkZLCji9Bgqcvm5E89D2YAm91p72Uf08Xb+ppQ=;
        b=i1sbzI+DpwUiSsiubvyzAp0qPE/NU9O0JLKbVwQC5mnMTHJnHq53Ych/9agYQv8lx4
         Jb81wxEtcMSSzsfogKPiA2sPKnXqlv7ind8KRk71cMHEvn1ZAgUgm1oVVkZZgYTdnAXL
         CyGkWvq5GZ5rGFtHf8y3Tpd2O9eqPA7fJLk7nsIryr8PTBD9arwqRElUiUl1JJOUBF58
         tUXEr4YW15jHMv18yqOCz5ZduXfhdqIVOLWjhJbsA4dVlmpFjVTAiymiQwEHjkVlwdhJ
         dp7CTajXi0jlLdb+lI0Ax+cH+/ajUeLWW6lsidSdTE8FWf5cFsQ/I9cpoB2Z/j/sK+FD
         +eQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771596173; x=1772200973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nXAIJDkZLCji9Bgqcvm5E89D2YAm91p72Uf08Xb+ppQ=;
        b=bB+hKlqCRh3ys4NAMlxvNPgG3fpf1Alm1u35Lv88+5OrvdqO6jps5FVs6Vjgx3ZWXb
         7/cJDyS/BEmDMy7EPZw7sbjehYo4+LwMOiTpgAm6ZMNcBNTaEIfgHhL18wjBNe+ef7tf
         c0zCV29QFwmRWTzLipnFjdZUD57uwgArWi0Qx1JDF37U83P7IxG/tw4UP0jxR6q4p7sG
         8waD9Ygn4Z3BfIaD8Uk5Rxxb0q07QhqOqp3WiDePhm30RMT3lgZsjtmTo57enRrPwQ33
         b9TH6fIbabFHgFmgJ3Sb1Kh6ozrocF3FPJRwbTe8ldeyaP4PAfDIcs5Ld07LDFhP27IM
         OyHA==
X-Forwarded-Encrypted: i=1; AJvYcCUE9anOpLp+YuyWaSqbr0IyRZ9wrQKeFu9GNZLoL45PwA+cpX1jQOFqxusJqa7fdGQ6xxOC+N6XECJc@vger.kernel.org
X-Gm-Message-State: AOJu0YzwMWduHkLiEnqOeRoruJ0qTvXxZ5+8gxv4XQI9TCFVxHr4U0U3
	g4O6CqPGMtng2zOu6x52idpglq2+tBnZpEL9oHGlFG8slN7slLfpf5yFkgZV8s6sflVF/vmQ0bh
	W1P4EuRYwAeEpcBGqZWlBK5gov13vqFxTHWGzVjMGhGhgk7OdAjo3WzWNI45vJDOh
X-Gm-Gg: AZuq6aLR7JUUmt5ipkrotrDFG4PsMWBEqNuIZAELjOzDj5cdczBjGw0on9/+N1m90uD
	kEAsmON2zBBymoQOPDFDnB4cv9w4OQbuoCSxKOnGaSQU4HR4rFUPKnnik4ou4uB51LJKFw6SSMO
	nAk19E4ohH1csVeqhzh0K8bb5cvt32dQUq5PzeEF70T/ZtdcDQKdUG1ZIkymlsrKZpkl2YDjWya
	xzZmmiGYQrg45/teCyMoaW+aCEjXeDPwyivn8vfurugP80c6v7cxd0cn3eK8zHbC17Yym7o8SWO
	Sx0scxe9+mHX4RzwI+/JmPR0lzL3h+UI/fNBtHPmwY+ADw8uQxerprW87iFk+BbUOvPVajba+Xf
	grK2EnwWKfYvVu92u/9y6Hdjn9rG/9GNr07IeeW51EoOzgci514eR5/TskK7IPisFiIpIy0ZFE9
	u3A9U=
X-Received: by 2002:a05:6808:508a:b0:45c:80b7:4e18 with SMTP id 5614622812f47-4639adf5562mr11300414b6e.5.1771596172756;
        Fri, 20 Feb 2026 06:02:52 -0800 (PST)
X-Received: by 2002:a05:6808:508a:b0:45c:80b7:4e18 with SMTP id 5614622812f47-4639adf5562mr11300370b6e.5.1771596172165;
        Fri, 20 Feb 2026 06:02:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7627fa7sm692969866b.38.2026.02.20.06.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:02:51 -0800 (PST)
Message-ID: <d610008e-bb1e-46d0-8397-126bc1e2542c@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 15:02:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up
 q6
To: George Moussalem <george.moussalem@outlook.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260113092021.1887980-5-varadarajan.narayanan@oss.qualcomm.com>
 <62d53cdd-b71b-48f8-88d5-65407d3a80c7@oss.qualcomm.com>
 <be05578a-d90e-42ce-a1de-4f670fce03d0@oss.qualcomm.com>
 <DS7PR19MB88834BFC4ECEF7CA27C379139D68A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB88834BFC4ECEF7CA27C379139D68A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyMiBTYWx0ZWRfXwIHzHi3yhB7e
 pZC9aOgr/TM2YsuDegnh8NhA5X5PNb1q0/FzEJduH3MrJwrcqYdUK9ZdM+cNpnuZeV9mxtZeGEo
 X1XMwgg7YkH/1DJmOvhkYFseFFoZVVOq/XFEO3FZp9wqzpK07zs16MOYDlWj5TXKpZvk42zna5Y
 m0kPMKdYr+xjscekJHcVBW7XFw+u40FySmkuYKN5y5rlJBtx1wudc9sQsE+MS9ecGTc98u226rP
 H+LqpdNxMkbOy9BIaDaCdTV/rLabKCqvErgTT84oC+YTCwPuQshjApxTt53Gm4X+WPybaNmAbta
 9lOpJuwMCSAHAOV7qb3vsoPvJoDkEAen8XkAg1HQNvMbWdsNbkSEk2C2ipoC+NQvJAEXzBE/EG4
 2c7K5tknmyPv3AOf6isQUyNMoq59f5HLBVs3I+eYY7XH26J49ptIMhnYyBgHi8M+Y6xY5U1crA3
 grZQLTmmW8306MAXNvA==
X-Proofpoint-ORIG-GUID: t5-3f7jUMYX3HyaBiHu1lFRQVPLwB8Pb
X-Authority-Analysis: v=2.4 cv=Sbj6t/Ru c=1 sm=1 tr=0 ts=6998698d cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=FjteU-8OcTYafXEUS6gA:9 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-GUID: t5-3f7jUMYX3HyaBiHu1lFRQVPLwB8Pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266967-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[outlook.com,oss.qualcomm.com,kernel.org,linaro.org,quicinc.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.c.6.3.0.1.0.0.e.4.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	RCVD_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cd00000:email,outlook.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 71AA91681E8
X-Rspamd-Action: no action

On 2/20/26 2:53 PM, George Moussalem wrote:
> 
> 
> On 2/20/26 14:36, Konrad Dybcio wrote:
>> On 2/19/26 8:42 PM, Jeff Johnson wrote:
>>> On 1/13/2026 1:20 AM, Varadarajan Narayanan wrote:
>>>> From: George Moussalem <george.moussalem@outlook.com>
>>>>
>>>> Enable nodes required for q6 remoteproc bring up.
>>>
>>> I just recently became aware of this series, and have some questions...
>>>
>>>> +		q6v5_wcss: remoteproc@cd00000 {
>>>> +			compatible = "qcom,ipq5018-wcss-sec-pil";
>>>> +			reg = <0x0cd00000 0x10000>;
>>>> +			firmware-name = "ath11k/IPQ5018/hw1.0/q6_fw.mbn";
>>>
>>> This file does not currently exist in linux-firmware.
>>> Instead there is q6_fw.mdt with associated .b* files.
>>>
>>> How do we transition from .mdt to .mbn given that distros update their version
>>> of linux-firmware independently from kernel updates? Will we need to have both
>>> the .mdt and .mbn files present for some period of time? Are there associated
>>> changes which no longer attempt to load the .mdt files?
>>
>> Since there are no in-kernel users for this one (the ipq8074 WCSS driver
>> requests that but no DT is wired up), I would say we should promptly move to
>> MBN..
>>
>>> I ask because I've been told the ath11k/ath12k drivers will also need to
>>> transition their firmware loading from m3_fw.mdt to m3_fw.mbn, and I'm not
>>> sure how to make that transition.
>>
>> I can't see any m3_fw.mdt in the tree or l-f, unless the m3.bin qualifies
> 
> I think you checked for QCN9074 which uses amss.bin and m3.bin. For
> IPQ5018, IPQ6018, and IPQ8074, m3_fw.mdt is there, see:
> https://git.kernel.org/pub/scm/linux/kernel/git/ath/linux-firmware.git/tree/ath11k/IPQ5018/hw1.0
> https://git.kernel.org/pub/scm/linux/kernel/git/ath/linux-firmware.git/tree/ath11k/IPQ6018/hw1.0
> https://git.kernel.org/pub/scm/linux/kernel/git/ath/linux-firmware.git/tree/ath11k/IPQ8074/hw2.0

Snap, you're right.

I think a simple ln -s file.mbn file.mdt should work though? mdt_loader
seems not to care about the file extension at a glance.

Konrad

