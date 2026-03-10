Return-Path: <devicetree+bounces-273260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD67Dcycr2kTbAIAu9opvQ
	(envelope-from <devicetree+bounces-273260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FE02453C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFDA03066BD1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6DA3B5846;
	Tue, 10 Mar 2026 04:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CerUh7/I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZCnVfEFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F98C8F0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773116616; cv=none; b=MZ5ZD9UfYPdL3o9WEmRHkkqcw7v73DUSjdpERNsGee/2mL48r5QwFEBtCgorrXtiEWJEMJVSuWB90l7sNGth9ierkfpeVLYywRlgwqVoJnWmsNnhnBIeCstKagIWU7FLxC+EyTq4r8NAOmtDu1VzORKZFmUVFYJ0x0/Q+UAH+VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773116616; c=relaxed/simple;
	bh=yd4psyy+VS/NkYJLOcH20PSirg8JRnX1pirB5TnCxog=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=A7o1BTRDQK0ECeH0MgAivVh96DlfLsGuCWVfK/4i0IHtrdK5hoM95xInPLjmrGyOhRLWOIMPc8VqnKmT6ZzpEcJqg/v85JwGbwaXBwAbDkri+UcL/+ZMnaw0KgbPDcxH69JwK4c52LXp/2gZlo58FeTgXZrX+9Vkv0mK9KjFxEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CerUh7/I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZCnVfEFD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EKP22363185
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:23:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8O6dBf21XCwLby4yH5fsq7vKzQKO7Fo4MyOXqHzm9+I=; b=CerUh7/IfszCbh47
	pbrrmEpc6TQPGEzupR207C0cHPZkh6hZiF/2CmgdnwMi/0h0V/9XyZimVWCkCjz5
	HlPSs+6BzB6gJpY6lVC4xDNnPTxHAJTJrPBZOeSy8gLHigiZILCTFB98r/egtOrh
	moWHUCNQHJsPsBcuHgZjx8+T2mCkiCMZlQoYq/sj4YFhFNII7LxcyVEHiy468aS/
	mL5Pva9L6UTv0hNWdTrCynHBlcW8TA4m4fqjphiJQz9M7Px+J1mcyvb5/aga77wA
	kf/dv/FCCgvWK0O1Ge88Zx1f3yGpLaJZfcMTzAwp2HJQ5hk9fPzyIybS9DFG2hUO
	B06fow==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct032agqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:23:35 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8299c57642cso22819977b3a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773116614; x=1773721414; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8O6dBf21XCwLby4yH5fsq7vKzQKO7Fo4MyOXqHzm9+I=;
        b=ZCnVfEFD6v0q0Cm8IpRb8g+Melto28RApE4cNug4X+xPPFINpEmrX4CnqOiJDHaQNP
         R0FG2sm/mQKEtYXOthfWgTkFZCiuCylTpGBiZDHDGEHUGugegopoOqwpydSL/IONu8RY
         iZknZnD1/Nq+/BJhASjSuqTCgWqPUuw5A0lqv1Qsq1KFLgkjDr1N2zlIU9Tzj3VP/b9z
         2qDheJfTtLd7V0O/LnGS1W/4JmIvLg7wwem/IfA6zz6VpYioBsznTRSrFXesodSvSNHk
         ZT5udz8ZW5FFZv/3nkm5rQRjljgJd7LmSdwxY7QKyctgWf1Zdv/sR7Q3CCH2Uv30HYj3
         SIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773116614; x=1773721414;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8O6dBf21XCwLby4yH5fsq7vKzQKO7Fo4MyOXqHzm9+I=;
        b=Z0vqOLLJR5++czpe4VvSsXca7pSLOernLX8CN5X3fciy/0qWcMoOQO6+zGKlXNORNY
         8c+erZgQ+7oixyy55oVCo1tr0UiVRj4lvDxbjRZb+TLTIDerYYAA299N7DoyvyboSpZx
         fjqWe5VeeGVKSvaTX+nEEZHORfYiJNcgTpzFmlwQkiQSAtOh4op1Z21MQcDgd0fEIn6l
         dAPTazU4qw+pX0tUxti4BRndn/yjWkq/unVYM/iLWLo8H/dvb/VN+2sitmPurGIzCLnn
         KEKCzdQHrhUisBiD0dakFUhNrQ0OCpjjKNX62w0fAfMQ4crzVBscSEo06lYUdVk99aAb
         VcHg==
X-Forwarded-Encrypted: i=1; AJvYcCV/46gHGvEvFUYzhHuojpKTedz5goBBsNvqwjO1i0aa7OzZVb/bu0s2Uvcz4c9vjzpzU0WdD1zLgleH@vger.kernel.org
X-Gm-Message-State: AOJu0Yydukt4fvoS2J3bco4MJzeFPsYG9nMSEScUsxMY7k/R1g+T7iEw
	dtzFQwmOgZlD2gGlLxbUDJg4d0eRmfjCRymQMl44S/7ZOaCHXtTvZnoC0QZrJ+sQI6mZyNtDzO8
	VRp3dqM8UkCCLXpKQmh+cunfBZ4k0iq+d9x8JXgRrHLmv1w03sXW/1rrcnjqS6q1A
X-Gm-Gg: ATEYQzwA/Qd0BwcKiphCGJHZsJbLDnhBPkKYtE0RRELB6k2GHP14E25BXsU2EgRibnv
	U1LScF8WRYTPXIquXTg/JOlJvNdZNWzeRyP9z49QMt3Nw9mSIujMJlwQWFCXA0EFzO20flP+ukE
	KH+zMN4Jf9B7zdwJzJ2ARlzJGbUf4X4l7y8XQDFi9PuluGt/pHhe3E+YC/CVl28HXvCdPZ9nfNd
	YS0Y3PzhRq9kn7nCboop45opkT3GCvZxz/9FQENjGqMLl4JeVKvE0T/nj8mrhDCJM0Jn1bJ9C8w
	m+qmcXIXuxifsJFooUJ0GWypikOeziCV2awxrlS/MQzsyqd0bWQSA6FrmseHRlMSSCJbQoLgpEb
	EDZTha83C4BLxmHG6p3FeOtHTivyUT6b/w+gTsV6z8uo3Usblzg==
X-Received: by 2002:a05:6a00:3cd6:b0:81f:5037:a318 with SMTP id d2e1a72fcca58-829a2dc3838mr13185140b3a.21.1773116614394;
        Mon, 09 Mar 2026 21:23:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:3cd6:b0:81f:5037:a318 with SMTP id d2e1a72fcca58-829a2dc3838mr13185113b3a.21.1773116613946;
        Mon, 09 Mar 2026 21:23:33 -0700 (PDT)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a467239asm12382088b3a.26.2026.03.09.21.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 21:23:33 -0700 (PDT)
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: monaco: enable the inline crypto
 engine for SDHC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
 <20260306093332.4193993-4-neeraj.soni@oss.qualcomm.com>
 <20260307-wonderful-vehement-macaw-33b6fd@quoll>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <09d09441-3495-bb12-8d9f-31effeb714be@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 09:53:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260307-wonderful-vehement-macaw-33b6fd@quoll>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAzMyBTYWx0ZWRfX7SesvDxJk+Y1
 ylIub4x1ANxO0lJtynwXifw6a5WF211S61BdZPUw9ph5lmUM4b+wktOA97H9jyEpEfEdJ2dTZiD
 SRn5uj7g9ZplxYvnrm4QqvCTBcNrUCSOEzZ4IQzYp9rsQhRUQ0kC/n/bJdWiIx+LHPEZOlyXymX
 OFmPluSHx8E02eY0JB2Q2pQOfwNjOeh2sn4yT2wa2xEmkYCjeFyQAaBOohThGoExRGp7NZ4CaEZ
 CIDBF7vZdrcXO9p50jj38KGTW8+3OsM4SvGC869V9DUNJM/CrKSl+N/3PAFeGy+j1g6gdqGjmK7
 jy4/EEq+iNTBwORUxd8wGp7sSa4UFLJFc+E3wiYC6QYY1SgHM40q0R5+eXM97fXtZ1SIMMR3kW6
 WyeFUYcuu/NxOAcSjZ3zN6Na/sfJuaqlOSvfOpBObSyCBYd5npV/tXR5jDaAZXUGx/y14WO0bwy
 jdB7PYa37Le5JYOC01Q==
X-Proofpoint-ORIG-GUID: NeHmkLXrXFDYUXenNb9_E8txCQQ8Qpyd
X-Proofpoint-GUID: NeHmkLXrXFDYUXenNb9_E8txCQQ8Qpyd
X-Authority-Analysis: v=2.4 cv=WtEm8Nfv c=1 sm=1 tr=0 ts=69af9cc7 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=niw1k7PmRTl2Nx2QXY8A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100033
X-Rspamd-Queue-Id: 83FE02453C7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273260-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/7/2026 4:07 PM, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 03:03:32PM +0530, Neeraj Soni wrote:
>> Add an ICE node to monaco SoC description and enable it by adding a
>> phandle to the SDHC node.
> 
> No SoB, broken/missing DCO.
> 
> checkpatch also would tell you that.
>
Sure. I will fix this in next patch.
 
> Best regards,
> Krzysztof
> 
Regards
Neeraj

