Return-Path: <devicetree+bounces-236634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1000AC46046
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF9643A2DC0
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01D1301034;
	Mon, 10 Nov 2025 10:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D/MhN+5F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ceG2CcIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FD523D7FB
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762771388; cv=none; b=mVsRr+4VbmWPgWCB7oEgIU/iavgS0QLdY/JgxEdqPRqj66WhebQfQPkHjoUnNKGA8X4dc89urTNxtP85fmasbmxiKK4fLgNmsBOZ0IDESxuMJyy7EgtsqWKdTIe3MSje0OVB2InGZlNFt3RfJddtJGfsd0tvErdPj/vnWe1V6y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762771388; c=relaxed/simple;
	bh=l/d4o3X8P1bYWlrd8hxgMx9JxIkugvcZh3aQV+PLkjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OYtaL1dPtAyP7UQYnZppvFiq+6akzrnX0NN5qj7k07eBBUs42wQGmFlcsvYptFaiRV4RF2CN/H8B7gQep9WtfbEhZjp5TzIpopyRLWj9CGDy7DN0MC0b9PBSOFV4ma+5hs++kwPwdRDX8Vfgwx0dL4FwMpBn1Se5xWdjcXULO58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D/MhN+5F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ceG2CcIf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8T3lX1494023
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:43:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eSqXKqt4w5CGKMXelCEmeHZsf36l7BOGUQpou8ggYx8=; b=D/MhN+5FBDmQwyrk
	yi8sgc/Z54izzyQvKikz3VpJaZAEosoUWlESfrTOsSbpkE7HwWTuuQpmgusrDQdY
	vbqd+7oqP9K97GOyzT3kEazUqnyODoaRT9E72MJDwkFGwZ2zin+TQ9qwcjDrkHPV
	ibm/DiITFTiA+r8bzgysLVaG5o2vtuUyvRMjlhtHXg7MdK2B9QtgOULdaSBwbJMe
	9Oym9tBjAuT4P5MAaq2v+uCtSSmDShgROhL4wpz7zmoqqp2dqr7ND7DOQDkFLR96
	44iX0YOEn3lAkp9LBanGb3QQeUP/80rAHKpjM8pyhpldsDaH2q4eCRBwXuQ2qdM0
	kfm+Tg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs7cf9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:43:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297b35951b7so51022925ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762771386; x=1763376186; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eSqXKqt4w5CGKMXelCEmeHZsf36l7BOGUQpou8ggYx8=;
        b=ceG2CcIf8uvQQcPAEKfdGoDhgIdALZL2S0OwocMRt3k0FZuSjjdPhlWq8GhhH9LcV6
         lVco9yNe4WIuKzDWbghF00pd9dE/QpibRB4v9L/IYPfBR8CA/NsrKg9pifcen4Rn3wsi
         6KBSbj0DapgQ6hyVjnpYfKqkfAbkcuWn3Y47qkxlBskD8LUCeIg5SjtC+Vgpnw8fgB7f
         e+yjGSqOLn0vgKxEupJXi0YRZcYv1RI5RLEBikYGzRSa4ohuwUaYGPaRnYT2Pi/tFou1
         sljOd/goIfqJPzwc/UXRJ4Gn9CW57e5dg5+jrP8RBQoTGyLqPYvEaDmU0EHqjXM822/C
         JolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762771386; x=1763376186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eSqXKqt4w5CGKMXelCEmeHZsf36l7BOGUQpou8ggYx8=;
        b=AQrRMgtpMzsjYSIxfVN2pKe4s+K6b2HSQ+jda8x2zHGdSRc79CVpGbe00HFxdjYmcs
         k1Q1bDbYvOKFnF+fPFfCQUF/mK3OpYEXUu0DJrlub94hxsR8gIglBUyWmshwPirTf0cn
         h1PXUyEotI1w7BM0gsognlhcapqLZbkMDVPURTzNKMW6+N2WtQcP4GuyYD9CTWrRb8CV
         mZdkAAcCuvybKXrhCtiGfCPVHJ/DiqvWvEZZqdU3R/0HSkT/m5lNWznJvN1CffCjSPf2
         fe/Xioq+TAce139cD/N++0Sq7eezWSdHQv/FlLI2niv1x3yvOXvpJxYOjYpr+pQGHQ4A
         s85A==
X-Forwarded-Encrypted: i=1; AJvYcCWMH+nEGY4gzqXyHb/u73X02PvZ0lts/X9y+OF2Nx8hrd0o0RbGLAzMcEdxV8cDLx29HA5J7OITQ1lw@vger.kernel.org
X-Gm-Message-State: AOJu0YyydgUb3sIaILvZ23lR8VyKDjVMW2QezbdKVAwz67Ns93r1rhNH
	d3bZ8Lmij42mjrkB4dd5QaJzmRTPbE1xFrKZ1GtU1hBzfSPj4z03zZgTh31ysRcpK/NVzZUNGfS
	9/EhJjWYfqASe1NosX10jDb/TQ7dL899dF1tYlhIWIoxromFRvxbccH2CqYFCCIe7
X-Gm-Gg: ASbGncuGetSJe0nhYq+7DCWRfqj2xYvfu/e55oVnsbKyT41ZFHiPsXl4wzDywjPPWXH
	8VdbvskzFkoodcs6PhDV6lyMGWkounIloe7yplbZjmOlo8F5UO/8F6AQePWSnYPkfCYD6uSu61L
	7XM7Fw7ryDsn3zKQ8hDcfYobchmW3vVnDFntvkxilursGNfjHFCWFSpkOENqJJCDS0roocF999t
	X2fY3s1lZYD6XnUl5skWT5Gev6hVdJu4/fIOCe27KxygWNe7hE7FrTHsn/KnnpcSPZHcLw4Xp8s
	PYXOl02jWsgTJcsplK0HOrDSaBBCvwb66CfkkBDnPpWDeapQY+cCogH3Xw6yAw5eQBmNMabJGb3
	lMcd4Kvdv2bX0QHBp+lr+7g==
X-Received: by 2002:a17:902:f790:b0:295:9a46:a1d0 with SMTP id d9443c01a7336-297e56df960mr102724465ad.45.1762771385982;
        Mon, 10 Nov 2025 02:43:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEF/4A52+hPm+KGskAyqtu2lioNjT9Bv0FG/S2i/1sn1bpC5Zjl0LIeTPyJfY/iBBpamPtPaQ==
X-Received: by 2002:a17:902:f790:b0:295:9a46:a1d0 with SMTP id d9443c01a7336-297e56df960mr102723845ad.45.1762771385447;
        Mon, 10 Nov 2025 02:43:05 -0800 (PST)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297ddde1e7esm82040835ad.77.2025.11.10.02.42.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 02:43:05 -0800 (PST)
Message-ID: <1d31c371-0b74-4584-9f2b-dafa76197492@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 16:12:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-5-a2d7c4fbf6e6@oss.qualcomm.com>
 <defc450a-1699-4682-a41e-59035bafccbe@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <defc450a-1699-4682-a41e-59035bafccbe@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TcsV1Myiu5Xln207EHcWRJb2iu5v2FGS
X-Proofpoint-ORIG-GUID: TcsV1Myiu5Xln207EHcWRJb2iu5v2FGS
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=6911c1ba cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=I_p1zpMzltXwdS2KmfMA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA5MyBTYWx0ZWRfX4uXMl4v0cd8L
 G2n9nS76Kf8BTq4QQdGNw41LPjEWbCIClO7aCgXZNtJgZ/D2OGUBMMIl04AE461E2A7jQd5liqv
 qpgCKQLAJ5i6daVaBTmZ6m6z3HcZe7oX+w9Y+uIEcp4QypYzuzHINb9sai/eprKNHOMC5vXHqVT
 OXQ3MjO0/l9QZuQMl6dHM2kt5dhTcWm+UASHqYeV7sQNW7Y5hzWOCxNAWtbRbsDIyIPPsRKtPdf
 uX7R134COv4XMDLPzn+2zo4SeFqQBqjratIY6JFmKngRT95kWiaRnR2UVPYQx3CBmpEXjITKn4i
 9azuWVb7F+1BeogNA7DKBkaKf4z2rmJWPQ0DoJtcjIOhvy91qtkVmplS+3sk1GprR0jtOAC5l6j
 9JRpJrO8NUQQOtDyfImuRMEiHIRrlg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100093

On 11/7/2025 2:31 PM, Konrad Dybcio wrote:
> On 11/6/25 9:50 PM, Akhil P Oommen wrote:
>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>
>> Add gpu and rgmu nodes for qcs615 chipset.
>>
>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		rgmu: rgmu@506a000 {
>> +			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
>> +			reg = <0x0 0x0506a000 0x0 0x34000>;
>> +			reg-names = "gmu";
>> +
>> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
>> +				 <&gpucc GPU_CC_CXO_CLK>,
>> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
>> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
>> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> 
> Is this last clock really necessary?

Downstream votes for this. So we are aligning with that.

-Akhil

> 
> Konrad
> 



