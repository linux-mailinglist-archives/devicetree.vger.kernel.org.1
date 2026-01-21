Return-Path: <devicetree+bounces-257897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOlZNbi4cGmWZQAAu9opvQ
	(envelope-from <devicetree+bounces-257897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:30:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D78A55FF8
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6079D38962C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44EA733971F;
	Wed, 21 Jan 2026 11:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jegcwNq6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OYeyt3Qi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DFC219FC
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768994857; cv=none; b=clSE3QF5XTXV0g0YGU/95b/C6nb5lgu0xbzuNCiQjWC9fHt2p+ogjikzxqL1MTL1uMTcyRKN1U6Cu6fWy39+k/DbkX8KubLlwiRNktXNI0Ay74qu5A+bClzVh/7UrcKuj+6vc0bWZd+cckDKhYAANEgagvygAp/SFlW/p/6tLQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768994857; c=relaxed/simple;
	bh=0ecdY8lGt6ySO9KqFnLFozbx3S0bUDStmZFPxDGk97E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pE92VNwkgIYQVRyl8zJ2gIiM19QBBR2DF2G/0xq9q8+OkpmbtU4FItbt47ZeQK5l4zPQv1QLdYFQ/0O5ofLUePZ56v1mz+6J/QXOLLcHmSJQHOpPjaj1KPavFSBzS8kkWHnV6EOel7acRS0uNlkS6r5P//n6jOcI+SFHoY/fzL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jegcwNq6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OYeyt3Qi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9rMKX2840457
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OsVllfuYwH8uEYQ+GEK0GRCIxlfSqW46I4LIzUt6ASY=; b=jegcwNq6OjZ376o8
	3ARwaDIHQYqLaceKW+H16glnBPKUdrejzp7k9hRrS9fadfMHmFV1wLRJFHfvLGhd
	mAONdCcLtpnCMPtmJOSRgA0fU+1MjaH+sBJK2TqUNObOLEQ5zYiCbox6gyjdpw1d
	p0RCX90opOidzXRqTkVcD0yAfsgflsPCAgdm8OL73Ozk/XVXrRZ7Z60eC+HgVZWd
	acCQx6x0isefsfiwPjEpFLvDeTnDwvzUKSpXC4lgHsS1c7m3Y+dv231QVUGLOJhc
	R6QfEqUSaHrDWn4c5jdUZEc7hp7fO6u3qwhFGm73ss6T7k+1Zfvmihszn8qvx4Sb
	gZzxeQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1ssuc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:27:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c533f07450so145648185a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768994854; x=1769599654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsVllfuYwH8uEYQ+GEK0GRCIxlfSqW46I4LIzUt6ASY=;
        b=OYeyt3QiL9p8/THnjECUvBYG4lpVZhYyAejC+HPqi5eKKUXUt+iyu6rrcNjR+XKl2O
         f4T9k/KVK4ZoS6DuPe1zl2/+WF6dePk/2ECUl1T8nprGMCV+BTWhEy597d43hAWXbXBU
         dX+AYKuFj6wCfaiVXvfZgynvVdpPrHt1oEIUWwf3pi3L5Z6isjG7Qv0NBE81GoDz5WDS
         wDWsgXkDgYsjtb1/xamuzle0hBtbLcZZTfaThZIfyStiRCIPX7O4Of/orhM6swXYYbww
         uu7YbRlrUNNeex5Ehk08Ok5HrggmaRd6YPKUzXrxWlu15WinBgAgztRIyLs8H1hU3T18
         T6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768994854; x=1769599654;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OsVllfuYwH8uEYQ+GEK0GRCIxlfSqW46I4LIzUt6ASY=;
        b=t6lvwKSBdGKh6JWUEDh2w2x27HYKIrQU+OgMtwU0c79T8ZOLHvzsCupHK6lQwZvO1R
         9USUEz5CF3/gn6VkaKZ8ZWaJS/QnfPShI0czoUpubiuWQGzSSKC60XKB3VKuh7tTFKos
         Kkzkiii+pwsUZT2AeSgAXTopLI+RXklPzhr4wm+Wkm2Wmw3tUQtvY27W2LnRMu/cACoO
         MljF6vPvPY3F8ojGV2iAznwjOoaU8ONXJm7XnTUjIg7IVfXg9O13tCu18Yde6U+1GOk5
         hjiWe5vZvxmmehcPNW7i8OHAaHNNPK2tUbFHI37T9N+eE08MGvSgupftlSGJ1JphUrE2
         a63w==
X-Forwarded-Encrypted: i=1; AJvYcCULXNILcmgjIhRe7vNkh+Xn2748oLQRrhSXw141u0UT5HTBTXz7yUtZgHQu8CJ+J+LsiXh78ErkBkoH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/yo8K8EeowUbIO8EC0mNkfFdZszeRcckxhJXB3SWvtX6mq/Fp
	Tsq/FwGsM6O7I8pQSlTbr3wDNxCBWNIm/JzBKO9rvbgORawi6Hj+bNhRboN0Zg/y5t9j7IOFmOk
	hn/kaGROycuoso6XIt1fT+VSn1qfMl+Wy0zrtfv/jLKtni7pOKTiFuHSHVFr9yFXf
X-Gm-Gg: AZuq6aI90i0JJu6yQ72BMvHUM14b2+r1GSKt05Wr3t0dnXaWUukFkgZEKHejP4R9XsB
	VnXVUOKhHRkehZuCqtLcJXupA0EFeoXa8ELL3GGzYvennzDyAntq+j+zyRj6Urr2b/Xm4x5d7XH
	i9DU5A0jSfho9yvkIP58D8DQdY8R9nK8TEQIbVKUWCqN0oG211C8b3RYaAvZsKq54Bfr9T3tWD7
	M2bwaWzM3dcksZrpZI9og9IampNx5DG4Wu23//WNzsEfxhv/CYXUzHb8pnm/P4TFH/SaP9YVADI
	C1cJGx0Jgi3QpkCLvA02gugHVPokb3K9bUxA0K5dyO2NXujShK/HKVhFJtuZMQTZaaUp0afXLyX
	fyxx9Px7slklU6NFyzzFV5vMaKTTPcXhEjBCDFbgm8DXsEM6AIYa4C7uda7+1GmWcs/w=
X-Received: by 2002:a05:620a:4085:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8c6a678d49cmr1803054285a.7.1768994854083;
        Wed, 21 Jan 2026 03:27:34 -0800 (PST)
X-Received: by 2002:a05:620a:4085:b0:8b2:5af3:7fce with SMTP id af79cd13be357-8c6a678d49cmr1803050885a.7.1768994853416;
        Wed, 21 Jan 2026 03:27:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8791sm14573015a12.24.2026.01.21.03.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:27:32 -0800 (PST)
Message-ID: <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:27:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-4-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120180052.1031231-4-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5NiBTYWx0ZWRfX8BgICtZnhcXZ
 NBxrre5J6j/S65lv6E/wqST+LyGyq1qQ/3Aq8pKrfZhrBnYAEvNaA2EjK5qBNlw6NBkU1tuVLcg
 fcppd6+PItR4syv09Yg5hQaPZ0dQsTwxkt/0cpjauaT5udY4yvGuNLKcJO92ytQ04yelV2CC2a/
 3zR6elKbBuTxzgg3ikrGPotV9jxZb7ndWGLFgZFsKcj4SFCxnz6xGnoOHt2NDY4eN6D4AVlKS7o
 KWbsjU9lN8dPH3pz35HLoTNq67wZ3DXTG2jF9RAQ/iVwdawuaxdjmyQsPLayJEuVBQSv+I/VPCx
 1RrYERwtanHsB6ktXY5WdiR4P1E4TIlrBhzcJsJXADOxGm7870+U5qyEvB/bEkzP9AdRAOTjB//
 iOUh/55aVlDn4CqNP+poDkcREJkehfSPeIKMe05Ijj7KWLcM31swnfQDiDVPOotr64/3FIVUooG
 E8RUmXA5YIBCNfwZz4Q==
X-Proofpoint-ORIG-GUID: TShm829w4qrmSEgxZV3ef9-4zSrtbEi4
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970b827 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=xCWKIhNVW8Ay7giyioEA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: TShm829w4qrmSEgxZV3ef9-4zSrtbEi4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210096
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257897-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7D78A55FF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> Fix regulator configurations to ensure stable operation:
> - vreg_l2b_2p95: Increase max voltage from 2696mV to 3100mV to support
>   proper SD card voltage signaling

This makes sense

> - vreg_l3b_3p3: Add regulator-always-on to keep the regulator enabled
>   during boot

This may make sense, but you're not explaining the reason behind it so
we can't know

> - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
>   PLL operation

The driver needs to be fixed instead, as it should perform a
regulator_set_load()

Konrad

