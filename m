Return-Path: <devicetree+bounces-238032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C739C568D1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B6E5D3418C2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C76F2D594D;
	Thu, 13 Nov 2025 09:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TR0pXfs5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NxSiKRYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6778B277C9E
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763025319; cv=none; b=ghvflJz6/LrbJlhXqXGnWTKFJwiX3hbkUECtEotfVoZj2+u9D/iNywljD0cTAAzTITTvemimq+ENteCkGaYBh/5A4QimG8qSDJbU8XSE11vSXKGGNVg2TVOBGSrJuJFqBOlFoWLHEIj/cP3VPDyYLvgL6gOMS56JtCHdoNnFQSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763025319; c=relaxed/simple;
	bh=+2I0kET+9CVqktnQPRUDWWQn11vlGXQG5XhzK2wc0YA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ApQTkvt/aHnkfrpUoqmV3NyqhXu+wokz/k/cUfjMtZgC6uDr1p8MQgXpyj2KqOqqBMq7j39iB9UXnAxu0bQjF80/25j8TMGxZubv3q74Tl3T9dyhElaoF8pogZyfpBEgoEwRieCLY56H6uScy94LxGcrEL85WnGGh6GT0dscUcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TR0pXfs5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NxSiKRYv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD5qPTh3764723
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:15:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jLP2SIHhzXib+2zlnJMs3Q8griti3mtpmjGcYyxtDhM=; b=TR0pXfs5hGmPALNa
	Pw/FVcmHa4XPGqSoGZq+P/3+rPwTGBZq0jPWQwAz+zXpI/rQs5bgd5+UqeDBOK35
	49F4aMDKu2ibvbGDBiWS9wHPCTt5b4E0s6G6rvtRH4hdUnjSudCzCGzOpqLgNUW7
	6C+dX+SInX4pnmLee56WFTZM4h0+U1U5LfuF68RyMwCPU416m7DxkM4xBFCvvtqo
	/SnjIopHrR1ekE/vlaJE8pDwxdNUBUAAXAEi+z4AahokN7oyEtmLBGAXxbXOiN8n
	GEem0mnZCXnrDvD6jJyb4qUyb4HgW5v9NxOxl6sNVTrs4lK4NnE1Heqo0eNp67bE
	oc7U/g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad9jn0kr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:15:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e887bef16aso1032171cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763025316; x=1763630116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jLP2SIHhzXib+2zlnJMs3Q8griti3mtpmjGcYyxtDhM=;
        b=NxSiKRYvPTKGq3BsgAGucLQK6eON6YxhJhpg9XW+4OvDAZUs3hy7OrycsPifOnOiLb
         U+cDMAvFKPP2URzX7aSwHShtWBaiIdecIAZFM93oFbsnEvG4uJFDRL0lasMar6AUZv+U
         u05Sjr4WMvabdPnucyLlVvIlRe5Cqpaotmd5FwMQa9d3yFQ2HcaTCNfFUJ0vqrc+0qhT
         RFPGcGygKeFbizZlNz50zc6RWC7csPMg648yrihoZ7h6sLz3S779NCE0Pz9zwapOqU9C
         02L02IKXPxGzr0bGMdfiEyjKrPELWPKLu271OH8V0hwR0mB3IOonf198Ji1s9Op+da6M
         3bxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763025316; x=1763630116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jLP2SIHhzXib+2zlnJMs3Q8griti3mtpmjGcYyxtDhM=;
        b=C+Wcr4ycVEwSayw9UdSu0gUdmMY6VtwMPFzYxvt7BOuMmjaHTPRW8jJC2fDCmM6p8P
         73WZDjVQb6FsjvuSO/Sk0n/XY5Nqp/9/3sFsazGiIqP+Jx20tkhTc50Ws97kyfDRuf57
         /+4mCjdKplHzVDoLwWbIHQ/qMK+t7QHZVg8F1y8ItGqRHHirkzoRaLtOvJgTzfhagJN/
         DyH5uNBRuhoSVoBKKiCrWkf+ZOCTiK0862vkGDsvOuCQKM91QpbEFmbQrMRfgr6xX0Ll
         sAWU1Ny/85YWO3ahj1hJprkp4rByronlOdI1+idhnrYC3cjXA7vAbi6KuVg+IQhkNqzP
         U5ww==
X-Forwarded-Encrypted: i=1; AJvYcCWPbxPE5R9EVBg6gkbKIlZiVCn4BvOvsIS/zi9B0eOeaKu0P7UBhJb0d6FWCIRBIEOKTp3mNz7mn6N5@vger.kernel.org
X-Gm-Message-State: AOJu0YzcaW8WQsBTOjqIChE84VXBh0wgnwhm3+a/nRyk7JUIBGr38BuR
	VlTiJ8xwPBlanjoeblkZMhJbYFEB7mG2bMKh8xrlDqUleUVpgSTU828JcrZKlhOKvAz1ByRySiU
	WBFkrONPnWIbs+F9VxXEss6OUQpjo6nltm0ReqPqat5dsR3FA38Wi9f207UBlC2eo
X-Gm-Gg: ASbGncv8/1sAHY7BTVNSMZkGytFuO+b8DxnD6gQzjNsDX8Helg8z3EyvPT9svuRKH+1
	ny9I9QXWBXMy7sEGQEt3VGetAl5IUZOvk+T5ZRPlv8vVI7bv2qgsQR70VOqJYg86bv+vx1tHUj/
	0Wp39Ql7yhaQr+b3Fbl8CTWTthq1qDlAPJXMyHWeLLPCGRngpDVmedDkR5Z9RBL0IGsv3xw5Uzr
	7gjoiqwjtV+LPstybmGcQdq4c6mcSWJoZLlW2leASz1qhrchsj0Q8HohxKsT3FkOCl69jI5i0CD
	7petnGpfN26y7NfKftNTYg5LSytRp/wIh3kPwiKorN9wy5kWDcgIU4DxZUBKRP1lC5wg9/gwVpn
	YYq6WsIUgylhz3314jn6m/34URKQu5tEevk5voqpMcVkNfsqZalafvxPK
X-Received: by 2002:a05:622a:1108:b0:4ed:e2dc:dae2 with SMTP id d75a77b69052e-4ede63aa5b6mr31796341cf.0.1763025315623;
        Thu, 13 Nov 2025 01:15:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV4PFuPYpN0A+ngIo7uy5Nni/EE2S28eHTbVKJjh6EHJpC1GGPOmK562qgRfTr9ZF6na1ygQ==
X-Received: by 2002:a05:622a:1108:b0:4ed:e2dc:dae2 with SMTP id d75a77b69052e-4ede63aa5b6mr31796111cf.0.1763025315185;
        Thu, 13 Nov 2025 01:15:15 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b28bbsm999537a12.28.2025.11.13.01.15.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:15:14 -0800 (PST)
Message-ID: <cc4d11bf-a0ac-4cd9-ac86-2ff814073657@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:15:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] soc: qcom: socinfo: add support for new fields in
 revisions 20,21,22, and 23
To: Ananthu C V <ananthu.cv@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251113085432.1309629-1-ananthu.cv@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251113085432.1309629-1-ananthu.cv@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BvmQAIX5 c=1 sm=1 tr=0 ts=6915a1a4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lgXH0h_iqx_sREGEgRUA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: JzH4VnDYT5hwY0pSaR04zpNCmfs5-PU5
X-Proofpoint-GUID: JzH4VnDYT5hwY0pSaR04zpNCmfs5-PU5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2NiBTYWx0ZWRfX8J3wNyWmhk8t
 ZlpF0l3laNkNHq5iOfjwnyjPUSgSA0ymXNCiZ20UmSp/z+VHV78Shey84EzSdiM0s+W7VoWIQ5/
 etUA9vCkNdwoLP7XFFBtigi7UjCLU1yombpxUesTujk2tQvEjYmNBFyDwWDmslu5hDbQUAiNKiJ
 n26t2bDzTIB9rodp2IcKZw+4JPHYB7pJvyutR9udJPp952ztW6dQgc3vYpP7ol73PjdYOnoSyh3
 t+CktwtqEoysCb2hOugdE4hj2qFuJukfGtL9khedK3raXAnDMrJwmk/g7qlJ8taJ7Nk9QWI/v82
 TyzhC49wYdSBqEdqPPr8/I67c3H2435BM5xXv5NibGHKgPi0ekvBMNb6MAw8iS/iu3dQdBOd0mL
 TC1ll0xgrbZafUFCI5vqCOHtVQuF6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130066

On 11/13/25 9:55 AM, Ananthu C V wrote:
> add support for the below fields in socinfo structure:
> - v20:
>   * raw_package_type: type of the raw package
> - v21:
>   * partial_features_array_offset: position on array indexed by
>     ChipInfoPartType, each bit notes the corresponding component being
>     enabled or disabled
> - v22:
>   * cpu_cores_array_offset: position on array of cpu cores per cluster
> - v23:
>   * part_instances_offset: position on array of PlatformInfoPartInfoType
>     structures
>   * num_part_instances: length of the array of part_instances at
>     part_instances_offset
> 
> Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
> ---

Please follow the existing pattern and add debugfs entries for the
new values

Konrad

