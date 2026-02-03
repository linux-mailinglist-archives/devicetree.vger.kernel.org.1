Return-Path: <devicetree+bounces-262119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL6PI2+/gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:27:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C88D6C57
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97C42304E72C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C98396D38;
	Tue,  3 Feb 2026 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jF9E9bfr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RxYbQK8S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEF72BF00D
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110809; cv=none; b=Yr9hNtvSxhI5JYQ7yJ1lzxsVRiKD4FQ/NlOD8g4d6570xoKLTWY/EpnNgN8svZKbDnuVpFdIRQn2XSPtVHsOoClxMYbjuQSU1RDr3M01hz1vmLDgCX9Wk6IECV9W9FqMRH47hbzxTXWbeLO77wFTPJV14Q+4ZtqnGHQw9sdX5Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110809; c=relaxed/simple;
	bh=6kl+6HQNqIsURe+OfkLQzjtn3wD48N1EvAaNq/iuQHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MdjBPvDCKbeRaZHcoKu/ncmizUdI0l13gHsHp+JPjdB68G4GSoTxZaCPVYyS5bjJfn9K4oRyzHtR9w+er6PrKYH8cXJL2j8Xqi9vMSG65x2VAPjMYMuDHqIApuHicpZS2pZlbJFtmmXCNQTHOY307FFbxcKg1sZV3XhQUQbkqCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jF9E9bfr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RxYbQK8S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6137PIB51320029
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:26:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0zeOAZfMipWNF7Bk/i7KQ5CWYnI+TUUzwimahm0W0eU=; b=jF9E9bfreER0RJ0g
	iJN4s/ekSgyNaQGhiaYgJ0vRui/30GQUFzq7GgUIR4+XtQX5ZamNXRM0Sm8ltBC7
	K89W4nF484X/Bv1ZiWX56ivIbrOZhxn7LzcjY52A78n6ID3AJl1/McI+nSEpRhIq
	KvIpZMjw+PiZGspK8I63M94r9nen+qNo2na9wCNWEXsSP5wqz1MyZECx86qr1RcM
	DVrabdWII+zwK94qx1Qa68Z4SqpTQ3/zUbTI87o6gaAzj0ebM+XLY5uoorKNQlPh
	XrnIbPobdNmWV37UUBsm950vXRtQQCBVvEhMP7rka/y9QikubpRhaRh4666jIj7+
	vS92zg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3cm70cau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:26:45 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c5e56644646so508961a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770110805; x=1770715605; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0zeOAZfMipWNF7Bk/i7KQ5CWYnI+TUUzwimahm0W0eU=;
        b=RxYbQK8SectaafNTkPNiHhG4xZEs17Wb2SWOahSZohB/+giTk8CWl+0YgnRtJJc9sA
         JH7wihwy62TgoLx4YA5xB2zrK9VaOiWG1nIuHd+q/9Lx/UjtAimAacS8KkXqzEFCJ0hO
         SxJ/30EtxceZbN2Wd15wJDpynO6MMNHDBjvyP6f8+kqZWPCnZx9hOFD/90vAk8Lsj3eV
         7UShFITjlh39C2RIJ+ULbngFm8819IUZQwlublWavGG5BeCz8L1frKBtbK+iYv5dFLtA
         b03UjdWNsO0mCc96gpbca4wS8EayIuvzf7ulY+ezXBwGVi1+P2yj34V8KMvw5BFh/3h6
         6+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770110805; x=1770715605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0zeOAZfMipWNF7Bk/i7KQ5CWYnI+TUUzwimahm0W0eU=;
        b=Oh7x7Q43Bq284Rd774iOPBgDub4xZC2vpVxFgIOBxjeHdXv709LrQDqmgGqwOnRD6J
         pUTAMDm4ZzW1SCJYq4ZfmoWo5pRln3F5gmeVa7OkazpLaGvGXVvzDKEXR5eBQbjQeA2Z
         Jo+Ej0WQ2O3NzQs5T6ujm4IG8Wx/t9aQXHrzkw60DMfvM1zVA9R2EmdvnHqN4jp41bm6
         kJl1TmvQYpym3oNWfPM1NfzF1Dz4gVJCQYI49Zwrrux9uK9pIBLYc5w99M7lF1E8bh9j
         zxxxHpsKCbyqCxF2nsZMpzGalhjfsOMIgsOL16YmTMwchAg8q0iNL2dmZUA8mo1Dxb4z
         AJdw==
X-Forwarded-Encrypted: i=1; AJvYcCU/AbwYtQZ/vKuYJYR4zG9jAY1aOh66JfyyYvTsw/s49Aw9vz9BGPSVRm9A4d4dlEJ3RNqdCP5TZhu/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7FKEIf3bt5LwtZwt6tSCIpQGxWwACSCrtmYGKrBqiSJFWsmbo
	U8dPdzEwWjusz8LRFnG82iKNv9HSDvsB8i/1lw+b1lAG9y2glFo/wiBT4Z3mQnyhGGAuwsMxLA7
	ALP3a5h3SoUvqb/V4uJrO2NId+RTe3I9R8+HODWzuHYqp16lj5yB68XEgUxBy5M5N
X-Gm-Gg: AZuq6aK8PPcM9npods1wXpVWIYs2f+jehFcNEGjU1viNO2JucYWImi3H8CYpz5gVc2V
	N4gHwU32LGoo5UZ8q1FSAeKc3w2UVX00//Iw5YIY0dHwyefKa3DWI8Y8T6fHG7PETLramd7/Ruw
	5mp2itvPh3nONeOShqh1ZbYFKrkYPwdXY4PMsH97t7LzybtgjG5pHYXADA0w7Zq5YKCzMfsDonE
	9/Ks8hv/Zn1yXO/t8JdXY2WdqeC9Hx0a0PkZGn+mH53XeXqOLQQLXfwE5EvGsrMZe22T85ojwEV
	SnVH7ask320NtKL2eTuwq1OX5Piwlt+DdVt78+rO2T2VzizAjxcGXl4sP71Twg7aF+j6SBYVXOh
	99MxnHLgj4jgowanBRjQTXP9CLX4pDsygLQHktxU=
X-Received: by 2002:a05:6a20:430f:b0:38e:9bdc:d48c with SMTP id adf61e73a8af0-39356196445mr2497411637.15.1770110804657;
        Tue, 03 Feb 2026 01:26:44 -0800 (PST)
X-Received: by 2002:a05:6a20:430f:b0:38e:9bdc:d48c with SMTP id adf61e73a8af0-39356196445mr2497390637.15.1770110804105;
        Tue, 03 Feb 2026 01:26:44 -0800 (PST)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6427da8441sm15669014a12.9.2026.02.03.01.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:26:43 -0800 (PST)
Message-ID: <1f99db18-d76c-4b87-9e30-423eee7037e1@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 14:56:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] dt-bindings: crypto: qcom,ice: Require power-domain
 and iface clk
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
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
 <20260123-qcom_ice_power_and_clk_vote-v1-1-e9059776f85c@qti.qualcomm.com>
 <14a71b33-4c10-41b0-a6cb-585a38e05f56@kernel.org>
 <06160c6c-a945-467a-be82-7b33c5285d0f@oss.qualcomm.com>
 <7216c86d-2b87-496c-9548-ccdcb3c98b6b@oss.qualcomm.com>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <7216c86d-2b87-496c-9548-ccdcb3c98b6b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NCBTYWx0ZWRfX4AKkyASDP4rf
 YLqCVTDc0Xy9loa2WStbJiKBfSd1ayqcFBY7FBikj9F/1DqFqfnDrihV1YbdeXObvJ9fEwuj+Kp
 mnqmhZK03WCJVK1xx8C1HEQdXplecf5RI4T+oJSXth0G4GuuKJxkAVJyBdHLOq1Q0+Kb3GXlgJL
 +Ed4xLW4PMvVGVoaY3HYMa1vO5xIGNTQJ0C94ZE5rTkBzTABsJLpOCzsM51i4WjO7lSfo9wDStv
 jR/lHsRFO9HF1wHYXYsRKMiSRFxcMBtKzoXN5OqpNUjGE3xahwSrX/O8u5bLFUa4YrdmlQXnwu1
 4gtdNqSUs189pNEluDHHP9ltLJwngQ+fnJuLTUZETOTVExWKy/hYllH7wi57UGd6x4AxWbMRzUU
 Jz85CMoiGJPqNim2jTrKEjmo/O6fkdTnspNC9Fkq1oaI29uSJfmmrks7rDwoaJgE2WBg+gw++S4
 8PZsVHCtCTX1wVlYZzw==
X-Proofpoint-ORIG-GUID: X--n59-nyyEeE1XDYfucNqO1QQFhylEP
X-Authority-Analysis: v=2.4 cv=L4sQguT8 c=1 sm=1 tr=0 ts=6981bf55 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jYfLf-RoV4Vd3_lPYZoA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: X--n59-nyyEeE1XDYfucNqO1QQFhylEP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262119-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 35C88D6C57
X-Rspamd-Action: no action

Hi Krzysztof and Konrad,

On 1/26/2026 3:59 PM, Konrad Dybcio wrote:
> On 1/23/26 12:04 PM, Harshal Dev wrote:
>> Hi Krzysztof,
>>
>> On 1/23/2026 2:27 PM, Krzysztof Kozlowski wrote:
>>> On 23/01/2026 08:11, Harshal Dev wrote:
>>>> Update the inline-crypto engine DT binding to reflect that power-domain and
>>>> clock-names are now mandatory. Also update the maximum number of clocks
>>>> that can be specified to two. These new fields are mandatory because ICE
>>>> needs to vote on the power domain before it attempts to vote on the core
>>>> and iface clocks to avoid clock 'stuck' issues.
>>>>
>>>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>>>> ---
>>>>  .../bindings/crypto/qcom,inline-crypto-engine.yaml         | 14 +++++++++++++-
>>>>  1 file changed, 13 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>> index c3408dcf5d20..1c2416117d4c 100644
>>>> --- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>> +++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>> @@ -28,12 +28,20 @@ properties:
>>>>      maxItems: 1
>>>>  
>>>>    clocks:
>>>> +    maxItems: 2
>>>
>>> This is ABI break and your commit msg suggests things were not perfect,
>>> but it is not explicit - was this working or not? How is it that ICE was
>>> never tested?
>>>
>>
>> I took some time to educate myself on the point of DT bindings stability being a
>> strict requirement now, so I understand how these changes are breaking ABI, I'll
>> send a better version of this again.
>>
>> As for your question of how it was working till now, it seems that
>> things were tested with the 'clk_ignore_unused' flag, or with CONFIG_SCSI_UFS_QCOM
>> flag being override set to 'y'. When this is done, QCOM-ICE (on which QCOM-UFS
>> depends) initiates probe _before_ the unused clocks and power-domains are
>> disabled by the kernel. And so, the un-clocked register access or clock 'stuck'
>> isn't observed (since the clocks and power domains are already enabled).
>> Perhaps I should write this scenario explicitly in the commit message?
>>
>> To maintain backward compatibility, let me introduce minItems and maxItems for clocks.
>> When the Linux distro uses CONFIG_SCSI_UFS_QCOM=y, we can do with just 1 clock as
>> before.
> 
> You must not assume any particular kernel configuration
> 
> clk_ignore_unused is a hack which leads to situations like this, since
> the bootloader doesn't clean up clocks it turned on, which leads to
> situations like this where someone who previously wrote this binding
> didn't care enough to **actually** test whether this device can operate
> with only the set of clocks it requires
> 
> I believe in this case it absolutely makes sense to break things, but
> you must put the backstory in writing, in the commit message
> 

I took some more time to think this through, and I agree with you now Konrad.

These DT bindings appear to be invalid from day-1. ICE being an independent
and common IP for both UFS and SDCC, it cannot operate correctly without its
power-domain and clocks being enabled first. Hence, it should be mandatory for
them to be specified in the DT-node and the same should be reflected in the DT
binding.

The only reason I can think of for omitting the 'power-domain' and 'iface' clock
in the original DT-binding for ICE is because we failed to test the driver on
a production kernel where the 'clk_ignore_unused' flag is not passed on the cmdline.
Or if we did test that way, we were just lucky to not run into a timing scenario
where the probe for the driver is attempted _after_ the clocks are turned off by the
kernel.

Sending a new patch, which makes these two resources optional (to preserve the DT
binding) would either imply that we are make this bug fix optional as well or
asking the reporter to resort to some workaround such as overriding
CONFIG_SCSI_UFS_QCOM to 'y'.

Let us know your thoughts on this Krzysztof.

Thanks,
Harshal

> Konrad


