Return-Path: <devicetree+bounces-170602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC76A9B941
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:33:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D54DF7A5BC7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B1121E0A8;
	Thu, 24 Apr 2025 20:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h6jfwCVH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C328215045
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745526771; cv=none; b=cp1nfBeuvhNv0/X6QsHYzRlh1Kn1YHf5n7nLGPKF8T6kbN8KX7bbSUfc1MI/dsytyGqywlZBPj9GjCjqV9MJui4Bnih4CL0Vip3dm9XHhpNr7OSVoIbbqCQy1sgQXMJHn5wfxu4VkJ7TpB4nCcUnxJ9CHSKcxBVl0++L4zC1JkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745526771; c=relaxed/simple;
	bh=tjaBPN56UPOtib4A2G46hSfnd9J/OzQOEib8ipL3O24=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qupAWmEMADhodzxh2HbYhneGXbFAwYiQppKf18fpu4Y66NgyfIiH2fZnNrn5LfEUa2dPm7+YhDUCkiLM7jegvBKhWOeulQ0j0XwGTozfRWJdY1w+aFZflcNWSI2mR5eeFghefUFUUgnHPq4rcDhV2UasO6cpk/zyNPLEvS0n1GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h6jfwCVH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OJmo7W008487
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:32:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m8HkOPFKN3GC9vWOM46Nwa7p+fPHQ6WYQxK03zZBQac=; b=h6jfwCVHDQOYZElI
	KqMdn+DgOWPc7UbIDJNyh+xGuawbfmXa8O0O57XaiRXJsnmV+l/iGaHsp0idoiFp
	wO+gEUVRIXqPHuEjil8byuZHj+LvyGZwvDOTWOczB1QMMeIaY1ShCNR3C5PcxytU
	/c6UZQhL93L6eQzZ5Nbhb0RUNvbOTCdB/x94/ZA2y4/4Q2w8RbGXgdm1uvhRnHGk
	rOwaLk3VIKby1TQ9v98EgkVtAUdOWiHO+wEh1dSpFBgBYOHT8vR81vn6GZLcYtTX
	plnrPVO6ig3K0zRVIbiDw+EaiKLA5jq86tMJnvNt+NtHFa4jzbOouq4hDcL9xy4P
	S2zGJQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3pt7a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:32:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c552802e9fso26637885a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:32:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745526767; x=1746131567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8HkOPFKN3GC9vWOM46Nwa7p+fPHQ6WYQxK03zZBQac=;
        b=g0AUcSJpO2pXJVY6Bt58EtU3fJps8g8C7i9MNXLp177ZM4WMXZTCoKPUBW3zqL+FGx
         f6ZE/bon+3YfJ+mziddCTpwMfC7H7X4ifKIK+Ie+URLsGfCgyJuUQJrz8vHCKkTpRNhN
         tm45kVdQ01+zV83iCratS5jJIO5hvL9ofl3cX+4zrpGLP+t6rWaSkeQs4jDsUp8X8qA4
         PypLSlZUAJ3rkvqk41YOfwzvYLP4/cnPHyNo3Vw9L4qjks5MjOCsv1hdKeAjqOSdmjFf
         c1CYSYWgKYyAfm351Sk82PnSH/8xUMrn7kDbI3m5AAemlFDy8DlU+ohKk9NBXG8ord3u
         UDDw==
X-Forwarded-Encrypted: i=1; AJvYcCU1UxwW/UmFXQP2N9u/HBmMu27hts0gDwBT78h7GO4fy+OdzwVy/L4oCjoK7i+EA7m9qw2owkygK4W+@vger.kernel.org
X-Gm-Message-State: AOJu0YxMnLHAcIU+Q3I1MQz7VsktrpwAEfXWZPSefrNxabkfITI8Y0tY
	Lm+EcD437WHR1Gf/0qGeG7zY8pixPy9XOHEetIp2CUea57ogzKW1LqQYBKpb7u6hm6zKpPOhN3V
	iHA3884+5P1nbW0kL4GCA28AbGq2q+AtSe5qSLC2xyMWXwly8KbP8OSS2xubx
X-Gm-Gg: ASbGncsMA79dmdgxhY5zLofH1cKkSKv0lR1ZMiDVJBdo7XxT2o4X9VodUgdVKPKdBlb
	AjotfKcGbVa7y1jI/z/7lyLoCuW9rqs/SSoNtBRCM0/sb9Qnib/Z8EgEvENmTCNsG8vWPOhrQCR
	rSjOojoss/ToaOrRyWz7XWk/sO0zMmBZpArkTwPJ13C7/QHNY8ULqo0aSQKFDmnWSduNo/AkaJd
	NXGUH0w2DRARYLuLdBlgx9XgYeCs7j7wGBa1OwXtKZ6JlpE/Qk2HvAoBnlJW5Tw7xihClFCphMS
	/SoOhB9JC29QJLa9BkfD1bsfRacVSLrdwx0wlmc4AOzFhn/z2GKJy6thGdsbf8b7WPg=
X-Received: by 2002:a05:620a:1729:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c956f79fe9mr259898885a.10.1745526767275;
        Thu, 24 Apr 2025 13:32:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzye98f6Zt0tar8sWeQ6uN8aYWFW+oIeMzfavLC0AjRUoW90eRnRuTlTFArGMlyuz16164NQ==
X-Received: by 2002:a05:620a:1729:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c956f79fe9mr259896085a.10.1745526766905;
        Thu, 24 Apr 2025 13:32:46 -0700 (PDT)
Received: from [192.168.65.221] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f658csm173401a12.41.2025.04.24.13.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:32:46 -0700 (PDT)
Message-ID: <01bb7183-eb33-4b9b-b73a-e7e3622bf9dd@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 22:32:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] coresight: Add remote etm support
To: Mao Jinlong <quic_jinlmao@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424115854.2328190-1-quic_jinlmao@quicinc.com>
 <20250424115854.2328190-5-quic_jinlmao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424115854.2328190-5-quic_jinlmao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t_CKgjfMeiEKFgkfdFz75FaSNEHmIrzp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDE0NCBTYWx0ZWRfX6I3hZmuY1ps+ +QHdyKdhOFjOZKi+KyCM+OvqRh8CxdZkVW2aaeMh1cinO4rMPrOEXN/NXExu8MmUSiKKEusUm07 93cGLH+qRXEyGCxRXiVt299BB25uLk5bKdGXR1kbVECs8qw8sB91Xs1glwP+1FYzdKhid90sAFR
 Aq21NG8xH46xtaMLE52DiHqLZ04xhaEcwmH5t7shZhSpH3QVVEIolzRdhiXIwQNTAfmofDAT/f3 FOEQ6R9bFnv9LBDuJsXJWqQG66HJYu2k5uiPC2JUTghrP694GJl5XWvY3gEtwairsZrvOlBUTkc KW4nLi/zGfFsWU8mIa+NMM+Y4XFMyOrJicof2cE54FmOF7Syk7VgJA/wXWprj0l2ocvxjCa/dKn
 lvAH2LEWHwR6V6ku0CQMtowCJh1j5TfmpNTTaLPP7l+eUC6KZCgBcdphW0Qi8grVNvxGJgLf
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680a9ff0 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=day4Cjbagy4oAH_-zrgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: t_CKgjfMeiEKFgkfdFz75FaSNEHmIrzp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_09,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240144

On 4/24/25 1:58 PM, Mao Jinlong wrote:
> The system on chip (SoC) consists of main APSS(Applications
> processor subsytem) and additional processors like modem, lpass.
> Coresight remote etm(Embedded Trace Macrocell) driver is for
> enabling and disabling the etm trace of remote processors. It
> uses QMI interface to communicate with remote processors' software
> and uses coresight framework to configure the connection from
> remote etm source to TMC sinks.
> 
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---

[...]

> +/*
> + * Element info to descrbe the coresight_set_etm_req_msg_v01 struct
> + * which is used to encode the request.
> + */
> +static struct qmi_elem_info coresight_set_etm_req_msg_v01_ei[] = {
> +	{
> +			.data_type = QMI_UNSIGNED_4_BYTE,

There's one tab too many here and in other declarations (make sure your
tab width is set to 8 spaces)

I'll try to read into the actual code a bit later

Konrad

