Return-Path: <devicetree+bounces-266680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOkyJ8cnl2kzvQIAu9opvQ
	(envelope-from <devicetree+bounces-266680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:09:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A715FF05
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89009300C986
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7110C342C80;
	Thu, 19 Feb 2026 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b215ZAX9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fFEz2+aj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587BE342526
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771513794; cv=none; b=Y8AKQn62WEiflBA6mFU0d9Hyad6gO9G1gxuzt1IVOW16/SGCX/zhybZkFVTvljytdOaa74ofc9CmdB3J28VamkzaclNcBR/GsV8Lk5XOYr8/0euLHSuBqko2RLFNSxgEdYt0Bhp/DT/QpJa5nsi87n/gPThJtHBGMMqzEqLrvM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771513794; c=relaxed/simple;
	bh=S7jFEO9vRalxfn8fN14C5MBAiFQEw81uWfiW74iDBz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DKj5mOBhhlveVhYwL7dG4a40j06qQdRJXAcSI7uU2uJ11lLxk4AXfIexFOZSrpCkP/eXJ4joSZsQObhzQ0foet3+EB0FaEWKUBGrLb1bVTeQkebyDMJcRzqkI5d2d+defMEeMRcAWrbRrpDxrLb61BuDoSxMflb22DjoSZYdOeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b215ZAX9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fFEz2+aj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCP2qj1717784
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 15:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GUyHppmBsynyA0S3gPBnETmKaAVRk/FMrQkiLXcFO2c=; b=b215ZAX9CHQTqCrp
	0FLBfdFLG1j54aWI7oFAgKf5Fw2ntokl2b1+aFj8GGP6Qzo0G8ZoPrGPqhhnSYeC
	QdHJh0FPE+KGGsUhygf+XDuR5YW5PgdV28R9JxymeMZqYJDLpO8+oP5OephS3sQu
	2FkVpQWpx1N32M2XbZxlV/Dm5J+57wE0ys/NY/1NASiMsQbhYn8XAJlAaGoLx4rh
	EhxKSN3b6ozfqAo0+mAXKwAzaEijzBWLX7FFsS5sihnw4XprOfY0xzneXgNTc1Pt
	avxubJYSdJ9U+hnbD1bTKShA7tyCaKEbm/7qoD7Hv+O0Sl9Ds2lDAYDFfE5Wrda2
	TwbPjA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce2ghrg6v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 15:09:52 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f5406916d4so225017137.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771513792; x=1772118592; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GUyHppmBsynyA0S3gPBnETmKaAVRk/FMrQkiLXcFO2c=;
        b=fFEz2+ajKEaYCp46QuszdRr1SmDyPjgiFNcm3tqZblInZGyEYL+K+iSOA0HQu8yXN5
         bCjLrnn3lK44ltuX2h7+4pkKeWh5DC5h+uGW4oCeiV2l/aXYWTAkHQKaK2LHssAFl3i9
         YoWpyUCqesAKTTzxNpCYRgx2HQNqHoaMub9ycLb4WAsZnNe4XWjL736zMIuEU2Bb7+qu
         XxI3IZsrxNRV1s5aqoJmviF/wvlnkfFPnQ4rToCIAi4NAx5Pv4vINvai5G537GFeYovg
         kkeW0opmvXH/bK3i8P/iHgraENi0eLBl3ETVlhBiQevraTCOwHlIOPEtxFAUBeJubgkE
         0NAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771513792; x=1772118592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GUyHppmBsynyA0S3gPBnETmKaAVRk/FMrQkiLXcFO2c=;
        b=vQwJ+TAhf/6tHU1Gff4qIcEICEYRONH+FLk/Cke5nUcRlGKd29AkXeOwvPIwb/nmn9
         9Y5fNEkL+1F1Y9HqHWNbjWxcsND72EEL+TWt9MK904ruhL4/6WNpO5vUnNY7DEcZrez2
         r7K3gAdpPZl5lebpfyT/0TIul6/tbpmSbSRH65ThACIq9Jx9jEIqShtSVIXkYFhkH3cF
         mpOYMEqri9ROZ8xjM2zdyzDDlezjwJgGgSOF2R4tS4m7hnUJzLot+pwuOSW+BONCI7Wh
         O0PkumQiYAfkZMLhB6rqckTC8lJX9ToG3dTdZqIjS2UZ0AZfidcc0mEruWXcFEHXu6OH
         XnyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWN3GTbbFu2g+6OkdhRsAB8uwuCObXwwqMV59SpvIE6pNCnziHv3DWA44+9VtmMoM150eDQuPrW/nIy@vger.kernel.org
X-Gm-Message-State: AOJu0YwV6hfYLijbmo30MnWgStgmaIAefOzIGJ/6loQCEB97K98lRJHy
	WqzXF9lwSE/I/JrGEIdh84u8or538ifmreFzQpwGY7tBZgAA8Nnj87QUjad+OgEmPAnMVK0i+Tc
	W9V2v9zeX5OBDKaqvw7kd0a26G0sIzWF8Ie6Yfk5bgHrnVTPc/WF+JmYdRC+OXHs5
X-Gm-Gg: AZuq6aL+YZXAoTlCYFC/7CF2fuY3lAr5Zm21mI6TGqR9yMy9A+q/70MJUXORpKDVZGF
	UF/qhEeC0ALWYWIBMnpund5j9OWDV4rq9nm8EdiE937+lcRL1GuUekf6Z1R12Xp3TXGyRzmFxzQ
	zomUJXIIN96IZNe/cQElqMsRxlgcxPhEt0mo7QXhGxh69xtZY9/wa3PLehpdLztk5x40sweof/1
	e/+8Qh6ktJdqj+qUBoES8b384DhVuYvrLrlktewtX3FHrUcYHT6387hWWSYjPOdGURC+xfETZAm
	qdcmAljRrnBR8c8GUm2CsjKJJ6rTe/QmC4bLYqoPlhPWLzlT+1HmVQ3lbD3cJlo7xevItgCPA1m
	7FKKO6CoRhYT0OwBD8KJ3mxVlQ4q/mez/f/2HxOgghmVDqrB6IGwWOT8dUxGe0v1BG2YkJeTlad
	/eFQo=
X-Received: by 2002:a05:6102:6cd:b0:5db:25d3:28b4 with SMTP id ada2fe7eead31-5fe16f17643mr4465216137.5.1771513791631;
        Thu, 19 Feb 2026 07:09:51 -0800 (PST)
X-Received: by 2002:a05:6102:6cd:b0:5db:25d3:28b4 with SMTP id ada2fe7eead31-5fe16f17643mr4465202137.5.1771513791253;
        Thu, 19 Feb 2026 07:09:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29d471sm4087758a12.9.2026.02.19.07.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 07:09:50 -0800 (PST)
Message-ID: <4057ab1f-494d-4c70-b5fd-8f18783ae7be@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 16:09:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sm6125: Add PRNG node
To: Biswapriyo Nath <nathbappai@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
 <20260121-xiaomi-ginkgo-features-v2-2-fb3ee94922d0@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121-xiaomi-ginkgo-features-v2-2-fb3ee94922d0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: twVMHj6zWg3hzNKVVxZc2PBDITRc4M8p
X-Authority-Analysis: v=2.4 cv=dqzWylg4 c=1 sm=1 tr=0 ts=699727c0 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=lW1k0sWwHEZPp6lqD6UA:9 a=QEXdDO2ut3YA:10
 a=fFR93BqyA14A:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzOCBTYWx0ZWRfX1Nt2Nt2ND9ie
 hG+7R2QbcQQhXHV4tsbDf/LDAg/3dgmNr0oYTNkKZjqq/bdWg1cmMPIaxngvEdE5SAKAoTXbJvT
 QFWZd9BvFHSxkDg4XQB/m9h1Ig+DpW8NPBpDK3A2D4W8GwlnoYFApz656xsNK46DewpnefWyXp7
 pTK17kehc4E36Or+XeKNj640V6hb+K3PjOjOB/iL0hSsZFjI/6btyICbz2tT6+ZZl6KUoAEuh7r
 P6f9FHc3cCCK+uA+jRLTonoNHe3GpRmtW3LLVG8KAjY25kzNA1Sb/Xea9CdDMUSh9z/jJRcoOLk
 Lv+sWlFniSVnDpoZWsTAw1NQmtX0oqVNO9E9Uim74n7OrBOWRfEex2FUtcrYQlU5yPjBe8L5rtj
 L0EAnSTWFF9gXcGNin+kfDUupKHNXgGgwmZLTDUXRCCKI1snb/KzbiiSddhl6+qOxPfTfdj0u10
 IWP60JLkianQtZUdXiw==
X-Proofpoint-GUID: twVMHj6zWg3hzNKVVxZc2PBDITRc4M8p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-266680-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA2A715FF05
X-Rspamd-Action: no action

On 1/21/26 2:26 PM, Biswapriyo Nath wrote:
> Add a node for the PRNG to enable hardware accelerated pseudo random
> number generation.
> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

