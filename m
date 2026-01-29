Return-Path: <devicetree+bounces-260807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fFPvODEye2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:10:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E22AE696
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73C133013A71
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26FB93806C9;
	Thu, 29 Jan 2026 10:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y7k/FHt/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K4JLPL8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7193803F2
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681453; cv=none; b=leqznEz2ji1GQK6zcFx5KUp65yl+WhtY2sQM5oinV0ThNiyJgo5RYtb056S7XWwzvMnSeu0K9vT52CVkvt6XdeYL884aHMb123V1e99k6wC9apGQ7gVvR96JFE8xKzhPKuuayuphYvUJH/IKtagCOPmuyovNPrVXH2/pwmsFiHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681453; c=relaxed/simple;
	bh=LuZRuTg9fMuEEloEdXRAtWRlDocJ1QarEDNgCjqMgbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A+X47cYrp7CK8MIQVGB8rSJbMse8bCGpCn6OVfdJhx6Jtk5z7kJ6K003GbpiLryHWY+HizEavuzKcMlIqJFF9oVEjXoYsvLzUWEgp4ZynW6g4cRrU2ouVSU/vfio/1ZSr6qIshuov4CujSfzp7rbc/4/LveqGl/blEXT7aSTtjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y7k/FHt/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K4JLPL8c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TA2VYR2152632
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	alAfcCd/Ehd7s5xHRU4AhlsJz4CsaVXmql0CQt5+ogc=; b=Y7k/FHt/Ssxmtu53
	LPsBEjZ2ykGkMewziYT0ibwhc3FkVNYC0pBYzTMeGA0ii7EgE2vbzWckt2y5kK6J
	S2J5t0VbAnbKUjcrumXl56G5/QXBX9OV51kKg3TM9fXPW4ustZA45VyJvcUyV24O
	LrGxeQ14gYpBdZVky4t3MizYIott3NgFDYLGTWEDpsHanjFFEwGzTUrBUCrQ3sRZ
	u70pDUR3kpelkkdxdK+LCMEP+B/HHaJq4xOM5lRpbZMk5dzdLVak4TH3U450cBu2
	MaM3XrB8Gfd1D6K1ndSLCqfUuhjxK6FfSVV706yiuKWvJZyn7zKG8unqjqxkvMQs
	m5WN1g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byph3b0p8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:10:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34ab459c051so1473248a91.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769681450; x=1770286250; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=alAfcCd/Ehd7s5xHRU4AhlsJz4CsaVXmql0CQt5+ogc=;
        b=K4JLPL8c17ccpD1bsW6/8YyL425Y+UKN1ypxieFSAia7BWIAXiB/9IqtYh/AR/a3V7
         I4EcQNDG7796lcM9T4AUx25kfGw2XymCC4St4VtPxOOmefMNIssn8bXnQFFqDmhZjs6e
         Qt2zl83+k/pqIXFhbmEbt2NAavI4mIjQAp8doZ9kC9lp4foJmcVAhZyTtbWAbUmofxH1
         you+tywnch9ed+U7o6DwGqhoCliWlNkPGasfl7EQKrWLZmkJDSeBjuBPcajzjkohG39v
         Ye5mbFVFWevcDfzhc0jTzkHhwsWJaNq82LPnKEei+erNNITdxHkWG48u52Aj6xvy+98u
         3glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681450; x=1770286250;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alAfcCd/Ehd7s5xHRU4AhlsJz4CsaVXmql0CQt5+ogc=;
        b=SO98v8iYctrcXpYjpoY1jf77v/VAQP0zdCcBDF8VukMxYh67au2Oe2FgB1nA96buru
         uItUyHdQb+Ok8e/vULjPv4Bdt0WdSOormZGpcDJB5xWcntggr+WufCj3S9Ul4QwL5fIm
         Odovj1jdk9lspq3lJD3TPf3K0Md6daROhgBGW9+tX2AU21pJh3x0gQG3xJlX1ZG80GED
         n33bU3rQ51kwjA6BDW8fQv0GxQEiroWt7IMUiQdC3XUHmd21l6G6LUgfRdsJyiBww1TR
         l/Uvc4sNPjsyj0KIfBxktfoZOLgAnCeZuro6rCKtuMGGmGSkstaXtavFtDhx5FJucSU7
         kaEA==
X-Forwarded-Encrypted: i=1; AJvYcCWUH9h0A6CEEe6dIKy99Whvgj0coQRSvHDuxTk7urbGfuCUw/YGYaR0pcX/G2zVUW9HgTPZz/ITN6/x@vger.kernel.org
X-Gm-Message-State: AOJu0YwK6ADAMhrzuNyS6KHmr+MskteBm46zxw5E3pXivMsxCTbhP9zj
	eITg4+/pnnZl86eLVqz1rI+4fmYsiOzZceBJS3SzAmqoRSh2hddbvlGamC7LkzPLxU7qllMO07S
	gkreKOBJzNut6mRSn2l63soNAmyGJttjRSGsnwaFcL1JAHVg/q2tCcwKL2N//QCdK
X-Gm-Gg: AZuq6aI3YW06qBTxYHk+JDz9WQCcN56vby/mVQrUzJhvxXEWR/HsihMEJUJcsiKJtNB
	6NMRG0YSN7jRTI8IC9D/xqx0A9az6AMMMUxkEbumqWOGtMneq3aIgydTJWRZW6EBCOs82H0p+fi
	TuSxF+XQ/eBkCxqX/at87+IgUDB9jF99EWVDU0kl7nrP7Sqic/uSQISZWIBlyAO38cdBY9b6MGa
	/Gw/ExaU6yX6C558qv9vBs0LYmeeiyX/tGQh+9PwFzZkTml1yaib+22pWcODULlTgJpj8sXYSf1
	Zdjy7hTiEffYMx9obyjQvtN5SM9/NV+os2QQbORQ4/b7FTk9LiaPvxrZ1zl4sBla1VcNub901Zq
	J89LO1JAbPQVMReOcESgqBW0F+dLsoH4BfaBTIZf9Ew==
X-Received: by 2002:a17:90b:3901:b0:353:e91:9b2f with SMTP id 98e67ed59e1d1-353fedcc422mr7778782a91.37.1769681450397;
        Thu, 29 Jan 2026 02:10:50 -0800 (PST)
X-Received: by 2002:a17:90b:3901:b0:353:e91:9b2f with SMTP id 98e67ed59e1d1-353fedcc422mr7778738a91.37.1769681449740;
        Thu, 29 Jan 2026 02:10:49 -0800 (PST)
Received: from [10.217.217.159] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc7c6sm4960669a91.10.2026.01.29.02.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 02:10:49 -0800 (PST)
Message-ID: <ee02056d-34a4-4300-acab-98fc50c43a0b@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 15:40:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: interconnect: qcom,qcs8300-rpmh: add
 clocks property to enable QoS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260127090116.1438780-1-odelu.kukatla@oss.qualcomm.com>
 <20260127090116.1438780-2-odelu.kukatla@oss.qualcomm.com>
 <5b62fc63-314e-40a0-a975-9df75ec49e9a@oss.qualcomm.com>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <5b62fc63-314e-40a0-a975-9df75ec49e9a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Z93h3XRA c=1 sm=1 tr=0 ts=697b322b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hncvHjIp_o2DDOFygSEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: a4Knz7V9kaxe8fiGY8WlixlLpfGnSaXi
X-Proofpoint-GUID: a4Knz7V9kaxe8fiGY8WlixlLpfGnSaXi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA2NiBTYWx0ZWRfX0JssPD5K1mN2
 hQaPwwjRroo2M0a9Rt3Oc1FkqGyU+MALi7GHaP+KOWKuIbd6YkRuqTr5Z7Jb0cHG/dFXxfMCX5h
 cGKENMcOlWWQ6FrUHHB2LY4nN5d3/bH/vOYm7uxZuu/oNSe6L7eqYD3CZNJm0TGE/a2xKhMrC2I
 RxpKJS+nhrGE8BOz5IK5xdMO+kgo7e90eIeCJqqZYCf4c27BAYJIa5hdtbn5zBvtFtwGIPmnHcC
 HYzMuKWkFXSapsOseT9YtO7e/SB2bjbuJLJwY4IkU/NUYACgyFlASKWg/+Ff1TCn+MwF4Xc+gni
 edg60Aaujw9l/WcxnRWOUnY0ZBV+Q7XPsyrwxNHA1G0zNbunmU8TLOdAIeE/5kbQtnd6FyY0JJ+
 eg1K0c+6H/qtoLEJJ6JvvLlcgtHulVWhVsE7CbZUsHXB7GMwVAOaF0hRkB9Ot8FQ9KRpfLp+8jB
 cMZ2n77Tf4dlsiDPElA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-260807-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 80E22AE696
X-Rspamd-Action: no action



On 1/27/2026 4:24 PM, Konrad Dybcio wrote:
> On 1/27/26 10:01 AM, Odelu Kukatla wrote:
>> Some QCS8300 interconnect nodes have QoS registers located inside
>> a block whose interface is clock-gated. For those nodes, driver
>> must enable the corresponding clock(s) before accessing the
>> registers. Add the 'clocks' property so the driver can obtain
>> and enable the required clock(s).
>>
>> Only interconnects that have clock‑gated QoS register interface
>> use this property; it is not applicable to all interconnect nodes.
>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +            - description: aggre UFS PHY AXI clock
>> +            - description: aggre QUP PRIM AXI clock
>> +            - description: aggre USB2 PRIM AXI clock
>> +            - description: aggre USB3 PRIM AXI clock
> 
> LeMans has one more USB3 clock here, but it also happens to have
> 1 more USB3 host, so that checks out
> 

Thanks for the review, Konrad!

On aggre1 noc, QCS8300 has only a single USB3 path, which corresponds to
the clock in the binding. LeMans includes an additional USB3 host block,
and therefore has an extra USB3 related clock that QCS8300 does not
have. The difference reflects a real hardware variation between the two
platforms.

>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs8300-aggre2-noc
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: RPMH CC IPA clock
> 
> LeMans also has ufscard clk here
> 

For aggre2 noc, QCS8300 does not integrate the ufscard controller
present on LeMans, so that clock is not part of the QCS8300 hardware.
The only QoS relevant clock on this node for QCS8300 is the RPMH CC IPA
clock, which is why only that one appears in the binding.

>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs8300-gem-noc
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: GCC DDRSS GPU AXI clock
> 
> and lacks this one
> 
> Are there actual reasons for these differences?
> 

The gem noc QoS interface on QCS8300 requires the DDRSS GPU AXI clock to
be enabled for QoS register access, so it is listed in the binding. The
difference is therefore due to SoC level differences.

Thanks,
Odelu

> Konrad


