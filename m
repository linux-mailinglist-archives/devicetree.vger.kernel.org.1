Return-Path: <devicetree+bounces-248139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F7DCCF150
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51C5B3012DDB
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6546B2E7185;
	Fri, 19 Dec 2025 09:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nalN/Mu3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iukjX8PD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3762D7DDF
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766135331; cv=none; b=b3sCwsat7XuHtlQChk6rmQdLyZjfWBzzgUAsVGUdh9o2YmwqDADtzSm8qPFgJhsGpqSTqDgs5cmFT4/jVGAY9SJndhHgg7khS/N8agULqFg4BWdZ+9xH+Xs8m5aQqvW8+K1YdSE0YbfrE4w4DuLxJd20AnBYXdyobyD1aZw5m5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766135331; c=relaxed/simple;
	bh=Q5bgZ4p8IAn7/5r9WlxxbjIoZogdEbCHjtIycxKfrbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pClThu9DWjXxxrftvI3wxzfjxvl79t6akl9yd0Hs3eKFKa0Qt70xYZJ9FhIdcMAvJ3VB1sPcJ2DzxzmyZJMaLzDbj4hUyQVzOuNfUjJ2BRqbZ7pqgaP/1TEj3ZKGq4v4uw98SRG4o4+Lnp5qI4hvzIp7L8p8Rji0sx7gqGVTqH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nalN/Mu3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iukjX8PD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4bxkr3939138
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gXa1wpOZ6Opsob0n9U9T/fxIsidLw8VhioEMzPmcCMU=; b=nalN/Mu38iLsFkws
	k774DhFtwi6qpkwlbTFCRVd9xWeErtajIC5nGkySTAGYZWAAFeO5GTyVF19e3nJn
	G/EUny5xF1+OhEEJmG3Yd2YWs0NHmepk+U3idNmu/CVZvjJJ0Y+WAzDWwElDdu6I
	sTES0euCRunW8Xpmmpsulbg/7fwrQ22u8iL9jmLmYn1D+XhXuJnZPIYMFc/XS1Ih
	664TGNyfzYNRXKHkbAxqzgmahXCPdX0duHoVdJBmcvmHEXiNMYisfBacu+js5xBU
	iFR2zhrDybjBeCoidKnGtneXVmP4UOigumM3JOGlnaXRaXm+mYrY8FON98OKBuBH
	y59XQQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c20wf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:08:49 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7aa148105a2so1596837b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766135328; x=1766740128; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXa1wpOZ6Opsob0n9U9T/fxIsidLw8VhioEMzPmcCMU=;
        b=iukjX8PD1NbkL/+RaIEcvxxjONsZgB2HLEwXedqUjO8496OtVBPXrvWhDA1Wy9PxuF
         dEDwNt4X8WNb+T1DoS5ag0DMqpVVRYQwueML/0Kr9RGtTntvTY6Ynzrt/MOfGLcYkN++
         9jrTn9rIwTMtxWY4YWYJiZgG234d0qND/Yevh6LNyqwQfyyidlFxF+/QTFemQEQGXpUI
         8ZPbt02IG1ZD9X4pzJXIw2bLf9PVqwC5WM9Z8w7KvrcDRsufYUdWlDggia6QN25dgkJk
         3jq1DLIEN187PeOAKnmBzlnwRJHQwfAlButuYRASwuU+grlnrVIKB7MLurctStYIsaVc
         3vFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766135328; x=1766740128;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXa1wpOZ6Opsob0n9U9T/fxIsidLw8VhioEMzPmcCMU=;
        b=Z/zCmybRFr8k71KDr/pVqfKne8qoHgLPswJmKQQZoyCwNHhtT14CLMDPy6CxZWO7v+
         nXEYwpLIqkRaghjcfQmkR9PlLx3sFolf1JbpKkjWK2K9eLktDOxgboBSkGHUaDUndvKQ
         kjv9lTBsyTCPQv5QYZ6H9cqmY17VUsfrNz/5fc6wt9DNSD+egjpK7hhwmDeyx3o3Diq2
         ygSnjcpEDmCkoZcQK9XfpdNp655PW223qtUmeEn/tDHQwGMzlNQ00fMlKxQO5mWtWW38
         egzcTCp/p8JNKH4UICvdy1OdaWaqq9LNREPorQRE9JrmykciT757cfZe1gKEFUzTQ8D3
         R0rw==
X-Forwarded-Encrypted: i=1; AJvYcCUGZ0O+IFTE4Yo7dWg8inFTwD7CxkpS/ZLD1aPSiCuWb/7ygIZf+O0i1pZM7vSfnQ+LXkd48CdYURT9@vger.kernel.org
X-Gm-Message-State: AOJu0YzJKe59t/nqtX4lKUF/7loOhwTP2X4aAFXKHRURC0WyW8ZOZbNr
	jSA5fJHtK75jvWCCEq9RZ18B1xZFjr7CifQcWITVn+aoANIUVZ0LUJRGBkjEg1y2RnJy1IEB8yw
	EWyMH3fnH5JA5zTY522/J4IkE/wDR76b+0/kZCoLU51gFFKVeWnlFg6J50Paahlrw
X-Gm-Gg: AY/fxX6PFMCY8py+Hy5fgZMXUbUfwmd6U/x060tiAic6JU8gGOwUU4VPVWI4fNRAEYi
	0t5Ar8q7EvJRsJ1YNzyueeAHYVcbJSKh/dTFnIGzksRuLAeJ3XbXH83ti0T8jbdKhHg/TRGH+v6
	u/Eq13bhgEHkm1+h14sKiqcTIAPuFxRxbJHWD097mJIRikniC0l6GKkTB9XxUpr/kzFSGDeKUi+
	Zkf04ldBS+TMRSj59YEFiQpAqtSYD95cp6IiV5sEu6RTJmWMmQXGvs5iqHr2RMTWyYPh0au/eTl
	rfwPjbGZHwi1nEkawF/Gh0y3KeGnQbt3BW8bXXzDoZ9InzngjFWPt8+Xi7ozlNl6AOvf6i8yOe/
	5fEsT9XW0UypFZ7BbUJC3uSSVRZLe4HxANZWryoUEjVYZq7XunLmZOzVT8yMhZuwx06wpL+dp/a
	I=
X-Received: by 2002:a05:6a00:90a9:b0:7e8:43f5:bd53 with SMTP id d2e1a72fcca58-7ff6775a108mr2031744b3a.63.1766135328312;
        Fri, 19 Dec 2025 01:08:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYhdhSA25dW78AxDFhfOSqctQebu3ghrLU5jc5WmQr/SGJkXWUVcnKcjF7zT0SVfuW/UmMSg==
X-Received: by 2002:a05:6a00:90a9:b0:7e8:43f5:bd53 with SMTP id d2e1a72fcca58-7ff6775a108mr2031714b3a.63.1766135327725;
        Fri, 19 Dec 2025 01:08:47 -0800 (PST)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm1753931b3a.64.2025.12.19.01.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 01:08:47 -0800 (PST)
Message-ID: <c6a75ea4-a36c-4f99-ae36-75f062937a66@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 17:08:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: add CTCU device for monaco
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
 <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7xi3a92zxoh6tIyNv6SlZ4vZ1O6OZVHZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA3NCBTYWx0ZWRfX2rj1u0XaiqT0
 0WI2KBnc45xWDAfS7MfEJz7djWfmew6GorRfuXYKVXV8c37FWa4/DizycwuH0vnU9MxoNOhWZa6
 NpuBIjnTQWHVuP9NpRCMoaMwZf4xcIpMCQE2Hd0RTm9hS0M5ERC2/nHX3Du0ktsCZa9nisx9Myt
 ZvPOijTyEKRyRs3OpnBo+tNQ0OtOA4y0kCAgADk++pSG5Pd2z5eWSdjbyyyTUaZ0OmDIxXjVAcL
 /hw8S4zNRhTaKkyZUCBRB70w33WX6vWMiIEtlWGbDS56yd7wCZ86cDfmINZHIJdo55g1lQkTLnr
 kMXr3+LvZdbDx8bfs45bc5sg3qLrcvgLTvWaeQHiHOfExwozRuBk2Z++8tdOwgT8rneZzidpxex
 5RwrUftwyMnBLIMj9w4turR7KgKHrFdVnUKOAiuSK0UfvGQ8wyik5qVwGRTPh4hodb+d2vd5zRH
 ZNywPtn0UMD4OxyzNqQ==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=69451621 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=51A4gIhVuH9znBGuUk4A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: 7xi3a92zxoh6tIyNv6SlZ4vZ1O6OZVHZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190074



On 11/3/2025 3:06 PM, Jie Gan wrote:
> The CTCU device for monaco shares the same configurations as SA8775p. Add
> a fallback to enable the CTCU for monaco to utilize the compitable of the
> SA8775p.
> 

Gentle reminder.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index c969c16c21ef..460f38ddbd73 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -26,8 +26,13 @@ description: |
>   
>   properties:
>     compatible:
> -    enum:
> -      - qcom,sa8775p-ctcu
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-ctcu
> +          - const: qcom,sa8775p-ctcu
> +      - enum:
> +          - qcom,sa8775p-ctcu
>   
>     reg:
>       maxItems: 1
> 


