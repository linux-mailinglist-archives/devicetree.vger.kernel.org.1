Return-Path: <devicetree+bounces-155642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F5A57AFF
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76647189304B
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8E51DD0D5;
	Sat,  8 Mar 2025 14:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lRaYzBAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D251C8606
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741444211; cv=none; b=pghj4pHcCMiVQbn2sO6dHbPObaGUMcDtAVOoKgYJO4HTwtI1CSvkzyixailKmoUtnaWzczu+Z53L4AvRwVBy1CgZthoxl7+7NX8bz2V+96jeVtdE7h2qhl7hAxEAtdl43mhRP7D+PK/gd/pHuDfXOzWmJuo18D/iWaZXOdxaiL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741444211; c=relaxed/simple;
	bh=F5qBzGxYOLt9eCgdLnykjzrwTu/UH8kucdR9MrrYK1k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VSgKlrjV3T+J0PH6YMBYXuKIr33AJEItzFPZtqrLWt2SAkEy4uwPb5QiEBbyAew1OCMstZ2xEXegKuGj89k/XMk6VgUpcmKyCiU7qxyAhYd/alvCNrnOUCMHuKCfUOoz1kq7y34Ai9I2u3guy0RiiK6mv9MBzmwi5aEYhFOD8B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lRaYzBAF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528Dn27g010813
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 14:30:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hiRrV2lDctabAYQ6GC4gGrhzwcW37m/6E8TpuE76Wg4=; b=lRaYzBAFRcrmmDJ1
	n2vJHuxWkLU2j2SFdypC+JDu0hAM6tbi6AqKAoQ9nclAaHjVBdWkTzzefGYhwUYD
	IpUdedjqFuJEKQRCnqSDsbJzpJlMLlHo5mA6FQXNRiqG7KMM4vVBm1H3CapLHiu4
	EPHUvqHgNVTzeU01XZDkSyLdovCAmNhl6LnC1CnHZM6QucABksnJWAHcT4qjbQv4
	SlCzx6YwcPwK7Ehnsq/6At8PMV7Xb0tL1/GsAoZLFXoz9MOtFGHNBSaLTUgGg3HG
	UwR2rOJ/Y3UzyMLZbSm7iC1lVjorzShmUyJ1NiNax2jkSfUoOvnbOw5hGs0km9Ry
	EHaR3Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6a8p8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 14:30:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3c638248bso55189985a.0
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 06:30:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741444208; x=1742049008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hiRrV2lDctabAYQ6GC4gGrhzwcW37m/6E8TpuE76Wg4=;
        b=Z0XjXCJ13xZUbn+Q6wz+Ilpj6N5Z5t9Noj/ADaBN/DNVRcN3PJGeFR8C4rXBqW4Apm
         qr/jNJ1Y/p3wsJCvfS+VoKz8IwFOxVq1n1NpRXgg72Xn7wCA17toms9AM8Ar7s6XVl7d
         tOZ5hUm4HaRTMlkLMhluDharFSUuZKN/x78G9TQURAviPDdREPy+IKMaoSTb8S7SAiNY
         S/78F17GoeJGRez8Yfq6I16/RbIFomQomrj9lfHQtB+SQSms19yzfwLkASfKsBwgiXNG
         R+u2mACRrvNWtEBPDtsSlCaNc5DWKPJAR1z/AhEXVFeI3Za4Q7qqaEqhX8m4IOpMxyS1
         iaLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHnLaJfNeEsM5IvcyEo2lVdunOz+I5zu5VolHIw0970uO7JE0tcjWmCj6R2vYRY0Q1oXNytSD5gVDe@vger.kernel.org
X-Gm-Message-State: AOJu0YyTEWZ/GcfO/wjmhhi81LAHe8ucEGYrnKFa/xjFCOVJl5aW8P3W
	X3rBoPgNSck7fcb4qjTric42ao0KJDkaQi15kaeqlAYsmqsYzQ6wABenfpbnSst0ljO+rpntwyU
	iN73nJgQHUOR+XqlfeEp/Bmuf1OE5HKWCuQgRgkuYKJ6f0JOXv/gByhKD/InaQpQ9fHIa
X-Gm-Gg: ASbGncsS50+jg1rxSPweUq/wqB96jdlhrdDgfl2BoGawK2gZHG+rJwEIqI4kLNwDeke
	oRkv4Z9G1nXjxFiYQeSLAZWedTVDyIev84C8FeowAdww+PxRTmLj7lWq4n4pmsYOhi1MoJdGCp3
	K7BCzKgREyYYb0hgpTIbgUCykcHPk3ZxujOIAYwovMeoOH2WKcvAm8Co4WiLNu8cM8x8S0eE9p4
	zZLHeVqoV7hF07GJQ7smDs0FNWSDo7TQMLdwbGZFcnPyhr4r45ICSLRvkpzbV58+AcAxQPelBEz
	/Hjbt2d1qg5F39SjI3HFnyUZS3mkVo7stRkexAb7rJRsqspEILgvTErvKg14izCQWYmrCA==
X-Received: by 2002:ad4:4eed:0:b0:6e8:af1b:e70e with SMTP id 6a1803df08f44-6e908dab8d2mr14444906d6.8.1741444208064;
        Sat, 08 Mar 2025 06:30:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYzTmfYwrmQbqXEPPoiUQdcPwYzdBk1aldTn4ZYyfsbMEMVk0wKBrs3w6LhpEi2xGwz/bX3A==
X-Received: by 2002:ad4:4eed:0:b0:6e8:af1b:e70e with SMTP id 6a1803df08f44-6e908dab8d2mr14444706d6.8.1741444207650;
        Sat, 08 Mar 2025 06:30:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac284f76a22sm20376166b.149.2025.03.08.06.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:30:07 -0800 (PST)
Message-ID: <e7347992-acc6-4c0f-a26b-c646668917ed@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:30:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcom6490-idp: Add IPA nodes
To: Kaustubh Pandey <quic_kapandey@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_rpavan@quicinc.com, quic_sharathv@quicinc.com,
        quic_sarata@quicinc.com
References: <20250304152133.GA2763820@hu-kapandey-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304152133.GA2763820@hu-kapandey-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67cc5471 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=oJ5fhsqBAEL7t78JBU0A:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9m9_dL2CxWTNjpw0QXrqUks_KKl0QblJ
X-Proofpoint-ORIG-GUID: 9m9_dL2CxWTNjpw0QXrqUks_KKl0QblJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=782 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080108

On 4.03.2025 4:21 PM, Kaustubh Pandey wrote:
> Add IPA nodes for Qualcomm qcm6490 board.
> 
> Signed-off-by: Kaustubh Pandey <quic_kapandey@quicinc.com>
> ---

This is a patch to a devicetree of a board that is known not to boot [1].

Were you able to confirm this change works with a relatively unchanged
mainline kernel?

Moreover, is the IDP still used, with a final SoC revision as well?

Konrad

[1] https://lore.kernel.org/linux-arm-msm/20250206-protected_clock_qcm6490-v1-1-5923e8c47ab5@quicinc.com/


