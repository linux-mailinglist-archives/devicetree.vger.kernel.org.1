Return-Path: <devicetree+bounces-254587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE0CD19947
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A24BA3005193
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81BEC296BD2;
	Tue, 13 Jan 2026 14:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZbsdQKEx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PsFyRQI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276EF284686
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315589; cv=none; b=Fc9S1LgAMf6X+cRJSGIEGz1hde9KChaUWAPpRjYmA9iwore+nmDuz56R9hCcVe9Aly4XY5CGNSmLh6h4hXI7hKAxz+x+m5v1sAzgH2WeoUqIPHlMgAsA35sE+9kSRVBgKZu1xj5pBeoEqzOnWN8IN/MGn5zlSY8xURcZvMG6Pv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315589; c=relaxed/simple;
	bh=Ley4TN/WBpfjfXwNQQF8JZFqf1YkvsD8BswtDJtXY7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SgXb0X/ykOwhzeWO2eGUchTV/h1OrRKBp2Ovf1QbDYCdtdunlabl6t/p9IzZPFXUINqFbSP15ZeUyzhxuh0Fl2fgzR6JStauqjX96HUAKwkK58glkOoQ62sCpRFFcmInc58C44J5Vij4oLi8Ngwa7puecNd5PUnIPMmdk2AWXKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZbsdQKEx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PsFyRQI8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCEOIW2865836
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:46:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yAagwHcUARdoqFIcNEcujNUp+tDJqKcgxSn8pTRqOVY=; b=ZbsdQKEx1hXhmSuq
	BODG3DYUvwgSAKZCbIWLsOq6W9A2UES+SWKWROiBJaw4Dg/2SvQP2K8go4MJlGFb
	AP/zrx3P6SeFplr3QsmnqXcESltYnaiqbHG0ErDstffvLZ9f+PROWVFfqCxzTMdw
	73nNvVl1jDXVFaO2ts6OCF+tMREeMy7yk2eVmpouk5Lrkexww/YNkxVosV/1Tc7s
	x4CjFcz9w/qasGpBOEyxAtJXR7PKDjLBdpWzsG68VevWP76OijUqkpM+ZEglYxip
	FTjZ76fJGBCKhkwSLGvKf/R3UBarybJw7IW9QXlzbMBuL6mn9A4yObu4RUj0+Jl5
	E1OP5g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjh9s6k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:46:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b9fb4c55f0so155038285a.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768315586; x=1768920386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yAagwHcUARdoqFIcNEcujNUp+tDJqKcgxSn8pTRqOVY=;
        b=PsFyRQI8FGlCNRR2FGA0LH+JjGlZVee5EK/vQWxUPSdoKADVdhHMghgRI1fCaZ8bBT
         Pkh1b0dCyBIWMRpklURF49NeYFsbKIaKevlSaRI0mBkxuDoCHVtCbsw4p/r8jNUPf4sq
         1po9oBiyisTPD7Dv8auIOrgBLgt09CC8cYxGaj+jQOHyhgOpTanJy8fZJR7mZDmgpJai
         vNpWEKWPhYGl5GlPyoW6EoVswa5QAlMA2PgDWzDrwGVP7oniLUKFeRW4pA7bwIdBcuXg
         Gi420ktCrd/kf9LC/868QCZvks47MWB/H0ens3BANYiF7EnfvyetrB7t5CGD7c8rsH5f
         fUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768315586; x=1768920386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yAagwHcUARdoqFIcNEcujNUp+tDJqKcgxSn8pTRqOVY=;
        b=Yu0rhgl1mTg4kIlf3foeaFjG+TclfWs3scyTxRzHrBytEBI1sOF3BwllW4SAOEc6LY
         ai8r+gclrg3tRuEEpO4mqKrELagEzG8voGfyEXoCX+3W4HEvjePsuqioVGPwSkQH71Zu
         TVyObTNVlRTvtpQBJ3u3OFJlLvcg8Vy5feQ0qunvHzNgmE5I67F3XeFTC7HK94GlwmPN
         FiCPXcx9MDKwr79UylEvDlj4QNWC+gktTkUILyjVNZfBz+qjiH2YxIW4apXocx6s0PTM
         ddnky8mS545FSj2FhdUbuGDTB+cdPEClDR4xVjHBgDpiObI7Adadnh9m3Q8uMwYQPVRl
         oi5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfvfx82Z2PPAaHVjky5ot0YHIGYuvo3SfCLkodL1H5Ex+kNrn2hQQ8xtKAp1Hj3eG1+KFpHoEofxsw@vger.kernel.org
X-Gm-Message-State: AOJu0YzWBC0YAIpuhA9Xlkp/u+0+H44INHWDHyxulL49vadPBfzIW+KT
	hDktbhbz/sumhSdJGNnPxyVcoF9XjgvuUr5rO3yHRlgBb4xKx3clESRz7aoaBO1z9EQx+05yMm8
	b5V7arYFHkKtMuKpOKaIrSBrOPGk8hK5Xpj5YQTdJ+03Hkj4Dw0Mfp2beh6y6mxgl
X-Gm-Gg: AY/fxX4tZ/keGIQY4Iycmlu2+MoI5Lkf+EK3ZHrLL1QaFeUHNiBiLxupQ7v/ruoz67r
	kZr864eLCYuiDkZDWXvTttaCIGy4zAaxiLRoDLw4dYSl2QlacJhHj4ncow53r7JkwQIknrJGQ6g
	dDPnAmDARGA6uOqUEDuo4ItEICn4CuI735febGaDbs8RsQDfYH74bcuOF5LG+9IxfbMIMr+E6LS
	FB+JbrnQpS3qbKxnQeercAMKEpMG0lab7ybtwLvGIkDNblZ0x9URVOsw9LEelFKkX/G4KeXCjhZ
	ney29UQ9tb8MzONotp8dPkCtldBLqnEbwYsPPA4zLizcad+YkBGYz1SftjVLu8ml9DVUjgFzTIL
	25yVA0eyru95nCHmCOGq1XHGeVY6e8jtFjf3wj1rDDsCKx2siRika0V1bkwovLVnvkXc=
X-Received: by 2002:a05:620a:f15:b0:8b2:efb6:5ce8 with SMTP id af79cd13be357-8c389410414mr1963880785a.11.1768315586398;
        Tue, 13 Jan 2026 06:46:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0CQMntguZ2wpBSdo9dp/0boxYiDEzJzwbPhG4IU/Z1EDOI3Nnfp78EbLZwKyIhpC0AnLyNw==
X-Received: by 2002:a05:620a:f15:b0:8b2:efb6:5ce8 with SMTP id af79cd13be357-8c389410414mr1963877685a.11.1768315585881;
        Tue, 13 Jan 2026 06:46:25 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be642f5sm19972741a12.20.2026.01.13.06.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:46:24 -0800 (PST)
Message-ID: <ee448445-8a6e-40ea-9464-1c2ae52b84cd@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:46:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        hrishabh.rajput@oss.qualcomm.com,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <b105810a-63a8-4d81-9ad8-b0788e2e1431@pm.me>
 <e469548a-8d74-4d3b-9617-2b06f36013e2@oss.qualcomm.com>
 <ABmlNqg6uJXJLkDZo3uaZLdrTCFIjRXOJ68Hrx1MnHHYMnPJ9_g7GW0HGRhZBKv4--_PANfXgTV7h-n7HFC51zKNW6JkmEhpB6_EhFQ27Rw=@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ABmlNqg6uJXJLkDZo3uaZLdrTCFIjRXOJ68Hrx1MnHHYMnPJ9_g7GW0HGRhZBKv4--_PANfXgTV7h-n7HFC51zKNW6JkmEhpB6_EhFQ27Rw=@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNCBTYWx0ZWRfX6N7MSnnH4cIC
 L5hXR+7Xcltwft0QchUk0lLCM3h2jFLvvctihe3YOO/Neom8i1YZqXExMkmEMuRGUvZONOnI1uw
 hBAsCQxyiknOvfbuJDNwEWd/bNU27vcdw+9iGuebGhr07/VeDuM3S6Wu1JTi1Nn2xh6roN4b54D
 UGmJHeDXBPhHqHTcF60i3FckmG9LDy0/fDJa0YPW6usnlLBezlB67G5I41UQBtYQYaWJSB9jaob
 9YPFVK//urZIE2K5wNG7IIHIocYRZacr6NXR+VDejOxMdie/PGB9yvD22LUvwBT1AMAsN5QaAEF
 CvzJA7dH4LfWVdmTMKFBNFNVfDUDn/YRRoKUdkDOivhEFtXjnUdZcpd5zSdMyxPDFlbT/EjP5Wk
 Py+AIz4fA65kWJa8VBUshplU0ocjTawcCkQ/VyfSHrdxeqBToFQNflqlLEpy9K3sH6QJE3chTZm
 EMz6T9J1x5Au4XoQPUw==
X-Proofpoint-GUID: 5r_9XpnwoDJ7yz64NUUikk-5BP1ib4_D
X-Proofpoint-ORIG-GUID: 5r_9XpnwoDJ7yz64NUUikk-5BP1ib4_D
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=69665ac3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=0dMHunV1XF2N3nHORDIA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130124

On 1/6/26 2:29 AM, Alexander Koskovich wrote:
> Hey Konrad,
> 
> My device's EDK2 should be on 'KERNEL.PLATFORM.3.0.r1-12700-kernel.0', unfortunately the device I'm working with is secure boot on so I can't modify bootloader to resolve this issue, though I'm not really sure why it's happening when I looked at BootLinux. It seems the hyp dtb handling is the same in both the "dtbo img valid" and "dtbo img invalid" cases, so not sure how it's only happening in the latter case.
> 
> Note, that I do have a blair secure boot off device that I flashed with  the same tag (KERNEL.PLATFORM.3.0.r1-12700-kernel.0) since I noticed it happened to support the chipset, but was unable to reproduce the issue there, DTBO gets applied even with a basically empty base DTB. Guessing it may be due to some change in hyp with recent SoCs.

What I had in mind is that with the sources you can track down where
the issue comes from with a fair degree of confidence.. if that's a
Fairphone-specific issue, maybe you could prettyplease ask these folks
for a BL update somewhere down the line

If you still come to a conclusion that the hyp is wrong, we can accept
that workaround..

Konrad

