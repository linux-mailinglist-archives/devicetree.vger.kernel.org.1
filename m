Return-Path: <devicetree+bounces-172258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4652AA4443
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D99B24C6F3F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 07:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2325F20FA96;
	Wed, 30 Apr 2025 07:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O1TN7jJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CE3205AD7
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745999087; cv=none; b=T8M1LnZfJOlD2FRlPJpF8ytZZjsdl6Xo2nuOxW+B9yq++HTHBa4tco8cczvOpJIwGzVbzlVvGZFp1gFpOpMphEICVmuVTtewUIlL9W7K3MCETUvm6IKLivu2rARVGsUvYoK/yw7bls/baTmQqgbM8C0iu6AQ0ORtNOG7Hu/csiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745999087; c=relaxed/simple;
	bh=A42gFtPb7FTzSMPg+Q5mJePTmhVsYlKhNbcc6egkFiM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lor+5pCjFOodmd2wiA0ULb2b/ltZWQ8Sunk8Fqj+iLf3iTwQVe3ktvPcIFOlq8cMhEev1Fdk/9lVjgZwtTlZEh779P6RYZH5j/MlPstRFCved5+mwAXH22QM2xP5Nd/56tLjNVWbHbOcqhGdQQttwTwmgZxgagzjuXcvszhQ7Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O1TN7jJa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TLanH9013706
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:44:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	msfsOgppW2HKZWbTRUlHuCGDYI0vZuab6NikVOg4XAw=; b=O1TN7jJa+OgDF4m7
	/RlyxbmkhA6eLCwMUfJMbk1kUE52pcCEmy0VMKDQ2Do2R0aACW/Pm8HgUePITibD
	cbM5iotqrbNQlUCa1ipUhi1p3K6aHo5ezf4YP5+XqDlQqhlVOpxTnLr1U87y6I70
	trQaF5D3Uz63pO3Y+pKYRSO2V64pHJ8pgPbBs+VltRUq0H020ZXRwsj9ENSNTTtJ
	nATXac0HxglKOMjcOyu6ti79T8BAuGZDbOTn9xAEjSyhn/djGJ5nttXw4k8fPouV
	BquUHHJR12Xs849zV3GuKOF7RtyyU3SME8511VY5DfHIfxnKa7BjgzmBiR1CWSr5
	z6Y6ew==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubh83d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:44:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476786e50d9so15115921cf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745999082; x=1746603882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=msfsOgppW2HKZWbTRUlHuCGDYI0vZuab6NikVOg4XAw=;
        b=QTYO/QY+xqsP3aDptdkqlnRdlqKnnKUxukL3Ll+jb45+fe7AqszvsftyyOH+z3GCDV
         9LnMEmLg5xtagvugbp/MYgBys6gH+zKlmnOteBb+b1r2rWACCRKjYWXcNnxlYRDU7SB8
         v1UpYFH19eTP6iqrnzd11iZKWpEGnsqxrNuPyIdO/Vps5MDMYj6Ysv5lYlRt5tqhJ/0b
         reDE5nLHQPguqWHUqFC7i2zTm3GqWHWHkliCbEYggtNVbmCKZ1xvFiW8COC7nkC216WI
         sQFF/gTXH/sqDBW7+oYFP4fH/W7zzCizZjpOVYjELPwtT74UmU8yYPp9i8j4u0DsnPfP
         A1sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQKG4VJNeRrjUyGXf30UEvQQupGeXDf8fb56yeb6tCVLr2zX6vts/uZiAPHHnKwg8rQEXSh4SDEAbx@vger.kernel.org
X-Gm-Message-State: AOJu0YxQZirHJEjCBAwmd2B8E6RkqD403i7uKcV1Z5mWDYk/bOLBRlOX
	7+udfRNlL3V0FrVoWn6zT7k3iSvp549ilAnqnowEx9qV9YREW83TjwTnJR7EgqNSPITFQz7kXQ/
	tLIdkELORS+Q8OWJMOaQ6w5B4gXVMWDKrg6NxVH/PqOfx6pjMcqyV8HaiW3WO
X-Gm-Gg: ASbGncsAQREUKlQY1WwnrTsEDlBpqd8GSFyCXxVaN0RVn34xmyV20CcweXosLx1vqcg
	2PPb0/0Ap2kWEv0yoICn3Dlb3GBJJIydVkWDvkcbjHEQgU6BgKixQpHJwXWzU7Eyl8Gf8BTMpA8
	kKVw+yr6Owp6J3GQq2ndbjmNV3CN1KQ+u5VmnNX68zyR0kUf0JMnkr5s+XGBD6/s3jC4Hc+h5QM
	7mMD8LYEDqF418ZXfmFJ6D+toUH5RHTMsHwFhaEzoL0d2DzMLC0w3RyqMJBAL7cJnaJ+Lie+g2O
	thN1rFx656McZqdmg/Jy/l+k7x6rVKYR7MWmD7nrOph6u0isNil2FmXHvIuD4b4gXC8=
X-Received: by 2002:a05:622a:553:b0:472:2122:5a37 with SMTP id d75a77b69052e-489e4895c0fmr10092731cf.4.1745999082367;
        Wed, 30 Apr 2025 00:44:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHo1dYIeJcz0jJ7vcVbcJqQIkLiiqS+23dAXyaATFUK1XcfVJdGVclBCqOfMpVFlYmhdkBuQQ==
X-Received: by 2002:a05:622a:553:b0:472:2122:5a37 with SMTP id d75a77b69052e-489e4895c0fmr10092651cf.4.1745999082027;
        Wed, 30 Apr 2025 00:44:42 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm8387284a12.22.2025.04.30.00.44.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 00:44:40 -0700 (PDT)
Message-ID: <033b67e2-5d48-4992-87bf-97665228f4d3@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 09:44:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs8300: Add cpufreq scaling node
To: Imran Shaik <quic_imrashai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das
 <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250430-qcs8300-cpufreq-scaling-v2-1-ee41566b8c56@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250430-qcs8300-cpufreq-scaling-v2-1-ee41566b8c56@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mS50FLfByK-gC8j4ACl-QOiBFhmlA9-c
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=6811d4eb cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=PtKZ9L8PhvXPVooKrVQA:9 a=QEXdDO2ut3YA:10
 a=4E5sS38rZpMA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA1MyBTYWx0ZWRfX58GkWRSxU+ZS 2H39asQMf6nmLKSuYn41EpholDWiYE1EBmgmLU1H7yVqKgzRM0CtmBum8GmnM3KC9yXyY5YddBJ eVbc74aPCslB0INBwpThDgKd/2Ywop3eU5z8mLNv5OWxYUqWBI1Rn25SsNGZGnQG9Ipr0tE2Hiu
 AD0NzALLqjuoIWFryec0L3ydpX1MaDoIPr7wN9mr1bRw+HmijqE2MKkeVLGlxI3JH7JE8RXVsq2 6BicPrfOsWY64QWqviW/s/0GsmXBFSj+uK+JkKJ1qAhWJSzA3g2NJt4DfkdVr/ONWtt+C4roE3C gnm0lnEOtm1l6XRkHeWeMvRQnJvjrxHKsbMTet+DaH79+T9akyMCx2RaiIOn3wIewJLQHvfmWHb
 eZAMuH//rIUpmxXmOt3RwNtfBtPC0j9Z5bYfIl+y9om2zLXEIvc1Q0lioK1teTlmwkcmr1vN
X-Proofpoint-ORIG-GUID: mS50FLfByK-gC8j4ACl-QOiBFhmlA9-c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=755
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300053

On 4/30/25 6:59 AM, Imran Shaik wrote:
> Add cpufreq-hw node to support cpufreq scaling on QCS8300.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

