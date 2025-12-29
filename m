Return-Path: <devicetree+bounces-250184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 053C0CE6BC7
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57DCC30078A3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6DC13112DA;
	Mon, 29 Dec 2025 12:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G1V8Wyhx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GyTjcnje"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3632DAFCB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012117; cv=none; b=SPWb7lYT83WkjjBAr/gmKnRmTvD7HhmAjRnKoo5q95g0PWfxrgOCdxq9nWr8siiNXU1zJy3eAxzbXraonw9d0t4//VpSHRFuFRCXi2T3tTVRwkabgrs2h71mPnx5GhS8yG8+ov4iSWA6iuabQ42DNLGctUolyBEPpP61tFqsP3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012117; c=relaxed/simple;
	bh=ySJSaV/TP0anY8fc1zVTn1lt2YQBIWDmDxnI9r9VWkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S8hAc+XNvYCPbwGR9/fIWjmM8jpZ7EKuhNKs2/ZuFekb1hs/5yf2YfZUhkPgVHNwDfTZkr04nXuPHN5Ru2Mbps+wRCp1vV+vBI2idIxH2DCjVSO0Zj9UPO2TC7gQABh/QnqeoJzpOgmzzBU+IAnEVqclmDX9M8txccqXASdeMsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G1V8Wyhx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GyTjcnje; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA57nZ956496
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:41:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x5AX8MkJVQzhBiutF+PoBNDlofSHRgFBzjF/RjLrZRw=; b=G1V8WyhxOl7F+OEZ
	rJJO60qNcMRmeTVjM5IgrO1od1LSgBoyTdFU/YU+Pht3deAeVQspfowyWGFXC041
	EGL1QeD+cAo3BwEoIGcb6kc6XvD+own8zTClxB1phFxFi/KFVmcwdxQXv+BzSB7R
	jXjZitp6rQ9fxOPLoZxYa/oMVK9Jeq9fFUzI45kUyUMVb5n+dhpbFN3zx5iD62tf
	ZPPIMMeD6KDxn5Ax3RvrSUbLM56o1vD5JkQOfsNwwVkFxkpdMkz13NStGAOK9tYz
	rmSKNLaPTR+q7U/GJQfmqSQjWl7sQR3X0anp5nD8inmQi1UrdLEGQDAFT3tiWejz
	S442YQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1894w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:41:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f357ab5757so41527171cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767012114; x=1767616914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x5AX8MkJVQzhBiutF+PoBNDlofSHRgFBzjF/RjLrZRw=;
        b=GyTjcnjeH7jOqVEkWYe2KFggemQcwN9lZ3zNBdlCkeYmBEZw6wYtdxPor/lZajtwMW
         1eZXX6PpDOl+HG4cNGjuYhtmnQTHLPkXiZ/LK0sXloZkCltY5oPrtbw9LUCPlXnf8Q21
         oOMG3xOCJ+N+5XOh05ARtiHBCzRmx8ElaWiPPk09S8W69hy1ua415xMA0rW35PjI8ZTo
         sCHGpdwFXleJNFYhWDgMEuff/WSev0emH6F5g3W8auX+1QDl2zQ2aqNiRXMGi42G3PCM
         cyolT5k5DLRisnkJxRMEIaoE95BEEURZJd19kLeiWGliMBp+YUvYO8C1WQsG8Igp3pYY
         MEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012114; x=1767616914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5AX8MkJVQzhBiutF+PoBNDlofSHRgFBzjF/RjLrZRw=;
        b=fYxnLYlFYzJJaP/k+iXhLuhQzbxBlV048Yf0K0vfegFbcldRkCMyvilssUMjRmH6lJ
         olVg7Wf3cl8TsvM2TodanRRZB0H8TdiF/eMDOckuMItk8P+am2AYOnnnOV5Q6GjDnWxV
         274PcljfQ1oKPJ+XuVzCr6SPQ0Qb8YKA1uvpKSzBo8mNUIDhVjDz2JO0A9Jrg0szQUan
         WIDzGIY4Ox7cS1zNcNLvryrT3mE5bcARWRmylVp6+fonlGhFV/WlPi1qjxltfpBpDoEc
         PvSaYWMopwvssf4uApg8HTCiiMQO+GNsQ+ISldg2FLccKKIp98/Bi2CJZVXl47WEphXY
         xFBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjeForhSv9Q5k59tTlEJRhWthQ5V3ap53dg9vyTZUL2oqOIXqQL2ntWF5Iox3MLwKcry5xb/23st9a@vger.kernel.org
X-Gm-Message-State: AOJu0YwpMVA2tmhnMvsZoEeJHFtmzNQdG3W4uYLJS0iaPQ2gp/e8flh4
	uf9Avo1vS19JC1OonPd3HcH1PBDOfHaRqy4ycKNJFWWPerUOTG3QEFrubFMio4005lVtWTGnmdc
	K7FG7q759cPrS+DHWynMT74aKmnr4Eap4ouGESKJH8JJjWX1JYgu/jVU9wszlass1
X-Gm-Gg: AY/fxX5kYkV75gzEyg30BgV01lKFTqddr6xbJKD8kMm48tpoOD7xmMy42+pLsRJCQ3O
	ERAaoklTfYCv8XFPBlCmxcG/A/aCCd1RwtsrcHze3buTdWHwKpkoebiRjMzUJEPCV87zUB3uo6u
	XkCLfnWyMv5oYRVaWAl5q3wUxxWYZtbAGANKvXbL0qHCuCa2VkB8j+T88458Hv92KcmCQibWdSv
	RrUPXxjKsG5YeNjsU5C1aAAb7u8k509b5/C2LxeWsanUhyBVbl8IUiltelnz25XO8PU9M4f/PER
	2MogOidFHprf3tFT87Z4Hu5BoITMc4Pfq2FRCs2/uDK/aE/YhWBLoZsl6wyO6e3vJ/RIP4kTzMK
	mA/Y1UHmYPCzQM671dEsB49vEiTNch/QGdqW13g/pAv2I4kD4Qh22DXMDXpH+q1Wq1g==
X-Received: by 2002:a05:622a:241:b0:4f3:6170:26f4 with SMTP id d75a77b69052e-4f4abbc06ddmr322148331cf.0.1767012113930;
        Mon, 29 Dec 2025 04:41:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFn3sDmK0QlQaht4qLbDuOtAHjPWD06bERWul/rbCDqBGD+bR43zWzYFNogbwkjzmKnxOAdsg==
X-Received: by 2002:a05:622a:241:b0:4f3:6170:26f4 with SMTP id d75a77b69052e-4f4abbc06ddmr322148061cf.0.1767012113429;
        Mon, 29 Dec 2025 04:41:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad1e6dsm3364893666b.21.2025.12.29.04.41.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:41:52 -0800 (PST)
Message-ID: <e2f0b92b-d880-4de7-a708-c0de00ec69bd@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:41:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: agatti: Fix IOMMU DT properties
To: Sumit Garg <sumit.garg@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>,
        Prakash Gupta <guptap@qti.qualcomm.com>
References: <20251229071258.456254-1-sumit.garg@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229071258.456254-1-sumit.garg@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Cdafa6zcc1TUAMO3KjGWsrS_usLfeheB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExOCBTYWx0ZWRfXzSYIjChBUFlU
 r9mvIGZ58AdttebeIMyz9UDJVgJQ9bmF7X/wIpxAbugmtduntPjucl8AJy8QPEJXiLMyTrEvtxj
 pBp491h8ZzWZccQ/As6+1X1aI0Twumxnuyoi0K6qHHlST9RFhFPdUFtfTblsEl9rZmp1m40yL2n
 SKBeecj5hIoEle7F2bs+l+ykCUcJZ3yBc0sVBm4AFXw2NrH6KZXU19r4ASRZyumU0P4jRShinLD
 CfVQn3xmzho+XH7w6+v7IJLB6flXeQt9a4JJerTeouJSChXQNBhdxLjSdsCuseFikgvz8MKfmg0
 MrNahi2ebATrg5sMEkWJp7U2DGqAzVzNZsjYoVV1UTjF0jMlu+QvWR4vxkwYKaN/8bssBUdy8UH
 wnlBB5NTcsPC6etxQUw45n83nTWwJthRjciHlPNJ2AUU+QZNXwvOYb8LEqpXGyI9a2ypSpYlZM6
 UQdGl5vfCYGVb9/RhWg==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=69527712 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gEHfgoT47xnI8piDJ0QA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: Cdafa6zcc1TUAMO3KjGWsrS_usLfeheB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290118

On 12/29/25 8:12 AM, Sumit Garg wrote:
> From: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> Fix IOMMU DT propeties for GPU, display and video peripherals via
> dropping SMMU stream IDs which relates to secure context bank.
> 
> This problem only surfaced when the Gunyah based firmware stack is
> ported on Agatti replacing the legacy QHEE based firmware stack. Assigning
> Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> as a fault by Gunyah hypervisor which were previously ignored by QHEE
> hypervisor.
> 
> The DT changes should be backwards compatible with legacy QHEE based
> firmware stack too.
> 
> Suggested-by: Prakash Gupta <guptap@qti.qualcomm.com>
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> ---

This will need to be resolved by something like iommu-map anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

