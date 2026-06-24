Return-Path: <devicetree+bounces-315290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4zWJDi/1O2rngQgAu9opvQ
	(envelope-from <devicetree+bounces-315290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:18:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8566BF8EC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:18:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=afyu830T;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HNsikH0O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315290-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315290-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B62D30F87E6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8303D9DBE;
	Wed, 24 Jun 2026 15:08:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC27B3B7B7B
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:08:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782313721; cv=none; b=cFowS6qgqfWKR3/R28936M38jVGpr+r9T5aXwWqc+jWazQTjZ3Qn0bhoBl+hLwyK7s+l05x5eIhZBiaBPVJd4ShNwyVoiaQ9Y+JjEXPDruLjnY76igX8INLSq9657X3uIsc6Apru6vui3ql9GqmWVKdZq7F/pFDTpK8RfaJlifI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782313721; c=relaxed/simple;
	bh=ha588Qy7P13tI/5EXyd8p2my8LC+7wLyzZpLl5hWR7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IyiurJ62lP+vXW7F/Y2Na3EEMq/7YFqRuOeQCDCYpM8ajMu8lxbBeA7i85n5IDCJJC0klGtq7Xfek0jgWFpBPRDL6uAyeV7FOFRbMvYxOjH6Kmz+5pokTey7QZ3cJbMxdPHtwTudZ8hdreppq3hGbRL4Jbx2WcJqDDvPqyrK2hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=afyu830T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HNsikH0O; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OEfviW3078649
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j3GdgZ+o5lITYD2ZGmitJILxX6Tbi6MycbzRQo9WHWM=; b=afyu830Txnvo8Xao
	EZ7atpr+S7VLhmcX9qYrjzY5Lqqzeuc5iSV+Zato7jsh/aTVxmXBsCeeBODUci1J
	NuolLEzxP6FlVCDxAQxea964qdYfrDcHsIzPv2+luXZrDwIRgrK1K0lySP2wkk5O
	qtmW4RCtq6nsVNJgQUy1+opVVJKfGr73cSQQ1WnF2Rkgzhn0PKuFcBDiz5++nU1e
	76Vw9kMSmMcFb/+shPVMZTBV5fKQVEpQrnphBWCWbwd+tqC9wUJdMg5PQgkJeWa3
	gj7iiGYDlJ1xZ7MMHuJ+/WjeekSOyuz6NrbWhdbrUIM4zeAVa39hAfPIYO0n+62h
	rJmbqw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f05bfau56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:08:40 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37d4f23eb37so1562168a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782313719; x=1782918519; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j3GdgZ+o5lITYD2ZGmitJILxX6Tbi6MycbzRQo9WHWM=;
        b=HNsikH0ONLxQIZD8TYv/0zPWPGAeVs67vDyFzKQCtSsi5FKhcO2ZU4+2L7m8c3S40Q
         CmiGxzXxq6qqFGarbyZCiXkS3fRYr86zVoWfEbbsVR1H/wdhKrg9V7fye/bfuLC438W6
         EV+baFCvTGXAglrA8TAXg9+/tnREYRG0zfgiIoQHhl5BLBFbHndF1SuFliu9AtGLG1kE
         vpwOGDoyzBqUh7GZWdS6MPSot/0tYSjWST4aUSSl1BEe6hGob1++qYL09GpHNlO/fb81
         ZfXkQ8RK4n6GomMZQj3rnwCZDna5+p4NB6A90wkVz4iD4/PVi2X2s6n6v6omdCKOGD0m
         Pn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782313719; x=1782918519;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j3GdgZ+o5lITYD2ZGmitJILxX6Tbi6MycbzRQo9WHWM=;
        b=VLmQE/e09z4BxJUyoC+jTHTb2K2FwiFc2z4yYDzDerpqCntWqoYUzlpW5Er6oHGzM0
         fcUQG2Wfz9iXDeyocxv6m80D9d1h43K/8+a9PlqhzeosXMPbPaCR03CFa0AcfrUVR1Cp
         PJr1abPCC0GiBNxVNyGLER57K6hbZX9EbYuDd1CKYwDqT1mM5V58lIqc6Jqu/5ks6w5C
         dIL/kkEwGdi2BGfQNA2UbOY+KjhTiadCZCdfgjTLiEkqn8VfSCQhg6V6zinoy2kzPZph
         +Kx25FtI3jFOsv/d6U/fNtaWIQCNmhWJzUL8zXDhIRPz0foh2OvCe8ojSgX+TsXC2fgq
         qkjQ==
X-Forwarded-Encrypted: i=1; AHgh+RrPrfxkFhcrhotKMbX0Ms0y0nVHSZiNrXPJJWnhyUWPIpoXU87Oe2PuEYRGIA6OoRXXmzl2PrOldmbu@vger.kernel.org
X-Gm-Message-State: AOJu0YzfRaBDWmWNQFeLaEYAE/J4BUm5GQHJEVE0J50clMjtBc3lrzNN
	ssS0WCHzuaecKiHTOT42+9RCYyEpYV/BARorWtrPGSqTn+5F0vvEcM/cBjcdQSKh0wSm+Xf28sf
	Iz5OCAf1lkxFVpiHM6DMgZpNHkG6cburFXj5wB2kpSPXZ+Yik6sQ9sXjQ36GnxKBv
X-Gm-Gg: AfdE7cl6cakzCzgoTAy69cXsCX9W7d8XYu2ru6TR1vl+zJLMSdbxNNqFRJm8eVIZvFu
	UzfMLLvT/6uxrVmp8erv/Mkm9XFp1xNVTT3EIgCsp6836YlrnTsdr2bOFzNQW9b30luqEGPYAJu
	bMexeJJ/kv7lAasEu2X8UunMr+domRIVzMMrruAM++TWMdncaGIgfODCh3sFvNcS9OHQbrP9L55
	vyM8KIo8pq/eTuSNTZT97ji4vRBGOCjB0nO7tjBL0GkbqbD9P8uGNzK0kszjtn/ymQRuKgANrqP
	DkjXiW1GEl4H+QPzebsv9Z4cuE5ggsqj/ryeQvelJRUjQ7wRv1jhxmHlFTDvfqQ4ZrfQ7SQqKq1
	eEsr69nRZx8FNdzJZ3ucK2RMUrRFQt3rnAcffumsPM5yxTjAZi4o5v9ojPiqq61JLPuZOrh0rhg
	Rc
X-Received: by 2002:a17:90b:5242:b0:37c:6505:e7c3 with SMTP id 98e67ed59e1d1-37dd0dec9famr9384561a91.22.1782313719537;
        Wed, 24 Jun 2026 08:08:39 -0700 (PDT)
X-Received: by 2002:a17:90b:5242:b0:37c:6505:e7c3 with SMTP id 98e67ed59e1d1-37dd0dec9famr9384520a91.22.1782313719042;
        Wed, 24 Jun 2026 08:08:39 -0700 (PDT)
Received: from [10.133.33.213] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3bbc38asm2684833a91.0.2026.06.24.08.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 08:08:38 -0700 (PDT)
Message-ID: <25d7d3a1-58e0-4f25-a73a-59a978130c47@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 23:08:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: kaanapali: fix traceNoC probe
 issue
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Mike Leach <mike.leach@arm.com>, James Clark <james.clark@linaro.org>,
        Leo Yan <leo.yan@arm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20260624-fix-tracenoc-probe-issue-v2-0-786520f62f21@oss.qualcomm.com>
 <20260624-fix-tracenoc-probe-issue-v2-2-786520f62f21@oss.qualcomm.com>
 <f0634a64-1141-4ff9-9033-825e3c75d28d@oss.qualcomm.com>
 <f39ec59f-97c4-4d5f-bf02-560adae312d9@oss.qualcomm.com>
 <471d7a92-3629-4274-a303-8906d3626037@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <471d7a92-3629-4274-a303-8906d3626037@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=X8Bi7mTe c=1 sm=1 tr=0 ts=6a3bf2f8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=3Q5jxKAVfJmP3VMBrLwA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: jKIwalvMgW9G6NU3V8HV-q1LK_C1YGPH
X-Proofpoint-ORIG-GUID: jKIwalvMgW9G6NU3V8HV-q1LK_C1YGPH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDEyNyBTYWx0ZWRfX8lTLwJTfrpkl
 Yt7kiEhX/p7H1S/IGBtH1pxw99m5MKXPpklxlK9JWZ8eTc62AVlrGg3WUouspd/gFhuoWlzIVrt
 mszXIdlsb9tm2R/QagKt2vEWjyxmD+k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDEyNyBTYWx0ZWRfX5INeLDdtGnLN
 R9CR8k6JDNJOhgRwIyXYqHGoHGx2hj9a/+fmGNCmEzsMSw7xRaMh5yS1/CcIs460PGJPdQ5ZPqh
 MBt+7vgi/WSoOTUn/k37dRvRDfE/fyW0X7u+uUvqOcDOKuOE0JCrDh0j1tjchn12fu60qELPkul
 jPe7EuyxghvbjE0+VwqpZgv5yuTV+KRFE2E+Sg3igFw8W8bH6UfM9vOG0DrzfEEQ37DDQ963+nE
 aGVkJCTMz2XfNEIoHgcphJtFjHEo+Yuw86TrcsiGgTrSnpZdjeoOehx08IGuhZlEjXYPvlwvwiN
 3NjMUZS+WW0qQnmvvYy87acBi1k3AfCtPQxFDCqe49kogOX2vJNMhBtp8k+Z9QhlPwrF3min4+P
 gpJ+1l99xHFq/THX7m6Unkdfry60fg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606240127
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315290-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim];
	FORGED_SENDER(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:suzuki.poulose@arm.com,m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tingwei.zhang@oss.qualcomm.com,m:jingyi.wang@oss.qualcomm.com,m:abel.vesa@oss.qualcomm.com,m:mike.leach@arm.com,m:james.clark@linaro.org,m:leo.yan@arm.com,m:yuanfang.zhang@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:coresight@lists.linaro.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A8566BF8EC



On 6/24/2026 9:51 PM, Suzuki K Poulose wrote:
> On 24/06/2026 14:48, Jie Gan wrote:
>>
>>
>> On 6/24/2026 9:27 PM, Konrad Dybcio wrote:
>>> On 6/24/26 11:49 AM, Jie Gan wrote:
>>>> The AMBA bus attempts to read the CID/PID of a device before invoking
>>>> its probe function if the arm,primecell-periphid property is absent.
>>>> This causes a deferred probe issue for the TraceNoC device, as the
>>>> CID/PID cannot be read from the periphid register.
>>>
>>> Why does it probe defer?
>>>
>>
>> For an AMBA device, the periphid is mandatory for probing. In the 
>> amba_match function, AMBA attempts to read the periphid from the CID/ 
>> PID registers if the arm,primecell-periphid property is absent in the 
>> device tree. If this read fails, it returns -EPROBE_DEFER, and the 
>> probe ultimately fails.
> 
> Why does it fail ? power management ? hw broken ? Is it really AMBA or 
> do you pretend that to be an AMBA device by faking the CID/PID?

The CID reads as 0 from the register, which I suspect is a hardware 
design issue. I have not yet confirmed this with the hardware team. As a 
workaround, I provided a fake periphid via a DT property to bypass 
amba_read_periphid.


Leo commented in other thread:
 >>tnoc.c registers both an AMBA driver and a platform driver. Shouldn't 
 >>it
 >>be registered as a platform device instead?

The platform driver is intended for the interconnect TraceNoC device and 
is not designed to allocate an ATID. The issue is that the TPDM device 
borrows the ATID from the TraceNoC device, resulting in the ATID always 
being 0 when associated with an interconnect NoC device.

However, I believe it is acceptable to allocate an ATID for the itNoC 
device and the issue can be fixed with this way.

Thanks,
Jie

> 
> Suzuki
> 
> 
>> Most AMBA devices expose valid CID/PID registers, so specifying 
>> arm,primecell-periphid in the device tree is usually unnecessary. 
>> However, for the TraceNoC device in this case, AMBA cannot reliably 
>> read the periphid from the corresponding registers.
>>
>>> And is this required for all TNOC devices?
>>
>> So far, the TNOC device has been added to sm8750, Glymur, and 
>> Kaanapali platforms, and all exhibit probe failures due to the same 
>> root cause.
>>
>> I prefer to fix it on Kaanapali first.
>>
>> Thanks,
>> Jie
>>
>>>
>>> Konrad
>>
> 


