Return-Path: <devicetree+bounces-236628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA444C45E4D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D157188CF7A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C954302CC7;
	Mon, 10 Nov 2025 10:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ekezcl0q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NPHspo++"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990732FFDCC
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762770124; cv=none; b=pQUiP3ZFohUMxP4t7tZ364jAyozlengdVr4hZSJhOKHZU52x+9nZBANt84iqKAJ3A0i/QRqXmaMQKqFetwafF/c2UnbGUg5bnfIfnox/ZMY1TRR9aiV+Y48QECqpfKm+0G2Ml1+1VaYJwrjMrcK65UHiYmn7Mv87UcafkaHJLn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762770124; c=relaxed/simple;
	bh=BYFGMXA/UXxp1mCIzOizUs/qzKuKUPoAJ3Q6wLSw51I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YriAKaZQKtYFLiN8HrlNyAA3e7hRSuS9qwHNm3uUMXb51+0YiZs+otKXlaLnE1zA8q1OcMUJ+ELajPPLSLI0h/EXmDnamnj7zN9XiG8SQghi60dVuWGd+hql7+f1FituOkXyXlLGi5zfNaaR1lxcwxr9lXzqR7vnI7VRsJUvdyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ekezcl0q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NPHspo++; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8smCV1811815
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:22:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4vgVa6+vfpuHHyT/6RavB+XSFElugjvayi2iI6sahjk=; b=Ekezcl0q9Lbj91vq
	kjEzJYMIIXuYpcKx88PQMDaK/dx5fmdm5SictKhofLHzdU33P3G/HB7E9hrn+wR3
	c5OcZXvuMG7C1U7gWs5fSMSfQfs02OqVoWaJZ4HJAz+nazUoCODEI2coYTaF5rvH
	EQXfS89a+4MoNpaVDTrWs79/0BCxbvdK8uX4prncAES82CayO+sjNIuJm4tm8jJw
	FQmhr/CTykqh2JdY0ubyaSI8oKov8DiPyPLpVoJodBQE+iW1vud9f76Ojbu5z9PJ
	lAOOEFiqlUCO9HNn6lKmo3rmPb8P6cM8d6qx82i5AoCAcn6az8sHBR69TRJaPqzE
	m0M46g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ab5m1hfxp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:22:01 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb4415a37so6484631cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762770121; x=1763374921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4vgVa6+vfpuHHyT/6RavB+XSFElugjvayi2iI6sahjk=;
        b=NPHspo++FFQX9XYCPVjZCGTMDBKQh+JbLr4dy1LpGqaPY05zB6/on/lCnj4LudMGS7
         y2JbP+pKX0vl1mS0H983c6XbVPBCod1XUuAaIeYLACCEAVbvnhET1wKz4TIwDQo27FqE
         Cet4k56+Y+ibO68njmemV7bro04wYJyY7fnNVOBuLHrzcDvVZFGPPcXbQO1iIsUcX9Xc
         AlRZRhO5fbD3jmVOhoJyMxtdvKpNnMtZEs4EQ3fzqLv5cxf1rIpKfkxQjr7Bb3kAlABB
         2Mr80OcPsSeh1sArhjsJMHRHQ5O9lOht/OAnUsEBCzxRYVMl7Z54DBV6SVa4dMp9Y5Q4
         NkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762770121; x=1763374921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vgVa6+vfpuHHyT/6RavB+XSFElugjvayi2iI6sahjk=;
        b=UyLGYdWmJ/yhJK+5UawFyjf0yzsKzRVnAHNa5cs7ej28gxZL7h2IaUPBWyf/Y26LTy
         mQNSClH9v8+7wRqQcbJl2+PXvlXSzqhHK7n1gd4Pw4FPl+riyNUEbbRRabDJsAYoETJM
         0N9XhlXVgP6eslxqsjwgpz1CvoI2X2Elg1rTEtByKeM1sbYBJdX/h8EQ2th0MorKYm+1
         30yeOneLKS4rldqEwmVGhR3GEYOFrfRM0N8RpxZ6yHwCtAKFb0AqDLvtp74kv5rWwpO0
         AXxobOnzCivvGdNI07zpse5AbxbT48Jr1geRk64IXgb9Kmxp++1K9oEt7A99Pvrv2dcd
         Jfwg==
X-Forwarded-Encrypted: i=1; AJvYcCVZnGqq8VxQG0DuBomj6JtzKBhFPQvM1uSCGFhxgciILTxOJgor6EaSRsfGBzfwNYRSnaL6+uaJvzAR@vger.kernel.org
X-Gm-Message-State: AOJu0YwPXv+JkZi7aCUf/xCdc/Cp9GyIIk1HJNAp3iAOVlGAPGDdFfZ5
	hiss52cZmMrlkzQYfSFVFqSJdoTuPqwGUqOdtMjWUaJ3mHsY0DbehUfbrVsuGT+JldXZzMpDMzw
	MuXKlSwpX1yQELLWxpM3TTgGIPpBmeeFpnqBqwuXESWis/3vcA4kJuv6L3ifa/+ju
X-Gm-Gg: ASbGncux/BTuhQR7qsrYfzmcmlShIU/Zgj8iazdSdGszh6911s5UmH5nF9GHS1uWni7
	nehhiF08tjGt7G8cdduAOfgTAZQxT25qREcxfFAr1URbA40Etu+KaCYWFMaM/cHYQoVLE8uWeUc
	2gARI2iJyjSxqvGn13CXDEnP6zgFTSeNtfZxFnZai4G2ZuJU1R/OvoiyFFD+y4HxD+vMsZpbOgD
	AIsEwaQSPInTiWsnxnG2hJTmb87TuScS/AhcnG53lvgFl5z4qJVTCSTlwJVU2bB1kU/Q9p5nPMk
	brZxPMlsJsUq8sdOosUZnSlL7Gvt5ZnA/F8WjFXH55hIlRNDLl4u9cSFruygFsoJNGowyeP4XJN
	iXxfr5BKm/JjxVX6WUt6SrVpmz6aERjOGeyMTUIhczh0ksXSB7IX9yniW
X-Received: by 2002:a05:622a:24a:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4eda4f9ab05mr68489151cf.10.1762770121016;
        Mon, 10 Nov 2025 02:22:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMZeSyWG1kpIQ0TUH1bX2pG4Eapv1I51CVFEMZ6ksXeC/t9idk6nZNtkUGmJLq10rhDDTVBA==
X-Received: by 2002:a05:622a:24a:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4eda4f9ab05mr68489031cf.10.1762770120650;
        Mon, 10 Nov 2025 02:22:00 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d461sm1104993766b.47.2025.11.10.02.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 02:22:00 -0800 (PST)
Message-ID: <55870352-eb6d-4cc2-840f-9de1a59ead93@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 11:21:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm6350: Add clocks for aggre1 &
 aggre2 NoC
To: Luca Weiss <luca.weiss@fairphone.com>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
 <20251107-sm6350-icc-qos-v1-5-8275e5fc3f61@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-sm6350-icc-qos-v1-5-8275e5fc3f61@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA5MCBTYWx0ZWRfX+0BejTkoZgRt
 8tknf4E8t/Abwnd/Xs3itQTVAKbF1lz5XCkVEUgT6csJ56/f6ZJLTk1VfKbQF01aMo4wZf/Tjbv
 g8SC0NyWhmE/wdrG9w9RMU28Yw010KnBt3rIIddS4N8/9iyGnqtqsDNjfg0iuPEvLQ/TiZac+w6
 bWay0j2Jz6UwAMAdIfloe0lio9y8h91ShZeilrSZnD/o/KfqjsUfg/0YbYpuAlNirZzF3n91Vr1
 aAbVQu3rsk6c5Kzm2EutP+pXTVj/NtHw07MOIH7c5Wl1lAtSag4FuZcT6rw6lnTTJW0rI/CQj7f
 0HxWgmwr1SSj5VL/vU3peTA3qMCb5MGUfC8OzMRIEPAHlQHMwECKEOWvbDOHrvQ/ty2TB4b59wL
 73k1OAeR9UHdKX1AOFfoZGgkixmxfA==
X-Authority-Analysis: v=2.4 cv=TsXrRTXh c=1 sm=1 tr=0 ts=6911bcc9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: zOCoSM-jt6hmEHndc7wWrZpSmhaMazZ-
X-Proofpoint-GUID: zOCoSM-jt6hmEHndc7wWrZpSmhaMazZ-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100090

On 11/7/25 5:08 PM, Luca Weiss wrote:
> As per updated bindings, add the clocks for those two interconnects,
> which are required to set up QoS correctly.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

