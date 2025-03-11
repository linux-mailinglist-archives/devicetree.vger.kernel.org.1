Return-Path: <devicetree+bounces-156483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B079A5BE9B
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 12:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8708416C76F
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 11:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E120425487B;
	Tue, 11 Mar 2025 11:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IKi00e/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F0231CB0
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741691600; cv=none; b=JKmhX375LKpZgdUWaPOifPYsiizC2jWvhjxUnlJ3hi4Tn3xZkMU+bRbIHJ3U1Hx1sAf/X1JtsnVZEJ8ZCZDdFj6OoRGIhn1hRKgPWQGgbX5f+jznx8P2hPuJlFe1ggHjjrv79O1u93ZLtrR6p0zLho627bF5f7hhE4JWJlNgYsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741691600; c=relaxed/simple;
	bh=Ra6+7lJrUIPevP7noIKenkar5W1k++Vb9ESz2RdB9PU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EtvKZpwTzYTri1axRdGSO3MeE3p984Akz+PgQMx3BVAs2xb+zCpwTHEbLqfvLX5Bke9orLpV4r+T9pLP1ZB12/vDrloRI7/i5Uac9rieWVIRgdw+xJ2Htx4ZQ+MACT6WE2PSlUhv+o0MtTvFlqNUw8tn/rvPN9O+PXbxSovvs/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IKi00e/s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BATN2S007495
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:13:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/N286/YyBPtB8/Oipndi0mCxpCa8oeflWDE7Iwumw0=; b=IKi00e/sEKm99vla
	iyYsYHGAHHTPDpKbjQPGFee7KyLGWkisG49lxJpAG2FHNg4KOPBFhEVyc7S8usnL
	HvKwSTEfJjuLQrdLlsoEI2NG1ReYqjmj3PHJiCkeEsa4VSHJ8tMZavWTGSjvw3Mz
	zB852qAeCJTvUqWXsMFGU+shoe7+txXuIcufBswqbEcZxM8Dg6eYLUfHAOpanqcR
	7DddfGpXo/hZtzhPAZzCYBaGJoSWwDQNVJwWTiyWgfDt2CwMLXhqsEfJyMzW77pY
	Tc5wjaehZnjdf8bXHeLKjZm/KQNxJSc4xtxbzNMukI0aVdNLnWhAGRATM+9ItD4D
	o0BFMg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ab95hmhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:13:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c547ab8273so37317785a.3
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 04:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741691596; x=1742296396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V/N286/YyBPtB8/Oipndi0mCxpCa8oeflWDE7Iwumw0=;
        b=oVUZK22AOKj0yB0ItEndfdLxJgUpV/1FQNbg4PHFxVkQ7ma+UFaxwgVDkXMMk4rluK
         kH8ID9F73eUTx6gXf50LjWCRYd5aJhngMRjSOCgZGOafcaBmPMody9XEN5dOc4lO4tqD
         iBz7XnKf5PoshSMdbnSHkGYfY+gbXOQHXVfkwAEUpeO/s+BvOgMxLOoyV9d1GGghMCvp
         iRtZZuYY/6rc7MhbQf6qQgKSfnWhi2sH9tgOWwkEezfhvCE2CelBaWdQwgFZvfrD0Nis
         0F0ebX9B1i8KjAuo6+1PwM1psVaqX5TMuj7uKjro2VSTwn208mEeRrGqM5SbXeCnsxbQ
         XIDA==
X-Forwarded-Encrypted: i=1; AJvYcCWVoAjdtcNj4L9EPwls4/Co1Azs4FOJr8SEerlxuQBUoaX2v22r8Ty5R5/Db0K8BiFnUrL27hKc3SSL@vger.kernel.org
X-Gm-Message-State: AOJu0YyhG8cjPiHKi4xAD5XM3feKnV/7wfuegaqDqgteGMXGBz281Zqh
	BZUm2+40LQfyZHmjmIw9JwzDKssB6FrLrZaI08Klj4894oHGTyEut25vRVM4NHG1SFkafcFAtFQ
	o+Vh9oWh/vYzOWGVl+vBySv8VRlQl5EOMjvz7zSEyj5/AmFckbPdDzHt95WVR
X-Gm-Gg: ASbGncsxo2JVxrcvKjL+CNDq/6HBrlbMN6hP6E9exTxot2hjOQHzB2r3YaNyO43pXUe
	1AGPOs+WZfIN9I97hUiGGQQ7/zUGjmPPRSRcWZ1mZ9pfobV24vUZ9GZX36P4QAQ/EpOk0aYE9Y/
	sFOM1vTdw1lZweCoDbk2y1YCHDYdQAZFhC9Va7fxXiXVQ8Gz7/vCqXiGX20pDyZPwsYtn09Oltm
	b4e45ukM0JPWrxPg2Lw6wBBrAs+pMD7VIni9XRNy+Vx3lemn9Kof6Xl3gfIdqDsc4PEwKJgVsDM
	wktEr4mEsGWgHzrwkQygkIAUNLfypGnVKnYD2HzJnXUvt5eU9upBbCeOhEBGUeWJ/SMxmw==
X-Received: by 2002:a05:620a:2681:b0:7c3:dd6d:54e4 with SMTP id af79cd13be357-7c55e90cf5cmr174342885a.10.1741691595834;
        Tue, 11 Mar 2025 04:13:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1jOQ3Fr9/vIuI0mJfYp+Lr0Hm4fdkmWnfp4OkO2xn0v01ZBJ5KvygN9gwxqSMZC9qQqoHkg==
X-Received: by 2002:a05:620a:2681:b0:7c3:dd6d:54e4 with SMTP id af79cd13be357-7c55e90cf5cmr174341285a.10.1741691595503;
        Tue, 11 Mar 2025 04:13:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2811e5b32sm507919166b.159.2025.03.11.04.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 04:13:15 -0700 (PDT)
Message-ID: <3332fe69-dddb-439d-884f-2b97845c14e1@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 12:13:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
 <20250309-ecam_v4-v5-1-8eff4b59790d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250309-ecam_v4-v5-1-8eff4b59790d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WhXoYtY3HzB38Wh4XRfngpgVk1dBHgwX
X-Authority-Analysis: v=2.4 cv=fvgmZE4f c=1 sm=1 tr=0 ts=67d01acd cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=lN5UOK94kOf-3Ws_NdwA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WhXoYtY3HzB38Wh4XRfngpgVk1dBHgwX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=706
 suspectscore=0 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110074

On 3/9/25 6:45 AM, Krishna Chaitanya Chundru wrote:
> PCIe ECAM(Enhanced Configuration Access Mechanism) feature requires
> maximum of 256MB configuration space.
> 
> To enable this feature increase configuration space size to 256MB. If
> the config space is increased, the BAR space needs to be truncated as
> it resides in the same location. To avoid the bar space truncation move
> config space, DBI, ELBI, iATU to upper PCIe region and use lower PCIe
> iregion entirely for BAR region.
> 
> This depends on the commit: '10ba0854c5e6 ("PCI: qcom: Disable mirroring
> of DBI and iATU register space in BAR region")'
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

