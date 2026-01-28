Return-Path: <devicetree+bounces-260379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJFOHND+eWm71QEAu9opvQ
	(envelope-from <devicetree+bounces-260379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E81A11DC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1105C300B9AB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09822F3C3F;
	Wed, 28 Jan 2026 12:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J3kF+9bK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M/eaypTn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1E129992A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769602755; cv=none; b=r+F7jEJTuqXqgsLoUZ36oS24+haJecPzZe95hC7JChKuvKSurAqmCIs7ItQyZzGaHuFUpXsjyftmylX/CMAHaWy8i14Mv4DAjeD4RlBquNsbdwn3/EpQeYrIDL3ysGACu9b+99mb9/5P82e7wFhjrZ2hybJXr8ruGgtAtpcm2Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769602755; c=relaxed/simple;
	bh=xMwDGOfD+QoB+El1ETa7HX9k9SyOvEQUTcCti+zDsA0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A7kF/Xg2YKb5x7tlpszHifIot1JPkS2itgDLI9Dwu+Lziqew7LL7NP3EBkB4azgtg1o0HY92bfnaAeNIbNdzNMJLV5tCcFb+cvZzO9G4Oe3B07qHSdnjjC++GlJDlA17UrBqquWmK6WRxr0I7SSTURB9Q92vRu1yNyEWWhCiWro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J3kF+9bK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M/eaypTn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92Ub6254475
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:19:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6uXV+Ct9oIOf7uhe11ZAvbv0UFOCyg8KrcxcTo0LHjw=; b=J3kF+9bKz5m9eVZ3
	0Ra+XC5nWhiU0P7r9M/t53gJQT4nAB4ILifRV/nJHW4opPrEX+WcaJcVlMpBVCeJ
	nJ445rOVAcG3r0eFAhAJ5lgINjs9JB+AdlHrFusKE6lg/CFUDFtiCUN/USvug15l
	RWH7fjxCkoE9aYEjCizjzpibf/epH1q1guxAnYSEhDqAv0agYy2VwsDm+2rrUnYm
	mRZqpSE9KR+Opg+jSmJFsdPZPGq/0m8496RL+GPavaaYeAx0hRExVgkRyCJXsxSs
	U/Mq3dSI8/rtugel7pLvLUaylbxxlzjGR/syxIhXIEL6mntMdN5G7kE1nwWHiVwc
	fxJO0A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by20y3a20-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:19:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-894a207e7cdso12662186d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769602753; x=1770207553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6uXV+Ct9oIOf7uhe11ZAvbv0UFOCyg8KrcxcTo0LHjw=;
        b=M/eaypTnpLG7zfAclRd3ibKdzMwLGQ3PCxUonG/AxqOUtga8DkTqMcfXc2VBORHsjv
         HGnYUcsRK1j3J6E9nfvAdxv5YG92kc84Lr6K7mq99gHHnCToth+7FQB+mcp4DUe12az7
         gNN3XGlvMcvQJculqJeUwE7zhJYkAStf0I4kjAe0+i7Fk5tsRXZXdav1z8IT1DkhO9m/
         5OI7I+M48PvL16e/Wrj+r/jB85deVtAkMekspABXHNdGUp0Ryb0Z+qSNjTmY5lG6UIJN
         3jaIxvTk6UxmQ6h36eHMYQbh/TM/AwuN4PnX+7l+8dChxCQZUewuvYHqqhErihitKHSR
         xk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769602753; x=1770207553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6uXV+Ct9oIOf7uhe11ZAvbv0UFOCyg8KrcxcTo0LHjw=;
        b=UeUE1x8DRUW7Oda6KjQN0HzC9ACd4TqLp6v07JbZpGhofjlekQ4ig2DfZ5OgJwWQGL
         cwgsQgcRjiNDNaKzyXLe+h5T0T8INV2WZ+E1vTh3kCoxv25bV22W/aDb/Crj2a4/D/I9
         duiJIBVoAu/dXWfL0TcxoAu3IyBs6LriE9ewL8pw6y1xn2BNHp5F7C0n9sIVZhI/dOs/
         S9N+qnEaeQNG2Y2qRJwRv7EAje17lQCVNWgRZqDMNcxx+QdIoNI+lnqEEoOZqLHSEC8F
         b15YI3DDJFqZD++ZD+6qq7nJwUVujF4rFHuuAfnjapn/Torxpf7CyvOfnkV++zln3zvT
         8w1w==
X-Forwarded-Encrypted: i=1; AJvYcCUllwDSyHcvzh0ExRtigEoIWEFyRleFmiWGpuOhvyffwCZGYb3AKdCAbP7M1udDA4zxPREZUu7lGOw0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx53O23H3YiAM7oGtRwnmAmg19f5X6IrtweZRJb/1b7KlRof+A4
	bjz2dR0g6eidpNWqUw6ga2vYyrmNlBPXgxgumFtP6/zo7YscA9/mxf7Kvc02/3TE+SfVpev8ZxV
	PD3zfrbAMX+aJbQs0jAqYlfhzDtd1UeDgZKa+6GZoT6EiePxnd+a9wySCV1opT8l80n5NNF+V
X-Gm-Gg: AZuq6aJBi3BzbWw11g3PU+AawsI4DpzhfCWHpEZicVxXq2M3ZBipOmfg3Eb1lSykQGw
	DllPe2A1qRNzj3ov/Kexx7IIq/nHEk55EY9xD6aefNoGqOfJ8LpLNK9/BX5NAVd5A/znBrrchHw
	AmiC6O/G53tBHzh8EFZ3AtROYYaqYdmojgXUbEliVVI3ZyHS+MTIl2jiavwgQaoCQIZ25IiBS3c
	rFXQdOSzBE5MCy4srl/29HOpIEVQxjJdLYp9Xw6/Wq4wkxlnbzOdacOyJKUMQzin2R/KPNwGfI3
	ONZCNcfVnVUysfM5IxM2ByIY/e09iaHVDlrq5k8u3EPzDKla8BJuuCIgkOMKcgnl9oqmPDLimDz
	CPNr1kJ7GB6/5IbO1gj/siBmPZ/Q6VJAMGFxrMG9/3SrT7c23aRj4V5ilFgX27H5vBZo=
X-Received: by 2002:a05:6214:6117:b0:880:4f69:e598 with SMTP id 6a1803df08f44-894dcd0a0bamr394756d6.4.1769602752695;
        Wed, 28 Jan 2026 04:19:12 -0800 (PST)
X-Received: by 2002:a05:6214:6117:b0:880:4f69:e598 with SMTP id 6a1803df08f44-894dcd0a0bamr394526d6.4.1769602752320;
        Wed, 28 Jan 2026 04:19:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46ac0e8sm1431956a12.34.2026.01.28.04.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:19:11 -0800 (PST)
Message-ID: <7a3541f8-079e-459a-9f30-cb20002e75f8@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 13:19:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: monaco: Add EL2 overlay
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
 <20260127-talos-el2-overlay-v2-2-b6a2266532c4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-talos-el2-overlay-v2-2-b6a2266532c4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LgXvyWiKcDv7Lsx09qhJyAQzf2ICJKGM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwMSBTYWx0ZWRfX+JIrOE5cvbs9
 zE3Zbo5wVASdxo3j8s8jHwJxSmKzgodRhZaDZrhS8OHp19MeOQjDyf06adXHlJalOrQ3tuf7ioV
 eGoE97vH0uSvz65MgMH0ZvqszkQjbJraw/Kb7aaDsxRriJb2HHx4QwYzR5p1vHdkUx0hs8H/Z5J
 67k+FbEM63kwQwxyTXbUP241b5tZprxOmHr47yxfphkPnzYOdzrn028GFFRyuupgN51TBxpgnZm
 tMZyxivC5vn0UH1Xl/ob6W576+XsY3CfRr/MgIAcUhCvzHnVpi/gMVMo7DWf/ehW0f2ZSl6CHmd
 u4yQphBX7yZLGVfh4DHi8RkTi3OqLJJnMbpDYuIqEvqVrn0BgupO2i9MuR1wOOqS/+MQTw+aez7
 Xxc0Yrv8tgV2tdUT8uhjkWzBA+IUUth5o9kDVCQKkpd395lh74PgbI+hscgSripvRfX4l2NpQI4
 b0Exvq5AjDdFnl8MoHg==
X-Proofpoint-GUID: LgXvyWiKcDv7Lsx09qhJyAQzf2ICJKGM
X-Authority-Analysis: v=2.4 cv=IKgPywvG c=1 sm=1 tr=0 ts=6979fec1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sdnczi_gjX_ezsEsx7EA:9
 a=QEXdDO2ut3YA:10 a=eSe6kog-UzkA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260379-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09E81A11DC
X-Rspamd-Action: no action

On 1/27/26 12:43 PM, Mukesh Ojha wrote:
> All the Monaco IOT variants boards are using Gunyah hypervisor which
> means that, so far, Linux-based OS could only boot in EL1 on those
> devices.  However, it is possible for us to boot Linux at EL2 on these
> devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add a EL2-specific DT overlay and apply it to Monaco IOT variant
> devices to create -el2.dtb for each of them alongside "normal" dtb.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

