Return-Path: <devicetree+bounces-268406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IeIFNMLn2lVYwQAu9opvQ
	(envelope-from <devicetree+bounces-268406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:48:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B91D3198F0A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 118C5302E87D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6543D3D01;
	Wed, 25 Feb 2026 14:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dDvQRzLK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rf1vJgqd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF792D2385
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772030905; cv=none; b=oLmzu91g2IIHRJ5+3jnbLh5ULU5deze5NsvgqYEZ9eGqc8TwiUxXyj1yz5TDeJzMyoxXDmoSVe0SbpepLqxjUy1P9Pr7SO+ystNKH8mmeUzhy/tUdmcxauLvxDLmptZTO+eaNhBq3qXY99ssFKem0IugABlswwxeqxBa/p6LP/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772030905; c=relaxed/simple;
	bh=xidOB+jX+4w0CUBEqt1PtSU26kes9riZzE4qVFrxmzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=encQ3dPGYSNn3O4aVN1xRD61V2dCtpuYOzhBaBwjqFA/ESdYEXtizSlbS6YhF+/OaQPogr0OOh+HSbs/JlA37Ek4o+RC9G3CDUNc1cmH22smfDrgig4JfFesg3Nc9Zb7HWMFxlkimbYMums99S9skeJm4EvkFXDOLFI/W1oL8Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dDvQRzLK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rf1vJgqd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PB3GqV789086
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:48:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5zADAch3Mm7UabY4EXg2OfU3UoQHMHTE2nopv33diB8=; b=dDvQRzLKfxytsAk4
	rGwK/IKh4wwSCLTn3WsclgXdAEXAramwI9zp/UugBclvjd+EOxqAJr8v9nsIVFyo
	nhMZjkEDGhqwfGAAVY45bs19sjPt9JBcX4xluYPkgdJXfEktQbczH9X9nwHPuTwS
	zjuRKM3hApk/AfkEoEV0AUP9Gx5nAKy4Xu8HHNkIIrtGKBKQGCD18g/4JlR0b/Ty
	+vLN+YqNfOj1PkXnAgS0CvP5lHAdt3EfYSPK9ik3smCGkhofjEjH5ltGGvED4UFN
	OvrxufYjWb7di4S2J6wqzRvdVlKpT8YveKYzX4TaOhMaO4e1Ui8Ztu9o91X9SqQN
	wd8+QQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyv9gjhj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:48:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-899b0035eccso6685196d6.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772030903; x=1772635703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5zADAch3Mm7UabY4EXg2OfU3UoQHMHTE2nopv33diB8=;
        b=Rf1vJgqdBLXpNCBOW4FrTh2TkjXynJ/uewdemoM1Gviq6RSy9k+70mJRrM1uoLNNZ+
         0Tu6WJZBmCZnTRFa9/sqcG4v2aTgb4XdUc4zVOe0ttwRTVEj2CvuIc5dJFCkWrUv8bsz
         wsB84U4ho+dojr3/6TBs0Gi5cfdHjeGLvMLnXIwos1HFjxtlzdL2pp42nMv6OYA7SIR4
         pNW6jDa3LTHw7kXS7owdnYLOzBjLrQyunI3Aab+XiCLr8HLIjU8Cp5Cv14wa2QhQGqLy
         x6wDASCWpNJSOVS3O8S8iu7gdIZdcd7yYnFAqpYE+Faaalwc1oxJ2FCjB6m+Pj0MBK/P
         6nRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772030903; x=1772635703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zADAch3Mm7UabY4EXg2OfU3UoQHMHTE2nopv33diB8=;
        b=ESlcoLp8L56nz66AkIouKcGv51I6VUSmMYSyyhLJ/CsphlBhxKgLu4eRMYrkcJNlmG
         6l9ap3+obfvfTAK6K4Yw6lK8MykP+YJA6EYXz3p+pOuyFySwfdEWA2W7hOM6SNBFliE1
         PZxiTiPJ+5bKYCuphDMzubClE8JvfVfKeYy12CanCY43kM31Qpnd3HCptlPY9hBBz2uq
         ZRXGFOjzXxhvMUMEmbSqTFRnApPPYk6myRiBeWUSaQ2fB7w239HZF04I/29uOs2oi3m0
         /BfXBoSGOp2kKRyIzZdEsCg4SNCLnLw2/AtzGcObdCUQneM/432YaQJHJZ+xU94j/IFb
         QObA==
X-Forwarded-Encrypted: i=1; AJvYcCUu8J6efnVfgRG3LBh0Tbl0rNxIHpBIse9CXgf4AB9cRDCskLsJNUTcr3y40TfGi83WlzEltxuJrwGv@vger.kernel.org
X-Gm-Message-State: AOJu0YzXvPRsH/w/FUzWRkNyDIOR+FPb3ARlIx4MEDht7horS3AXI4j5
	KVFI7IMre4EcRa7l65QK3Fj6fN98uJyN//1Gf9aYRx9Ha/p/dDkWhGS9X6Z/6OI63OnKgnpkp56
	giyZsXxWyBda2WD+xebgzpUCa2YyVru3bPquFaEf9llbY99fUh8J4x+seBelkJI81
X-Gm-Gg: ATEYQzyBDON68sO03L32+6GY2OiyeEQgM25cQ7xy+03eUsI4rjWJQtNnzER2wVEr2dD
	pian1P7wcrii7IM6c4cYB+WXPGr7xMCG5DbXrGTmbBfdYOWMBs+Wwe1DuWUNreNltZG07lZ2eJR
	IidhdGqJET2ce8RTyo1V6tiT6jcTr+FEnDY0IQwLBOi9BAHZZgc1OLsD9lJMyIXd6k29PYewY8W
	HWDoSF5DvaDgQ7V1QMKSFS1HL16qvWw/OWGZRgSLuDC2qDhDiMqETGzpiVKh4Pipuedg4JHQQnQ
	a0+HlNLfd1jOxLH+v+9p95+SILC9blnFKaHZYuQqhCi7mk2AXSzs5MGitl7ExsMw7mR8/9Z0wQG
	O4MYuKh7ETTqqtZfzfknoMvty2SmIgFyom13D9ijbVySkLydtiCm0kTwdOGcq96EHZsBQcHAjWH
	MU1jE=
X-Received: by 2002:a05:6214:4f04:b0:896:fd66:a084 with SMTP id 6a1803df08f44-89979e1ebe5mr155965746d6.8.1772030902724;
        Wed, 25 Feb 2026 06:48:22 -0800 (PST)
X-Received: by 2002:a05:6214:4f04:b0:896:fd66:a084 with SMTP id 6a1803df08f44-89979e1ebe5mr155965386d6.8.1772030902230;
        Wed, 25 Feb 2026 06:48:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084f191b9sm509759166b.67.2026.02.25.06.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 06:48:21 -0800 (PST)
Message-ID: <6e525b57-bab8-4549-8d33-bcdb1a474fea@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:48:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8939-asus-z00t: add ambient light
 and proximity sensor
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260225-z00t-capella-sensor-v1-1-99f767bc326a@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-z00t-capella-sensor-v1-1-99f767bc326a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vPD5YIVCMhgGE1PovDVSpzp085EEa67A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE0MSBTYWx0ZWRfX/C3AbwEZgH36
 rWQFvm9CLDkkKLAkxmVJFhciIPpgAnLORdoetM/ry2tGn2GcIf3/Ho7rpGqgq6GvpXuZsJSf+zc
 aTK/YjwfBboQ15qHiK1iDiSnLkXNpeSuIOfXU7LZ7V8DaOURNizhvfmky3A95KeLrrq8mdf1NcG
 xl+Y9hPUWkcosqDtV+aMpfoeefJ93hK3LV8yoqXCBvaAIfYEHmsOxnHoYzBd3rCjM3rUx05++nC
 cv+jUj/fcHH4Lfzno7q5YNBneqwtGxhdE32hUWvlCutwQVaoV0xQSh55RGzZfsX+n9w6mvSpiJA
 8KEjqFlR5VjyuKFK9pEwYahUmkIh72VcSOZVNJ/s3yQ4SwsCU0jw6Bx2eRcTk1h9e6joDGWZMPJ
 agwA9oGOhz8hcB/hTsEzrf6vKt5QV0uGupmeVqvaWq8plY/QY7H4Kl7miVOpmPaToYEVJXSf/EA
 WKWujupDK7ympNL9EDA==
X-Authority-Analysis: v=2.4 cv=GZwaXAXL c=1 sm=1 tr=0 ts=699f0bb7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=DldKRDGfgS33INwkZP4A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: vPD5YIVCMhgGE1PovDVSpzp085EEa67A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250141
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-268406-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B91D3198F0A
X-Rspamd-Action: no action

On 2/25/26 3:43 PM, Erikas Bitovtas wrote:
> This device uses Capella CM36686 as its ambient light and proximity
> sensor. It is fully compatible with Vishay VCNL4040. Downstream device
> tree reports Capella CM36283, but upon probe, a device ID for CM36686 is
> actually found. This commit adds support for Capella CM36686 ambient
> light and proximity sensor.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
> arm64: dts: qcom: msm8939-asus-z00t: add ambient light and proximity
> sensor
> 
> This device uses Capella CM36686 as its ambient light and proximity
> sensor. Downstream device tree uses the compatible of CM36283, but upon
> probe, we can see that a device ID of CM36686 is actually read. Possibly
> a driver for CM36283 was adapted to be used on CM36686.
> This patch enables Capella CM36686 ambient light and proximity sensor on
> Asus ZenFone 2 Laser/Selfie.

Downstream using vaguely-related compatibles is ""standard practice"",
many vendor drivers don't really care about semantic correctness,
as you were able to find out via the chip ID register

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

