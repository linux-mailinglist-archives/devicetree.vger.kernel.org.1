Return-Path: <devicetree+bounces-269684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOANMT/7o2lPTgUAu9opvQ
	(envelope-from <devicetree+bounces-269684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:39:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDC01CEDFE
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7998930166C4
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A7332ED32;
	Sun,  1 Mar 2026 08:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KqY0dMgH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ju1R+N++"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476F5311975
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772354364; cv=none; b=uigHFlB/hoXZZafK9gxqDd+9wCaSRjEAMUHtn/ZX/6EJKGtK/GBy564uakF9WCD63+U7pEhvbadlY4H/yQl21vg9+MzWCDUywM/EOEocQ7PBR6gCf3EIcWMWx2IZibsblykacEMrIzM14A4rX//Q1vqF0SiPwDoIpbrrD2u7gio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772354364; c=relaxed/simple;
	bh=zfip4jl9zzk5AFPmAvKI5wH/XCqtql5B54pDXZTsokY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IC159db7MdRZG8PO9Q5IqNzY18klaGTk2b1hY4Kein3C5ShO+FyJMhdw//gStLUf4u+QuoVjiM2sxGZ2qD7peZO7nrTKEZjtURcFhfDgVMK4TVJ9vy1pwg/e7cVuxUjlJs64KnGwusVmXUVJpnOuuRLayFBxpL7JE50mc3+Mna8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KqY0dMgH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ju1R+N++; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6215AlJm301151
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 08:39:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6crGyc6/DZYlZsj2+/nyb5AdRS9qSP3ztuPyv5sagm8=; b=KqY0dMgH/Bn3mkm+
	PBpauWnaM2ESLO7phJq1gcq/xodtKqCs+1wxywNFtN9vWkwGNIWT8Vb/QHtBStTK
	Ruu27zBLrJeKtYQtt3Ad+9LlRznTNTnt/lkXiacAuzKUVDxpaLmoo8Vsczyh2EuS
	wKJZiXdhRc4WCtvKHGeDPT11jM/c1FvwSiuUQvfZLV69PiFq6U/tMYX1uaXc/+Tt
	mGPBBVCZ9X6kdtlXZQLqGhujccY11Ottb1eX3jhRHH59fsgYRVbbQXNDZqo+Ne/1
	EMA5Kril+API5KtgGR2nP7NLWo76HSubd1Y2ejMRzIhq4T2M+r8SG0XgM3TareTm
	MsJ/8A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrtfbu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 08:39:22 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70efa3b730so1875634a12.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772354362; x=1772959162; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6crGyc6/DZYlZsj2+/nyb5AdRS9qSP3ztuPyv5sagm8=;
        b=Ju1R+N++hTpccDKQJ5XeQWWABqtZ+yhniMMimz8fCw9+vOpUiPHfAeBYnD/j1rgCE9
         QmLkOGDYFPgWu/cGyrzYtBXzRR6M6Kn1P7FwQWqJ77wAIB+6iWkMfonGz/14NjZCX23k
         /UXt3+hBQnSOWxAf3JEbwjA8/OIg5yTnk8nJgpvpPiyXLyQ3TqukM98aqDE1x/JxMHoA
         8JXPUjxs6b83IxjuKdz5B7080Zxqq+N/VWysDLWHnGhdufdRQEqtKZDNOoEmZ5E8LRDG
         nlzYhTZYoVJ4P0k+gHUAGEVx54yKZ1mX3oIn1+w95p6o/GMCVRzKH2QzOppH5OhLyq1p
         lWSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772354362; x=1772959162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6crGyc6/DZYlZsj2+/nyb5AdRS9qSP3ztuPyv5sagm8=;
        b=Z/m6kgJfS6gDO3RCeHh5rqGHI24IA7RldwQpiOxon8ciPpSQq/5lmJ0ds6rJuIetj8
         bSh9txGxOy5tEyBBfkDDpziv+EygtDf1/IWWh41uiI+nyB5U1tadQXXNX3EzhlArvVQZ
         k/qkONmZuRYbHdWYaalPsIbXm0/9gBlnjADAQwcJhGlQvpnGParHlYWnlpD5TT0v4WvJ
         X0c6sJtvm3XDH7OBvv/2Y97PJp6Fbb8nbIsUhsbpKZUDoJMihjcgG+CZFlJ6tszGCtmm
         nfxLcUcZgyhUk8luIr/yKwYPp3O9yWbVysS8EQ4rLjnCT4NYhZ2Zi3aNE4rMgS7YU48P
         0Xyw==
X-Forwarded-Encrypted: i=1; AJvYcCVHrsjOuW4PROZVxGVqi7ZbFPEJEyMi7kGbNXvcHXxKjLR5lwAVvlmIHPTiv2hpUj9sBwkAAX0khEcI@vger.kernel.org
X-Gm-Message-State: AOJu0YwdI3CiB5XeljGXJmkwkszZ1n8NpeS1qkowIOotthNpdAq0nFbD
	zvKRJs+57d9+HkC8F67x1FGFyjBTV/j3QZK1MaD3/1HAZ/V8w5dwd7DVE8Hvuj/3ko0horTrL27
	YxSbkJ1i+F9Tt8ZkX3TrmQV8ownMeg+YHWKbGz4SMXDQoGIhM+Rgd9Ki0G1vTWGia
X-Gm-Gg: ATEYQzwCoYtyw67/HFhZNmo7gvuF/3RRV6eW50RjtuhWGJW+zchQGDCf8qhq7jfwGB2
	3UJJAqbTHWakoxNiOgtbTg7HC76i08VbaAyQNFpNuJlIwzWB7sNHpo+CUlcA3qYuyK6Pzm5Di2f
	vDE5NRnMbjEz7L0kfsIb8S+JGVo5zGWQwdHh3kXLZeOVCbkPd1QpHBJy6emWNux1VYk7pn4yPap
	GQBC8B32d9z7Hy7374w0vYnujfGLeRFaUqI5vuk041YxOdkKpJBL9bSxalT2EevTHkTmNN/TIhY
	q4cDaS/aeAFIAdE+k0OfRXUMDEU2RaiepuLC4O6KWyIEFVdVQrh5ShI6SicXm4Aovn0m94C2Mov
	bBcJEdwEkrE+79BqaMHWF3dPJZkhFmcQPTDZcl1/+uC5/V24FuxjIq8Ajkp0=
X-Received: by 2002:a05:6a00:2e93:b0:81f:33a6:e9cd with SMTP id d2e1a72fcca58-8274da29064mr9831411b3a.57.1772354361918;
        Sun, 01 Mar 2026 00:39:21 -0800 (PST)
X-Received: by 2002:a05:6a00:2e93:b0:81f:33a6:e9cd with SMTP id d2e1a72fcca58-8274da29064mr9831380b3a.57.1772354361399;
        Sun, 01 Mar 2026 00:39:21 -0800 (PST)
Received: from [192.168.1.10] ([205.254.168.237])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a05e831sm10064950b3a.58.2026.03.01.00.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Mar 2026 00:39:21 -0800 (PST)
Message-ID: <3f7f28c5-ff0e-49e2-914f-55662d815a1b@oss.qualcomm.com>
Date: Sun, 1 Mar 2026 14:09:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND,v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
To: Bryan O'Donoghue <bod@kernel.org>, robin.murphy@arm.com, will@kernel.org,
        joro@8bytes.org, robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <aba8eaf1-eabd-4e27-9c2f-2cc8e4338a16@kernel.org>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <aba8eaf1-eabd-4e27-9c2f-2cc8e4338a16@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDA3NiBTYWx0ZWRfX/imFkLErThJq
 RMUKuMFrPiuE7ZbIAyj/yxEdC4ikzao11SrUG9gZyqdtGUEw1VfoKY4Xjn6aO/QdDI45OhI/T8K
 Jgzr1vpCVuhFMbUO60d8ONZzVWtkqtHtBB6nLQ9FihhT0p6ERWo6a0NoGHAucNYrlS2EQICYYhG
 bF83OgCMJUCA4QrKppBfkdsCcqMr+twLGlbtecJltvcAWMPFGHTGN4ZXKzoCvDIWKX1OHbJlLKR
 fubCEiOWlTIZ7bC9ilhwNSS4ECeblxW3zli5gSMswc0/GbsXtUgym5y0NBFKWfY20q3HabzvwAK
 60I24A+FhXjCK/1F2bNPaNMLRSuFP4nZxdAHuuiADibNSbFnps9O+nNSaKHRyj0dND+5/BBCYty
 60nmGcXNRae5UjE5LjDvyQ6WU4a0OnJ4N6qYxPo/e31c1vWaSnwl3dXctzdiuyXPcjPdJ6Yix1T
 +ryVmyTXnfRA4VA03IQ==
X-Proofpoint-GUID: qPls95GXoMLN_NJzvMAXkXorVFKEF4A4
X-Proofpoint-ORIG-GUID: qPls95GXoMLN_NJzvMAXkXorVFKEF4A4
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a3fb3a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=56fQ7I5yWrzCfZD5swi9QQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8 a=tA7aZXjiAAAA:8
 a=zd2uoN0lAAAA:8 a=SwFUUU41-IDwLpOynWkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=kIIFJ0VLUOy1gFZzwZHL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010076
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
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269684-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FDC01CEDFE
X-Rspamd-Action: no action



On 2/28/2026 3:59 AM, Bryan O'Donoghue wrote:
> 
> You're missing a significant number of maintainers.
> 
> https://lore.kernel.org/all/20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com/
> 
> From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
>     robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
>     konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
>     bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
>     prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
> Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
>     devicetree@vger.kernel.org,
>     Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> Subject: [RESEND,v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
> Date: Thu, 26 Feb 2026 13:12:42 +0530    [thread overview]
> Message-ID: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com> (raw)
> 
> There's no point in resending since you aren't mailing the right list of people right now
> 
> deckard@sagittarius-a:~/Development/worktree/reviews/linux-next-reviews (linux-next-reviews) $ scripts/get_maintainer.pl 0001-of-Add-convenience-wrappers-for-of_map_id.patch
> Nipun Gupta <nipun.gupta@amd.com> (maintainer:AMD CDX BUS DRIVER)
> Nikhil Agarwal <nikhil.agarwal@amd.com> (maintainer:AMD CDX BUS DRIVER)
> 
> <snip>
> 
> Please run scripts/get_maintainer.pl on each of your patches and include the right set.
> 
> ---
> bod

Thanks for pointing this out.

I have sent v9 including all the relevant maintainers.

Thanks,
Vijay


