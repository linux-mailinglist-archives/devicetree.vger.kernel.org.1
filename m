Return-Path: <devicetree+bounces-198893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87866B0EACF
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:44:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9575177E80
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 06:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6F826F463;
	Wed, 23 Jul 2025 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e6p8O1ca"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600D326F467
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753253063; cv=none; b=oLMZQVm2qz96S5SZuQraPtqTHFxKcp1x1u1r3FrbV8vZN1VqnLMc1OCR4J8n2cZEo39qLBKvVBniaUoRIrRTGg9i9pxhrysWNdIBSsvXrOzVMH+GJmXqqnu2hnLyVFa4V1yYx5H3ddLt3/dL9vauq/zx54MttsxuH8vt9Lt5gSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753253063; c=relaxed/simple;
	bh=ucEy6fLRjgf0oRmbifVYNVYN0IvdlBC98Fcz1R8viJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PYgZVNXosgat/YeuM2hMNXYPDVnJImC+7QVPPWvqEw/UXigHbt+3iUCT3SFoBTUKRB55HZKMBYjiIWwFc9+/IjGMUWOhFPW+7Tb+mJP6F4IaEJy4lDaYBbjYHGexJhiTM+KXtWDg+5ay3DwqUtpZGQegecSBNE0345pmdtypkTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e6p8O1ca; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMOrBc003404
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:44:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6JRtXfXWNAwsFUIN8mSiqpepSISde2xx5Vvzm/Pm6/w=; b=e6p8O1ca/CMYTbYb
	8V9N/8eFOrn5IAr/t/LDhmq4XF9NBku76JQYh0D0VzJG1qalhcJh1bi102A9KqIs
	GrxkdIXOxIgun6dnKL87bCKC1xIbr7rep9e+Gz/ZxOwqBOnRe5EElXqtJ099iM+1
	h9Ll0VVuY9c2rAazMjPCY9DI0fmfAm4W9/vXWwSjgjqOzmdPu8OgUG9XfuVFhV8n
	qnjJtihOCUuPW6gKDxPVWvtL9cqK031OHwa6vPXyTja2tAIk4GJlU0W436hBoYFH
	T8O7/oWUXoLbDwJ8a0mZ24nKWbz8V7BAMKFmHhM+NqcDmPovtiBVpNMPskxYZJsT
	2EPD7w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1be06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:44:21 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b31df10dfadso4410325a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 23:44:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753253060; x=1753857860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6JRtXfXWNAwsFUIN8mSiqpepSISde2xx5Vvzm/Pm6/w=;
        b=oixZWCiDywAl3G4tMRiuvPCfFRoMtqceYWgmdN4LwcXnSlZCdo5E03a238XtcjNyvF
         /L++/lp6ABcR6DNReG2cJN2UNXaAfYFdE3sneCxtVcQx/NS+j69ndBGEujKxj916nu1c
         tMBW7XmH3rDcHPncycXATXoKgRGbY8sbYcjcmEQg9oSEcVdBp1etWUVwHRbmhXWl3vS9
         eEiJagS52ulroH0RE/UOKNB5VDvOzBQGwh0CMb2WJ2Rj6zi+Jve3TObfzli3IzV46x0d
         DIfxHj0eI0mB5J5CmYqslqo7xNBgFPaLuNWTXrESiM653zWDG4ruKUUglC+r3ChRzQsg
         x/ig==
X-Forwarded-Encrypted: i=1; AJvYcCWf0b5rUnLsiDMQXS+ClZ/5u6FU/EQducRRwO/GKLlOQcnekV08Hlp6RA/jz/4mXOxVHZ66etDm0R8k@vger.kernel.org
X-Gm-Message-State: AOJu0YwyeT5TvC8xtvD5JO2RmBOOPAoXjQ4yWrOv9e/hMz+ANaPEHH9n
	rSPT2u4k7GlVWlGOnKK5DxygUL7R6z5CrpmNNsIix+jJwlvsM401jLg+75W3XOZZu56saCFA24p
	4tfCCBl2+M9XYW/Odq6Ltyl3n28Dk92jXFUPfefNHADvrWzjripCNbZlmN49PtrMKp+wu1w7QRK
	YaDA==
X-Gm-Gg: ASbGncvtO5T/qJdO62K/8ia/J1pxbj83fMUewnZscuzP6RQFCzK44K5XgWOWY0UuX16
	mW3USxI21IX4/M2Oqho372iJLH81hr4t4nzpCRM0tZaq52fMz+ieWJWbY357M/NLXVgiQ8eQIhh
	NVxOO+Cd4Aa4UM3/fzxON/TXeJyidZtCWgNYpxSNBK4G9R5j8iWedtrsTpPbmyCAqDgJ6XRbZU0
	ZvsvJKLzi6eDGO4IRPscZ+FC94Oi7uP83E/C3nK5ogxqzKDA6QpT/xv7l2L2neLY5NKscuB/D4b
	2lNF27jvOSY13OTpGfjpXBD4Qap4o0ALcTvdeMkI8ep+zZo1R/Iw/Ba9GzfexSDUxFOJVyqgOzG
	5K26pAJ0bl7fPaxejUxkTS+HutWY=
X-Received: by 2002:a17:903:1a87:b0:234:ef42:5d75 with SMTP id d9443c01a7336-23f98172251mr31235605ad.20.1753253059826;
        Tue, 22 Jul 2025 23:44:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFVH+w80Ld1jep2IXncJykzXgw95JBuzB7zrCNRM6xwTzer0RyGCP4PzDfAs0mSYUYgo7b2A==
X-Received: by 2002:a17:903:1a87:b0:234:ef42:5d75 with SMTP id d9443c01a7336-23f98172251mr31235365ad.20.1753253059416;
        Tue, 22 Jul 2025 23:44:19 -0700 (PDT)
Received: from [10.133.33.46] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3bdfe68csm88659925ad.183.2025.07.22.23.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 23:44:19 -0700 (PDT)
Message-ID: <67ca3b6f-3cd3-430e-886a-0443f6d630dc@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 14:44:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <0f9eebfe-21f8-48b8-9b49-a35126aa6dd1@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <0f9eebfe-21f8-48b8-9b49-a35126aa6dd1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: k7SSXvPJWLT3NsDsrl9G2s2HmNG_ZWJH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA1NiBTYWx0ZWRfX4PzrcwinzZQP
 +J0vOz6ytspdKHk9yGuRjCuwRmvao8C8lCgUR8Aaqqc+3Zsem9buo6xouWi2XphRSNGr79Hn5ew
 999/dRaHcVboCP/zRKnPUEB/oV2r6UGAf//FPPIKy/FnajFXr7bf1kQYbTJ4pneEN+TQxY5Uock
 phkr4EPop0+VAbH3YrpGLUvEbbZfPg/sp9sHfVmE8XGeortNVLIfpQB2wndTNEMozsvpEcKaYXE
 xri0FI55MrStMpgQh3tP54cgb8Bl01Ra6Kr+kBA+CocTQDF4tye/1u6pYUMnJfp1isgUYZWad5l
 8qHdtJRj/cy0iu4sbuj/IdJQ0xSUjBs5B2fkgZnP7sD5vWppIYUENDEmi7eo9/pwSzpvRzQEp1r
 amKICd/5mj6sAqAtIPUorP8q7s2puX75jM96HT64K/dKSPtg2IBKdw4KriY83WrMVsUoP0hD
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=688084c5 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=DGOirDVRF9kFrzJQLnUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: k7SSXvPJWLT3NsDsrl9G2s2HmNG_ZWJH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230056



On 2025-07-23 14:28, Krzysztof Kozlowski wrote:
> On 16/07/2025 11:08, Yijie Yang wrote:
>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>> on Chip (SoC) — specifically the x1e80100 — along with essential
>> components optimized for IoT applications. It is designed to be mounted on
>> carrier boards, enabling the development of complete embedded systems.
>>
>> This change enables and overlays the following components:
>> - Regulators on the SOM
>> - Reserved memory regions
>> - PCIe6a and its PHY
>> - PCIe4 and its PHY
>> - USB0 through USB6 and their PHYs
>> - ADSP, CDSP
>> - WLAN, Bluetooth (M.2 interface)
>>
>> Written with contributions from Yingying Tang (added PCIe4 and its PHY to
>> enable WLAN).
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
> 
> As pointed out by "arm64: dts: qcom: hamoa-iot-evk: Enable display
> support" this is incomplete. Adding new SoM or board is one commit. Not
> two. Don't split board DTS, which is already prepared/ready, into
> multiple fake commits. This is not a release early approach. This is
> opposite!

The inclusion of display support was not intended in the initial patch, 
and it was not ready at the time this series was submitted. Since the 
display patch set was not submitted by me, its timing could not be 
controlled. If preferred, the display-related changes can be merged into 
this patch in the next revision to maintain consistency.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


