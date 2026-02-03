Return-Path: <devicetree+bounces-262175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEmZBkTPgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:34:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A04D7C39
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60DAF3082D4B
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF89D318EC0;
	Tue,  3 Feb 2026 10:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkyg21rS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="graTx+mS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C92314D0B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114524; cv=none; b=nTnmyVjV+eBRqAxPq32PHcOqLNqKGka3bELGUGQyH2an4tEV0GEFkGfnsMpf0qQPV+X+LDXeQtxez7Iwk1FnSh+bzst/JjLwRgsWxeuqxUjgOlqwdiqqhI8SfB24c+6I6OXYpaenalTJRap9mm6kdBcgRdN7JkSBdurJ6QpheUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114524; c=relaxed/simple;
	bh=qEFM7daAPsJB3GfUD8Tro22tVIStm7Ar+14i/HI/sNw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ap0qw52a522NeH9hIdDbRAMwGvuIYmKt+X3FUt5eUK9jHy4MjY007n1NpeuKjHA+XLAgYF3KWs8F8vfU74SnTjGokBVmWB0Y7xYyjXr736NlKhigs5YstW9S8UkuLQjAk5lnJKg6HZ6rLnWE35o4KsvVeDjG8UDynDIhwzL7K34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkyg21rS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=graTx+mS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6139vfle3386990
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 10:28:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qEFM7daAPsJB3GfUD8Tro22tVIStm7Ar+14i/HI/sNw=; b=hkyg21rSCaTK8tN9
	YIqF1XO13sRRKKrG/XwM9PYI2csgViv8kJ+iJT6l6owrOfAgrQSw06WVKYIBkCG5
	z0FYc3faxV+9HlHApTQ6JWCkhqJSRPJVVeLADrsWmaoMCqRV/Y+u6ra1a0NiOJYU
	h+aOYMIC4KQqhCSRtlyu6vb58KcSj7lPudWsJbaTse/EBTTBoX3bkMRDTv+OU+1x
	JotFJe0oGou2am83Ti8hiNE8bpmf0auHh/xEwPQnZRowoM5wIBHAZVZArdy7QEFR
	qVQt2h0Em7C/sgJVWug0dmgwUfJhX1zoTpsQGk4hlr/5261/9ZkJZQo0g1pTf/j8
	vGslNQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbu41j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:28:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52de12a65so106390785a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770114522; x=1770719322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qEFM7daAPsJB3GfUD8Tro22tVIStm7Ar+14i/HI/sNw=;
        b=graTx+mSZXUe5E2PON9MFWCrq4O+bONQ6bvWp5zacm0/6eRNPkuWdn2NOjMf2wy2+s
         BISfDrKb1GgWzsP2s1frlYAdnRgOFPUGCZQldengxHIddRY7E/jsx/7TtvycHXe1itDQ
         2xgtE6q6FTvkKODEr/ZCAydAfIilAMSWKuo9e/FG/pxVH/DP575namMjhxVpu5b0KXL5
         +hOFttPZGDJt6oZZKt226zbhrLm/r4NY1p4ix0UZj4EpP6pWSbdyqKRWSLU4iyTFh6Aj
         M7sfoFxU3ETBZfIX5GGzI1woeylX/glAcrLRUtPUM6LLf4BlBSnyHsD+AxmD8ZUXn+wH
         nIWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114522; x=1770719322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEFM7daAPsJB3GfUD8Tro22tVIStm7Ar+14i/HI/sNw=;
        b=aT2qlZOz1wd1wSrADrIoU5FwItIaIzdz3ji2RXNe7Gin07yK7syyiIphEMnBOh+t3E
         2FOiqiicG/ABFRnG+jz3B+cBUNc1VfXdFevlb+veWEWV7dkc5QuYMeqIIeCNFCXmH8AS
         +miRSW5GmSI1uQzTySAoHDdf14koeF8mCLKuqZSK99/OcOEBCHLGd2E9PC2AhR8P3YIT
         HXD7lsbuZQvSHE8e5d0EKx+1hMKCpu3irh1SSpD+q9QWlr9NJy6fUyD6Lc5jhFOSbL+u
         1pWH/lk+i19RFxYxaWuxEjIcqsF8wzhmw7nTHn+q1phYClYyXYz+Jue7ZtXGm+Axqr9Y
         b+pw==
X-Forwarded-Encrypted: i=1; AJvYcCXtAmOkFmvQPP2x0eh+caiL1p5XRFic5r2CX7qnn+46mZ7vayQfz46cWrqYktzOKdBhPCw1+1nEWJpT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy20A7qARqX6UyPOMpovbAyptm4FFpZTWnLzudkKEuDj9XebEYr
	kQf1AuK6ODWwt2gCqXO3PErxZfWnO+e5mFMZXvhvK6qXm7OP+c+knShYj6VS7YjZUHjEj6VlWdY
	YLDegNkfOnKGFmzMiELY2iWlpUbL46eIIQ/QI/Gzad7Z6GsElcraugqIT7YmOuuCw
X-Gm-Gg: AZuq6aL0treREWO6QLuyNmdm2t927s8uk52IfmXh8c3CNig3W/LXuMIIOt1zMIVgOLt
	hqxYHKEFdQPwWhTVkleFFTWi97t3ZLNMhgCdWjQeM5Wz+7IFh3lcbo3zQ3Alo9/Egd058+OsA64
	uisqUYpQuLuxkumIw0zvKZ/Ki5xhyqXB0EISwE6ldRw8tdc1nMWo0PSP7vPZC3CcmSlTnTojTEx
	rInCOdCxeKSt87q1WKwq3LcmLnGS0aqRgGaOCh4jNZUsfPlKUNVEdpjePGh/QDn2UyFrJnqq2ZG
	BXCVhZa1bER0RnycBORcF/reWGNpeOmmDMlXLIT78dHvLsHu8NNRScklmm5tw9AZWv55JwlzhNa
	6tpQLsnPqX0ySKfDp4Dqq/gFc6uzzLYlhRJ/U5gvBxlWViHkITQsSfBq6vUFrQTL8QB8=
X-Received: by 2002:a05:620a:7011:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c9eb277e82mr1456673885a.4.1770114521891;
        Tue, 03 Feb 2026 02:28:41 -0800 (PST)
X-Received: by 2002:a05:620a:7011:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c9eb277e82mr1456672685a.4.1770114521501;
        Tue, 03 Feb 2026 02:28:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc56e8sm1009803166b.15.2026.02.03.02.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 02:28:40 -0800 (PST)
Message-ID: <dd590fd1-cb73-49e1-8df6-4b3d5c57e053@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:28:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 9/9] remoteproc: qcom_q6v5_mss: Add MSM8940
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-mss-v4-0-9f4780345b6f@mainlining.org>
 <20260107-mss-v4-9-9f4780345b6f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-mss-v4-9-9f4780345b6f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: D3YYEOwaWnz4qaUdF2v2B5RWpQm2QSoa
X-Proofpoint-ORIG-GUID: D3YYEOwaWnz4qaUdF2v2B5RWpQm2QSoa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4MyBTYWx0ZWRfX1iw6BO68dl7z
 UTjxfBtmULcxxtf5xYztJY9wP4ObQwQ1thhBxDT4yzjXv+Jxy9EAy6G5UN/5dgCg0/H7XB4xFq3
 dqAjZJ4WlYFgsvrRR6+C4lKt9cYMdm43043+Y+m19Xyl8n2qdDNu91rnKvvtWfvf4eDTgaLTVLp
 5gvKSY4aez4oNtcSM2khFR3huqToMGrFcRcpEjC/Y5RKbzWMCcWcjD5Q56Xvq7lTTupde5RCy1W
 /tlWta24SVm1K2LSzuI942kQLkaf93O+BozE/GwcwxWFOKqbFIL8/yKYhzjfM56RnbMDCWutNaa
 tLEUl3Li5rCp5zbgCRRHWWZm4AtGqSqtxyXByw/fc4u7YKEaAY89daHflRC+H8wBPh6cbtvL+bG
 1EiQ49BOQZ+APyLTuYjSEm4aGHQPuwpSZ6pflKYcUp41mUvMt+E/upZMCT4hYtI/PSLYVccrEm9
 OBfQHE9PvRWgEn+hyFA==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981cdda cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=06MASDJmLU4VXX63p4MA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262175-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 89A04D7C39
X-Rspamd-Action: no action

On 1/7/26 12:34 PM, Barnabás Czémán wrote:
> Add support for MSM8940 MSS it is similar for MSM8937 MSS
> without inrush current mitigation.

I'd be curious if we can simplify that by skipping it

but

I'm not willing to take risks on skewing away from the existing
well-tested init sequence on a black box..

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

