Return-Path: <devicetree+bounces-266086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECQBNPRUlGl3CgIAu9opvQ
	(envelope-from <devicetree+bounces-266086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:45:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8BD14B8A0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69084300A124
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5111C33506A;
	Tue, 17 Feb 2026 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9YnCw7c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V+AUQoe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CEA286890
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328753; cv=none; b=VZnLCnhElrEwl58nvfxzKeCsvkkN6eEIS1mQzKQKJVCovY5KRmK3UtYI8EAx8/Q62gR4ZKfIt0jxkmX3K6sQW0POo6B7+ezuyBY9b42QJT6IELLlxh+QTy0U5CEUMp9cdHy15st/JLyXPfeowdoxjBxBdELd6J4Tsa0v4JNk0GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328753; c=relaxed/simple;
	bh=Oa0+Wwri0YI+nReOJLFYlJMg88RbzqeC9YFokRiIW4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lzxLy8aSb0muZ8AeJN4ELLnYPLvCcJ5ZGIp5QvaN3A+WpVoj+8F1WNNgMJaPijT4jcHOp1AT0HSNHBtCc+7jaW8OLHrW8OZQFAzGK47xchZ4wTiCRji8NlqHDjZj9zM+VpijDTrAAHTUlblfNJMzRGTS4A5czOUiprhYsdu9cNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9YnCw7c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V+AUQoe1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HB3TIk1942764
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DAB7LE2JysozOKo5lhqeqihE
	jyqZrs+8+jW+etQdq2E=; b=Z9YnCw7cMXTt+6ZKumFCX1KNbLo0bIbn5hdYt6pt
	XBS4X7J5SiIyaT9dRGcQC/604DHcCxJqOz0JSXoSi8IiM4ytv5i9EFckA6cUXnGM
	f6s1Fr3p6ANhPlgD7vm54Lc5RKhg/8cW6Pt+d2hglM8YAlilf+STHjRfnfFa6P2Y
	dTOphBSU7cuiCUIYTWOvHTJXfwMAJFTmr+1y/sNf5VfylYqCTIL0uasJs7y1b1hA
	ze34jV/VvLA/PvJt569wuis4B5SQyh7WWxUDcigWodrF1sZcZJQKkoET9HGoctj6
	EnP1kJ9avAn4LRDDXE0rrm7sKu9Yw5G7FXEjP6YswvJV0Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccq4g049p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb413d0002so2687797085a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771328750; x=1771933550; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DAB7LE2JysozOKo5lhqeqihEjyqZrs+8+jW+etQdq2E=;
        b=V+AUQoe1jUGlh7f8B6Kso2eoJc796d3NKwLGN1pmyX6R2JePXfkJcofukcnqK3A/Y1
         /NTILLj4JU/n66Z6h2lcLFKw34ZFrG/UTRkv/RiS7z36XUmgpSSJGkYsG5OXncvTlN+n
         /GnpTV8Yqjt3L1+IO3qod4av95pxX8QhOJbsEGe7K+CKzuoD3UJ4w7cJ044+b9W3UCaG
         4cXopMxhGY56URq02oz62jsf6bcbHyxbgvUcEp2ZP+QF3N03eZ1F5ULzrMVYrkWISYQ2
         KCZqnWMFEnV5L3sSoyXtLLcm1rdGHZOuhhf1CTcfvnvxcJo14RBs5vJ8RUtcGJF5vlvw
         pwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771328750; x=1771933550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DAB7LE2JysozOKo5lhqeqihEjyqZrs+8+jW+etQdq2E=;
        b=KxaysyMxOVAZngOA1d7vRzu2lvAkUzbLenhS2UWlta5NlYTLpQicOxSN6nTM/VLWf3
         5h9qyR35/uV1vzyjSr3sjuxngsaHtrxlhEE6EHiemfXZXkAXp63bX+VEKwsdpavZJu3N
         i0GpcxXmPUL1qsqzfmzYc/7lARXy4hGDqk3ji4xAoJnMwljYKQiCYXZHbkML9VjAGep6
         BM+s0zHBUGhG0YdX62cfCBLiHiGGniw0kcLjJWDN1+EX1luOzqTbImP5xE3y4hNVdOvi
         C5zB+Nwgh2+GHg4AQsVhWmPu0VidW/IN2CcAofGCPXnWjca7e/rVvJHZlcRbNpGGUbZn
         juhA==
X-Forwarded-Encrypted: i=1; AJvYcCVDru6W7akaeqpmAtGXxqJjVYBfO6w6xVIuUGdebb2NvsydEweypbfAGQadMUYlLCRKO3MBpgRM5AHz@vger.kernel.org
X-Gm-Message-State: AOJu0YxbTP0fOg/t2ASvlpRWg58LqgI77F0nizqRdZJsUujC40XckE9I
	4wNG2hDeZNKxOHXuBPtzQNpHdcAw/cT6plMv6K7aTv9TbiYg+1up0cFKQUF3lCEiKgmDqWAJElv
	IqymJt1i7sjCcZwN3JU4W0xHse1o0V+SPvcmzLVt5wSgUXQd0zt2oO9T3HBHOVy55
X-Gm-Gg: AZuq6aJbuYRBDb9rTaa4EhE5yPLM95hr0pqCi/43AmijZGX+PRWknyWPyWnv/btPU40
	wp2SSSyDEdrZn7UTvkuVXst2yE3aWy3ebhFIWzYY5TG1nbcT6Wra53MeaTQBTNe+E4WXpXbljQG
	Yi7g99dn3SpHKV8YpRn7AoFQCnH4rVBY9pxysKrrI2FjrtcpqLtPIEmAiwvwnddX/8ZKSLb4hnF
	++ops9Ll35I6OYJXu4dEJ3xPOzT2IeeyWyRnriaTqltJlB4rVprYEDM2OryoQUx6w1yVWvGGlYR
	9TDkZy0PwJ/H/KisMWZizisz9kLHkqvkIZ1U0dfWBrqE9RmDBt72yi3uruws6OEAWuoiyZb05j/
	nxM7Byg/xcpuJ9X1QgD8ew2+TFZ+Bc3kC5Rtd
X-Received: by 2002:a05:620a:370c:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8cb4ac9e4f6mr1413711785a.39.1771328750369;
        Tue, 17 Feb 2026 03:45:50 -0800 (PST)
X-Received: by 2002:a05:620a:370c:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8cb4ac9e4f6mr1413709285a.39.1771328749853;
        Tue, 17 Feb 2026 03:45:49 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483740be167sm306562045e9.15.2026.02.17.03.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 03:45:49 -0800 (PST)
Date: Tue, 17 Feb 2026 13:45:47 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750: enable ETR and CTCU
 devices
Message-ID: <z7oat7z6qpcjjdjqevqny6mebjzrt642vnwpv2l5t5vlwjfseg@t5alz6mpptmf>
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
 <20260204-enable-ctcu-and-etr-v3-3-0bb95c590ae1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260204-enable-ctcu-and-etr-v3-3-0bb95c590ae1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfX8f02k9ic3t01
 YFPo8fA81QN1L/TqC7jneM40Kgjyu3wOHJJVlg4d+8y3g9ySa0khNk3g6AZVFRuz8g/eQEnJvAN
 WzPJWRoMsvRZ+5U/yfAl2YbU5XVQfrdS9BL/wSvWAMDslpoMv7MGVClpEftuW7BOakoIY5thyW1
 MrokpaRMQo71n2EDTG+AFaNPTIQDClnt305droErlryD32vmHTwvQ59UVWnZhpJJYrwlJioO5g7
 PmJB49K1dIXRQusAHTGMCuSTdMWjcRnI4iq5xwoiDOx79kBGABpmhgFfJxQO097IFopu7rWMfic
 7j1mgGHRiPjeI/pX9QrVMJLqqR/CYK6I4GI4xL9olOBIrvXTGE6u6Y8G5QdLdD73wDVKQyB7OVF
 wpz2WsP8aG7qNDWYC49MrsSVbPqfVT9FWBwieKBfJ+wZ57ayqGRhETamDQwrjqJDUqp7U+qKJ6r
 7FMdlqfNITu4U/y+PwA==
X-Proofpoint-ORIG-GUID: LgChlnVOiLgsQPSB9dX3sRFmShhJKOOv
X-Proofpoint-GUID: LgChlnVOiLgsQPSB9dX3sRFmShhJKOOv
X-Authority-Analysis: v=2.4 cv=YdiwJgRf c=1 sm=1 tr=0 ts=699454ef cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=iWN5h_POgodqhNU-qcIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266086-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D8BD14B8A0
X-Rspamd-Action: no action

On 26-02-04 10:22:03, Jie Gan wrote:
> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
> tracing data from source device and the CTCU device serves as the
> control unit for the ETR device.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

