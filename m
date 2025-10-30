Return-Path: <devicetree+bounces-233361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D4C216C5
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C07964F0D81
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA58F3678D9;
	Thu, 30 Oct 2025 17:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RGmKKO+E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNs6MVeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006393678D7
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761844437; cv=none; b=gQfiN3Arf7i1P5u7rvD0ukwRnpK1NWHoa8K+JnEEuxQ3PMJvG/Lc21soN7pBvobRVzZzkyRCmw2EuGtJrlDOPd7AJFjEMHlzW6x2BHmnbDLQUKgXb1TbjdEjW1r1T1LLBtz5U/LPCRBj8LZIqFQhe3auaycW3bmZkVdL3svxC14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761844437; c=relaxed/simple;
	bh=LvR0uV2UUFEjjW8GoIT53Fs/684GGpnkAc2fKO9ZbTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jgHGRjRwzQweR41R0XqRmB6o4X5v8ueq6NsL/HjuRzZslH81Nx90QKQdhzi9wPI3K3EBcn4CQRiTknNyZHIF4DqeMmpHijojVqG6RPBaby8tMs5APlWB+igHIvTDBXBK0XRfqNX8KIeBHBW/ddeKDnDDrr5YmXE7Ku4IueVlJW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RGmKKO+E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DNs6MVeB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9WNQP3117194
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:13:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RQdiWSs1pdAq16tCBx6T1gHaJtXV5GNkrGHabI2OIg8=; b=RGmKKO+E4/IgzYXF
	UqQN3ci57t38sFZpHrc7kOnAmeiTEQVi/DZUBZ4Hj681989qjA6Y3DFklW4Q4eep
	nuboUKLPQQ8LFxfyN13dJ+JkiN4YtpxvJm0pORxCKmjmdhgWpfT95MXExIY7SlBI
	5/QOpzeRRUSH0l0Y75228Td3lD5Rs7CxoGIhSSLowIhBgU38cIQ6Dn5V14U7jUR+
	Lgt8YKplKSAFAQ9doaVIDSpkG2On7L6BMVHlA7XLyEgLJsCNs283+w0FhYjhmQal
	U1sicJL66EVvlFoA4eHoJ21WLjcXjCYg4dbpGUA9qRrpqnHZqTpKtqKiK73rbR9N
	crjsxA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frhad2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:13:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88022ad6eb3so24517836d6.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761844428; x=1762449228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RQdiWSs1pdAq16tCBx6T1gHaJtXV5GNkrGHabI2OIg8=;
        b=DNs6MVeBaNkn1/mxdKxkh4jQH+8n3xb4sHZl9+9IPM2BqwUBTnxc3nrcqqQ5NzyNks
         76U/Ihz/1VtwOQYPMaz9nxyXc8TNGsROscDxkfyEXgXNN/UCupftS7iKFOwvK+a46hmE
         8H49kyOnQAwYm1R82zzX5Gku2WtA1jureATmjne4UMonJNkhBcY0efWe6l7aLsmTD4+f
         b3OFQvuYCkPt7mYhJ7MOnpTb1iTldAmJLHtMCTWzVbpIU/K6pQ8MZhAZBsVqEPVSJzyi
         /awbdr/XzwUoW0bhSYbUYGD0Q7IYE5qRjgkOMM83k/FB18UoP3bXtEQEfqCe5e8/SIph
         RLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761844428; x=1762449228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RQdiWSs1pdAq16tCBx6T1gHaJtXV5GNkrGHabI2OIg8=;
        b=jZVCtf8RS08hnSPpbqR2HD7krEW18HlF2ZVyLVblkpDSV1Z6umIexl0NUM8TUbeRCf
         vulntflbLRJ5Tn9QpY/1l8z+WeBbnzan406vVPYHcEoPQqeeW2hHdDXWEt99xhX1TLXP
         m3WLPesg6+A8Sialc0+990WvtXqg6q9Dg4Mhg8BDniEMAKtoWLPpgxIDksNiOaEtRO3v
         heyNynY1zMwC5t1nGyVPsNxZY8TGszPFGJePo3VT80Siv8DAvoo7tux8mCDvJKnapzon
         Jce7n6ah4R/glBf5+/1PDcMQ+prWdpOxOv1dqWL5Ywqf/VlqJbADp99dWyP+AU8tZ/er
         ryfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWch+xcufVJQc/JUAHzTt6L6U5pl/p0Y0qFyshE/W9ldssL11k5yUusi6XhHxVU1oiDIDybAHDVjIP5@vger.kernel.org
X-Gm-Message-State: AOJu0YzyudO1rFXthjcVIzKnBwPJ9wwwD1H/fdMk9MKeRQW380M6A0pt
	ds92+ciPVvwKog3u9BWcILvgMFFPAXUTlvvDF5ZcuAtSeL5HJLdA9VYWY4sy2lK9ImSTTRVtcdc
	Zjy3ATpToIZEu47Qz/rk9n7jo+LY7Ln7QAxkAOro+M6OGXny6/2nV+zVJVQPc+lbPBb9swo6+
X-Gm-Gg: ASbGncseWFpxWpBzw1sJBVQ+EGXQ1TlYvpQ5zkvR1gFLA+Io92HOAz5ESnqaCoKEUQK
	/GtkdV7Ep+VLefa5ySbsGmjvgIhySyKbJbbzpbyCm1MlnCk3gcXuBFUAR6KXa/5o4zftZunbnS5
	lg9mG8JYXo0jKcJNSpygcUIFUxfsRraV7edoBOoSDqeS+4yVdfSgEz4VFbhd1DL8ZeVudU3XUv9
	ul34v8R7eR3w11swll+oQsSNPxMnPWFMhR2+LT5FkjCDOIr5CQ5dVGYZjLc8yandeasQFaG7QzW
	QvG/JYmYwwsNvQZ8AFYaYZ4AjXZf2JtrJG+5b0X5qI9/Mhmy3cStEGrf215ThkE2IIrryI+S7cD
	tVKfCCQQrTBc2SpaWGNHEn6JOH8M=
X-Received: by 2002:a05:622a:258c:b0:4ed:1af6:2314 with SMTP id d75a77b69052e-4ed30fbacacmr4778901cf.55.1761844427870;
        Thu, 30 Oct 2025 10:13:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmWxDYd8AFe9Hj5FT5SvFYc4S0giUKw0u/xBUp8Hfu1jGx/wHegd1K6+sYRoSAbI9+qYjVCQ==
X-Received: by 2002:a17:902:f644:b0:275:81ca:2c5 with SMTP id d9443c01a7336-2951a600875mr6524995ad.59.1761843974115;
        Thu, 30 Oct 2025 10:06:14 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.130])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3465sm197299615ad.1.2025.10.30.10.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 10:06:11 -0700 (PDT)
Message-ID: <41e31da2-5ea5-443f-a8f3-ef8280f25a00@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 22:36:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-2-6286bbda3c8e@oss.qualcomm.com>
 <102d9042-49cb-4aff-8b93-a882ed8da27c@oss.qualcomm.com>
 <e308a74f-1724-48d4-9d1a-fba6d06a29aa@oss.qualcomm.com>
 <98da2c17-764d-43db-9b13-d950078ba41c@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <98da2c17-764d-43db-9b13-d950078ba41c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=69039ccc cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=kYOnW6kYNC4MuwyOue8uGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ve3y1cz88okj8OIuEZ0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: Hl6EewgiCH2fsazpIxmHtTbEfrlVn0uZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0MiBTYWx0ZWRfXwNKzR5XULZBu
 6PUxHnc0Sc8mA/2wl2MpKqgWmi35pwyF3wnEv/y37i0evlWe+QoZQxT5FNwIkqeT5KEGVvnkxBZ
 Zb2pVbHO9MFzBAWjjoCdw+g9R81QfRuzlfm/oIwzBbHMD9Wrv6N+K8n69GgXyJdMxqDNhSehKyF
 C2E7pYVjT1MENWAyLk9FGqsXnJlgbaoE4cfb/s8bMJwshfJXjAyAUNb/L0TaAM0gWNTB2LbxCSp
 MsLTZZD1yD+1Gg53/CV5NBGCMsQU718YGwhXHgw0blNULJd21lar84pFN0QwkVz7/qRg67sBPJ/
 ajBcvdNlG8MLXg+tLOzzIiZBOCqEGPdN8UAwUuFXqyFtVjWKdYDKjdhSFSIor99CjRrRb15CV/z
 RY68bhBlKw+6coh624/yhY33ravxOA==
X-Proofpoint-GUID: Hl6EewgiCH2fsazpIxmHtTbEfrlVn0uZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_05,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300142



On 10/30/2025 4:41 PM, Konrad Dybcio wrote:
> On 10/30/25 7:24 AM, Taniya Das wrote:
>>
>>
>> On 10/24/2025 2:09 PM, Konrad Dybcio wrote:
>>> On 10/24/25 6:24 AM, Taniya Das wrote:
>>>> Add the newly introduced 'mem_enable_mask' to the memory control branch
>>>> clocks of ECPRI clock controller to align to the new mem_ops handling.
>>>>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>>
>>> This probably fixes some ugly issue, could you please mention what
>>> the impact/problem is?
>>>
>> Konrad, this isn’t an issue. Previously, the ECPRI clock controller’s
>> mem_ops clocks used the mem_enable_ack_mask bit directly for both
>> setting and polling. However, this approach didn’t apply to newer
>> mem_ops clocks.
> 
> Right, the videocc patch you attached makes use of this. I didn't notice
> previously.
> 
>> Based on the feedback from v2, I’ve refactored the mem_ops code to
>> handle these cases more cleanly, which required updating the ECPRI
>> clocks as well.
> 
> Please split the changes into:
> 
> 1. add new struct fields, explaining the reason for the change
> 2. update the ECPRI driver (so that when the next patch lands the func
>   isn't broken)
> 3. use the new fields in clk-branch.c now that all users (just qdu1000) have
>    the required data filled in
> 
> So that the platform remains functional at any point in time (which is a
> policy because it impacts bisect)
> 
> 1&2 can be potentially squashed, potayto/potahto
> 

Thanks Konrad, will update the changes accordingly.

-- 
Thanks,
Taniya Das


