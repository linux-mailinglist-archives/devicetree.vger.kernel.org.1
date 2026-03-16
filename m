Return-Path: <devicetree+bounces-276073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNeDDF7Vt2n0VgEAu9opvQ
	(envelope-from <devicetree+bounces-276073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:03:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E873B2979B8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:03:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03CC7303430C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63F3355819;
	Mon, 16 Mar 2026 09:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="grssDVon";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TY7Y7jru"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E203386566
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654891; cv=none; b=SYEPGM+nhvhH/uEQGnVgtpN7Q64zGp4IQ3oFgR+KsQIvQRIdhZQYgWSZh2TsAF6JzPP/YtUNTtwGTOA7vu8VPwH7kg+OqHJunsRZzL0g+Jb0CUpDNdYKWuxOKctkTNQtw4fQ4UsY/PFji13W0VKbz8P1NybCdlTftB4qKIoyfzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654891; c=relaxed/simple;
	bh=x36Pf7vElbRsW42CTmbTmfaBoVMvQ9EKr11WIULr0uo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KUIaTd4PxIa51QYHT2xsoRaVqykQ0IJcXC0eM1Z6F+oAGNP9YeFHV889htjplC6EOITchP4/PgFz6rKWf0kcQNGUmafNmCGH9l2kyEEMSOx0PzwwKJQmHRQ6lmQzUltoNU5c35xH4lrL7qtkqxauiifpTCmY70Iok2+4fXxmPxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=grssDVon; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TY7Y7jru; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64fc7538850
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jgyKpshH6DcsqW7WgVfc0iBx2A5lJYEfPD7KMBdKPZk=; b=grssDVonOuuas069
	ZQMjYtOaqoe/WkYbmB9D7tRmyT4HO/U/RW7DU/BQn+7USUNYjPZIHZm1FT+NnJLV
	rtjkW8EScvGl/jjLfmB5ncJurIlSVWJjQnMR7mBkKYsYCdGgo2YJ1OCYfOnJEnr5
	BwXh8Rk1hxk7B8o6ayK6xdbwOqDGN6f6MuPuJobiWnBXGadfyeZ3vAERXDV1er9g
	3DILPs1h36HMoU0OtjKraQTn6lAuimzOdQnfvIaM+uoQCcEh51AjneNOK2tRV2H+
	TISprTVQbU9nPHYqeCd21svGUCRxpnKDFP3RpEe284DhJ5XP2VjTVUMxrXpQIYx9
	RfweLg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5n41p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:54:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89c49436edeso10992566d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773654889; x=1774259689; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jgyKpshH6DcsqW7WgVfc0iBx2A5lJYEfPD7KMBdKPZk=;
        b=TY7Y7jru/XMvSPVvetWy1rnNRzsSQ48WBWp7kR24F59P5fcuoOQPyKWA6q11gR68RK
         3JbvA3qsZ7p8J9d1OF1z7vO/h3We5rioiLIcslAVfneEDpwBfITu06pHe667iZzXusmp
         TN4noMbM0DpmC1FHnQGHOIaatf16W0NLDkW8mTPIAVGX+lZ0Pmb6XaiBLxSjQUcvSnxZ
         xiZSjQ49vyunoJrhuN86G8tzI4luAev7J827YKPMkQj6RYPCzF2q8ZgzfRZR4QT8uIt2
         lKoLBiJfV4cU6g3JOxIBJgPcGPBnIfGycUmXuKaxJSr19Xi3aorXwYzGxtsfJAhlHfkh
         Q7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773654889; x=1774259689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgyKpshH6DcsqW7WgVfc0iBx2A5lJYEfPD7KMBdKPZk=;
        b=rz85QispMmNyss4Kv7c8zOo78sB+FKmw+NhpUINJsxMKIJ7cZdcZV3UjjN/tPwtftF
         isvQxTz5RexXYtXp1veQr1ZoYFwo9C41oT5ouKvfUy+3AMui0u9g+2haZpk71YhicaQK
         GzWVNuSJLixWnE1ijm4MsMYOycv81pxn6RTSdbBu2obWEVOvHHGt8enfb2dAroSIwpF4
         7n/YRvu7raJEjCv/RzDo4ebhlQHGCGvOOx2iUIlJ5guvMKFrgH445x3bcXHSpvKKHfUZ
         ANVsr9EwrV5KQkxr2TGt1zAuiTSc9pPKr0ZRqxza0/yxnY5bEWhZw1Y5ibMlwUibk0R+
         xK0w==
X-Forwarded-Encrypted: i=1; AJvYcCUlasUL+67LQae22cPRO6IiSM+fbKdKkcfWoENdHHFy4rWY+RRvrHqKWdxRHIlqG37z3Yob+4D6XKu7@vger.kernel.org
X-Gm-Message-State: AOJu0YzCtbyiIGFxxKYQ6ey1KV5TXxIz2eAm16u6ucd6hIpjfXRHa4dN
	iIM/oM0B99rwvupVUgjJ44JKaT3D7Ni5gumkmMhIcJrlsxYhE4oZ5iExPCtM1Qo0VZwsP5fgSof
	Z+diME9BxtDU5f53aC6fl2jfYztYe0J7Judlbxpn9R/vi4i45bxx5u9Mf6YgrmQMQB6S0HA/G
X-Gm-Gg: ATEYQzyJRh2J5f9U4kPx/QMl1MknX30lu9v/CPB0BLiScCAcWWHnqF786qDaXAUXtrw
	SZUXML8n70xS2qS3bspqsSWkymYhJZ96Qu9BLE1R6Y99V1MOsndHQtY9zJTMjsuvrJfssGeN/yP
	Uc1xTypYNwDYKro0vgW94pQmHdiSeeJ3izEQVOMAovUq4d7seRz4QfTsUoMZ0E7MBVJs7mHeziE
	rpm6HfCERZVkMyHGxXoMnb6WUAZ2ynwl2VIJCmkDzi9Qs7rRYs77rG9RwX6UX1cwTIMem6JI+93
	GLqs90VOXjVvTrz3arKxjVgORrZ07C9zB6YShsLF4cMW0QIAdAWkyETCqRlxAlRaHCwiyyu1EIx
	ZN6Qc9/qPUKXjhmJBZjs/OJ2v5m5xyrBs1F052GBbZkxKyAn9nfxAJZDXzsn9OyRIQFolO2kWqG
	C1PLI=
X-Received: by 2002:a0c:c350:0:b0:89c:47e4:41e9 with SMTP id 6a1803df08f44-89c47e44552mr40701186d6.6.1773654888700;
        Mon, 16 Mar 2026 02:54:48 -0700 (PDT)
X-Received: by 2002:a0c:c350:0:b0:89c:47e4:41e9 with SMTP id 6a1803df08f44-89c47e44552mr40701036d6.6.1773654888233;
        Mon, 16 Mar 2026 02:54:48 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cc19b84sm532803166b.21.2026.03.16.02.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:54:47 -0700 (PDT)
Message-ID: <df8751b2-0546-4d66-ba13-b16f8c0ae595@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:54:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] arm64: dts: qcom: Make a common base from Redmi 5A
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260315-riva-common-v3-0-897f130786ed@mainlining.org>
 <20260315-riva-common-v3-2-897f130786ed@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260315-riva-common-v3-2-897f130786ed@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Idbnboaqv9N0Ug5GqtEvY_g75awCCTAH
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7d369 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=hBsfu5BoBQgbZ9FLN5YA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: Idbnboaqv9N0Ug5GqtEvY_g75awCCTAH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3NSBTYWx0ZWRfXwa9g82tj1CdC
 AOgkFZzxNdrIv5SObICvEKVTL9hd6WRq6WeounN0mkadaap7ub7H7rF9/wGQ/tha4nmMq8FD9ke
 54c8ojIjnMdxtMRlaMaB+7W8YEraDAoFq1KR/WKFb2mskLoXmdBq3N06DXi3GWDI0UMNZENVAh3
 GB59lIx/ozLqD3VSggJF4Jei2eNM2dZ9sqlZvJXwTuXHbD756XR/3XxXBm7J1IK8YFSzQXKVloP
 jOQStBY1YuCUmfbB68X2xHNUoQqnYpihdO/gioAD1KUD5Bocb45CMEpZm3ihzg6FW+KJ7jvSB5T
 lZdiQZKtBXdQt6fKsmQG6HAX1MH/q6AjpNfCPEjTdG8MSIWUCEcPXN9L0rZmXNvmZpmmajova3j
 tS39XF0wly7J4/eb5+m4iq7U9e2Dm2g9GoTv7m5G9WCRgGw9NF3hp3cI0CvAmvYt229ay82zt3f
 eDBq2QvA2nKr61xscsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160075
X-Spamd-Result: default: False [-0.05 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.61)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mainlining.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276073-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E873B2979B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/26 5:26 PM, Barnabás Czémán wrote:
> Redmi 5A was made by wingtech like Redmi 4A (rolex) and Redmi GO (tiare).
> They are very similar, make a common base from riva for avoid
> unnecessary code duplications.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

