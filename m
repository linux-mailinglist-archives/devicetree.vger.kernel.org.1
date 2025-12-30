Return-Path: <devicetree+bounces-250451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED3CE917D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08357301B4B1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0552FDC3C;
	Tue, 30 Dec 2025 08:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6ivizDx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQDYIKLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633C0261593
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767084890; cv=none; b=S/QfSyKHJFonCjbF3Qq+8oOGg9MuE2urZQbW11ziVUhdq04VnpcZypvtFraRIxLaLp/JwT5rdvzsMKPYrDDR9XxVTVAliDEROfw19mjygoHupLCka+uGf39a7oSYw9jGWkxVqy740vu7zbaXzVdK5b1kbud+HFmkN3tX+iyqch8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767084890; c=relaxed/simple;
	bh=Bl+DeJiCrf2CBeBAS1CiWo6LSlOAlbki/uPTNEgYuys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZWV1e7mUgvmprpkvV90YMU95+2c8RBjMGmbCZyro67Hl4GcK1LkbNpuLGmRigbvCxfw9XPM6tK5CLpL5yzRfElAuGwdAQ06+NcBBxCB4Cx5MkLNJdw2HgacijSTHZTsE+m9YRwLG09abuCbrnBHEvP1AdJ2RBUvcSeFACGiQ6ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6ivizDx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQDYIKLE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU04Ipb043783
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:54:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=; b=B6ivizDxWyB4pPF0
	/+vHOJ4xm93zzLc5Y2HdHroZIBUQP6pDOtUCXMMCIG0n21O19XZipOaw+WB6bmoB
	nWz8bmGzWWif20uP1BS9GhDnW+FtKA6ScLwj733380bErI3t07iZvrwGxVzaECNF
	RiQD9vP8rTrH+vGX+etV4QVBNj2yYu7b4zLcgSZiviZlPJShBJOBpU8ePfFsxDkX
	M+V6Ar5V7+rgiePVOVeu8Eb4Wty5W+Hnp0LYzw5tUj9cQI5MJmuViZrsiW2jCgYN
	2fReF1Rki2zwCZhEDfj4QRpFhyc+t8KCJPliVjJnYPXBb/OSEgsBKQTwj9LTXzRb
	ygu9jA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v3x3m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:54:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34eb6589ed2so8578783a91.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767084887; x=1767689687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=;
        b=ZQDYIKLE+FNPxFFQPGagcs5s0RMqJakGeA610p/RflTfBuNHrtJM6RS9dqXExM99Gy
         1dpeVJDeDBmKNKGtcLXzpDSWbS1p0kL3veV8Qf2S6NB9O5j+QljjEAisxjCRRQ2PXdK0
         G3W1++CprjTjRYDLZYQ+4T9X0H7jI1AiWaRlJQvQuxK6Uv8kE+juuo4mh+PyVCqBIzxn
         XRZcIm0QX//4+vLgivM0hae7U0XyFLmVKD6/QtomJMgXIUSkAVYyn9Y7j/ml+R+dq5Fe
         IwNvYjx/6OGUrBmsQmrPeU9EFZOAQUv5OlX/IAVDuRsVM8hsrP6cDhGbDr+7qatO9ir6
         Vb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767084887; x=1767689687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=;
        b=TOIVaMsKp94lyEDuZguyCl+SwlcpfY3Ijkl5EI6YElbuBwy2fd0i3XMP3pabtmExMF
         3fY5BdkcQf6pPhr23rMkGh97uzmbFXjKuZUmNytu7Cx3sGtH3inqcLgSzz4oSjqxqU4F
         2OcpePpGSvcyQKNoGFOizAPb5h4IJqqWb+9dDUm2xbXSlpKC7/F4D0vSRkNSNlLe3lRX
         BZ3iGE418EoKkoz0WUqzD8DQVGKxBu+2lynQtd3sA/xzbHpbiN6am7ie5R4XMevW/Ehr
         cqDBs1iYmvUohXpgl42Uadt4r1LeLNr+3ocn0OlSMscTb2PD4teH/WZQ5IQqTkrgX+4L
         MMwg==
X-Forwarded-Encrypted: i=1; AJvYcCWYJRaHxDBph5QjjuH8drVInvLgSQ0MY1W9KPnjSbfJtEWB/hbr8nZ2v8blpBrSUSx3yg5kHcUYlAdT@vger.kernel.org
X-Gm-Message-State: AOJu0YyaF0yWsQIxB9p11w5q8ClHYbdlQMSLK+wPccD1c2Q0EYzSiNBO
	HZ7vV+P2vmhTvpbrAqPvYtFsQxAD6CObyKU2aawuma6AC/QI3W6vhqkp2Yo3K0Wsym7XvRKnI4X
	OjZCRESRSd4o0knM1EDX/YyPe4cSHQ+Wsr97vOK02ZI92IDLfl4Ij3w1Ef0DTz7rCnv36XdLO
X-Gm-Gg: AY/fxX60osEasLQY/O+nYIZ4AA9EyP/EZ6ToCn+Pcq1NEOcCglMZMat852/bwrC1DFi
	w9jM81w8lRn9Sxv8NlEXl099LQyXXH+3eblSem7N63OqmiduGh9ZGDVDoMOqRcE2fzE/SviLME9
	adD/YwcgQEYBGByBzrFLaXbM/XvRTJg8O/Qq1C5Ua3h8YLleAvMQLB8pbfZ8NtP5sXnmZCawowp
	vn/XJ/L1pTLEJbQ9u5InKEEmAH1qmkJz3FYl6eVNHFMT5cuN2c1fcnhlhv/piEa5519VQfghST4
	SGj8sBJ84l7lgWJsTr+ouAkgAc2dxhtRCwP621BC01GhwUcW87mDSwKiSOkK8yz87KEojagETRV
	6Ty5F4fZhw12s8Ibj/CeHL9+RvKgIbHnOw/TVeHMXwbQ5rpYl3Mc=
X-Received: by 2002:a05:6a21:33a0:b0:366:1a2c:6f91 with SMTP id adf61e73a8af0-376a76f8349mr32847450637.4.1767084886134;
        Tue, 30 Dec 2025 00:54:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwKOGrZevxYUTYMiPED4sj5f4L1oVz4R90Qo6k6fwfLK/YR2I/UvYs/oQV3Hcy+bokhTyxzQ==
X-Received: by 2002:a05:6a21:33a0:b0:366:1a2c:6f91 with SMTP id adf61e73a8af0-376a76f8349mr32847421637.4.1767084885643;
        Tue, 30 Dec 2025 00:54:45 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c627f3fsm28310735a12.31.2025.12.30.00.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:54:45 -0800 (PST)
Message-ID: <6031d99b-6130-49e0-873e-b44d0614e2e5@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:24:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] scsi: ufs: qcom: dt-bindings: Add UFSHC compatible
 for Hamoa
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
 <9d3c21ad-c265-4e22-b804-ef8c39b7e787@kernel.org>
 <26bed077-8450-40ec-97f3-50b7771e4c9b@kernel.org>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <26bed077-8450-40ec-97f3-50b7771e4c9b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wgM-ZdEHeEfF9UfnwTmp74WFI1PKt_y4
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=69539358 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uKld1MUROoZiouImdn4A:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA3OSBTYWx0ZWRfXwEc9Nw84AtjW
 1IOAijdTO2jNrBne+ENfI/t1hqDUA07DvTm1nu1ThiBjKoYYpnTQaPjMyGcPVur7WWdZIE9MtqR
 rYNdnahg1HbRcZmLS1N519CYrBh0SVcYiHV9FH5xZOcWQ85J6i36IGkx4+mgrlL5fOwlNovaWmn
 NT5y/ZxpRU2QPiiSPHs7Du09o2vVDQ7M3IakKt5ZiFlOizKXF19CqvwfsxKsoBBOgtxpXwr3zet
 tZI6nxcDnJzA8Fgnshbfx/5w0tKpb3K+jpN15pYFvZvRTVWU0LylH/JJVTK+qpffxA8Pd3SIjHg
 wmkoJWQQ4ijmbtfMQLN2hy7Sky2jhCRtx7bY11I0RU5gwNZm4YFyxA8QLZjOshHKz9id6ticF4o
 2q6nKzitWmNfej3YS6jCiXG/xQKjEPEIJYrLD2vtCOVspwA2SiQsP+Qo55qb/v+Xs1C17KmpAtl
 bbQc48v6niZupFpihlA==
X-Proofpoint-ORIG-GUID: wgM-ZdEHeEfF9UfnwTmp74WFI1PKt_y4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300079


On 12/29/2025 5:50 PM, Krzysztof Kozlowski wrote:
> On 29/12/2025 08:13, Krzysztof Kozlowski wrote:
>> On 29/12/2025 07:06, Pradeep P V K wrote:
>>> Document the UFSHC compatible for Qualcomm Hamoa SoC. Use fallback
>>> to indicate the compatibility of UFSHC on Hamoa with that on the
>>> SM8550.
>> Same problem.
i will update in my next patchset.
>>
>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml          | 6 +++++-
>>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>>> index d94ef4e6b85a..3b5a95db7831 100644
>>> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> That's older devices binding. Why would Hamoa fit here?
Hamoa is leverage from SM8550 which is a non-mcq target. Hence it would 
fit here.
>
> ... and why even bothering with testing this? Every internal guide tells
> you this yet you sent it untested.
sorry for the inconvenience, actually i made the proper changes but 
missed to amend while posting the changes.
>
> Best regards,
> Krzysztof

