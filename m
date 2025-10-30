Return-Path: <devicetree+bounces-233114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7125BC1F2BA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A7E51A22EA9
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA88532B9BB;
	Thu, 30 Oct 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SylwrB21";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QLCet4sf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88048333757
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814553; cv=none; b=inPc1zWULtEwDWhm0lFFzLL1EnJOyTSi2LIw8QuRPmfMNFJY0p/npTIjGVpkcAEbrtkaoKtER94eiaTqV49PDID+jT4LMiHRL5Fsozwk+1mTeLMHstnN9/nYZMNMwRtT5ipLYwoIchpQPD9h8OR/RYfJ3Oo2UuelgdJEeDjbE0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814553; c=relaxed/simple;
	bh=cxxCsSZoH2PrmVQn5BDDlsSJKnREgp2gTA9TFIGAVk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RQpEqf76o4A5E1H2ApdlpJrmur025tyYlmNAbhDLxw5HjUi8I0Ch3hvB0TA1wzC3qKaUzjp8wLupRbuhXhKsg6bUeLts6x3GOJJW6dTM+S31tKIHKVdVIm9r+QvMA5TSgWXDn+/dRvKvnEhBmErETmnX7F/j2/d2Xpj8XFx5vc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SylwrB21; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QLCet4sf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U2NGUp4135558
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:55:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+qrH3FYH3hbZoAKVObnmBYSXLmj/NbUr1nicFAVuY2s=; b=SylwrB212jP7Nd2A
	6QenvBCd9Q968VVNCOafDN4ytj/ZPe2qjZXtAxBOuqPJ1Yt0NH/EeBa3rouJY/Vy
	CNUOp49I3j6EA4t85zCPrUmVFStCFYLpf0lEru9tew6Qkqws2zC1GiQMhuCBpEFX
	mp/by3az8uhoLLUtYHSlO/KAdgH+FJBH6I6N3MPN6YBQnC+3vRVLqriAzwGN2k6f
	FIJKwdU/iU0g461StpkwZP6RHll3aoagpNc/s4EynkFQgfPE5hazKqu1mKcmCp0f
	QgVHs431K/eRe1LlLrJPLBie5m6w+KZ9DYiRgrx/caZi5b5kpEnwNrcaXQE5jFkH
	+gog8g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ff9v06w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:55:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eba247f3efso14852401cf.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761814549; x=1762419349; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+qrH3FYH3hbZoAKVObnmBYSXLmj/NbUr1nicFAVuY2s=;
        b=QLCet4sfifTxzNrd4tQrAgqjDJ5cJ2hLAIszhrf6AZLZUru/Qap7vbOe+P/nBunMj5
         TfFU7nJDOxgkI6ZH/NgsEI5D3hU9F2mo34sQ42fVj3iQsTrMrVtnBvoZ7j+xUSt7Olk3
         r9jjRSyAmCRZoBxy24LUgPeC8bzg3drenFXFLc1CBZOyhf1F+SMDR9n3Qo5v/UIPyQv6
         X65nMjMeFJEbQcbQvhYX/oC92KRn99kq8AZ1F0naWHg6xI+y5EwF0lEKwNKIjfK4BiPT
         mxYmHl/Y2GInRQ+jLRqf89MlrpWbc8E+8k/3LhQ7Ppr+DNIx3xkgERgc60gmxiZTP+cv
         AjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814549; x=1762419349;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+qrH3FYH3hbZoAKVObnmBYSXLmj/NbUr1nicFAVuY2s=;
        b=bkpsZQJvJL3G6ZjgrPVJQ34XWOJ5spVmOEaMMhzU8i4ina/+1YqMu6HCk2boXo0QcC
         i0O8ThhWlGYd105jwB0D/5t4bU1O40vaFdc47pmaVchMpJSM8Quwfnq+zW3JoUs98nI+
         VOzw6sWGUSRrduFki8Iv0eXvCYPHrf6T/F7VNIvf9vKArhQIWbvLUOgAGH9fEebytMiy
         r3Udl/XxsydPSEjRylr6mHSw8E8YbOG2DBTYYUU7i18UfqOQ0jGLKeOuRlfbvZNBpv38
         MPn01CBKUIoo9IRHPKQaUkFMOvlI4iWmoTA09XDo+ZBML2VASFtTPHZjth3kd8XE35iB
         dSOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnnPyai46kh5obE6aJ5khCK3K6gwLjf6NhcJsTYu2BDFDKFXwIi+eUko1qpmOY8UcTtGSU0u11/4Gd@vger.kernel.org
X-Gm-Message-State: AOJu0YyCAXLx/q+fT0wm43HkeTTmmGAIsKtqwS4JU4uRyik45mKY2Tcj
	Az2202Mm9jLWQF0/s0fJfcFqCak1R79ALO8HPqY7wykP7gHwXkt8F7i3t2Flr0FaCUQ31d5JFCr
	v/zBc2wQr97pOsZJRrKgoh5AjqUwCxEROiQ8+xipj15aJ7o4n26trIaSobuL1/mY+Sb03RHwH
X-Gm-Gg: ASbGncuDUiFhferkc17hU/N0yRetFQ3Bxz3GIJnIs2/Fgs1ri5uaTG77dVuKhxIcQKr
	TeFDe7KbJRQvzfvxbOhfzCs9qH7Dl5jg59JMyD1db9KnJc3x25IfbMGNYwt/4viaJLmFkT3Bm4X
	PSaYGbsPQH8DJrtq7GIYUqfFuvpN3wbHW0nqSDYBxGeOxWLSu5EmCjrRuo/dE7ebqT9bWn5QVWo
	yiiWUFTMZQHnYC7u2DK+jqc+XH/3nKtITXWJQdHSQttU4JwMAW7CBkJIiNvhdLBslwInuDPd4g5
	LIudelL5jl0jqsZH/Mr5UrmbMpu7ArvZ54jHYKPwYM5ijNrCboKvRk+YzIeulBv50g1OO6blZSL
	DhrC2fnt33fA95P4lCOeOtEygIA==
X-Received: by 2002:a05:622a:cd:b0:4e8:a4ab:8b3f with SMTP id d75a77b69052e-4ed15b752f9mr76336431cf.21.1761814548772;
        Thu, 30 Oct 2025 01:55:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCcLTouF7EUlNHhzOV6EWBClWbNZ0AYloD0w5fbFBSgJ54AaUNWNCj23kMZeTW2JFsEVGr4Q==
X-Received: by 2002:a05:622a:cd:b0:4e8:a4ab:8b3f with SMTP id d75a77b69052e-4ed15b752f9mr76336291cf.21.1761814548244;
        Thu, 30 Oct 2025 01:55:48 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952ca569sm30218630f8f.12.2025.10.30.01.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 01:55:47 -0700 (PDT)
Message-ID: <3fefecd4-e6d5-4804-9e42-76078db620ff@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 08:55:46 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115
 LPASS VA
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: robh@kernel.org, broonie@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        tiwai@suse.com, srini@kernel.org, linux-sound@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        alexey.klimov@linaro.org
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
 <20251029160101.423209-5-srinivas.kandagatla@oss.qualcomm.com>
 <20251030-flat-elated-pony-de74ab@kuoka>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251030-flat-elated-pony-de74ab@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 36P_KowbLeftgWlF2U5AvwaJIhlIwX2x
X-Proofpoint-GUID: 36P_KowbLeftgWlF2U5AvwaJIhlIwX2x
X-Authority-Analysis: v=2.4 cv=Cf4FJbrl c=1 sm=1 tr=0 ts=69032816 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eRncXTchY04msvVhtuwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3MiBTYWx0ZWRfXwzLYgXltu1zL
 TmbpVj8ym+1yHKL3aTei8lLpWZqRP1ATy8Tz1BsZDD2xNYdxpz+W5tMTb9Z8Myi2pGNktbF6Upi
 9Fv/t+uTfA8I1gaH87qv78poWHRnpJqQaW+pO0IDA9GnlJ4JTBU85L+ShRo/lasZ38R6fcGYDdS
 4mhMzbgDufineN/WA1y8Jari1Jq2xwSCxe+gh0fnkDB32pE5ubjYp85C2yqELco2UyLhvz+bahg
 OLCV2MCOay2n9nIRkEjisqcA3hWIORkXuwVFAcR2BINO6VIICsVt0BuA6aRYFf950snj+uVJ1Pr
 nK2KivDBQ7kU4wnxtYoatNafQ9zXhs1rv+S/IDZxa+9y4nveZX3FCYTMeyjwDYeQudTh8yI1DEt
 JNg+LB2lmcscgRFMGDxsMa8fkl7bJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300072



On 10/30/25 6:30 AM, Krzysztof Kozlowski wrote:
> On Wed, Oct 29, 2025 at 04:01:01PM +0000, Srinivas Kandagatla wrote:
>> Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
>> VA macro codec, which looks like compatible with SM8450, however one of
>> the clocks macro is available in this SoC. So updated the bindings to
> 
> is or is not? Which clock?
typo.
macro clock. is not available.
Existing dt-bindings need some cleanup to be able to add a dedicated
entry for sm6115. Will do that in v2.

> 
>> allow min-clocks to be 3 to be able to use SM8450 compatible for
>> SM6115.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/sound/qcom,lpass-va-macro.yaml | 10 +++++++---
>>  1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
>> index 5b450f227b70..1ac3392776ca 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
>> @@ -26,6 +26,10 @@ properties:
>>                - qcom,sm8750-lpass-va-macro
>>                - qcom,x1e80100-lpass-va-macro
>>            - const: qcom,sm8550-lpass-va-macro
>> +      - items:
>> +          - enum:
>> +              - qcom,sm6115-lpass-va-macro
>> +          - const: qcom,sm8450-lpass-va-macro
>>  
>>    reg:
>>      maxItems: 1
>> @@ -44,9 +48,9 @@ properties:
>>      minItems: 1
>>      items:
>>        - const: mclk
>> -      - const: macro
> 
> No, that's ABI break and I know existing code works fine, so there
> cannot be justification for exception here.

I agree, I did not want va macro to divert from other macros which is
why I was trying to accommodate this under sm8450.

We can add a dedicated compatible for sm6115 for va too, and update the
codec driver.

the dt bindings need to be cleaned up similar to what we did for
rx-macro to be able to accommodate the change in clocks for sm6115.
something like this:


--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-va-macro
+          - qcom,sm6115-lpass-va-macro
           - qcom,sm8250-lpass-va-macro
           - qcom,sm8450-lpass-va-macro
           - qcom,sm8550-lpass-va-macro
@@ -42,11 +43,7 @@ properties:

   clock-names:
     minItems: 1
-    items:
-      - const: mclk
-      - const: macro
-      - const: dcodec
-      - const: npl
+    maxItems: 4

   clock-output-names:
     maxItems: 1
@@ -70,50 +67,55 @@ required:
   - compatible
   - reg
   - "#sound-dai-cells"
-  - clock-names
-  - clocks

 allOf:
   - $ref: dai-common.yaml#
-
   - if:
       properties:
         compatible:
           contains:
@@ -70,50 +67,55 @@ required:
   - compatible
   - reg
   - "#sound-dai-cells"
-  - clock-names
-  - clocks

 allOf:
   - $ref: dai-common.yaml#
-
   - if:
       properties:
         compatible:
           contains:
             const: qcom,sc7280-lpass-va-macro
-
     then:
-      if:
-        required:
-          - power-domains
-      then:
-        properties:
-          clocks:
-            maxItems: 1
-          clock-names:
-            maxItems: 1
-      else:
-        properties:
-          clocks:
-            minItems: 3
-            maxItems: 3
-          clock-names:
-            minItems: 3
-            maxItems: 3
-
+      properties:
+        clock-names:
+          oneOf:
+            - items:   # for ADSP based platforms
+                - const: mclk
+                - const: macro
+                - const: dcodec
+            - items:   # for ADSP bypass based platforms
+                - const: mclk
   - if:
       properties:
         compatible:
           contains:
-            const: qcom,sm8250-lpass-va-macro
+            enum:
+              - qcom,sm6115-lpass-va-macro
     then:
       properties:
         clocks:
           minItems: 3
           maxItems: 3
         clock-names:
+          items:
+            - const: mclk
+            - const: dcodec
+            - const: npl
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sm8250-lpass-va-macro
+    then:
+      properties:
+        clocks:
           minItems: 3
           maxItems: 3
+        clock-names:
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec

   - if:
       properties:
@@ -128,8 +130,11 @@ allOf:
           minItems: 4
           maxItems: 4
         clock-names:
-          minItems: 4
-          maxItems: 4
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
+            - const: npl

   - if:
       properties:
@@ -143,8 +148,10 @@ allOf:
           minItems: 3
           maxItems: 3
         clock-names:
-          minItems: 3
-          maxItems: 3
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec

 unevaluatedProperties: false



> 
> 
> Best regards,
> Krzysztof
> 


