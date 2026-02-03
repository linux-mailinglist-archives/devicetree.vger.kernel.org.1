Return-Path: <devicetree+bounces-262247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CfSATPwgWlAMwMAu9opvQ
	(envelope-from <devicetree+bounces-262247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:55:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED66D96B0
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B25B63093953
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4719A345CC7;
	Tue,  3 Feb 2026 12:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="icni1UEx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VXKZ3X7O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730934029C
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122899; cv=none; b=l19lAvEisdM1Nf1X0X08afV+wGGo3KeD2uFdPbUGHn1G/6t1/Qs7l+9G/OxZrK2+ZlA0Zh4l2VEuaa0WlEKeo6CO4231XZE2WDXzZ1VeEY+ta9BP95/07nS+x6b1EIinKgeAImqCSvM3OhyXsyhju4XUVSSYapGqHoESjAah8UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122899; c=relaxed/simple;
	bh=TsBycMBF9tmAwhfR9s/Ou+SnZGtzHqmnz4gVFu+lt1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VwawXmgc8e0XFq7mMRFuTzKm3A3lh/o9oHH9OKDvxsi/8G3vkCJxsgeiF78USG1JJqFZ0iw9/IjB9oIMAd6FLBAPuFQbMOnOzSjyJd/DEV2Wqt/0kZt4wh+Tey/oROe2uqkkFd8toALhHLg/Qv8FaSlRqKRCMHSuM/K56TiVnkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=icni1UEx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VXKZ3X7O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613A3uN61591673
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b5reiRMxf7eQPz/r0JsXzDKnp3PHnj9+4R8qPa+QT20=; b=icni1UEx5BbtmfoD
	WQ2eRYue9Z40/HVaG8XNwZFFrgeKyByNqpl6gaShT4fRWQSEvtQRaU6zyXu7rEg0
	c1fLkj21pYApOtw3WJzy8Ibyoj0IJxMUyNQZ5/fcmz3yU1SSV6e1z1TlJmJWlGCW
	O5d5NOYogkfaGf7xlzNuvtgv3xYts5tLi4LBWpN7w7BCHcp0ngPhBvL9gpljW4Pa
	n9aHyacvOaDVuR5wwOC1StU0cAPfo7e+MH8Cntu/5TJvytWmVSiFDGZ7gxiUl+OG
	Xim4uFcbna5NVVBC184pJLQ+pOyQWZ7y9bN0p6TqPvYHDbVTP6fbb/3EutJ4FIFY
	R+RC0A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3exjgdud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:48:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5014f383effso9559091cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770122895; x=1770727695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b5reiRMxf7eQPz/r0JsXzDKnp3PHnj9+4R8qPa+QT20=;
        b=VXKZ3X7Ot30U0mo3xdWmbbu6RX08sIHtkB7972xzcukQEdPeb0rxNXVDX48mn7q8cM
         YFC5nVDEfsSGx3irk8Z1Bn6sNkofza24icS16mQH3i9cFvSODtiyZ3mB5m9sc36IMwVG
         zXec4HJezfDmqJGDFkUOpXsLhyPmDjXyjJdH8C53b8miA8KxYBUpmbWfMMbiQYK1ARs2
         lJNah3sDOb4lRUl/6MX3ovGPko8Btfr61zH0X3cY77r+7H7pwaoKBjMw7S9gHL8qWa4D
         qPKCbeHkZI9n2C4q0/dA2+b3sXNCW8uKjDJAxBISafyrNnYyuvDZ8MCxGcj5oy90vKXQ
         ghhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770122895; x=1770727695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b5reiRMxf7eQPz/r0JsXzDKnp3PHnj9+4R8qPa+QT20=;
        b=Sgp14yDB0c5gnYYvEok8zYfOGQQ/PzHIr/EGDxyckdplwSI2m5x44cBN+3OjX1i7NX
         +5ZrC+yirZOynaNFcPx8kTN4+iz/24m381nXUWajX8fY8kyb3UE00KXaCk0qpjoujw/u
         /dlUrA3nDvxHwoXaG/DF/+3trlVNqVNrjAk/EC/PzGNyFvCvxS5WCtIkpU1JivaZuv1Y
         zjSfZVOyayHSNrYbfUjQaS0hmcrmZD6rjVPfqUNoden8xpnpA0Tos7HRIRUS+ObA/wwi
         2C5OqN/HFJeo4ww/Y0VVVEy0Kq5nbFp5Y9nzFZkU3snewpyM5b1poMbEPyQpfLqRP+2I
         o2HA==
X-Forwarded-Encrypted: i=1; AJvYcCXkq17/kMP/pXQnCdyrq/X+VRDk7Bg9ci9ssN0iuX8rWDqQQogmM/Pyt8i/aYIKctzF1VwfUUg8t/bY@vger.kernel.org
X-Gm-Message-State: AOJu0YzodDnu9sT9tEcrZO5NVToUHtzzvBdm7a/sp+/3JbK1AOIs3cpn
	uB18T3uUFarKu2nOvqSp18g5SMjOK6uUfILYHYfvLvJEY+j63ZaIL95oTLotSyoibNCsEAywiWi
	/tO7FdKW5bALRZt4B8dEg/7zLcFdUgKrz9pyqO/GTp9iWDI01YRBPAzl5ETECJXyH
X-Gm-Gg: AZuq6aJZCo6fyTZGgLoggx9Mz1Jk7YfwFBI6BW914rlupD9/qsp7qF9p5qfkYPw5Vkw
	5v4UJz9QjMxK7kJH7a8UDx0hsJYovcwXoIb2MYbUbaB09tJuE1QUTL/PRqLwzw7Mjiuw/8qhLVJ
	AZGVcXoLc0Y86rQbDfcY0x800rj8S45F02ey5OIHdxOsx6knQZHphY1m8x2OXbiRkfd1zCU1MX+
	lUUOEXdNaMHB8HiYLWfbLENcICtxC1BqGr1jjc2qSk6rGWn4o+HI3u4WDfx04MUcEBdc9pnISrP
	HFGTSuoHLJSNM9a2z/ES8rzBmbrQYPN4vQUBUuEkDVtZlluuSNO1cbEEFW1fm1Ze8uDcux6baT4
	Wy+De9bdzCM12C+McX8jq+Y1hLPexjvZUOxZjS90NybAFsXIiFw69u9FjHdr919c0XSs=
X-Received: by 2002:ac8:5f4c:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-505d213bc9emr154675771cf.1.1770122895414;
        Tue, 03 Feb 2026 04:48:15 -0800 (PST)
X-Received: by 2002:ac8:5f4c:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-505d213bc9emr154675431cf.1.1770122894914;
        Tue, 03 Feb 2026 04:48:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e0a5a3b1asm685936366b.57.2026.02.03.04.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:48:13 -0800 (PST)
Message-ID: <7733eac7-8158-40f8-8887-44e458d33e9b@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:48:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-12-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-12-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8c1lBWk c=1 sm=1 tr=0 ts=6981ee90 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gzD-2WDeCj_JQFVUwcoA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: yyKXSSZB8nWTaYuqcfFzb4juAK3apeTp
X-Proofpoint-ORIG-GUID: yyKXSSZB8nWTaYuqcfFzb4juAK3apeTp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEwMiBTYWx0ZWRfXzUIMu7IhfOgm
 s/U36XSfajDbe+d+FJ4CJjfd+sgvPgJiFZi5N68/+wxhes+fgr5S8y/54neeIpL3U5gqPORtvGb
 ULKVxTK1fRmxH3Rl8niwL9Ju8LJHeSyfNpLP3G3+AnEEhzXhQhHAu+XSviB80E1nny/+y/VFW+S
 sK7dTY+vWLteD8O6OOC9rG80EpJOtNYqO9dlSNVzB9hlQkzHA887DyY9ppEO18Gi0XYoK4JhdFZ
 PsslR1s7gb9rM7IbKeASHBYGmwDRF5Yd0bR1uWwbgSPDVaqOytUUuHhoV+e6eaXCKiRlaEZFMAk
 OtYAPg9vvdn+eLzHslKWPk7g/bJDJSi706D1gSQjfYIDNgsIGzauvGDbbFuURQp2SaxDLo2gDGg
 XmqCHv4/5aHqK+CI4cvxZdbJdBt8gUsJ3EqP6L4B9ri/T/3GI40gTnGHlnfTdaYJ+uMNshihYJ6
 JCHKDwxxkiVTWi9m6Ug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030102
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262247-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5ED66D96B0
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> To manage GENI serial engine resources during runtime power management,
> drivers currently need to call functions for ICC, clock, and
> SE resource operations in both suspend and resume paths, resulting in
> code duplication across drivers.
> 
> The new geni_se_resources_activate() and geni_se_resources_deactivate()
> helper APIs addresses this issue by providing a streamlined method to
> enable or disable all resources based, thereby eliminating redundancy
> across drivers.
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]


>  	disable_irq(gi2c->irq);
> -	ret = geni_se_resources_off(&gi2c->se);
> +
> +	ret = geni_se_resources_deactivate(&gi2c->se);
>  	if (ret) {
>  		enable_irq(gi2c->irq);
>  		return ret;
> -
> -	} else {
> -		gi2c->suspended = 1;
>  	}
>  
> -	clk_disable_unprepare(gi2c->core_clk);

I believe you can give gi2c->core_clk and desc->has_core_clk the boot
with this patch since they're no longer referenced anywhere

Konrad

