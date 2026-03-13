Return-Path: <devicetree+bounces-275205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEsoJqgEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BA82831A6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8E95730152EB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFA9394787;
	Fri, 13 Mar 2026 12:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hhYHRgLp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dWzfQc8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E539F3932F8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405345; cv=none; b=Jv7Jsh1zoHqfg5e7RPTTzPrw4Xkjc+xePsd47rOcdM2enKf0knKzYLsww/O2KmLcGc2Zj/6Py+a7JK1BesdYW+YdnYoyNnh7R4LMQygz1MTl3Ek9p/ho4OkNGWkSr5t/pOXko6yaExkuXUVTwhJi/Fj5TuqOnzGCmErIA9egKLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405345; c=relaxed/simple;
	bh=U8Ak6oKhFgfiwx6TcDOlzDTgaMSNLc43Trkp3IHVdWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rh8zLnjYxCx6EEs13nzVEuwMWlOz76aw32Z/JPQtyBDjzj8nmf4nesFRbJEekNmeHamwOvmHkA/Hstc31wO+PWH8RaWCFqHVVXokeisj/d1CXDscKEK6CbE1b6GpNhbFJtaQT44wZCmBqfQvv7w37hEmPk/x2QOvZXClvzcsWNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hhYHRgLp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dWzfQc8R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oJ4u792846
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZFQlLi5fIwcgW1eNDQpKZ6gmEkmv4Gi6LwX5bnaQCU0=; b=hhYHRgLp6kMIAoGE
	IDFCHkMefPoAlbpqy1BOYiDxctLJWhivYxZcdDL3BAfLWthoGWN4P3GSYtczABIE
	RgyvIthQBMgNL9e2hkmXo+RL9NJdanng68P4tMXFBi+xHjz9199J25diXAmQ8t4E
	LjQoh8/7m2gbZE6i84XBZtOpvD3Ikh9OZsQuR08Yjs9QGvZ4DlQkrh2ZN42PqTAe
	F2ZxsiSZnv8MsZWzzwqBuN2XO5rtUV0yloYU3GrC08KZzeacfdg9JEhERBvImhYL
	iTkiv068ZH/3ijqF/6xvvNwUj4Y0mflF53T4TIriN9+2aOI7GKKv7zCs9Ov2aoCM
	umIRIw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt16ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:35:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50947db2e97so18613501cf.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405342; x=1774010142; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZFQlLi5fIwcgW1eNDQpKZ6gmEkmv4Gi6LwX5bnaQCU0=;
        b=dWzfQc8Rp3A0HgK/ehUnBdPam6pZQH11Z5+VvJMj8nDe3+5droR6fJJmg3WDnHe3p/
         PfRV161GH/xHqERcXuhrnurCSsY9hprWE7RchmrFmQ0oni0uDg+1oRWbj4WxYDUmHkXZ
         pJV+wuP2fIrcdiMU6T453aIY06yUp2QKWaGR+A2td2ljgPqzUmakXozTQp04DNXi1wEf
         CcPOvwAlSdoBkVjYizOd7MuzimhFSfNdU9I59X2co7qPRllrolhFoitQh5Aq1ZRpKbQ+
         X6kS6DNoNoNvqPzH0uqDIHlNaLsW/qIHa7esR9cOrSvlomG4whgDEvpEZ3q6cz7a8lgQ
         qF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405342; x=1774010142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZFQlLi5fIwcgW1eNDQpKZ6gmEkmv4Gi6LwX5bnaQCU0=;
        b=DeK5E2H+AZK9YL4VtOLZ5x4Y8S4/NDrV6SnrDcmk8NGv2jbTo/EeE/3OwRS7BQCmNb
         wq2Y3+8GUw2B/B/+Rp8LKbGv+O63h1ENkb+hs2KZpzuIRb8XGUQV8Z8ELzuHhgS6jGRk
         MYPlNDKufhAed7MC45mm/tuHOou7hJLt9163dScUZseihMWXcwFZHBttOXFL3bE6+4aS
         HEMSO308jSqtSFW64yEm0qLdTTyfb/JmyNpKOp4q6Y19W8ZYnEqv8ARAgl4/mI4Ys364
         NWpgZOmiUFggwKEXCbzCgok/scII4nkys+1/eBcXOEhrmmtbdctIfNsMqxdguEYNG8eG
         x0NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUol8oLnhHngmm7tEoVeNGswvVEZSeRDQMOtD/85oW2F1wTHkwZcHNYAI3LWNlf6LW/FTsoRSrL+uJ7@vger.kernel.org
X-Gm-Message-State: AOJu0YxGyBW0b8gONa2U+B7W12U8MGfUQvhRjHmgdy9UKYCfJV4H6Oxa
	/AQeLv6ArovEVZ/S64ATuPYOT+jpppLS/g2oM0+YnXMGLrUWKEdD9iIyZiHCFgSx9gl1az4h2WH
	H4FLH18noQoiP9z80QELvJgRw8hRRPcRmjWsHnDWWDhRo6CzpzGsg+cpwZQNTwqLK
X-Gm-Gg: ATEYQzyVDeMFqrvELgIXhhgwe/yVbJ7Wp6RtRU7u/hfzIBzKcR63SOeeK+82e+nKwMm
	MjFnNXMlz5Dx1vQotVGSoh74WsOYD2TcxW16MXwOeuwIg3QL8L6L/4DwCeIbXNVQ0f6xClDy/4+
	pzg+8tqV59TZoDSkxDzV8dOd53aQ6pSILtGMbL8VrWtxS1/ytHvDtApCuYO3+lOlCx+39KTezZ4
	zRdJxSk5WH/YDgg/kALEQuqUKP3yPZjGrqvBwOBCRr+K7rckLjAL/17qR3ccD2XK2nI3mZeZFL4
	AwbzHWEMtzZ8Gn7XZqmJIBTLttSE2OQeRGC9sUJ7brRbP+mHFmtLLS5lRBp/Dn9/e8qgkHJckQV
	qMhHZi/oWCUqBS5WJow2r7olYhzuM/nRMiBHyFdmAQHTIHu27LDEYcS8lTZPM1qC9OEZeM/n2O5
	Avfws=
X-Received: by 2002:a05:622a:1442:b0:509:1057:4a67 with SMTP id d75a77b69052e-50957caaae7mr31210751cf.2.1773405342244;
        Fri, 13 Mar 2026 05:35:42 -0700 (PDT)
X-Received: by 2002:a05:622a:1442:b0:509:1057:4a67 with SMTP id d75a77b69052e-50957caaae7mr31210331cf.2.1773405341756;
        Fri, 13 Mar 2026 05:35:41 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33b95sm1519437e87.15.2026.03.13.05.35.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:35:40 -0700 (PDT)
Message-ID: <7b16ec93-0fb6-49ba-b329-eb92525a3ef3@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:35:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth
 over both USB and UART
To: Shuai Zhang <shuai.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_chezhou@quicinc.com,
        wei.deng@oss.qualcomm.com, jinwang.li@oss.qualcomm.com,
        mengshi.wu@oss.qualcomm.com
References: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
 <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
 <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b4049f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=o0osI4lbHl_TFWF7onwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: ovJ9nNLJrqqjgB2Q3G7v74E96Tmiqtf0
X-Proofpoint-ORIG-GUID: ovJ9nNLJrqqjgB2Q3G7v74E96Tmiqtf0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfX4PGDCby20rGj
 MA+f2BUKE/7CDj8O9uPl/AxJAXNJhgEq/2FnHxnb2JKGLOiZ3kXAvacYKfyRQaj4y4H+kIk0rBT
 8GHOv12irs/SLdaqnTZh8ZmnsiZxRa40AdNAiSyHKCc57porYbiDIDtmVeORNMXfkzlgdzE4+vK
 tjVfiSkDkdW4Vws7flWpDcPOX0T7eNsVmF3lfrGNqVHymbf7fEu55EIEp+gKgEv0Z6SPKRwIAsa
 /E6mu4fg465ca4JQbvtVrx6kvUZKlrhktzlhsQMkOgkIaOpx8ZabPEIoDSetYUNe6qulZrBOr8+
 iid2jsyMKowOobrscFxG1XsrCZLmQX3U1BurkDLZMg0ymIfpTDtm8uPj+sW6fm+oLqZukDpoaGf
 Sy5L8wXAI61fYOASUmAN69FQ7dVEWpDOpAEoABzuEKGeHOUHXfkXgIrZZfe+BFOgtHj+okX5cYf
 tRtvFD9xhZ6xUWX2keQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-275205-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 92BA82831A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 7:37 AM, Shuai Zhang wrote:
> Hi Konrad
> 
> On 3/11/2026 9:07 PM, Konrad Dybcio wrote:
>> On 3/11/26 10:09 AM, Shuai Zhang wrote:
>>> When Bluetooth supports both USB and UART, the BT UART driver is
>>> always loaded, while USB is hot-pluggable. As a result, when Bluetooth
>>> is used over USB, the UART driver still be probed and drive BT_EN low,
>>> which causes the Bluetooth device on USB to be disconnected.
>> Is bluetooth connected over UART *and* USB simultaneously?
> BT uses either UART or USB, never both at the same time.

[...]

>>>   -    wcn_bt_en: wcn-bt-en-state {
>>> -        pins = "gpio116";
>>> -        function = "gpio";
>>> -        drive-strength = <2>;
>>> -        bias-disable;
>>> +    wcn_bt_en_hog: wcn-bt-en-state-hog {
>> This name is illegal (make CHECK_DTBS=1 qcom/hamoa-iot-evk.dtb)
> 
> 
> |I will use tlmm to control|
> 
> 
>>
>>> +        gpio-hog;
>>> +        gpios = <116 GPIO_ACTIVE_HIGH>;
>>> +        output-high;
>>> +        input-disable;
>> This property is not allowed for TLMM pins
>>
>>> +        link-name = "BT_EN";
>> This property doesn't exist
> 
> 
> I  will remove it;

Please run

make [...] CHECK_DTBS=1 qcom/hamoa-iot-evk.dtb

for your next submission to ensure the schema checks succeed

Konrad

