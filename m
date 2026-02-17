Return-Path: <devicetree+bounces-266165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFmwLZ5wlGk0DwIAu9opvQ
	(envelope-from <devicetree+bounces-266165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:43:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FCB14CB84
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 511C5300C276
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B353136B040;
	Tue, 17 Feb 2026 13:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B+eExs9p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YQwU5ez0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783AE36923F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771335832; cv=none; b=FL+1dPKRJX+mNmtU3g16gqqSxq+1PyHPVoxXfwUFTM7IkTaLQOPgns9+kLU3XP++Ko5VFtzB6vllrAWcuP5sLR7lqnQhIGiaFCBKitiiLAFtscK8J0fnOocELazsc93sNHkPYdk5T6NObdHQLERHH8TPyhsP8VrtgM27rkRDBYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771335832; c=relaxed/simple;
	bh=En5rcXsu0Sg3nwqT6oI2lc7tr410B+YGJFZy+mJPGrE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rEy70sXG8Dlf5tuar+Y8D0l8ZSkD1hX1lxCTqA4PkJj43Z2XPGZoyWuYJQIJAJ1QRVFsABNLjkNhA3toGg84ApovdZjYZt3bcstOakhzctjX+BdKVOFZJYUewgtcRXUvZZkMP0kVN39tSNf3CTjQJhCCCBqOi/KBj3FBF5RoLnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B+eExs9p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YQwU5ez0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H96fj5287788
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:43:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0FIlG1kC6o/WTPSLRgURjMIM1d/Naj5KT0hsIvFpSLA=; b=B+eExs9p86C1dHeP
	B68eEXvrCm/BEIaDYxHDdNawbT3HYWomtDHiPRE6MUPCxaZFl1p0VK4ozUXAxbF7
	ULTPouUYBCJj/MQpx9Q3+5Xz+yskXREgxZZCqnmNA5k5G/NpgLMP/TdHe7sgTOMM
	1T9D0fkuS6HZSR8f+9X26tf6/DBifaaU4sjRZDaJSUCNtPszAwTj3n9heMkPltWK
	c1s+7a/TiD+zcDjOXkckT1cR2omQYNiJ/F+zEygdER9myp9NylNfK0vcXvEo9TXW
	E9RTcjvRAQ1rEcs5Mxb8b1gAkz8uTFcsl6ETIodcaC2nu65diBvakIv1Ns7HzV/k
	kfhwww==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrtgnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:43:50 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a79164b686so56199065ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771335829; x=1771940629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0FIlG1kC6o/WTPSLRgURjMIM1d/Naj5KT0hsIvFpSLA=;
        b=YQwU5ez0tGUi13aPUjj/1vp55fBkwY8JYwPu2p0mIFbn5UqtHxtSE3KJzUaoxU3uBX
         TI0KDwE2RJzTpCH25HBvzfx57nWZKIoUpe4WJ+8uh93ckFow/vXM0DBj+qY5ZloEMALK
         FzS3m19mcfdSeb5XD+DyK5Nu5IK1InT7c5kKOuLZHlZu8zpkQuR8WXy5/bZTBNt4wFvj
         A0ekE9u/kksbcwb63RJ/l8v7FiAHV1ansN2rb8yn416Wz206fthMFfkWOf238WnUt2y4
         FNRQ1nwD6hogZCGYDeHdj0+MazDsOY4z3wUuceETNEsmJy+0XUHd2PuCgJAhQOD42DcK
         AYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771335829; x=1771940629;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0FIlG1kC6o/WTPSLRgURjMIM1d/Naj5KT0hsIvFpSLA=;
        b=siBCgh18Si2X1W3SV4cXy7Ue0S7lJHazcAJB++z0UwNk1/Wpp67ZADRskt86acr3Xq
         uzk4QguWG8ZK//Yyxw5LUAXYT9Igxwg0V9JwbuycB7FMCRcx8RuFEpPHeefpCdjLax8H
         jH6+A4J/MZ4o7xkjHGv5r/GW2VCfQJJB2SNGZUG7jLhw8H7f2DcejM/rgtcEjxUgmmDo
         MULl8/Y5H87aSpR03yXfUsW6pRwUhlhY5OMCXM/VlkEBEvrPdemrOvzhehPR7OkLanOr
         gLJaBrP0M0kncU3a4Lp3hK1SobkxKkGWn+8w1yyENtWunZ+MVwZ3TDY3pJu3WmyfdSed
         Rd1w==
X-Forwarded-Encrypted: i=1; AJvYcCUAPjmvJN1wcMF2xjcnNPppENstiZRlvBCsF0Zr878YMRXL8v/vQcNg40JoJZrLIgazi8Xm1sr/n2oo@vger.kernel.org
X-Gm-Message-State: AOJu0YwLnPDsuFc8L+iUmXe9Nc28fXLo5auNX5kVlzvEZSJ8p/J8HCQ9
	cMHKxEGpzz6ejat0JBsjIwR0YOPpdWFsUxroDeJEXPvkb7n43ykTPHPrMf/tsXSH3YCJoZm1/3R
	/e3FWW5RjCXFIKdTXZShePgfo/hGxjvAbl+3pVCLZZIWz0FpDsxriUilMRJxIN9hD
X-Gm-Gg: AZuq6aKkp1gP5I6qM2BfvYuQn4ZBl/B0M6cN+mjT4MbAajGuatayoFy6x7YT2YHYSDy
	demE3SwxMiOOB2ORwLXsAxhzftSelO+ehfIXjnmTGc0zXHNQB/F8wtE0lROEX2hBDsTHzurbUNn
	7lP7+MHLGx/wUDl+d3EJVN+X09rkmPSEU6cDD4yU1JeMwXlmJ6bygL6HGjWuWSXbtZBTh9ZfovL
	aCN6l/c95FfJo1LAfsBsVjvYCqmc10stEjHE7ORSdcOkuZJzZyVcurafflwQ4JOTK09mdvoTLOF
	bUtM17qvgVDC5DLWvxi7oQZSZS/wwSefBUWEDijDtgXmCLhU86Z/inuv+C/8RX6v69exGcpWDHD
	yriHIgVP9Cjj88U0mK1v2D18h76YEvFcH5kzRx9jLl6dpnup2k2Crvg==
X-Received: by 2002:a17:903:2352:b0:2a9:30d4:2b0b with SMTP id d9443c01a7336-2ab505d1726mr138802975ad.52.1771335829331;
        Tue, 17 Feb 2026 05:43:49 -0800 (PST)
X-Received: by 2002:a17:903:2352:b0:2a9:30d4:2b0b with SMTP id d9443c01a7336-2ab505d1726mr138802575ad.52.1771335828776;
        Tue, 17 Feb 2026 05:43:48 -0800 (PST)
Received: from [10.204.100.45] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a713e8bsm141004585ad.28.2026.02.17.05.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:43:48 -0800 (PST)
Message-ID: <b5ac0ab7-2540-4691-99b8-18d67ac63717@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 19:13:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-1-e2646246bfc1@oss.qualcomm.com>
 <r642meaclfme7thmb6spkna6xiuhbjuqw6x32jndjqhwqjtbbr@qkcziz3cyxb6>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <r642meaclfme7thmb6spkna6xiuhbjuqw6x32jndjqhwqjtbbr@qkcziz3cyxb6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69947096 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=vKLMDgmPB5ZtIlX7G1kA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDExMSBTYWx0ZWRfX7OrOzw5AAR81
 xulvGw/HH/w6RZ3MztuzEpupm1H9Su1C+29UoPvahohw8vrXecw67EE0oWG3AKjLssMwl+G+vAw
 DdluxBtmGvrmNnkz19q8GUpkiU0SABK9lCzOEl+EudwM8jhMisUX3UX8vrXkTyX06dA48ZQRaDp
 uK8RrkbvbfT65MnN0xNFkQigJKafxtD584LzNNQ5vO7oc9QmbWGaTnNzIiqSjpnYCU081RR6FZL
 8zlCswmQglUpNUqEcTX0VogPomFYu1O6Ep2JUe7XfXxKyP+CtklICIxtG5ENh3acNaDslllqT4C
 T9XIhYFUgv17bi0jIQrXc8C27s7aXNgomzsv+FMzjjUTWbqbDmt5c+wlC5OtySxaVwgO2R7f+js
 2Sd+HZjOAzIRtTgIZt+dWL4SzZFtFY6fLwZZSj3no1ouOOae8pgT4ArARidQjZ2Ij8jB7+9sqTc
 vI6KkWDOfky8NbwLkVg==
X-Proofpoint-ORIG-GUID: AQzYFtSFMqu25zrxe6ddPT5uKuPu5fwJ
X-Proofpoint-GUID: AQzYFtSFMqu25zrxe6ddPT5uKuPu5fwJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266165-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 89FCB14CB84
X-Rspamd-Action: no action


On 1/27/2026 8:39 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 26, 2026 at 05:55:44PM +0530, Vikash Garodia wrote:
>> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
>> compared to previous generation, iris3x, it has,
>> - separate power domains for stream and pixel processing hardware blocks
>>    (bse and vpp).
>> - additional power domain for apv codec.
>> - power domains for individual pipes (VPPx).
>> - different clocks and reset lines.
>>
>> iommu-map include all the different stream-ids which can be possibly
>> generated by vpu4 hardware.
> 
> It's not how it can be defined.

Do you mean to elaborate the different entries within iommu-map or to 
elaborate the different stream ids and how they are grouped into 
different functions ?

> 
>>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   .../bindings/media/qcom,kaanapali-iris.yaml        | 234 +++++++++++++++++++++
>>   1 file changed, 234 insertions(+)
>>
>> +
>> +  iommu-map: true
> 
> This is totally underspecifified.

oneof would be a better approach describing the possible stream-ids.

> 
>> +
>> +  memory-region:
>> +    maxItems: 1
>> +
> 
>> +
>> +        iommu-map = <0x100 &apps_smmu 0x1940 0x0 0x1>,
>> +                    <0x100 &apps_smmu 0x1a20 0x0 0x1>,
>> +                    <0x100 &apps_smmu 0x1944 0x0 0x1>,
>> +                    <0x101 &apps_smmu 0x1943 0x0 0x1>,
>> +                    <0x200 &apps_smmu 0x1941 0x0 0x1>,
>> +                    <0x200 &apps_smmu 0x1a21 0x0 0x1>,
>> +                    <0x201 &apps_smmu 0x1945 0x0 0x1>,
>> +                    <0x202 &apps_smmu 0x1946 0x0 0x1>,
>> +                    <0x300 &apps_smmu 0x1a22 0x0 0x1>;
> 
> #define the functions in the ABI, provide them in the bindings.

Ack. will introduce a new header at [1] and define these functions

[1] https://github.com/torvalds/linux/tree/master/include/dt-bindings/media

Regards,
Vikash

> 
>> +
> 


