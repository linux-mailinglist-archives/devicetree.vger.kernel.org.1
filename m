Return-Path: <devicetree+bounces-263644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /CCmN3qph2mqbQQAu9opvQ
	(envelope-from <devicetree+bounces-263644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:07:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC88F1071F2
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B246300F5DB
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 21:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BCF33D4E9;
	Sat,  7 Feb 2026 21:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YP+DvK3F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xeyu90OX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75258333755
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 21:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770498422; cv=none; b=UceZizjlCCXYNViXmyumhtyyRmJJ/PduRE1D6xRC0rBOeowY9fMXHQIAIQkWGZwdKNWKsN3+UNQmZw3Z1vDUk4b3Q0sfIbf/tk8aLTH7GjTRJR4rP1e34I+4oMiTJqaJJbxCu3tieV5CxgA04XO3JrdIQMk07NW0NApYrsAAqgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770498422; c=relaxed/simple;
	bh=opmHruQwKh5lUBX+jXd6BGp75DMGtc/YdC/2Eul7rng=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=JRV1piIBgzIg/9cN3uKXR4iAxsboy+Y+kID2nPjLd2MYNUJ6H0eKduFZ8yWvUrHfqmxwWLavoQdVMEQ81Hu/9spl2xOwP5VNEaQQCSCRiUePv3Q6P2N15IjdGFS89/MgTdx2SBFW3VWN5AbO+lGi9C/XrW+Z1Frz+8IfflgRO2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YP+DvK3F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xeyu90OX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174QYro922060
	for <devicetree@vger.kernel.org>; Sat, 7 Feb 2026 21:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=; b=YP+DvK3FZhuJp1AK
	ht9wFsanQyhIjfCHJCX0nL+3StQ+Dt0uU1Bc3gACOaX1aVgpS/EiR9Y/g0W8QrVw
	7Fj1q7bPRwJ9i0mT+M9wO7otjMR6nG7NAQBulKiPQCaFKD3PYTpCTW1HULNH5BwM
	TOVN5aIxRiEdYZ+fffqc6EB2SYV9JxgJ0zJamqLDUuHBy4jkLdR477DgXpAKjjgJ
	ISVM/7y2OtHuKzE+jGw9vi5PkjUZ75BoFmx2rzgI7i+FEXHlfuGMt+AS8uqdsWGr
	lsUEWKnKBIwIbv2MISd/Ylpmu9w/oWYjOAsh62j9ekbD/TbdTBWzEGkervWI581v
	k1tDJw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xccsakt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 21:07:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5033c483b76so111747551cf.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 13:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770498421; x=1771103221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=;
        b=Xeyu90OX14ftkAsCtMuW1DS5h0R6puJ7767KzMNM/G9CigwYPCClLg2BuVcZymel/2
         3gK8JMbT3Cwb42X+YPnkJuVcjTfrq37a+gv47tTIVRsVhxcFRks8PrNyfpdiYCSETop8
         JJrtvZ5B34rPfzVMV3ADaFi+761gGljih7qQZo4bgROt8brqVUmP8EX+HLNaF7IFImR+
         kCzS/tqVmJN3r9NXKKWHTXzZoRGjPceVCokl8EsAd2rcIMdG2YwTTjMIg0WA7mVZ66ti
         lHXEbOf36vwg/8/Fj0mD9REtJDrmyZniXO0T2hFK2MU91DyBf4Vxu7BRelzFWh5y6dmH
         Pm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770498421; x=1771103221;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=;
        b=HXsxGHpXfwc40YPgzIVvN4lqxi/TOmpmNQUUGYeUO71qbyLA/powpWW4x9UvxgKC5u
         3UnLo6F6FeCNWSCEo/qQiEM6VIL7VQcql8pDJgDK8OLoycqoOlf6r5NS00FF9LiSPW00
         fi9bctalYkcAF8hWN4XVxY9wMW65y54RD0OqxSLAnaUgvddw40M4fA7c9Iz9nP3FI8pt
         d4n6AkQZ+t9D+J0AM6xFBDhBmogmjyyYw6Mki4doYy9PMn3XrBBWuuoppcMceYbZw+3D
         ylF+27TaywhkNVl91XsSJVAwBUlPVRXJYs2lNtTiTR0Z84YYSjFrR0224ANRJ99LvUrA
         KwsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYVSACyJY0b8AS/RiEKiogyeZzJUD4pa1vy6EjID2YF7juTpsw0bRK5ay0h0BJe3RTxCoHXd8dX2xf@vger.kernel.org
X-Gm-Message-State: AOJu0YxTMN0OHEHpYXDVHRUHtkknJS1FiI8rDnp8UNGUOpZKo/fLQ3aE
	MozaHjty0L8l5Oy97iHZt+vUd6zftGYBsQ6sdrYhHMk35/7rcFv5arG06SBnfuFIgVUy7RqHOkm
	4iWsxo5FXpqbr8mQ+w+s3bA/NwEJoAbx68qfWAzkGcqzZZwRsoFAkbv6ieTMVk2b7
X-Gm-Gg: AZuq6aJac+K1fTWdhOaol5q3I+Vw2k5mdSmujbdamNwLDeVaRFnGIj8/hX/ywg9gPa6
	UoZtsSdn8jLqGYx14wM+ZQcMsDNLFwuPCerRj7sZtHncM+VD7gsIarWf++90kXDYwrSCkNWXDnh
	RedcHItHnl8H0pOCrU//2ohdMQb8K2U7Mi+QPaDAFy7Cg8v0LtIv/9pO/inpVHDX46+zLXyWQ/R
	7m7JRBc2vWV2PwwUwtAzZymH54XCyX9ZP++DGJ3KhIA+kMbpRxNa8SYomUKeB6cvcxFIMXJzFfw
	YUsmX8IlKwhmThxH8WIn7GFww9HvbWWajTRyPLOGkChY/m+DkedMDfbIPDZpYmBG7ZHmB7f92qT
	fAE+4O151lv0IvtZ96x23eidlMV9gF7MIRaKQUQ==
X-Received: by 2002:a05:620a:46a1:b0:8c9:ea1c:f21a with SMTP id af79cd13be357-8caef40967cmr778036985a.9.1770498420682;
        Sat, 07 Feb 2026 13:07:00 -0800 (PST)
X-Received: by 2002:a05:620a:46a1:b0:8c9:ea1c:f21a with SMTP id af79cd13be357-8caef40967cmr778035185a.9.1770498420227;
        Sat, 07 Feb 2026 13:07:00 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b25d5sm15948755f8f.2.2026.02.07.13.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 13:06:59 -0800 (PST)
Message-ID: <5d7ef1c7-1d37-4ff5-8aab-ec4b70cea4ca@oss.qualcomm.com>
Date: Sat, 7 Feb 2026 22:06:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: Add RV1103B
 compatible
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: jonas@kwiboo.se, Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Fabio Estevam <festevam@nabladev.com>, linusw@kernel.org,
        Fabio Estevam <festevam@gmail.com>
References: <20260207130642.2833312-1-festevam@gmail.com>
 <cadee46d-589b-4833-8650-691f7a0f8321@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <cadee46d-589b-4833-8650-691f7a0f8321@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDE3NSBTYWx0ZWRfX31AG3zGI+8Z6
 UK8Nso6qGWImuskIk8691EnBLQwa80HW9pDY/8/BBEXboMXDcP6incwijqFgvhI9HGUnoMCa16B
 84Fi80ov8ges87zx4YZWtcQL9PXXAQp2uthdKMhD/VS6OfBJ2MRyA+kQwMm2BfqUSSf/C0r7q7U
 Md8M/bu5wkdA7VQf29IMourO9hft5Dy4j2UdHC6w32V/j5UtGmlsVae85ARZWwc/16lb77C0ew3
 mWLafw5Z/xZNfOcCF4c0NvOyZv1iIco4gVhZbzm8sv2viHEL/gzs0i8apQPZhv0DLcVs3sHWWBK
 Fjbhg2hBGkpsPdX8q+n01zFaC+ZKgwLnE0sEeIh+YL6p+aXd6WbXDF0HScXZaQRLZz2coUO2200
 CLTShlTsneGgHwWecPG6EyH8ytWbnxVy2djmGTH/NwzX1NlmPPTtYkX0BEQo9zQ6RyRarjS8eId
 yoYRDgfr9maWGRDVlNw==
X-Proofpoint-GUID: FP_jR9MXnm55PWpNLORP6DZMDBVQ5FAu
X-Authority-Analysis: v=2.4 cv=ft/RpV4f c=1 sm=1 tr=0 ts=6987a975 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Zk3OmFfbAAAA:8 a=p-LfKV-GAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=69EAbJreAAAA:8 a=UqCG9HQmAAAA:8 a=2o1m50Tkw6fHcJrSExoA:9 a=QEXdDO2ut3YA:10
 a=fTqvnDP52ccA:10 a=kacYvNCVWA4VmyqE58fU:22 a=97BuGM4RKn6GwmfqMd6i:22
X-Proofpoint-ORIG-GUID: FP_jR9MXnm55PWpNLORP6DZMDBVQ5FAu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-07_01,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602070175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,vger.kernel.org,lists.infradead.org,nabladev.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-263644-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[live.com:url,kwiboo.se:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EC88F1071F2
X-Rspamd-Action: no action

On 07/02/2026 19:37, Krzysztof Kozlowski wrote:
> On 07/02/2026 14:06, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@nabladev.com>
>>
>> Document the compatible string for the RV1103B SoC.
>>
>> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
>> ---
>> Changes since v1:
>>  - None
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


Jonas,

FYI, as you are a maintainer, it seems your provider is blocking
kernel.org, so my email bounced:

<jonas@kwiboo.se>: host
    65cfe723d4a24d862c1ddb1ee54a60.pamx1.hotmail.com[52.101.42.8] said: 550
    5.7.1 Unfortunately, messages from [172.105.4.254] weren't sent. Please
    contact your Internet service provider since part of their network is on
    our block list (S3140). You can also refer your provider to
    http://mail.live.com/mail/troubleshooting.aspx#errors. [Name=Protocol
    Filter Agent][AGT=PFA][MxId=11BCC1D39AD7E160]
    [CO1PEPF000044F2.namprd05.prod.outlook.com 2026-02-07T18:37:25.857Z
    08DE60E9D47B9C8B] (in reply to MAIL FROM command)

172.105.4.254 is kernel.org.

Konstantin knows that it's difficult to send to @gmail and @outlook.com,
and probably already spends way too much time on this... Well, if you
are using outlook, as the trace points, I suggest abandon it.


Sidenote,
We talked with Konstantin on IRC and to mitigate it I moved my setup
away from Gmail, because both - Google/Gmail and Microsoft/Outlook -
probably should be considered as evil and non-cooperative email
providers. The migration will cost me few bucks but more important quite
a bit of time, so I understand not everyone is willing to do that.

I think maintainers/reviewers should soon revise their email setups and
do not rely on direct receive on email.

Solution is to switch to @linux.dev emails or receive emails via
lei/lore or korgalore.

In the long time we will not be able to use excuse "I did not receive
the email, even though you addressed it correctly".

Best regards,
Krzysztof


