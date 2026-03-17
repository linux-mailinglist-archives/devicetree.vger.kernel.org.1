Return-Path: <devicetree+bounces-276566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE8WBA0guWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:34:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE86F2A6DD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E2E331DF37E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C466D39F16E;
	Tue, 17 Mar 2026 09:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cb4oP0g5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XMfgBFQK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A218139F162
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739331; cv=none; b=Q+1+H1222i8HtOhaxsVAgLR2eZDUzPcvHsI2SaQOGRUUHhuynzYJaUxEZma2eunyix8rqchs4aZTzX6wk0UuZUSw7QGSc3YoMQJa7A6AIcsbGepDTy4mpZcd6srsGiR3i0B1RaePG6OIjhrw9qL8w4wx56iAZhZCVTfIbMjW9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739331; c=relaxed/simple;
	bh=xT8BlxTKiRJW5u3sIcI3q4eXNqA7er2Ajv8tfKEdK/k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U2Ch616jTRc3y9BaJFIShSv5lhfYchDhBILFsD3QQIRYR7MO8+O40mNEUOFB8LVXuxZXpqd0VD6gC6A/Pb4I7noOmHUYtF8lIwh1ksGxMK4BknV80Pj3GEEo8C4qWOFcq6Msyjfdd7nryAKj7hyH1W6eJ0fWpszlIkMnDuBTWP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cb4oP0g5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XMfgBFQK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7h3vd1639617
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4N7Lk7y4OMe2Ye9EONU8WhWOC+tWlcSjuC6mm8X63nM=; b=Cb4oP0g5oSnNA5OP
	Wddc84HkqghAkYDQhUVz3tNdOWHhZUcE3Gx0jhFNshK+UfORGrRiEcXUinCZHK5q
	oiJreEaWwmnMOyqFKG9Ci6dXlEtCO4bw/ZykWccryRMbSWHe17TVlQ0hco1T2Rry
	P81XDaxyUdsgCaCNQBgnyFps/QhA8kjuSaE5EJe5xO0tqX0yYX3Y3Kzfh1AYRjdi
	S0i+jeFuARXLZgeaDPbwrFQf2CxWl3VoppS5/vs1OEqzhxyVT5C7FuUyl4bfPQl0
	FmENSNIKaikCpDea1a+rhS+VYk7u/eBr9SpeNCIqYrCgm7/tvtne+88hQI5WausH
	VaFfIg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxke0bjyh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd8e89d19bso368132385a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739329; x=1774344129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4N7Lk7y4OMe2Ye9EONU8WhWOC+tWlcSjuC6mm8X63nM=;
        b=XMfgBFQKJGFnAJxIB+v0hDUKx7BB5XTARHWbqhiZTAStCz7gEB9nQWi8gPyNVBM37o
         BDqlVjwgVEv/64R4dAbYtO5QyDd3bh4Fbnj1lghMbQTE8ugZMk8xs48jVENdVhXd9cWh
         ZrPBBUI0RIiTSG6S6VOMPEUcddj7hakqFuwLZZ388KVu8sBg1oiPLYRbWfwr6w4Gd/WN
         jIQY01abcqK0or5oexAPS3C1QW9rOrgaH4zPFKYZ0RivpYvULrEyDx3s5lHZumoN2XvU
         VJxNpC9k+eU/z3LIsF19hlZwXVHK753xi8ne/3UCYqKhwmLCnBwnyBIAco7l4lGME0tY
         LGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739329; x=1774344129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4N7Lk7y4OMe2Ye9EONU8WhWOC+tWlcSjuC6mm8X63nM=;
        b=j4wHT/WTIIpJhfsW3aQ6kAQsmzuf35HbJi4oS8BiD7ncdoRqwNSjcYtJuQic2C8sdq
         mQFvfXW/vCvpVux4J+3XWdtGzwYpVHX6vJUduFrnZSqjdh8/tbpy73bJOFr2AWcXQ0+h
         kA3e7wWwxKqoTcVpU+OkU/nU/Mt7w4M/m9zAKGou/JGaKs/hfMPziG/RpPMgiE8TlEFj
         j7T1V3VxcuLLL2sxjXkq9KQ+nEE1C6sfFWoTitaEcv4jl7r+xKXGXW3az2xh5DaEOd5Q
         VVUaRhbhKO36kO7quN51AmAaqlfceZWlLd7//vievYom4R2hcMVbcfMHYeWqaYvNcGe1
         VubA==
X-Forwarded-Encrypted: i=1; AJvYcCXDuMxNt3/OiYFQKAFLUinpxtvrGx8Y1bfMy+crY04HEjePKruFwu/QGVQA/SIKrAQc/F1lILjIYFX5@vger.kernel.org
X-Gm-Message-State: AOJu0YxRxFwblEdkp4gGDAF+X1Z2fu1Y7ltF3bInLrnDuSNGVEVu7sBO
	LQVbuQzJYHpOgxAX8tC76irlE03wb75yXV0GnSO6Nz+HpjiLcyu5xipj5Sg8cmE8AL7/iOZLQVB
	xgzOUowgKvmIuZ2XAtjOZxKk33byj25b+N/z+/IPtq1SYNjwF6IHrmVurAh3GFGyf
X-Gm-Gg: ATEYQzwyzg37E4iIgnnMg5VsoP7x3DWOuCn85frW/TcLvO3km0tzZnqo9wFLn5ZlbQJ
	Q8IbzBuPQ1BEcpQ7b8Fog/BWeaNI9mvv/raQCToHAz0wNbbyMF8K+E0OXFkqD5IsgSRKdSiTfRA
	rQpcA169odcShdv7Ahq0bhwCYYwo4kCYRKS36S/Di3XDh6NK2DRWqF03MVdAp55QLE4ic6tOZ5l
	ac3LruC7jkfG0wG3TARABB3nL4EtIrqHtpGX+fXA50FiTuW/MuhzRswxlGJfVgQKD8BvlGUb4iy
	Tim0dtRabnyGRG4GXfVUCE5g4zdhNs7j/Wm9mUhxxmkfOv9mEXtqn7WNpSZOCafgjvkBg3lRQ9C
	z7Pu1gLgRAkfLtglH6M5k+UUcMEKrXiGlBR6J19DgJWH65E9E4VF+rPAKtsFV+RsLjm53LEllZj
	vJul8=
X-Received: by 2002:a05:620a:4629:b0:8cd:76fa:1bf5 with SMTP id af79cd13be357-8cdb5b97c2fmr1572627285a.8.1773739328906;
        Tue, 17 Mar 2026 02:22:08 -0700 (PDT)
X-Received: by 2002:a05:620a:4629:b0:8cd:76fa:1bf5 with SMTP id af79cd13be357-8cdb5b97c2fmr1572624485a.8.1773739328386;
        Tue, 17 Mar 2026 02:22:08 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb480asm709261866b.42.2026.03.17.02.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:22:07 -0700 (PDT)
Message-ID: <8ba05ebb-d1d8-4d58-91f3-554f3de7dc20@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 10:22:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jZJeCpBNZPDQyaMKSFwe4lsN4OVg3UoH
X-Authority-Analysis: v=2.4 cv=aue/yCZV c=1 sm=1 tr=0 ts=69b91d42 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=4lXF7EwMsY-GDqxF2o4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfX/RBPVNLcXMWF
 sLRCn17zROYsB/1yR13TVMtzFiF0uOzfA6ohT+ulZz7cw8OxCcrD1A9nhnSYHHZly00uWKsuyc+
 4Rm8UXH2xjlPCyEI7swZ04N1p9+4AEvKWAbssHmyP7wbccNJtFvKbYh9/cl+g8Gc8FTb5CzTZgb
 iYY85dgj3pieynxgkMnS3EMFbkgBICzkFK9waIUn+KQaxvB28EWHFEdY6pSW9bdcG7c7iZpTqgg
 fbJNPwXC8RBW/LcVTXkHM5IkIxw7ec3MzuKBxh8xG9Zp3KtAAL7/GrqDo6u9wbBOywGC/v9Vl76
 VUXe8S5QQyfKKJSnWu733n0liIdQBUhbBvbcqclHUrYyDjlhNc/P6BErqTlCgDI4RmqBOAIUH6c
 uoVXtlMoksn60426BTFL9D+VUI2eAIRRdyJCij7DQ8vLX70XMGDiErBaFUN1UCUYeBzWGEIFjjt
 yrY9GbQsWGCoupVU5mQ==
X-Proofpoint-GUID: jZJeCpBNZPDQyaMKSFwe4lsN4OVg3UoH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170082
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-276566-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE86F2A6DD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 7:03 AM, Vishnu Saini wrote:
> Monaco-evk has LT8713sx which act as DP to 3 DP output
> converter. Edp PHY from monaco soc is connected to lt8713sx
> as input and output of lt8713sx is connected to 3 mini DP ports.
> 
> Two ports are available in mainboard and one port
> is available on Mezz board.
> 
> lt8713sx is connected to soc over i2c0 and with reset gpio
> connected to pin6 of ioexpander5.
> 
> Enable the edp nodes from monaco and enable lontium lt8713sx
> bridge node.
> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++

Subject: "s/monaco:/monaco-evk:"

>  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
>  2 files changed, 95 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> index 0b26cc334a69..0ca5615c996d 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -52,6 +52,30 @@ dmic: audio-codec-0 {
>  		num-channels = <1>;
>  	};
>  
> +	dp-connector0 {
> +		compatible = "dp-connector";
> +		label = "DP";

The labels should be unique, is there any silkscreen or similar that would
be a good candidate?

Konrad

