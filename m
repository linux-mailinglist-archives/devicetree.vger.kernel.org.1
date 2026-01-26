Return-Path: <devicetree+bounces-259444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKu/FiJCd2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:29:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D064E86F15
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71DDE302002B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEF132E753;
	Mon, 26 Jan 2026 10:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qo61C98E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C3tekMNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F86E313550
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423209; cv=none; b=oW3KC9wwTGlcUPalopczRdFXHtVguTlI4QzMNb046qQPrU2Kck3Gr4vSlx1yStggy9BJeHAdKIBrW9jB221cw8tZzL1Rbex1hPSRjOakR5KM8oa4G1p4Pel/xctp8RQZ6PF4mEuOwfNuUoLYIYKd2AnsPkn4X8OY3+wvlMNjVX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423209; c=relaxed/simple;
	bh=zbKGx4LYMUTXUpwVoC7oqmRYDJSiv/qkgXjtwgLExmQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P8uX6fS5nuFPsWys5u4Z+96RPl1/ilqpEoG79Qp1ARD0Cbvv7jct3ghQIrsucvgArHjf61Ox1lQwvVRLJ/5H+baDOq/yBTYURinM6/+Yrx6Z071NkOrCEF+4+EIrvHrqWn5dxPcLBrlruromR1XAazfDlSHLXVuDNHqL1aCmkyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qo61C98E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C3tekMNt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8RQgV311095
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:26:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NbfSiylWvltQwu7NQekwdeTvyNz+4tlsCK8FJwpqZCY=; b=Qo61C98E35n6PVDd
	DbCuFuIWBNzp8bsdW0Q/mUlDcVJ0HuCCc8qoTAxamiGkhYXyp1NSGCYo4WxEsR9K
	yqmygOqaY+aXf0aGXfkySyrrx4ozoywlR4+0STC+wfltQcUeRS6X0LRIiqwD3xiZ
	uISel0msR5ivsqJcUtCU3LI5ndfrW+u+QQjMOzIMx3c9tG6e66Az4j+HgM6A1ps/
	5l3higduzuBo62TkCHhxNRE+0DDTJShKR3BHJoi8ziZPudi/Q4qfdcja+lk26gGY
	0B2CJI3mknc/JP4VTMZN/gbsMXIKVXuqzZwOZm/4afHBY7eHjfWNZMXqP+9O7Zxd
	R2cYIA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9qm7bt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:26:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c533f07450so116063085a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769423206; x=1770028006; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NbfSiylWvltQwu7NQekwdeTvyNz+4tlsCK8FJwpqZCY=;
        b=C3tekMNtPoY8D//4mDDOYkUzcusbZ0eYR66WhEG5Kld3LwA+tHZVUSfQVKvh3oouTF
         VHvcDt38fkZhhvZ3UNVBJdL2bQ78hFr82HgEhiIvd5XPAParNBlKb0hRlNhkP2lkF7HH
         2MKLwJmxBke302iTsHqnHW98IJvOZ6LHrTaFm4ebVWkeV/E8SkfgbfLsJXBPtGvtwofz
         PR25mzXPPD7wSdoD2phMzOrvo5Isz9BmbUkb//MFUb2gHLFv34eRvEQnzEfULQo0mRKI
         IxVeUxLjU/LQrzo3SPN4Prqooqv8zG1mz96xYE47b4cF2ULg1MDvJZ5W5gMGMeG80alc
         1Hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769423206; x=1770028006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NbfSiylWvltQwu7NQekwdeTvyNz+4tlsCK8FJwpqZCY=;
        b=asMjMWkSkTaal25T18obMmeM6Om/I+cbQxmhHqdC7qGezilgVHuLlmGD1FSzg1x/cI
         MRFfayKOTzbeWYeRY9KE1xRWg/sytrxqfW+JKjsFvhis3ZWMzZYEl+ZIBpXnpG5gpk+I
         Epi93VnFibhzj4Mu2SvV1O8yZZxO0yf0FjhTGnUuxX25KFWuxhQzzEaSSVSF5FMT0nWy
         kfnkQUZ7SnbWVyt3qwE9aYv7jti6hYzlH+uxj4lTCL1H6JJnypiDrp2LzW06OOG1Zbku
         mie0duAUVJT70Ia8teMiVXNSq13N4hCCqCGg9U29JkI6UUHWqEzcwPJF+bomCG4dZGYv
         QBKg==
X-Forwarded-Encrypted: i=1; AJvYcCWR2B2xV5POd4nu36jAA1VieFFpem0u7pQpE4rtg7RZWgQW4hqgtAzwC/UMXu5N+Iu/N3acHHtyWHZt@vger.kernel.org
X-Gm-Message-State: AOJu0YysZ+zpPiku1j09Z3tbr5IOLdA8K8GVwmRcY+x6ncYp/utKeOgi
	Xytw7uOcRuCNHxFqCF8BrslkNOhjU42F1WNjNEHIs/mFT+PFv1UHqUaYvKfXVDjPsK3Z0+qLl03
	lGKKE1c1+WKnJRw4lRV0BMDwNfL+IyT381Qz7wg1EKuIbviSnkxjoPKVTNgUxmV9c
X-Gm-Gg: AZuq6aJuy9p3/PeWB+TnXDGiBP4o6AGljv+FaW0hV41wJHprMmOWUBYRLhQWrllcIt9
	HclF/fvuWhFH3EkIjNqCSEI6grnfXlH9bEhN/8vLn/mx9dnknt/jhE0Gpwo77JAnRdArtJWwcfw
	Njtd0IZU+UM8MxSbsb0m0LXAvErVeU5XPWWx6nsXEqVFkWsV/zz5dq1oyJctEACwgzNt+WYOkQg
	2HUSiok8NMO3VXAIf7NOpZw80Qm3/gDudKuS/K0dt+RPPxIy3+VS4zOJ7Y377dSv6J0dM+7JreW
	mJY2+V2//RHC4sDjPc/aDiRHgqm3PZZk+nfGYAQZoPLlKqpdNh70DI3JivaTdauoOWC0rcGp5fw
	XyxTu4/xiUqwOObHjyQ7QfZd3HP+RUAwDsjrqLxaKTzYh4HvZrHTmuy58ha9+/qetYvs=
X-Received: by 2002:a05:620a:17a3:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6f966f9f4mr338989185a.10.1769423205996;
        Mon, 26 Jan 2026 02:26:45 -0800 (PST)
X-Received: by 2002:a05:620a:17a3:b0:89f:63e7:b085 with SMTP id af79cd13be357-8c6f966f9f4mr338987085a.10.1769423205486;
        Mon, 26 Jan 2026 02:26:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dad3asm617422566b.12.2026.01.26.02.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:26:44 -0800 (PST)
Message-ID: <76f24d28-30e9-4268-8774-9e75a116959d@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:26:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Eliza SoC
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Georgi Djakov
 <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123-eliza-interconnect-v1-0-010ff0d100c9@oss.qualcomm.com>
 <20260123-eliza-interconnect-v1-1-010ff0d100c9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260123-eliza-interconnect-v1-1-010ff0d100c9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rJF7zluMUUjHwzQl9fw9zHc9jEKuNjq8
X-Proofpoint-GUID: rJF7zluMUUjHwzQl9fw9zHc9jEKuNjq8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4OCBTYWx0ZWRfX00PCTuGy//8z
 QXu6AjS1B+3B8H6oi4LVTnDhtRERI0IHp0KXA6512k/WsQ9ySTxHk/kv0NXybV4mzU/svtaYhCo
 f+cbFQLRxwhmR2JReHYIWYAiq6tPukLlIDF096qLW0TZQd2bmliCs1PIY4QHMCyRiL0V+uG6VoC
 nFVCjl45VKi+jYHO+0coJ0FWX0h7cu/0LOy8pc26ted0AjEssYtXSP51YUAY1yGARDmr0F+ZJus
 xYGmMDfv27jfi4JI5Hto/kfPWmiCQtMm0CPDEirY01RUblJYET5qgK3vP4wQANJC1m37/oG2rPS
 yEa9JSD7VVFtjy2vfepZGCadAzQDooEdnpYRGVaR4iIpt5yhKAuzwy7Y2fEZ1vrSQ+rfZf3A8R5
 gA9TYjPH6HjPfX8Yk0fEbmKdivexbiILx1eheqTCAfM4udKqMQExWA9kT8igPbxaM9L5AHseU/H
 aPp0yMFhE3nkbNhyv8w==
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=69774166 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=TziFidvlL9lt_hk40QQA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259444-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D064E86F15
X-Rspamd-Action: no action

On 1/23/26 1:43 PM, Abel Vesa wrote:
> From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> 
> Document the RPMh Network-On-Chip Interconnect of the Eliza platform.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  .../bindings/interconnect/qcom,eliza-rpmh.yaml     | 141 +++++++++++++++++++++
>  include/dt-bindings/interconnect/qcom,eliza-rpmh.h | 136 ++++++++++++++++++++
>  2 files changed, 277 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml
> new file mode 100644
> index 000000000000..20da73c1c778
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interconnect/qcom,eliza-rpmh.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm RPMh Network-On-Chip Interconnect on ELIZA SoC

"Eliza"

Konrad

