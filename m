Return-Path: <devicetree+bounces-275203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aATIEZkEtGmXfgAAu9opvQ
	(envelope-from <devicetree+bounces-275203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E30F328317A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 285CF303AF21
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E163932EE;
	Fri, 13 Mar 2026 12:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2LE2tGs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kjF2oGLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0233932DC
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405208; cv=none; b=ooZVP84NtwQisJQXzPXXp9OHEAMzEx/pj0HiZjhsLddcYwxgVBJpu8GINGyxjzwwqounl9dKLeC/rlH1vGXluQ2jarLvehJ+Pfp4IpaLh10v6wa/7IPT8m8uNWC1aTc37tQeMHlV0vU1K5GohWg4+lJGqhF3/OOV8GV9f/8qhHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405208; c=relaxed/simple;
	bh=0Emjr5T+xCmI+Wpk+ng3/CK6Am8XEeesykcL3lCtcBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jO+hTebMs8GodBqraz4qw4gtwaLSosFQGqIcLgzKkzJLaKJnYbbi7hL8Yi/5HIYhGjqspxbLx08DZ/290EP/Jud1hOCqYxyfBKlFrX9pXovUlYK8svHeSILyAKv3USaNZj9NcGjCAsAuqocveZPr9G2HppFi51hhSIXsdZKgT40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2LE2tGs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kjF2oGLf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D8vF3D481699
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BDSd6M3ADucBUh7vaHNmBoAw2ElUft2U7rcIQs+bGmg=; b=N2LE2tGsId8fohuo
	cpgbtYagjGt1ueDsCHwFSzVhhDSG5ASaiHRm3AE3TXTbc4zyfJbGQlCGglenjJx+
	FFaZm518+/X6bIJ/+9R4Jur6nHWQFlF1su6J/r6zBrZnOm14W9JfgZeswk/90WjL
	XVsbLjl9fcqXCt4gDz1rYXb4O2EFt/AmS7ij365mmSoub+HLVW/GmIzLzCvyVd+n
	d+fFcAwG+EphWz3jrzcbcKH9k+ZR5Krge8GyedeixSzCRtFIpYXtLkdmX0ZOOF3/
	TmFfJqd/KmZ0Kc7JoAZztv0w+nX1dIDiVfUCY6pCfCpd3uMqzPKqnqho6lKfdI8L
	+q8uSg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7rpbq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd8198fe16so135292385a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405204; x=1774010004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BDSd6M3ADucBUh7vaHNmBoAw2ElUft2U7rcIQs+bGmg=;
        b=kjF2oGLfsP3ExIoe5QG5GlBJdcAXAN5bE6IuW52JeoqFUVPxGcx5pvkBGFB2M7Cvyw
         /WQuMCdghrmkTGK2VnvirJJMHNNQ7QCDJDssXWfNxBj1xiQWnFN/H7L4w1/LwrpsQVu8
         kRs8QrirU7sVQmhglZSWCiDFC0fMB/eb57qHqXjx95WmaSG8m8dhUxSTLU3IYyeKRnAx
         tv5RUWHcD6egl1SyDRyO8RSwQqET9BJai1S2mHPDh/VFaCxODzLpf+Ae6MskTjUVTN1K
         waire71yo/uJrF0ZeGIeDN4JsK+KNBE/mbNBPO2KNJrMFYdaO2BJ7a326ZE/FoRgWVxG
         dnqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405204; x=1774010004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDSd6M3ADucBUh7vaHNmBoAw2ElUft2U7rcIQs+bGmg=;
        b=QgIrmndFSAlHIzurgtYIy3le/C2yw24Lt6/qK2mRi8nKGbXGtzEbmO3i8IJK937RC7
         n2+m3j1q5AQvElNRb2C7E9NefIv5M4e+WuOFdwFbf5cbckqXJXuVV4OwfR9rwcAAI9lp
         GFJTLDKkT4U4oVoVg2K8XDcFfXXmookXDqSH6ct2rwDoq+MvJub4y4D+PmpMJqo0vlEV
         rQ93KSXO1olgDFN13w03vzT1Gloc4Zt996DkQ9/0dpzD0nMgFfixggECyapVwoBzdpGt
         WIG1qx7kvNpcY5qDcM4zjZcXzM55evPmcyBSoqXD4cC09DQcSj7cQFQ4F98khF/gLcik
         VxIw==
X-Forwarded-Encrypted: i=1; AJvYcCUQfK57QgtDrPyqJtj7h/G3JWGRJWXgL1gH9KpwIq/PdWwXD2b84JJ83AUjE6B260TDEXGn81zWNqy9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrqnv/jxtOSSY03k3z/IkMX+EIVbm6xiB4KERU8O1GcUnresu/
	tim2FnEmJcORWImaYF9/eFYO+VR4mhStx8S9SpBp06mlNC/LtztzImqSI4EeDM2aWIkioN9FztS
	IuJnbTeFsSlaGFHiw1WTOrVxZH9L+7u/KOXHdiTg03+9k6AatYDTSwqgS7l1+2ylL
X-Gm-Gg: ATEYQzxcvhHTxDApc44G58l860dgU/wUs0k4nlIHZm+/UfCGvJDwuBPzTeABGjCgRr2
	ZgjKW6SY0irKidaXj0n43cb10eLOfSBcxcF79H9xsDYdm3pCVrH7uo2FvlcP0O3C2BfhXjqEI9S
	YvljZrWhaxNkgSTd2UAbYbhnUnPTAdkpQfQ0rujR+jouN6q5F7rhcNdchH45KRPfQlw0Axdo9Jx
	f2PtCiz8UroxsuGNHMxJdlnnemvJRG/uyB9KEkZ7X0YH3zKc+TY8ciSidpFYsimjBVN2XZdn6DC
	QG2qux/3YJa/69k0W9n7qcKgfRYQx0heTBK34F9i/zkYaldtV+gZwbSd+fN0nZ8Gltk5tzu2uds
	WwQWE24gpOPr05KkXmByKibYrhd9dyJnKnEV1PycEzJnMCv6kJr0dv5vwqsRt+KNUFC1ns2/Qi/
	c0Ry8=
X-Received: by 2002:a05:620a:44d3:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cdb5bb356dmr351084585a.8.1773405203712;
        Fri, 13 Mar 2026 05:33:23 -0700 (PDT)
X-Received: by 2002:a05:620a:44d3:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cdb5bb356dmr351079285a.8.1773405203234;
        Fri, 13 Mar 2026 05:33:23 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976d0b7722sm41877066b.66.2026.03.13.05.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:33:22 -0700 (PDT)
Message-ID: <4d5d0fe1-9aea-4ace-a369-275cbb728afa@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:33:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
To: Yedaya Katsman <yedaya.ka@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?UTF-8?Q?Kamil_Go=C5=82da?=
 <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com>
 <20260312-panel-patches-v3-3-6ed8c006d0be@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260312-panel-patches-v3-3-6ed8c006d0be@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Gejhj_kWOwsudli5IIFmmnjSa1ucx8U0
X-Proofpoint-GUID: Gejhj_kWOwsudli5IIFmmnjSa1ucx8U0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfXyPQ1GaDC3lDq
 8D+QZ3Wo9q/JnAQNgFGsUS4fTKcF07ZtQT3oZVuBdkaDiapbN83KRWXFtkbAce1vbOFIR6kpTss
 PrNLNRc6xS4suMU5V/QgTWueKGdMFIpPCbWaXyB8kG725PRcZqCD9/eIPz5i4LWPgSBs93A15FF
 ak0VPgHg1gFgTuPa4Ep0seF/pb/m7kgGdFOKbu8qugdxiImB0mX24ZZcIkMI6A9pyphRdj8nDR9
 dkhcBiAY/NOhVB5hvK5TEW7ScAYde53BCjwaIp20lg/hvhqxj3huZq8BYPcJLhCqAF4EkBZzqVf
 1sTLQzGTqoNi1wMWHkjwgE/f2SlpCP7jxlKYaD0zepEvEqyGzBcoI2PiDgTUIY8Xc9l+ek6J4xS
 qj3M2133hamhNN0Qb4r3VBkD3h1EwyTxLR4ecYQSMivHorqHIjo7v+TViqJKRKnh/pBhOZzgeip
 2qD6YvhXAfa0JUFAVvw==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b40414 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=sfOm8-O8AAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bqK5-dEd6McJkE9xslgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275203-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E30F328317A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 12:55 PM, Yedaya Katsman wrote:
> Enable the MDSS nodes and add supplies and bindings for the Samsung S6E8FCO
> DSI controller for the M1906F9 panel.
> 
> The ldo and iovcc gpio pins boot up with a current of 16 mA, but they work
> fine with 2mA, so I used that.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

