Return-Path: <devicetree+bounces-276091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMCtBczdt2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:39:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6A298028
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 349A430078CD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA3338D6B1;
	Mon, 16 Mar 2026 10:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pzKAgnIH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fJ58h0dm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644AF38425B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657502; cv=none; b=JS+vH975r4OnNz+LFLUW6zjdKO2yaJa3/b0NBddXvp2Rs47a7/ZBU4c5UkgZ6+c9v7S3OLYgurc7VkvO7YqbJvwqTxWcRodlTrxoEa/Y4kp3iKFxDEqyNC/YxQ003iYI00XbPiKRZV7W7XPG7exb5lbZmcku8GQBrR0nJkrHJhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657502; c=relaxed/simple;
	bh=N0ETczg47Hthwni1YXRrWbd0jR+hnMv9HzsCGURdEAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cDcbf1cnVPKF6aHHiZehwgb7lBiEemeBwF/1Zh0r2eYdRagbcMsA1xBjOfWVdebxfPm9pPfPCF4ZZuBNv3wCtfoeZLQOpguYjGvw1H+9EZ1xQrRYaHCOQb3U2U2+5x1TdsdyNS+of05J5AOLjAeS3ucLQcU+h66Cw4quA7m75cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pzKAgnIH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fJ58h0dm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64gjH2128555
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:38:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ALirnm3qVmuyZak9zQ35S0q/tHtzUERhG5D7Dbo0hbo=; b=pzKAgnIHrkOsZWEB
	S59RUnQKyn/HQ5klGqlYSvo9pg9gnc/+1PRVu11XTdbHGdky048gwuZx/4ABNmDF
	M06DrP4rbscBFV6cmQ5wSmYqZnPt5pYK6A7T4It8UrAbL1m3m5AlokaaQxywxfvz
	UFsyqcr2m/BPuZXedBTGBKZX9oeoyPev0lr80B31FEhQme5DqzzjFjowJbhKvz4m
	U1LC9ZKL1MrTNCFiitTXelvlGkr0G/ZTaTuEjf+Vdf2E79OTZuOf/Ni7yKsm7DJ9
	TAZjcaMs/bmjZpHdiR46XToSJtIe++GI0J0dMOqhxwYfEm7+XSib7OMvnIu4miQV
	sw2Ovw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00anbbp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:38:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38346fdbso331064485a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773657500; x=1774262300; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ALirnm3qVmuyZak9zQ35S0q/tHtzUERhG5D7Dbo0hbo=;
        b=fJ58h0dmqPmE5Qwx4c9PgUBg9V44sxrn5cNHmRDD5k+ZtuVHOvvPqAkDytQZzplAXz
         qZ8Vus/fb8nbZTLKCeNQXVM5A3jrFj8ln7f1Ob7z4qNzgbxVyCX3avTahbRYURDDTRXh
         P9TSaUnaxZyYIxB8n0bc7rIRga6farn7P82QfbIJb2s4dPeV0AMw59xHgUrioCTCleCy
         g/7gDXj1Rql7Fhut5ayWTgCRd2j+InD4SWfE/hvphwym7AWQBSoQ4Io/dbU9A7GIrlhr
         v4B27wqDWnydZKkmoAS7mob0g9ALiRNpAArc0q9/k+6gVmWBrz/lKV14TlsBHtonLEBr
         ging==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773657500; x=1774262300;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ALirnm3qVmuyZak9zQ35S0q/tHtzUERhG5D7Dbo0hbo=;
        b=Sbp1CytMmBRpaJLuG74MyOXkndS/WYZE8VvRoczqABO9qidWOqBGo1f0oAbJLP+xQ5
         Ov+6LvFuMakduwrujkNYUKXFrgkg7sGILiJJrh38D824QTC/+n8Mqytp0aD6G+JRP+aS
         QaHQrjfmqhN2B1n/QhfuhPDyB10KSTlZn+8vQv6Tav//2/O1Cph7r2GT4sJvBZ+tBeqF
         vjfGBPCizxuhNRXcVwjz+Ex6RuMR++aCVxrSROBQbWZr5H61dsOOAoIPSrl/+/YAGP+F
         COhttyUfGOaNY/L0plhaM134utU5bVuGInaAOs5CiUK1iJ28+ik98L5hGv8uPLasPpHk
         hi1A==
X-Forwarded-Encrypted: i=1; AJvYcCWy/rD/U2pdpxoSPjCjruCtAA9oMOyrCo1YbTmBnycs8re3CKR4Y07dbh2GY5qhIaBJ1/C4giyYbP61@vger.kernel.org
X-Gm-Message-State: AOJu0YzhQVJXDdGcrHKjlEtt5VTRbmHdAtrfK6FCF7lxCI4eOhPsnXQo
	CoFXvl0wMq6zCGQG0QMSpPMt6DXLQczhPYQHko2fu8wuxy33CfsHxRm3+1byBAi0ncbQ3rzyk6i
	WZf67FvOpupIsvYX0Tl46g+byDqu9F4QLvmq0fGeRdDNDmGbHdfbzZliPSQeCz3Ov
X-Gm-Gg: ATEYQzwHEp9K6uc2GPRT8/C5w5I7ouQKhR+Kans8G9FbRLFo37whzehDwnET5nkpdPW
	ZmcOiTcRM0PQzBJ8T3FopjjBO3OJpfxVwM0H/hZWUOkWLeaUcAD78Miy4cHSlHGBtur/xg6UevS
	Cu7pvPMAOzNH2K8ucsk6FJtTv58mAtNAxrS5XfpRGjHCWcZjusqtuTVVQJ1hRihu/mdJYYFi1Yh
	U4/Qny79IYGVdlmnOxb81VWgekyI8jqnOfuedMeEcSP8mDWdG4C5ycsV6NP9vJVH6ij+brYo9+c
	u2amLiQkuyN3hlWJxh88oupKU/3ul8l2YoOiYTpfXMe46qZEdNI+dO5+vFkjDOMKYhWVl65CZQ9
	9gdbkgIrnFX/RqdNK4+Atov+MsLwrOhHw59x13Fp/G88D1pUfZWhBJACSKwy6mwqRxtPAh90v3k
	ak28U=
X-Received: by 2002:a05:620a:3193:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cdb5a2d141mr1275006185a.1.1773657499697;
        Mon, 16 Mar 2026 03:38:19 -0700 (PDT)
X-Received: by 2002:a05:620a:3193:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cdb5a2d141mr1275003885a.1.1773657499223;
        Mon, 16 Mar 2026 03:38:19 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6634fbb9b24sm4875162a12.6.2026.03.16.03.38.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:38:18 -0700 (PDT)
Message-ID: <a87a13b0-2bb9-45bf-a3d1-2d08aac2a171@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:38:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] arm64: dts: qcom: monaco: Add HS/SS endpoints for
 USB1 controller
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260313103824.2634519-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313103824.2634519-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QuXCGOTIBagXNbYwbIwSTf6ovgTyDvNV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MSBTYWx0ZWRfXy3Kk6CsY5UUb
 Zb+WHU+i0MxI4W9qUbZ/p6d6ezLknZFPQW7cFLre2QBxtwJO5sZv3nfZWj+39oRA4VtBLDCl4rx
 9cDgE9rntaekmReCUAfT96x4DLZB7Ae3RzgOMPebGkZdA70Es/Drs4EnAD/1M2fPkmsgPVcXq31
 2TidMGvUJ8hnilMKAx13af9nPjLWgBFGuWy1Xq5C2mqhLUH/0aMoZPfmdUNI6Q+E3Hw05c7MYIx
 sYM4o0vwcNW89Apw5hjiTS+hA3lMhuFZGI5ncshNhSSLlGn3LdjpizqzYT8lVQ2AcBVlJmBpxXL
 /t9v1mV9QzqH5HkjhjIvxdGTdb9vILJoZsMpyM/R9bvpPUZuOERXHwjPPwEbkJaGmXA6wCbK6As
 fhfDetzDkUmS7xoKKRZdJaft3R/zv19pUdenRteBw3QrmmjUUZAMMt3nwtMS3OrSpqp8eZowTUC
 itEdC7gYnzcCvSk3Y2Q==
X-Proofpoint-ORIG-GUID: QuXCGOTIBagXNbYwbIwSTf6ovgTyDvNV
X-Authority-Analysis: v=2.4 cv=ebIwvrEH c=1 sm=1 tr=0 ts=69b7dd9c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=od1gnLZaB1Y5O4OfTGMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160081
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276091-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6CD6A298028
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:38 AM, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> Add a port node exposing the High‑Speed and Super‑Speed endpoints,
> allowing the USB controller to be linked through the device‑tree
> graph.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

