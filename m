Return-Path: <devicetree+bounces-269510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMNKFHG6omnv5AQAu9opvQ
	(envelope-from <devicetree+bounces-269510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:50:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 995E61C1D1E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4492A300B9FF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 09:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C030236BCDE;
	Sat, 28 Feb 2026 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="exzBv7rl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dQHGVUUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBF0355F54
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772272236; cv=none; b=dS/ju9nRX3Rtx990EC1Ufw9iMFJLZOBVtquio+0hqojB6vFRtkmvClT9pVo94e6Vqm1MEiYTbjcvR+wpanMiqSl40butqUmVmmwJjpnqC0MrUrdx4ygQdb2s35qY7szGgSQBqgtLnWWqy3/TNbKL3x/Dqfc3sgPEuEFARsCnO54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772272236; c=relaxed/simple;
	bh=Gn6POdE+RkABMyd9UPQSa+DpwSvOdlkQ67L1U8+UAAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YMBkwm35Q2v81GM1dC/Bm49zv4YJ0cB0jtjBNwOwts+fwfMvKDdLKXZQBvKP3sqbjTxAvUWJWya4IPF+RIdP+SKq1xTpoBNpxLD0/2bRzTa99GoRKiniXHxwOExAE9E8L+lcjQimZbo4QqA3dTQ4nUwe1tFSIa1p87vLVkir3PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=exzBv7rl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dQHGVUUA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90iZY2088745
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:50:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ic2FPeEcX2exXS4T1gdXou5B/+3WMKVsZkqfg6b72T0=; b=exzBv7rlF5yhptcp
	JS9VNa67PovVS2lu1CVuquQKi7g8pbZMNR33nmImPdm+Lccx19uCZ64l53Aq5U36
	4M4qHxG8I04OSXJkCZLTm5hSGN+kAxKhXSbJqYgsZIN3a7p2Onw3mTrqAvM4bnvu
	WJkB08VB7iSNX5frK85NLveay6y6fK2iGI1ikUHlf675hwxzrbTOIpzaaEZFwXLt
	c1eACow9Wbr2a2b6Vcktwg4STuVeU8ttZx9yL4g3+7AIgQ3k1TDJOl1ISTAah0RN
	ScVECwhyZd9VkG+3zu9Y5LmbsS5CHmHGffHZVmIGgbt9xTgUqA7TvA0nX2xKl+dR
	JYwECw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrrpfh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:50:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899ec35fd5cso282986d6.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 01:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772272234; x=1772877034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ic2FPeEcX2exXS4T1gdXou5B/+3WMKVsZkqfg6b72T0=;
        b=dQHGVUUAMOEmxZJB428glTaV4eHKjmlQNnMpV/ATEXjA59c682YSa/QutydjVuFtGD
         pqgaTwAthf5nZ6VNlieo5QXVFkXPykMUu6fQNkgGGAfbntnyGDg7XunuxeSKCj0Y9A5L
         ksWQ6sjZDuBR9qGkYrcw2/U9W/1iOmGBlbUaFPOdVXWpKY8u/cxjvhdBPhocBfpltDWt
         hCgbtCw4U0Vg7QxzdAw7COuxXT49j+Sv7Ixy6DBK6LjtgXFGyG+XI2Li91yJwZiM2msd
         3s+tvxJ5kZOpkRqmHoDKmTuhNCuKOii/zozSCWY/aqzgyF29IEKaQSccB8jXGUad/WVy
         BUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772272234; x=1772877034;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ic2FPeEcX2exXS4T1gdXou5B/+3WMKVsZkqfg6b72T0=;
        b=mVEBvnq3h/jadsgwP4xkAvSU2B3QyBL9fHvPqbUo9YIIGCEyLF2urHXH1ccrtPO6nZ
         l7df+DuKcFTliPB/2nKnVAEuo/RAS1Tlm610C1424/UpAeXg21/iA7VIXqWBAfz/c65K
         1azvXgWS6fY4zdgUc1iZwnezeqLCW21/nxzgYkztRZIQrYydJigZ56vcwVZ8/5TRB3+D
         p7dAflUH+HH8dRAL0M6Q9gM9ETYLuVcaVnQr/tWJKBvwvb08PJ83f3oW3Aa7v4exZzGx
         pdlBgAqiInVKr6OE7eNabxKnqxDaRugsUJB+iA+T3gyHPLxUJCinSzh+Dc7X9/GGhZOx
         wWWA==
X-Gm-Message-State: AOJu0YzAX9IFBpeTHJA/onggfxbaFPet1yQO3CUNLYyOQCLqSHN8fjlg
	hyViT6EJ+Mb9eLWTtbQ/coAicuRhlnviZiubnS9XH/vIxeEY75ZR3zOLxKbW/4qZNAKzIvGnYZX
	zJoPt46inFyA8UcRP4bsBQxoZuJFGsilDmxiZkiIi20Gu4jQu158rbwZdHlPeWiBI
X-Gm-Gg: ATEYQzy72KuwsaUkguwxF5oyAax51GD67qqLtyEXAo0iewKIhbHq6BGJ3SgO4zigieP
	3LRZnOe6NIHa7AsiMuzKj+nh3+4V5d0pm++ozy0Fb9+/6j0ua531t3h2Vk4OMhIV5hVH1tJS91C
	q19XxSGP2sPgL/w1P71Mg+xXJGkMid71WLyOniDcx313iE0BassHVCAqAAWfHAbisVPOPXOx6Xj
	MCdCZx0nod6Yssr58cH/piNv78HNSVT++Sb+wArJjAkuLjZNBFnmzjHENGvOL5zblMdPWiCLqAq
	tU7wkwSnCWpmO4n+qQwLhAPfS/9uQx1gCH9DoL48OJYUp7aydgIt1ueua2udWWcU05USb2icW3b
	lZ2TXbiqpiAs8VUwGsZnZg5qJlnAlGVlOKVIVRyWULAzWqfQytQ==
X-Received: by 2002:a05:620a:288b:b0:8ca:363a:cd73 with SMTP id af79cd13be357-8cbc8f366acmr694822385a.68.1772272233980;
        Sat, 28 Feb 2026 01:50:33 -0800 (PST)
X-Received: by 2002:a05:620a:288b:b0:8ca:363a:cd73 with SMTP id af79cd13be357-8cbc8f366acmr694821085a.68.1772272233585;
        Sat, 28 Feb 2026 01:50:33 -0800 (PST)
Received: from [192.168.1.29] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ad3daf89sm1169162f8f.20.2026.02.28.01.50.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 01:50:33 -0800 (PST)
Message-ID: <88ea9b0a-1eb1-4273-98d6-b0283e1af6eb@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 10:50:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for A9
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20260228-a9-baisc-dts-v2-0-47489d5cc1a8@amlogic.com>
 <20260228-a9-baisc-dts-v2-2-47489d5cc1a8@amlogic.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260228-a9-baisc-dts-v2-2-47489d5cc1a8@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA5MCBTYWx0ZWRfX+L90RebMIZw/
 BMQtm8+PxU9qfMLyQdsjHjx+s5IpiojOq/mbcVu1zvul+CuNYPlkpGRHkDGJ4sZGyIGwXm2wUo4
 VaypHW+U4fKF10n0iCHXE7Uhrs6xWtl0hVyMJ79Vjmt0uq5djRywxAprg3NfWiPlyp/JVYFxPcv
 +xQCU2zoSDUUEMT2fZCeTLDpqcoIT4ajE46+G9FXDHhK4k8cQQ2+MmxUGw0vpPjWEVLOgCHDEE4
 oY8x9KtAOhhQEBMZUVbwBLr2kS7jSCufLkKvn/Z875AbtLtC8bd07SrGKLB1AoCkPi2cFueErT+
 CKUuEbt5DywizM3joKWI5hbDL/b5+aGTosmnt0Cgxn0eGGuf4JfTr9vzKtvl9BeXrlmIikmVSJy
 9T377olMpjYVutfv/hjl1iJaCzeBOnlnVhX2/x1LDahuxcC3TgZ7T0TKMSTk5Wr0lUIOzUIO7/y
 A5ES3jrkuNWWERg0QMQ==
X-Proofpoint-GUID: NEmzoHtsV8ruo6vZeDdQHrtYORFg-l8D
X-Proofpoint-ORIG-GUID: NEmzoHtsV8ruo6vZeDdQHrtYORFg-l8D
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a2ba6a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=BY5PBP3jAAAA:8 a=mK_AVkanAAAA:8 a=EUspDBNiAAAA:8 a=3C8T0L5fw41Lg_G7TNoA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=gQW0MTutLl7eKD3OLfcZ:22
 a=3gWm3jAn84ENXaBijsEo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269510-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,amlogic.com:email,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[amlogic.com,kernel.org,linaro.org,googlemail.com,baylibre.com,linuxfoundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 995E61C1D1E
X-Rspamd-Action: no action

On 28/02/2026 08:56, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Amlogic A9 SoCs uses the same UART controller as S4 SoCs.
> There is no need for an extra compatible line in the driver,
> but add A9 compatible line for documentation.
> 
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Really, so just just ignored my feedback?

Shall I NAK your patches so you will respond and implement it?

Best regards,
Krzysztof

