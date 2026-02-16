Return-Path: <devicetree+bounces-265661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKp8Ep/Pkmm1yQEAu9opvQ
	(envelope-from <devicetree+bounces-265661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:04:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA24141699
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0AAB8300231E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 08:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F442F7ADE;
	Mon, 16 Feb 2026 08:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HMi69wWK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b9MIuhGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621F291C10
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771229083; cv=none; b=kP3xHNuIb9hFhzE1JggPD9phv1zZxpfVZ1DITdXtNzssj5+VyKsduvtP8KFuqJ8A7gdf/bmtdBLuae8Tyydr4DyUTQ/GqqVCqZuI/W9FM8t5GfelaMMnkxP1zo6BLR2z/6X6tpuTz6yqQaPIkb3pUlxzgcMw69+7sSjZtDhWIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771229083; c=relaxed/simple;
	bh=pBtE9DL5BTRf7rTFWdzuOuE87QBnLTwQaL6W3mK/dTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rVDE4EnmpCzutQGOd8fjvCM+IOuQZIUf6vO4RWYQARJfleI5htUNQGHN5pWtlZDBfzSXD7z8F9b2iO2a+/8k8Pkofksd0pWghRyiRPmv4x0WRFvW+V63o7BbN09sBXa1dsKr+QGpvQUtGIErUheFm9yAQ+c3ffrxYL/KsoYn/+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HMi69wWK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b9MIuhGY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61FNCsTH1813118
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:04:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pBtE9DL5BTRf7rTFWdzuOuE87QBnLTwQaL6W3mK/dTA=; b=HMi69wWKosR8Go3c
	zdgG1s5TMXw2nQRjcn088vPRpp91qiy83qBH2XaFeJoMovUZYwv4PqYi6Tc+Tcbv
	y2D8avqlQGhZIhvgBbqj/0RUjphWALebLOcovi143xYSLOqp+3czyuM1FPzHtS9A
	zek2zY75/5SsMuDvu0tnEASWLfv9QCx7BI9Z22JIwSVSbTGolkV7f00lDxsy41hZ
	pKoCOc+SoEM21goWQ2Bu4FGsytmB8VbMK3UX7eIoautbrK83UxvUp0m/pfZigK/0
	hVfeb1+P2AQLd9foR027GBjToSNqWOE+vAneHnFfmh+PTwbCXABnyBOahl+cbhy0
	CpEyiw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9gwub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:04:41 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c62e3b40e7cso1197004a12.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 00:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771229080; x=1771833880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pBtE9DL5BTRf7rTFWdzuOuE87QBnLTwQaL6W3mK/dTA=;
        b=b9MIuhGYhGYIBoNAKkaCiGLvV+Iw41y04LdbWn0othMNIKdpqQiCZpKCLNEJhz91SJ
         53w0iaYam67RkXH/HG9XL+Ris3ww6nsf57wtqu2P+vmckpDT7m4k5FE/DHcXp0tzHVon
         IyEt0OcPqdz2YzLid7QkeK3YmwguQiTc2+KRkiq3Lp2TPme4KWA+Rzq2TXbwgfJ2Es0t
         9m/uhtiGAlFLzTtEmqf4q4JWtL3dEni1h7ShB7OZFVp0WePiKUOH333f4+DYzticc4kg
         MklAmwSKVcCi4aAAdD7gCcqmCwpg3c04HSUGOuc5u4sE6NOheWPkk68ajRd6e7SudSvo
         ENOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771229080; x=1771833880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBtE9DL5BTRf7rTFWdzuOuE87QBnLTwQaL6W3mK/dTA=;
        b=nO3C+3WFt9+g71bXAMR5TQ9jhANqJIdlKBbQsnCf+1hgJ5GHKk7Vj7yxpC6p73+fe8
         sSZVlLDTz3DLFDEx2B+u8sP8zJeQNQEC7WGUQfBTUuyDIijHUpWUVbJB0rbkQt3rJOuN
         BHmO/kgHbEaujq1Z26zLPEMJmgPqf0Z2Hl0mqKzhrR/W5uKT87pPI1U7eQyBS4SFqqdx
         4JSICKh+Pft66ovS4bB0eohU6c0/FpxYAHin5Ix2JxQ42DOMGXV0OgP0IH6gaPhFy+uu
         jU4JgZJAVi25Xbtt26xSgOQ62ydVrkPrKSq9p+qMPndibQcYQOq7noxA4w6w01OVb40+
         bG+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWybJO7oyZ44zUzqI+SQMxKHwmb8K2q/nU3WI56KjqY1SVe+/bQyYbXRuqJyCxSuCYmlkbZRqg8OctI@vger.kernel.org
X-Gm-Message-State: AOJu0YzSzjXgGehPzC5V/RttvfLf7E1BnJ3ntEuqw8FyOpCsQHthIYg4
	A6LqdDhan08gk7hv6ki7lBrRcbcfxLyt3vRi4k6zxLgukxh3QD2+ysqRGjq7UyTAKF9uWQuPob3
	ka28CafFF7muB2p8/7uRpQCRi91g4VMUpXqKbzzqsp6zGyv0RJRNLySfIMovMK/u2
X-Gm-Gg: AZuq6aKxwgCLvHQxgnSDWBjVzNQgQhP48jrWiTa7R6J0ReDp1qOqZsLOgGfnYMRKZW4
	5YcJ1X6tStOPcaxD/pWZ9bilomaltLOGORl4T5RVfuf4P8MeDg8eN2OlcqSQjqN+mWXxAE/fswf
	ourdSRYhejLN2cOlXbmRnPHJGiJYEwplkhQfJx3pT/iPpO3eHyEVvBSS0piLGYN07rcnlv34wub
	lpZU/b7jsjoN2pCprMqGiCuUBGANev86CC5xdj/WSXkez+XZ1WJFbktQ8TcNhwFENi+0WelCBNZ
	9Yifhd0GU2r+BeL5r1gvWEQq+t8pdNzVju5p8RK/XawBnMTAmwhD+BYUFK7GSYD80q9qexCNmF1
	Pe3oTw2OGresM59D8dPxrXk90Dav9yL+XaKUDJEBdutFfsQbDqQ==
X-Received: by 2002:a17:903:3d06:b0:2a7:cbe3:a6e3 with SMTP id d9443c01a7336-2ab4cef9723mr82266635ad.2.1771229080160;
        Mon, 16 Feb 2026 00:04:40 -0800 (PST)
X-Received: by 2002:a17:903:3d06:b0:2a7:cbe3:a6e3 with SMTP id d9443c01a7336-2ab4cef9723mr82266385ad.2.1771229079687;
        Mon, 16 Feb 2026 00:04:39 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a73200asm63220775ad.36.2026.02.16.00.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 00:04:39 -0800 (PST)
Message-ID: <be4fc7dd-e7c4-4f2e-ab5c-543d8fedf7d6@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:34:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <957d7896-cd01-4864-bf07-e6dbdfff1273@oss.qualcomm.com>
 <2d688258-2e2a-4a86-aa98-eca31627d418@oss.qualcomm.com>
 <af15dfbc-806e-4731-a7a3-6832a781154e@oss.qualcomm.com>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <af15dfbc-806e-4731-a7a3-6832a781154e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: MSY5t5jjQJ-2IH7d3r2HYGBTrOhLlHcv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA2NiBTYWx0ZWRfX4lc0N3UBkhu8
 8SXwAnZRD3oXBbg1QlAhdMQs80t9VQBuTJb3KgwGYBuNRWcnLfbFCV9CcXmyM0bCghMTd0qZbhv
 lcOVfVaFjzlBWhCTtLoTab6AqBeirfYJLWkbZpJWh7rlFe3FP2RGUzV9EPuZ6akvZWZSZt7E2ip
 o5DHr+mF93noUf8VqdzLHMwxcZrtnmQeyhUaI3zQ2PnK/cJVBGHb2X5OO5efIgA/nqkv/Rmauuc
 2XpavTW2zUKAnjNzGOrPbEo8tx49WCgoz3mK91QH7LQkwB2QBT2KXQ2CTYHsGg5Yb2Op5wpTFIb
 3iSngsXGdoxpkEHjUuHOhm4b+N+oQnj8mhtjYAhcR7ebLWlKfJ2EYvddBGvW3jqOS172vjt5lUW
 difNn4J28mlbvj2ERQgl1s2ebAAUQTwmpvxWOGWumoxX8qmPhMdgG/oy3JRFjaTUF9AZXlssphM
 dhc+wPXwdxCl4XTkYNQ==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=6992cf99 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=QtLaxJc4UxdN8FgP6j4A:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: MSY5t5jjQJ-2IH7d3r2HYGBTrOhLlHcv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_03,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265661-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DEA24141699
X-Rspamd-Action: no action


On 2/12/2026 9:59 PM, Konrad Dybcio wrote:
> On 2/12/26 4:50 PM, Umang Chheda wrote:
>> Hi Konrad,
>>
>> On 2/12/2026 7:10 PM, Konrad Dybcio wrote:
>>> On 2/10/26 11:38 AM, Umang Chheda wrote:
>>>> The Mezzanine is an hardware expansion add-on board designed
>>> There's normally multiple mezzanine boards (e.g. a "vision mezzanine"),
>>> is there a better name for it?
>> Does, Interface Plus (IFP) Mezz sounds good ?
> I don't know, does it stay Interface Plus on the silkscreen or similar?


I checked the board - there is nothing written on the silkscreen. Internally we call this board Interface Plus (IFP) mezz.

>
> Konrad

Thanks,
Umang


