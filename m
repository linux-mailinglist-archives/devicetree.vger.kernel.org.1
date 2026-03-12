Return-Path: <devicetree+bounces-274784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NIdHvITs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:28:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1AD277EBC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:28:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 78A993050CF4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F2F3A9626;
	Thu, 12 Mar 2026 19:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pF+KY7th";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JImpEbYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6CF391841
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343664; cv=none; b=QWrYRmzvSYdMK7LY4oPfNjrQ2A9Nh3u9WweKceO3si9IHchaBvB8wz4M1SBYsrzZdC4YPOLTvW+uYWSb4fgNJLMpo3aFj8WC8ghe0n5U/KfgMt/hXnEGjJ1sawvaQsPHhp4Jhi57NoSFgo88RBb2KJrijku5Bf3+aUoinFDnbx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343664; c=relaxed/simple;
	bh=qcYWhGU+lKYyRru8rsAqqW6z64ECxSzycLP9cHq6cE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GF8ZkVDb070hBVaHg7zVV62jg2utCFQ5R8CilBAbRTS1KHSHkF3LYJKcUHSX429AaqOVWX97kdhrxfTsCR03j9B9k2V+51Gh51Rhf+Bq3fp+74WeDyi2PnJx1I2SswdaypCjnZ3TdxmRlLVrxvDcWLxFNXC/vI01w1CQ3jQzsZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pF+KY7th; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JImpEbYw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CJJxgQ4026575
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:27:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+72H9EwpwHIiHMhfY/D+/DjdblPYpP/OetfHmb8NBZc=; b=pF+KY7thp3KFqlGw
	gw/5pbZ6oezTF/1/T6bOCslrD2bFU4oKBK7hFMNjDLrj3UEERoMzsdiBZWTcDr2f
	n5BcsJhFHRWfPAW/t+OQALZGQh+IRjyxSemCUgEfc8YQpLbLM5gTkqvNAb0IQpj6
	3jZRoB3ISjyAQiO4GWpSgAAegLsr0GCPki4WL5AfJpXpRr3q4yoBjVm1OLvxAG7p
	5FeL7VXRGBoDFi8wLFTqs1ADFQxJS76d1fmFZyOK1er9hFH8uj8eJplHiJ2bnEVe
	OBDG2etJ8DSgQqg7JgGVZKTgwE3fM3jAbDTGQlrjeluOPSTQlvI8jNGudlZBPjq5
	I3e7bQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54u8rg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:27:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd98d96382so197902485a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343661; x=1773948461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+72H9EwpwHIiHMhfY/D+/DjdblPYpP/OetfHmb8NBZc=;
        b=JImpEbYwd6j6Tw90KDtTcvmsJKDi+TC033fICQ23+IJVYuYZcAd/CTsP+pgDBjAo4k
         tNXndCxtn6Fhi/jekH5J0UJ77xPwGxwSXpnHHasDlCkPgYEpz/rRcAFi2YSIOJScthKu
         BdOBnL5X6kD8fBhQC7Gw4k7sLtfdHvbliM4w+S/wfl219ftSyAIsfgoCJ2fOGp0NVy7u
         /mrPzB/51pURMWFosjL2Trl1/MlrI6b/qDe4lzzc/65xFU06xozDh1Bwa2vTRKNpComa
         w7thaYsG2EspRiA7kFPz4dFUsqRqrhC/EPyuBF10aS+MCD9UdWACewZxTLVQ3k9NgNUK
         UtKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343661; x=1773948461;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+72H9EwpwHIiHMhfY/D+/DjdblPYpP/OetfHmb8NBZc=;
        b=YDO1kwoRjkI8PAPTJ7CMyB/CKT0JT1SX1um2/KhZEmbQvYesRBu6fJ/qzZFTzsL62a
         OAmWgES6N4OGhwx+pjSY7ZFdIZYCy87Lsbt0ZmlOKdeA/Byx4PVczWNU8QAhb3RnoVlD
         UM1SPYpsTClRY7mEkL+YJ6zEuGl/06TvXkMd1jnsFBnYyuBhKU9i2Z5dvSBHLnFUxNpG
         H/tjpWfrJ+FLT75TK3xtma8ukrfCRIPK3tyeBl1GI8KrM2csqb36LKgO4g+lk8WvhBkX
         LbT1BDQmL/oaGRK+TNTz4Kt59+CjqWKGnlkv7DO3OOp1b5SPpy0Mz1bZu8zY7NhVj7Mu
         hF5g==
X-Gm-Message-State: AOJu0Yxdgnp5yX0CJicBffe+bmZjL6+/uMdu09kHAHaxEswZWPE+D7qC
	HSZwXmi5VJMlCIcdKVPHSmB8M3Wks/UNTpEBS8fOtOLI+aZAPtEG2jbFogtiG08CH7Ym/AsNn4I
	mMUTBCiiJw+ZwTsTv55KdaU8NFlM7qzgIHBRe4tNsQs84rOuruetaJPfw0uPRp8tC
X-Gm-Gg: ATEYQzxWMqgZAC2bmWMLhQxYQ+Fm6klyqkiP/lghlnMqbYwg7Mrxj9Ls+iG0nTbsc3Q
	k86AEklcf0jP/+Qg2JMHHSRrqlOld/6DRR+9T1SdtJ1XUie3DYrQv16hBgwBClskIXbcTD1WPgL
	ZXRIWmKG4R0GCFNdQyHWH74hLctUl5OzkZ+CPB11kWHnkn5sY58Va2zt+CPsdTjOjPIe+cw4PxV
	PK3AgnAmlgSs8vfJ7FMuqU/36fxGIgrg5k+I4WWScIQrjbK46zQ7XxsHneZa17CRI3SVAc2unau
	GakWMc1Ew/f8mWl3zyfPDkccea8ZldtLJkl2rrgIm83d9sqiJbceCu/2NMa7SdKhfZEyapiOY/l
	x25l2NZ40IiOOqaEfAiATfL7uzihGhFD3OX0v8T62mMRmftO9
X-Received: by 2002:a05:620a:4609:b0:8cd:b33a:9c0c with SMTP id af79cd13be357-8cdb5b05d3emr141743085a.48.1773343660828;
        Thu, 12 Mar 2026 12:27:40 -0700 (PDT)
X-Received: by 2002:a05:620a:4609:b0:8cd:b33a:9c0c with SMTP id af79cd13be357-8cdb5b05d3emr141740685a.48.1773343660386;
        Thu, 12 Mar 2026 12:27:40 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972de47966sm146845666b.17.2026.03.12.12.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 12:27:39 -0700 (PDT)
Message-ID: <9caf255d-834f-4407-afd8-7eae9c0f3cb6@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:27:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/12] ARM: dts: imx6q: Use undeprecated reset-gpios
 and drop reset-gpio-active-high
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com
References: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
 <20260312-dts-snps-reset-gpios-v2-11-0d5040eb4a1e@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260312-dts-snps-reset-gpios-v2-11-0d5040eb4a1e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Z03M32u1witcA8HV6PBoyDDtig3ApA2c
X-Authority-Analysis: v=2.4 cv=BNG+bVQG c=1 sm=1 tr=0 ts=69b313ad cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=0uu5XC-UX1W2kQo5SVEA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Z03M32u1witcA8HV6PBoyDDtig3ApA2c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1OCBTYWx0ZWRfX/LMqbAD5CKEv
 aQwUm4OCfzhLgV2bwfiOm7FHv0J7q47gwbEOk/Xki3M3Q79RM8Rai1OHme9BebQubXXyDXF8zEg
 SStmUmFLdVunp1DsBsjKOqd9oHR/zsa1sv7fpoIvqNTRRA4U6HmMvrKcPtqIQgFdNaZgj/cpepd
 5c/FAEbC+xUlLE6mUsoUiV+NK66MpJOHyW0RU5kAZBgLGKYQAyQU0GHPYWQCssst02m/lako7+8
 za6cH3sDRBDR3B8e6Yex6dphET4+B/pa9/eDefg8Lm0oX1s/Mo1byr2EPcdHRjaXFr+XxFMTKIH
 vZ0g02HAdkrxM5lJTMX5HdKsHmu/kL8/9HFT/gnjiDsoRKcb/OsqNvJL5+4sQK/4mTh2FPpec94
 C+7iVVeSN830YQR26qh/f3dCa3GMuPn00Dkd+QirUb43Wo4HUVHmG89r4phiYUngt2HovkVt1i6
 sqD2quAqt76Itl2zyJQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120158
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274784-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1E1AD277EBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/03/2026 20:17, Krzysztof Kozlowski wrote:
> Freescale i.MX6 PCIe host controller bindings, through referenced
> snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
> like Linux kernel did for a long time.  Use the preferred form over
> "reset-gpio" which is deprecated since commit 42694f9f6407
> ("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.
> 
> Linux kernel already properly parses GPIO active level from phandle
> arguments, thus we can also drop "reset-gpio-active-high".
> 
> However this change will impact U-Boot, because it only parses
> "reset-gpio" property for imx6q amd imx6sq.  Intention is to update
> U-Boot to work with newer DTS, but any other out of tree user of this
> DTS which did not implement undeprecated "reset-gpios" will be affected
> as well.  There was plenty of time for these projects to switch to
> undeprecated "reset-gpios", though.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

U-Boot patch:
lore.kernel.org/r/20260312192605.131132-1-krzysztof.kozlowski@oss.qualcomm.com

Best regards,
Krzysztof

