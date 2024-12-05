Return-Path: <devicetree+bounces-127626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 791109E5D2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B0D11622ED
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9522B224AFB;
	Thu,  5 Dec 2024 17:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FBsTfl6L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81421A458
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733419978; cv=none; b=szTioSUX7DleSDc34KERPQYzh76mLWevtjKEEbT4uV2WHwiN7LHQUFqn4PqDilyguRMxLWArZANzQAfK8lum21Q5BO6dPxhYwbarB71hKVv3LQwRuaSbZpZy1c5QawVZoEsTgA7MuJk/wNh9Lcr/QOWf2863qcMPDF21l+h4+Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733419978; c=relaxed/simple;
	bh=+IgOZmfKX/Is1iXosgfbktUxRZy/UTVsOTJDaQQY9HE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KoCot/LL4efTfIJWpXpmk5HJtyzaydspRXCi5oGCbizDTgl/x7NO0TgL3JBR2ZWxfrom++uIvQduQOaaaatzmMnJ5oHFnUWAu0hnRmFCULw4X3uMgpzVAm+VR5nOAQwDc2oZ/bMixDz/dNq+IiP/21EeGRJ6/xwBYebmiIxJbhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FBsTfl6L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HVkW7031669
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:32:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gz3CZamWBOEOaic6jPPi6pYHFVeUxtduPAgsi15Xigw=; b=FBsTfl6LBbOLdBms
	pEvVpwqvkLb3AgVHwbv3+4AYRsKsWrZtKNvJQzoBz+tDgL6ML4zpUWXKzg31mMDD
	vldIO1BeDbOyesWObnALj5q2KpKVbQ7Lo4vxioy9E+YE5RCbfpd6Ne2RRUO18u9A
	EdTbGaN8+Df2iRricvgUM8GrhGr+txgTnLJK7GFbh+vN7y//7KW2MHVh79akWrOH
	GGN9so2zza5DxAjRTXjW8V9b74U2ndHuDVBIJz0vtNRI4nT6tSygy7soIZOIUiQ8
	RR3wyCv/yGmmkz7P18H9mH8DSYj2kzTVADRaA3SUkuRgq76kY9DoC2lJNWPZn6L6
	ME8Elw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3erdjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:32:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4668a6d41a5so3233521cf.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:32:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733419975; x=1734024775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gz3CZamWBOEOaic6jPPi6pYHFVeUxtduPAgsi15Xigw=;
        b=X817mrvoYu2j5j+JzLg7ZGUzTtbwD/fMxO+DDnw9rJfb9tniSSWjOKiWF6uSVZ5U04
         977P+751X24UE6A+e9IJ/NsWddHc6ZEUOojfXEmliV81whAyPV8zXhcfABWFQnIvJ9Nt
         61JWoJfppOk9oSkJUkj54A1s1pZlTOW3XJWGNU5sD3LkQQ1bMxs2aLp/EArs2Hd0PJTv
         6I1i3kqbsq19yGRrK+xaKF+S4GVfRln2kCGFQby+m0n4x4MR5R37ZaNXJTij7o9tP2BR
         94L9cwvnTUAH0+JA//V6KRWzKJTrXt4JNi5dijkTtSrKJu/GSv5jQ05Ky4Bfy/1JrSMH
         +85Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqiceyydnSvLHK+OmQNB6dcYq9bZHime53tcSOVhOEjg5Bgn+LInk4nDwfFN9fVDxKjdBzbIgHDWfO@vger.kernel.org
X-Gm-Message-State: AOJu0YwJfS4dmcyx4brF6ZU2KRO0Dz2xYEHAzjvcwi6YyVyAM87Czsnj
	ZhTnV0lk+L3/Xu2NiGmGXdMNAz5UNZNz++DIC8x/++RhsLJ9RzheufOr55vZM5iv0XzHjsfg+f3
	IlFz5ZMi/uhHMxutvVcKzlYmq/E0taQz90X4jboAC9gE3QCVhdnvhiD4Mxfdijfdo372Z
X-Gm-Gg: ASbGncsY16ltL8iXvniG5Pg1fx62rW4m6gmNmxh6V5wrysrZ0kopLdMKPWfY8bTBvL8
	BN7cBlAgeGlhABzzeLvZEbHicbU7Q2rfM34XTypU/RMl7pu+V5ORyCTB+UqwRFImdNETRIClbhe
	CxZJJ0ZlIlYv6yOH7v4ekBscgA+m+NnC3/UAjGwtLR7xXZKeTLvHnoY3IZp+AL9kpoYMSFYHR7u
	3jnyfONqhipDm3zX/rwqzeRmVbxcpWn9zpqbADxh91ReH9nqnFFx5mz+uByknkwTisZ4ueiFeX7
	pqTMNj7US+oYlf7zepZhFdXIvoyb1WU=
X-Received: by 2002:a05:622a:1b8d:b0:461:2416:13c3 with SMTP id d75a77b69052e-4670ca99e79mr75949131cf.15.1733419975033;
        Thu, 05 Dec 2024 09:32:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEC48ihnLZNZLXeLdwFy2oLO/5XpjAPYBaz6r7BFaHbhKot2UhcidNQT25Vj3zVU0VERUA6eQ==
X-Received: by 2002:a05:622a:1b8d:b0:461:2416:13c3 with SMTP id d75a77b69052e-4670ca99e79mr75948921cf.15.1733419974593;
        Thu, 05 Dec 2024 09:32:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260eb8aasm119654366b.199.2024.12.05.09.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:32:54 -0800 (PST)
Message-ID: <ba887e6a-7bb2-4170-a957-d4299012ae01@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:32:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sm8750: Add CDSP
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-1-9a69a889d1b7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122-b4-sm8750-cdsp-v1-1-9a69a889d1b7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: l29z_qwnJ_AD-6RPBVl_GwcbchwCtsfU
X-Proofpoint-ORIG-GUID: l29z_qwnJ_AD-6RPBVl_GwcbchwCtsfU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=626
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412050128

On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
> Add nodes for the CDSP and its SMP2P.  These are compatible with earlier
> SM8650 with difference in one more interrupt.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

[...]

> +
> +		remoteproc_cdsp: remoteproc@32300000 {
> +			compatible = "qcom,sm8750-cdsp-pas", "qcom,sm8650-cdsp-pas";
> +			reg = <0x0 0x32300000 0x0 0x1400000>;

The size seems to be 0x100000

Konrad

