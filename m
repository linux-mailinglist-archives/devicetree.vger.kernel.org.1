Return-Path: <devicetree+bounces-273957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIDBH3QxsWm0rwIAu9opvQ
	(envelope-from <devicetree+bounces-273957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:10:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D727A2600B2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A31D830BC7FD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501223BADA3;
	Wed, 11 Mar 2026 08:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S0Rl+f+9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q7K4UOqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6000D3BB9F9
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773219397; cv=none; b=VPz1rv2iF93R8w/+b61Ct9FJkqF1/QwbXk7RfYG2xqssHhyDM5grnbxqp3EuTkTZRKg7bf7G+WRCtqfbyUgGUoiBQyoq+ql/RpXu/KqxEhr/9v1boFMuxNypy+/OF98qGlRp5b7mUo9CD8GVlNalJ9NQofvSzBFgXuICL4zpOeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773219397; c=relaxed/simple;
	bh=GxhyEOLS942YERY522cw1a/tosTCri9aYho+t2RDWNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JN1iJE0o+YWtxGRKDsnZ95U2C/cTdpt8HoghpWfs4FY2iQZq+n6w6vplWC8QQ30LirXL/+3/CUzOGts4FLfsiLFTyx7oMf6BY9wbAy2xvlC5mrU5AdN5I4YHHOBVLO27RzJSgPe7pOYFuFT1UMTN96kAxw2Q34t55RbLygKn7TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S0Rl+f+9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q7K4UOqa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B7QOps2031665
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:56:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pl93YixHoiXJRlfs0OC+xUhIllfIU75ORxITZTmWc/M=; b=S0Rl+f+9vCPnI9qC
	eEiaMpLDIEFN8aD6LBP9VEQlHz6L/ndG+TSVH4vBerkVjELtft+mc0evvM4omCsp
	/61XbzfWagl2khT3UXmTaVSkIyZ/f01Z4HXeKKrx4JikSxeWWwOFnSxcoJZ65XFT
	5SEEpMIcbgoim0sQI/ENbVbzWxxIBMz9sgZJa+WnambHBx3XuA44nOgzx/PZ1Arr
	JRPz/T8/eBP1hwHdgainqlJZORL7OmC1tc6HGSafgV4uxV6VPcdbm5jbTGmetkRA
	pP4G4lRDQPwjy/PxBBTzk+ESI4OnkmqOwAjvctsoKDrHIUDdiMaHRGL6HkVB+sqO
	9b7rOA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu40h0akr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:56:33 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c7387c70046so3297536a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773219393; x=1773824193; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pl93YixHoiXJRlfs0OC+xUhIllfIU75ORxITZTmWc/M=;
        b=Q7K4UOqaYY5lQ3u0i7V0aDfqilXwd5HNDgDXF1oxUG+hBHu9nTIomVp130082uyhRI
         xgvxBr4ryzHMDWWSZ8gR8LfubQmyyi6GdrvxDzIFHBPJBItceiL4jqy/rzcd5/LT64SD
         W89Sn4L7/6s0Zany3ZEPWLqwg0E3b3Mb5S03RTC6IcvxZl4bp3odY2/OfCHPHsFhTuyD
         4KMG4lr9qaViF1fIz0Sk5cyNduXlrhbOH0VHe/IeR0oPgAqzVu54RGOtubxmSnL5R6w8
         N0tHMRuIJz6k/t3yLLb/Ra4uhcUtMo88ZR9EcFWJfW92HcUIQZsc9/jsdQyMVUWQwMW3
         CmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773219393; x=1773824193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pl93YixHoiXJRlfs0OC+xUhIllfIU75ORxITZTmWc/M=;
        b=joA0sFKArYUd47Npvz3RwvYWZxsOV+FpDLjrj4KcszzCyldQNCFxUbZooAfX0c9aRS
         vR52zFqvUlNxwhLA8PjGuT0K93KNF3cEQnvqzjVoGpXC6mzJu/heV9nspdT1za3LwWiY
         NdLqLwRDLrKEo+0hMQs3MGBQGutY31ojB7YYCbMGh23wzp3sGigIOq++f1bEF5u1zNiM
         Z5xPORSpuKYmfoiLcWGmz2EjINrGDnBGI9ynlRLqbWtg1DJL7fEdT8yJuHeqKKd42cZp
         EnR/KAv6AVvGD43mM/wWhqYYx2bYpxd+xImHcaG+XeL/qu6T2EsljSpZ8sLVQDawpHmz
         hCbQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4K1ANtslQaX6KdBHHqdqzKTzHe+zVDRnMZ7/vRefRCm2S5rJHZCilwdhvO+Ls89gU+qTGAvv/1c5J@vger.kernel.org
X-Gm-Message-State: AOJu0YwXq7+bmFvqktNZpW9u5BqZ7PY9R2UehXetOrA5U8nlSBKR5Dt6
	Hfsj7fp9iVtyh//8epqCoAqaqsa7N+FJcQYZpBFNWY0msuoWuXyaHNhO40hkJijHfkzgD5V0E1B
	NBNb4vHuD8Hf0Ph05TW7AN6iHkuGLbUbr5jUuUNDbOnsrG54b7puRJbxYYcJmL6ly
X-Gm-Gg: ATEYQzxVDwmlj21DjUd7moH56qWqln1DkH0w1S7UXHpWT/C0N+G7yeIoCK855pNSxS4
	mDzz31dDxs6+aoYnzIxBA/NygzB0HaTxbXByrypILgCtUlm++z8HeavlM8cAvZGdEB1jSTh8WVP
	NqXAZIBNAlyNXK5nwmGlVxDzLUsxM1m93FxuVcXeOmrsT7Wc6rz8a0HvUEJo8kFB9JKK/FbR1Xf
	igMp5G6eVproLM2CQL2uxsYgrp+WaPoUeE1Uf8ma391cneFLO8FNO9Q0es2R0LDAdQxmP3LOlEV
	Au2m7/kir8d5uWj6xxbHsI2ZVnweDOuCrxI8g9J9sqJtrSP3U5SKteys2uJowktoANMAxWuxsys
	zc4JbJ/W7NcR0ItyX83tAAaL4bR6v5EaJDK7S6xfbfi8DDGORLsk=
X-Received: by 2002:a05:6a21:496:b0:398:71f2:59b7 with SMTP id adf61e73a8af0-398c60e4310mr1515128637.33.1773219392839;
        Wed, 11 Mar 2026 01:56:32 -0700 (PDT)
X-Received: by 2002:a05:6a21:496:b0:398:71f2:59b7 with SMTP id adf61e73a8af0-398c60e4310mr1515088637.33.1773219392343;
        Wed, 11 Mar 2026 01:56:32 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf2725csm1523345a12.13.2026.03.11.01.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 01:56:31 -0700 (PDT)
Message-ID: <497b2adb-bcab-4c81-b6d6-56e7102f416c@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:26:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] dt-bindings: crypto: qcom,ice: Allow
 power-domain and iface clk
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-1-b9c2a5471d9e@oss.qualcomm.com>
 <a92cbf85-5937-4aef-985e-a5d12031d4e0@oss.qualcomm.com>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <a92cbf85-5937-4aef-985e-a5d12031d4e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3NCBTYWx0ZWRfX7w+R0LgQbRhJ
 yTEoIzo8AdweZNsZ4NOmWFYEbn/MSxsthSQ48Pmu4h3mqSa+oo86Xs6DkKWQt/vaS3D7sUsJLwT
 6jlmoqWefHvAI6StozlropWY/tHgErs68GMTZ8SohiL+I3O7C1JgZMSTQ9d/DHvT2v8bcFi5y/O
 VZGm5gwH5Em4VRxKYnJ0KGZ883KztcVEZrpKX3Qk0Ud6/5vP4IVd8i2Fh0bQgJhewoKft3Ilqv2
 wrcFHBAkKb8dsORKoSZ+VRTOOv81kAW6xePeuxZmCtnRz4d8LR82zFK2OELAgqdRvNMIpf4vRg/
 8Z/nngRCx+XxPpu0I6gf6HpTFKM/VVdTSvWAD5RkyRxo1oTQXvNNRXKSMZxoi8LoiJteg/z/iOi
 DTX4JVF0WdgVQ6eiPV5Lr7C7WH8ZoBfUNmpLEx/sMVeYTwkwyRL5fXv4xzbtiSiuqOLPcKgtKI9
 xaMpxZDkZ7CKdjKujvw==
X-Proofpoint-ORIG-GUID: qfFCcE-to3VTnXb1XbZmFOhnLG1od7gh
X-Authority-Analysis: v=2.4 cv=YJ+SCBGx c=1 sm=1 tr=0 ts=69b12e41 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=8h99a6YZr-iq8KHAznkA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: qfFCcE-to3VTnXb1XbZmFOhnLG1od7gh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110074
X-Rspamd-Queue-Id: D727A2600B2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273957-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/10/2026 7:43 PM, Konrad Dybcio wrote:
> On 3/10/26 9:06 AM, Harshal Dev wrote:
>> Update the inline-crypto engine DT binding to allow specifying up to two
>> clocks along with their names and associated power-domain. When the
>> 'clk_ignore_unused' flag is not passed on the kernel command line
>> occasional unclocked ICE hardware register access are observed during ICE
>> driver probe based on the relative timing between the probe and the kernel
>> disabling the unused clocks. On the other hand, when the 'pd_ignore_unused'
>> flag is not passed on the command line, clock 'stuck' issues are
>> observed if the power-domain required by ICE hardware is unused and thus
>> disabled before ICE probe. To avoid these scenarios, the 'iface' clock and
>> the associated power-domain should be specified in the ICE device tree node
>> and the 'iface' clock should be voted on by the ICE driver during probe.
>>
>> Fixes: f6ff91a47ac57 ("dt-bindings: crypto: Add Qualcomm Inline Crypto Engine")
>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>> ---
>>  .../bindings/crypto/qcom,inline-crypto-engine.yaml       | 16 +++++++++++++++-
>>  1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> index c3408dcf5d20..d9a0a8adf645 100644
>> --- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>> @@ -28,6 +28,16 @@ properties:
>>      maxItems: 1
>>  
>>    clocks:
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    minItems: 1
>> +    items:
>> +      - const: ice_core_clk
>> +      - const: iface_clk
> 
> Trim the "_clk", we know they're clocks, because they come under.. you
> know.. the 'clocks' property! :D
> 

Ack.

Regards,
Harshal

> Konrad


