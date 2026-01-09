Return-Path: <devicetree+bounces-253229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C8D08B8D
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A484430141F7
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA90339864;
	Fri,  9 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tvsj+KOH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iiiMB23S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D9533AD87
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 10:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767956033; cv=none; b=dQtaskhTnvBSgQXBgNAykOTuV82vXQA32D3gjcDh607YLjNPvOaksZmpGGphAIdunkhkybaow0dHnstAT78EUlE9R+6B5PcJTAjzphpw2s1mJ1XL96EhImlODJU+eql1KnzejDspmqwDjQBWrpLIpUOy4DdcHoYjJowDg/pWo1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767956033; c=relaxed/simple;
	bh=QHKi/CD2glnCqAP4UBQC6pElNN3ZRrpwqImMhDKxwvo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h2B4UJCAPfpNAxQnqbFty0F3GFqlkuoC78btzByhQ2g8hY7VKyPErToZN0LkCgPmVK1jOASeF78AErOpdN4abl5dXSCbDzcOJTXAucTv5u0AMq27tPAQMzsDe1taXk9nR6SF4jyMNpVoBF11Yeb7PJ3D6EJpWgZWehMSoAnulFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tvsj+KOH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iiiMB23S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098T2n73729572
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 10:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FX3/e4Bui7do3TpGHWokJutJxg3+CkyJAoSTy/dKC24=; b=Tvsj+KOHvVXjLTob
	/OtLXE9XVhfY6MBxawp+V+KmOA7nxQW92MFSWjTKJKHFX2UuCvVFlXubT2Qq/fNa
	vUw3RK17dQvTphfoxqldvKSuQFqj3JpTcm5uTvpzpnfB+gfgYkIil4+trLdHpYxF
	wz+3fNRGk9rMDlNx/MYJzSwizEOu9M2pQRsbHlxIdiTa9yPuJQxvaC14qFNwZmNK
	vQjSN67c4qMtL8aXWBdr0O+26ftxw0U74aqjXxyUP1RvLOlyRAmMMvU0FNfGgCuM
	/VHSsBaMDoeZ3W+5XghYPf1XHM/dm4F5ejD9rKcf2bBlf8y7xlkK198AZSsuy2Re
	tDuVJQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjpmkhr56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:53:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0bb1192cbso45138945ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 02:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767956027; x=1768560827; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FX3/e4Bui7do3TpGHWokJutJxg3+CkyJAoSTy/dKC24=;
        b=iiiMB23SmBmaecg5ckzfq0rcHAGmMn0J52nLc2dSO26inhia+j8BklKYvHMgtKSekx
         Fi47c18uaDk6aGEeSEQc4enFJ3wUPeMDpiZtqiXT9rKhwt7NEPESyJB1O8l6/ISPIOPu
         pYqc5rPcz/2BDk7W48UTDUkIoZXUqHgRjck877//zqzS+cPQs7u/maOS5fufgZyt+2mG
         Rksc7VVwNIzCuuvj/Uc1NdhZQ1EfchLUpzsqCXopdVe2CouqMtabBZgJMnsYyyFAOh5F
         7Lza1qgFIysEj9QQqcqX54gQMKU/NGU0Anxo0zbs4oG1xgpInYQvAFrctWPNYDt1DAN/
         CTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767956027; x=1768560827;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FX3/e4Bui7do3TpGHWokJutJxg3+CkyJAoSTy/dKC24=;
        b=q4G+ZgOD34lyt0pSMbjv5o+kIvwOoqNTgJdNCwKUe4ZEMTJXVQ3slxMF4cTnpNF9Pl
         rfq7fMijO8QdDg4E6uNrM3guSjljQe7D5d0FHW6UoBI5Ge+HVinNsNvIM8sUdmTHXZLI
         nd6YdtaV7ZHPdZTjQ6xbXXSJmQKr5E45HjOfkuJ0Hg5r5Cphn8Tkqf0dwMIbR4UH4J0h
         pSMpyPDZOcPHsMTT5wXzRLKuhSeGLHolruP1pD41e6FBKv0YTO9Od8tJ5SFAvQILT7lf
         8IUlWgn03wkpo8DoQAD+mMWfSWBbaLHHpTdXJShFqCmc+yKSJ0wmOEesNvcyYhePQgqR
         OarQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEwZmy5rN0+Z07pWWGTgwARpUt1Nw/0RQCKCRcUJzJS1P3YnJhAQuucRTGqfS28UZvpMu+BiftVxsu@vger.kernel.org
X-Gm-Message-State: AOJu0YxkMiwuXx0oD7btyuUDsZ6VK7t4rw+tFh64dOp2WwZRUj5u/ECf
	wvkAfe8L3h6UJoR9FDeFltA6kbJQdvVnuLaabDOmIB4AOsyzx1d6FydMR+Ncn1Nuf37H6yj8Ma6
	TQr8wEonQwcJa4l0/48egheRCS0MfM2Uz8tix7E+f2fVQTqZmtdjAze8VaO/MzpDb
X-Gm-Gg: AY/fxX718/r8hxzURTvjMDb45JRSa1W5/1E98G+GH1cipZJ0BswybSfGCstbLhqK3KK
	DgEtDhmqDE5wFfPMx9BIByomn1AmFITo5erheNKikCbCeV3fI8DyxQmlNG/yzST0PuvuqdBTmgM
	4kDOWewjs4Vq/cPxMpIz/3a0rJmEbO4sQvM77cAh6TqfKAWcoBWtmFy1GX50uPUdoIChlbT0i0V
	DY/Z1zupmG8wPoy1rXDTDA1P/Z0pLqu0ljg5bi/aBzgHaaoM9adEeV1pxxTiEyatg1VL7VqY7gn
	6hHELpfyOLaURHZyOqvVoeQOBxOmNW2AbOpPYeqR8PnA1biyaq2nVhw9KB3q1r1iwE1ct7SYR7h
	shrsYtOhMfgQjr1H4F9zMyACwyXtJMXEuZ6VAiM1OP6KQnWkLA2R1JnkjwCkhYNRT8r0GHGtntg
	0=
X-Received: by 2002:a17:902:fc4b:b0:2a0:9084:3aff with SMTP id d9443c01a7336-2a3ee509c6dmr91959665ad.61.1767956026661;
        Fri, 09 Jan 2026 02:53:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErzTnVlKE5xwARBJIfQcab8hKCQtqT+guI2WKRBtLVTc+stAGDCN+noJGv98gsdAal+Av8QQ==
X-Received: by 2002:a17:902:fc4b:b0:2a0:9084:3aff with SMTP id d9443c01a7336-2a3ee509c6dmr91959375ad.61.1767956026188;
        Fri, 09 Jan 2026 02:53:46 -0800 (PST)
Received: from [10.133.33.228] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a31dsm102526905ad.9.2026.01.09.02.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 02:53:45 -0800 (PST)
Message-ID: <4370578c-22e9-4af9-a4fb-e87a8cdc117d@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 18:53:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-binding: arm: add CTCU device for hamoa
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251106-enable-etr-and-ctcu-for-hamoa-v2-0-cdb3a18753aa@oss.qualcomm.com>
 <20251106-enable-etr-and-ctcu-for-hamoa-v2-1-cdb3a18753aa@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251106-enable-etr-and-ctcu-for-hamoa-v2-1-cdb3a18753aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YNiSCBGx c=1 sm=1 tr=0 ts=6960de3b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1asyLrDfyG44IMe3nHcA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: nqaUZiJDK350tenecMW4mLzlefZLX4NX
X-Proofpoint-ORIG-GUID: nqaUZiJDK350tenecMW4mLzlefZLX4NX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA3OSBTYWx0ZWRfX5dpt7dXKcBte
 c12fNYC6RnhkeouCA9MW7Lh8UIaHX0Ehn7Lss3NPx5WltN6gkYEr1+6Wx+OdSfl0ycwDCIv0TGa
 YXFRFP7NHlPvfeD+7Tn4weC4Qe7t9TGCv1ukYWnpW6hWcMAbVADSYq66ILwVhPqPL4mn6sFwAwd
 oduOeuYv0LJWR6XCAohZhArIrJs2Ox+TJt3BXNiHwcAytSufu3tThkN9RSUjNmbe4VIPyZy9Etl
 tJh1Toyh/k1ehgKEOORAJGYJkQIenZ7//RjWAO1KhCaBf9ou8haUGp+0WDIia5e8l8sX4HSMh7W
 Fl75NHHXjf8p3iw4JqYPbH2aoQGlXExTOjiB/fwLr08KxZLCqXfQ2DXvTNfHyYo+YA5wcoTboYL
 0tndtK9N4WapVKlAClgcjadPoExqzn6iAnRxEPLU3PqqijkPda+S4ioblkPqQITz3XiA4y0pd+0
 YW9XWmJq+8rkQBnQK8Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090079



On 11/6/2025 9:57 AM, Jie Gan wrote:
> Document the CTCU compatible for Hamoa, enabling support for the
> CTCU device on the Hamoa platform.
> 

Gentle ping.

> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index 460f38ddbd73..57dede7a90e9 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -29,6 +29,7 @@ properties:
>       oneOf:
>         - items:
>             - enum:
> +              - qcom,hamoa-ctcu
>                 - qcom,qcs8300-ctcu
>             - const: qcom,sa8775p-ctcu
>         - enum:
> 


