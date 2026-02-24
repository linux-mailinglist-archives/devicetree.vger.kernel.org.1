Return-Path: <devicetree+bounces-267916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC4sOgepnWnRQwQAu9opvQ
	(envelope-from <devicetree+bounces-267916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:35:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1C7187C50
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:35:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E295A3027D82
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074DF39E16A;
	Tue, 24 Feb 2026 13:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BXLbNvcl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AL3qXLqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E639E162
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771940086; cv=none; b=FbyAlnLhqcsuw6O3NIJGI94OgpqyqL+e601AHlDWxMLQ6NlqvwsXFWmUpSgiEuWXPOBvR/QRbp9n3yiLYld/rNYEBlPfdwWqwk/lMRUTUgifZcTW2fBW76826UxBNdJ+4oHWcw+lSdf02+iQe4we4CQ7ruqJ4zFmzRCveWgVBlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771940086; c=relaxed/simple;
	bh=AoKNz6ZMF4uqd8jH65LmJoW0Cct5iI9B729m/0BS4KI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t7pbZ4eqbq05134hacRqv0wzJCAvi2PjdNzh26VX7wZnToaiQcVYwfY+kyRZt5xEHafqRR6VGB//rlmwvlnp5xbuazXL7wmihxLeiCsX6hpfKHDCNc3Maetu1FF/hK1ADADVeXo/IPMD2xhwHr+q5qA0RXlPl6q4GabxluxLyqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BXLbNvcl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AL3qXLqU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFPbc2512212
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:34:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LIYFAK1vBrOWs+P/Ex9WJyjscDsM+5gNK2j9yi2D2vQ=; b=BXLbNvclhuVyOJ6y
	Vsb06lGg9u4cZc1h6wBMiI4zlEszaJxy+phIUKOwpIKK8cYDMzMrZ8RKsOhQst80
	3C8SUc6CMihcmrpECFt/cgLf+qWBO4bOLa0mRy9ZzHPTOjnB5osT3cyaKrLQPxAH
	dWIGdYdgE2yQEvlJ8/GTvaC7mY5skKhouD8KFIAifnAXfE1WwxixUUow39K8isQe
	61AbPAz/k7DTqJubC49qP6JVPvHFT0K7t9XK8P0twgUmdr3CGG4b0ZPC9rq6KV2Z
	8WNWagwIJEDydPrM2OrUSjh8T0Lv9m9TxnK0lMs7AlcIiSHSxPDFm0DB/VQjATXs
	ZhqnxQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81ccr9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:34:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb399597fbso427004985a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771940083; x=1772544883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LIYFAK1vBrOWs+P/Ex9WJyjscDsM+5gNK2j9yi2D2vQ=;
        b=AL3qXLqUpLUr5OingwEEIgpJmdxGnp16h1KEiuYIhb15FlXtinyds5BiGWXzMXVlkt
         TALHDzWW4rrXai4MHK5rhgxtCbgLQGk/kBUUUDI/sqAkUqlNLV8Eg8PBHiSYWtZm7kf9
         QlpGpPSkfqIYPX/lsLINic8+d1iB2TLk9WIzYfPDgXO/2m78wkJ83db1MejWO1Bzg31P
         yuECc/k3XEraE7BwIOBT1t8+iEIUUm4nqhvLdE8KcfKaGlMkLn6uoXhm8x2+gLrjgB9x
         gT4sSW2TLnKuS3e7k5PxqpdoptdTOEB4d4ZIY1lTGvX1gHGd+/F7CgYym9FMHiBMccWi
         EfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771940083; x=1772544883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LIYFAK1vBrOWs+P/Ex9WJyjscDsM+5gNK2j9yi2D2vQ=;
        b=GMQ0PH96GibRYggTubN6FKa+/0CcMp363hzAxXTcJoxArGYbdxkCsz2/kYK51/bCLu
         kfY5kMarDZEwBNrptD4YSrKGm3wyKLVILVicuU3DKpT8S1YGhbt/2MxSjXq5AzKBWDzz
         IODppZsefXJ/n9wQSNEM7DMN8U+k88CB/06dJXRUocMwrOLew0Op0i/r7HKwrVWcpcqH
         k4vWErp7tD0mQnaqTq6JC11aCNjn+WobkJHNkIL/Ze3vouasy631UriWtAz4X26p9ktz
         /7ifhzUflr56p7BL0zVAB7OCt5gAIxTSiA8VBPSpKRYl775W1k3/JMgs1d8/IuwL8c00
         BXCg==
X-Forwarded-Encrypted: i=1; AJvYcCXbadWXU9snCAfX33ZDfmYlsLIEXf28sw5gpNQHvK0+cosRGTYdxWq2vTk+2LTSrPyfux2LZhvzUNq0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8Ho7R1J0oeIOXJYRqir7rhcqb1c+s+6u4C+mUSYv8DHowudmJ
	ViFkZI7mW1eJan0WpHFZbwzazQo07P3CEKhEZLf3q2MTKm1G7RLrUZd72vboh0T3T6zwF3cPh8M
	9Mxv+JvoEgDJc4TqcIijV9hgFy4E2jMQvKS5GfZwNL7SFRGLu+WqgtHCS1uYjx/QuhO3cG6/C
X-Gm-Gg: AZuq6aLAmzn8YA+ay9bdQACZaULeIPT0w/zgD4FNQTSa77pahNsKnRkRctREymXRtEC
	nd7WRQoVBGqL8met7+Pb5Yx6jgMODPeNJ4p1nIu2JbRq3huZTYSFvZ+8G5YQBewmeLay20aE56Q
	U7Ppbn+YSygoYb3V3poSgfV9gnGH6hDFrICUX5tpI29amI173BfMb64rQDeJ5NERwg03xGt4BkV
	4nYJN13Wbh7W+hW6wbMeOTfdWnI6gDHBPwzkDeypkNv5jrb1eMMmt5i1hZRs8lIYxr3VmywQPyz
	CwW+BGRSl8rWvNxJnNON7JXbiusuCFbVg4IeqnaYkYAGuZo36LF2oFWDYxsLoY1j6gtOW03dXuB
	QrvGEvO3A2yKcJpbgF3teTwKhaXvNgO7qa3d8eIrzpIVIPvSGUf672zv/mpHpFQNpeebbqzlJDP
	UZ31o=
X-Received: by 2002:a05:620a:2a12:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb8cae5751mr1131815885a.10.1771940083359;
        Tue, 24 Feb 2026 05:34:43 -0800 (PST)
X-Received: by 2002:a05:620a:2a12:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb8cae5751mr1131812985a.10.1771940082920;
        Tue, 24 Feb 2026 05:34:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084f03911sm420951266b.65.2026.02.24.05.34.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 05:34:41 -0800 (PST)
Message-ID: <796de18d-83a0-4e26-bd9d-38f580ced9d8@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 14:34:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: "Wei Zhang (Stone)" <wei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260122053624.4068718-1-wei.zhang@oss.qualcomm.com>
 <46d0bc58-2c85-4293-a8ee-480282b80161@oss.qualcomm.com>
 <b1fadee7-74b1-4b66-845c-3a525f259a98@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b1fadee7-74b1-4b66-845c-3a525f259a98@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: I8Oz8NOeHzsX-aE-oS5B3BzlYxcPXJdf
X-Proofpoint-ORIG-GUID: I8Oz8NOeHzsX-aE-oS5B3BzlYxcPXJdf
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699da8f4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=7RpJI5Hy-tzw3XJetusA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwOCBTYWx0ZWRfX6qCqRR1Tp9Lh
 F2TyHpnM7RIMLvcJUBjKsIjET/ExfDNbZDOqJ/gMn3OO/hlFji3lBnCq6FXLFScDPE3CyLE2ckk
 lH/34e46dfMWHxYd5xd8oTYCf3HONdiu/Z5YuoEWnBPPYei0ccG4YLRkHfesdYb01TGkv080V4Y
 FkalIiWsjzUW7mbebDUtam5oLu8CUNOabj3QzR8tNmQWKy6grFeQdey+J4aWUAOmDeyj8YQBo8D
 q55aIp2lePS2Uj8KIZPVl5KmTEWrRwxKFfCe862a1zITea+YDJ8vxrmt+0XskQy4RZ98VjlNbmu
 SES0kUxn9hRhWWXZY5tuHpIvSbEMxvmZNbEPKz0TiPWDlGHOzhpTTTve4PsSjh/5oiNGFue3v/C
 5VkDcAd59d/qVIoyRafW6fE0QIrsMvIloGl8ME4LW1OozDvaMACKxs8YttWV7XIkJMLmzS8cfHP
 6tOUUEwBdY+7rnrUa+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267916-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
X-Rspamd-Queue-Id: 6A1C7187C50
X-Rspamd-Action: no action

On 2/23/26 6:51 AM, Wei Zhang (Stone) wrote:
> 
> On 2/5/2026 5:28 PM, Konrad Dybcio wrote:
>> On 1/22/26 6:36 AM, Wei Zhang wrote:
>>> Enable WLAN on qcs8300-ride by adding a node for the PMU module
>>> of the WCN6855 and assigning its LDO power outputs to the existing
>>> WiFi module.
>>>
>>> On the qcs8300-ride platform, the corresponding firmware and BDF
>>> are QCA6698AQ instead of WCN6855, which have been added in the
>>> 20250211 release.
>>>
>>> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +    wlan_en_state: wlan-en-state {
>>> +        pins = "gpio54";
>>> +        function = "gpio";
>>> +        bias-pull-up;
>>> +    };
>> pull-up sounds odd for an active-high pin
> Good point.
> GPIO54 is the active‑high WLAN_EN for WCN6855. The pull‑up is intentional to
> keep the line stable during early boot and to reduce the risk of a low‑to‑high glitch before the PMU driver takes control.
> WLAN enable/disable is still explicitly handled by the wcn6855‑pmu driver via wlan-enable-gpios.
> I can switch this if a different default is preferred.

Would such a glitch be problematic? This is an *enable* GPIO, not a reset
one

I would expect the WLAN is going to be off before Linux boots (unless that's
not the case here?)

Konrad

