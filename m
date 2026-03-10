Return-Path: <devicetree+bounces-273458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGgsEYv2r2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:46:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EC524995D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33C363007AE4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAEC378818;
	Tue, 10 Mar 2026 10:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y3+kH3OW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zxzo8RP4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F1A36EA9A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139588; cv=none; b=UaWIuNpI//6Hrgq9vshqOtQuDNjfnyuzhtbrIV6SD6eqtm1PF3XizaQ7MAqyL2b6npNZaLL4EZVIa3pV4dZ37hNHy0PR0fudEygj7/nVBtFiMJRKvx1Njf9nTCi9rrMzitmFCt1Fyla53XvDbcSslCZpeAC4PH9k8dqLTj38MYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139588; c=relaxed/simple;
	bh=giejrRia4jPNnibbJiSYVAKFlFcXgwDtalJu++xZ69Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gGGpeMy2xCSliWjCLi30rtgpRoal42g+RbpEBs22PnOzgEAEqia5qiZLeDexKOBJHlbq6meLMLT9YklrR4u8Eknm2tJvCgGD51lyUy/se+ciiRoGo7wbPp+Wv1YWpHIQoxIKxPoRoqjoLwsjPI8i+iYTXL2F8XQsxvi/Bmq30HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y3+kH3OW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zxzo8RP4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8pb4m3690649
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:46:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WbD1AUBT9zmYKBHovxWsCgqbkDb+tmjWhMIAz/MeuLI=; b=Y3+kH3OWhTx8JEv6
	/0q2sWVp36Z58fQ8D/RMizqepY7RZzlWlk4nSlsc8gMVDD3x38vH9mfXgXTXKGJQ
	DjZMyKIIu424+WO3zpMuWjXbDiqIaCIq8YmSJrOkPp79O1EPC5QOCkdpH6j/n2WO
	iSb46Uq/Bi7DOD8+Usr6FTmC/Qy82ghLiFB/G+POMilXn8tZbvF8XxqVOAwB9oLQ
	Po0abtoH9bbSK/xpyU1KvqOXBb6iu2M/Nu1nsnqEs047+36IMTicCtAJPy6IG+jC
	LtFeu6WgVbuXaB88r+psdOXUMteUZ9c5gjL3u10XNdP+YwFbl0d1t8GFysqEWvIQ
	MbVmrA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ngg9p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:46:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd93c91075so59921485a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773139586; x=1773744386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WbD1AUBT9zmYKBHovxWsCgqbkDb+tmjWhMIAz/MeuLI=;
        b=Zxzo8RP4ddcHRotQyMRXP6GPwmjc+/GBf3BXImprcAGonb7DLDLnullkZ8JSKC+SFt
         epb+tFWolJVzgBdb4zpLystahGgnPKpcTCGkOT8ZkwOa3LVALD4b+Ridvk9Naep1XrCh
         NaXmvVbzMeSxtNHgBr9a5tRM2zU+Gtx9uG1CfTQd+jVNlQy18MKZGNy0GB8UPPVgezaH
         SFdsXlU23z71ovZXH9G1YC3HuYIheYtHfGIS/rVZyubOsMK0bxYbe/U/+uoThBilE3FL
         oxddx3mh+0PoZSqXY5zw+98rY7+Ui4Wy3ZO3/F4YzqGTMqxUl0uNnRxf3gEBnqrtvWJt
         i4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139586; x=1773744386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WbD1AUBT9zmYKBHovxWsCgqbkDb+tmjWhMIAz/MeuLI=;
        b=JIJLtBSUDrFIVMfVxZDeVt7XR9fpNgB4dmL2uhlRXE5pSIV+s06r0poE76FFQkiceV
         0baPMMcZqB8zJvXjZ1vIX+NeODTMEp1WYER0hG16IHs3ez0aRzo9uQWUMLTRnKNDau3B
         0u/QDyfOPovRTFGgRgP6eRUbrdWOP5GihNFDdCng6uPnBJpy8YMzkPw0j35C4LbLD32u
         oviBFsLzh6+9LATg9sgv86SNoL2QkiZ3RPjggfpGCLmvrtoGqiv4NSMnwJPhwI0T4+v7
         odRIEZjgPd4LE8t2zUs6g0njQPBEU4Rso8OiGAjK2SLuWol+6FKWjKLCh3VbVQsa6Hwp
         39Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXT6XuWqiv8ERYNPptp3dE4PPXe3lFeY+bE0iJonoPqrG3ESTWb1bqClZcd8Uub01e52iolsTodd210@vger.kernel.org
X-Gm-Message-State: AOJu0YxrRQXU2klP5g3KIsaJziQYcpQBD+rVcKgsslEuKQ3FgrwmHvSB
	JClU98wMAEbdZZW77qaBad4Ag7QxT68LPByxaIsYcRsm36CFoKZXxxlHcdHHhv0GeTPDynLyCPO
	wIQbNgYUi+0IiEe8SL3FbBUXJV3gmx0b+O0OTfVl2ZHKbtnAnAZJPZsd/ioCm9E91
X-Gm-Gg: ATEYQzzpMG1CcZqjLqfW/pXduSPe4TDbXUNNlsO7SVX7VZHEW1kmtbOfRnAzOlrAKI+
	8JxN6veoL24N8B9fylx0T3kwwSNqpomYqAjoZ29yGK3DUpS3m74Yu5BK/WkZNFauDLKXcg+lWOM
	uL9x1/411jFRx5KOA58KN6zJWM6fVzH/5iKCPqsNEqwMKA4bRkeQxgkwHkTKbZc5qZaSDqUxU7u
	KzGZ1gyhnmCEDYp4h/VZSthm5ti8bdCUclBI1dUukagYTsGDzWKkFaWW4tajhoQIZ6uEgzDaYdR
	9ZCGM7SGvHscPbQzDZliklzGMLrU+tAxEwnpWn+rfx6ja1yzZhgycg47UlA5j1H4PA7VPfb4lWh
	0PioNfb0lC42qW5Jqz5AZVEfgR/c52gfNhGoR4EiZUkuBzE3NzT6eTLFOoMkO8gB5lRamXzXkHE
	9EUSs=
X-Received: by 2002:a05:620a:a28f:b0:8cd:86d4:648a with SMTP id af79cd13be357-8cd86d4668cmr553530485a.4.1773139585930;
        Tue, 10 Mar 2026 03:46:25 -0700 (PDT)
X-Received: by 2002:a05:620a:a28f:b0:8cd:86d4:648a with SMTP id af79cd13be357-8cd86d4668cmr553527685a.4.1773139585553;
        Tue, 10 Mar 2026 03:46:25 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f18bb33sm476643366b.65.2026.03.10.03.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:46:24 -0700 (PDT)
Message-ID: <50392864-dbe4-43b6-a4cb-e6b6b5b49a57@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:46:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] arm64: dts: qcom: monaco: add dt entry for lpass lpi
 pinctrl
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-6-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309152420.1404349-6-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Vo37PHVuDZ1xSt3EyqdJwaUaNX7B-17a
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69aff682 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=PSYRucXItuZ608vo30QA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Vo37PHVuDZ1xSt3EyqdJwaUaNX7B-17a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MiBTYWx0ZWRfX/oskjQWh58wB
 MTME4lR/lNxOYuJMV0JSg7tu/AoJvfW4wOZFq6AaDtznMiXV8rV5WC0Wh78yODYjRgWGF8nUYBQ
 joy5jeU15fh4cUq9sepuQC/A7hU17rM4gkV9dEWBUWvPdL5twH4mGLLGUvwnLRa3hXk75glAGc2
 pbtHeBk7CrEj+vdJ9YSa8XsjKBj6q/p+9gps+r9jiZF8KMoMdYgCIbbVqJB8JAd/TO3G0yU7sZI
 7/5SijHWBmgL5jbh8ijxKBtobw/D3PYK3K1aNatWS6pyY1BBlEyomsg+N5CAGFWZ9y5XEySrDhC
 Dz4fFwd661E6csZdCi8R18hg4LmQHSx/9hhDJz0m7j2mHE6/6NmpnDoBB31JbkIGbwLjgjyZXc6
 xlYPWkmDr9MZ+X/Q3SmqGs7OCQZAgLJfye3Ih1ss9N8Ndowy1mPopp8/xcv7RKQfZ6uGAsDSUaO
 z8oHelG9zYmIS4dJCGA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100092
X-Rspamd-Queue-Id: 39EC524995D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273458-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.52.125.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
> Add LPASS LPI pinctrl node used for setting MI2S and soundwire pin
> configs.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index ce1565c7cc3b..0727dbd44a75 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -21,6 +21,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,gpr.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
>  / {
> @@ -2872,6 +2873,20 @@ q6prmcc: clock-controller {
>  			};
>  		};
>  
> +		lpass_tlmm: pinctrl@3440000 {
> +			compatible = "qcom,qcs8300-lpass-lpi-pinctrl", "qcom,sm8450-lpass-lpi-pinctrl";
> +			reg = <0x0 0x03440000 0x0 0x20000>,
> +			      <0x0 0x034D0000 0x0 0x10000>;

lowercase hex, please

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

