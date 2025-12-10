Return-Path: <devicetree+bounces-245572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7DFCB28F5
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0C6030C9211
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 09:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F399B30507B;
	Wed, 10 Dec 2025 09:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MHXEQUX1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GQrqDuR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713CB2727E0
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765358873; cv=none; b=dAZLDUSQSNH0xm8okYbRBmSXQTIx30K107TAmO+rZPkXbEkDZ2OOaYy70i3NduEwntE+0wYt2Gc3Mz7V650T6eTOLjTQms5qwAGEFyDJ1HxdNmag2gllaZkanU2Af3bg9Plr9ztkuD9LOvBlpLNYVsY1gJMwLQ2iewmWEMY0CPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765358873; c=relaxed/simple;
	bh=ZncHYmryPePCczJvv0foKWpEDe+N1au7Gi2Dbjsh42w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kU3pm6lxNexKCX9jq/NNGRmE2joby4MwdsA3qm8DSFI/C1UHKmguMlcDat4DrgzTfo5IwAVWHRjDDdb5PdPuB2ljLNxvnrcu2Zea5VJZaoVYM3ZtwauZCAF7LZs03TH8K0eth+VUx7qQslPS660rp2FM4s482Srrz6oKJo3S9tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MHXEQUX1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GQrqDuR8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e4Vo1564133
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d7YV5apk9L0waFuyr5a1Vu77m2o20ucLVea/0ka9hf4=; b=MHXEQUX1Bydm8kzx
	vAdx9hO1L6TQnFs88BdDPawz5ZqVX8Q3HOd7PlT/flR6zVN+grvRsIPTrPxOmG9t
	1X3wMPRfDl9DU46QbED5xg3P5+rn3O5OdnZkBm/SOOEYQy95Zo1GTiWaRVZhuXpI
	FLQ0GKEqF0GUYGDLoHGD2eFKqzIpqLByuKKmo4MAemyXFCL6SSpwjETXHUkXRC+l
	MbIyuGLG0UXQtJPYy0yZU/lAjRuT95wAul5g+qp/ME1DbkOTqfusWhcLKj0X6L3r
	CcnDbaWeEVRonQwAP507NDzSeeDMp1MLIXjBnsGHZmqGVZ5VnNUU6B9ntMRldLBT
	Skb4gg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vu9nb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:27:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297f48e81b8so11355235ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765358871; x=1765963671; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d7YV5apk9L0waFuyr5a1Vu77m2o20ucLVea/0ka9hf4=;
        b=GQrqDuR80yzswu7JrpkBu02Om3K/57RFO4mrXpCpFA7YU3y+9H4xtb65pyGY64YO1/
         zwddsS8gV86AF0gss8loucNpNzcuUGr/NWgnFi4A9xYggZlf/oRnYUvNsXivK6NSLTrt
         G9+EukFMwzSjAFEIhiYOsaev4OxkxbWPEpENLKu+IKPUTnH3R881yY/j1pOGS7mys/kx
         QwRr/JY2++f9g7e35WOh4XWWyaLp5FYOJ4jOIZMQbw0AGg35AkVYjr6IYE8yPRjuVfUQ
         Qi9xhrrsdsXzVNq6TVuv9asFoiNeK0HW7lcXhrLZQKcdi0SeUGJVhEo09vQi4Ff4vFM7
         TuCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765358871; x=1765963671;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d7YV5apk9L0waFuyr5a1Vu77m2o20ucLVea/0ka9hf4=;
        b=vcDlvs0cig5RalRz3wu8ZKzqWUSXZdKVjAT1oMFlPgTAZ6mgvhQI2TJFm80xQZQWtY
         N6qKToyRvIVyqbppKeohPz5756VlMZGwg0Z1qbqtzN9NVnQgmsNHR5HgMhzgS3BHsmOI
         mPZfj51dYT9a3evRvS4iFf4f4LeZL9YbdYnuNl+vb+pGGktoIbq/rfbHrHTO1ikxsDNi
         6xrSnxDW+VqkVG40y+KrTMsfkHUystBKG9dauRPTK5a61uzJkxePT2KqxsmV8UrBj9jb
         Jdv58DIBX/pvbQ5T9wUTw+3ZTVmLkFtSTr+B5fKZ160ScqgfhDmsuhvX2S4Lb2CtWWi7
         dKEA==
X-Forwarded-Encrypted: i=1; AJvYcCU9knN6ksSBAwuWkbmS0JLP8WmHYshIkRynffAIPcowa9llSiWM29jfJ8ebtLcelPybeIht3tlUB3/L@vger.kernel.org
X-Gm-Message-State: AOJu0YwUdxU4TmJZI+u7fzNjCow2g46B9SaCM7MJyK25aI+WnnvoC0me
	LWK6QUp7OmWtHWwUBI8/Nb+hxuQnkUG0LEMwb2ff6lABoMv9q/nNsY6XYsHA8oThaLTY/XW7cDn
	kp0k+xE6+3s1hU0RaUs0d5MzbcaWQFHU6g+q/ABe7iBeikyftUuP2rThtG725OuNN
X-Gm-Gg: AY/fxX6HUeAIi4H9FEvzAMGKLHvdlpKkl+8VpnglFmvgHWAXhDuvGp24RoCNzwPGSRz
	6jwfFllIpEE6eQRTVQA6lPZVYqdbBg6fjYwn8DIkYgWoohxfJQtZlElpX3ljESOqUTQs8Koo654
	UnJs2HvLSmY0+PHXweGwizW/nNxFi/ZNtMN5754HgWMNp0IulIUtnMbCyEfZvo0K4pRM4eFJMUi
	Tn8XKIgtTMteXnkrr1cfHGD/uvzJem7nBGME6xABMN8unndWRp28Tq+Mo4d9ax+3n9mULCZK+kR
	kSYqTKYCSYj1xKD9kulapjLD5W6M5jtbnYt1Ok+dKi43fsji5fJgZ5vJ/Zy8w2ZYmInEzs9CQwf
	lgwVV7mw1JIeDruvl+RPMTQ9Gsq4=
X-Received: by 2002:a17:903:189:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29ea03af6e3mr45488835ad.8.1765358870964;
        Wed, 10 Dec 2025 01:27:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLRkDSAmj0KFW1AhaONVqeN2xtUYqN76SVdEnUakrrP1MHG/QjQ7CSxPumuAYGWaBrEfu38Q==
X-Received: by 2002:a17:903:189:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29ea03af6e3mr45488705ad.8.1765358870493;
        Wed, 10 Dec 2025 01:27:50 -0800 (PST)
Received: from [10.147.240.173] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae99fa59sm180082225ad.58.2025.12.10.01.27.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 01:27:49 -0800 (PST)
Message-ID: <86721b44-35ee-4a14-b38e-d40a10952496@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 14:56:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable TPM (ST33)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251114-enable-tpm-monaco-v1-1-4ed566838698@oss.qualcomm.com>
 <cf2dfdba-bb1d-4255-9db6-7aa6125265bb@oss.qualcomm.com>
Content-Language: en-US
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
In-Reply-To: <cf2dfdba-bb1d-4255-9db6-7aa6125265bb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: FRE3GJoYrg3qCYJSRx7I7Sio2Fa4srPl
X-Proofpoint-ORIG-GUID: FRE3GJoYrg3qCYJSRx7I7Sio2Fa4srPl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA4MSBTYWx0ZWRfX5MKwwTFJ1v+P
 hqmNcmsYcCvrTPtSYr20bJgAbnrL05G+OWhWdOtyECYsxGGjpczgM3KRaPEdTp92dxne2BbZsHG
 f9E68/QJ5e12b0Axbn+mMM+AzmFcRCYu4cC0b8L9Ztm8U8WjM0pyLPd181MHzNkdQ4Xl0QCQWPg
 npTC+3D59cxL/l/JBcz70vSREBrtd0vYDRW0ZJhCvaccIKAbxFPkAww5TpexWbzIWif/y8Apg59
 ZEL3OULBbW+pbu4D9GK9kZ2nVGXdV16UAZqpt1nmjBZes2YHxDZUusrKYCMS6nlaCbEDrIuGESO
 tdu2qNTIIrNpc1TE7+bXgzOZ7FFQe8xO8Y55VB6b4sGmRVhyVLI7hjmnZYtR8RioMR4znRJpW3B
 jE3Euwd9qt2ciD4DbHcgs0IbZo+/aQ==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=69393d17 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=V94qMDdOdRTrBcetFLYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100081

Hi Kernel Reviewers,

I wanted to follow up regarding the patch. It was reviewed but hasn’t 
been applied yet. Please let me know if there’s anything pending on my 
side or any additional changes required.

Thanks

On 11/15/25 03:30, Konrad Dybcio wrote:
> On 11/14/25 11:17 AM, Khalid Faisal Ansari wrote:
>> Enable ST33HTPM TPM over SPI10 on the Monaco IoT EVK by adding the
>> required SPI and TPM nodes.
>>
>> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

