Return-Path: <devicetree+bounces-276039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG0EJMrOt2mDVgEAu9opvQ
	(envelope-from <devicetree+bounces-276039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:35:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0516297140
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E1073009147
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4680388E5E;
	Mon, 16 Mar 2026 09:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OVTcSHWq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kOFMsigL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCD737C0E4
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653604; cv=none; b=Yidsgq2RercNV75UBtFfjV9wvriuNmXME6JtmL8ZTsYUDDZfyDtnNP3rJ2iU++SI1JuIZnDJogd9kZC2sY41GGAkwiL+8+MxoRPkL1xq8cXSpSxVpnLwKqR5IhpUlvs/PF6u7JmcCZLI79jDSzYk4+OzEHGMs4CZ8Ncpi/L3Z0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653604; c=relaxed/simple;
	bh=HETbff4fN6Ig9+joTDZUfg1GroVz7sPQGzS7xKLif4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=goM8FJCBtJMhIDixDXXJnK1P6GSz8sYzeht6MVUuqc7eZbnP4bPh0DpSiscaGU8rY129arTotxzrWU+I8xEVzbc4LosHfHLPbjHQRbvWb2fi8ZgsVaHfHLgwKh1QqY/Fg3nEq3mxSZDz4hkxl5mtW1ZljcbdzH6SO199s2cP+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OVTcSHWq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kOFMsigL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64kJw744179
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:33:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bBfZ56VH0T71bHW3/BF6IzqfyQ1PVveoUcbvda4nSJY=; b=OVTcSHWqsNAdxvf6
	+fOFXtYiheLQBZB6WwrrBE2FiY3azrt0HT8SdjQI9UGeex60y6r4myZRzsoCtEbB
	sn9h9NcEpdId4th9ZbwGwxSdq7s2Ip4PdAAmgJaa/MOALl4BZZ6kLAMuP5aY5bXD
	uewmDxMAq3wEil12Cc8MqpslUDI8MggX77iW/wZVgVkh0gPwj7u/yKP+LqZzyWHF
	z+mdmm/JQXwvjuNYYv+BMQxQaKmx+nQl+hpZ2K1ib1JvVwq7wU4PjdYFNe4ibf7W
	u5gkLGTjy9dE0JXQRHEFm2j4hYAe72rGXJeCzUVHj1gjoTY7wgZ1xe+K3PkunCTJ
	ANncgA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00bd4hp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:33:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aec6c572fbso353021485ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773653599; x=1774258399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bBfZ56VH0T71bHW3/BF6IzqfyQ1PVveoUcbvda4nSJY=;
        b=kOFMsigLf42mvd859jwCAQFWuv/nAo7ujCCu4OC9pRW6qob8u5eXLv9Zgr3UiNxNi3
         lxJwyDnm0npyGoTWZ0omGyqap3IWSVxB9nRyKQ97CSklPeZ4LCnoxZPSIYrAXeZ2U81r
         THYvGuNvzwqZx5MaiT1/8vxq/n0ObvBimWBwlkS581YnkAXrTY7NsSLQ88wxdpekyI+P
         q6YvQ+Ztyb1XesdYXAtcivjDEGRpN2R0tO7efGvAm3KjYDDvqd5EfbF11c9XUIFZ2l0I
         VGldnThYDp5Q5tTRKH6LKI/tsglFC9MgVkIqgE6Tr0IBjhgk7FxlyUZ9AvbUnwn+czhJ
         cTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653599; x=1774258399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBfZ56VH0T71bHW3/BF6IzqfyQ1PVveoUcbvda4nSJY=;
        b=f3dC6nzMvNNHRa+WMIo0h0ZAb7mNnaDz8mMCTNYEh0ESDmqKCiAgPmhQvTZrh3u4Q4
         tw9idc/z6KQHlpz3wHvAq8hkYZzP9EXSsIlXChLr0ekCm4dr+tvm234CRltUNF+48/TI
         Bv395pr+Eg+BRMXlhFuJs0wYWDiNFOiRfYR7YxoyOtOtFV+fYR4QCgZUbZa/d4yxz7Fp
         dfPYRP+/4QUNDQ3mpO70xGLPMHe9xRWDHRHNKjOFhthkIAP4iEwDLr7xAbjTvGsEK6oQ
         u2aoDmEyWHOifiUG81ufvIadfeTe7sFoM3GdPSnA3qKhU8khQd9ReJEgEOuAzzkZjizL
         u+og==
X-Forwarded-Encrypted: i=1; AJvYcCVRyD3QsvlifIoKkx4cAWZYMozNFmPI2Z1Mw5F+jMlsd2feFu9poCMjU9UxgnNuWPUjkRN3UqJgNg/F@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9+I0maWQMn4Dee5MwHbL3P0g00uKQYQiGx/JZFWQRwcyHk9ia
	w+kY2uKGUK0gS05sURaM7w5IQVQsJY8HOFhailXkB6qANNoXBt8SG1+/B+oOMM/917Z+5Pk4weA
	mEr8CGo5Ec+EB2b4jNx3XK1JLlhVC0AbbX5WcGAhhNMM0/7L0h42p9bM7vZbMx2iQ
X-Gm-Gg: ATEYQzxcoYAguQU8fr6EIdgXghaNm4gNKeMuML7Qekif3xBB1pbvfKxzqiZWxWcmWVc
	PtfIgGW5CNLeePVz3ax4wwaYuy3e9OAjFgW+dKHsOG6eSOn6+JN7nGkzm8QwgJ0cx5M7sONLpou
	BgUjNBMoQx+s2wBN557ztieYySzXN7KvL1aaBSdS3BDBSTh3TQgodtNBu62BJ8Pi2gQz5aN92s5
	Bta98su9s28h4MtGxcH353NwnHMNdnwkr1Y59ZZ9vNsKUyA8JJMxbWAcJuf4ph2QwA8gTfdCb88
	LnR7dWnKKAzCbGeL3krwTBlK2qLyw1l2rNp/NjPscUWmWY/KCY0YJkIn2YAe0wGfU/LTPXLE+Ob
	cX/lUTWoj+wYm3WFs0RNc/XK0n3S+q7/2HzqslMb/NXpQP00amNGSy2XOYQwoiNwsXJjAJugwU4
	4aM2aFTBbCjWw=
X-Received: by 2002:a17:902:cec4:b0:2b0:498b:2bc2 with SMTP id d9443c01a7336-2b0498b3277mr67810185ad.23.1773653598858;
        Mon, 16 Mar 2026 02:33:18 -0700 (PDT)
X-Received: by 2002:a17:902:cec4:b0:2b0:498b:2bc2 with SMTP id d9443c01a7336-2b0498b3277mr67809835ad.23.1773653598387;
        Mon, 16 Mar 2026 02:33:18 -0700 (PDT)
Received: from [10.133.33.135] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b048527a19sm61722195ad.7.2026.03.16.02.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:33:17 -0700 (PDT)
Message-ID: <2ad93fb5-849f-4fae-b64e-8f296b408366@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 17:33:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: remove the disabled replicator
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260316-clean-up-failed-devices-v1-1-f22fc9b072ab@oss.qualcomm.com>
 <85050b04-c67a-47f5-b562-ad890a8cb1b1@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <85050b04-c67a-47f5-b562-ad890a8cb1b1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IsATsb/g c=1 sm=1 tr=0 ts=69b7ce5f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=K8TNM7oBY7VvUM5HdwMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3MyBTYWx0ZWRfX3r27yDOCgSyn
 dT0gEo4dWCKi9PZztPj/yTFv9z/ZrlA7M0igol9XkaqpRzSR4gLYL7/6ip5fcKp6tP0r/KLDpzU
 9UPy29hVBKmfj6sUGfNtU3EptpZY29y51XFTN3MYKRPXKcsyho0cVLrmKRW3kWxG+TbKujSM/2v
 /jgrvYNwBabK3CR+KDJQIceBWihkcKnHfvsZNUnDSdidVmv20+NMgM305+zNfT7GDpTs2TP+sVt
 MOs/vWwhaiLYgDxPbcHZiOi9Uo46YQ8MEU7JMq/VZcwlUmAYIfFMeFvWcKvq5zqZlILzPNZB96H
 GmsTj1ighZYFENlusg6ktXaED2sW7T2AgQ2t2xOnviFUCLj5VgNIq7jSAKSEf2zJBnZav8RABln
 3J83vdBTmYm+wgPhaJUH3tcC7HdvWMMyxAOwr3sqxrzf0V4fy5EtfsrbhTo0jIQWYAd9/tyBTFz
 wZqfHSuIwu0wtmplIew==
X-Proofpoint-GUID: DEJ5TfolnoI5mYYuptC5e2jyDbCTZuE_
X-Proofpoint-ORIG-GUID: DEJ5TfolnoI5mYYuptC5e2jyDbCTZuE_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160073
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276039-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F0516297140
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/2026 3:14 PM, Krzysztof Kozlowski wrote:
> On 16/03/2026 06:31, Jie Gan wrote:
>> Remove the disabled device that blocks probing of the connected
>> replicator, as the replicator driver validates all connected
>> devices during probe.
>>
>> kernel log:
>> [   18.540971] platform 6046000.replicator: deferred probe pending: (reason unknown)
> 
> No, that's not a reason to remove a device. The device is there, right?
> So fix Linux drivers if they cannot handle it properly.

CoreSight devices build a path from source to sink and defer probing if 
any device in the path is unavailable so the deferred‑probe behavior is 
expected.

We could add logic to fix it in driver but it's much easier to address 
it in DT because we are knowing the device is disabled/Failed in DT.

It's my fault I didnt remove this disabled replicator device in previous 
fix.

Thanks,
Jie

> 
> Best regards,
> Krzysztof


