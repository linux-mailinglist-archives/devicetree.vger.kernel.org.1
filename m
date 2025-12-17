Return-Path: <devicetree+bounces-247366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5005CC7521
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BF77304380D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248D133B968;
	Wed, 17 Dec 2025 11:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ceOhw4I9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dF1CU8BA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0514324714
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970601; cv=none; b=NQu0C1Toum8n1zXHDoL2CtD7QAJ4iwzYSbiA/kXY7xUtTN3Remu0uLL9+UsXzeBUDnwfNICGCxiNtKPSRJCR1Bzqw2T23IypXjJHDMzu3ULGtv2zViOnsSssR8UNAteEVMp+axBUpinwvguGSVxnuxFwj6N7pFAC20Q1Tyn7ASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970601; c=relaxed/simple;
	bh=huR+GWIirjOdOMYg3mVBFAkB4KRuUGNGpg6QM5adZUU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c1Sn2q18/lNldrZCXV5DH2TU5YAqlwTvb2PdeMXtrnlDPDbcpvsd9RN/yApkMJcdenrbTJpuQJdXMQPib5lCGo91EcMf1NSdRfKV4N4GFA+O+Q7UCEPsZxrHgMH4fYCJXpwmptpOzYdtSqXnriucm0Z4E8VADfLVOYbzrCXzp/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ceOhw4I9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dF1CU8BA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHA7uOi2024928
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mhwWA1wEAAxOR9ob++f3Td1XwWbr/zxBGj1xkgKoml0=; b=ceOhw4I9YvfR1LmR
	PcejJ+3TqyMu4hMf+K3sKaedpTaQpueTOcdRxmr4q9GM9PsZs3QgBDN+1vBxUJpQ
	JE7/dnhVsD4QbUwArXPZcurstSG4qEc4jV07uVGBtI/LEK0zgVuWJFVjq3zev6YZ
	Iw6PqHzhL1tWLqOX5AEIXt1Jr/5BroS4JVU5aJ0RmMYgGzmQ/6Cpg5GuzOdh3u9E
	LjBqjq6LDpFAl/l4OSTggUpmJBoaQqrOoJBn44OLfjrCOdBtob1ctME9IkaK8MK5
	MLoXj21Gb4/eBQiCVERfcXN3yiiOw4aDRy+PEqZ+Dc6BygK2YF6tbmgICuVyzym6
	BgSteg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3j39htqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:23:15 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8888ae5976aso16240346d6.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765970595; x=1766575395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mhwWA1wEAAxOR9ob++f3Td1XwWbr/zxBGj1xkgKoml0=;
        b=dF1CU8BACmEOPFsUeuDl48mJOER5qYajE4BW34Pu8dOw2nSmwIV3spuqkY+8ZCtIbt
         RaiPa2LhC/1GSowtaNrMSR1BP1lR0m9g/QZNv4AfDJPFS4jnBW5LK7+ZeE4kTyQeB/MC
         d+tlXhBX3TiAOj2J3XPKpRfDkNixwaNA6VQSkT9R6XicVpL38XIoFJkA8GeQ/IP5RCJK
         MLaDulnmqo5AR6dV67QCfIP8R/ZAhpvBEjiTAu2OOZCsD3GYt0oDxlGBlm80fNWm2hWi
         cS2TZHHhcj9LwWi+qGe3vb8fqonRAxgptP6LgLJABs8klrOpVUO4CZdWiBuuvSlsD6A8
         TNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765970595; x=1766575395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mhwWA1wEAAxOR9ob++f3Td1XwWbr/zxBGj1xkgKoml0=;
        b=ijRVuvH6tKkeCPMiSxemthymtHnxH7+DZspewGlmHJC737H4h90nN4QWfwarl8b8+j
         bdZZ1oWos34ULqaJHZ0Au0Pa+6mspzKxePacbRT1e7FFaXCYuozFt9Xhih7UNyjeCtob
         Ns/8nr+sknkRYIX+XiSn1oIjUYs0sOU510uqqtZ+Uo7Gn31SH+tdqWfDGxuLfsqYFvVc
         4wgVF8xPsKbTaIinHRc73tWUroveij5g0zZJQ2c+ZOa+U2LDnULTEHieIrtUMdvyAjwY
         f8X6BAty98kxd+GTBPavweOdQDDvlFHKEVR3DRFglAocdgZczGdjTgWWKHHiF/tZlxBZ
         fo/g==
X-Forwarded-Encrypted: i=1; AJvYcCUwLIHO38QvqEtCgcxM93KoBJHhkFOhIRMz4vAVL6DHYn+P1TaRDNmUX7/bngKKWsgKmpEwo1wogI5m@vger.kernel.org
X-Gm-Message-State: AOJu0Yxasaub4+bXwo1zp+WP2FlrSYuUSRbZHYdhEqjS6LyO1+xufVmH
	eoND/lBHzlfnBALS4YMuXqvvbozTShDCVLkqtS71PPLksCGcTqdjmMemw/0mKTuwQZIDuk0cD3k
	9+i8rXVZw5lLheIRxQ5bixwpgViTtiaL9nwsH2+uRgVX0cj6HrcAXHDSCVjBVMfcz
X-Gm-Gg: AY/fxX6nnrNr4l0RkXgixDuQPOUk2SkZYFxe9P1X7k8bCZTjZHNdH+dQmMXhaUqLSm6
	VY1YscDxt2ulnRbyvnjKwoMxgK9rdb0mQrnHwXrnlG0WLUEx06giXF9tveEgszeFzf+aXdumE5p
	WTDxXQKydmYVaP3NCHrceFDeH5EHrPtFLtQYzs1wwksB4NIExWusi38aDDq5145CA94XuTzE40y
	GInnFjasmZ8J0iGAsEr5+yX3rim63/mEhRJyeMiXJQlOey142Qdeko3bW9j7VYJwvkSFRpvvr/8
	uvdAjeWH5Fi0phyCQT4aQykWpJBs8hrz75+4/DrP61UI+QVF9jeU2RWBNuYGF+f+Zo/1/+FBU0I
	ru0r6LmjBIBfNwk0Tkat4msqzafKr1qr3qPVBU6knv640Sc+Q1okKdDfrqnq07Onbqw==
X-Received: by 2002:a05:620a:4091:b0:89d:4a69:1502 with SMTP id af79cd13be357-8bb398d9d6cmr1833093985a.3.1765970595328;
        Wed, 17 Dec 2025 03:23:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIPAsKI6WuJq1oqaqsh5Z8B+BthTkvS08uASi5ghcWxLWkI4BWbb0w6Lv8FYMEJKWggwpv8Q==
X-Received: by 2002:a05:620a:4091:b0:89d:4a69:1502 with SMTP id af79cd13be357-8bb398d9d6cmr1833091885a.3.1765970594814;
        Wed, 17 Dec 2025 03:23:14 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f584800sm2172569a12.30.2025.12.17.03.23.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:23:14 -0800 (PST)
Message-ID: <494447ca-126b-439e-b150-7481f6d5ee45@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:23:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sm8750-mtp: Enable DisplayPort
 over USB
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
 <20251216-sm8750-display-dts-v3-4-3889ace2ff0b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251216-sm8750-display-dts-v3-4-3889ace2ff0b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfXwVnGZREhgjpw
 ma5WBNx8Be40RG+cvPADg6n/qORnEalzYwiuUT+lKhg7lhA2J5Td5+B/SbcfPsNz7mOMhipCHk1
 q+WC1ibXQohGs7easnWS5rLsoGA4bMoN230w352at52p2L+A+xi6So+ARAPg4/7kFG3WInTli0k
 +4nKxu/sF5oUxYYS0/lEaKC/IsNI1Y5KZbAuIxgjha+Fvq66JczsiuJVdNBu45M1NF5viQ/ZkHX
 8ymtLhZhNkWFH2v6vMOZhPYp2bx3+trhdTKLnM8TLESxT8geUa/9sf3D+a9XAbAR1lOXUgyqGAL
 AU5cMHfdbLqc96+m64Ew+7i9TDeF3cXN/JKmO7cd2I02uxYhN9j6IYtAutWrHjqJ6KaE6ulfH8Z
 E/t547ZgqyTVpfQU3ygoJRNCmQhYgg==
X-Proofpoint-ORIG-GUID: kmhi-LHzG6R1gQ9vlCuuY3TMPyVfe7Ul
X-Proofpoint-GUID: kmhi-LHzG6R1gQ9vlCuuY3TMPyVfe7Ul
X-Authority-Analysis: v=2.4 cv=ToXrRTXh c=1 sm=1 tr=0 ts=694292a3 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=xgWhb89BDjTtD9WMArQA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/16/25 5:47 PM, Krzysztof Kozlowski wrote:
> Hook up DisplayPort parts over Type-C USB on MTP8750.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

