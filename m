Return-Path: <devicetree+bounces-313116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0nLnEyvUMmrP5wUAu9opvQ
	(envelope-from <devicetree+bounces-313116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 19:06:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A022B69B93B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 19:06:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="k/hSwO2d";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=CJFlBNjw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313116-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313116-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EC6A3062632
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5124949E8;
	Wed, 17 Jun 2026 17:00:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9702623D7C2
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 17:00:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781715647; cv=none; b=V2z4s4IPj89PwQ3vMo9bA6R+yBIE7pqOu6pRnBsR1LM+RZHx8jbAcx0SMUAEpd7hv0nX6NrNTrBjq41n7TWHpJP1CXI14ifHhJCIpUK0Yo8DV7J+FZ3CfzqXtJ1Yc/IzxR8Sjsc+VAOlLCZhcBgT4ytPKhc/pxw4uNk5Lbmz79w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781715647; c=relaxed/simple;
	bh=aCyu/2R2wNUHaUekzJBrFVgx2ifniPlLE6qSjsta6JY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=axyfz+uUIphZMboVYQJYEJBts9r9taCcBB3IEzc1ATQsm6pRs2HVPGZ69kQ30kejCQhUVa0sZe3MuPTW6nr3P5OMQuFxR0CS5Jhxyaf+Zxw4SFFgk63FYZNLututSzUnDilffxNrBe+ToEbI3/XwbafC6qlBpGEapzbDFkhIxX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k/hSwO2d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CJFlBNjw; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65HFoYk32697307
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 17:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Us2NERInGXlSBge5g4nKLlp+I4DfWzF94oT7ElTZCk8=; b=k/hSwO2dWpiQ6gRx
	KItAsa9klKu6hK6Hf0kmTDcwpNTG4jqYcMYkKCOOuRkdZm9w8asNG8ZVeB4Cf6Eq
	ewgnlE1GqCP3LNRpCF+kPv84Gv1V9lGff0dFzPJouKS9cdNsBBd15oez9S45jSd+
	uS5GlFWdZEvx6X8zEqSHf9UKm1uZwR6U3UP8pfUStYitrB7P84DAT0B9+nACZKgO
	Xak/75URRoUR6pSV3XinRl/hdCuQ9vwSvcbfL2S5fjkrWfRmAiwZLADxyJiYVDu3
	xMYR2Jy5jpIBnDNfbeV/qJXzMsx5W7EL+bHwQhWcxxLftHPtzVW0ywsfhcSzxsNq
	3ipq7g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueet4c9g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 17:00:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c88e0f04e51so35939a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781715642; x=1782320442; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Us2NERInGXlSBge5g4nKLlp+I4DfWzF94oT7ElTZCk8=;
        b=CJFlBNjwXBkRSvNaCPljmkd1calNvo3eDA9VzvMxmn0nPUFNrt+oFFgp1AmQF+NX+J
         p6YAW1UBVTzNxTVuLzmRA4FjOcqwBXFd9UYkigsHvUTE8EDP2qXz2y/ntq2mmoW3daB5
         sSORIjmtXQywQBbWyxWu3OKz0sICRFyNoLfcZY1lfZqTjep3+sGZfd8KGpzBTUFU9Mh8
         1+et1G72t140fGWe1Dcoujz9Fq5WxVLco/SCU11+CZNccZrRny93chS7PYvVixyoKyKR
         n94HYjOF4d7/i+F+w4Kbu+nyHNB/0vvpXBWlz+y2u+mFiex+FOT9XdsLRLKkCon313KV
         hI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781715642; x=1782320442;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Us2NERInGXlSBge5g4nKLlp+I4DfWzF94oT7ElTZCk8=;
        b=AfZu+bmaQ4IFpQdW4Ge+JocJ7T/6F4r8PsTePlf0aAq32H61pmxBNiF3qmpUYVHfIA
         IYUv2NPBfhwaicKYQBBpDNdJsigODv1PgErjqmfL0z+qOOozQwkHu6HWKUAuRb77Jq7b
         RilLpJlSBJsyylYicQ4+uYqGGZxfrzsYrkth09PvZNAoe7W2z1iWimvPtlXwlkQYVNXz
         y2FybN0mYWIv2B1vgZMTfNyh3TktO9bzIZuk/FdvzZD4s3WBFnTVXTd71wzVHEOqBt+J
         fuVaJnW9/Jm0jidQVOxXh3dH7ua2BUVZVdjuOENdlzMGkMiVbNjg+uwKDgvcRFitPU6p
         azgA==
X-Forwarded-Encrypted: i=1; AFNElJ93eDXgoRV/0IVxRWAvzNq1ko3pxdM7Btop7bwQM8WJcF0yGabNS34ZGp8a7OGcNTLV21bI8+DepoCp@vger.kernel.org
X-Gm-Message-State: AOJu0YzXpnwMn8MB97nCLMn9ZaubSUcKkVcBR+73NYvMy8KPdauVTuor
	1tQa1tYMzPuwYDQkZCqVqd48Kfect2hvyR0SNL49E2kfScamrIB8s0DSfelOkPz1vUQI8Sc1ugM
	8ehKLauVbA2EQ7clPnrYiAJeaTSxHSVlhR791UZJcXxBfkgvn7yiKX8h3QhWY4WhR
X-Gm-Gg: Acq92OFhAVsDXz6qYEgy/puGifje4SAr8h2ruN594iEk+2YP4nlomMuNJmlRl0PmnKm
	6Bapps5gTq6GjzWasgRa3y6M99i2RnS8VbxM3ChIUWrO4KVMV85F1w8lGpurWC1nm4/lcIggXWI
	sA9cnQqWQjJ5jkrBYloAX5ymUYtadsBszjcSM5qDg7DJSZsqKVeY1B8oqVy0TtUdTtVeqRMawHN
	xlssHh098LPmeBF2EaQFp+NpU6n7pUudzkq+n2jcHsvaozd6veAD9L1U3xnIn10hTsd4OjVCd5t
	0IDYKAumenGUCtpwwD+1z5ZrivcETpLbqZ+/2GcYjU+fZYz02TtyaJHHfeIVkbNTQMrIaxTs5aQ
	JJz2thoe8j2r2v1x6X5bQ3VBnYc4w4EevCcthzHBoJdMIbyM=
X-Received: by 2002:a05:6a00:4acc:b0:835:41f3:f440 with SMTP id d2e1a72fcca58-84524480c2cmr4840901b3a.14.1781715641834;
        Wed, 17 Jun 2026 10:00:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:4acc:b0:835:41f3:f440 with SMTP id d2e1a72fcca58-84524480c2cmr4840655b3a.14.1781715639106;
        Wed, 17 Jun 2026 10:00:39 -0700 (PDT)
Received: from [192.168.29.31] ([49.43.224.243])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434ac9cfebsm15151639b3a.9.2026.06.17.10.00.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 10:00:38 -0700 (PDT)
Message-ID: <f0336ce8-e5e0-4629-ac51-f3c42bf3d9a9@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 22:30:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v22 00/13] Implement PSCI reboot mode driver for PSCI
 resets
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org,
        Florian Fainelli
 <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Song Xue <quic_songxue@quicinc.com>,
        Sebastian Reichel <sre@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki"
 <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Christian Loehle <christian.loehle@arm.com>,
        Ulf Hansson <ulfh@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Matthias Brugger
 <matthias.bgg@gmail.com>,
        John Stultz <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
References: <20260514-arm-psci-system_reset2-vendor-reboots-v22-0-28a5bde07483@oss.qualcomm.com>
 <0c6636b0-f6c7-49dc-b335-2b4fac16b848@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <0c6636b0-f6c7-49dc-b335-2b4fac16b848@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: A2x2feu8A1WbNDivMKUKHVazfBEg04Lo
X-Authority-Analysis: v=2.4 cv=JufBas4C c=1 sm=1 tr=0 ts=6a32d2ba cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=44Clojva6rUT6T7xBPZ1Pw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=yyym-DC1bhT9zQtRc4EA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: A2x2feu8A1WbNDivMKUKHVazfBEg04Lo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDE2MiBTYWx0ZWRfXxjFmChRMJ2O/
 XcsQH9Kgl720MUK4ig5E7hQU4Nw0/u2ZsU2TKBjhRMupPlJmVCCROqAj5TE27wRFFY/OjrlOWWr
 bVnOcauPk1XwkFOrOqu3IMG3pG0i5RDk2NcYceEgou1R522Tlm+/N4ttZqgdd57/1ecRadBAT/K
 touxfwb/JS6xBbyT5zBiElqxlAeTrIwGCWLacuBCkgR491pTZnn0+zkMVsDK6TpPP39eu+0Eg6g
 0J5/tY0T2XlElEpiNaIkRSmIG8v+7iJ9r/YrWY/4I24Nom9940dF5mvHG+9OXDQRWC87v6JveXY
 FC9awsV42eNy9mbp5JmqrfWHAH7qWyaFlxLwZWjaVLttXTfSyOJ2QovPsk/wUF553Oo0S+U+gCf
 5/NrvfOjiHry4bsY0JDZAbcycsNiqQtfOMJDRk1KiBhE6q++6hPxW3JX732KAqzVgG6VGln/Ku3
 d8td2JydqS1U585M6VA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDE2MiBTYWx0ZWRfXxaG5jEVBOtJX
 sU6rPxoXZwrsdPoaqO77UVDRm0Lc8dli3GbcGiYZmWWd34yEozkR0IVkJYwdFCPUIzZ/y6dD7Lm
 Bt+SKTTEDp40eYSpU81GlhsWf14FRsI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_02,2026-06-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606170162
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[37];
	TAGGED_FROM(0.00)[bounces-313116-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lpieralisi@kernel.org,m:arnd@arndb.de,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:florian.fainelli@broadcom.com,m:krzk@kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:mukesh.ojha@oss.qualcomm.com,m:andre.draszik@linaro.org,m:gregkh@linuxfoundation.org,m:kathiravan.thirumoorthy@oss.qualcomm.com,m:srini@kernel.org,m:sebastian.reichel@collabora.com,m:bartosz.golaszewski@oss.qualcomm.com,m:quic_songxue@quicinc.com,m:sre@kernel.org,m:mark.rutland@arm.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:christian.loehle@arm.com,m:ulfh@kernel.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:Souvik.Chakravarty@arm.com,m:andy.yan@rock-chips.com,m:matthias.bgg@gmail.com,m:john.stultz@linaro.org,m:moritz.fischer@ettus.com,m:brgl@kernel.org,m:sudeep.holla@kernel.org,m:con
 or@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,broadcom.com,kernel.org,oss.qualcomm.com,linaro.org,linuxfoundation.org,collabora.com,quicinc.com,arm.com,rock-chips.com,gmail.com,ettus.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A022B69B93B



On 29-05-2026 19:00, Shivendra Pratap wrote:
> 
> 
> On 14-05-2026 19:55, Shivendra Pratap wrote:
>> Userspace should be able to initiate device reboots using the various
>> PSCI SYSTEM_RESET and SYSTEM_RESET2 types defined by PSCI spec. This
>> patch series introduces psci-reboot-mode driver that will induce
>> command-based resets to psci driver for executing the device reset.
>>
>> The PSCI system reset calls takes two arguments: reset_type and cookie.
>> It defines predefined reset types, such as warm and cold reset, and
>> vendor-specific reset types which are SoC vendor specific. To support
>> these requirements, the reboot-mode framework is enhanced in two key
>> ways:
> 
> Hi Lorenzo,
> 
> Can you please review the if its aligning towards the suggestion in v20?
> 

Hi Lorenzo,

Was planning to address the mfd, and other comments, for re-post. Any 
feedbacks, that we should take care in next post?

thanks,
Shivendra

