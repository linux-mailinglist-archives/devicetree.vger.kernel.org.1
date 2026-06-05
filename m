Return-Path: <devicetree+bounces-307287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h9u+Iz6fImpnbAEAu9opvQ
	(envelope-from <devicetree+bounces-307287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:04:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3DA64728B
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:04:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=T0FPpMeI;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=cio+Hkha;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307287-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307287-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BA09F300ED99
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1A93EFFCA;
	Fri,  5 Jun 2026 10:04:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B220E3F44CA
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 10:04:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780653884; cv=none; b=XMLEJ1ezUa6vI8eTr1rc/iG8PzlnxcRmZe/M6h1x/u3OHD4ZDqyCKLwc+FBcwymYYbLcD/xFaz/KmXmw96hz2yMtrwMKo1wFeWbDuuSNR4OlN7X0E+2LSgpJgD5MeHk/j6wvh8GdTbJX+c2YFEmP9eMAUS7O9LG0RrIlwMPSang=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780653884; c=relaxed/simple;
	bh=HnYTVx5TxhB7dQmrnUAk35zanQg2A8VszEReHMi7630=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dL2zGFNswV3ZFcmnckCYsg+OKtt12DczHINXO2JivzE0ngK3W6pwRsz/XctFZjdMVlQy1VBBYmdUiLXAVUVnAQn10rdf+q2nNpagnFovtloyA8Zl63UmS7cXynjkeY9wtTTybOhpeLrkO2pP/ws/H+1ORLznsd2IQKD8cVAZ+Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T0FPpMeI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cio+Hkha; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6556ivcR4048099
	for <devicetree@vger.kernel.org>; Fri, 5 Jun 2026 10:04:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+GzL/78m3DaMDTNPDmjPQPfwIIlJteGmxxB5TTOM8Pc=; b=T0FPpMeI36jfBRTJ
	6Vd313fkErrJ5bhHGW1cWs1lxAoXCfBPNKFSh/LxP3wnYRbGh2JWf6kM7Cw9EiX1
	vUvP/G4OthDQqH3WXyRwhx9AJIOtgm27DQ27Zs9GGpxitLlg5vxnh1eCk7E/Yyqw
	7fcHBMs3SoYqonGjkaMUjHNhPf4bHjZGvTxIVwAsA6TCdAn5XDdv4FFF7XvxAHJ+
	fJS9870LzHnprAMyzhmm4oV+qUK/eH3NEd+xzWR3Oxu7gLKkf0fUJkp20UZ1GSdt
	hZEu+H0VJD7D3Lkz1aL5+x+Bnt6+r+7h5NPSKCbiq/mO0JmOvEdqRX4mhfdVrBZR
	XBBe4A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eksf8gtee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 10:04:40 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8422f987f2eso2790138b3a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 03:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780653879; x=1781258679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+GzL/78m3DaMDTNPDmjPQPfwIIlJteGmxxB5TTOM8Pc=;
        b=cio+HkhaKIsY96HJwq2X/ZlVmiHC8aWOnUljGvbrBWpUzU9+YPeRxAI3EOL4/f6js4
         0DQSfg6HxEUDBHslVtOKjlN52iMGz3PEfNn8XpFTIHhVAtqC4XawirL3LluHVw8NVHLn
         Fq4xcQwdRZGrbtGdWomCGuLUkEDDb8Iwmv6u7aCMOXWWckfohoeGeK99dqdUDC55avRY
         nbKxW3RhUa9CXDUD/4h6NdwY+cBKbCKuniVivEVVC8DRRyPd8uTkDE0dLEOscqzR9A+l
         w0rpAWKJcoNV0fmfoJvavO4NatazRALqyR8DRSJiXo6Cc5QZbrgcU9Dgy37DWY2gzawM
         HBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780653879; x=1781258679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+GzL/78m3DaMDTNPDmjPQPfwIIlJteGmxxB5TTOM8Pc=;
        b=KzfFvsPLyJ00pXuSYf6+4eF1ulwCG8o92B9N5zh1JNshYl6acvF1PwBEcKDFQjXd4I
         QSNphF5n9fXXrYEKtVdxyopLoeOuvaLEM7/DkU9lCxNlrHYI8ltsa8Hfao5hcFD3dViV
         5btjt0E0fT4ycoQndKdszR+hGO37p9T2zsRAxm0++KKNj7lWpdQtA5ZFfA3jEMUaO7p/
         ROEs0G90/S2JkN5fZModoPx1+Y2DN2OsfUq1Z9bd0bBIFGwXBfveeY4h3gMvPYh63uBJ
         Q5SfICflmodka5ShKoHEqf3ugi5FK/LFVE1wUOY2c6Xu25Q65msTaMLwZqlu16tuZVo5
         fCDw==
X-Forwarded-Encrypted: i=1; AFNElJ+E7BCvAxfD721IzqyZT/PbTntPLdU1k98d86Xr4tZ0MBfsnUt9BG76+dtA/CQ7n2hqXO9Hi8hyvpYY@vger.kernel.org
X-Gm-Message-State: AOJu0YypjheHyQZ7ZAYHA+g2tRt+XnsuiR04VDPX5sbmfZnJd5084AVu
	x9qX07bmea3SUo3UaXWUqqh8XLFYFglJW5Np1hlty04z+UGs2JUzNKeUwmOdeeUn10Ir5nuFmEQ
	pw2I+/rnakCD9/UeYm28lPi/2RS5bb+y0GnDO2UGw9eq6Igdph5qRhgnhFB+EsSar
X-Gm-Gg: Acq92OEU/Lx+pHVWs5c7NV4fxVu/81IaAvWPAg1mpvRw3Za88unfjjUo/OKmdPlq7eg
	7Ktm0tj26qXXCM3eD4Nop1hiKgPG5Z/tIGVrgn7j2yRpf0/1SdL0aS6lUq6hOJZkdw6DjP2oYQ5
	lhs9cDYEhKI5HN1w8gskrNdSjit2RDhhs72g1KD9cnl3FaPEqq+ghFSO/RRu/FZ97kSQQ7oBgY8
	qcVJ0lGo68v76XAqSrTFyyq04RIaiSgHFjZL31NzOppG1Mfx42dGZ1QsIKxw4Bzc0yEqDvB+Y8x
	GcQoRZ1uuyEhmbglwyRwAbKayZawxSo4IEO6bEI/KLOVzRj0FE+pxgw0ueplbPiH3NvxqU0AgWE
	1KHnYB+qiVsy3efbq/uEytnqNQmYH6VnbKMR2sjHkBQv/DI4SfDKO+2rlrZSw/g==
X-Received: by 2002:a05:6a00:a13:b0:82c:d7c9:5479 with SMTP id d2e1a72fcca58-842b0e3da19mr2869747b3a.32.1780653879445;
        Fri, 05 Jun 2026 03:04:39 -0700 (PDT)
X-Received: by 2002:a05:6a00:a13:b0:82c:d7c9:5479 with SMTP id d2e1a72fcca58-842b0e3da19mr2869707b3a.32.1780653878966;
        Fri, 05 Jun 2026 03:04:38 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842823512b0sm9376923b3a.15.2026.06.05.03.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 03:04:38 -0700 (PDT)
Message-ID: <05a72e33-b495-466e-b21c-ef8c1a8ae80f@oss.qualcomm.com>
Date: Fri, 5 Jun 2026 15:34:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: Remove the
 little/big_cpu_sleep_0 idle states
To: Navya Malempati <navya.malempati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260522-ml_cpuidle-v1-0-fd311cf33fb4@oss.qualcomm.com>
 <20260522-ml_cpuidle-v1-1-fd311cf33fb4@oss.qualcomm.com>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <20260522-ml_cpuidle-v1-1-fd311cf33fb4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA1MDA5NyBTYWx0ZWRfX7AduzT9gPsYi
 kInu28YFxgcS7x0ZmCOol2Xawafq5rV9Wr9GahcrPXDjtZtreJ0H1pG5a09Lzw5/r5+jQnhkFVG
 PcAbZPE4Zngkvr1HDgEwxqhPtW648oZadEDtlhyMNhJgyTLckX3l3XdktPUQSem0TjuFtrPEKdK
 mnlZ2oStH88oTD2dSyrCiC7vB4UTDPMuXuminzpK+dFhu7w4/n6rMct9qjJ1EA0C4GW82PMEc6/
 GOYAIbraO0yLGAhgQfkIfaoGlU9aZ9NeS5cpexneGUsN2Xo/Atu31PKkNu+LI0qRcttLDjvWFLZ
 WfcErtYaftjJ5NOsLwbqCK0GW7OTxlV1ijucuLVegGdgBpb+gzhd/kdDVOPr7VfHINuMisdXlLI
 l9J92NnnQ+m2ZJOGfvBri+v78BgWtx/b817w+OclUS2L7HZMbLnV/ZfQrQlAarRI6uIWwp0ORbV
 /f1pqLviM6/TVDHMUjg==
X-Authority-Analysis: v=2.4 cv=K8sS2SWI c=1 sm=1 tr=0 ts=6a229f38 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=FdeHW23CIx2ZWAafQ3IA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: e3k2oqktDrJdF91KoY_XwK_zYvqztZdV
X-Proofpoint-GUID: e3k2oqktDrJdF91KoY_XwK_zYvqztZdV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-05_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606050097
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307287-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:navya.malempati@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B3DA64728B



On 5/22/2026 4:40 PM, Navya Malempati wrote:
> Firmware supports both CPU power collapse (little/big_cpu_sleep_0) and
> CPU PLL/rail power collapse (little/big_cpu_sleep_1) idle states.
> However, CPU power collapse modes are often not utilized in favor of
> performance, so remove the CPU power collapse modes for monaco,
> aligning with SM8350/SM8450/SM8550/SM8650.
> 
> Rename little/big_cpu_sleep_1 as little/big_cpu_sleep_0 since it is now
> the only CPU idle state in use.
> 
> Signed-off-by: Navya Malempati <navya.malempati@oss.qualcomm.com>

Reviewed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>

Thanks,
Maulik

