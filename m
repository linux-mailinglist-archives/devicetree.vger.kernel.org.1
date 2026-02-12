Return-Path: <devicetree+bounces-265113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CNgMKLxjWlw8wAAu9opvQ
	(envelope-from <devicetree+bounces-265113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:28:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC412EECB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82D82301184D
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CFF221FCA;
	Thu, 12 Feb 2026 15:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IyLv43u1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BJGsWfmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A81B4A21
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770910009; cv=none; b=iq+r20Gvi1W7jf2czO1/FeVjEavTrvTVANnpl4/eGTl84CDtpGHd2Q6sCgAxE8rlWuoiBHXVHJd53U5JRwWnwIkfDiOTPaRL73YS0fUBmTJKCOYjiepgDVmY0PMrAw0BWQwT/I6RRIm7SLzHEJl7eUIykuqnXwu6jIcfEy/zQnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770910009; c=relaxed/simple;
	bh=MAYFwDwv5etUMgHZEXtBP2caSzisQcMR7MufdoM3D2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VN3oT0R/l0ex8gaWTlAQ2JgnYuWqAHD+UzkI5qqeR4YS/Qkl4uYZPLKJvYLjX0n/NLxO8aa9eQTUmv5YASGA9IRdm13gK4W2n+i7+aYo8nwDKSkoO3I4+wt+A4gJNWJl47I7jmMdzf9ZaFG/c7n0p6c9W6rKrb7fUaV1iCUzNXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IyLv43u1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BJGsWfmJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CDRgwC3943718
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:26:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kMkDiJOoPp3W4iqxF1E/zsU0kxM0RCHVC9Du88flgB4=; b=IyLv43u14WJTq5pP
	qClFieurKiS+IISNrkAbO+bW+mcKyM3hXstuhHxdo9xQ05gyhTjmjvYvX6M/mG3y
	00BVoS4+htWRgv9S5goJrMPf5nACQUw9eEV/JKmPfJ418qsjkl2xsxvMyGhyhc5l
	hQwn2fShBUl3WbvGrUAflPsQLTZJEh2Ct2lON72NRCvPuyzLDWMfUinsLT9LqR3p
	yP5ajONrRbXmIG5jT2x1n24b3GknhG9QEzrJRSXxFKDmDbk0nZVimLj0deMOpc3b
	MQm11LV8M2dnWjB/VrI3NEJqkDefsEMBoHnj3dOJHjawoahjW89n9qe5WhsOWFWq
	wvS+1A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c90d6u6nu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:26:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6de73fab8so276840585a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 07:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770910005; x=1771514805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kMkDiJOoPp3W4iqxF1E/zsU0kxM0RCHVC9Du88flgB4=;
        b=BJGsWfmJfdgnDcdTnpTtjtxnTgC8mv1t3h1n9d1FPqzhDgYGZBMyqoOKAserIZNsf+
         NTBrsodY5uRqHxmvfHIrHU6GKuerIFsNU3nxMG2Vu8y1KZOf/e56/mIYPuicPzavgen5
         MyEPIgai61R15Osm1bq7gK3Xih9oI7L+xg9wcFeXgJoOztFM6t2mPNxLBP9gAXRn2XUi
         P0zjjvj7vB+Vf5+9mqxRKEqPKFJyq/MmRm7gVSayXnfKzDrhV79DAYJcm/y6HzFthmZu
         7n91f99DDcfP4UMUZjHRdEY/8Q5iR0jF44EKpu+a9UhTFrPmg27AtRvUmI7N5lhjNRb8
         eGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770910005; x=1771514805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kMkDiJOoPp3W4iqxF1E/zsU0kxM0RCHVC9Du88flgB4=;
        b=bHwJe1iTBbiqmE6i/9HaNIm01xD+gNjXwnFdwCSwK31XVRzNDnuSJP4PBqd3cBKbep
         9DJPFWANV4iIqWsvSxGqsa1mgI6XUFtyvBAX0WaoSzMI5+gsXEt6/EnZhspPPTHYZJJO
         Y8/6N0CgJu3iexz0vzbuyNCEpkye1kEZ1EWfbo7MP/5d5FrCWJOJaCo/uWtiKcyW7J/4
         hjR6s+vKCRvA88ZMrntWVFetDPy2mYhhRzUCsu5ACWuO2TvGJNhj19FcXZ1M+L6VHMQm
         LXMK+EfDXZUveoOHyGOKVT2JtXuWf+pENiUNcumRpUndmVk5c56jMCCCBflevwBanuN5
         X8mw==
X-Forwarded-Encrypted: i=1; AJvYcCWJCIEtt9lk8NwFrmGxVhVGAjOd8vmAiIxZbKnPy8ajx0L14EQll9kWJ64BHaJjPgxudVx8Iay73uBQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwpAhnD1VA9jlt6rll5ZXu11n4w5VKqnKL6LYdJpNTuqfefeTxD
	7yZO+8NrIBZvkJRWwjacZp3/Z88NKIY+cR+NgQXqzK7Af+qf5gL8lZPrG8Y/pgYxeM7y38HNmFW
	nFKK9Z1Tzv/l70CY2ZITFFARQ9qf1FMhIanvBn5xiXECVeZn5IwwEg9q2mfaFipDT
X-Gm-Gg: AZuq6aLVxehZ/Udgrj6tGPvWVk07eizY64J25NHWVfdOl9MVG0oA14ZotVtF0HFC9jK
	Tbln63QuoQEuiHNHGdTa3q7yU+xK/WjPv2IkjaL2GodQyxhfgHYvpwx3Utcoi0IVs1ieyQvjMGZ
	Ux6pI1480HcNDbVyowVygMCz1dtvUtJiBFGNbLZGw0dpu1S8+O2N3260BMhERUcXjN1obtb23is
	U0ThaxJW4j1NbDjjfj7dOxuYyZvAqc6cMvA6cK570NWM+NCH6hXO4pZmvWLBnpktUpezsdXP3k9
	wEQRKOmUZGbDUuDe4nY+z/kpxfa9wMPyidZC+uVQlAgKjuwKg/tyzl5Qj75FPj+JudF3oU5wG29
	dgesJLGdpu28eX1/eN61PxkgGDKHXY82uCm8BI05te0n1xxUKqcuv0211C/zQmI61n1m6YHj/jS
	Jyht4=
X-Received: by 2002:a05:620a:4486:b0:8be:6733:92b1 with SMTP id af79cd13be357-8cb32f1ec47mr302967685a.0.1770910005551;
        Thu, 12 Feb 2026 07:26:45 -0800 (PST)
X-Received: by 2002:a05:620a:4486:b0:8be:6733:92b1 with SMTP id af79cd13be357-8cb32f1ec47mr302964985a.0.1770910005141;
        Thu, 12 Feb 2026 07:26:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38c6asm1837726a12.20.2026.02.12.07.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 07:26:44 -0800 (PST)
Message-ID: <7126a0c6-891e-47fe-a584-80a0e0bc7538@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 16:26:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2] arm64: dts: qcom: arduino-imola: fix faulty spidev
 node
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        srinivas.kandagatla@oss.qualcomm.com, m.facchin@arduino.cc,
        akucheri@qti.qualcomm.com, ndechesn@quicinc.com,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20260212152329.134065-1-r.mereu.kernel@arduino.cc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212152329.134065-1-r.mereu.kernel@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gHE_NLsFG1PbucU9J-j-rGqyLv2ovEwL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDExOCBTYWx0ZWRfX0jWgRo+oZARq
 t6SH8JuemYSggIllbxNH91dQW2Vd9D3tVqknkT8OdcX47oVwmo0VMQHryyStGCZH+D9gR2ZzyTe
 o2vSvJQVXdLP+aKOOPxPuCZKhAHaGihBenoHrIrypWPREHxzmLiyQ12gcBczFgMGvN2aCLVx/y+
 ch/fCP5frD07uW1VU3d4ymB4Pe0l1mzgDr+BD/YR2DQG1TNLlaa+F8hWkK7Yki68q3W4uejnBi7
 WZZcaWbavZW0OtZAZPqypOjmiEUUOfd91doMeP1ScLxl4wR5VkOPWrHsYtWTb3G3cqTPKo6BmDC
 LZZ8EhMnbBNx5FKz/11vcNZt3gLOOV9guOEESX5S6EVXV53cD0qX1AUWf0SgcUBXKDdIfbS5XUj
 gjsVTUqrl5sBmlq/5BZID7+xNZXPilmiKdtgTNvmfDc0MMMOUdOUDu+LezdaVp/Kc6LUHfodCZM
 zDkb1wWarknIY1oPrAg==
X-Authority-Analysis: v=2.4 cv=ZaMQ98VA c=1 sm=1 tr=0 ts=698df136 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=3_et9svu4ZaDDkyybMUA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: gHE_NLsFG1PbucU9J-j-rGqyLv2ovEwL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265113-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,arduino.cc:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 62AC412EECB
X-Rspamd-Action: no action

On 2/12/26 4:23 PM, Riccardo Mereu wrote:
> From: Riccardo Mereu <r.mereu@arduino.cc>
> 
> CS pin added on pinctrl0 property is causing spidev to return -ENODEV
> since that GPIO is already part of spi5 pinmuxing.
> 
> Fixes: 3f745bc0f11f ("arm64: dts: qcom: qrb2210: add dts for Arduino unoq")
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---

note: usually one would include a short changelog under the --- line,
but here I still remember it was "also remove pinctrl-names override"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

