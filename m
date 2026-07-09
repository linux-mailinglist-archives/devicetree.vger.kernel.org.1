Return-Path: <devicetree+bounces-323586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KCZtEAF3T2rmhAIAu9opvQ
	(envelope-from <devicetree+bounces-323586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:25:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB9072F8E5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:25:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Cqn8z7rh;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=g6dxGFUY;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323586-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323586-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E180F3006106
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46650405C21;
	Thu,  9 Jul 2026 10:24:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D5E3F54A7
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:24:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783592674; cv=none; b=FXGspv3T3fXOOfmcSZcqLKmW5VHYtykR/tGp/5zMM3tKohCPEqEmgRjZ4SYRotN+NX/MEJFtj/6bQNVQHFXhFOMfneNvDfHaDqDHftLHGjtHa+VMJfPJHVD8k0Oh5cneAmoDwwcueB9JUKVrTMj+WJW7/ftFSIws6Fm9EOWgYSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783592674; c=relaxed/simple;
	bh=j57617/J3I07BsqOpi6Z2LaQV/7ikkocYo8s6+1Xb4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iUaP/luo1PA1M3kEL2lbYbACVd9OMkwnkbBC2NWoB+49u8+YUuzqahLI/7mh3Z8bvC9/3ZqfionzyNt8260i6zYFx3NyaI0EhkRzcVI8+IPyyKNqushaDxWP5g9A9QnOcWoaEhEQUXg1zMXtvPea0YrdcVoHCg0ILzk5ltVyJkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cqn8z7rh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g6dxGFUY; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669AO3tN1492089
	for <devicetree@vger.kernel.org>; Thu, 9 Jul 2026 10:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x32GW5nzUaHgbY/L3XVJEL3K8MzbpF+CFO/+p4f0huY=; b=Cqn8z7rhQ2oHN5wO
	xDU5fLKebsXLXf3eM/MSTRBIHmDRRE0GnCeLMw7kMg+H/b7ZjQNisAase8PvZHU0
	cYF/zlUGQ1KrNnuXF512s3nBmDc7QsVLtg935r/ozlWUpKxYYf9ZG+Yc1dKLjnlx
	VD+wXBqXraQIm3lJ2ldUt7R8W2yymNoQxWJ0MXtEgxYn5Yixqm/xgG8N08ou25PT
	YgovKbSOWxtloUMpWUGvLF887i5bqfAzcrKbyqKfkAOLBXf7oHzt3+/QfklFIOJ8
	ZaAlj2Up5dz/ZUk4t06n1brGbP+dJ22WtO4ykn6z+J3zL9GF+KflNa2KNoEAqj33
	y7AmzQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9rq341tg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 10:24:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e5e21552dso33233785a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 03:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783592671; x=1784197471; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x32GW5nzUaHgbY/L3XVJEL3K8MzbpF+CFO/+p4f0huY=;
        b=g6dxGFUYYCtc8a/5GZMQzWxyCt5nf14/gBXkVE8pcaHFiawdxL+4bvHqgzK23pJ0S2
         HpqAIEUidS1EFJLns9We3bsaBUIvlrv0yU91UTJfmIk7O9F1HmDuM1D4xcJbVUuvYnRE
         2pE1pP4Qze224tRStbGNtJ+ggL4wGZ7bk5DHZGvPfNeoJuoJzX9dSdlIGEeFLUaMn6xm
         liCy9aBS3VsMd83D6p4yjeipGVYlCwUKPI44BcjPVPpfxXbSVVd16q7YSC4ipT8rYdi8
         XTkL4YjgspeeB4tyYf/RAc71VPv1wFVLUsn/9mlR+P1ts2hLpQoyFpSaaZiBEOrngsdb
         Jjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783592671; x=1784197471;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x32GW5nzUaHgbY/L3XVJEL3K8MzbpF+CFO/+p4f0huY=;
        b=Bo32lrrHOTRU7vFo+LJWMiPt38zArq+DuSwn2CSZkq3IsaRO9ylH+jz3cg+J2NIWWh
         hbHeA9NqBB3yspRBQGiKVaqO38C49ey/aw02VLx1699zruud2pDbY/zxEffRPtIprSc/
         W3uTj3QyW2qKlQvsJTvtqcKy9DQu5X2uUkNyc90+7be6TOHa9aHeYTxh9IO+EpkZSSrc
         fLWIZXSCEbmPEgXrj10MrgwrXzQEMwQkE9TtTzJG229BlaVCN38/kskHvTWooEpLcn8z
         UKoLjTgY2FjQyXChJ0pib3esTLy0eZBGQJCDhPBdIwQ2742eoh6ANWu6SWKkfaxvQW9i
         mLgg==
X-Forwarded-Encrypted: i=1; AHgh+Rrpd4aSsPw9H6Oa4hou4K5NLzEnPs+txWdSyKLtYZ82C2lFmPLj4o70BY7f2EtGh6diLXkwO46kRg8z@vger.kernel.org
X-Gm-Message-State: AOJu0YyhC9gPEW/Dz55ldMYfETA0SeL+O4/XeBSz8Su+c7IDUgP+xmd/
	84nB+0Kzgj/j00tRfblfO7ALjEXMizLA00L6FSwiT2cZd6jQaJv85dZM7NRJcHiq8LWSZS4nr/1
	DHOFJPWKwK6gV3+meF3PFPY9+HSITAGp4N8L6iFfRwfi/aXkdC3LRSfJekpENuqOc
X-Gm-Gg: AfdE7claR1AshNf4QVxL+gvJucoCOuq4+snFTmLY43XcSvlEXQFVTLxY62Yv2ug3jgl
	d0/19KKOeb7gszAQuctp2E7RyKwFn5CZHqxtkRXXxn7h9icmXb5miZkvUoJ5qlK1F0IBPhTCnKa
	tX0SzXORTp85Xmz4a2PYsRsYsPCwfU0Wh6tLhdOLmzNBxQIrA35HfQJVh9TJkhnHtaVLuBKv2Qt
	amOfhH9kb9vV8XUa0yt+CduFd6vm9arLKBZh1VAHqG3YEUEX66YSu2GBM5Z7d3xpG0YfwLmZC19
	tVO2HDWnZaJcObjH5E29cLyAXtHSPXK2CssfeCD6RvF6ZbAu2ZKv9pT76rKJHbQLd6vJntI+yaR
	DVWP03C6Evep8hkN3x8GunbKVOvffu8NWkyU=
X-Received: by 2002:ac8:57cc:0:b0:51b:fe41:4764 with SMTP id d75a77b69052e-51c967ad224mr29082731cf.7.1783592670827;
        Thu, 09 Jul 2026 03:24:30 -0700 (PDT)
X-Received: by 2002:ac8:57cc:0:b0:51b:fe41:4764 with SMTP id d75a77b69052e-51c967ad224mr29082531cf.7.1783592670379;
        Thu, 09 Jul 2026 03:24:30 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15c63c04fbsm285215666b.23.2026.07.09.03.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 03:24:29 -0700 (PDT)
Message-ID: <45a0cce2-3bc5-410d-87e7-325f3c45afd1@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 12:24:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: kaanapali-qrd: Add SoCCP node
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260709-knp-soccp-dt-v2-0-6e2bfca96088@oss.qualcomm.com>
 <20260709-knp-soccp-dt-v2-2-6e2bfca96088@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260709-knp-soccp-dt-v2-2-6e2bfca96088@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RNfnNBTbQlat87_YWrhpwEWlHLQMxlT9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDEwMCBTYWx0ZWRfXzkzUWuZG/zsZ
 6Ct8ozD3ViaqZ7lvfCowTPfvdJXeMG5MswwtNJgvHyb7rQ1ikng7VP2stZK7/CDDZQHr2N32chB
 CA0BW6Z3IUQAvZmoOm61uKGsHmxN6EVNLD1E/x6NOTtVymZVCPiCsvoclbcD3hd/fmRrEjMvVCC
 t5eXKbsZ6Ckddbx6EVEDjCV8dduqYJo3bLkkEYzJBCjm0ogtRz0gduiLNTX89yJtgc/mXz7XlDt
 khdnm0iqPWldUUWnMMj/lrWjB0r2BUF/TmlFZjwLBuSA+VjS7Sw72K/uUlRnAasar80DzJhxs6n
 Hz7tshB0LHoGxKi0qXhZxwCFGhF0R/w4j2Ie1FvQhj3VQLiH1PaKDQZjArNKEsrShMehbmyg0Bn
 yNlDWta1D9diyAC0UL64S8pWe976BghO+Uw8igZ0Vy3pxcZvqUaSKXpNfYywiuErOv2eox09GhE
 cdy2UmALcO+9rcnuVEQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDEwMCBTYWx0ZWRfX4Q/mu6xHPG4E
 sNmXDPgmCrEzdm+79tCPELJ3W+4LOJHYNePQvz0XnVmmVNG8RN1LYE1cPo1TMTHe5dUFGWnXuFG
 D8LS5JUmugOE6HgwHWI+7BgQP7s4/7Q=
X-Authority-Analysis: v=2.4 cv=PYPPQChd c=1 sm=1 tr=0 ts=6a4f76df cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=MlDfNhLudHztO9DQPjMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: RNfnNBTbQlat87_YWrhpwEWlHLQMxlT9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090100
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323586-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jingyi.wang@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aiqun.yu@oss.qualcomm.com,m:tingwei.zhang@oss.qualcomm.com,m:trilok.soni@oss.qualcomm.com,m:yijie.yang@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBB9072F8E5

On 7/9/26 10:14 AM, Jingyi Wang wrote:
> Add SoCCP node on Kaanapali QRD board.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

