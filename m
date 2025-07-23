Return-Path: <devicetree+bounces-199028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 874ADB0F194
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 714F0545D16
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3913285047;
	Wed, 23 Jul 2025 11:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X2KZycmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DE115A87C
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753271300; cv=none; b=JtaU1xFSCYrFn0CTJO5giUCXDkLxjjPSLA5J85KQyUezeGEa/R7ahUety1rNLLCYKI366o7XVnTkeWlaZM/GOk7jnV7TcOqXYmHmGdf3Db6BCvOzX1sB2X18t1djVYoHnYCiE6ojOeRtxrOrAiidAgJ8Sn3F6QFDNtxFUWvEyIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753271300; c=relaxed/simple;
	bh=8yH7oFH2qYJ/03mUo911wdRMg26XEqz7hrSxPrVK0DU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rCTci3n/b4yGut7v5VE0ccHT8o9ajKl4XJVHg9Nj4ZXZIMls+wE9v8Kdc39yOCVhhtN0RTa/mDpAINmrMNMxW0qsEAKm+xF62QehL6k7aR+IezW2IdBtDe4ctwIrJqZsgzHS2sqhyOxzaDrf026ZDE5pWq14twwbw6S3ZYaFkig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X2KZycmR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9aEgK001761
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:48:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lSjiElhJLB1AgW9OvfAXOVswnnZr43VSgMiFw0vektg=; b=X2KZycmRvq2doU6Y
	0HJmsbLsX2nwMS2s+NxycamIaR00bbIXfGjWYYE3VcE0Z+NeTKyf5LlRA4yWwX/x
	m1VeDe17KOICbKKiHQCUyLNw9kOsFs6Aht6S+6EkhO5QWNQi3wB99uFRrH5D0f7l
	AhT35V6oTgKZtQ4V/cvCsUAIN/j/DcqgQUMB9qda2Pl00JVqd1Hsvz4j/tV+S9YS
	dRvZRDaZ2EivEYLEYLgtBu8G6VzFvfsVgd9p8F90x9IvgsxReLjtkzB5gFqPNQaB
	X+/x06hbDpb/Ob2mG2M3V8FOnxu4lXvcVfQwjJ6CGZ05LCLI4UcpR+KZyHrQsBKy
	4YFCOQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w658m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:48:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-313fb0ec33bso7151044a91.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:48:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753271298; x=1753876098;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lSjiElhJLB1AgW9OvfAXOVswnnZr43VSgMiFw0vektg=;
        b=czvvy2WjhIYMEDsZCsKqTIHHPPUK2sQxGPzI9oeIx3J+DWCZ7iaJ0kg8jt4zv4HJca
         vUanYXEWqy2lOBTeslmwjG/aknMsUs+WbnNU4RB+CBQCb0FETaH3hBaPpSpspjxgOmxn
         1A/6vEhJXkfcTUKDgxyH5DEdWHiwZ25O4GPj06QI2cl7zAFWeVNXdEKBD1BwoLHxXtOP
         FXdg4YBXoAn78lRoHEY0cl3SGzT2CM8TgbZFWKhmeBALaXXljtB/Cvd9rTj96CXIkUUh
         bOeaGc7D9eO7uQzlzpzLKFuVHb9GVyFrKyG5mzzmhvMMGB5/t15zSfGx6wn1BdEw/olM
         Rzxw==
X-Forwarded-Encrypted: i=1; AJvYcCXv6rS/nstMycIzS/W0IFU3Y79Jh5eE/bZQoJtdDYcu9CNbtgYnRiJYu5mymAbFJmhHP1BE8bz+t6J2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq0cpF0B/cOzTgH/2l9MAi3VCktY38Gu/7fohJOUIdedCtNu6b
	6KfjkrzpKnJ7YDt5o/En2JR10tGdKXre9IlCc/E01aKP7osZM7/HIfWeajIffDMaX/3s2nlQnVH
	N4uoKLkKpn5JiFpKS8F1AxBSMvyf2FbRqk7D/6rQK94czTYMCtPQmdiFgXEjBbdp6
X-Gm-Gg: ASbGnctW8xROjYkUvpwtOoSGq4Lyp3/KvqP6N7uY2HuOrHAX/LM6sNhXjoQK+ms1AS8
	M7E/GAiDgN2G6Zh7V5hYLYBN5+cbT6Tc0wlpuKdt+IAxWHh02bSIqJkDsxE9hO9XQdK6FGhwukH
	TwRDWD34o55XB5GqSHC3/VtvWBiL5sYnACDAm2uRl+8BzxWZRoAXWACj5wFZo6vgLmjhO7dfUSP
	ilzuHhaJa0JPBSkQnLI+RVupnVaa1ZOv8KGeE5B/3Be182xFD3Q+X47uH8mJSfSlpINjoDzfiQ3
	dF6Y9m9PpYfK8PVfMxqlsG9VeC7z3SWZ6WBJImudmVizSvdDdfSSWcfVsm5e2e2pOxh/UnWq34A
	5GN9WGDNfWcXepVE3rEuGpTpQlnfAtb395o2rkIOOD1Np97op2hcD2w==
X-Received: by 2002:a17:90b:35cc:b0:313:b78:dc14 with SMTP id 98e67ed59e1d1-31e50614581mr4506844a91.0.1753271297923;
        Wed, 23 Jul 2025 04:48:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyLPE/0loV3mylprlTbYmB9p942oBmpy9lW67S1iT63o2qjYTAxnay9GvJWV74rP0lBxpzIg==
X-Received: by 2002:a17:90b:35cc:b0:313:b78:dc14 with SMTP id 98e67ed59e1d1-31e50614581mr4506804a91.0.1753271297526;
        Wed, 23 Jul 2025 04:48:17 -0700 (PDT)
Received: from [10.190.201.48] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2ff87dcfsm8681671a12.51.2025.07.23.04.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 04:48:17 -0700 (PDT)
Message-ID: <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 17:18:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
 <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=6880cc02 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ak1qS01y0rHKsXKK__AA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDEwMCBTYWx0ZWRfXywxkxgpsgum6
 o7FsAGwtJ8AmJtvPR87GsSg6NvAgbzv8eHWkWeyQkFGTa/9oiy6QRsw98YtV3KGezHVTJWlrlLI
 VieiJSdJgVnFBPeMHAZIbH/UonRpT8ZjwNdxe+yDNzMr/ZLHyApicUan5kh0uYJ53ft9UYc0EUZ
 373oT5lN9k/XQq3OOaj+CcHfO8qGCCFdOc36f8tknKZv51YJTqgMcDFzMw3xGgeOM2XWYXkDeRN
 jO4LJv5BObWYDJpir3tUAGvshLmImDA0iSo1dpRoOCXfOfZeG5l2L8YhiMwhxVgGy6nLILjegjv
 acz+gXcob5/GhAiQAVEQ3oZP8vwqRzCgnvc7MTofKLbKZABBUMhv08UChlEvBqgzGOEoWlwEzeP
 jQgvq5ZfkerGcBgv3TrLUE2r+9U3d/HLvSCRWD5Ktv/X2Z0HOvfcOCt39mASLxs4sFeHvgK1
X-Proofpoint-ORIG-GUID: VLWr8XIvC7_fA_iyHbxCYMBq754IfqUf
X-Proofpoint-GUID: VLWr8XIvC7_fA_iyHbxCYMBq754IfqUf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=854 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230100

On 7/23/2025 5:10 PM, Konrad Dybcio wrote:
> On 7/23/25 12:36 PM, Pankaj Patil wrote:
>> Add DeviceTree binding for Glymur SoC TLMM block
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> [...]
>
>> +      function:
>> +        description:
>> +          Specify the alternative function to be configured for the specified
>> +          pins.
>> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
> Any reason for           /\ to be uppercase?
>
> Konrad
>
glymur_functions enum members fetched from ipcat,
this does not exist for sm8750.

