Return-Path: <devicetree+bounces-262763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FU/NAqHg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F27DAEB32F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 38608300E483
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C605238B9AF;
	Wed,  4 Feb 2026 17:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSexkuRi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cGtIBDE1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92925359F98
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227297; cv=none; b=uulvdOJ3AQVvDpHhY1h02jLqM8d9kfaw4focN+cnX8I15DVdYTHGQmHMWUlkoi8PMm7KW8cUY4kbpIvwaFuPkzBEdpsKaWEgcz8vgqDCo2bZlDfw9n+6Ivq96d6DsC6pVnvgKNOcp/F5h9RglY3yBEyLv6wyhLVY9/BOgljWzV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227297; c=relaxed/simple;
	bh=CdCbU1/N7ciFW4IP+4C3/wUCo74OvpA9F1n/Y5GkQmo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DAFwQLaos9AHs369FVRveVVeqevb7k/Gqf5jUkZ/N1KXjNdpjowsCYkwazh28rssEz7ekkt7sUYnWeLHqOGj8gMFlztllMT5qxumTGrCjiIzm8IUJSJUREMKEx9fMTS44CFfOKWzkN9nxuo/PVBmvGr/NrCr3I1LnnHi3Vl1oQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSexkuRi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cGtIBDE1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CITBo791050
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:48:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hoIOWTj8YLj7Rn9md3kcKmIaa6Is1rHF4a1BU2CSrrc=; b=kSexkuRi8MFGll7I
	z4xolljPGdeOZIDhYRa3nZ1M42BxqV57MDnopHvC4dnrbqP/CqSZt5oXZt1+gCwR
	KfvxvG6nymH2jCgIicmQkrHZfL7L/xpQA4TTCtqlNNMQy33ZXxsVytUzqIOYkjLF
	j8PP9hlbnEDIEuBMYcGvSnEIpMajC8wHrt1efIEoW6FHgIoyV4Mikq8Z+dU/13lA
	DTBn27zG9cYJw/lmf6ULHu0B/kxly7BKAsA7v2CyiaUk0bXlAXRnZdv0GKmvXDLn
	T29hmmL4ZNBLhOuF2gaxoSi1Za+RQ2msa93B47E1UbMWGV11W7ErNHT2utfu3mEx
	vjkaTQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43uxhh9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:48:16 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so79167b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770227296; x=1770832096; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hoIOWTj8YLj7Rn9md3kcKmIaa6Is1rHF4a1BU2CSrrc=;
        b=cGtIBDE1g65h4awBhF40fQKme8+saEITYlxDs/kRLYN5TlFUMWiolESMaVagMzyZMO
         +LvN2SYgb85ttv+dNvtP4jFZ9nXiYhEZsqwkj7zt4JhpnIhfrBjKh+n1COGAsBGxzyb5
         /ExtDOqWzJrG+PjSmWz9+3zdhGTR2giyja0XZU8kjduqfNMjINchpPJ7J9tbaulgtW6N
         YLgox737KxMagr0eWbNBTsKTYXJrXRlHKzZ3mb5/aisXVlCPkEDLZcCDCXiC/p+xMF9I
         a+pxf4gAFqB6uerFVBKsaF6jrm5Vp73cWZfS47HmB6dEU2tweKrjR+C1YbU2HcQ3V2N3
         NAwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227296; x=1770832096;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hoIOWTj8YLj7Rn9md3kcKmIaa6Is1rHF4a1BU2CSrrc=;
        b=fZH4I2l2+Adkvt/UOOLQJPzY8LEZ3nKkAP1F+GC/D/1TH7jtbXQ02g9vxF1DdFs6uL
         nHoJmzwsJBErUdnWQh4aetvmi61geZHE2YQzn4gfMmKmnFyz9qSW3e6B2xnmzgp4+KTm
         UNGeKkPr631k7xBXC5UcMjIBIqwi8PCHHbyNbqVVBMOXCXVeh7H2O1acVIV9zELq+OnG
         ddOlngeRkyD1PKiWsH+bLaDPEw5C9KnCoD8xKKb8cFCvpcauPBoQo+1yAd8RscIVv+s4
         v3mwGnjI7q/TLy7Agn5QbGudobfOSFWGCEgBlQYXc4D0Cc2gm39GF2d2sd4I062Ts9sw
         6ivg==
X-Forwarded-Encrypted: i=1; AJvYcCUfaJwDhDuIRpxLEc6Bt75P0Fc7hnpvQ/nL/yAIKUA++ovfVKll/4rsn/PXTWuEnkoiCBm0N8negK7J@vger.kernel.org
X-Gm-Message-State: AOJu0YzlnHYlTvKsNZswGTLDwQRFxAXgiD87pGtWW74Y1lMlvQWaUL88
	x1xonIAgKoZ3c95xt8IEXzEat9JUc4Nzn30CgV8cDcxFPtbxzsuAghApu0yXSPBsNbnIQ8+Dgmh
	ssmtKWbp8wDfe08J1gvbrlgAg4xd7zo8LLWsk2TGQu6Kuepmc/FmFVSm3czTmJDJ6
X-Gm-Gg: AZuq6aJQ6hM63s38gIImJKF+6+tty+gY6yBU9NVAkLMgDFiHEiG8uVThTGhN4KjB12M
	BvaFMXUjyVE/f3CBYxtgumJCVl/+b0lgyZXv7Np6qPxVtbtRYLRX53ZKHmX4cF/GHcUh5jQxEAS
	N1xDGOjfalH80tgIkAIS2jYh4oAnE+0B80g3TGlmBHvvL4jgG7N7N893pvtPH9mSzuItvg4oh+e
	+AQqnPZ3bjmJ/5E7tlJAOsTfSc4an5LZy+1TLBJifV4QbfE6R1gMD8Q1w+AStAiajNbAPERcPOh
	QwXtzXXhxQzyoS1Eo/+Lkila+yiKkTiMy/z8opNE3d6nlZD7utUcY/iXDHOfZYEvA4aEP1LGjjQ
	nSobDzMTkNVXLbB+kxKIj8RUjG+hRe8fKWEmYaVgteTXR
X-Received: by 2002:a05:6a00:3a28:b0:823:f96:63bb with SMTP id d2e1a72fcca58-8241c67513dmr3380493b3a.52.1770227296245;
        Wed, 04 Feb 2026 09:48:16 -0800 (PST)
X-Received: by 2002:a05:6a00:3a28:b0:823:f96:63bb with SMTP id d2e1a72fcca58-8241c67513dmr3380464b3a.52.1770227295765;
        Wed, 04 Feb 2026 09:48:15 -0800 (PST)
Received: from [192.168.0.103] ([124.123.178.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d1cc84asm3192658b3a.23.2026.02.04.09.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:48:15 -0800 (PST)
Message-ID: <5c1a1cab-940a-4b2f-9f5e-d1ab4b2774ab@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 23:18:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: Update compatible for videocc and
 camcc nodes on purwa
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-7-b23de57df5ba@oss.qualcomm.com>
 <9566365e-3330-4130-a073-8b58089b5f07@oss.qualcomm.com>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <9566365e-3330-4130-a073-8b58089b5f07@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=StqdKfO0 c=1 sm=1 tr=0 ts=69838660 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=2H5/5ZkxJs/wMzWGxXwROQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3EYFgHgEztSfj8X7cKwA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: bj_N-n4eLWFmtyO7nWmRqRvYatsUl_fm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX6IkGlyIEypno
 dIxbdgqAK222ani5LxJJoWHN+MySSwM07IKVhQu0xEshdigca/9jTv0mfU1O7wIDsxkHpyPxIPP
 3eiIrk84qOv0p7BDTqkXnyjH+yk4cTz1ZZ6sfZTZsWLZiENaZEpyuOfENx7wv5xk53BbRpB3UrJ
 enfmwM+ew7kGMu/KXEEGOG2NIkcZeqRDhRjqPsyluOgNDBHy3d33N2QOzvfIphHV61vp8PZoCTT
 Pjna9lWFWgr2pV/2NJ7mThZzEFyxd9pNSDaH2vYeg9stP9fmUspKXEV5Rw1D537gqQZoOsTQIPt
 jBKFg70eIYP90/NjE4qlbS50BcG3CKcwcXFlvNdQLIKx+/6SL3TveEjPnen9/JAseA1IV1bPzNC
 2fKslVVvhoXq6IeE/V6PGcHktQEMLlSdYmEiJr7XfBprX06yyc1YlogNO6WWEz1QEuh82+NPpVj
 6vty3kRxpHVLk6UJ2Qw==
X-Proofpoint-ORIG-GUID: bj_N-n4eLWFmtyO7nWmRqRvYatsUl_fm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262763-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F27DAEB32F
X-Rspamd-Action: no action



On 1/28/2026 3:49 PM, Konrad Dybcio wrote:
> On 1/27/26 8:26 PM, Jagadeesh Kona wrote:
>> Update the compatible for videocc and camcc nodes to match with their
>> respective purwa(X1P42100) specific drivers.
>>
>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/purwa.dtsi | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
>> index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..63599ba0a4f488d8f40f3e4d849645a8fa9ebf59 100644
>> --- a/arch/arm64/boot/dts/qcom/purwa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
>> @@ -6,6 +6,8 @@
>>  /* X1P42100 is heavily based on hamoa, with some meaningful differences */
>>  #include "hamoa.dtsi"
>>  
>> +#include <dt-bindings/clock/qcom,x1p42100-videocc.h>
>> +
>>  /delete-node/ &bwmon_cluster0;
>>  /delete-node/ &cluster_pd2;
>>  /delete-node/ &cpu_map_cluster2;
>> @@ -22,10 +24,18 @@
>>  /delete-node/ &pcie3_phy;
>>  /delete-node/ &thermal_zones;
>>  
>> +&camcc {
>> +	compatible = "qcom,x1p42100-camcc";
>> +};
> 
> Squash with patch(n-1) please
> 

Sure, will squash it in previous patch in next series.

>> +
>>  &gcc {
>>  	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
>>  };
>>  
>> +&videocc {
>> +	compatible = "qcom,x1p42100-videocc";
>> +};
> 
> This should be a 'fixes' commit, as since Commit a8a5ea012471
> ("arm64: dts: qcom: x1e80100: Add videocc") Purwa has been ""happily""
> running the wrong driver
>

Will add fixes tag in next series.

Thanks,
Jagadeesh

 
> Konrad


