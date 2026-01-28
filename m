Return-Path: <devicetree+bounces-260499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HZyHpkwemkx4gEAu9opvQ
	(envelope-from <devicetree+bounces-260499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:51:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B66A4936
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D112430EA4C2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5417308F2E;
	Wed, 28 Jan 2026 15:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GMqyasNn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LYfQFzy/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853D2306B3E
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614954; cv=none; b=SBc6/OW9r3GxyZ1DE0nZrpWfBNLjrasjfFiR7bNacqyj2RBXnarjAtcpVuhns1DGXFRrOOlzvLh7L4h0ceCh+imUr8tCuQEbRIoDu+lv9eLwac4zKxOdzQI5wPdk4ZVyDfmMD1zhWZaJzG15HMrYAIGf1BNLTIX+gAV8r6R7E3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614954; c=relaxed/simple;
	bh=t9dLjF1QoezjJjk2zw7c53FVpAmlnd2OIVmC6BDJYKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JMgbdmhqm57ESjPRKkakorKOsSBlLa3E5v2UCQNoVu1MBXUtHcgGRa6U+L6it6FVHbHQHF1D4KojP6bQCxmE2VPceCdQpKP3conKOWCgI3OKnXUwqMGXGy9Y8LGWnmx1Cx9Qh+SjZ9k7t8/InZhHHr+/yLrIHjxBCKV2qgh0F4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GMqyasNn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LYfQFzy/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92XPH4008452
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K8QuYKjVLvret1GsI6cC3h1GiYwud96huRl7c4eEmng=; b=GMqyasNnooSdxV/T
	GFg5h5Y6fi5w1/In5brGktJ8cxiASgFkCh8YBJJQ/RNG1757Fxs3g3JkNGyVM3eK
	0yCG/LfJSx/P2he1/CaHLYXAg0e7hfx4X7JptnAoOnVdzWkAV8rsUul67YhtOjin
	z3rN5t3xroPwmrL+/a51j21jjY7VjMTrToKQ/NRnzi+l39AZHOVWdCRRfhcEo/cV
	kStm0yoWuNNWrgVjE1i6TnCZq8jpeEkOrKwm2XtT11Pk0DcSIyHk3dt5pnVmXZ5U
	As2SmannLcYMOoiE9b3MuaDqC9fQRFEorpBP/bkbU6U3Z/k1Fwq/hteBHXC9CzzF
	/ylALA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1jx45w9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:42:29 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6097ca315bso13117107a12.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769614949; x=1770219749; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8QuYKjVLvret1GsI6cC3h1GiYwud96huRl7c4eEmng=;
        b=LYfQFzy/u/2C5W1Ynt+JY8/sgEl0e/l1dYcvPzCg+G9RL0KXghkWm28kCfD+7U3zjS
         Y1W7Yvr7vnmFXqbRkKGAaUlDDaJyjfTmvkRrMWV1+VPWntVKZ2eKiZWeK1JaFmEblBES
         5HK+SJVh4d3C6em1cd+Ze5LEhIpBfKTLEAZtdnFtTsJuB+/OJ2UNNm3S6NSMVKELDLJR
         r9A8S3F5Fg+jbEvGOAnBy5PCJA8IgLCLZk3auccvFvb3pHmnZcDlTXmPjBMRp8Kk+8yN
         LfUoR/saCP6X9DxYUtNzhuKGD0u5w3YZAr0/7tkVtu7ZKg01irjJxnU9SWqrdt/dJzq5
         GMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614949; x=1770219749;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8QuYKjVLvret1GsI6cC3h1GiYwud96huRl7c4eEmng=;
        b=ltvkPD435XWdVNwJRCvbXW8FCEzUZW0qlD6RF7cHLnhWSLXwwjRmHqqST+mZBpWRtS
         I8IR9IwJRTxgH8EPJ1Y3GoxcE9OeFQ+qu5BITly/GzYxmpYz7hC+jvPxJvjA722LRdgm
         G0HMTiCBSwHS6BwL3IoATsP2LzGtCXYGOqmfw5U0O3mh99E+eAgHqFEk2gShBud15AIm
         0oWPI80fvTIbyC9G95IoXygv8AJLHns4aczxDiqgaW8ffsaChYSvlmp6/fRmuYEpzMDm
         ppgRRwV+UPrabaOlNtg1HA0jSJq2CKaPg/AM1tfEMClo2GkrGREj3eVpvldoQaV1SlCb
         jPTA==
X-Forwarded-Encrypted: i=1; AJvYcCURvO4gnVGL+VCxgqxjDQLuyAprWcVPFGHze1aHPLEeFRISghKAcsN0yONcRTQuF38+g9VKFRr5EtG5@vger.kernel.org
X-Gm-Message-State: AOJu0YwfSOgSxC+6iQfo7VBvs4u74NEuoIVUNQGb2iSNBdXZrAvCG/po
	NizBp1y3bo6IxR68kaqA1N92R/uPyofjPvIzacz129Frh8gFWm18P1z09asHUeQx3fij5aDsUa8
	hU1C/f6R6+T5FE9S9Yw7UpOBd00x6JQ5a3eEOkNWxawdbNMpCcH/Qv7i6iLZBxIpy
X-Gm-Gg: AZuq6aJUtOIGvzb4qK1nUvF3kM1x0o64UJNXK2ehgx8+D7G4wTX90SffaMm2fnZtSvV
	qdEoaJC/zzRo9hlQgGEtaefhEOhMZaj7yF+yf7Vw0wNV2JJv10WdqXlaHdjxXwkdLiDmXRkq1uv
	V/vzirWa7Gpr4ekd+S+99AiLwllYGBLCwHKHP4aXGL/y6X9aeNnKkT0uARxpM69/0me1NJgw88R
	a+QF2fG0KgBk3FCetFccuVtxoVZmbbc5W/LxtBrKevpnfkuQZTUfrVknI6uH15m9XG1jsDFpN1k
	eLSrc1kpQ8tEdDFuLgGQ1vdU+9pRQGjgzhu3n8PnLHFK/dqa969clHZpD6KlQZ24CyUlzcIM6x9
	XxfcNV3VsBhRjQfPxUG06DtT4C/O4I0I7/wHwu9to47VU13kyRGOWVEK0ULX2nA==
X-Received: by 2002:a17:90b:4e90:b0:353:41e:1f51 with SMTP id 98e67ed59e1d1-353fedb0be5mr4436632a91.32.1769614949164;
        Wed, 28 Jan 2026 07:42:29 -0800 (PST)
X-Received: by 2002:a17:90b:4e90:b0:353:41e:1f51 with SMTP id 98e67ed59e1d1-353fedb0be5mr4436616a91.32.1769614948628;
        Wed, 28 Jan 2026 07:42:28 -0800 (PST)
Received: from [192.168.225.142] ([157.49.251.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6128942sm5836935a91.5.2026.01.28.07.42.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 07:42:28 -0800 (PST)
Message-ID: <ea99fca7-c51a-43f8-8fb7-f228b36d3eef@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 21:12:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 ath-current 1/2] wifi: ath11k: add usecase firmware
 handling based on device compatible
To: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jonas.gorski@gmail.com, krzk@kernel.org
References: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
 <20260121095055.3683957-2-miaoqing.pan@oss.qualcomm.com>
Content-Language: en-US
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20260121095055.3683957-2-miaoqing.pan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QUo2Cle6kEUv4GcXUt_dihRvo2-oWVXa
X-Authority-Analysis: v=2.4 cv=duPWylg4 c=1 sm=1 tr=0 ts=697a2e66 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ayGwEbGGg2t4nIWcsuXnMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=3bhG5mAFE4JtUZ8DKu0A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEyOCBTYWx0ZWRfXzL1oDTgzdDUZ
 laS+AWPR92B8wg5pYLWQZ4Wk3TQg9FQf8DyhJqWfUL4nqxDEpnKqsg7+68KmiiFqCsXMWuayQ5a
 1h8qV1Xxc4zzuQmY2mLh+nw1imbeFKi36clCU9v16ZhGeleF5ZFmRJCKU40ihlU0ARwZjxX+hHA
 nlEjHO9aSEox0yEHpinJ/X+YjVEyQB2AhQC1/IsyfL3ar86GoiFRv4ynrhgwN8VVJ7LZkygfRkF
 OoIuttq7AIkFusdCyBBkEYlRPa8MnA8vwAF1p1pnL/I+m2pjnNkrA+4bnl4klIcvLBkljACSYJt
 3AQizF7tOhnhPx7BltBP23kqmG11jnp0E//3bGuqK0WtTqWV54gfLA/gkI7xRhoPbtZ3nQfAP9t
 s9xxEuRqFLmuUGvUDvZj1i5XDBqONDSryYET8Dizg43Qpo8lM+qnNnkz3mfNK3vw9GQXVLx0La/
 X0zYzXFsgjCh6NlF7Bw==
X-Proofpoint-GUID: QUo2Cle6kEUv4GcXUt_dihRvo2-oWVXa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-260499-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vasanthakumar.thiagarajan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 19B66A4936
X-Rspamd-Action: no action



On 1/21/2026 3:20 PM, Miaoqing Pan wrote:
> For M.2 WLAN chips, there is no suitable DTS node to specify the
> firmware-name property. In addition, assigning firmware for the
> M.2 PCIe interface causes chips that do not use usecase specific
> firmware to fail. Therefore, abandoning the approach of specifying
> firmware in DTS. As an alternative, propose a static lookup table
> mapping device compatible to firmware names. Currently, only WCN6855
> HW2.1 requires this.
> 
> However, support for the firmware-name property is retained to keep
> the ABI backwards compatible.
> 
> For details on usecase specific firmware, see:
> https://lore.kernel.org/all/20250522013444.1301330-3-miaoqing.pan@oss.qualcomm.com/.
> 
> Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04685-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1
> 
> Fixes: edbbc647c4f3 ("wifi: ath11k: support usercase-specific firmware overrides")
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

