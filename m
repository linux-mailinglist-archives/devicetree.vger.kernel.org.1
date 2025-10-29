Return-Path: <devicetree+bounces-232613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6D4C19649
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E822D4F632E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F94632861D;
	Wed, 29 Oct 2025 09:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HZTLtbVI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="diWlTxH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366AA328618
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730530; cv=none; b=KfNu5CsgNZjwNKKILqY6jYL9Wc6215KCc2g9ofjthtAv+QTiFDv61ccsDA1H6maidk1PDNmKQ9mSXC/jZRynnCyilIXBnDvIFQdrd1RKDerFJ9slym7MYVtRZKn72QvKOZc7z4QMYDrKsqcRt02Dm+r+rc8c1xCyEYD8JQzyTH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730530; c=relaxed/simple;
	bh=NgfyWXD4ZMuCkyaN3+/uoeoSemySMrT4tQNuxgJ6Tl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mVya7p1l5xcIbt0SnKBi/OIeeKKuyj2BPXR8D8F697kFXtA3TXztfN6EVN/CA/okbADtQSdeeM/+kvmyy+VS2DU7oqETKdK9QfB6E91zj/8Epohs66Pj3VWoMkP5IA4Ja7qeYKSZ8h9CkWIoYD12u9ISioIiGgf9npU6S9dsZKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HZTLtbVI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=diWlTxH0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v7rs3755502
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:35:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FJeGESJ/n35Xq37cXnQAMlzhqerXJpjFv7StBPPW6Nc=; b=HZTLtbVIfaBwHupY
	1Gdt5SJCj7qX6I8zBP2cMp3lCgpuQh4uFGHmpTD3MOtoCEqeD5mbDUbMgFcVK9C/
	Qh6EPwOd3JmmWBopEa821c9asfvR62YsFGCHzo2+I8bordxus1H6wutc+ZZo9ci4
	eWQLIfPpo/hiHaeHB+TDn3cf2jP1P55UP9BlnbsB9ktNhsXKz4VBWnEnc73DmsiM
	nrXMwBI81mkw6v23ScllVWHIC+S3EmeQVXk2SoBRghcpfBwaMkx2gDrxjGjWiIzA
	Wj11JOM5iJrVkequeioJNMo8MWqFPhqoih3yuHcjcRmNBmmDcDdLYpCXeiIzN0cx
	5gQMug==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a0j0nh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:35:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e89f4a502cso214186641cf.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761730527; x=1762335327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FJeGESJ/n35Xq37cXnQAMlzhqerXJpjFv7StBPPW6Nc=;
        b=diWlTxH0oibIWIoCpYXEAb1v4UNn+AcydGwRWs34tHGNsH6Ra2GnRieDNm2xJkc9ra
         n0+2QalcIGopycTpjwCHpbnfeqdzcBcFxwB3Inn5m7Mdn3tfqJSnKzowfXFRKP9cYSRp
         mGJGgzfKm2P5hRTMIpBRXk49BWAmyYVhlHGNcTf+qN1MFXTU11PQURwOdEC6IPaq9Jdq
         c1aOgF1NUP2tWfbuW01a+PUvRtRAGXmcWDilYDGS9Lo4AEoB9nzn2zstYby+KLNUnoGH
         DSxL+RibRyhhFdZup4WTzEci2fv/nHDrWG+U1QLFtGTKNAvHC2iih/iLhzs/J3I1DFmY
         nCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730527; x=1762335327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FJeGESJ/n35Xq37cXnQAMlzhqerXJpjFv7StBPPW6Nc=;
        b=Gl+6B/TnS/JKaoiDF9xD+xE+tUbhziBUVz97j4nXMcQcOCJJvrnRnTg5EuM52HbQDT
         V5O3Rc6nYC5ZacPlHP0+mT0NCWCbudFjt52T9OLH8Vci7nnIS/mpLia+0PkZf0zKpQgH
         +HoHjKgI0Yp6qIE68e7+DHwTT2F3flE5aGu2ARUJvYdjX6yMNwmKX/6RdVnFS7gX2+sp
         CwupNDVjECRSufVT5wAdZcHoHA6p4oDX0Rms4HqHly8prFxd2oFbZnwp4UNdbtUewDuT
         QCAo0+K16q8n+Wo/1o22KaZhjjMFhoSDWgLui6c7LW1j5kRkIj4X9CrO+TGGDDv7/D1i
         WxSA==
X-Forwarded-Encrypted: i=1; AJvYcCVRpPaJ8WZuooGY323Ve2KyTUkbG93NH32J4DhQVRRMWWK1kO2N7Qkck+nz3ARl01S5H+s8aQhr0Nby@vger.kernel.org
X-Gm-Message-State: AOJu0YzRr2H+46YgxPjYbIyvLmfOFfpke2aq9cz1avq3hyF0IkX5ylHm
	DQ3GeK7vLbfJ8cJ61TF5GOmAmpjbk7fbOuh0y+JFkdbq/A3Tw2cUbqC9Pm0JQhpcZE/S6JKW9Dw
	kESMByokMcge5Ang5dV0TNc33GGvQXir/4WCf0CYhSfQQBhPHHHyiugaK4SGUiaj9
X-Gm-Gg: ASbGncur3w5XLCRdnj9sVSvdONGOXhLhkmbjw92hlH3MSHbGlReXLW9M5A7D+TriApZ
	oY2I3bJi9TO7iVZIqzIT+2wD3KP32/CfLb7fpcYZTWjAGGvpPlcEMeOfn/mablfu408EKmkjQZW
	XcMFcuGtB8sLEU4QrUbDqChQ7VymJ3KNcXv92Qi7hzuH1qTaKUEqK4PYBjGdBUZYK0iTrNm0+CQ
	/1C86KcC0wtSnJtiHpH/G38M3ijaMnvYWjgzbuTNOnZbn0XSpx7B/yOpDR0TFA1HejFL6o8rYG6
	UKqPSXCG8xg788/0qItlreZMEOXwXkm1FvjdqyNGCMTwJFoNroXuWXBK8ntbrjvNd/IfQY+4TzJ
	hlJI0flBoLDcALS8tDelZjk0FB2sGxCptd8Qu8V+1MwjZhJYwTVvkAjcc93XJvByIez97lcROmX
	2KRA==
X-Received: by 2002:a05:622a:56:b0:4eb:a2ab:4182 with SMTP id d75a77b69052e-4ed15b5970emr27737571cf.22.1761730527385;
        Wed, 29 Oct 2025 02:35:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrRwSSecdIRfs936+1xe5RDYK9h1uyw0BYIZUGcu6vRuRGwPaVc++qS+lMTWMFUdJMj22VSw==
X-Received: by 2002:a05:622a:56:b0:4eb:a2ab:4182 with SMTP id d75a77b69052e-4ed15b5970emr27737401cf.22.1761730526925;
        Wed, 29 Oct 2025 02:35:26 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941566452esm133254e87.8.2025.10.29.02.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:35:26 -0700 (PDT)
Message-ID: <51f10d4e-3962-4c20-9d5f-afd0ac3f598e@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 11:35:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] arm64: dts: qcom: cleanup GPU's zap-shader node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <c83079bd-ebd2-49fc-ab62-1fba08276cc4@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <c83079bd-ebd2-49fc-ab62-1fba08276cc4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=6901dfe0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VH_4oVhpAmBFcI_Eq3kA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: DQhnCiW8lylCJSs_tzjVQXVafEsK1UvY
X-Proofpoint-ORIG-GUID: DQhnCiW8lylCJSs_tzjVQXVafEsK1UvY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3MSBTYWx0ZWRfXwnHuaM0qAnDI
 +QblZUNiNIY31rkfyosUXb3kaCl9Qb9T2b77BgleJCvDNWrAvtT9yIy3WiYnybP6MbYQFIamcGm
 beqvM+7gojeTbxNo3eNzFDXbVT+lhYjZD0G2d2JUF5aZajef2a090qGxW3TALXLzzzTseBpyWpZ
 WMNZjHQ2ZqVgaLrHWLj0lJgwjbKoUWMrEz2qFk8Wknq0a8FYTrfaOhf4pGFTyFsPRsNfT43eN3t
 RXpWO5Yflp4UlzNgzGy1CBci8McqAdiWP52An1KPhFBmS/fHtaGda6IrlDsieVT3bHPOA4G4md4
 +vsB7oK8Pw1BTqKWDB2eO/Vw5DJ/qePuyxgnfSURg3oNb1DUfL9KcK4o7bh8hct1Ns4e0EO92/Y
 hya33xgrpjuzeqoL1UgGeygassEQhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290071

On 29/10/2025 11:33, Konrad Dybcio wrote:
> On 10/28/25 9:59 PM, Dmitry Baryshkov wrote:
>> Historically all devices manually defined GPU zap-shader node in their
>> board DT files. This practice is frowned upon. Add the zap-shader node
>> on all platforms, define a label for it and use the label in order to
>> patch the node with the firmware name.
> 
> I'm not sure this is much of an improvement, since at the end of the
> series, boards still have a &gpu { zap-shader {} } section, with the
> inner one not being referred to through a label, which reduces
> duplication in the single LoC used to assign memory-region, but
> doesn't e.g. prevent typos in the zap-shader node name

By the end of the series the boards don't have zap-shader{}. They use 
&gpu_zap_shader { firmware-name = "something" ; };


-- 
With best wishes
Dmitry

