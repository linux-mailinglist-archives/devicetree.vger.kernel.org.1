Return-Path: <devicetree+bounces-241568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D92EAC7FE8C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFAFC3A8221
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02611274B26;
	Mon, 24 Nov 2025 10:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jZIkwCpG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="foFyUoNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890D020125F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980340; cv=none; b=KukIzJj0pHRgQo/BGP2sss5WGyODBbMXvTYGKW7c7jfchgtSHRvJghOT/1Dm8it5iV8G2pkwOID1Yu9Phx6cJA89zEwPvWzz2UfrlFRP9hS/lVVJ6WCtXu9EXlHY0B728RSxmg3aU8zkjaPprUfzEjmS1ddy8Klz/AVCnc/rwmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980340; c=relaxed/simple;
	bh=H0gmUgIaNDK7snVAGPyxu3oKkqTgDcKTMDEoqvWHH5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p9hUkREqRWHLTGASrZluZAQhmJYDdsqF8OaRlISK2KPGIub5dem5QH8h6Bz7WrK+p64aSs22TDocbbSRCMP0h29al4g6so8LoM/g8i0rTlO6Ali1+cYqMxUzqU4LVPqvjdOJbR+ZETP7gneHkeidsEFkfnoEvkyCmkMd5tor5y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jZIkwCpG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=foFyUoNZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO88wbs3820818
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:32:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GwtgMDoRg/TWKgPlmeBxjnlKslodaTrqnfG2tnJKdLY=; b=jZIkwCpGc+Nguyao
	FTnGlGsHHZQRkakevESdVP8g1TyCCbyJJ799TNrEI1/4UUgaataKK4SkgnAn9WqM
	UhCqRYgae/B1aBM+nRdrUvJFMxtHteER+HTq7cisujakHFqHn2Gc3FEKFFjlnwS+
	fmKV+fYGXqBHuVGCzCmMNTAJ4dga4THz0yLEE53HKMlWwrIaBVUakmkYzT+COc9R
	IA31MCCnGUXT6r9249Bsq0vFKHeD39TjDeAinUFZljuiA9L2HijVGBukNg8O5Fnc
	wiHOWYiO5+GO5n+SkL6nFeleW98sW6HUOoQKayqMh+Xzzn/FZBs4UtKsX9qQoBwc
	9DWD/A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amkknre7v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:32:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b1be0fdfe1so177095285a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980337; x=1764585137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GwtgMDoRg/TWKgPlmeBxjnlKslodaTrqnfG2tnJKdLY=;
        b=foFyUoNZUq9CyizM+xu5jxbjmu64eutsvDl8V654NIk6DNllgp1o4ZU3ccyCZtsste
         EIAyWdIRAad5nAX1IJ0RmOMzurDEhTwiZjFcomwOIutrzQsa9zN1GkeMZnvLPopi+CMZ
         td13ZOs2PLxaHWtp0vyDQ55P06+M4IYrJ5hYvlHvfNsgRagba9lRanhtnjzzLkM9mglJ
         GCRLrkJs61Sq/TfpcKrtfI+UrD8pSxDaCBB65DV3D+fa1hWz+gJB6s9M98KQp4PTVx2a
         iDvxMd1fKmGGHEhx8l8YSx5+RAel2IqW4h6Q896e0jzNkEZXeoPpzpiNtiHitO9bxfLl
         UgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980337; x=1764585137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GwtgMDoRg/TWKgPlmeBxjnlKslodaTrqnfG2tnJKdLY=;
        b=gFOV9V7shr2FbjUiBEi8ZAiMlb6EJGkCtSu/j0gC1ll4PdUTto6/cy0uSJou6SPv3V
         I4f66k6iWx7F5X0pE2v6drtjmeWrGOBtoSb/CZEr8ztdT6/LOI0XFDGHPav/MIimaA3r
         isathyC/H7E7uhaKFGdi/BQ/80kyCVAtKL0XMvCAVCEVWbfzST/J2PQ2A5JweWBtgN9T
         yZeKzzIoxrM+Z27kt/ThphRsJkcN17EAXjptwSb95iwClOZcyQ6ZTyFrEiimXeLUs0bR
         q0wCvDFBLBM2GlWuQII7Re3YkhPQUd7wDDHnPxyD4GE7Ii1ACa5/U0xXD0oZxD/nTsE8
         23WA==
X-Forwarded-Encrypted: i=1; AJvYcCXgQF8rfln0GHU3//Hb27FdvNxp0Wb67sOjQcQX0mGzoU3r3kzJa9W0rS5Gm1nQV65hdO3tlUSWoQ0J@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ2RmJInyvXR9Q7r+qvnUC0V3E56vbCL3WH6fdMaJNGUOC38+J
	ma+f4no/C9szjyWTvqcXdJWXwgZ4Iw9cey5t6Onk7tZgy1lMpeozd0qVOoXOB9gI0y04ERxsnC9
	HK8rqx/3kbkWKNJUSxrusQ31ZcK68TXMUVRLK0zYhsm1FHP/HJDmUqGN0Te7cZv/j
X-Gm-Gg: ASbGncuNFkDg/vEoz0qeu+ge170rin2u+97zCEtsOdDrg950MccQKBl8TwRTV7ATdjg
	2XjGCZG4kriMXfq2gY28dP0dr7FGpzlXCcYaSydd8vMi9fr37PAX7RlsIi1qcOfCqrLMVH8UcP1
	ogEqASYYA2ZLR7FsM+t2f0l0pGZGcp86fsQAt3zQDuEStt9z3r4Fod0SGfCOmf7C8GfrWuO7jNF
	3QIBfUfp9uHOYB1VQOLdu/boKj754HPEz3HDrfWTkPvHcT5TpjolL8E5XKDfXtpDbO9Wwq93bgC
	idvfaIK3JmVC9UK/QEFdH7jtWILaHD91xXLKpupSrzAm0MpP9RME03e/TsFR8Zzs4NYAjZDUWsj
	YyTuiwqJVmoZDpIJzF5/hobRETCpuUVi5v4VRd6Q3Vr57E6eP990GpnHID055Ga2JuOg=
X-Received: by 2002:a05:622a:1a95:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ee5b70f038mr91463121cf.2.1763980336828;
        Mon, 24 Nov 2025 02:32:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7EXf2sm3sIPzcsj0LF8zX8qENsA0X5O0HEah9Q1xscDCvfKjiRnQHgdlzxjDck7GOHcgMFA==
X-Received: by 2002:a05:622a:1a95:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ee5b70f038mr91462931cf.2.1763980336427;
        Mon, 24 Nov 2025 02:32:16 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645363ac996sm11657036a12.7.2025.11.24.02.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:32:15 -0800 (PST)
Message-ID: <e3a4dcdb-953d-4d79-af8b-60e4cda345bc@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:32:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] ARM: dts: qcom: msm8960: expressatt: Add NFC
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251122-expressatt_nfc_accel_magn_light-v3-0-78d198632360@gmail.com>
 <20251122-expressatt_nfc_accel_magn_light-v3-3-78d198632360@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251122-expressatt_nfc_accel_magn_light-v3-3-78d198632360@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6E_lSGxIHhhirCl450RrStP_4oWKfRqu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX7dh1qStLCR1T
 aeEzGCprJTAh0Dbs38+4spiTXr++z50EuczhKgf23vduhycLgoiNPW8ZimUulCPFNuajDFSiGNk
 FfncZPyA3dxviZByS1cIy5gem/HhvHr4KfrDbcsdyQ7cJNVFoT2ad+BVF/4TxeZgVPr8MtPX27P
 m5mTL/1Q9JaDoQeDJiQSCJ67c5kvBNExkHoCdYyRTLn2NfQOag/0iEb35SpguPyItw6c+2cPzyL
 kEvH9R04uIG4Lh+qUh53Knl34IKC9vXliH9bnVJyvFhv6Ndztm0IJ42drzMrAkcN+4EcBUC8NwE
 LlYGbqHtJO6y+MysrXnJAVFIhPjVyo6PIt0VKeT+daE8lX+jSEv53Bxt8Q5SSYozB2YatlrZ1ge
 YdyAGfahHOT7sjMlqfgAG/3O1UKyRw==
X-Proofpoint-GUID: 6E_lSGxIHhhirCl450RrStP_4oWKfRqu
X-Authority-Analysis: v=2.4 cv=B8S0EetM c=1 sm=1 tr=0 ts=69243431 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=HeSRM4ZExxmZ1UROd4UA:9 a=QEXdDO2ut3YA:10 a=p80W13QwkFgA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/23/25 7:44 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add pn544 NFC chip
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

