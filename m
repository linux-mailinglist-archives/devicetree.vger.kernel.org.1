Return-Path: <devicetree+bounces-320889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v/JYKQVlS2q+QgEAu9opvQ
	(envelope-from <devicetree+bounces-320889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:19:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F05670E055
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:19:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=BD7VG03Z;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=XWzD16Lx;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320889-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320889-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD8E7303D307
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 07:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5033C395D8C;
	Mon,  6 Jul 2026 07:27:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1517430F94B
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 07:26:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783322823; cv=none; b=e4vPF9++YY3DdNNdN+DiyfSv24htpO4xzu+wNP1IMQDOekdEA+SCeDuE87kTHmjbwGOcclSLlNVfFQPZA+i/2ZkqCTK4E/5sUZiKx4Q5p2EGayRAOFjogfCy3Y8YWXwEkcpO0zbqWWXfGb1rd+s7sMbGW478IAVZHuoZoUsMiOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783322823; c=relaxed/simple;
	bh=VGLv6qBT0VwmOrPenguMQEV8wXTrjXIc/6Va/Ksm0l8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bijCZz7i4PGzfMUAcOsgcZ4kRooqJzeb8AhAUfTeEDwPK/gEHgpxfRD9z8f56127wlB3q0yZHUrQaRGSo4eRE2Yi2GUdFvFTrbxt4l5IGkZMmrREA/QRSTg9kNGrUdmAbNNGcg1cOOq6xErrCGunGD58SDep4iGoaxC3HNy8lCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BD7VG03Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XWzD16Lx; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66641hAG3470558
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 07:26:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VGLv6qBT0VwmOrPenguMQEV8wXTrjXIc/6Va/Ksm0l8=; b=BD7VG03Z3Gb/2bej
	HnIKbVZXiOyTjbXtf+Pjc37AwitscG2b1e0NpsyXV9TRbBaYWwJqZe/mkH43WCyZ
	DqDQoOZ2Rn+2uKnis9swKKwfr7wl1erj05y15cGUGrE3UqWmzcjqd4xL9l3dfMtV
	HD8jEEVxHEX5ekm/UdjM8Dxfja4dXJdHcceHcAsRl2enWfrCCP54tQT4WPrxpydX
	t8JowvdhFm05lKp5VhXChODrELKO2xam3k9O9r6BApMReFIG4f3guC2csquP/fDQ
	mfNXfff29HQaYZ0StftSwLoeQWy5dNsKln5j/YMBeB7hi3i8cI22CQ+SHnCxj8dl
	8xdY2g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6txemwhv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 07:26:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92da6f3cc81so334130185a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 00:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783322814; x=1783927614; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VGLv6qBT0VwmOrPenguMQEV8wXTrjXIc/6Va/Ksm0l8=;
        b=XWzD16LxA6giW3r3qoXF2Pbq0XGgEVPxUa03xK/vEOBsZ4ZL1Okz2ViR7dybyfULns
         9KlW9U70zj7TBo5dqSY/ZSMQYx2HZf8JqMMSNbMehpdGQU2K5cmNA/BSXXd3Com+wK0K
         rnjgDAZG2AtsGh5Ittbn4F/Am35IAjlF8mFjrNTRRgj3gcql1yrfewXo0sEkcRz9vCRZ
         GEUC3vMVLWC/x4CScxjzKqZzq8tUc76l4YgZGhmmteHF5Ln+EWnJRnsPq8Xwn1vNYyS8
         YoiQ0DJQBArTQlTXJECvuyBo8enwArxtDrZ04tbwKFSilgrGo4yTXeRmGXKDzYFCB4X4
         lNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783322814; x=1783927614;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VGLv6qBT0VwmOrPenguMQEV8wXTrjXIc/6Va/Ksm0l8=;
        b=EZUWu2lP/IY4xnRQzvAGqwJTGKL0C8YV9T7qg400kRjY0Jcgv19GbGdqMiieW27Ni1
         s6j4oj5ONVyPy1YkOkp5DH5VRQU2oZbak8fKAohau6xBGRe3JTQ8D5HhBoAs6Oz036LG
         ws3gPQPHIOKwqmKtwk75fQakBsoT8CgQvStVUz2n4mes7tysK4+Ie6YAqRmmLNz5F/Th
         Yy0PnSTLZjnYbg3zt4sVJqUENI6sHbB6LmdWerAbj2uKBv0TIuE9HBkV+N2f+vm1SH6S
         ViHZVs56Ecg5eazPK2qfAAsXqV4+6LWDsyyVrwV37QRMdrve6MqHhq4+hFaVtXFUpR1R
         Xv0A==
X-Forwarded-Encrypted: i=1; AHgh+RrvXRA5xsfy5txDns7fnjCKkoJzJUsmDaYgeYwYlTWefASLZ3qBhPTQ9C40kY+/J6NiYD7+k9cOmOl5@vger.kernel.org
X-Gm-Message-State: AOJu0YxPd8EAXqmgzk5yfV4ZrNgWoc4j1gBAhsfs9ATLPZBAKLaInGwK
	Ni6G835FZceJgyruLebYX3ruoHvM0z/jVChI5aJRUggA+NflMQER3dvw7Dig2qL9EOOenDVyTs4
	exijLfuw5QR3mzKNONNok2XHawHQyxWYbwZEBCFnTZczPVj0z8H+Z1487qy1SP3fE
X-Gm-Gg: AfdE7cmfrcVze103WNZ4s6HdUgy7Tvh8ULNMN4vYy36m6vbaGo4/ZO/RX/AZaqhWS2S
	Ix00w1hNpa1pV2uyo6m1ys/rHzcqRuavnWidSWGZOkADTtsGKK5oeAMn3EBunGGVln9SPxYEpR0
	1LhPkqESv/XCKbwQcdrujLzaCA/eBrdb4ldPumIGdg7s40xKHiL++fSS0C5jQQ67LwHe7+bs3Nz
	eFyUfxvf+0YG7NxlCoa40a8WR0qxE9nC5QzXRWU4R5DvlDnxlEmuIBELnf5e8rwt5hy03KQGN0y
	HUktWX3wyg6Y+a3khYbTYW3rR887kvfwbI+eyCNP6jImm8tDkMtpoHUBOoizP/f8omMYJovHrYL
	+cPMB14HMak/yCfLVFrjGMrhIFwc67ZRHsD39jlLK
X-Received: by 2002:a05:620a:4096:b0:92e:94a7:16e8 with SMTP id af79cd13be357-92e9a3544admr1391190485a.15.1783322813799;
        Mon, 06 Jul 2026 00:26:53 -0700 (PDT)
X-Received: by 2002:a05:620a:4096:b0:92e:94a7:16e8 with SMTP id af79cd13be357-92e9a3544admr1391187485a.15.1783322813384;
        Mon, 06 Jul 2026 00:26:53 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493ccdab3a8sm284626705e9.6.2026.07.06.00.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 00:26:52 -0700 (PDT)
Message-ID: <f5d2ba3f-ccaa-4056-b4f1-bfbcc1408941@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 09:26:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dtc: dt-check-style: Allow space-aligning indentation in
 DTS
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260706071446.87669-2-krzysztof.kozlowski@oss.qualcomm.com>
 <20260706072129.965D31F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260706072129.965D31F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDA3MiBTYWx0ZWRfX+Cn8Ogx5hnxE
 Kc8GHrVGQ1AyMMLbl1QEUu4BGWRf0moWFW85kX/OTwkkIkGItylMUXOBTpBfiEi2fiOwoitn1bg
 v8e9Wj2a8kary/X2+4+q7oY+mbvuVmo=
X-Proofpoint-GUID: c_BF5hiGkLmMlonzDA-ni326s_gI0JZe
X-Proofpoint-ORIG-GUID: c_BF5hiGkLmMlonzDA-ni326s_gI0JZe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDA3MiBTYWx0ZWRfX5+x0/hKb7R1i
 AJonwi8L9KzHRIm0wmiz8u/ABvRLQIfbUrwmOGgt8Fkpp9KItGhagAFgBuGMUwpy7LrvRe6ptkl
 umw8SedXAQJMqPrRF+MjpRbxZ8B+o5ps3+AUsm/SmYlNUBpGH2VxKqyrbeg3DXN0JzPTJbUHdGv
 6n/kf9UIXyBY1YceVXqYU5hu77MxMrswBGp1VWH3BQfq/SsHD+9KjfNweuM3RKB8fWc4VbCXpLD
 T73PnphWK8ZduTGjNIqGmaPL9K8pu9cz6iP1euHaPXSIhUy+Xr1Sx10ceTTbCZNfufn2vr6X4Xo
 rIGekL4rMw05VE6v8+V6f262MHpslmEShZu/a54aGSY5o4tXZLUJLYdio6ZTzZQCe0VmpB6VH1Q
 LJkbWWzj76YR94LKraQUn5jQBZZ3HBqRGdRU+JOAsAUPMZYnutrlZkAlrAil+OFagLwqqMLAZ3Q
 Hbrx4qXHOiasIsFi0vw==
X-Authority-Analysis: v=2.4 cv=HLLz0Itv c=1 sm=1 tr=0 ts=6a4b58be cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=v6m7V3VtAPdBGwaNRcMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-05_02,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060072
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320889-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F05670E055

On 06/07/2026 09:21, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Low] The relaxed indentation check in `check_mixed_indent_chars` permits the 'space before tab' anti-pattern.

Not relevant.

> - [Low] Docstring and rule registry description contradict the new code behavior.

I'll update.



Best regards,
Krzysztof

