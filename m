Return-Path: <devicetree+bounces-273486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFqTCo4DsGnOeQIAu9opvQ
	(envelope-from <devicetree+bounces-273486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:42:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9217124B596
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:42:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7A5230D7F87
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880003EDACE;
	Tue, 10 Mar 2026 11:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dU7zo3nc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cr8pRcJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BA138A2BE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142083; cv=none; b=m/KUnojvLIeX00CIqZdinxIPLGrFPpSgBeF9TRqAvKg2oxcF0SL6snzgnvVMErYi5BjUrIR5kfpA5ZD2hjC27h25TgrlvUT4HyZL7XObAVTqT0jIfwLPf4X+bPDMDU7/6JBbKkWB+9ygBojagkUodB/viNT2+C6YlOkxdZu2xO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142083; c=relaxed/simple;
	bh=oeit43/noQ2g34pqMj7PtUuZKj+45nXsjrICH2+p6Uw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P11UbPSFBIymlcZPLJE7Ecj2CHbicXnsl3cpXZE4CjQLcQZrfAbXUop/o2MF+hvCh02xchODEaxV18qtV39N5Nf7oIEpzvRDVPpNilH0w2o4bu40vk9UKLyxztiEBcu5YgvcirebJ6R0EIK2deTZt1C88SAr24aEk1R6UfITxtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dU7zo3nc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cr8pRcJe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AB4Bdl1442677
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:28:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+yPSoOZk6Bqu9Ld3D/94jytpoG754EO2GFj1PLE2VDQ=; b=dU7zo3nctFM3hzOg
	zlyrO5me8U4OaLoGduvt4qdoX6U+Ehne+aEjfe3ipIGBLEJK+wM0fqzDIzOlWyTF
	YnUedblx5zCXZlIEum5BpRWt32m8H2dwJ8xb/MuIRwAPRizeJkbqmlyfw9hNTSGC
	gZxoHFzI9Oto53srxuUmiF2+g3YWluqervg7Rb1KOEOoPfb3Tq/U4gLMlu0Oqtk9
	CPf7aKJXtJ3w9abMFZRV/q49XOPcsftkz+qmvDEDHb9r3Z0VvFRzE9BpsRzfGD62
	4w+wFOf8bShCrDsFwGy4YK1DslabruFJ9P8ZN1G64+rDU4jq3MDlXMHT7F8g5gPm
	PtbiKg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct88028dg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:28:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb38346fdbso44353685a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773142081; x=1773746881; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+yPSoOZk6Bqu9Ld3D/94jytpoG754EO2GFj1PLE2VDQ=;
        b=Cr8pRcJeOzhe6ZBT2FWGAKiF6RyaZ59cSkLjUiLYcsoEtxx5ob7Qfv9ShmMDAq3VnH
         HckvFzmaFcw8hDW8GPXhREgl8lkvxChcpyBn4CPhq3WbjcZ/i8vCm5lVyxzJaZck0c2g
         /iBhOmXqpv/eW0NxmJbYdeGkCcgdZS8Ea/dEIEg1Bal7tWLfyBIMB3VGDUdAeN/c4rsk
         KffkHEOt45fSErXTg6SfVdCVmgA8VjpWgSDx6jSQOBkV+YKPi6c5STG3zkhqKkD/wO9+
         oSh+tl1P1JHH2TWWNPh40FufyA4bQEikusW63VtC1sSgyLDJDLP2+2hGA5rG5WY+exsQ
         Ty0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773142081; x=1773746881;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yPSoOZk6Bqu9Ld3D/94jytpoG754EO2GFj1PLE2VDQ=;
        b=Tq2X7hrbL+C4iWXnV0QCd72z07fACPq9ci5hkmhihUSCPdzXXNv7OI5iAxA78LwDBv
         NdPsLdx5pDgE7iG/iZQDuELJQLq1HDdXugvrV5gzNeEHSj1VFd5WwfpPpU6snq5b0VTq
         Oxh5EkQ3797lN7ke5j/WFgwTaRaEtDBiRe/ONwDHoeDJUcM3+Vi02uRQdJScta+BV9pl
         Uy4hCo1TU9xXflXVrqQEzboJ6G3ZOzDBlYNhDOIk+ltCQwmkh8dmPHMQhyPD6jhcdkbA
         wx2AXCYb8xorftT1PUgyD3NnbrybhAerH/KLGnCzfbQ/VNunUp+dsk1HOcmrSepEdg+z
         PqLA==
X-Forwarded-Encrypted: i=1; AJvYcCUsKXVbF7/j52cZI9+TQsoD4thjZbFcdjbDOA86lev/ymPTxrlsLZP+gmnOznfm4GJ1gNoUxDO8nz1E@vger.kernel.org
X-Gm-Message-State: AOJu0YwYsVCcngOaoW+1NQmmptJf4MD/HcffEpnOqB6jOQz4NVKfg/WD
	VSr8bQDaRZzTFd4stIG9TGGhiR5f8i2Y9TMPRsR4UhKTGFkIIK+6KNiPAkPuuCjk9u7+MxVNtwa
	np1XfXxYqCdfm9gwXewEYB/E/4AbhTG72n8D7xznjxN0vwjJrUqc9xZdcqHj3KBVs
X-Gm-Gg: ATEYQzwes9Np68JNsK9c2l0QmJ5AbA9sQlST80F/8OiXpg3Nb/lLOlnxTk2GSfrcGpH
	HUgsbcJpEA8wjh+eGqyQtnv8T/WGVQWXAZsn+EaTeL6xW10MjxApZrVrWVvBKWWplEbfqW0n0ZO
	VFhpj3RrEE0BQWnu5zBy7F9qRY4ZQ8ZIr3CbWLQt5wYCTHvL0Me3S+JueDPSeC59IxjoBmV9vn5
	6V4GNsetrP+fHfenq/UhO+NH/yraTHQLsBtg6PCpEqKPDhNqjUN3KNxo5ZDMmenveTPqkZggRqU
	mxtKtZaz1ayMcHEXzdIzG6md0L7TE0XdRsvf9xsHGIaAkHlQzPa2YRO6S+ocu6HvbbWRM87XpSK
	DTu2flrHasJqdL5faLJ/PITELwyX1I5ehBrKYhZkAY+grA/P6k8hH8xc4KUOAEnfmAeNbfxZRw2
	SBRd8=
X-Received: by 2002:a05:620a:890a:b0:8cd:7271:65e4 with SMTP id af79cd13be357-8cd7271686emr1109672085a.10.1773142080634;
        Tue, 10 Mar 2026 04:28:00 -0700 (PDT)
X-Received: by 2002:a05:620a:890a:b0:8cd:7271:65e4 with SMTP id af79cd13be357-8cd7271686emr1109668985a.10.1773142080237;
        Tue, 10 Mar 2026 04:28:00 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8b7dbsm458129066b.24.2026.03.10.04.27.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 04:27:59 -0700 (PDT)
Message-ID: <d92f942c-ff87-4829-bd21-8b37b4fb2d1e@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 12:27:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 WiFi/Bluetooth
To: cristian_ci@protonmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-4-aa2c330572c0@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260308-rimob-new-features-v1-4-aa2c330572c0@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5OSBTYWx0ZWRfX8Alo02u0EVvx
 6cYhXVL5SfWll6oa4Ral1G46gQipQFneDjazGA8Vh+coSPQYY9sq6otjEvdRvqW/eOvoz6+6UvE
 wGgE3M3SdQdDe67n8IhHn2omOppb1lXCGI/fv41lAGXP1tlTrreSHxOc6VZSNmSOSS84QuV8FBn
 swDiNp0Er5/HbKLwLm48y6nFSYrhVUs9ArEcam9A4ihJctNA5/NnMJulyndKomJTwFnR7Ema08o
 /caUWKDAR+uaViWwryAPujXLd/+0QvMc+KAerrJpE9Mvyvup1d1lBzVaI7Q8381tj8XwBoYQAX4
 ePKpsbyzdeL1UM3cY7XE8x3YVG87ZqHVpzhEo1Pu/8k5jr0IDnbf8OwN3Shx3EKZ62l5Fq6y3UW
 FSbnK+Knw05nbt+d7yJrvpUy62A5sWwIwEdqYMmZYCJi91WcOsIuF3kd72AHiBBZH2fNSmhXkjv
 6zS/Vzy/W1wsco0h/7Q==
X-Proofpoint-GUID: xI5xTJJI3ZIeyOWeWH42tS2vsilpyhkY
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69b00041 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8 a=TiCh2U2r927ZuiwL-uAA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: xI5xTJJI3ZIeyOWeWH42tS2vsilpyhkY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100099
X-Rspamd-Queue-Id: 9217124B596
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273486-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[protonmail.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 4:52 PM, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Configure and enable the WCNSS which provides WiFi and Bluetooth on this
> device using the WCN3660B chip.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

