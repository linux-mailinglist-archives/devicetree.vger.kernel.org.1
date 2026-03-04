Return-Path: <devicetree+bounces-271006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EijF9sbqGmYoAAAu9opvQ
	(envelope-from <devicetree+bounces-271006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:47:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5181FF401
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF42130B2CAB
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BDC351C3C;
	Wed,  4 Mar 2026 11:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IaXXvbi6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OjuI0d26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B3E38422E
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624504; cv=none; b=VU4FQ6LZZGYQP7pvdbk+F6OSD95v7L18PxigSbCGygZNZLNol5luxtBxL+UUNwFoiAlA+wSocydo1ShuofSb8iQlAX70a4hwdktrARxWRV84pjjnIkIUp9bkttDW6ciwQkRdrPN6mwMgRZCnfep3ObaZB/S3HlKT+IWIFP3VOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624504; c=relaxed/simple;
	bh=laRKSZzJOcudczEnxyhB7fESAI79HWOfFvz3PT5rANE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Iq8GwcNrB0CkwD6e+FAmyPMwBTiR1fhGFtc98erIJC4RFVlbUCAiAwgdDnMq2y5Y98wklVUHYR+REK5lXl/4GpuSRzkJT2/bfiW7YxUCkWf/HVRFyAqCpS/oY0AhaZ18ygtxAWmBKhGUmydkKsnfjEBerbnNa0unrwPaW2haPD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IaXXvbi6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OjuI0d26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245STvY2306170
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 11:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wexxM3qmEnj1ox1y5EVG6E+IxokiAs5UcnERO1qkx2c=; b=IaXXvbi6sFOMAtxM
	rsDFi90bod0A0pzx567iMgL7ObYwX8OSyl6VH0cDoWHRb26zpBXnekxKYygBZW/j
	BphhhBhoZq9iNdxun7UGO9b9R/QA6iASDEKq4gmubLq5w6Dt81YYoozQsPbenDVH
	wUyeyXJmrJjQTIcR+AO/vcnptEhv/4oxsKic2t4x4WFN4SIMjZhnFfQcjIOTjr7U
	qfPrujdoCwy3MstfGE7qBU8mmyNg2SXPyX112hwcCi91LHiYiGAC5HN7RHnM+l4o
	vMqJKsyroA16J04o1leOOVwMNrhW9nWRxuSlCH5jZPvYbdtCiWA19K3NrrbYyghD
	wjbzaA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8syjh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:41:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb706313beso828484385a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772624500; x=1773229300; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wexxM3qmEnj1ox1y5EVG6E+IxokiAs5UcnERO1qkx2c=;
        b=OjuI0d26YTLbQ2sKj5wo7b8NGN6mVMTdb3cKmrEcI1asW6hM+k5dsukH7pjPJDqplm
         9UsA6GejcX2BuUEIIEE4YQATDj2vtTbpMsM6y4jqjTFjcfbcA6NsN/ua2sjclAl8hTPT
         0xAEnB2cA8B4mZ96GqidmKciCDfgbCSsbXA2l/RCZEMSAZ6tzDwViGh8lt3WbO6cOtqV
         bQNFhxZrYAJeYdFhkSC2a1FO/XbB3lMIkF1pFkTtuciVfB9Hv+kvGsVUNLUCUZVHRouO
         iLlVwdlDltTdbPkAzAGYGS41KYQLJScDdGW7VJA5+6dTd3zOjJlo01HJfVxSZ837eChI
         ElKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772624500; x=1773229300;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wexxM3qmEnj1ox1y5EVG6E+IxokiAs5UcnERO1qkx2c=;
        b=CL+yD6jeH4dqo3ILGSbEDNGUoqN8PoBqW3NzUMbzIiNvL+YteU82BWSmkWRarSfLXg
         a1yt7bQEg7XNRXlFrYprfZ8urUq3kQbQTmtFFhnDhw1lCfm20WI6axE34kMYsd4NtknU
         ited6byxdO/5mff+8x3CbNqiZ2bFOIvpsI0fhlHuaWks/IuKAESMyxSKPB3MgWiRv2bh
         kHiWsD4f+CFonhcCZzTnwlEoGNvHv0WJWMNP1sK8dKZhj7OukcJN5sODm2zrm1i0gdu6
         Uq0whDEpLvj1I8k3E/dTkS4nDlZDwrdg7NXScW+4zz3dTq9w8n5VP0tX++y6SngrqZ3q
         TdXw==
X-Forwarded-Encrypted: i=1; AJvYcCXGmbCTYywAUKUhBxiFCC6WpQ+FvM7cfkcdLumcuQdTWVl9cenEXuK3bJoEvpZLD0LFuOlCLRZSXKkT@vger.kernel.org
X-Gm-Message-State: AOJu0YxYNdEuHABEJ6PbCj3LtcOyP5W59J82rbh4dsqjdaROez2rQUGp
	X5BEUx8dmMe6vw/gY6gCQA9radIno8GVQXwWBz/hKkTcgvXu9amCap57VcsubeQ4uUcG4HRpSv1
	F5rj1Zrab08l3E4LB8FMy4H5jt22EUbtl3o3DWs/gCP/gT0RWLX/PPMcdfKHnk9KD
X-Gm-Gg: ATEYQzy1u1yRA/8hpOvjaKCR4mcBGaztY5+md/tZnx328NYo9crIcjb7FW/SaOGIcC0
	1Pmlyzjek0LXnqSuzMIuLzzzS6KD3+DVQ2AD6TIwePK4F7XjWyZSeEBuEBIUXoWkbxpYPTEA99u
	fu6lUZP10YqqLLb/ii2cg6nInS0PYgc/VE8f6q/ujoW6TT1xpUcxqcoxsSMSVt7xZ6SPvQiTqqT
	UuC5mnBLPVCaMAeupvmQPsxFVq91JRCTjB9IUFEjbu9JcbAhCQ3r3cMR+vsEp5dcJ8SbUKemvuO
	U26+5YVMD5muUNEylNhxj8ymeNUndQp4c2yHkvFUFFeUAcP5m1wJrWTBHZvGpua4qHH5G0HcmvD
	4zoGSFbnh5MFpyIAlWJnN1QJXUejdVwsMsOsER44dJS8XZLhy
X-Received: by 2002:a05:620a:450f:b0:8ca:3d7c:e765 with SMTP id af79cd13be357-8cd5af84838mr170855185a.50.1772624500408;
        Wed, 04 Mar 2026 03:41:40 -0800 (PST)
X-Received: by 2002:a05:620a:450f:b0:8ca:3d7c:e765 with SMTP id af79cd13be357-8cd5af84838mr170852585a.50.1772624499883;
        Wed, 04 Mar 2026 03:41:39 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851a8b3f9fsm13101725e9.2.2026.03.04.03.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:41:39 -0800 (PST)
Message-ID: <6c0d22c1-0138-461d-82ed-af0cd54d9055@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:41:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] soundwire: qcom: deprecate qcom,din/out-ports
To: Luca Weiss <luca.weiss@fairphone.com>, robh@kernel.org, krzk+dt@kernel.org,
        vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250912083225.228778-5-srinivas.kandagatla@oss.qualcomm.com>
 <DGJTU2TOFZR7.2MOU6I6J8GV4L@fairphone.com>
 <a814c0bf-e421-4cf2-8b9b-e5dac9b80dff@oss.qualcomm.com>
 <DGPQVOVH3N31.2XHZP30TUC18Q@fairphone.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DGPQVOVH3N31.2XHZP30TUC18Q@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a81a75 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=rwViMikarWV9ILQPI0UA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: jKDgpoNo6V2GgJW0GgP1GfX3GgiFaUPs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA5MiBTYWx0ZWRfX0vKx3OGzELmH
 bS6oGqcWlpo9Sy5qpQzSh+3njBDI8I/tA0Iv0w87EoIA3zNOv4mHbtZDaEFUC6m8mndSnJQjKu6
 eCcnqauHplHRfn95SmG7wAs+cDzt3Paf864/Ea+1ML556LRsGVVWLgCeXX5DrD2AeTrqORLalM3
 rn9WEaDOJdxm2xLS7nodnqNzSMrG+09NLhq/w3MAetf5UaE95QpCj/zsBCHOrKYB8oGXxQcv01Z
 MOHZ8MS7OY4Rz3BRnZDsTx0FncdIvPy370iZDQkf37zzwC0YBwcXhZvw23zQST3soAew4wY1LVx
 i6p0jD+J5JldDNzgmRf7WMb3VGdayVVJLSYj3sAEyVPPTvYwbhxADCPRZ7kn45AChwuBJJp09Z5
 xeGCrsCtyAplMEfSwMSSfvQVo/tdPUvJ7wAL5thbkxyo14cPETdIiVDoPr74lYrw17oEog7wDJw
 g7IytDJx2pgcKw8COIw==
X-Proofpoint-GUID: jKDgpoNo6V2GgJW0GgP1GfX3GgiFaUPs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040092
X-Rspamd-Queue-Id: AB5181FF401
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271006-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.48.251.16:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/27/26 12:31 PM, Luca Weiss wrote:
> On Sun Feb 22, 2026 at 10:09 AM CET, Srinivas Kandagatla wrote:
>> On 2/20/26 1:34 PM, Luca Weiss wrote:
>>> Hi Srinivas,
>>>
>>> On Fri Sep 12, 2025 at 10:32 AM CEST, Srinivas Kandagatla wrote:
>>>> Number of input and output ports can be dynamically read from the
>>>> controller registers, getting this value from Device Tree is redundant
>>>> and potentially lead to bugs.
>>>>
>>>> Remove the code parsing this property along with marking this as
>>>> deprecated in device tree bindings.
>>>
>>> Could you help suggest how to correct kodiak.dtsi?
>>>
>>
>> This needs fixing in kodiak.dtsi, for somereason the dtsi is trying to
>> add ports that does not clearly reflect the actual hardware.
> 
> How should the qcom,ports-* properties be updated to be correct?
something like below, for kodiak rx soundwire controller.
which has 1 Data in port and 6 data out ports, however the dts is
setting it up with 5 data out ports only, This works because the data
out ports are first in the array, however if we want data in port then
this is going to break.
Overall getting number of din and dout ports from dt is fragile and does
not reflect the actual hardware. In cases where you think that the data
ports are unused for various reasons, you can still set the values are
invalid for that port for a given platform and still populate all the
port information in the dt.

> 
> I'm seeing the same on Milos, where the hardware registers are +1 from
> what downstream describes, in all 4 soundwire controllers there.
> 
> swr_rx (reg=0x03210000):
>     SWRM_COMP_PARAMS din: 1, dout: 6 (=7)
>     (downstream: rx_swr_master - qcom,swr-num-ports = <6>)
This is just an example does not really reflect the frame-shapping info.

It is best defined or overwritten in the board dtsi.


index 6079e67ea829..4fbf3336d2b0 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -2702,21 +2702,18 @@ swr0: soundwire@3210000 {
                        clocks = <&lpass_rx_macro>;
                        clock-names = "iface";

-                       qcom,din-ports = <0>;
-                       qcom,dout-ports = <5>;
-
                        resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
                        reset-names = "swr_audio_cgcr";

-                       qcom,ports-word-length =        /bits/ 8 <0x01
0x07 0x04 0xff 0xff>;
-                       qcom,ports-sinterval-low =      /bits/ 8 <0x03
0x3f 0x1f 0x03 0x03>;
-                       qcom,ports-offset1 =            /bits/ 8 <0x00
0x00 0x0b 0x01 0x01>;
-                       qcom,ports-offset2 =            /bits/ 8 <0x00
0x00 0x0b 0x00 0x00>;
-                       qcom,ports-lane-control =       /bits/ 8 <0x01
0x00 0x00 0x00 0x00>;
-                       qcom,ports-block-pack-mode =    /bits/ 8 <0xff
0x00 0x01 0xff 0xff>;
-                       qcom,ports-hstart =             /bits/ 8 <0xff
0x03 0xff 0xff 0xff>;
-                       qcom,ports-hstop =              /bits/ 8 <0xff
0x06 0xff 0xff 0xff>;
-                       qcom,ports-block-group-count =  /bits/ 8 <0xff
0xff 0xff 0xff 0x00>;
+                       qcom,ports-word-length =        /bits/ 8 <0x01
0x07 0x04 0xff 0xff 0xff 0xff>;
+                       qcom,ports-sinterval-low =      /bits/ 8 <0x03
0x3f 0x1f 0x03 0x03 0xff 0xff>;
+                       qcom,ports-offset1 =            /bits/ 8 <0x00
0x00 0x0b 0x01 0x01 0xff 0xff>;
+                       qcom,ports-offset2 =            /bits/ 8 <0x00
0x00 0x0b 0x00 0x00 0xff 0xff>;
+                       qcom,ports-lane-control =       /bits/ 8 <0x01
0x00 0x00 0x00 0x00 0xff 0xff>;
+                       qcom,ports-block-pack-mode =    /bits/ 8 <0xff
0x00 0x01 0xff 0xff 0xff 0xff>;
+                       qcom,ports-hstart =             /bits/ 8 <0xff
0x03 0xff 0xff 0xff 0xff 0xff>;
+                       qcom,ports-hstop =              /bits/ 8 <0xff
0x06 0xff 0xff 0xff 0xff 0xff>;
+                       qcom,ports-block-group-count =  /bits/ 8 <0xff
0xff 0xff 0xff 0x00 0xff 0xff>;

                        #sound-dai-cells = <1>;
                        #address-cells = <2>;


--srini
> 
> swr_tx (reg=0x033b0000):
>     SWRM_COMP_PARAMS din: 4, dout: 0 (=4)
>     (downstream va_swr_master - qcom,swr-num-ports = <3>)
> 
> swr_wsa (reg=0x03250000):
>     SWRM_COMP_PARAMS din: 3, dout: 6 (=9)
>     downstream: wsa_swr_master - qcom,swr-num-ports = <8>
> 
> bt_swr (reg=0x031e0000):
>     SWRM_COMP_PARAMS din: 5, dout: 4 (=9)
>     downstream: bt_swr_mstr - qcom,swr-num-ports = <8>
> 
> Regards
> Luca
> 
>>
>> --srini
>>
>>> I'm seeing these warnings on QCM6490:
>>>
>>> [   36.952517] qcom-soundwire 3210000.soundwire: din-ports (0) mismatch with controller (1)
>>> [   36.952524] qcom-soundwire 3210000.soundwire: dout-ports (5) mismatch with controller (6)
>>> [   36.954285] qcom-soundwire 3230000.soundwire: din-ports (3) mismatch with controller (4)
> 


