Return-Path: <devicetree+bounces-275232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOILNAkOtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:15:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E70283903
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D9453039365
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B270A31280D;
	Fri, 13 Mar 2026 13:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XqPPZfb5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PkN0gnub"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EC62D8DA6
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407742; cv=none; b=kJX4vJlr0Lqbg1B6QItcvBMb4A/28MLlot15fcQeTyBcWw/W6fthSLPHLbiXBQRS5JXENv61NbzapTthB5XA2yO998YIadb1aR7wI/NcnhEXirm8va1JEfF098UJcrQU/lQXuZI6MlCvh35VyOgIVhE13pP2NML7fMbnQvdi94U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407742; c=relaxed/simple;
	bh=Vp1OsDIW6ZBxuvxCrBmI3SC3FE/FbP9j8Q8OuhDWsHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VuPMsXeucq2XfWYtYO0IERxFSxYeUslJvHHJWzko3FGVlJB4R13czZkfGW3zFg0narvyP4zuC8/1+WSdO/d1l+T1UNF+0TVb8OGlSbAtcz8zDhiAMd0E546ao8p7FthggHpU83pTjEBdH0C6FqpQsgU1/aZ+nRzSd15Xh7dRRKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XqPPZfb5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PkN0gnub; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DD8ovO793568
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:15:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QzdM0DgP0NAsAHea9gmw0Xsz4/hK0Rm0yq5an5a2EpQ=; b=XqPPZfb5Dwdly7T/
	ZsasxU5uTd/aMlxYNx9xdHhXQDURVUxdfIFPckjLfaeSIdP+xEQasXx5haOH6NtU
	xeJenPZpSfyyVay7IRYDepI21Fsvq6bfH87aGaFX5ptBQVMbXAMu5aTJSayQikF5
	sJynCZ7HjpRbcqTPTfVDEyuQnbdtpGt7v+f3UPrduqlFdDLYJhumlTEmhkoHZMxO
	rSVNzcR2e2CJl5YL8XbgFt6/kmvVAsCqZvhP0YHTc7tTPzv82EkBB3VB+jaaMfYk
	flwJpW1A+4DVn4ZND/jb/CQz1Zw7SzSeciuZyctnRLbChZryEsaBnEqapRn56Lq8
	nI0bpA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt1b2j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:15:40 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c73887d0297so1178869a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773407740; x=1774012540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QzdM0DgP0NAsAHea9gmw0Xsz4/hK0Rm0yq5an5a2EpQ=;
        b=PkN0gnub+jwRitkLdhTwg/kwvqxhqyope4TrKijwDML/d1Ihm6rJsAxktpkLK/KFuq
         31X1WF+g4cfYlxGevhLrO+rGqzIqZrkUAXgJuyDZ9BsWg00KPKkdXDAB4RNcZ0gRVune
         Q59vsmw12gNHpPhbmNyc+XAK3dhr4GKH/yvxqhFmCt44gsKV+inBIa/YuDRni4UoGTf4
         nGrEB589TanLpv5hPPcA/9HOgFRVL+62pOskDeM/XLLd3uB61jqZcZlZ3SWsxbPmHZpc
         gFo5b3X6Oav2XsaLLnySvibeKAvn96AbqeOXCQ7qcUpB8CQTjHHTtTPMYm2qKjuoy5ZE
         A7og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407740; x=1774012540;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzdM0DgP0NAsAHea9gmw0Xsz4/hK0Rm0yq5an5a2EpQ=;
        b=jDWlpYFv8cv7TgAoabxqiReU6I0o/iFSpbnXjUnx+c7l612PHKDpHa0oxXzZF7KRu2
         fDt0C7SDLVsOXIUBwwyaDv4gUxyxBPYXEXsCDphq7GES0RWrsecWJoZLPuH5hKcb3WGu
         5GEyJv1MMe7RW96LOMZZGVLflZe154aRHMfgSxBKtZC3731pBlvMNNUESQCkBLIx/3JO
         ntWD2DtVR31GfN4obUPCZzj+fpgtjzQQf37G/mdZ2KJcpSYa5IDf5Oon3KrMYkTwQXrz
         du4jHEvzufc3+7wRh4LUcUos/i26Fawf9I8hOnWXpQeeBn+xtBXEr8PpXoAgKbQvI/NJ
         8Wyw==
X-Forwarded-Encrypted: i=1; AJvYcCUfCd5ujlEKRqpwpAM90g9+Vb0eri7DMQh4FhM/0Dm9jRjOure/6TKv/zg8AvjpFtkKyNJpoXyA0kKU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq0S2bFcQi6jRRMuDkBlA9vjhuP5gFyGZVJgUNm76VNWJICp6D
	AbDf5xhzt0D8Z0mMtLzCy4ZsAYeMkMYWJd9xC+xcrXcybGWlniyCC9PCdHtoMhfmXcRoGgC1kUg
	eEHUwgjF2sBWiT8a5DPuVGTcaopN0FtmEDgSvwEqLHUkHal6PTbcciwchSc705LG2
X-Gm-Gg: ATEYQzyfVVTit7NxfTzM2YWVd7I0Rx/wBrCvq52KD//aCzLOPSig7beohnFMldVUTof
	makCE6pENbPPN7/PoZtAN8/ZQM3Ax6t8p87HvqcB3wB0LZfaf/g5d+MR1itWOrkzbGhswoSVprN
	Ett7wGtE4esgzmWD97ohHbREX2KAGSal93GntCJ03pKwv5MxOcVudB1dW/owLZoSnmD7urqDaTm
	NCW5+cc8Z6sxSjJnhCTK82D1vF3uOXob7qmcGLjq4ezfBgXGtwqCAEFfaqUcUYK31EomYOWltia
	UJw35Zwxi3F0spbKjMZM/qY3601dwLigvw/MHkm0FEf0rs1eOD05RAxJlMSmIjlTiJwYDkKNH+E
	iZdU7TbsLi7gZHrwEcCc9EU3oiAXTDarvZkf6JkOpO8M=
X-Received: by 2002:a05:6a21:3981:b0:38d:fad1:cf2a with SMTP id adf61e73a8af0-398ec9eb523mr2925534637.13.1773407739809;
        Fri, 13 Mar 2026 06:15:39 -0700 (PDT)
X-Received: by 2002:a05:6a21:3981:b0:38d:fad1:cf2a with SMTP id adf61e73a8af0-398ec9eb523mr2925498637.13.1773407739188;
        Fri, 13 Mar 2026 06:15:39 -0700 (PDT)
Received: from [192.168.1.8] ([101.0.62.124])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725ca0asm7473119b3a.17.2026.03.13.06.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 06:15:38 -0700 (PDT)
Message-ID: <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 18:45:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b40dfc cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=EhmMhbG5NVnfTD3xWHIiWQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=NHoz9ZQfsOHIMuPHoZoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: rc7fJ8mpcnqVsxQMYa93KyUNWtqrRs3T
X-Proofpoint-ORIG-GUID: rc7fJ8mpcnqVsxQMYa93KyUNWtqrRs3T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwNSBTYWx0ZWRfXyb4mLNA7mIhA
 sLOd5hrFEdjRPjQ1OjANntGFgHotVI8VeRCLmLH/jPff2OIPZ1ohcR+VoJbUpC0csnV6abp/mgl
 3GP+a3j8CiCD+k+Ifgk4Fg61GwDuArtaVDa/ERU3A2N8Xzf04+Gbl5iGJvpmKJ1cAOZuPd5psbl
 mePEC8liRevP9CLpHOJlf+a7bAsSD1AqEEYkQrKtCpjB7ZKZWZ/eekYqsxPI9K9NLj5IryQmpQ5
 6Rp7Yjhs5YuF3hTJeDVbZa3IqKSncxsdEncSjCQHYe2mAaEiTKuhg/DpfT3Ony/Pxswvd4Ht7M/
 N5ilHYd+DdohDYEop5Kux7Wh2byI4JxUPttMRFaToWONht9rLyJW38Sg06eJTBFt+PQijtrT/Zs
 3ZGOyDaUeCNyg/V/yjBT9krFHFZK9En09RuhW7NUaHuNbK1QE4nOIgZ8Q9Il5NeyRJpL5++lzs4
 40AE+w8fA8Dm+87HL4A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130105
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[sto.lore.kernel.org:server fail];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275232-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 72E70283903
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 5:48 PM, Bryan O'Donoghue wrote:
> On 13/03/2026 10:29, Anvesh Jain P wrote:
>> From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
>>
>> Add Embedded controller driver support for Hamoa/Purwa/Glymur Qualcomm
>> reference boards. It handles fan control, temperature sensors, access
>> to EC state changes and supports reporting suspend entry/exit to the EC.
>>
>> ---
>> Changes in v4:
>>    - Fix fan count calculation to use min() instead of max() to correctly
>>      cap fan_cnt at EC_MAX_FAN_CNT.
>>    - Remove unnecessary mutex lock/unlock.
>>    - Disable fan debug mode on ec module removal.
>>    - Fix issue reported by kernel test robot.
>>    - Consolidate hamoa-iot-evk specific changes into hamoa-iot-evk.dts.
>>    - Add board-specific compatible strings as per review comments.
>>    - Link to v3: https://lore.kernel.org/all/20260308233646.2318676-1-
>> sibi.sankar@oss.qualcomm.com/
>>
>> Changes in v3:
>>    - Revamp the bindings and driver to support generic ec specification
>>      that works across Qualcomm Hamoa/Purwa and Glymur reference devices.
>>    - Add ec nodes to Hamoa/Purwa CRDs and IOT-EVKs.
>>    - Add ec node to Glymur CRDs.
>>    - Link to v2: https://lore.kernel.org/lkml/20241219200821.8328-1-
>> maccraft123mc@gmail.com/
>>    - Link to v1: https://lore.kernel.org/lkml/20240927185345.3680-1-
>> maccraft123mc@gmail.com/
>>
>> ---
>> Maya Matuszczyk (1):
>>        dt-bindings: embedded-controller: Add EC bindings for Qualcomm
>> reference devices
>>
>> Sibi Sankar (4):
>>        platform: arm64: Add driver for EC found on Qualcomm reference
>> devices
>>        arm64: dts: qcom: glymur-crd: Add Embedded controller node
>>        arm64: dts: qcom: x1-crd: Add Embedded controller node
>>        arm64: dts: qcom: hamoa-iot-evk: Add Embedded controller node
>>
>>   .../embedded-controller/qcom,hamoa-ec.yaml         |  56 +++
>>   MAINTAINERS                                        |   8 +
>>   arch/arm64/boot/dts/qcom/glymur-crd.dts            |  22 +
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts         |  16 +
>>   arch/arm64/boot/dts/qcom/x1-crd.dtsi               |  16 +
>>   drivers/platform/arm64/Kconfig                     |  12 +
>>   drivers/platform/arm64/Makefile                    |   1 +
>>   drivers/platform/arm64/qcom-hamoa-ec.c             | 468 +++++++++++
>> ++++++++++
>>   8 files changed, 599 insertions(+)
>> ---
>> base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
>> change-id: 20260309-v04-add-driver-for-ec-3fa478f264d9
>>
>> Best regards,
> 
> 
> echo 'file qcom-hamoa-ec.c +p' > /sys/kernel/debug/dynamic_debug/control
> echo 6-0076 > /sys/bus/i2c/drivers/qcom-hamoa-ec/unbind
> echo 6-0076 > /sys/bus/i2c/drivers/qcom-hamoa-ec/bind
> dmesg | tail -n 15
> 
> [   27.301126] qcom-hamoa-ec 6-0076: EC Version 0.35.0
> [   27.311768] qcom-hamoa-ec 6-0076: Fan count: 0 Fan Type: 0 Thermistor
> Mask: 0
> 
> ?

Hey Bryan,
Thanks for trying out the patches. CRDs typically ship with
very old firmware, and updating them to the latest version
should allow the thermal information to be populated correctly.

> 
> ---
> bod

Best regards,
Anvesh


