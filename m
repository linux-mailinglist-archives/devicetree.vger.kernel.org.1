Return-Path: <devicetree+bounces-239859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E1AC6A159
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id F3A8A2FD1E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1832F361DC8;
	Tue, 18 Nov 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kBQe1EmS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TE8Ys/aR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45873363C69
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763476360; cv=none; b=gjAZTINU8fL8gthYyx+fvYtrvC46hZ8jhVRFRCQWDBgpUfnV18Lu+Em01/7GPXIgPBLIUSTP5z215fBexwxaroIJLkuU3yoYdd9aSBnnCRB2/bZNsU773XZWEH5R1hY7VXXX6SiAp/ofK4910pl+CtHkVA+XzldLbsKQhb+WLkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763476360; c=relaxed/simple;
	bh=Z7TNCmcUKDQodXAV+vzpqE8OixNADxGlkpwNC6kO0B4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kaYanN6hDO9cE3JLLzLwQ8jsV/i/vPW/VSntdPgM2AO9tbHbY2eeRnEB9aFB5do/6LRYTlVd4wQkl4ifYQIOq0S0q5Vw2AlQs6QUOC5yp9hDXRF+WhIBokU9ZPbiErnl/k0GbS+yTrNcsnbbwJKoSOYU911etdJ9BwvmrHlBY8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kBQe1EmS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TE8Ys/aR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIED3bs2272113
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QAIyMI0KFd8UWpSda+gD2RVYkSdx4cIpdw9CMs5ONew=; b=kBQe1EmS4eZfWiOp
	vS4KnfiX/Im1sYqdVmgL2FYq/fqcAx360aEVuq5uiSoxJg8sz9b27OSwIjh/plbl
	l052yioUAPJiVKaAxE/od1QCilOis1Hz3Ei7zvPAvT+fbrtnaGVfWOj23dLFY/Xl
	D6AupSJk8NUVzoeUN/sF1hFZCjVIUD44LyvBaDIEy7EoE1RzY2Fbz4iDkufZCXBh
	G354/oPhw8m/CbMGrkZvt0AwchBU+BLg6dCClg+5/s0bc5jzbvSQ8ZhesB3WgOCQ
	phElRHsIm5wjPYEDuDCT8XirAOwtc2L63IAA0db7UAoi2AACGaOGQPQfPMSXNQDZ
	RU1AQQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrmha8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso26846631cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763476357; x=1764081157; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QAIyMI0KFd8UWpSda+gD2RVYkSdx4cIpdw9CMs5ONew=;
        b=TE8Ys/aRWiVLJdcphJZA27vvH0vX+28WOFFjooHXbdN13xKC3jlrPeM5bD2UMKNldc
         qX4O16DR2Y8bbR1ACh+yxaZDc/wLJ8i6xHtLWa1e3OvIzY94Xo2mMZ0ZD0JS2JQaIc5C
         Yo152469rje40L2LKNEjdpL9k2M6U2ZrH1IlWOAoMG4ixnwgVprcbJ+/iuLqmc5beyVx
         FHpamnYlBcCjkX0KUAYwQ6eLb/lPY64k5NV3LhuXzbTUKZ8NYRHx1HLZRujxjujVKSQ9
         Nq932S4iUcO+dpeRN8Px2GeV08AGfrWEZWJlD1w1V2wT1rqzQSfk5ox3aT3RoLqFYR9D
         AjLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763476357; x=1764081157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QAIyMI0KFd8UWpSda+gD2RVYkSdx4cIpdw9CMs5ONew=;
        b=k+FgbRG5LpuOKntxAlAcoee09gZaULILPMSLez8dzPS0ZfsqCYMY32PaBP6BgrGLLP
         2jubfYYCguZEdSshuSPksaY3+/uiK6toNA99Hn9tir2zgm6ZYoxARkZkou21iIWqjeW3
         cWogXblRao34hQdLMc7xF1/ypz+7YdtRAD1E6DtKCJDsZGemgqwy74ltyuaDRlxR31+0
         FtM/xmfBv6YL9DQTPXif5mNEYEu2g0PRFyHtPHTEpwb5UCvnELQVNxxP1O1bb5RaNShp
         +4y49MaUvwnnn6htkRUFKqHIuSdMSyuRni7eE7pW+Yj++zXr2D7oEW4iQEs68T2kzLr4
         NYmg==
X-Forwarded-Encrypted: i=1; AJvYcCVl2/TqVVoVlgxlNwpFrgryv3XJGGAOZDFSZbhpfwTHZFMyv6JP208uoVNO5au+McxgAfyWF/M4OetN@vger.kernel.org
X-Gm-Message-State: AOJu0YywaBYQsFgdlK0LcmKmJu/P3mFq50RheTe86MqeYHg2RoObh3DO
	0PfjHvi1pQoxsWi1CSLX25JATWdvuWAyJQNpESuWYirgtRBmkERLrvgzMwBQ+rplp3Kk8ekEMVu
	F1cv6OK+w0i9nCYYNGRqb0rUYR04mRhzeVELq7lN4wRBGXlxIrlpmwt7ohdtUSvdA
X-Gm-Gg: ASbGnctsy2adGa8SVOjBFJ9xC5HXx7e1oHKPUEpWRI2jjrWSdmBk3Sy+NlG06KVXNBU
	wYGXmFK1JQYmN1U7tH6AZpchCoriYtfGhKKh4gbPMZW0YDSlugy6+rQiZjnU/ep488JR/jUhRs3
	8UnuAi/YjcVUx9oWK0i+QoO6HoOzH4oncMyWB7Gq4PGh8wWoOxrLrIAbsDK5bJaY6QYWQC8KwLm
	oV8Hk14t2WMIsDqR+q8WM7BgiJphAGPLehxrTlVkk+GFZ6MU+2UkgHqBDzveNrinMkLmqPF6i0t
	FGUcNPsUBSwAxdWqi6vQLPsEFWxDtqUJA/1GIQk+/r4ueY27O40B/XgO8GrgxEHd+OED4DmsyO4
	k8qvnQdRpcjL6obrO6QmpzrZ3sv3VSUCst8waxCTzujP/4sxK3gdjqtcAI3lItMTukQk=
X-Received: by 2002:a05:622a:1a11:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4ee312afc09mr26778731cf.0.1763476356524;
        Tue, 18 Nov 2025 06:32:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGf4+eZtdqVkQt0VpyMvkBuqm4gm7ZauIau1ePIY6CR7MP6U6OvIeyjRN/1kukNb6rjk9yfmQ==
X-Received: by 2002:a05:622a:1a11:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4ee312afc09mr26778191cf.0.1763476355775;
        Tue, 18 Nov 2025 06:32:35 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a497f27sm12810665a12.17.2025.11.18.06.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:32:35 -0800 (PST)
Message-ID: <47933d5d-65b7-42e9-bef8-c6e28c80b90d@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 15:32:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm845-oneplus: Mark l14a regulator
 as boot-on
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Casey Connolly <casey.connolly@linaro.org>
References: <20251118-dts-oneplus-regulators-v1-0-79fb2f0f253b@ixit.cz>
 <20251118-dts-oneplus-regulators-v1-3-79fb2f0f253b@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-dts-oneplus-regulators-v1-3-79fb2f0f253b@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDExNyBTYWx0ZWRfX9zyBABhao5+7
 Q7U4ODb3f38OkjCKKFVwKZfmDyv7PrTBinfEsR9PhgWKn86iodhbSOaUh1Woei9IsY13VAC/3QA
 cdzaGc0ogbKphPIqrC3cb0iDGLOfs1QoomvrPFikhIQB+9bD1QVUQ6pWjJu8iSuNfmwCQClLUXe
 LVHxXm3lY0yBcyMuTvkaZfe3S4ugh/+pSnI9N8Zvc8Oksw3RVEKRZO35XqA0RewIFbCxEVDiu5H
 30aXFzOf762rCoxBQWjLzJFqt+T3IZlRw0nqqdB9TMyoyRdl4mi7wRzQSEKfHKqZ8/JwF/BSQLd
 ZzERLUoMT8MMprDDqpCB8Y7PVeeh1HcnvOM5Qs5bPfRdGIyCNtDMSdqQI/vbuVciWxAFD894l7n
 Soz2VOvRtnP52noxHKaZ9xWqBdzh7g==
X-Proofpoint-ORIG-GUID: 35l1jYVnhjmVrrehXSA3qs6mPjUIB2IQ
X-Proofpoint-GUID: 35l1jYVnhjmVrrehXSA3qs6mPjUIB2IQ
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=691c8385 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=_po-8MkxtPHzYxMzuoMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180117

On 11/18/25 3:11 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> This regulator is used only for the display, which is enabled by the
> bootloader and left on for continuous splash. Mark it as such.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Fixes?

Konrad

