Return-Path: <devicetree+bounces-269157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCaEMLNpoWkUsgQAu9opvQ
	(envelope-from <devicetree+bounces-269157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:53:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E19F1B599D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E622C30E4979
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E9B35A392;
	Fri, 27 Feb 2026 09:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cV/7bKGs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HOHqeHPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1625630E0D6
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772185850; cv=none; b=mVTh0xTnpdqOXjAPaqw+z9hsahYnAqAl8+hTbtClRoxqBayXIF7LAtUWnCTtW3Z12eQsTUf4oGxo75kbxVfhuFzDEDuroQqax+BiDhjIp9j6Bx/+X46UpphlQyb4Au6TZNlWHU2uP9PyWsQRlpWvsh5DJBL/CppUYxYa8GBiWMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772185850; c=relaxed/simple;
	bh=Dkl45KoqTHeS5zqO1ZGLV1xCurV93dwWOQw1uBuq2HI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qxfLEX+mN6x/Zw6XhlPq0e4XLtVGLDva5iFziYAOYs/RtEKoDIxB9uTG6avGGz0iaik0HF2Q38UsX1wbKQQQhNDzP7EA8GbRkHbJuGlpPMO94h0yNLlg6vz52xtS1LpCD/h1ZLhzLoLGhI7KROMaPu8+HvMvS0rqtR1LOYNr9bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cV/7bKGs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HOHqeHPn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R4GZrN2663266
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dkl45KoqTHeS5zqO1ZGLV1xCurV93dwWOQw1uBuq2HI=; b=cV/7bKGszS5R/9hQ
	1FK4GnQAuNPgiSsd29RZTg3DMbRoQLj+dyqRSEcFhthLLwdn0rXp1XgzxAyL6KHU
	BbEV7CE/aZcEmCplIUzIvrqkiwumjJVtg4AV3O2vacoU4xF0lcCKalz549z6ns69
	WFV20Cy3x2b+POL5vKLKt9yEr2COdkMT4QzYgDqIN9twrAEWKtFxvl0oRIK7tIJZ
	DTkx74IevLmA4asNMu1SXcoK073gRugvuRlTTMVIv06QNQd0ZxacjiPGyviBenza
	XC7Xu6lNh1dOvi6XJz/cmKeO5bc/q8qPnUGyS3MFyGAhWtRtD4e5y6kzPTT1NcH1
	8rujRQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43r90j4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:50:48 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82728e79ff1so844475b3a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 01:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772185848; x=1772790648; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dkl45KoqTHeS5zqO1ZGLV1xCurV93dwWOQw1uBuq2HI=;
        b=HOHqeHPnxRDRPfCArlqW6lL/VyaIOqH/xkhixB9+IK+n+xkdqLO9KvRnKPxUFnJ+Sq
         NOsOAHBN233Jhw0su1Vs7FVDgh1qPK+drfUvkcgeCoDmHCYusIhFfTPcZYJHsRvarG7N
         eF0ZLAPLJHpsoeKe3gI3KJ/apsmBF26qGDb5lYZa71Co3K00u22EwUT5QcicdjwTjWx+
         ApnlX9JAluuUYA/lSFvUYd6+0STE7t3GEfoyEx6FcIvCg03bpiz8CFckOmHEkb8rFArK
         wx4gq2+uXJ5QuJcTLrMOKsxycZbkeEswF+pCqaXztqwsBjposHUsoKvaVt4xuFbtAZGe
         nRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772185848; x=1772790648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dkl45KoqTHeS5zqO1ZGLV1xCurV93dwWOQw1uBuq2HI=;
        b=LNWKtu7iI0tYgOKqYsMquJBhcWFSTZOD/1sg9wmt5eX+iO9kvm4wsIBiAL6U/M2zbK
         DtZ2g6YJNBFo4JzoqG6TWOp4fraFUIm/bRn2/kkrtK9HITiVupyOLjVhqIN+UBoCOI2w
         tDFv67FUXaw0XZH/H6BH2wbPVQQfBtffEPPxpVjRuycShq2xhAJgHK/N6uLGEabSfZ+T
         w1Cj6vGZYAnIvNkNa/AYIibMZaR2trSXTgXVgOvGgwZEE5khBC6dQ/Sbxllzwcr58MCJ
         NPclvAFl3QQcuzhiOpHw4Zrv7hINwF7eNt52IXwdADvMTxuNtzC19v+sc7qzUAkVHdfp
         EUQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+pyDeqw7eiQ8TXsO3TPpWobfRWN391tCh55Zxfxm5RkbvEAF+D4iwogt5aLEt09sikLuWzoy3qFl6@vger.kernel.org
X-Gm-Message-State: AOJu0YzQRKPJ04xZeOoFhU9zvxeA1CVfUAjalLQt1tAD8YLBM0ctl8tL
	J4AJhXe5p9flnJpmLuDqVzQzHq2jnEeXkKULkyV0PtIG5hTbkh1dg9k4/dgEl91rkYB5f6/GIC1
	S5isuhxTQwP7DrS3K+kh9siFMyfuYKQI3UgktYDJxicHOFQN4f9InhO02w34kulwa
X-Gm-Gg: ATEYQzzX7FRYN2jp471HNWW3G8VHqUaxp9qJ+LPmyrf4rBAmX0um2JqNUywTXsrf8rG
	J9m7chuLMNkVTglaGlzVk6XnxPt1DMF2qVM+suhz4wfgF1l7xgteoRKdqinAw3RR2PafSP3Lqn5
	uW9vSL7NCqGdFY6Vt7oQQ711R4mxUMOC55vPTNJSvS/YPAt7TfOGcrdKElJFgOmnxuCfxpUg/CB
	0zjbfdwrg/0pl4jMUCTb2Sp+PkwD5eTo4ZKgALGcEotB8aaKNEMVX91Tr0iTJcNtFZOoyBuu87N
	+1t4Njcmc3tilyKQbDUZl/f6VDzQXH2hItjI3Q/3y11yhWSKCRUz9yVEolppcZcD/eXkxwdHwXX
	O3x4+CpleqXZUIdyI3iB9K1UVQ6agPbezuAl1oj4TCabLGO3mQg==
X-Received: by 2002:a05:6a00:3d48:b0:821:8145:6948 with SMTP id d2e1a72fcca58-8274da51b38mr1657308b3a.7.1772185847697;
        Fri, 27 Feb 2026 01:50:47 -0800 (PST)
X-Received: by 2002:a05:6a00:3d48:b0:821:8145:6948 with SMTP id d2e1a72fcca58-8274da51b38mr1657286b3a.7.1772185847252;
        Fri, 27 Feb 2026 01:50:47 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d4dc6dsm4732240b3a.6.2026.02.27.01.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 01:50:46 -0800 (PST)
Message-ID: <1b34bdcf-79fa-45c1-8ca8-8610c15741af@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 15:20:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        richardcochran@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <a7777e5d-f9be-43c5-9f3f-4d84e16f6e89@kernel.org>
 <jncbztn4xohzns734i4o2hsherdshjgxqtiglh7zf2oz7nkujs@an24wf3txymy>
 <87e3de23-cee9-4789-87ca-e85826af7760@kernel.org>
 <sf4jvwou4wtlxamwgkwb5c7adujz6dwoqwws2aq4z7jjvblbvm@fb5kqkt23ktm>
 <a3b01ad0-faf3-480e-9320-db7b7c426a3b@kernel.org>
 <2pcw4qrgxu2fwhssyf3plu6h4anwiofvdx3ppnfbngibfm5lxz@7ixcrh5jk4t3>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <2pcw4qrgxu2fwhssyf3plu6h4anwiofvdx3ppnfbngibfm5lxz@7ixcrh5jk4t3>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: R3T8ehXvAOfkRmhvt7_UdXuPV-pXTJTf
X-Proofpoint-GUID: R3T8ehXvAOfkRmhvt7_UdXuPV-pXTJTf
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a168f8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=40BG639Icp96ZrZOFxkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA4NCBTYWx0ZWRfX5Qp+HiS52zhv
 VYkZR3GzVVbg4aEADJ0y33IdYZCA7NEoc+rdudu8g6XM6xYDKxqNmyvMCAYrGbFF6Ih26isHjJs
 q1UrlSPKrxOWgJDVER/xMwOU7OmIv3TKyVR5EJawgqaACYZrjzabtjKcYvaEIs2Zyhucux/d0jV
 +yZmhc9ph4B1tOh/EjR7pG8st9ttfjDkevj0GXg7e13ohigJAqEoKR6BNThmsx5L7jTfE2/g2Sx
 HG8GaInaYEVJ0696rAR1NMzBbQtsybQ4N9auZtg2qIpOE3LjBymlHpTMEHtxjQ4JmNxd+P+fVAP
 Vi7Jhtv8x1hlFVfmYx172TwR6POCZtetK0n4jvsCFTq/uVMkNGR9B1qbcj5aIb/oqCL6Fowg7O3
 vZeOQga9nz81Gk3wXdx+rSOJIn4IoLNEFjeE0dpgtB8VgvC0YnpiBsMBRh9yHTt67wRjpTuTP3L
 goTtPoAONMiuHKF2J6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269157-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6E19F1B599D
X-Rspamd-Action: no action

Hello Krzysztof,

On 2/24/2026 3:39 AM, Dmitry Baryshkov wrote:
> On Mon, Feb 23, 2026 at 09:37:53PM +0100, Krzysztof Kozlowski wrote:
>> On 23/02/2026 20:02, Dmitry Baryshkov wrote:
>>>>> So I presume what you're saying is that we should at most declare one
>>>>> level of non-controlled fixed regulators?
>>>> In general, non-controller fixed regulators should not be there at all,
>>>> except when they serve certain purpose, like fulfill the binding
>>>> requirement. It's their only point.
>>>>
>>>> And a chain of:
>>>>
>>>> A -> B -> C -> device
>>>>
>>>> is completely redundant if all A+B+C are non-controlled.
>>> I think that came from me. I don't consider that to be completely
>>> redundant. It helps in reviews and in some understanding of the board
>>> logic. I'm not asking to implement all the intermediate regulators, but
>>> to implement the meaningful relationship between end-user regulators.
>> These are not end-user regulators. These are fixed things which no one
>> touches and no one needs. There is no single purpose for user-space to
>> see them.
>>
>> Why do you not insist on defining all of such external oscilators, rest
>> of regulators, all possible little ICs?
> So, where is the boundary from you point of view? Do we define fixed
> regulators powering DRM bridges / USB hubs and other similar devices?
> Or do we do it only if the bindings require us to do it?

Can you help share your point of view on the above query from Dmitry ? In this case to adhere to  bindings requirements

Is it okay if we define fixed regulators like A - > B - > device ? Instead of defining all the intermediate regulators.

>

Thanks,
Umang


