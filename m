Return-Path: <devicetree+bounces-265712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLbgND0Bk2lr0wEAu9opvQ
	(envelope-from <devicetree+bounces-265712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:36:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D6F143096
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97F8B300B10F
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C5F2BE644;
	Mon, 16 Feb 2026 11:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hap2aoH5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fm/pK5mp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E313C2D7DDC
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771241746; cv=none; b=IhYCfitbK6uCTRylrdHA1GiGa4UP3mol/9hKP02wQRfNx5s48lR45RvJYU1kT/4CUMkNJ5ITknJG6KasOL797IStZFWksHmyRFt4947arSVMZGnGsZ/QVrr6mCaYeg4Zz8hQeyr/9dBldNnmYRBHGliFtJr0Iju5JWFvEgfFZao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771241746; c=relaxed/simple;
	bh=nYJt3nonSAkhxW4kfykdt0no87GQsz/ae6dVsT8TU+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pdE5Qy3y6DGdGuNWxft+hFvvypsPAZ6YlDH5K+Gx6VE7+Ng9CN36ryFir843I8oXxhup/wkzRBOly1VQ+Maj0Q5wMFDVfqi7aE9GGruw0ni7Hzo2sQdJAWtcRbyBDxzshudwSIXvdHJRqQ2mNTfurk3Ctf8mnDxH7SskKr6UZjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hap2aoH5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fm/pK5mp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G9s2Il1847796
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BZtakdhJxC8jVGSmY8GuKwT5x4ByVuAh4q4rzyIts8c=; b=Hap2aoH5ZNKAzJm8
	ON6FVm7QvJ6w9zzvIrprnxz8NNWlzgrW8slenGwUkqBJGX10uBJpsJd1ISQK6shq
	MXDMBn8kwh4+DjyZfJcPGIJjYrfBMV1pK5LyOXKWVJMct7eubxawdsxjKeJEVF3k
	6/RNubfdWOEC23vl5491C3TtmhvArtweXWS0HMJmCZOX9DaHt4VDmOypOJ5P3gbh
	bo77kgf5ujv6vc01OPsioGiQONkhrqtOGK+GvTBoQQphtHbHpPClWre+8pfryffE
	bQv9TaCFT1NVMrG9ZQGG/qyqyRnI0x1OOVQ2xZNCNkAlQXB7+fByOS2felJfWIlb
	Z4+qxw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caerc4mbd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:35:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8946ebb51a0so23567556d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 03:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771241744; x=1771846544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BZtakdhJxC8jVGSmY8GuKwT5x4ByVuAh4q4rzyIts8c=;
        b=Fm/pK5mpIG+XFwM1T3FEGNKOpQiXSwWqthrXco4NlJUApFLCaKuT1LpMNvmwFP45mK
         PQeFmyrB4De6QPY5k4L9NhmE0ypJ8Qapy3om5XDhXCi895gsfUAQTMAB9xxL9eYYHQBB
         Udg66m+E0VsnEwwFXdLVbbGirsMX9bGXaxOghbrsDGPkoYGwBUMiv2abHOD52Wpeyosa
         Z+57W5SvDK6bvw6hsDseTe1OCXtCFdxFFrK7qOIyk/QlUtFKk4r51AwhmfUHK5h1QfjD
         +v/y73m7hpyQ+vjsL1To2isojcdNHUfGTPD82yZNiAVG4GK8v2rQifmwLU8WssnLgnfO
         qDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771241744; x=1771846544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZtakdhJxC8jVGSmY8GuKwT5x4ByVuAh4q4rzyIts8c=;
        b=cnsAMdkXxuENWKCX5k2Ml9DDVEfxGWuy9095MjX7a8/++/Xym+oR7p70ATFeKP4aY4
         pd3JTlvJvYmbmLU0PYtIyTlH0ROb1oMCs/pBJQEWfJrrBz4cQuuIHBJ9Nek6neP4ehPH
         j0tcqn+y/luESiUWUKlaocqLPJwaHsI03e9ezR47MeaU/6esitgNCZKWywLUYuF0LP5h
         TU3vu+VeMl2QX7FGxvRJalDTHXGyNJ5aXmx8QzSIlXBBPwP9pl8wtMRYDoCzbyQmXlRs
         Hen4kqZeJ93GQd6Qe2xbTzFzLvidDOdFSuyBHnVRH5IK6lCe6H82MNRPWdasuT5uIDqO
         JlZw==
X-Forwarded-Encrypted: i=1; AJvYcCV0wt4qMncP2cScSqAUXcknXpzkd0u2rLCfQzdplCphTG+vsQ4Xs04UX+BrKDv4AKK97ppLfUmDJoRF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6D8JE9oohm+kP40R9OcF4eNATeapD7Rq6sdvtRKbUCEql0W64
	c5XFiXsdk6GAv7ri8fXEhJulpBDvSmfj3eLTjeEbTLA1gvvIfjDjRcPO48DoN/SXfP5m8yXKdON
	+hd3a5t7Wjh2CPfsa7klW81dGNXRdcIguW+JVgFZxsAGZPAU4WMrz2rk0i0a9vMpv
X-Gm-Gg: AZuq6aLT+afzpIoIUn5EnWx7SQAVCbqcjeoQNirIGQysX0mm0NZhwrGQ2qx8UQBJyFA
	fpHT9U63FltVjgGfZxrgyelD5fWwOmscEVEUTMDuSl1vNhxTnDw3xXIuKghVgY82p6H5BTEOXlh
	D6aR9EEzDJVtxVAPc0xfjpitBuLUEo8npqQQI3u0i9DOpUfKkk4Lr0TPRN25b8UqZ3vigxlIOsK
	z8e7YxjDSXMlQfPkMRpWMpaUQfi+YM5Hmvi5om2Lq8eG15Q0hfUIh1RN9EqdMpGqsdB4xtr0X92
	6pZQL8IKhb14pQKd6favkSyEGJ7EPKH4XXkeXZRKkcCnRC7mVBiUH/apcpJwKD3MgxAPDEe4T4X
	Gc4dBNZ51WSC24epGNB63Oybq0QIo+oN1MrstLanJTYE2l8zjOBoWC9SuCd9xV7127GR0MTM1gX
	dQvQU=
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr108762446d6.0.1771241744246;
        Mon, 16 Feb 2026 03:35:44 -0800 (PST)
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr108762126d6.0.1771241743800;
        Mon, 16 Feb 2026 03:35:43 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7626bfesm242054766b.44.2026.02.16.03.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:35:43 -0800 (PST)
Message-ID: <e204b43f-ebef-41a0-a5fb-158d58d9bec8@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 12:35:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qrb2210-arduino-imola: describe DSI
 / DP bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Riccardo Mereu <r.mereu@arduino.cc>,
        Martino Facchin <m.facchin@arduino.cc>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
References: <20260213-uno-q-anx7625-v2-1-c23359616528@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260213-uno-q-anx7625-v2-1-c23359616528@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZJraWH7b c=1 sm=1 tr=0 ts=69930111 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ZvGL6e6JV_seYosCAm4A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 6a_EuF7ChJRud_PTlSEBuoCjnhdeC5tb
X-Proofpoint-GUID: 6a_EuF7ChJRud_PTlSEBuoCjnhdeC5tb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5NyBTYWx0ZWRfX88Hd2i+UhK2T
 cdFBGgk+c8muQUOTKR3Yhfo3e0RMLTHO19Sds7URuU7qO8g6NW4GCJw8ihb1YsVIAZbQvmVie/m
 ok44xNW7hczuV3lL+LYtsZ0xTarVQqfxdOATEpqQPJXbZy3j/UdPMB2xML+1gDMMsXGTQb6pt8M
 mvzgURAHhsvfwqQ6/4APoSkddTT8xcULSYXrEbhNEm99HkM1cGVOhXU1teVaJOlH10unvwobJF+
 OSrziu0iagHpBWYJ4iFqvn6P4Fkz0EPxA3EVYEeitRDgbqOeS5EfNOZ64JuZg5z92tOkqWMi4fo
 ImEMrj49jaOJ2hKYYBRZj4z72TYx5vCcXLQaMPzaVevSQyi1lviy8aM8IL+sTLwxNzkPx+wULqz
 8Xy6FEcc1aUovUGTsGyMQ8M0aeIbaoTSvKkv62isPQZ10WZZRZFjAiekbkKP0ee8hxtTJS4RFGD
 y7LgnDZuC5FvpKxKt6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265712-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arduino.cc:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36D6F143096
X-Rspamd-Action: no action

On 2/13/26 6:25 PM, Dmitry Baryshkov wrote:
> Aruino Uno-Q uses Analogix ANX7625 DSI-to-DP bridge to convert DSI
> signals to the connected USB-C DisplayPort dongles. Decribe the chip,
> USB-C connector and routing of USB and display signals.
> 
> Co-developed-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
> Tested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

