Return-Path: <devicetree+bounces-244230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6CFCA290F
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CCDE530039A7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DC62FE564;
	Thu,  4 Dec 2025 06:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nEbNRvz3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UnuCwy6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEFD2E7F0B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764830981; cv=none; b=QmHKwDMC69r6iKT/nDLOjqDhi1ogcerqOtXOvBfJDOMNw7z+bxKgD1qpbmgeh9F+5gWK62T3Xh1KSvADV5/5v5h6ju4zrzmuaHtBA63uLx+1jzXFJi6Kxru1cbcHSs/JJH63gSgYnDAILQB8yZJAW/coyzLpXHetBwQUSKxph80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764830981; c=relaxed/simple;
	bh=t0tj1cZznyN+U6ohXMoJO6fvO7fvbE0K7wXck5ehYEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DaTd0nbVofBaLQDRF407NpySxUG3JWw0c/3FenUuE5JqONXdnnuOQMKFK/Sc+l5b9wOTQVcQ4LVC+ssKWmo+XlS1KEpkc6BcWETJEGuiF7rVVLAS2NeXwZiE6s2dIglA2yI+4L7F5wjqYraWfMc+/DrZJqoIGH2Jpa0e6JNNpbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nEbNRvz3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UnuCwy6A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468YdV624831
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 06:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JmxQysCR134n2X2yxpyzNPSzsppqGu72HHKjpEfLnis=; b=nEbNRvz3p6bWvbuz
	zIVmKDC76NjnOBKZIurOuqhCfda/Ts78YN8JAzPecRnMrO8cFPPf2Pwy6K8iqK6K
	VhVop6n2h4dfB7Fe9lSnPJlfJdxeiukr9mxMniq2djLwY5C62SPIyKIvAVTJ6Vwt
	DNEDrUw/Oj/KMQaqhMp1n9vModfHFXj/DgQIyfvJtnzGlG+BP1Y3PlmcnoQyWNNZ
	EPrQ5KDidEL/mE39n/kHwWw86JH2wB637uGrLj8evMf7DYDrRjSTJ3gNUr9d819Y
	53fapIOGp4InouwBBNhbmJsXuWQtulYCID9Flug3jcRE1fxfqsbsKKuNsc74Nsib
	d3Sodg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h1qkd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 06:49:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-299d221b749so11807825ad.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764830978; x=1765435778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JmxQysCR134n2X2yxpyzNPSzsppqGu72HHKjpEfLnis=;
        b=UnuCwy6AWYOg7PRrHd6guNrVlIW0suwwnj2HvQbtBo1xt8AXN5kRK41miH8/nHs+Na
         gHpEINEf8+bRLjDtBY1jlbQUR8LhHoygg4Qk3E9G1kF53gJIAnvw7i8iMKe0u5J/Wy4l
         s+AP8R1HcV6gy/Gpn0RLhCcASxXWEJjgqw3q3Um7oQBtYtcB9SoLKNkHdR25XTGbrY/3
         9hplwiNr+VMWTIUdycIGVh5FlisvndXW4Tceq1h9uGOrnFGeJN9YSjAn4X/Kq4/mmyQv
         iSSWRYWs1Z56vnemhiwRsUmlnpbGPnnRcPKNU+2sLqF3gvVR7gkDIqj0aKRB41jI800I
         UQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764830978; x=1765435778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JmxQysCR134n2X2yxpyzNPSzsppqGu72HHKjpEfLnis=;
        b=J2xVxAURTipVc7dhQKZOcGsgH5GhcAdzeBYFMFH3AKKikSEiEOHjWBm8bcmPpWgcWt
         8+AwAqNk7xSLH2KtpvTixVIJ2QOoOHTXYLzokNqDpQhw1jOTu4/sVNSTf65kFDC/tD84
         /WX3llCB+QQz55tXsYeUaFyDGU8GgkfYmoERitge2UCRwoNc/lUX7KXkXfCn5q+h8SPR
         UqT/vnBQ0GuhN/OnHFTbOVFJrNsG6nazDwlBrxRYCl3EPQ4iv7S41i47N1J+V2US8e1B
         GXtRX3VYCpJqz4bW52qc/OZw5ZGQri+nCa5iXI26XXApUG4AajBBrxKRbKnzI5AYy2MY
         z8vw==
X-Forwarded-Encrypted: i=1; AJvYcCWOsjFPZSn0G1ls09jYqbt8DzS3i2t7qSKbt/6ML8eZxj2/t7ATa6w2uQZBgSjWGMoL3XvjKmSWKo/c@vger.kernel.org
X-Gm-Message-State: AOJu0YxUurHm7TRL8rIlgn1kzzwNFg0OjAKqLFj0iWXWuYmtj49BSNiq
	JB1JrixyG1PjMchugGmKTXBbxDjdU9o8C9l690eoVmearfLAB5a1rzZQjhmF2oJpWlCzKDjkqRA
	0slUdeJhjOMH7W+RUawzfx4bmiV/fHFR5sh9puREegpXEZHUUiRJzWZsqNhO0F6B8
X-Gm-Gg: ASbGnctj7mYVUqp1Eq0e7YNcQieX6f3n6lKDr0xzyIqPuB7YaejelcrNYhtPGz4gzho
	t1FiNlIIqbCKfch56abbiqEamZ0sGB9/ablmhAigKtJkgJrK+kAo7muS8vcND9xVzCfwngvQzeP
	Ep+IbCDuFg3sSOewQQDc36/fiW9+XsNFJA7gtreHIsefoZjDRdIz6qf5uorguJFyzWtbz0hPZio
	BT7XvW/FknpM8+iJTrNeT1kklvGTYlv9el95HcAhBintsgqKlliOhtb9oxt5gkChS6W1yFBBmPr
	agv4E6JymI+hytBcHLUzeTH845mmDnwNUDoCljSj1ok+z5A6uiS0ZTmMvo6CdnCS6ZW6jWd3LaZ
	OBSFsd5skiNymld/VIy2VK2VaOtg6zpeR5IHAVQ==
X-Received: by 2002:a17:903:3504:b0:297:df4e:fdd5 with SMTP id d9443c01a7336-29d68374edcmr58468225ad.23.1764830977697;
        Wed, 03 Dec 2025 22:49:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgbdk7irsBvw1LZJUA0OWs78tPE68m1BrsOGzvi1/Vkcfye2t+5+TQ2h6idk9qPOk7MkUtEg==
X-Received: by 2002:a17:903:3504:b0:297:df4e:fdd5 with SMTP id d9443c01a7336-29d68374edcmr58467915ad.23.1764830976979;
        Wed, 03 Dec 2025 22:49:36 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeaac16fsm8526875ad.87.2025.12.03.22.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 22:49:36 -0800 (PST)
Message-ID: <de44560d-4ed8-41fe-be7b-56412b933a8c@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 12:19:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] dt-bindings: clock: qcom: document the Kaanapali
 GPU Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-7-fb44e78f300b@oss.qualcomm.com>
 <20251126-elated-stoic-scorpion-25b630@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20251126-elated-stoic-scorpion-25b630@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1MyBTYWx0ZWRfXwmeBDPQQPEjd
 wKCJbcj4GhnqcuOw9OCa6lzqtyDu6mKo4aCWw5iM6SOLK7Si1GXySo8Yna854cTKF7jGciNKuTk
 ohxm/zsUfxE34BOXp1/1ozhAB7TsUn8RdJJXcq2ax1WA7z9DgIJpNfwLUzqlDIahWt1a8nphmkq
 Fz1jvlTym+Ggl8muKh3ckVqSpsDvxbq4GTaIioT8/9jDJAZd8hns/KM1SNqB+dOmVtxha5i40cp
 FUDLRcZ9pfjUk1EDU4TU33tE882KZDnjHQx6iMTjZi29KS7rQz/ZREB7WYjG8Tmpsy2yUV+D/Bo
 gZoq4hIwt8thUyqPzp1KWFqZzMcJx2YVrLvce4pE86MbYZBjw0r+jAOf3Osynusa8zpWC1GFhTw
 Zr8Ou7YV/FN/6wY10D7ITsayb3CWPw==
X-Proofpoint-GUID: iUzVkCXBxHEsQoFI_ddwhIR0F92yd6Yp
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=69312f02 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=llZtH8EMZHlCI_xCz4EA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iUzVkCXBxHEsQoFI_ddwhIR0F92yd6Yp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040053



On 11/26/2025 3:05 PM, Krzysztof Kozlowski wrote:
> On Tue, Nov 25, 2025 at 11:15:16PM +0530, Taniya Das wrote:
>> Add bindings documentation for the Kaanapali Graphics Clock and Graphics
>> power domain Controller.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    | 63 ++++++++++++++++++++++
>>  .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
>>  include/dt-bindings/clock/qcom,kaanapali-gpucc.h   | 47 ++++++++++++++++
>>  .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    | 12 +++++
>>  4 files changed, 124 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..31398aec839d88007c9f1de7e1a248beae826640
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
>> @@ -0,0 +1,63 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/clock/qcom,kaanapali-gxclkctl.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Graphics power domain Controller on Kaanapali
> 
> "Power Domain"
> 

will fix in the next patch.

>> +
>> +maintainers:
>> +  - Taniya Das <taniya.das@oss.qualcomm.com>
>> +
>> +description: |
>> +  Qualcomm graphics power domain control module provides the power
>> +  domains on Qualcomm SoCs. This module exposes the GDSC power domain
>> +  which helps the recovery of Graphics subsystem.
>> +
>> +  See also::
> 
> Just one ':'
> 

My bad, will fix it in the next series.


>> +    include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,kaanapali-gxclkctl
>> +
>> +  power-domains:
>> +    description:
>> +      Power domains required for the clock controller to operate
>> +    items:
>> +      - description: GFX power domain
>> +      - description: GMXC power domain
>> +      - description: GPUCC(CX) power domain
>> +
>> +  '#power-domain-cells':
> 
> Power domain controllers do not belong to clocks, so this is:
> 1. Misplaced - wrong folder
> 2. Probably wrongly named. gxclkctl sounds like clock controller, but
> this is domain controller?
> 

The GFXCLKCTL is actually a clock controller which has PLLs, clocks and
Power domains (GDSC), but the requirement here is to use the GDSC from
the clock controller to recover the GPU firmware in case of any
failure/hangs. The rest of the resources of the clock controller are
being used by the firmware of GPU. The GDSC is a clock controller
resource and modeled from the clock controller drivers across chipsets.

>> +    const: 1
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - power-domains
>> +  - '#power-domain-cells'
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        clock-controller@3d68024 {
>> +            compatible = "qcom,kaanapali-gxclkctl";
>> +            reg = <0 0x3d68024 0x0 0x8>;
> 
> Keep consistent hex, so first 0 -> 0x0.

Sure, will fix this.

> But the problem is that you defined a device for two registers,
> basically one domain. I have doubts now whether this is complete and
> real device.
> 

As the Linux GPU driver requires only the GDSC, I have mapped the region
which is required by the clock controller driver. If required, the
entire region can be mapped as well.

>> +            power-domains = <&rpmhpd RPMHPD_GFX>,
>> +                            <&rpmhpd RPMHPD_GMXC>,
>> +                            <&gpucc 0>;
>> +            #power-domain-cells = <1>;
> 
> And cells 1 makes no sense in such case.
> 

We would like to leverage the existing common clock driver(GDSC) code to
register the power-domains and also maintain uniformity across chipsets
and consistency in consumer GDSC phandle usage.


-- 
Thanks,
Taniya Das


