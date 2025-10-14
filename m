Return-Path: <devicetree+bounces-226360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8877ABD7604
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C991218A7F19
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624C323D7D7;
	Tue, 14 Oct 2025 05:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E/9jFdlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB9725C80D
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760418827; cv=none; b=PsCabFkAUFxavOHfEcGbiiuxARedIZ98ks7YBZTmvez8pwProQJTEhQHcEceq4wWSJoK8+GWfw1LTU/Xs0P0jC3tg57JEINWhP3FLRU/e68K0+jOTg8elTxQhggANoQTSA7mXBNMI08t0fTZtXN8m0QmXizS5P/DUDbDNhT1q0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760418827; c=relaxed/simple;
	bh=bg2eUKmsZctaIiMpNyHeUX3SYQYKQEYGpTMYvlqyEHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kQfvlS7TZk9o0HPamGDJ7v0rO9C9BX6oFMiOiuZz00iDVfCeuXdozdfggR7pIFUDZ8NBEBqQmxE70hFEK52FCpuBl2UiV2YjeC+rt/R7b1XXBWTvE+vlf/2fAAFPRyGmP+ld6wx2PJWrMq2UJXFunjTQWHfdNazD6oat/WSDZz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E/9jFdlN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDDls018997
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:13:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+r0How+FgbvW7VMlqsJ4Gwuo804o+0P5HhOrz8Iggic=; b=E/9jFdlNSvFvItD7
	Qgq0RBSkVGdOZfLgEObr0J86FI+KK26fpJjhYxtVY8tgCnqNlvNRbjRMkzRqt6JQ
	ArDaXV8CMspBS5tFtbXimHIzyQJyATNXeZA2R3kqOzMIVd7B3b44IdRFc/HVKLkz
	QQoCed0JcovfJ7mfl1h+rC0NhybFtR4eQmc9wdmDWqxNARoLM+0LWxfkK7LpamYh
	JaU62yc0RAd3qFQvM0UgHTVMuHb3RZnBpFgxjhTTEs2nWWoV7UC2jLs7KDGqG8FK
	VTAEKQdlmMTO07Wp05ypqYmmTaJ/HJrcq25nUXpiINH0UmD3tAwIYF5XG8vhcQ1+
	7/ekVw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfery795-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:13:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-286a252bfc2so84267905ad.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418823; x=1761023623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+r0How+FgbvW7VMlqsJ4Gwuo804o+0P5HhOrz8Iggic=;
        b=ZHV+7jTrSeEq7qqt2RbMOkadfbYoQ/nyp3KsRJYVDZZIgH2+EWgKRQZuelUWynex4S
         x5RnIyIAfFHyyi5OoP8TalRqIMKysnrauunlXJiEBDcR/DZccKxhj8qW6/RwAzWBZbTL
         VQ+ltceyizJv9NXsWRvVRIynTJ6Sf9juGE3jjdGMqBMB5mHy9Y5LphUtUQpJksKfBGXd
         rsxR7N+e1rl9jAQ70bJbU0FkpoGPTV0bryHxqV9BzIodaLCOQVcXdqoNNukxLBgWJvCz
         FH7GehmJtnYEU3OuiajivDrcjacempM8Fn54tu80uE99dGR83mSl2Y0Bpufg2rmbltt/
         qXGw==
X-Forwarded-Encrypted: i=1; AJvYcCWjN/Cmpi4x8oVSMqQea1BkEFrBEzEH7zTFZh+XyAiIPukAZqO34/h3X7NmOZCCH+ymuPZE2vdIvtHc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2ZaC9zHxp6qDcHaeg6l4tSuhDBJcbNWTet4d0+4CrcYtVkC3T
	leR5e+2LTk0tVYn25Ce7He/YfRs3oNPfadDmZwn/FLKeloYrg857SqhxN3vAcjNP2QlmL7HNId+
	T69NkgJTGBBEQchnsVRoBn1lGqb5tqwKtbGwJFInMvsZGIOa3oUriLLKRVASXJapj
X-Gm-Gg: ASbGncu2mlfpzuTaKMKTm+/KkMKVXvaBKYgFvOF74Et/nGlwksosazC0oNjr9vAA/Vl
	e8n7wKL7RyD4ucEtfoL4BKgx8nj8GxEQO0DkeKNZ7+CP0t75jLIubeyyMqEb0DGZjHE2owoEe7l
	K/5UAby7hruc70dEetpwlAkiIX7k8VmPVALv4o8bpR7b6V7XlYFyPiWvBNgDuEQXYw4aM/Dqfds
	jdbUOsANlWDNvciW8fXf86wX+LrVbCcn0MmY9Gq+YcJil4oiLoE11Y052jjX4VhxiqYltv8dWmU
	xL+ufeF4bNlBz/QO7PNWsi5TmFMEKCAtyxohlxu9hHo4iTLvgV/2SUA7rv+1ThyZSNBkIc7xL6B
	CfrhmnUZnNntsNbCh3FOJjoUJoTM/Kawvuw8=
X-Received: by 2002:a17:903:903:b0:24b:270e:56d4 with SMTP id d9443c01a7336-29027e60bf1mr282984355ad.4.1760418823191;
        Mon, 13 Oct 2025 22:13:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdt4dMK4a+NhzHfqRnuUEGX/Ugq/RdZkYVruAOzFTYYwT1X0g3D1TkCwSDZGCJIPwCSD702A==
X-Received: by 2002:a17:903:903:b0:24b:270e:56d4 with SMTP id d9443c01a7336-29027e60bf1mr282984085ad.4.1760418822759;
        Mon, 13 Oct 2025 22:13:42 -0700 (PDT)
Received: from [10.133.33.138] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e1cc8bsm150928265ad.38.2025.10.13.22.13.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:13:42 -0700 (PDT)
Message-ID: <6e21173e-dee8-4c0c-ac80-db53be92fe4a@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 13:13:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] dt-bindings: arm: qcom: Document Kaanapali SoC and
 its reference boards
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-1-3fdbc4b9e1b1@oss.qualcomm.com>
 <c2112d37-c937-4132-b9e8-e46b1fcd0516@kernel.org>
 <1b4979e5-0491-4f4c-8c0c-b7d519dbf54a@kernel.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <1b4979e5-0491-4f4c-8c0c-b7d519dbf54a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68eddc08 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=chr4P-twNQjDrvfbXYUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: AVOqUge4HaEOBPs1FLT837YwCJQq-Ad5
X-Proofpoint-ORIG-GUID: AVOqUge4HaEOBPs1FLT837YwCJQq-Ad5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0G5rCzgotdkU
 Cg7Bj0oMTwPQKvNLwmoGiq/FcPa6REdyEj2QVVBYSUu9HE3bW9iOxS0nMDxpIxuldC8/F5lbT5T
 ztQ4xXeXv+Rj1sA0lhT67yyaoqGPWseuW4u27YCxJj9N+DIO4JwseDaMYwlCyiE8GH1rrpl/4fB
 Z7F14BzOzTWAmyHX8hVqu5hrT3yWoKzKWH1vLlOWzS88YefIvVUxksIrTKcESZj79+L2vmKhcgu
 VsQ+vjOSgSHhogveybQcbqhgH9TDjlVr/my+pKGB6ZC5aM1ejax3WQruuHCRk+ZzTk6nMh3cZvW
 Y7PML/2nknLciU9E8i30cxAzBDDOqV/SFp0S9Hk8rxHhbHGwypjNHuF6H5ts/tK7nmlGKer2dqo
 GJdQ1Jd8lYfQ9p3bvt2OxodmDH0Z/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018



On 10/6/2025 6:24 PM, Krzysztof Kozlowski wrote:
> On 06/10/2025 18:54, Krzysztof Kozlowski wrote:
>> On 25/09/2025 09:17, Jingyi Wang wrote:
>>> Document the Kaanapali SoC binding and the boards which use it.
>>>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> index 838e3d4bb24a..0e84220e835c 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> @@ -321,6 +321,12 @@ properties:
>>>                - qcom,ipq9574-ap-al02-c9
>>>            - const: qcom,ipq9574
>>>  
>>> +      - items:
>>> +          - enum:
>>> +              - qcom,kaanapali-mtp
>>> +              - qcom,kaanapali-qrd
>>> +          - const: qcom,kaanapali
>>
>> This will fail testing, just like Glymur did. I fixed up Glymur, but it
>> was rather one time.
> 
> 
> Ah, this will not fail testing because Qualcomm switched to code names
> from obvious model names, making existing patterns non-effective.
> 
> Not sure if this can be reliably improved now, ehh....
> 
> Best regards,
> Krzysztof

yes. I didn't find it fail the test. However, do you need me add patch like this?
https://lore.kernel.org/all/20250716162412.27471-2-krzysztof.kozlowski@linaro.org/

Thanks,
Jingyi


