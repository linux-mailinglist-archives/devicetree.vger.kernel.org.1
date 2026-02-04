Return-Path: <devicetree+bounces-262455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MABQKkukgmlpXAMAu9opvQ
	(envelope-from <devicetree+bounces-262455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:43:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 099EFE0832
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0368330DF5FA
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D016F28641E;
	Wed,  4 Feb 2026 01:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YqXB8Q8H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VWyfn46c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F662285CAA
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770169336; cv=none; b=EykiBhYgiGjVYAOaE0wjAtrnBdV4nTTv/p4kGgyiok0jDkZpgqBHi5UD4S89xXewrYtbB6YesxTtAtIuD+rX1MfcqfZAZ27UksEesYRWqkHCVgFicVmpCLBKXkhWn6tqfFOmgRwLDdMvZMhMFVi1Dc1bSvDbIh3vkHWqXsQKbZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770169336; c=relaxed/simple;
	bh=fHx6IQcx5NYTxz9Qh4n5rWB18tSr3gYwFEy2bHKjKh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HvH6PzZKlb8MVZT+WU3l2wpPN5d2ckOtJZcuXaQErleBQEWFrRVZ+l0GvjqhOx17PgfGOwZL1rK/YnMb5VVe8OedDvI0iyfhJzgerLHWV4FuXpoPyIxER+L+YC1Xt2zf+Ujq46A+HWw9xoLcP2YEV98AxcgE3ZOy7pcaJVsEHyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YqXB8Q8H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VWyfn46c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilw552154654
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:42:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GPtKugzAztNn7M9EYv4eH7iA++ws6YaE7U4webcEUYE=; b=YqXB8Q8HNwz3zMUK
	/IrhEcSn56M7sTKy0OJV1zMCuca4NYFqnqO/74v8ZLKkrYTDtLSKj42kIGO4Mksd
	Nm8fn7pRN+3wKIzZODx8IdIgCYsiBHQemuVatEw3NB0A8a+jIv7/K0TEXdZclepO
	fNjtKJnFtc6JMntiw/avnltavHMxmVNhJ00SPZ4xpRNqDTcisKYm/TWivm6Z2Pmn
	6l+xc/3FiWiwYZoVGU4gW20CjAL1UVQCX+OFgi/bsva1mp2Ea+Net8AeCpA8+HSP
	1rC0IkFOgiotOurdU2ByCq5QNCpoIlVgnh5I9e3KPTYci5cKLMkK8UdOWZyct3Sg
	/YR4gA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3dutk17r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:42:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8231f407512so7958293b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770169333; x=1770774133; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPtKugzAztNn7M9EYv4eH7iA++ws6YaE7U4webcEUYE=;
        b=VWyfn46cD0KsU/8WcVWjJ6vjtuvrQC1clqbljGSFkG+R+vbTZXGs+AnToe6/1abOyD
         4FTdLj5Vswm2T8nc3t9BblJuPiV9JlwkmrX9mXkOIV8L6nE89g5zl4xXyQlaMRT12J3Q
         bf2wbVcHgRnoc4BJgRgyKAFpG8AyG4rtLYA2/OY7qOfjjFNKQAp2T3xfg3IWJi/XVRCF
         bUL7yIOJ7D2M69PCyj6shq+Wse9aGBV0yvBQAKf+8sLzX0YzK0wpEcH9ye3Nr2t2LEMb
         r70F/GdcPQugn3GmEc2LFVM8CEPuc4N0NZDsxH3XkCt+DFy4Uomy31DPQZC4EcG1lAQR
         iy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770169333; x=1770774133;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPtKugzAztNn7M9EYv4eH7iA++ws6YaE7U4webcEUYE=;
        b=qj5jnNEe2xL/93Wc/HNImNZmHlNSAIhB2+j18Vi/33bVcAshazNxCJkB6gcKB9j9uI
         kk2KT32FbV+DmMcqkG4lz6cZysVN++u1sjc9TQzNv2sLlt9G6Qp192zs2yuwphi9sphF
         WF8n8LHguyVeppblLOCWsh7QRlxuPhYA4EHrA7ulPSVOAtXAZGJmHTr5mClnl+7GpVRb
         l5NdqthV+nmujnh/mATftIBxzwn52cBoR0SWRONhkoAL8WsOc/rON1no5UmF47RetpF+
         kX/R+prNKueO4+V15Aul3fpGa0XuqpVm2RMNA/Czxla7o/CtPsY1fZH3MWw98WSKx4Gc
         meLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmCRCKlAJkSmx/haQHN1ztgwXHCN8P5CWDzXyceLDvC1RvLTPXNVrGQf++6q726QStIpDLovNy3R3j@vger.kernel.org
X-Gm-Message-State: AOJu0YwCtuSCDICnXwvCgPmE5R8tPwmIuVkOR6WtsPvx9lvoKmYEjzDG
	wwuuRQiIaMyrNpQqHaBSNQTqj62jkSAGcMGPvOgs/ES8YtDHMrNe5DRirtxrcDEB6ae2rXjwIoL
	TKEADlZt3ysT3XJB9bW0oo5c9yJMeY9/K/MWC9wLf0C0zhzYODhVAkwZJyU2V9o4+QFZlm3oa
X-Gm-Gg: AZuq6aL5sbQt3E9bsGwu8znVTWEBbSt7H32aUS4UgeeGX3Mb3T6CmaEclS0FI+fcwrH
	aKybkrxqEn8OQd/JymCyE6UC4ai3f0aIbVodNoOQGvlsr4Uz3ox0vmPd8weK+xX8LW8RPm8zKp+
	TEIw627VIEJGpn2QGQhGOQ3ytxSdAAYfu3Hl9qIM9gFfd1oUl6mQ9hzr7jAXXX+O2fuzMQGz6AF
	glgXdMiRkQErYfT0CmDGZiAtTMDgtgiKjn7FIDCgQCbNpP3iynm3mO9Xs7s2etK8oeHt4XTNiws
	hBpuNc2AYyAZKVsWlIi5AhBTjFWGR/7xryRIlNjepcux2FkQ44QHsrvl1pExkaxSOaoenliwISe
	1mg7UCZ/nRP5WI7eqFqxIiu1ZPQ782u7SC4ttLIhvORvjX5dHkOTN7i0dCuYeyF3GlDJkBf/cfc
	eDgA==
X-Received: by 2002:a05:6a00:3e1c:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-8241c1c6c0bmr1384389b3a.17.1770169332864;
        Tue, 03 Feb 2026 17:42:12 -0800 (PST)
X-Received: by 2002:a05:6a00:3e1c:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-8241c1c6c0bmr1384288b3a.17.1770169332019;
        Tue, 03 Feb 2026 17:42:12 -0800 (PST)
Received: from [10.133.33.36] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d1cc84asm612359b3a.23.2026.02.03.17.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 17:42:11 -0800 (PST)
Message-ID: <e577c093-0851-48b8-abdb-0aee0479c1e3@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 09:42:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] Initial patch set for PURWA-IOT-EVK
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        andersson@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <177014002716.3173249.7908353000261603377.robh@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <177014002716.3173249.7908353000261603377.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwOSBTYWx0ZWRfXxqBMCvtYHZ/0
 kBPbzDNsMJZNBwdPmm7IC6FrRCFu5d2Lqkd2XAuHZXwt7xv7V2Nfx4ZSxXpiybLhKdmF/l/p2Ql
 hkmGOpn1+cPgZZUdtB49zO8hLegeOU+TZ0o6vAm1qdS+oFNO0mw6B9wbuI8RRxb/h4J9fauKsta
 80wPEohZ1XcFUVIAFUCqz/iraDNBYwGz8kR4o/gL0wI1Eb3LhgjuajHcWUhOozqjyvzo3fuT1uG
 1Vu/I0ClWSmNti6FA38EFEfXKHtJpYX9m32YKbvseLJk5atrh1TBa5hH1/Vn20xj/NYFaAXkScg
 DlaUMBJq0FelJC6gIdQfPIeI4gQ4r3MNb44qY7SUJQCrzoZoiaFPV0t2veVYC6F2iYw1qGv5F03
 TGbkHUbVljMTXp3Ih7sMbw7jP1thKXWJGcdEzRbY6MrTNGqkCtF/TrQjXgLhboDb1J2P4O9hEjB
 mTHCNW1YZSwbottfg5A==
X-Authority-Analysis: v=2.4 cv=FrgIPmrq c=1 sm=1 tr=0 ts=6982a3f6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=gEfo2CItAAAA:8
 a=G_u7QtiXaNz_mJEDG-AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: aorNHpwDj9KQxduuqwBOEQvUmCShVbx6
X-Proofpoint-GUID: aorNHpwDj9KQxduuqwBOEQvUmCShVbx6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040009
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,devicetree.org:url,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262455-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[yijie.yang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 099EFE0832
X-Rspamd-Action: no action



On 2/4/2026 1:37 AM, Rob Herring wrote:
> 
> On Mon, 02 Feb 2026 15:35:44 +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> Introduce the device tree, DT bindings, and driver updates required to enable
>> the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two key
>> hardware components:
>>
>> PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, GPIOs, and
>> PMICs. Designed for modularity, it can pair with various carrier boards to
>> support diverse use cases.
>>
>> PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
>> essential peripherals such as UART, on-board PMICs, and USB components.
>>
>> Together, these components form a flexible and scalable platform. Initial
>> functionality is achieved through proper device tree configuration and driver
>> support.
>>
>> The PURWA-IOT-EVK/SOM shares most of its hardware design with
>> HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, the DTS files
>> are largely similar. Both platforms belong to Qualcomm’s IQ-X family. For more
>> details on the IQ-X series, see:
>> https://www.qualcomm.com/internet-of-things/products/iq-x-series
>>
>> Hardware differences between HAMOA-IOT and PURWA-IOT:
>> - Display — PURWA uses a different number of clocks and frequency compared to
>>    HAMOA.
>> - GPU — PURWA integrates a different GPU.
>> - USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an FSUSB42 as the
>>    SBU switch.
>>
>> Features added and enabled:
>> - UART
>> - On-board regulators
>> - Regulators on the SOM
>> - PMIC GLINK
>> - USB0 through USB6 and their PHYs
>> - Embedded USB (eUSB) repeaters
>> - USB Type-C mux
>> - PCIe3, PCIe4, PCIe5, PCIe6a
>> - Reserved memory regions
>> - Pinctrl
>> - NVMe
>> - ADSP, CDSP
>> - WLAN, Bluetooth (M.2 interface)
>> - USB DisplayPort and eDP
>> - Graphics
>> - Audio
>> - TPM
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Update the GPU firmware path.
>> - Update the description in the cover letter.
>> - Reorder the patches.
>> - Use separate DTS files for Purwa and Hamoa.
>> - Update base commit.
>> - Link to v1: https://lore.kernel.org/all/20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com/
>>
>> Changes in v3:
>> - Delete unused PMIC and thermal nodes.
>> - Add WiFi node.
>> - Add display backlight node.
>> - Add connectors and VBUS regulators for USB3 and USB6.
>> - Enable PCIe3 and PCIe5; add PCIe ports along with reset and wake-up GPIOs.
>> - Link to v2: https://lore.kernel.org/r/20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com
>>
>> Changes in v4:
>> - Enable TPM.
>> - Update the descriptions for video and the USB OF graph.
>> - Link to v3: https://lore.kernel.org/all/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com/
>>
>> Changes in v5:
>> - Reorder nodes in purwa-iot-evk.dts.
>> - Update base commit.
>> - The DT binding change that fixes the DT warning for pcie3_phy is located at: https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
>> - Link to v4: https://lore.kernel.org/r/20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com
>>
>> ---
>> Yijie Yang (4):
>>        dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
>>        firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
>>        arm64: dts: qcom: Add PURWA-IOT-SOM platform
>>        arm64: dts: qcom: Add base PURWA-IOT-EVK board
>>
>>   Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
>>   arch/arm64/boot/dts/qcom/Makefile               |    1 +
>>   arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1549 +++++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  685 ++++++++++
>>   drivers/firmware/qcom/qcom_scm.c                |    1 +
>>   5 files changed, 2242 insertions(+)
>> ---
>> base-commit: 6267b2da1b2d04847a1a8f441e138bc4a89435ee
>> change-id: 20251113-purwa-907ec75b4959
>>
>> Best regards,
>> --
>> Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>>
>>
> 
> 
> My bot found DTB warnings on the .dts/.dtsi files added or changed in
> this series.
> 
> Some warnings may be existing warnings. Consider fixing existing
> warnings before adding new features.
> 
> Perhaps the warnings are fixed by another series. If that is the case,
> please set the base commit and any dependencies for the series using
> "b4".
> 
> Ultimately, it is up to the platform maintainer whether these warnings
> are acceptable or not.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>   Base: 6267b2da1b2d04847a1a8f441e138bc4a89435ee (use --merge-base to override)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com:
> 
> arch/arm64/boot/dts/qcom/purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property
> 	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> 

I have already listed the fix in the cover letter:
https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
It is not recommended to list it as a dependency in the latest version.


> 
> 
> 

-- 
Best Regards,
Yijie


