Return-Path: <devicetree+bounces-190713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BBDAEC7B0
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:33:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A31D03B4CE1
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588EF1A5B91;
	Sat, 28 Jun 2025 14:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Er8+EO/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81941E2602
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751121228; cv=none; b=L5u2r/G3GUFrb+tUUmSWdCCuyXV6L8xcM2XabZ2lPyzNh1lhHqbdqG99L2ikRavxg8O8hjZJTFm75LgP2qkl+MfT4ZPCK9KT7O7iyyyUqsXEIWlC7jHjmQSeqYg3Tal3wBtK3aJ0QOWEQFSmJq7smz0I0xmMrYdHQVG5thVDp44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751121228; c=relaxed/simple;
	bh=H/z1iLiEZXOU4uzftN0AnKLKkX0XaCAs2CMguHD8mao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dGPLDKZDKdD5807iBT3q9+UOXDARL4r59oaSuJFIngR9DwFlHX0/6CLD8HkqvRFbaC/sBY5nFeIaAhmYiAqg+Oqx17QYkKuJtMfSrrkLKkhgf8BP6YN4k186xL+wvDfpTR+WOQ3wclI5YMYtl3lTsq9VBSzPc0m12B0iEK8OAe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Er8+EO/Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55SBVG9W016475
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:33:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HuVOl6ZxJLGQ7rcb1ieCWzhWudrjJUbl0x5e2lJC0QE=; b=Er8+EO/ZK69WgHqO
	Ck2djVAHNvo8e6tzV4dwm764jGaPgLwdDVIGgy8/qCY7wUkD+4dC7Sty8lMi+zcZ
	DzmQRqn7/ydTmUyL6k/+mh3pRFoE/whwMnSDnlOCW6VeUkNKo/81nYvb3nxkc2Wl
	DbF8C+KXaa9zFOROIXMJn0goehAcweStzWOSg5DNTD8J+64fd/to8A1zwwn/imai
	ObPbhdlPOZLsfOBknjSP+d8Zcea8/3zuJpsqmFn4Gf+88nNSTg1Aqhp62yydrgu0
	5Jry/U602mxmMnLyy2tj54NBra1k0DbZdlojYgVmAwjtqczNXjVnQpAVbxrUkF6u
	AohWjQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7d9rtvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:33:45 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb5f7413beso8602586d6.3
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 07:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751121225; x=1751726025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuVOl6ZxJLGQ7rcb1ieCWzhWudrjJUbl0x5e2lJC0QE=;
        b=Eto8I9ZV9XQ9ULE7Tp2LRcE79ftVyiPB1603T8hJkMZonsUDIVqepSztEVdIzD2V7E
         TxW1ZFPsH6ToyRPcfd1MIUX87+4a6D1gMtx40AvcmvzntdKqN4EuaWeAJMs19MTWxsM4
         h+16atsEyDoSudlZFMhu4DnW0oyrfRHHb0MoDAWuPWlICUNL4bkBDPO9hsMfxzXrHK3K
         0fvK2Jc+3mfXZCvVKOQGrT5Vp4iTW7bp3RVf37ggb2zm3uNu2MYwOZfHg0/MnRPjvBB6
         iLuikMRhBYVL7+vM7KcCtohZ/huo7R4y+tjp/A9rEFAv0lFinHFvE99Zk3qWhRYKhvBK
         o3ag==
X-Forwarded-Encrypted: i=1; AJvYcCXRZhbgkXxNZzJ8dd6hWdEpnVh2ueimFWo0AxZxVJIpBZBxfegmF6LPNozCY1PcWgQIMfeX27FokYiX@vger.kernel.org
X-Gm-Message-State: AOJu0YzpCP0kUXMB0ZPCXeis2pslDD3eTwsWKgmXoBgqXivqx9WZPXlN
	ALtu+zDszD3tzT8Sjxp7FC1UxLM43Ai0/U7u5G16WtCVhRrKaPN/c1uKjil48+zaWrSgqXPOsRS
	lx0kebv30kSEdrs3oFvEBkgqqDJQlK1YN1TRiAPrNwblYIy72ta/ir+GwQOnXziuZ
X-Gm-Gg: ASbGncuPErCgL8uEj4MCXutTaznY2czCR5PtqQYO5N5JPGu9lieGj+1nPyXXBbf0j59
	fg5JvSqGXXKhmXFYiFsbhFNGoF2e3IDK7l3aRMYQ/ek9vpVeaTT4agDuXNAdWiSl0WD0hfpg73V
	Sh4ePpf7dkPdPx7LTbMJouFk0rmx0IvaROB2j8ddSD9s9SS4M2S6lsnp4zfrpTFfQUM/EBxj+/r
	FnvvIZ2RRTHdk2L1k+luS38E+wG+W1gb+mzcGBYUlB4etyDKyTsoyutZGE1nnvkW/gMs5T04pNI
	d1T2OXS9lLz0+7ZQBA+BCQ0VYKbIuY6byEyqMNQkJVA5+StTGgTgxbMNphgP9JkTxKEwfADCmFf
	0tT0=
X-Received: by 2002:a05:620a:468f:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7d44c1e865bmr174082885a.2.1751121224212;
        Sat, 28 Jun 2025 07:33:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqoPiCw9YRPSLc7lTHGilnDJ3WRFqDc+rvgBEJtqW7+0Cd1vSfc7+jJ37iPWQdoj4t8l0x/Q==
X-Received: by 2002:a05:620a:468f:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7d44c1e865bmr174080385a.2.1751121223668;
        Sat, 28 Jun 2025 07:33:43 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831ff8b3sm3057699a12.67.2025.06.28.07.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jun 2025 07:33:43 -0700 (PDT)
Message-ID: <80079934-c341-4557-b1fc-29e2c132dd3b@oss.qualcomm.com>
Date: Sat, 28 Jun 2025 16:33:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: document the SM7635 Top Level
 Mode Multiplexer
To: Rob Herring <robh@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-pinctrl-v1-0-ebfa9e886594@fairphone.com>
 <20250625-sm7635-pinctrl-v1-1-ebfa9e886594@fairphone.com>
 <20250627204432.GA45217-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627204432.GA45217-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDEyMSBTYWx0ZWRfXwO7EQkFA605K
 U9f5ycF0uNuyUYDSN2B0cke8yZLaRKK7fhh820N+Rb6SJCSi1aY2mZj9PyCm/66hHlwxdgz9m15
 bCvYiNdQMYIscTJkDWbo2NyGo7ER1j0Caes5qmiT9Ztj26cR/XHpJ8zaVtixF7yLd1+GxeMaWDv
 Hmv1XStj0wXVmCJm8aV1R4EV5QPSMG6GwkgVTXVfdEwW1mPnq7Fp6MSq4vujk1uHjpa8McXWJ8G
 UxiovP0B5RJGEx+JcYxvBlRTL3TMbSM0lCFOynbcMAl65vzKJA+5wruJ/W1I6j9bnFVDjkhPQAf
 cpW95Yj60Q8ZX8rs8MoGHgZFgzKG7lJz6NMpKq2U5Ap/2Mif0dNH6eRtQV0Fmuc6koP3i+FIKRW
 +aXuE4PnBwHqHVwyWMfRf8iHRxCz/knXuP3hSVSjAoMWsxbJF2wMjTd3nXbCoEWs61SHK2xG
X-Proofpoint-GUID: 8nPxgdmFX-1LMgeDOlg0y8WiYew3Opn6
X-Authority-Analysis: v=2.4 cv=RrbFLDmK c=1 sm=1 tr=0 ts=685ffd49 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=6H0WHjuAAAAA:8
 a=z9lO1hKNhkvoeKZr6R8A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 8nPxgdmFX-1LMgeDOlg0y8WiYew3Opn6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 adultscore=0 clxscore=1015 suspectscore=0
 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280121

On 6/27/25 10:44 PM, Rob Herring wrote:
> On Wed, Jun 25, 2025 at 11:12:01AM +0200, Luca Weiss wrote:
>> Document the Top Level Mode Multiplexer on the SM7635 Platform.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  .../bindings/pinctrl/qcom,sm7635-tlmm.yaml         | 133 +++++++++++++++++++++
>>  1 file changed, 133 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm7635-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm7635-tlmm.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..3f49239efb6e866015b40e3477a8bd0edd21b1fc
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm7635-tlmm.yaml
>> @@ -0,0 +1,133 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pinctrl/qcom,sm7635-tlmm.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Technologies, Inc. SM7635 TLMM block
>> +
>> +maintainers:
>> +  - Luca Weiss <luca.weiss@fairphone.com>
>> +
>> +description:
>> +  Top Level Mode Multiplexer pin controller in Qualcomm SM7635 SoC.
>> +
>> +allOf:
>> +  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sm7635-tlmm
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  gpio-reserved-ranges:
>> +    minItems: 1
>> +    maxItems: 84
>> +
>> +  gpio-line-names:
>> +    maxItems: 167
>> +
>> +patternProperties:
>> +  "-state$":
>> +    oneOf:
>> +      - $ref: "#/$defs/qcom-sm7635-tlmm-state"
>> +      - patternProperties:
>> +          "-pins$":
>> +            $ref: "#/$defs/qcom-sm7635-tlmm-state"
>> +        additionalProperties: false
> 
> Is there really value in continuing this complicated QCom pattern? Can 
> we just have 1 level or 2 levels only?

The 1-level pattern is useful for states that contain settings for
a single pin (or a common set of settings for multiple pins), whereas
the 2-level one makes sense for groups of differently-set pins that
are logically coupled (e.g. a set of SDHCI-active states)

Only keeping 1 would increase the boilerplate as each group of
logically-adjacent pins would need to be referred to individually in
pinctrl-n = <>, whereas keeping only option 2 would increase
boilerplate in the state definitions (think creating a 2d array for
a single scalar value)

So I think both are rather useful in their own regard..

Konrad

