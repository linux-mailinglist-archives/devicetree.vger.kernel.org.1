Return-Path: <devicetree+bounces-276094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEQLEV/et2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:41:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B52980A1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A55F5300F7B8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B3538F62A;
	Mon, 16 Mar 2026 10:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JeYwaiyS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hhwb/yxW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1555538D6B1
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657691; cv=none; b=Q6tmLLp4Q9SjXM2M9rIsRA1h3cg89YfJQAzTa86i1pLQ8TssIaE2Xct0K1EfIU81S+KRjlhkuvChcfX63PXuIeGe9C/992FlzFGw6WgCM30kHGHpFQFSKyF8G3LzeH1VibSsuFr1Me24fw7qf7YsmLSIWug3+pIcdydFAAW831o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657691; c=relaxed/simple;
	bh=xGsdO9lvHQTEQqegkv3PbncSFZyHZckPB8k6omLSYbI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c05dSJMRa6HnFTMuWERTSW29YBdHugEZTnaMvvg2TEyCc3qee457j5pp4vPr8rqhxwDlIXI23TwBw+Rjbt8drKDr0EdNVh1yrRN417GfxaAD7O9wFzvdIHuTcqjkAo1mo2y6WcPbEipdvqnjC/6uZBE/EZcVKvwDTYsmzHTEKiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JeYwaiyS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hhwb/yxW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64hwn744133
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1QqnBdYN2J1s3k4Tlc9PyCtgucdWDLMMCEFYmM+WSvM=; b=JeYwaiySR8LxK/ap
	VGxH/KN5SNQsjCsh99I76ZWxnIQiAPWgYgZkNiomfJ9kwyBPtWS5BrZ9FFxZ+CgS
	74n0hAiZk6i0Grc6OqGTYAcM/9eUGap/KMM/zIpFKS5QACQvoB/iPomCOC8KXxt9
	T942vHJEBh30gUu/rKg9sRWL4Amocgdh8Q2IlfaWhJUgSX0e4WIBK6iwDyBI39sx
	1ZoRtAISamPcu9V4PPnS37lzfvketUEiZZjvpj8OyoZgqI6GeD05Io5pjqRPgjsk
	KFjdJpf2rAH/V2ugTFIKY8QpjGS4C0dkzhs8HWasGJ8j81F/A/Y64ya3VNYNmcDZ
	5QMtyw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00bdc3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:41:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50dfd542so310794485a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773657688; x=1774262488; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QqnBdYN2J1s3k4Tlc9PyCtgucdWDLMMCEFYmM+WSvM=;
        b=Hhwb/yxW2T6KbiivzMYmpuUhNeydgT2dCen1/8SbJZbF36qkTqv3l2DEmx9FpyuD6k
         WnXOVuzNKc6Bk9EJb7JqgLAMkkz/cxC+bOjbhPIgGD0kGeFTerjbjUPVBF2iVAwPXvsZ
         qW8m2OlHlM0PMtVI8IV5ceV/LsgN9oEuALxG2oHoYvZ7dibfzvzi/XRU1EOSmQAvWQhs
         caw3IBcvKB7KZeBH6x28dgissiJYCoRY0jC+zKWvvztS6ptdwwuTrIJ3N4X1x0dk6+op
         z9+N+Gj/phE78AzdCfKjRHBhaWWRpvubm1dIEqmxinoRvB96SbsTFPxYhuWtXrl89xL0
         FhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773657688; x=1774262488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1QqnBdYN2J1s3k4Tlc9PyCtgucdWDLMMCEFYmM+WSvM=;
        b=GPvTl0K+O0wNwII/A4k0WgbuubGM0/PhrOJ0h9RVP/MSbTHOxRb7EPO49SDpXpPHKj
         NZD2udCnxZIoidc3pW6U0x/RRQ5v9v5odiM3rb09Wg9VuCwSpOdD0nouFqUxh2LLzP+O
         K6GbKjS/9pnOtxTrodaYWvjYoSLPyYZPL8b3pabUyCexXwpjmcRMzFpoZvP86JyTVmin
         sRHKZry0JprKUlrKeRRwAPmrQU3yI/I6hdRFkjvAEvreBOrAzc9mhEU/6VUNoV+Bsn2W
         b/ysAIDxxnsj79hyJHJ6Lil1aqSn41gGQv/J2j6RMluuEXOx0qcE3J0ulFgXyzrOfnOe
         9LOg==
X-Forwarded-Encrypted: i=1; AJvYcCUhP/1GNI996lF1siCvTn+jHt8k24h5LXx+oVZ182OS8pmowvaoHUUPfW7IO8cDRUZCNuzEIWAsGpda@vger.kernel.org
X-Gm-Message-State: AOJu0YybL9k/CeirpxzD7p5JEq628P8K+vj+pzjmy3NDW9+xiwQ0EXOy
	krQz5gSTZQvNhdBgmhHrqzd5p4TxDFmHKH9QXH2Ct9wwpoDUKmOjSuDrmyFmuPNotcQ24p3oJ9g
	kPAVq6UI9kGLAG6+S0wR0pCRRF6KvYK+W8v4ZasWKzuieF85W77LIy5DDcWe605iO
X-Gm-Gg: ATEYQzwmbWzcE+B60uhB5cDwF+71oyGSHwRyXvSoz2G8uk7S2AIOyHUa5jquCKCtfRu
	6pmQmAuDUCDLRCDjoh79JzRfKhiGEC60CVrvu+OFztJ4ImLImPrikUW7Zoe+DMPyAQ2uAMpJEJL
	w3cWW2HdnhkXWRHTbhisIPW5NOPJX2QmC4RGv9aGYzye62j9Klo8tN9n4hQzxBa6LjRKWVmRAiG
	k+E6Vx1iq5LBvJmiKFE45fESL/mVDnnEEA3hVSjdpFyxGbGLTNvmNgtGgcLMsGncn3V5pv1Qlwc
	auoonmL7lyWLxFBJ7pqREumkDbBHwCCRcznb885VgIVNPlZjxtS0ufctiqpT7lbtL+TGfd3EvdV
	xSBchjPT0f/fcVoYdeaW4hP0O6JFfyEfa+UaVzq+oKrY5XmBaKlk1TRaBt8uDY+YNwvwL0Z5ZxW
	G0Hsk=
X-Received: by 2002:a05:620a:290e:b0:8cd:8736:9fc3 with SMTP id af79cd13be357-8cdb5b8a614mr1280365685a.7.1773657688615;
        Mon, 16 Mar 2026 03:41:28 -0700 (PDT)
X-Received: by 2002:a05:620a:290e:b0:8cd:8736:9fc3 with SMTP id af79cd13be357-8cdb5b8a614mr1280362485a.7.1773657688178;
        Mon, 16 Mar 2026 03:41:28 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf49fa6sm537613066b.58.2026.03.16.03.41.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:41:27 -0700 (PDT)
Message-ID: <c9b4481e-f109-4acf-b58f-2235efc7cd5b@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:41:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add Arduino Monza (VENTUNO Q)
 board support
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
 <20260313103824.2634519-7-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313103824.2634519-7-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IsATsb/g c=1 sm=1 tr=0 ts=69b7de59 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=5D_ixgJ-nfAih4ZOxbkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfX947xSj/A6Quz
 4ZtBPafEK2Kkf8CiJhkK5ZeWv51qOAxYBi8o6QJrm2DPFy/iErkJnyPR3D+1hcm3Gqe29/Rn4lL
 faxfTzRNtdsrzuEpUFaEIRnTDIoE4P8xB00uofDOQE4HD1vhVi3v/ScTbqi7twppKd1flPm0Cvk
 JXi2K2bPyJ8RAoCTsj3xLYPVQAvzczPQwah26nfI0vYsvwTEnhMD0939ImBD244F+GAsjK3GYFg
 ULtwbgXzEvgF2YhTWQYNV0ixTUIzIaSqHg3L3EVvIuIVQEa+UzMW6fWTEmniCTF4PEXhjj4ATU5
 BWNjeUqkCyoLZdaS579FxD+syU6YJVu7Cn6dwxgR6ppY+7txsepdeo9z8TWCt+quVw/J8d9vkKO
 8ILPKCaJ3C26aaI/6UyE1z+hj36uRugBNRmDXW5gJSedSk1I90NEXFRt0ARkb0E8X0BCsI4rK6F
 FSNbxNnxnU0WxfC0zuA==
X-Proofpoint-GUID: xXPYEqyN0j2wIvGEjqMa6N8nlUAs-Uy6
X-Proofpoint-ORIG-GUID: xXPYEqyN0j2wIvGEjqMa6N8nlUAs-Uy6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276094-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: AB7B52980A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:38 AM, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> Add device tree support for the Arduino VENTUNO Q board,
> based on the Qualcomm QCS8300 (Monaco) SoC.
> 
> The board features a Qualcomm Monza SoM and integrates various
> peripherals, including:
> - USB Type‑C connector with dual‑role support
> - ADV7535 DSI‑to‑HDMI bridge
> - MAX98091 audio codec
> - 2.5G Ethernet PHY (HSGMII)
> - PCIe0 (to onboard WiFi chipset and USB bridge)
> - PCIe1 (to M2/nvme)
> - Button (via GPIO‑keys)
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

