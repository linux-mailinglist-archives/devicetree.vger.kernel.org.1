Return-Path: <devicetree+bounces-274934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKzkCLy4s2nbaAAAu9opvQ
	(envelope-from <devicetree+bounces-274934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:11:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B91B027E93B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 403573044BA9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5C73659F7;
	Fri, 13 Mar 2026 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JptdMm7z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XhaE5oMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89049381AF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773385695; cv=none; b=OsEDIoHUZ162h+N8PgAQCXYHpJqkmvCNty63gaIUBJxe2YRB3GjISJWFvxeDwIm9OuxLQU80xS6d2QapSFUHE4UJVhQAohKHQMbekAuKk/zRGl4kuU2zCkFmNQILnWcjA+tqhyqdZAI7nWAJF8/gwNTMNEvbgoktNxbMTkcfIrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773385695; c=relaxed/simple;
	bh=HvJaazv1XcKV/l0L0yljDf61dGUaUJebcW4wYBKEeXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OHW/vIxQc4m3MQLp162nBwA42pvOTmw/Wd6g3yWJ47mH95OBcEYaEQXFbMxmsBSNIRLIPhTx16jIf8DqOk5coi/AI0nyhzYo5NGRXMOTqKM6DIFuiHJAv0Ss9f8nKdoBX20WWXlwta7tKbYC1ejW3OMoE99unCKRqSiIjeJ96mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JptdMm7z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XhaE5oMK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tbnk3466737
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:08:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T836YK3pUIQ2FwXv9V4cJcvHpdt09Drk+iUU3wSflMc=; b=JptdMm7zxT5/0lhn
	FT7bneTGo2AEVkdh0F4P5661lHKuzqRrh6WQ/uKfDWPwy0XyUNZj1584u1TgPdhG
	s2DkuRAl2vWFmSKqCznc0olmmOI2qgQHrn4e6R5fs2lcfqjS+tFRBVAV+xrvlGgT
	H4zoXTVK1M9rmyv3VVTmmenGUsJmNunCQHdRVIVQ0ksEdViUQjsa/SOjjA/0xdk1
	IZv/WlzPDqddoNNMOzmVA7E4SDWSClm5zJ+7kQ1JS2SDgWUKnQJjXrFRpqyMcxQL
	xdeqg1rid30ML0wK7wcYR8Gheqmk4uvDPF1VG9e/95TUsxAZJNfWRoU1xjkSKTL3
	sGVu6g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60mwx2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:08:12 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c7381a95fffso1157436a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773385691; x=1773990491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T836YK3pUIQ2FwXv9V4cJcvHpdt09Drk+iUU3wSflMc=;
        b=XhaE5oMKpdJ2ciitV6/jrJk0+sbKMDJqAw021T10QEdvWKZYMtciYVEgzVn3yIvPNs
         Gjya+l+B3+VUQMOK8hvtOgsbaL7LV69X77sb1wm+v5b/SuU95J5O/ORbP13x2Nae58Gi
         yCaNSQFA6qA/xbryak3iZITq1LX3LDDw/vGDXFugPEtepkAtbnvifbvCRlEvUa7mfJTf
         LhG+4RNXrEwCy/GQDVATyje9n7CZos4uaAmY/unB9svyZxrW0gCKMsxQP3sw3NeX6HlU
         El+NwwCc2Mw18qeWkUQLCdwY4ncwus5l/SeAWt8M1+1HhMVOtBwTYAscuSS1l2FpF43S
         0wbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773385691; x=1773990491;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T836YK3pUIQ2FwXv9V4cJcvHpdt09Drk+iUU3wSflMc=;
        b=qHJ6pnJmcZIHdwOTu0yRRDAbdyFibAqcfhMUu0AQ6Kf1/UZCYXOtVPpNNBSaO8sJpb
         bJHS0cQIj8XhIuGt/yRGdoObnyZoGcvYLMK+nIRRZVANC29W6rtN4ZxqhftdvSg8CZpo
         pSdCUIJ2BCerxqQzkfMP/I8oOr0DyaAJ+B+3E3pzMqzMma9ypluZlx5R0ENP70H0qNHb
         J1wQ3v1gFfNxs+W7L0E4FmRsxFUXVtt0BRv8ydoo3NyLvOYPXZJL63KpC9Pe+vKmYhHq
         dk8HznTHKgGqnBiEGZTR61RtCg+bbdASrnBXWU6BMyGm/lRLitzEIZfArjo1QAqFlNtM
         VT1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2K4COfGz2jI3OOOKhDIRsfqK4LOWQErm3fKsu+Mr5U7OBtynB8mfU1sj5I8zyDjhDknhI+i2/bWuF@vger.kernel.org
X-Gm-Message-State: AOJu0YwvBeL39OsOaCm67P7oEz0L9ZW2uzZpSjwOqOBNJAIGZ7JkVNSd
	RrVC9BZcNPGNIDqrqX/iDECxWNDYGlQ+lwJmuz/6lgKT3JfgTm7cbAtBybXOlDnjPCVL+Tsc48P
	US6/gAsQ33LrpRbdQ9IVdfvNNjx0DNBHP6V6NOTu12nu4C5NydEzDNo3aw5Rcv3ic
X-Gm-Gg: ATEYQzzKRKpIeAcfQshKTh79lwakLgHXvg1to7Get3CaJG5I/q6qYO8clwodV/TU8V7
	jGJKYkkcmf47y/9gU8ofobcoTNRe7NQ4yZLESdLKxgadk7s+NAum4NFK+/ak1DW8JC2L/5R7j2T
	FDFWm4YcRajUS4GbktB4d5RmOhhO/cGo7wjLBFM+E4oZ8csbm++OxW88jnVPpCK1xyW29SbmExC
	aZLO4iyt9mMBlW/XgMgKdLta0deEtc/kZrJpW9kwh97eWTyuClVrkoZ4fPrMsO0kR+7uWCwxLj8
	7lfC7f/29SKk2YsXwiWPRdlgGLy8RLPl/CDYuGUDcPLlbX28ock/L3wga6vsKSV452YJJXuV2aD
	VAVuloFm8sGhgPLcXufITLx5lCpw9f5JuIlgmeA1FFdqEEifYMcLmK/lvZw==
X-Received: by 2002:a05:6a00:21d4:b0:829:9cf1:642a with SMTP id d2e1a72fcca58-82a19911780mr1836696b3a.47.1773385691428;
        Fri, 13 Mar 2026 00:08:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:21d4:b0:829:9cf1:642a with SMTP id d2e1a72fcca58-82a19911780mr1836652b3a.47.1773385690789;
        Fri, 13 Mar 2026 00:08:10 -0700 (PDT)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a1e72cf33sm960207b3a.37.2026.03.13.00.08.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 00:08:10 -0700 (PDT)
Message-ID: <ca27e82a-beda-489d-979f-f99c778c97ff@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 12:38:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260310054947.2114445-4-gopikrishna.garmidi@oss.qualcomm.com>
 <vznk4wbziuieoctzrqwbjm7xwdudsrj4afanl5lx67mmbar2rx@5msox6m4h2xn>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <vznk4wbziuieoctzrqwbjm7xwdudsrj4afanl5lx67mmbar2rx@5msox6m4h2xn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PEKVn49SdHDjEPxcm0vk3H5_2OFPtdwv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1NiBTYWx0ZWRfX5OOHscI5w3iY
 Y5maIeVXYGfKHrnYgcLgLmiD5QHEFdRv/6cVwyImBhBL24ZNEv/o/1kvek38TvGZ47SSwaICyXv
 lL3HWlrNkB85c1WwFL14hLB/AcvCKRcwEYFQE414orLNXqwjlBLgnaMjJj91F06TdStkN7gG+yS
 hGTLB7oV00Ly4mx1HFrN0B6lB1C+8Ze60cxE2DohDIbauaLOlKHxtSZuyxsa8vYqOuwRjlQSIwt
 SExjyIpanBXDcPHZi8z8DavX2Juo6unJHzcso5sKyY86oFgAUGx30wOPTyRGey8fTtVZkCaUjLS
 /lg8BCaQV47Fx+1WlVY95Dh2svwgku72QCI59lZbjZDy2G5G/DccLeGgUwoUcUqfAwh+iT5eMq6
 Koe3oo49CgRBzx7Qr6YERwwxv7fOva57xlCeq/t8HzJarKmfBlgV7GHvCGKLTbXjH0SyKbpmCwa
 i4OYQ8qjY9R6J26fchw==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b3b7dc cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=q5pbYkwBJr7ivJQeOZAA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: PEKVn49SdHDjEPxcm0vk3H5_2OFPtdwv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130056
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-274934-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B91B027E93B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dmitry,


On 3/12/2026 8:32 AM, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 10:49:47PM -0700, Gopikrishna Garmidi wrote:
>> Introduce support for the Mahua SoC and the CRD based on it. Some of
>> the notable differences are the absent CPU cluster, interconnect, TLMM,
>> thermal zones and adjusted PCIe west clocks. Everything else should
>> work as-is.
>>
>> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile            |    1 +
>>   arch/arm64/boot/dts/qcom/glymur.dtsi         |    2 +-
>>   arch/arm64/boot/dts/qcom/mahua-crd.dts       |   21 +
>>   arch/arm64/boot/dts/qcom/mahua.dtsi          | 1040 ++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |    2 +-
>>   arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |    4 +-
>>   6 files changed, 1066 insertions(+), 4 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
>>   create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi
>>
>> +
>> +&tsens4 {
>> +	#qcom,sensors = <13>;
> 
> This matches the value in glymur.dtsi

my bad, it is supposed to be 11 for mahua. It is taken care in below 
thermal zone list. Will update in next revision.
> 
>> +};
>> +
>> +&tsens5 {
>> +	#qcom,sensors = <15>;
> 
> This one is indeed different.
> 
>> +};
>> +
>> +/ {
>> +	thermal_zones: thermal-zones {
> 
> You've completely rewritten thermal zones. Can we patch them instead?
> The difference would be more obvious this way.

Out of the 69 sensors in Mahua, around 27 sensors show discrepancies 
when compared with Glymur. These differences are not limited to sensor 
ID updates alone; due to changes in sensor mapping, some nodes trip and 
cooling binding require node-level updates.
Additionally, approximately 23 thermal zone sensor nodes need to be 
deleted individually, since Glymur has a total of 92 sensors.
Considering this, would it be better to delete the entire set of thermal 
zones and reconfigure them specifically for Mahua to improve clarity and 
maintainability? I noticed that Purwa followed a similar approach.

Thanks,
Manaf

> 
> 


