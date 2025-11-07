Return-Path: <devicetree+bounces-236024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE2C3F546
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 567BE3AA9FF
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB0430217E;
	Fri,  7 Nov 2025 10:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ilk+cwmV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VDZ7rm2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF632E88A7
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510073; cv=none; b=UW3uZchSZpzN0A1S9zsUoZJeDGGcinUkeyFlgdyR7xHlm2Wr82Y8QCnvVGTE3GksBQP4eV4VJ6lHH52kQijsE15c/zufxvvFYaYNZIQrdgoul1656WVGUymnJm9CjNT2YWNsj24DeQ1JmH8rItCXgJO2SbNeUgM8asYOORSdMAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510073; c=relaxed/simple;
	bh=OoioBRdJ7ayPhGchhr5+QYzbg9isNoezQzYCRq+T8zY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sz69Yq1yoG2KviLFj3l6+XTPQGNOAdeO3c9gQwFif36quCMcCu/cBhb+jArDQN6MHaEeFOX5tfBWbZ1YIROIgnmm4yGvMQjrFi6DNP86UtxvbA6kQyJYN7mPQJyDhXSm8MNqC6ANmH1HnYifnf5eBuYddw1EMWx88RI+g9NPn6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ilk+cwmV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VDZ7rm2v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A7544k12281961
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 10:07:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kJ+iBILZ64jTRpvV6uZevaV9Wrx2/u+yijmHHeMfNkY=; b=Ilk+cwmVzBxLW6Jg
	Nxgyei94AeMuW6muJWmDB8kzOTk2cyjUiK5JgDQxASNe0xqscYT4Ib2WNBaRLVwZ
	hza0Qtjueky8umeWf9yleT4ciEs/UEf5s/OTt8Larf2ZW55txXEH6OjRm9gvdSM6
	UJp3NxipkE9cvL9mUuqcn4+ggJm4lrYMM/Me9Kyn6Wh9BNlGsmJjBk2cxVLnqjjb
	4+LgPlbvOsVYqCd3/2boY9wikIr1iQwkT3NBhHkOXqydymHNlAWmaiT7vOGDOR14
	rcKR/T1//4YPW1w+ts1Kei94QBQAqllRJO4As/e+kwa2ZEaM/Bf9vDtAr86QIlOo
	hxz81g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9a9sgumt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:07:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-883618130f5so24797285a.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762510070; x=1763114870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kJ+iBILZ64jTRpvV6uZevaV9Wrx2/u+yijmHHeMfNkY=;
        b=VDZ7rm2v+sUep30nRu+9K0AhOvEpP9SinFSMmotMNdYJVbScOkiNOSmxhgd6Znj+VF
         qz3uFJFM6YyuRtuxyf578Xv5CnrKe/6DNetBkYx4GIQl+3H5KuRPLUczTD7Z7344MPJz
         IyIy/vmGTjE5BvkQOZoVzvuw/ACXuySZPGPQLuejoKDNiVKnE85RBlY552YpRsCsMvh9
         /K3hcM1pX1/nXHPiPtVPZ/pCuScdy5sJcJPpPShrTK/gIaw4xpZn1iApKY1GWxdHyy9C
         YPaBdCmQM8JUryyYNZlSlJSCgrnJLjtV42vxeZl/mB50ELSDh9BXiSYpWZ5c3JZ/lu/K
         fr7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762510070; x=1763114870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJ+iBILZ64jTRpvV6uZevaV9Wrx2/u+yijmHHeMfNkY=;
        b=tsoG5JRfGUxvnDU/NCseQ6bzJUQ9XPpDK2e3+uefSvH852ecBtBPNP9Up5W4SsgDxl
         Vb4z19qBnIX0EuSeQJd0ufSaxeLocHq3YK1YjPWTVm+29W/isGN8pdsCXz5+jKpIsM9+
         0PRjCGDKr1lyti5p/NTNyFWCRTOXxOAPv9lz6Py8fVatDrXF5c9nXJ/UzLyW4/Q2Plj3
         r9TKGTi9vm4ONTsibJCfhons3kBnjIpQuOzt7DHq8fbmAxWAWtbdWbfe0CTxmZtt5J0V
         nq5PIgbgag8NkYKK3C4QRcSu++X9t5xG/Yfq1pkv3gwZkNUs+ze0pXX2TFh13S8iv/SY
         voQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdZtaVk1tCJ0aQxv+9Hk8Vq8B/P3/o1USc7stj2T0o/6R+wXumDvbyYZhEDw8yaCGdAj4NdsXE2J76@vger.kernel.org
X-Gm-Message-State: AOJu0YxJF+hF5nNepk4rkYLhdV4wTUXtqfaVXBqipv9aeaLF13wjztAH
	PoDnWcgrWcPIHzbsSpFCEW3JCOQiXZ9OSPDtbGAEcMc3gDF8M2U56QAA7Zht9H6n1mZdlmyRPit
	rDJ20BUPJ8Slr+hVBavSY2XQj4p4FztbETTmtwPgGda1YGzNF7+gCxtG2v6sCHLgYyZsMNEtV
X-Gm-Gg: ASbGnctaUgk1zwKgaYEekZX62OI1Lp2CzYwNAEItAX5/vjJPNIv+yGrpEH0mRdGF2vA
	WDfmfbkuQF2sckEbhgBXsnCWQgBH2oMSA1rZlmt9WfVUz3O59M6p+jsuR55cS0D2A+NApOTw7zK
	cBKqqjD5iSjZUMHVfkDgl3+ZNQSba+JFP6rQ6EEBAhCqsXoTT9XH8Q8y+L6xhbtntGy2tG/c3t3
	TIQ8TzFV+8xSyfRuRDg+HwcjXirPYbPPCHOuVq9/YEndmZDxcq8hnMpEtxPRZnQ/vqsBs7/ugk8
	HswloX+FXbX29KlV7NqmuJJMz2lbY54pJxSX32/6RP2zVvI7apZJRhlZ+b8B9tGkT1eb31HVVdx
	myYpYhWJ+nUwTV9A4BZt5qTIHnra4P9Yt2yCiQB6U/msmkDxbVMo6grwl
X-Received: by 2002:ac8:7d14:0:b0:4ed:154:1a70 with SMTP id d75a77b69052e-4ed94a2beafmr20578211cf.12.1762510069999;
        Fri, 07 Nov 2025 02:07:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEyK4ggfkQehtvhhKEt881KKKlfwjNufjX1/wuhtz+t+4bUZka48cUEQa9PuQ0qSiIZ9mzqEg==
X-Received: by 2002:ac8:7d14:0:b0:4ed:154:1a70 with SMTP id d75a77b69052e-4ed94a2beafmr20578061cf.12.1762510069588;
        Fri, 07 Nov 2025 02:07:49 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa2510esm200008166b.72.2025.11.07.02.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:07:48 -0800 (PST)
Message-ID: <88cae792-b3a6-4b46-a87f-da5b1eae7bd7@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:07:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/14] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-6-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-6-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CdgFJbrl c=1 sm=1 tr=0 ts=690dc4f6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=obFtqB77FYecSGI9kvoA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4MSBTYWx0ZWRfX+zvRazQDKpJ4
 9/Taviad/mnyHCUZtXwuFE6HjANK5DTh8IEf4L2hw3WCeYraeWl2v0eoiJArfowNcWCg1dGE1oT
 AzmQn6Gbp/c/Y4l4SppLiOrg35QrGBjc5QBrddm/v2zrYXtwSiNZHutkj0bhfwvMqCePKXoP+GH
 puXGF2uX6vvWI3DpWvTFD//AL1TdQMy6gTGqNttniLOBLq9nLRKN4aeMfLnYhJGklpbJZU0ng75
 IjfGr7JMZI0lY8SuIu9C/3mImTB/kYA828FGK4FSAEMhDkBGLq5+0lBj287Oar2QwptQOTZFhRw
 v3EK9NlJ3BQNDv5V6IAgxoWuzcqw/0M5Qtb9qtqoJe2HXE0TK7Z+DeZ0EYgHwLuxgpywjy5NERE
 kcJNIsQpw0dLtXwr+lI8OUo4sl7gLg==
X-Proofpoint-ORIG-GUID: YF4J5W9S_0gdJ6OlSB1vbvfAmQbNRUMS
X-Proofpoint-GUID: YF4J5W9S_0gdJ6OlSB1vbvfAmQbNRUMS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070081

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> Introduce a new PAS context-aware function, qcom_mdt_pas_load(), for
> remote processor drivers. This function utilizes the PAS context
> pointer returned from qcom_scm_pas_ctx_init() to perform firmware
> metadata verification and memory setup via SMC calls.
> 
> The qcom_mdt_pas_load() and qcom_mdt_load() functions are largely
> similar, but the former is designed for clients using the PAS
> context-based data structure. Over time, all users of qcom_mdt_load()
> can be migrated to use qcom_mdt_pas_load() for consistency and
> improved abstraction.
> 
> As the remoteproc PAS driver (qcom_q6v5_pas) has already adopted the
> PAS context-based approach, update it to use qcom_mdt_pas_load().
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

