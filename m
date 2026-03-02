Return-Path: <devicetree+bounces-269967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEtfFhGApWl1CgYAu9opvQ
	(envelope-from <devicetree+bounces-269967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:18:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0514C1D826E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 406E63063778
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 733FB36680E;
	Mon,  2 Mar 2026 12:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nNldSCxI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VEwaeZR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A038366563
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772453649; cv=none; b=fwWz+fYxK1kqmgpv0mzPQ3jg8YDwfrh9Rfj0tRexkxqbrITj9OWKHsS7GNywPBcq3DzWW4+PZdamxTiBMG5WaHrrVjk7FA3L3mkoRhbUfia2IAxKLWvmM/rOETCWkZY16BZG4Fz9l8Ml0Oc38oyiJYY7cw+yn+B6lEIxfdFpCLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772453649; c=relaxed/simple;
	bh=XHXBp3d97iiosVab1Jn23Km3/qBA8emWKMZwOEPDpbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EmE71l/jvTxL+wzm5/09/55S7pmCmQeTAp5vj70sfn4QBRLJCHKLMeY8SDltqRq0/rmNCz2zd6KVmfdMAv7smw92XjQgrGu8NOnfk/mnoKsAExiYKyBEkIS90HIDtysCFe0lPDH87rb4Bkj95RX21yeCKtZIWRmPk6fdz+PUMNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nNldSCxI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VEwaeZR/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62285YBO662249
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 12:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	foPu8WsEnJMu/Sq9F0b9Fw4C2wsRnWlxNiY7OWrklQ0=; b=nNldSCxIbdShk4kT
	+aAH9TQnYP83Db7Y0xmr6lKNnV5MwkSLK233EeShy+kLIEq6M1JHQBnDJ9WgdyUQ
	wT13mBDOvGbgPvitn4DZrcQexMERL9xJmOJcPS1Z1HhGB+7+A/6IEGZFqRUzaJbP
	YDEXmPD4HKc6T+t/IfC52KBmCGL7hE7DlJPcH973ArwRt7O/xOZK6qzjTB2v8SXW
	TsHjx40LDqAxS97QYOKPV5qDgTjrh6qR9vXdTs6CFWCWSzPv8jTK8IWsF/JZau6q
	iz37DBzO+RgTwVNiL9PVZKuwlA1GI2mwP/Cijx8ZQyRBPu3cQmnbIV+OejR7AZa0
	/gxE2w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2rx2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 12:14:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb399597fbso333883985a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772453647; x=1773058447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=foPu8WsEnJMu/Sq9F0b9Fw4C2wsRnWlxNiY7OWrklQ0=;
        b=VEwaeZR/2g+8AtdQZZwIh6h7zVZqV1CI/hFdtIipD7OezQN/A1HGbMrFw62UUbEtHC
         oWpx6HepTkhl41+obzbLlb05wDPMszQrt4f3PIHYuZdFDQ1H6PJWCUso/G9G8XzU+eBL
         4Tf1gUdgCfMWjyVxMzrzR4gENjIVuwyLS76NtsfOWmhTUrEpvVKHOugq9ujWs8lQhGR8
         sKl2d7CPaf8O8Ru/3ZszEtzx19yjutaTiq2wzIHFHjZkoP9wFgt3Uc9YTU2B2prXEew9
         nErz3FKR02hNDDOQGqGng4g9nDRmTbxz/HRbLvPF+kJ10eJ8ofl3lXZWX8B5XzZYBm8C
         Tltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772453647; x=1773058447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foPu8WsEnJMu/Sq9F0b9Fw4C2wsRnWlxNiY7OWrklQ0=;
        b=LSKf7fxjQd8eKUCbVy75zKw7OqDSTsLkkqIiAr42V+/aXeXyclfDg8CtgS9iIXlAUU
         H3IaelzMZwo9NMgndQtJSXS7yGcNhWS4VbR0o1myT8nq7L1AzXspj+/OlToZVjuD2ZGr
         kUg4YL6980lmnzJBcc65iM7scWXa5patMyMqmH95dIK2R0ozyj5/F2wzwoJTbxd54tPv
         coZaKyR3koO48i3Vf0w07viTpH0VKxy8zRk5zWNFjvJmMQpAs9uZaBV8rjlvrKn3yycm
         ygpuZZJcDBFgU5LrnKG26oxIb2tF9v8nI5J9J1BufDtfu7/Gk+Yo/Ls5Sgz8ZbkKHIJ5
         xmQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr3UDMKVpcJ6hU6HWh0tQkXBYZzvRDJuEtFY0MKK/EcX2giZ7VpOg5NTukGevMpyV8TKm/r9WmCOjs@vger.kernel.org
X-Gm-Message-State: AOJu0YxGWmqV4hAq5vgLAeqyIn7AqBGQDnWvzZMSIc5tXbM1l08e+LD6
	KkZPjw8UmDXAqq9CDZS9Uvkg2G642R5IMjqDIdGwu/ZlVY1ReKri7MJCJRaNGgW+VVKS9K3vd9h
	cnzTBG2g63+eKP3/f+u0vbFMgXtVg8X7vb0h3lsfbvIh8sfCh7INuX9DWvHPCg/2f
X-Gm-Gg: ATEYQzw2J6jMeeyhtQjNuG9z4V8PJx01zWppXCp9BqpNuSYDiM58Tw76QshsszLgn2V
	jiSgjNVtA16XRVhpa4imdVdCOcACVnGAbkoWTNvdB/MrUmRgBNy/tT31nLSfhpNsppt3uq5QNJo
	0hU6xDGr7WXmo0srb4m87nkwpUD/WXihRr1D64Md8IllnOSd8whCupNwr8MBhLSgqF+N0wWYmt/
	LcQrtcR8WLc/Xf2+a1DlddaiNHEQxTwBOfsL8SNdh2PODGFQxZcxRbUuuHHFoHaxfiZqdDe1p7L
	t7BixXP1tVBjkC8wSANxQphwZ/WoNEYTN/FmkzSn2tAHuGpr1XWhd40h8HwQGzrzBpYa/GdUM7k
	r7DG1VwtxoADofCn0d7uWNysaJWPKQjATs2K+rjQZKVsoW4Y8s63xsJG7CkHHQIo6YmvEAR2/HS
	odBMs=
X-Received: by 2002:a05:620a:7084:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cbc8e50f80mr1166824085a.1.1772453646643;
        Mon, 02 Mar 2026 04:14:06 -0800 (PST)
X-Received: by 2002:a05:620a:7084:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cbc8e50f80mr1166820585a.1.1772453646233;
        Mon, 02 Mar 2026 04:14:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd4695bsm3488662a12.12.2026.03.02.04.14.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 04:14:05 -0800 (PST)
Message-ID: <630bcc07-5290-4099-bdf3-b7e37105619f@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:14:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-dell-xps13-9345: enable
 onboard accelerometers
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: laurentiu.tudor1@dell.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260228-dell-xps-9345-accel-v1-1-daf9e3b3b5ee@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260228-dell-xps-9345-accel-v1-1-daf9e3b3b5ee@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1fjUK04ExGFD6NMgsvei7UcyFz98-hj0
X-Proofpoint-ORIG-GUID: 1fjUK04ExGFD6NMgsvei7UcyFz98-hj0
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a57f0f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=FX2E6SYNxEhLkC_k0woA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEwMSBTYWx0ZWRfX87Q/iMpxSvIW
 JGBtao5OKljpm7ViUy4slNo12vgrsjoXKg/nvRi9Yf60WPN9iR9aQkg+97cIqa4f20bSryXKroc
 yGYjCuinWBl2Zjb8x2ThFUFd6zTA/iMwi1JnKtsuQDXZ0R7cLcpYOqGLzOUVjjJRX6Jbo4Wot5A
 81qWRDbin29e/H/jQxv9jmzazGXdQuxPIcdR5yEpgUyTVOrqAGBt5pLwtjh8dHrZDBu1HZUmSNS
 ChZpvHzvUxxm9cgBEXWCYG+Ttf5jXXpfGFGXVHNnSCLJ6P0Gs4exqd0p5VupBprOLA2vOA/aw4A
 OX33nSViLS6O1IrSk55aas63wHEFs+rZbeJQLpsfvrYcH2nplzfANaHtfQzXv/aMytyRraywdk4
 uyx2SFKZsvWrdoDGNTR50dstNXAhOOh59Tczh+xUlxRznR8n5R23dUm0SZoEtGDZxVaNbk5wj8e
 qq0amgvDNhkBBbEiUIw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269967-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0514C1D826E
X-Rspamd-Action: no action

On 2/28/26 6:46 PM, Aleksandrs Vinarskis wrote:
> Particular laptop comes with two sets of sensors:
> 1. Motherboard: accelerometer
> 2. Display/Camera module: accelerometer, ambient ligth (and more)
>    sensor
> 
> Define both i2c busses (bitbanged), sensors and respective rotation
> matrices.

These GPIOs correspond to ADSP/SSC-bound QUPs. It may be that you're
poking at the same bus as the DSP is, concurrently.

Konrad

