Return-Path: <devicetree+bounces-246909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C79ECC14ED
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 984FA30319AE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9409326B755;
	Tue, 16 Dec 2025 07:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dE436VXL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SY7f4Wge"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB83326FD97
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765870276; cv=none; b=giSrVEhX+PZRuf1BJSYgaxGrD6/RCx+T2jxGHcQ+HmuvsJaodrvRzea1lDx+oxtRKkh/EmMMLVQ/5dHGrheT4eaFdXWt4VlvpOlt+Toohnn0uFkG1u/tBsWmzgS0IMcbGWK8L/IdwwfQyvZihW5hpwjjrwABMm4fVfFKsRdEv54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765870276; c=relaxed/simple;
	bh=KqXmHiakfwYzux5eMArMxc1YvDvL+58Ynaluota3mD8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u3u3ExYBLPtY74sRIWBm7EvnKBsRzStsSdzvT2/rhbFTIEyj7MYOwpJnK/z+0m/mVAYzAbmq57FB9SlL7z2iTwYHok+8+uj6L6RNn+Zn/wZhF9FI4SXtWqSAe37m3iIYaZSqNzDmxtSYmJ/pYTzXwjBLThYVA6xiFcBlFzmR24w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dE436VXL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SY7f4Wge; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG50fLM2282192
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:31:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xIxBJD1RkXCDnkjEznZGhIWfIGyUcYjFJZa2VKldCQU=; b=dE436VXLRIYyTNba
	+2sTzsq5fXW8fOFruRgP9eKwuU1A5ory1jv+r4useRCf9oM4tN38H98sUtiZipkU
	3p11v7UJqkz+zeiLMOgcMMaIpc9A4QE33De/mgk7GRpFVt26rQ4ZCh0+FbZAmOw1
	AU9Jyv+GdEdjLQU/sPwRWc9Uxbis3pc2u4tz/K0iK0qNZeWiHf0cMEUOq9LOhkPb
	3fHXmX6Yu23kpWFqnyxLo3Zjgp+ucCD2vIy1AECmPbr/JnH0VL09LBMLzDiVGIdz
	+KVek1X/nZCzwkvYKKffx/c7KIVeCeynFyB3qPxvWmY1SF7qEvTJAmTfUU/tGp4M
	TkKPuA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2peran6b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:31:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a089575ab3so40055055ad.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 23:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765870267; x=1766475067; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xIxBJD1RkXCDnkjEznZGhIWfIGyUcYjFJZa2VKldCQU=;
        b=SY7f4WgeEZbbpwZTUUGyjzWdpLpb1LodAhzW9Mo41Y7mkrorLFIQP5Q1zHk4nV5vbE
         b3bkIuS3yMN+DKWM2H8JhjgsLoNmp9moRBfcrnDawrAxWrp3aauwh255WCuuCofUSjb0
         fF0MNLjCOeePnWBTnyWSrD2TjI+4a69ljp5OLPdYWt54Zfetm+sC73/EEh8HXNWct6oH
         V1v6OQKumna1WOScspMO9l41j6j2f1tTyNBGZOPlhiTbyEmnNalKqE5xXFJ+Sd2g1MAE
         JBWSQrdT+eRYwjwTjQSWKRZ58QTDsEqGM8gW0MSwxJYuDzLVN2a2O5+L1xh2wPSFaLp6
         B5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765870267; x=1766475067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xIxBJD1RkXCDnkjEznZGhIWfIGyUcYjFJZa2VKldCQU=;
        b=oQFe+XLSZzURXVTbHYMvKwaJbTXfgLHrWJ7NHb8hIJd3ZVJPMlAyhL7gAabnK0IFH6
         y3wGubqSoQfOK1dfsV0pJmqFymoQMaQzl/M/DyBpVqsNIYQas8Ept5REMUdC+BKUbuM5
         sRFJWpwjela/HUCf8N1wMfZVflx9PKHR23wqiMajMHMF64NMV2Mi6EgtRd7KrCYqaDaJ
         covRE4hC+vsB1WhBOIqFM6eYH/fRp0RH6pteCsALgTtFBpG+7vYWHuJPF+eTXV/Agv+p
         0jFc/LickbavT3sF8v6Njk4HCKxD9XQA6Ael0qZnDcb4ss1/+TR11lCqX2yV2P9M8IyA
         rQ3g==
X-Forwarded-Encrypted: i=1; AJvYcCXI55TWttStZm0gIARbpPW8cJYpf0C350uYPhNBXJp3p/fj22AN6omdKlclwmQCycCMvSJjtz3Qry7S@vger.kernel.org
X-Gm-Message-State: AOJu0YxB/3waUd6aWOKXajjIQQN59kQEwOpSp/uuRNPgljfKHxE+rAgG
	bqGyWLsdr+vxxQzp8P+w7UmoAEsqG/Ddo4Lok7rbk3FlXpY3pZUdUNc/Yb/5XAHWAZGo08Wxs0z
	joWDv4pJur0xagU6zF4WGsdtAiaog1tuyTTHQzruZjoVlJUtpffC85T6Sj8pAzE6r
X-Gm-Gg: AY/fxX6x4d1p3hkhv04f/bT9A1KHuEpVrv1+Gz70rTo3ILK004GzDo90X7vg+Lc3rwf
	sXQ/cqlQJEhrw7Ls60kM6yWMKfU3lXqfki1VRnQuxflRXKoyM+9WY29NeMKi182hNfsVZqzlYNK
	ZGOo5YcXp20VFMXPHeqqJ2D96Sj90Mo/xUwhKHFqK83svMlhmYLi8Ktj6jqwVtX7jAQnr9bGX9y
	7llz+FEJXDLXj4dBUUt7u/kSdiZLFQaLUq/XOOy8G9f8lBZtUmsGMqaz1xu7Z+GVB0SIGAMZ/kF
	nDaCP/HQtnysHs/ypUgP+5HMu83lSgg6uXmnn4WasTOH1TtPlzVVBUe3euziWh0Kl+9y1b2OdOP
	atcGn6mq84I5fRDvInf3FgeViQwJ0HYF7X9G+EN8S40BrZw==
X-Received: by 2002:a17:903:249:b0:29f:1d52:1a07 with SMTP id d9443c01a7336-29f23b52fadmr134076735ad.19.1765870267265;
        Mon, 15 Dec 2025 23:31:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlu3eF+nq1irT8+FRIR/8xTU2Sc+nEboLNIwXG5OzetUX0379flKvZFD4RJPK0VF+9Jqis0w==
X-Received: by 2002:a17:903:249:b0:29f:1d52:1a07 with SMTP id d9443c01a7336-29f23b52fadmr134076215ad.19.1765870266381;
        Mon, 15 Dec 2025 23:31:06 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm4504985ad.61.2025.12.15.23.31.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 23:31:05 -0800 (PST)
Message-ID: <46cc0587-8eb6-4638-ad04-c05dcd56718c@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:01:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Adjust tsens thermal
 zone configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
 <zf5ztvnzaf6tplpjpytwbhktrebdnst2doybuubp6rjfj2fjs7@t2ma4ylx67gx>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <zf5ztvnzaf6tplpjpytwbhktrebdnst2doybuubp6rjfj2fjs7@t2ma4ylx67gx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: xymE8RwqjEAyKpZR8TF6KhvdWOWSqVOs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2MSBTYWx0ZWRfX6kWkaCSK6I6v
 zi7ebgxr3VlfPxG2m6ffy1CLTbm/yDiFMln0n+wKDQY03uq4acWtwpub6ZKNQd76cRTCkiOkS9V
 DGGCIVgHouwDvMMZr+/DqEz3BKX71Pqgwz/iKdIDoj0O/CzsDr6XOitR41+wo2u2WLy/gHgzL7h
 88lp1wSqHF3GyPGhXf/ob+4ciEIyiCeLe3YNNoqiwBfnzttZgOrmihZUsFw4PKhKh43sxJdO7rK
 DfMAocC2gAm4Ep4KGVfGD6Y7UcG0ym55gn2RoPT7uvWfWUMNBYMFs6n3DfYbPBPNhS675KLFiE5
 6IewsdYNFjsb4Qm8r3q5sFcXLv9zWWql3+9uhbA1SrSlq7/NQCuEjh6Ib42bC0AQaMU+ntdNDNw
 ukR68K3fi0PjEhc6oi6tFDDAeBosAQ==
X-Proofpoint-GUID: xymE8RwqjEAyKpZR8TF6KhvdWOWSqVOs
X-Authority-Analysis: v=2.4 cv=PYHyRyhd c=1 sm=1 tr=0 ts=69410abc cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=H-adPjGYz1qELiouFCkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160061

Hi Dmitry,


On 12/16/2025 1:21 AM, Dmitry Baryshkov wrote:
> On Mon, Dec 15, 2025 at 04:29:34PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>> The QCS6490 rb3gen2 board uses the same Qualcomm QCM6490 platform
> Is there a difference between QCS6490 and QCM6490 or between QC[SM]6490
> and SC7280?
Difference is only for qcs6490-rb3gen2 (IOT ).
>
>> but has a different thermal junction temperature specification
>> due to package-level differences.
>>
>> Update passive/hot trip thresholds to 105°C and critical trip
>> thresholds to 115°C for various subsystem TSENS sensors.
>>
>> Disable CPU cooling maps for CPU TSENS since CPU thermal mitigation
>> is handled automatically in hardware on this board.
> Is it a peculiarity of the RB3 Gen2 or is it that Chrome devices didn't
> do it? What about QCM6490 IDP or FairPhone FP5?

Chrome devices do not perform automatic thermal mitigation, whereas all 
other boards handle it automatically. I will push another patch to 
disable cpu mitigation for all other boards other than chrome.

Thanks,

Manaf

>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 334 +++++++++++++++++++
>>   1 file changed, 334 insertions(+)
>>

