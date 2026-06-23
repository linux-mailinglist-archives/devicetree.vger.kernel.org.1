Return-Path: <devicetree+bounces-314733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pIkkFGNVOmpS6QcAu9opvQ
	(envelope-from <devicetree+bounces-314733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:44:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 906436B5E3B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:44:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="YB/8UGmo";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=DchT3qzt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314733-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314733-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BDB53056840
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 09:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA2A3CEB8D;
	Tue, 23 Jun 2026 09:42:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1D13B8409
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 09:42:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782207764; cv=none; b=Q2fZduZqhzdexhbHFduevhd6vCZeBzdYGLBy0kSRE4qwJrRgNiTJydJsnhh/sdpZSCkt+A7bdrjf7CwQFOIcMlhz35mOnnw0KYjGO5FoGoZMFm8UTxTTf2yydQ52Yb0adcvCqvwDi+HuONduFc9u/g26koyR5jlJfoEdsxDh9r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782207764; c=relaxed/simple;
	bh=2zt4mDfQLCcN7VZdwKtxZoDHgil7aJyHwJKdbeBKs4w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R1rBuSxFvH4OocDhNSXwP+7XwGFuOYiDfVI0QB5LvQuvlcGA5C/pCbXwpZn+EHQbGdpSvjIaW/acit6B1tZ2Q+Vl53CxQHjM7TRYmjBCiN8aBRI4ky74JGVFz7IFJz+Qftz9YOsQuAPJAL+bUCyz/6XLCutuSrHfL594h2/mwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YB/8UGmo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DchT3qzt; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65N8kCZl3354729
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 09:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gso4/eCWqTGK9+zw2V2gKqpch+D4ZfB1l0eAVrB6LD8=; b=YB/8UGmo765MuLo0
	dXdHA69ayE7MXPDuMXJO5te4qaOteA0rpPktiMkss4WuOYCOqi2vivLey+r3TRaf
	2jQVDKIeOZxKis0Z1Lm8QyUyb2j4zRT/fZF/8fX4Yvb+vJsGDtwjmsk/94nqqPuA
	RkmrafsyDgYqPaiFZLco1hdHb6ac6cjZ6CON6aO2OcrrHaKAsGWr7rzdp/wlGlxY
	ZkRRJCAKnzu0GMf+NQ+8WpAy0ezSv40+rCA7wrD+CQLpyCa7/pfGWpAeXCuhB4/w
	HoK8j24/Dg7iZn9ddvMBgHF2CxJGQnxmfguyb6lBLHtblo6MPf9V/TM1N8nWCOhi
	QqXxQA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eypx3894b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 09:42:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c6a9bbcc53so56558705ad.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 02:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782207763; x=1782812563; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gso4/eCWqTGK9+zw2V2gKqpch+D4ZfB1l0eAVrB6LD8=;
        b=DchT3qztJF+AEjzIeTnmKTMvlbgQoQakpBFToLIWgTegvCzSKPD6DHpN3oQfaDXA+b
         kMGnbvF7rOIVvNbTCD2JAPi7aN/nBfX4LoDx9tHgDI0q+zraLv1E7EtKMcx+4ogWZXHy
         uigm7lQqVRZ8FJEpY4AuboNza2NuZxVpKGFqpLRAGzx1yVe2oaqCofJk2o3RlIFV5eo0
         GgsYg8jQfdizqNT7kukHixE/aoxIarQJbnCdfe69ZKQY0mvPfmv2ikR+wiH0UwvIvGSp
         dBm5GIgr39iYu9czOpdFF34iVtPk6Bvq/QhQynnxzz0xzGHsF53wS/rSEovNaqP1W1Ok
         awjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782207763; x=1782812563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gso4/eCWqTGK9+zw2V2gKqpch+D4ZfB1l0eAVrB6LD8=;
        b=iw6Nt9zfB9uAwwvIdC0t7Zgom+TaJFcvC8mBWRNAQ0D6eN+EoFsq8JB/D6ziC3zyRN
         P1vaiv4bJFOaTSEPOfbO2JwRhiaXxV53EuJfTFW7O6TcJyQOvrNaoteFr5BAt30NghaV
         kWBi3YQclC96DhOZTSJrZ+tS+Ta+Y1UMUpdXmqjo1OOTxAEo9jLyDwlYgFGDi5cDHmGr
         XAlZOb/3VwV5jdDX4XtLyHpHy9xekspmelrgBl67NKkR5HAf9vOJZkNJK4HbqupsDARJ
         ATQQZhKhXJPNMTYTB09w7vFvHwn10c1DDL4/PNJThuCf2syfDmBaVpaA5FOW2NnTVltz
         m8HA==
X-Forwarded-Encrypted: i=1; AHgh+RpKHwgwFTKfmRQAZo65+LFZvXvzxMppXbYXtCvQof89ny1qWfnxgLaCDXJKc8XDlCsfKaoMeNhVh+X6@vger.kernel.org
X-Gm-Message-State: AOJu0YwrSHShfH3KzyT+HGJyZcBgZnb5pjNogiKSD2KtG2U0SP14mQwj
	Eqp35WlRL5b5YAx61Vm8gbmFQhQMQvz6fNFEkGHVoA8WcMDfEN7JhyBUURas3bT1Ou760JZ3OqH
	gdezS65P57UCvWuGZ27+xG7U0UpVWsgnC9WKKEEHLmVHzACki033t1hGXroakF7C2
X-Gm-Gg: AfdE7ckVyBlUozo0ZFBdJsMRXqVkMuTOI1NdpeOydmM7vOi1evbL46Wi5kC6/2TEvFB
	3jiy95rLzkIb/EsNe6cwrr93zhg00Y+N3MNKqz/4wCvwt1ZgNaNACe3a90JlpJ2KocMoByRh0xp
	plaD4C134HVZ30WbnjrKIfjIhwDlpxxQ2FHjiqDi4nbQnCIKeFl1AE9yCk0alQJepbmkO9r1Js9
	eD5Cz1iBx/lPugWKpkMS2/EowTQ7EDTQ4XHQaZVjqwaVnlY/ApslNTkW6M2gR9MQZSYdan5HWq9
	ShC+hjJ7PcKsa3hBWf3/1DR8/GxsEqLXzl18BWH+9yc3n8tGovyK9ELl18GwHeXUlPTP7ThgNAE
	qiOc66KlW0ZVh/bBS7jo35l4qf2kllhqn1Q9LLMPCX5I6n05GWEqc8W/JbZfvYBOYXrAT/1js8e
	+B
X-Received: by 2002:a17:903:2ec7:b0:2c0:3400:5c34 with SMTP id d9443c01a7336-2c718c879fbmr191507905ad.3.1782207762709;
        Tue, 23 Jun 2026 02:42:42 -0700 (PDT)
X-Received: by 2002:a17:903:2ec7:b0:2c0:3400:5c34 with SMTP id d9443c01a7336-2c718c879fbmr191507745ad.3.1782207762274;
        Tue, 23 Jun 2026 02:42:42 -0700 (PDT)
Received: from [10.133.33.169] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c743bfe8aasm97603725ad.68.2026.06.23.02.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 02:42:41 -0700 (PDT)
Message-ID: <8b0560ae-af5c-4d54-be02-d186be1d799c@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 17:42:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] net: ethernet: qualcomm: ppe: Demote from supported
 and fix maintainer addresses
To: Andrew Lunn <andrew@lunn.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Lei Wei <quic_leiwei@quicinc.com>,
        Suruchi Agarwal <quic_suruchia@quicinc.com>,
        Pavithra R <quic_pavir@quicinc.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org
References: <20260623073307.36483-2-krzysztof.kozlowski@oss.qualcomm.com>
 <0247dfba-1c14-4fea-aab3-5489a36f35f6@lunn.ch>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <0247dfba-1c14-4fea-aab3-5489a36f35f6@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EsfiaycA c=1 sm=1 tr=0 ts=6a3a5513 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=HzQU9uYTMzTt3pVePtwA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: l_1bDx91oUfo8Te2w9hYWac_6JoOmTWN
X-Proofpoint-GUID: l_1bDx91oUfo8Te2w9hYWac_6JoOmTWN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA3OCBTYWx0ZWRfXxDZ2C2x0Bnwp
 6Su8juNf5pcYqhQATmtbYQcwsJS2s/kdakwF8IBUEpENoaaLPtmYHMUrT9r88K9yG0Cnn8hjOvI
 +oFM+DU9DwlhJGu+iVQDNoNmmcP4Djc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA3OCBTYWx0ZWRfX4kAF44pv9SjJ
 7a744B7kQvxG5YzJvnIl+q4OPhjx4kZxkhKGPfzLGZ43SxAwqzhcK8owI/a2nA5LJ2ziJpFgsEl
 xyt8inWwytAi5Acz/gVH6MgS5b1NP2yzDJVQw04V25eRvxFUmhFwBbufK5/VHxBKHCE1EHPglwB
 l0z+zGPHExSpJ5tMSFVballNg5/qthqsgggRO8E+rbCwnoajCEXf7SY/kQGJ7n1vorQahsgRA9v
 vsIbAFMJR/noqQD+yQOlm/6Xq7z4H/FHM32xYFzE726hzbLQleFpb+tCgsgIi/WSVlOvs4GGbdq
 KHLcnCRRYRSzfIvoBfBxqBzve2Vt+Y5aNoAIc6MwJrADuhuN5fWkRhOT8pzcs9lDw4gAGROexAe
 XfOUzFUkK1XpmFBlGnUMaAQKyN9s6k2sf8fgU0cOIzc7BHI613+KIfg0vyjgZhGpepldrs5iQZ6
 0Nijrs89LzR+j35J+Iw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230078
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	FORGED_SENDER(0.00)[jie.luo@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:krzysztof.kozlowski@oss.qualcomm.com,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:quic_leiwei@quicinc.com,m:quic_suruchia@quicinc.com,m:quic_pavir@quicinc.com,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:netdev@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.luo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 906436B5E3B



On 6/23/2026 4:10 PM, Andrew Lunn wrote:
>> Driver is not supported - in terms of how netdev understands supported
>> commitment - if maintainer does not care to receive the patches for its
>> code, so demote it to "maintained" to reflect true status.
> 
> Maybe "Orphan" would be better, if the listed Maintainer is not doing
> any Maintainer work?
> 
> 	   Andrew	   

Hello Andrew, Krzysztof,
I will continue to maintain the listed drivers, so their status can
remain Supported.

