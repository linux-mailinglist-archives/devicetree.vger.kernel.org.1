Return-Path: <devicetree+bounces-252836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCCED03071
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5462A3094808
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFB7427A0E;
	Thu,  8 Jan 2026 13:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CJSkDKSU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PvIcYDWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059BA4279EB
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878054; cv=none; b=BFm6JPwelkCVvZBj2PhjHic/lYFv7WVvaOm/78FIIJnZZxkwI0JDMha/a/9D1PdJ6+6SHkF6moPKKam3sm0axHoI/vVT9hpcfHqWWbVZhoF0eCAEAYphDTc3QCntHZ0I+5GWCZJVdHj0ngle4C3fQdEVXRRXX/svafHrQuStZqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878054; c=relaxed/simple;
	bh=bmTWha9Fgf9o41xEl8X6w4aQ+q4jIHIYXxU83NwrE0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pxqhs2Pr1vv9C03E7co7s+Mzha3sNdjG1jA7Xne2zg+JS+WTPPVdxIUzkOvBqYcwWvL3cWDrYqkgOttwKO6hnA97hxqcwRUuKY/XQFgXVQ6JSlOGfTZOHAK3cZmniAoD+D/QTo81KN3Mt91XSP//QOZSjmabIyDbitHiT0mRClI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CJSkDKSU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PvIcYDWL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6088w9f51570539
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 13:14:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/UrKHuMuDaiJdfwGlVoYQ8pCn3fiJV3iduFFrwd1C0M=; b=CJSkDKSUzf0mVoap
	Qdvj9iJLCv0OTYUyUPvV5TiBDyVyPkfJR8a60OsU7uVwvBmbG21RJ9oaklv7E7k4
	lieLqt+y5gVoEsuvTui7Y/CxNanf6uUItp67lRZZK4yM4jBBUW2DJE8N/kxV+GnK
	58HPj/FFVWZP/BiO24ztHmgQqv57JQ8UMJyJ772roVTs3lArPwZGzHOLdzN2fMiC
	MLdeSd5/ZGwwlJyMRIBGrq6rTsGXwAEJzpilkH2ht+a7Bsjeg6F3LkeE2IZ7RyN9
	/eLuSi7PkF/2htWfb2WEG8KSbjuAtAcd2xCcOg9M9adEtb2BJAk3VC7c0yWfj1Vv
	Snkc4A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj9hqrrw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 13:14:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1be0fdfe1so99943785a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767878050; x=1768482850; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/UrKHuMuDaiJdfwGlVoYQ8pCn3fiJV3iduFFrwd1C0M=;
        b=PvIcYDWLcC7qmcCrm5HEXriqH8uTcUCwQKD/r7mQesmeW0lYT4aU0jfVq4vp812pAP
         yH/02Wxh/5vieeosLZ5Bi8UR9ifwunmE3Z9NkLN/+A9M/+MyMG8ksFw3Z3sIJluQRWal
         6wstJY97BglM9Q/vf4hszktAFYauysGAYucSvNjWTbgSQ5Qe5UpzNrYyJlW8Os3PXUsB
         yYdBSbLCh9PMNGcQJOZ3PzT7WSadh3QspWa7JuZ3e5c7mCpahZtNkBy8D4BrgfjYfC4y
         JkuTYMdkswMyLCgEwOYidhWqeB+fLwrKVZwBuv/hIpJ31YPLz7cTs0gZdp4AvmZb5GIc
         k0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767878050; x=1768482850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/UrKHuMuDaiJdfwGlVoYQ8pCn3fiJV3iduFFrwd1C0M=;
        b=Imq4Nq/+4pajwN1crSge4H0kNOQzbwjmPqZYZgNSjdk8P25Ae3FmBj/DapfVMWxSUS
         XfylM4dKaj/TYvvDgiazApnGb7K5Y9segSldF/cxf75S84shzB7MOnTltRn415EiFoj0
         gnEZBsXCDWZpdBLcf9U6din//iqkGChB01jRy8FVkom9GvdrfqcyDkRv48IClDpctVgO
         Rovij8Im1dBE9lsEvV2khkqYPoajn4HYRlgXgCSFY3BHIdfV1DTrPaUOACDIJqN13XpS
         DxaiJJQMAmd7c8pKi4RtYtqyXaKiZO2ojV1twRCT4GT0byDuU9FCqQ14IfStvY1z6x76
         dHNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr8KlDIoSwEwxd+i8XUbhSIRe4Qc3Wmi2ORSlaDoWKse2KFiHKaY/2yWcyZBIet/UZDCFkDSqJRMzj@vger.kernel.org
X-Gm-Message-State: AOJu0YyNqQ2S8oPIsjXtpSPxOp0lRFAUcw6d1kLl08tISnyRsPE7ntsX
	ZeoHu3sY7Mjkc0B9sBh6dAkJWCBDyckdzcE33BmDyKezHXltwv3nk2jgUvxVae2uUq0TdTQOHLx
	TKXy/fZU+PpRIvIn/rkGZZHoZdRYkogacHYp08VGbx1vk0BC8IBNVZlBN0z8wV8E1
X-Gm-Gg: AY/fxX7IzaS9NfIW7YR18gFCe3ldMGdUFVTKvcjxvm2cu17cJ8sl74MQSTtdgbLQZjF
	yriACmDN+J5AfCFzpSzP3TgSz98NWdBCqP614UNFD4BywLpgMUDRJbB4ElWc/zwM3qBvNu39Olz
	jgwebZ1MZdD33EsTiNJ8Yyzzco9mldu4WU81izRPJM452fnBTPUq9/XIezv7QUCMFBp+xoI7cYQ
	7W5u63WlugoHLO49RG+OmNVeNduN48G5/mtbbbSus4s6aedzSF6jw09ceK/0W1T6XK7qnk2cwf1
	qtdhkDnKO+Wcru1g/2aK4tHBhUn3qAOeSQm/A+sEGLlgdmLJ9umdKAVnEEAaG2TgsTpHmdZIAnR
	eLczMMAEJ84L7SQwPqIpC66fxHGdT7isyVlzHtYz+v0IE9mXxfB/haLohal5kPnhZZaI=
X-Received: by 2002:a05:620a:2956:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8c3893e8223mr517990885a.7.1767878049741;
        Thu, 08 Jan 2026 05:14:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9IM9gFoDCpytPpC9WZV6mIUTsotEOiU2S1ASfq77NRu62KRQZREAy7e6BE6lPBqxqO60Qag==
X-Received: by 2002:a05:620a:2956:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8c3893e8223mr517986685a.7.1767878049249;
        Thu, 08 Jan 2026 05:14:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a56db16sm804206866b.70.2026.01.08.05.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:14:08 -0800 (PST)
Message-ID: <9ceefc01-46fe-4c9c-b23e-d08835810d96@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 14:14:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: tessolveupstream@gmail.com, yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <aV4bRLY6s3s3uAXa@yuanjiey.ap.qualcomm.com>
 <0d48a1b6-6946-4882-9dbd-1a1bb50770e2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0d48a1b6-6946-4882-9dbd-1a1bb50770e2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GN8F0+NK c=1 sm=1 tr=0 ts=695fada2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=pGLkceISAAAA:8
 a=JeiBKWswVjvtFiaB6FEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: uZzOO4rN_T688EeAil2VokviMA8ox-7p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5MyBTYWx0ZWRfX0Qrmlkc9k+/T
 tla6TW6Gd4VxK0nyPieAzD82gs52ryf0xDrc+v/sJvyQVJw24SDVb4DqD1lxUcXb8HyLW9GS0Mc
 TLIMAUr2MHoN8BWJ0GwRlw7Lnp5tcp2I5C9B/J49p8nLyrOLWWjGhCHTeK3BT6LEl3PHrFrWcE1
 Adunwtwsh/BuMbEzVzAtU0SZIUEo/4SCGvkD00+QWAkJ0Pqgr5lgrJ0JaNWNxCweRlZbNAzTp7f
 EUpAhX8jTYd3RlByqZ/51KJX+hKbPXWXByZbpLWpBPX8UFWExXgEZ8+7i4LPglbFBZQozwX181S
 gJQucq0gqXGgM7VQfNWdoNsfTcpO8iAqzA4Wk8aF29ECjIHTcVTEoOust0zP0hClAzFI70e5HQf
 IJ5H+mY95pPqrPUvdQbf7CrfdPPzWb9RVkWE9UQyMCp6i/vmwL+WLVAokV2HgUdQYZ2YZwsaRa0
 kO0+CBzrNF6fgvMRudA==
X-Proofpoint-ORIG-GUID: uZzOO4rN_T688EeAil2VokviMA8ox-7p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080093

On 1/8/26 10:29 AM, tessolveupstream@gmail.com wrote:
> 
> 
> On 07-01-2026 14:07, yuanjiey wrote:
>> On Tue, Dec 30, 2025 at 06:32:27PM +0530, Sudarshan Shetty wrote:
>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>> platform is composed of a System-on-Module following the SMARC
>>> standard, and a Carrier Board.

[...]

>> These properties can work?
>>
>> dtbinding check says:
>>
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: panel-lvds: 'power-supply' is a required property
>>         from schema $id: http://devicetree.org/schemas/display/panel/panel-simple-lvds-dual-ports.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: clock-controller@100000: 'clock-names' is a required property
>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:0: 1 was expected
>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:1: 2 was expected
>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:2: 3 was expected
>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:3: 4 was expected
>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: 'ti,dsi-lanes', 'ti,lvds-bpp', 'ti,lvds-format' do not match any of the regexes: 'pinctrl-[0-9]+'
>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>
> 
> With regard to the power-supply property for the LVDS panel: the 
> panel does not incorporate a dedicated power regulator, and therefore
> this property cannot be defined.
> Concerning the data-lanes configuration, the LVDS display operates
> correctly only with <0,1,2,3> in my environment. Modifying this
> to <1,2,3,4> as proposed, prevents the display from initializing.

You'll need to fix the bindings checker errors one way or another.

For the power-supply, I think it may be made optional

For data-lanes, I'm not sure it's even parsed. Are you sure altering
the value under the TI bridge endpoint (*not* mdss_dsi0) causes
issues?

Konrad

