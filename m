Return-Path: <devicetree+bounces-258905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECJ0E5FYc2nruwAAu9opvQ
	(envelope-from <devicetree+bounces-258905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:16:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82374E87
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C72373045014
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B037232BF42;
	Fri, 23 Jan 2026 11:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lPrZt5PR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U9SQW14+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C62522D78A
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769166764; cv=none; b=OSi6W8pu51eCF5BQ/J0g/E9j8HfjieALmYqYlXL3nrWBQkYP/fbSfc6hQqsagn4ckCYlEyeSMaqwTqMXRHGDQQEJyz2DfDqNYWs/X5nD8264PTvwQgsPFy8VXoJzGJZeZixyz44CUHUMzhXUyTirX0yO8mGNnjz7qeVNXwM/BsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769166764; c=relaxed/simple;
	bh=/vQrAR8IIWYATC8t1GPOamnvHOLe0v2fmber6Pveos4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l6z6AAHPhQu7l7Gyd/lS3F9J1DwHWRInzZqFU1ZWpd3kBj51KCFcs04iKrRkFAs+6YibBr/wQr6EnUGsU93EDhmsUNmli56sBofx0pbluElt0iOPXyiEWhWtSB8GCjDTUCMQT16Jajb7aQ9BbgiL/2DJvvfXedu/D/sut7n1ch0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lPrZt5PR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U9SQW14+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6rheB1325867
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:12:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hIkkP09EIHDNC88Vrq4ePjY6fipJQ9pcI6Pl65HLPD4=; b=lPrZt5PRXs2D2S1L
	N7U5SKB4omvMYQZUYIKeaCNkn8cTvizPHnTzdWWKpTSnZ1wEsw9nidWVvtYPsaVU
	pqwLhF4Bbl+hrtXroUWb9naoquWV06i9H9vmMV4waNNUWavPC3JOMOQardxWoP5C
	xtA/6wy/yjOnK5BGyn6FTHqUV/mldhZncMijribiqfpWMg4VaDGsnsl/SCG7ZmxS
	3D552Fv8Eu1B/+WcV/bqQzlEa6QiEa93Esae4A2vxsco3S8pp+3Z+XebQMRDZbTV
	zocwUCV38rNU3RxUe6lNr/RvdDPFs6ZFtn4HTPflAx9oXOM9jV6usA4z0QVUCg/L
	LzLjpQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv44c920g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:12:42 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81efa628efbso1881716b3a.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 03:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769166762; x=1769771562; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hIkkP09EIHDNC88Vrq4ePjY6fipJQ9pcI6Pl65HLPD4=;
        b=U9SQW14+zOu9BPFKl3qg4grTR+Rw04DemsAdMmgJcFQJTTvt0G8B94hOV5wqR9AjE7
         JpzET0/pY0i6XL2oPiBfmEFYLiX8LiSa2Pbx1akBXVz592N85KMm+uwZNkqFH7ZSRlYH
         zJZdTgYr8iYHfn7R6mH3xrzw4/5omlBv+pfyMq4W8gRr8zb+yBO6DVtXFkJ7wqH2qZfX
         kxKbEwo7aBrN7oLj1rff51DAoOpScJ0eUjzgjJYiFOEVf3+92uTeD9TZMC1xXPwSPxTc
         uzePVPowHlXN+Fj+G5nVeOgPIUQPewx+HZz8ug8/cMl1G4FKNF6bolRL+osiY63bXa6z
         RSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769166762; x=1769771562;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hIkkP09EIHDNC88Vrq4ePjY6fipJQ9pcI6Pl65HLPD4=;
        b=tCfJIujugmrwW7y4pBCL9oqHSVMty+JZsgTbeSukA3YxGGtXTBO19fMBcyqBKXBGIt
         ZPCN6UMNTXY6MuyM5MWtHKa3hlIOuTJ1e1cgvhmeY2s4C0Vt9kdGB89eKg7LR1W54KpX
         UlIv1+zdmf4tvteFrjfo4Ldb6gi9IltWqVlYcqK9+lAwJCHY94AKNTPCoFfcG8Qzlv3r
         u0emtIv5p7VaOFQogLnjG1MZp+21Pwrp2q9nSlweLrFg1wyW/cXLjCQctHKrMO169Iz1
         GlXabbJZ2MlR3/hrxecB1zVV3+2FDD3tI+rEP3bfDsLkqWvDL7U77DbOF6ebahSOz1gP
         HnFg==
X-Forwarded-Encrypted: i=1; AJvYcCXhTk6fnNtP0ErMSpVYZgdWsHSoOSRusvGuCFDyqh7ix4UT64WWCHh5ENANNj3ODLxzKqCm5wJ0xzc0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzavmh7s9LfB+0ejOSUx3n5Ow4TQ5/QjCjGIj7f4l+oKsyPF8ov
	+fm2UEY+10zhUX4KzIrHVC6AeiVeesoBkbHRCYP7RInHxgMkxjVmx2JkDhaAcvM7PdX3XmHtyEb
	nQyaCRCaNOdpxhH1f8AQeNBiaabpgp0LBUyvAwtGkbVTgGzbgA5chDTXhEieF//dY
X-Gm-Gg: AZuq6aKqqHcIvOca9lsBe73ctp3eLjiM9+TYN21lxqh5p1mDCNwbY3R09PYw5XK6TBB
	IiKAMLppAPF4LstC2X0gmxI0+s4ap3DVCxUF4glcI6rFOGWaaV3q/PQvTur4iNKd1DrZ5T23WO1
	a6dJnjxP95j/aW4b5SFX1GIVfFqM0HtTqenRD0n2D5tAmGegsLKNjbMjhbUikq5w+W+mEO7iOpq
	QGxGnTCX+q4rGuC8J7THxJSpEq2v6GlNvwrBmoDvXbJBRfE3BH1n7ZD1uuhsERTg2y2Xloz5i5W
	ATV/b2IjO7tvO6lWGoCbfqrx2jTFP6dQAR56Ll2DMT7Il0yWwqYhlcMAgbZjEIq4iaXvUhtrOvM
	utBFGJFauepjl+nRWXkgT2lOoS+WjmYjijQ47EJM=
X-Received: by 2002:a05:6a00:138c:b0:821:a7b6:10a2 with SMTP id d2e1a72fcca58-82317ed4ab9mr2271443b3a.62.1769166761846;
        Fri, 23 Jan 2026 03:12:41 -0800 (PST)
X-Received: by 2002:a05:6a00:138c:b0:821:a7b6:10a2 with SMTP id d2e1a72fcca58-82317ed4ab9mr2271421b3a.62.1769166761337;
        Fri, 23 Jan 2026 03:12:41 -0800 (PST)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82318648ff0sm1952126b3a.11.2026.01.23.03.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 03:12:40 -0800 (PST)
Message-ID: <82a6ba61-94a4-48bc-a012-d09152b32781@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 16:42:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] soc: qcom: ice: Add explicit power-domain and clock
 voting calls for ICE
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
 <20260123-qcom_ice_power_and_clk_vote-v1-11-e9059776f85c@qti.qualcomm.com>
 <7da1727a-c1cd-466d-88fc-e140b2e7fe5d@kernel.org>
 <54bf72b6-6397-4655-9c30-680b1374400b@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <54bf72b6-6397-4655-9c30-680b1374400b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TLdIilla c=1 sm=1 tr=0 ts=697357aa cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=MQ79kWv7XlEYy8UUk9gA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: IykcqeqVlafYuZ5tIEQVzeaSbsDDV6Rv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA5MSBTYWx0ZWRfX2tSw/XCnET9v
 MtdzQlR9bdMZFyroH4m0685Gn2UErrbBH+EWRnSOZLl9njlaLblz3iF4PNWJnMVqNkua6bOxZqR
 bcOF2cnsOmkB9lvl+kcg3E6X6IK4tD1iTIrO5nXsSxL5RIxUAkFCQNfaTehpW3WsqwwJavQetwl
 LNI1gok97lhDXRKySudMkjCjfEazxiJ/vhl3b9iLlBv28Q58DiiN8WLufdJQlxGOusrD0xqmXlX
 ZoUnEPxRCdlEG95XVFWR5fICev0fZq1AVsIU7DKroe8lWbpe3tUJNUo6Bbpt9J/LZFDjJzUD1o5
 SWsCEtn9ONhHdvHzJVjVOLVMfUy5k6DNIyb7U//9Jxyks+7AYy6rcCiWaX8/2813ybrJ0uUAJhK
 x1WP3mlFdGA6fiUVQDvXc6bTPUEVzpQ8VgcF5Fnjqxzk2hJcy72sIhsdjHoFwQ8wdAd8168ftH/
 JmhkqTvtWdGgxeplG7w==
X-Proofpoint-ORIG-GUID: IykcqeqVlafYuZ5tIEQVzeaSbsDDV6Rv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230091
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258905-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9A82374E87
X-Rspamd-Action: no action

Hi Krzysztof,

On 1/23/2026 4:27 PM, Krzysztof Kozlowski wrote:
> On 23/01/2026 09:58, Krzysztof Kozlowski wrote:
>>>  
>>>  	return 0;
>>> @@ -584,6 +597,10 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
>>>  	if (IS_ERR(engine->core_clk))
>>>  		return ERR_CAST(engine->core_clk);
>>>  
>>> +	engine->iface_clk = devm_clk_get_enabled(dev, "iface_clk");
>>> +	if (IS_ERR(engine->iface_clk))
>>> +		return ERR_CAST(engine->iface_clk);
>>
>> And here actual breakage of ALL in-tree and out-of-tree DTS.
>>
>> NAK.
>>
>> Please read internal guideline.
> 
> Internal docs are pretty scattered and messy so I failed to find this
> there, which is surprising because this was frequent feedback. Therefore
> please update Kernel Upstreaming internal page with following:
> 
> With few exceptions, it is not allowed to break the ABI, by making
> bindings or driver changes, where the existing or out of tree DTS would
> fail to boot. Updating in-tree DTS does not matter here, because DTS
> goes via different branch, thus driver branch would be always broken.
> This is explicitly documented in DT rules and explained also in
> maintainer-soc profile.
> 
> You need to either provide strong justification for ABI break or make
> the changes backwards compatible.
> 

Ack and understood. Let me write this in a way that makes it backward
compatible by using devm_clk_get_optional_enabled(). Like I explained, for
Linux distros where CONFIG_SCSI_UFS_QCOM is override set to 'y'. This
clock vote isn't really needed during probe.

In qcom_ice_suspend/resume(). I'll only prepare/un-prepare this clock
if it was found during probe.

Hope this sounds good from DT perspective.

> Best regards,
> Krzysztof

Thanks,
Harshal

