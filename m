Return-Path: <devicetree+bounces-275202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFJcAxYEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F6D2830D8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C67D1301F699
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B512391516;
	Fri, 13 Mar 2026 12:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ASzfYM21";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MITdsOAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0C38F647
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405185; cv=none; b=LKwsDsWmZ22230/DX6yeioh0+JQYdP9i9fBP8m2+mpCfDOKMg72QGxeMvnsQCFAk8RfEHgP/4wjOh+tq/2T4K/7b3dXT4DtzdGqz9YrR4GxciXtqHWIdiXenpjYOPZFAOPxuQ5Yq5jBXaXs0Ia4gHQFv5rsPnqMS+VMemxvqhuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405185; c=relaxed/simple;
	bh=/llQCS6pGh9dzFZ5T7BDBvUoJgmWYaUQqEjy0LtdONs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LPe06eOuFgMAErm5gnqpuvxgTppBCWeJ5F9us11y2DUmIoyrieG7oyxQwjUZTSMT2MMROshxfu+uTHwTjNWFN1vZGXWcYDDDHI84pCc3806n1qFogBVhf8odvFsxbPAS/CP6nZoyTb7jS6obwpoSJqmVVOl8LATZynIyZRoBe90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ASzfYM21; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MITdsOAM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DCSS0g3342548
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MauuKByl3R3mgdXO5KE6ixTOvkVLunuz2WZywxaS9PY=; b=ASzfYM21NEeawwfd
	s3SHXxARCk1h0vH9lKY30KzOpzpT6L0RSCR5TwwxSPwvLCprkTGIUyeTD3A9cew1
	YjEui5GcEYU5dorIVGR7pAXQVVwm9Q2MYHNfdmEqv+JRYIx1ibxLopE6MfMeSDW5
	DIjtPAJoyvLCk7BHNCZ0cnxCTyMsRWkXQUiNV5jY+bpvFCdmRWMJhU+mWS/GnTm8
	UDi0Qq8R/9TUhWIc8dzps+XVd5S4jLIUrZGT/Y7ZQvV1EAVFO4KulEu467mtfw28
	tKSh9p2rr45ynAinkw9uSK2r1aZbigMLSSu0WWZuRerCvfxdK7UlW2ScZD4UWyIB
	cI//vw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w4rht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:33:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50947db2e97so18598711cf.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405182; x=1774009982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MauuKByl3R3mgdXO5KE6ixTOvkVLunuz2WZywxaS9PY=;
        b=MITdsOAM7BMtpl8FA04SOBo/5WYh9fWn4bAl2iS+IO5zpA+nztzS5tgc+LZ57CeOJL
         OJTh7u5FZSBdXWVUdnnYDvorWXSRopGu/ZCO0clJXSFFNHeTVqFOeOA/XfXPKFsbv5sC
         NiXS5eOF3sv2iiOMxcMq7AOqoZPon/6JddsTqMD/TkWiqIeiOywIbkqZGm6wJnezogdg
         KZ1w1bmFQzofgWj0blqU1Jvqsw3ZG0V1Iw+5cPQBFjI6OqrQJtogzJb1CiGBHLiafxNE
         OElhtN8s1fwI15y6qCYHlqxcpzVqHetbn0Q8el4/2DFrODxVuTAirLcJPoGVQlisqych
         gazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405182; x=1774009982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MauuKByl3R3mgdXO5KE6ixTOvkVLunuz2WZywxaS9PY=;
        b=sbUDC4T+L/OwfSUIqBSCi3cw2l/mzNnnGF/o7EZZ1LKirEwb4XGL9/OxUXPGgXZZoQ
         1eYe71EZuU6dv2Pu1N2v2qAPSa1PPtrMUUU3N45gRlxewcFNa0Yg3XKV3AsjkA+wr79O
         qrteFeKZUOXfqEDu3vI37qM3GB1zhFL+2MSMh7PQTxWnjEWeFpI/mjh9d07eDlDL9aHE
         cezmjjB/osD1Y7vQyNoH9zQeepoUov9Wg9mW4CuGqefPEkkRiXhqTqSqqVA7nTzQvNyN
         0km+brA+IS9SjooDqAMHUkj11akNTSb4f8kgCRh5SeMvXe/UlJc0Cx78LqspG3qbla3s
         SdXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1K3gEFvbJzP4cC+acF39+FdW/Rb2V+Z1GBqgiu7qY25gtcC76Q2jG7v7+iy6j8FgS+vjI/vLgbvMO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzeb7Tutdd0d56bmeyjeWK8EVLFJ5mrSHHoJPglBxX8115rJyPs
	GsS+C8yKvfJK/y2oKBx5f5ZoG3pUJRDV11nMLlmT+Ne6MTwZeekNsoJ5nyfjiUsLsQof6ZlwyTc
	LLlRPveQSZ6hyPudNb0rQc9LpU8XeEdZLWZoxPcpvZ2IrhhJHI7pfqA2SgjbAH3gq
X-Gm-Gg: ATEYQzzcNPCc/KCkExyckSjFVysGqiLaemtpufx7st3jP6PGtxeafSe/BubMWef31li
	Tg4QwtFGfnW6FTRkWdK71X+/64wUiUcQLjoWgwCcJy3zUm+gAaFFHAC+cMxnIB4bxM76LOblFRM
	KnU/VkOERC/K4inYkjbtzWr162IJdHAaPI3SFKMl0bJWD//JYnATZ3uMOC/ZEmWPYy4deaICAjv
	FjCzZpAryqcL+npZ460m0L0bjXT12ozLh8pc8/A1jcS9jemdpeGxcYu8GYdWkgf0R71svUsMTxG
	QBbGl3jrj26cszNdrlT9LUBELIOI+z+wDF9T2abu7zaFwWETrtaT3VC+9BGP0n8wM+b3rqoArKh
	0JyyW3W9fDYGb+SRu7E/lLNPMk22hiCjDRXyNc8vew9kF/Zi+iKKbeogL0y2xqXpzQlurhDvfRA
	d72rw=
X-Received: by 2002:a05:622a:1307:b0:509:38b0:c44b with SMTP id d75a77b69052e-50957df284fmr30142151cf.5.1773405182569;
        Fri, 13 Mar 2026 05:33:02 -0700 (PDT)
X-Received: by 2002:a05:622a:1307:b0:509:38b0:c44b with SMTP id d75a77b69052e-50957df284fmr30141701cf.5.1773405182070;
        Fri, 13 Mar 2026 05:33:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb6936sm42858266b.37.2026.03.13.05.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:33:01 -0700 (PDT)
Message-ID: <50ba3ee3-061e-42ab-bddc-86be1766cfff@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:32:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: talos: Add clocks for QoS
 configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260311103548.1823044-1-odelu.kukatla@oss.qualcomm.com>
 <20260311103548.1823044-4-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311103548.1823044-4-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -b0ZVqRgVY75NuzKRcaa2XlDz4YmZCJn
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b403ff cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=QD8XKuxi8VSVazGx0XQA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfX+8Q3RC64dpW1
 7AOpbdxnYgR9+p0dUhk1OuPyFGmrV8rdJuMLgU9wYwAfVIByNML7Na9KheEUuiQ7lc3Na2cPPdm
 i4cq8SDJ/Owa/kuYi6NNkNftLb+shPiBdw8LKYdeeXiJj85oFJfSMnZvuZJH3XZIpC/vGNJvgsu
 I/MzhUhINTLzSpi0HGpScs8fIDEyMzzgAr5kaSYTiXIuHELaGJHEygENxSazYXCIJcgAKJj/QtV
 tr+oRk2C0VesRqQ+nVssZn/w5V1GTozK+8BrhEOZrbcENt7ucaE4QOvUpcN1wwjT6Fp3TyWoZO2
 RaV1IolzUBDuv2br/jm3tYYwdcnI7gQyV+bj2B6LjSzAWHQcvzW+53YoUdWIVgOk//AyfEPk2+A
 V2n1s7tEzV6Rg5Og4GbHoKlS4w3V/excgQZrNENA1oOUnHWI8faOvZR8SusUhYd9dqV80TD8yRZ
 BqFkieiwfx2K8KGnkZw==
X-Proofpoint-ORIG-GUID: -b0ZVqRgVY75NuzKRcaa2XlDz4YmZCJn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-275202-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C3F6D2830D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 11:35 AM, Odelu Kukatla wrote:
> Add clocks which need to be enabled for configuring QoS on
> talos SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

