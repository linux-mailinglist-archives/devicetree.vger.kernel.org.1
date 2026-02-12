Return-Path: <devicetree+bounces-265084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEkYGZHYjWng7wAAu9opvQ
	(envelope-from <devicetree+bounces-265084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:41:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C0912DE84
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:41:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4CCD30364F1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCF2635C1AB;
	Thu, 12 Feb 2026 13:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pIuORg1i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="amqJ4c8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4F935BDDC
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 13:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770903671; cv=none; b=WxfsJurdx+vxQxuxARSu1wOMjkt7mCC+5orMGzxKUT52wNxY+LLuqoEzMVaVUotHXEEPjMKtg22/IaeibensF7s2BNfx/3JcJ5Ha34shJjoKycMvJYFuWwXezxz9j20n0iplyjQbage1GXoFletZZVBaycz/6OAb9aucgJLcJ5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770903671; c=relaxed/simple;
	bh=nAcWn1YhQ3PHXqMYJwlRwitF9aeMboZWC1V3ud+4mtY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lT0+gmmwJCeBHbDtppKwFioGlP5C3dnDZyTQpSeDkkEqIiiaaaQzcOC4kRQCOg7OCBMCyQgfXRu76pnK+YFHGxh1XkG1W00Ide+gxn5OFxHLV4TScARZjDdKHsJlOZ7S05/fY+x2sU6zTQzeS2n6SP2EFW2ssxvz5bAI6PeYYks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pIuORg1i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=amqJ4c8j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CDRfo51074234
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 13:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCRCDzmfXns7/oXNTWW53o+t1npEgX31smcF3lGgN8E=; b=pIuORg1ipOMazCjN
	Nj9FuVe3Babh7ivPL0Qf0n585mBcBTzm7Kkc4Vx8tdFzLI9QdBMZQT2QOQzdITF9
	7nHvnHnIGZuzaCeQzs3UjQBOkoS3kZ6rB4FajSK8uuYpuGiW+HvlLTqKLEejaf/6
	jMGwIJE5i+dsSol1WjUvUzgBsDcMWe/wuPsHLTilomRpfGSGJ33kyI5DVCl96J2o
	rgA6dm8KI0HADyl8TpWiy69rB8US7D3OIjq5zAB7oFGG0QOXZPWRT41k1Hffr7NR
	9qTtomsRNx8x7fFbS802wtAs1KQ66gVoYEuGMfvNNJ0w4dwv3Ia3x0PLM6T51wLl
	C9wTQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y8nu5nj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 13:41:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso168103785a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 05:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770903668; x=1771508468; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zCRCDzmfXns7/oXNTWW53o+t1npEgX31smcF3lGgN8E=;
        b=amqJ4c8j+D6bEC9yiB5i0Uq4wiC/gONN+Sod5JuTL4DDeiHcZ6wvP5Go18rFR6lCkF
         0LcXZA9b7mEIi0sNh+5W4SZNPg5oHdTqDTTvpqkaQD+jVRysYFFoWL44kngRPVo4JR95
         68S0tMhGy4qQCgctBRf4/VKMSS2NXj+Zi3lioWRASRnbdbKS+f8EStsx95pQsNEmZF/H
         NUA1ZIHyPKPB8geS6vMWXffUlCSGDQCag4eEhMUo1PSNIE7qTMBp1MxlvE0kIu26HfOM
         E8tx2Be97w/VsERkgHxAqOKpWXmUlyTL1rmhrt/eSMCGY46E3rNHsMin0HrsYR/rMQF5
         M7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770903668; x=1771508468;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zCRCDzmfXns7/oXNTWW53o+t1npEgX31smcF3lGgN8E=;
        b=v2kP8qM3+C9e7b84JHw+cyFzYHWAdPH12htOKy3oES5/1scsfrma2aixk778vSR9Uf
         yrJJrGnF+4Bf7cjmwKZ9sLYtFCiRXYO5uZSFTShKhnMFEwlwPBy31zXlvCajIAf8NQSZ
         zPFJ6qR4q8Nf51vpnmShvqvAn/MvVEIjDoOu38S2quRmXEN030OSIsz7ZATCied2XYjh
         dEIkhTx3bIn3EuOPDhPO5+ODtDlAi48nvRgyjLbAzIck1eq0VaUlbu3cjO3eOmsEeHcG
         qZldoZkE4nbhyrHkJaoQGJ2oBpxMhoWZbLLkxKAe3upPLyi+0POUuI81sm7xj5K9yCBZ
         qFKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbgwvGZX75yQZ9FWOu8vwZZyUhD30OMPU1OAOggveyVZ6oTcmekcHeRewuc+kpLcPkxB2bl0eO5vAr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2qULbJnfkGFtsuU8AbNhNeFlBHPyokuT17tW/egYN3Erc9mOa
	9PTzaarLD+UaerRqI0dOk/4AIhssKp2A7jQr7HBOoQ1j2OiJWaltbi64VvwWsOjj0sVYKHT2340
	+cm+v07a0Y/+lVVAqt43tJRh/gIm9qeUi/YdM+PWjiFuqUo/r2GSaJxJEcjpJZcz1
X-Gm-Gg: AZuq6aLi9knAUXaOUIvWCSN/g3NnZXf1IKhxdTvaU2OZ6XMJo3Lmao02GnFSkmzbaKI
	OiuBct1tfxuKX6WFY1s+06bNHj3jkNWFP2rzIN98DfFCGe8U8fbhSMt2Gi4mIzw4fvt8B9HCSsr
	yaQq/cdulZtlkR5Q0DNAGaqPgssmRku6pYQS+AeH99UCaJS3HifqKXeyV0Iiuqo+1MBTqnZ8xDK
	xuA/SQLeWlRivPDSDDwI3O2KGAZAhUCCJm0bsf1DjynMiLT2hgIIyEonQ9iZZDPphOMqh8BdCkr
	77E2j0LkIe2zkXuaKhHnuYIqkS3YcQeuFPp85axz2xFf8ZGhXh/JyaBw/isMzA1SUylbKJXCBjC
	b0D/Kj6jChRpIyoXL8KCQxuw9GXvr3C2t2Z1F10W8gZsm8gQpH+n6LLTujOw35M88UUDQK1xBS4
	V6SPw=
X-Received: by 2002:a05:620a:4407:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb3311bb60mr255614785a.6.1770903668198;
        Thu, 12 Feb 2026 05:41:08 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb3311bb60mr255611385a.6.1770903667788;
        Thu, 12 Feb 2026 05:41:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f9bd846c0sm36946766b.3.2026.02.12.05.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 05:41:07 -0800 (PST)
Message-ID: <0dffe84a-d41b-42f0-80ac-fbb8e81970da@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 14:41:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Add
 Focaltech FT3518 touchscreen
To: yedaya.ka@gmail.com,
        =?UTF-8?Q?Kamil_Go=C5=82da?=
 <kamil.golda@protonmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260208-touchscreen-patches-v5-1-5821dff9c9a2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260208-touchscreen-patches-v5-1-5821dff9c9a2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDEwMyBTYWx0ZWRfX6jPtA2g0OISa
 U660odqPSBnf5x2V6uZSA3G92eB095IW33HLTJni+MWKv5AU/2TQxZPUcIy2LKHyZEjKas9GykX
 ljQfO7G0n+QU2L7yMtLQFPMYaSvF3o4/RpupgGvLP93RoDCOih01BXDSsaVu9sTyBkzttst+h0u
 cUM6d2pll191b8vrNWeRA9hHtulQx6Aa6pytEdXpfHE7HI57oGr2pZZHAx7uupuQ0Kl3Pjxbezx
 gGcVh28aUjk0gxjObP+1pkA0zXfPJzi1HaorjS3XVPs/NmA9mFzhS9Q/x3VeHAnlnghpnUNRpWH
 jkt1yZfVvU4NJiIg46rz0i0Ffgrt7ULA8hKrNZuVdFrZr4Ye8RpWJ10bbCfLqczVx4X9Eqzqntu
 +6DG7evOH+bFkAGp9NqC9vxpSbXW2QU3bnyzRMG7Q1qdNBaLYMaArMeEEtSdxtTt0vlCfWUZwvs
 p06+JDmEW4zrpcBgBpg==
X-Authority-Analysis: v=2.4 cv=VNvQXtPX c=1 sm=1 tr=0 ts=698dd874 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Uyhorv2uAAAA:20 a=pGLkceISAAAA:8 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=SvwoN8VrOMzw8yseGhAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: ZFfvIungQu4iJ4n9lNiRXWaqGceOcxr-
X-Proofpoint-ORIG-GUID: ZFfvIungQu4iJ4n9lNiRXWaqGceOcxr-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265084-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,protonmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D0C0912DE84
X-Rspamd-Action: no action

On 2/8/26 10:24 PM, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> Add device tree node for the Focaltech FT3518 touchscreen on
> Xiaomi Mi A3 (laurel-sprout).
> 
> Enable qupv3_id_0 and i2c2 bus that the touchscreen is on.
> 
> Downstream references:
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/trinket-pinctrl.dtsi
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/laurel_sprout-qrd.dtsi
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

