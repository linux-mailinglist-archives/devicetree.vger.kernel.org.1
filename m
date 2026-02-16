Return-Path: <devicetree+bounces-265725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLntFRkTk2nD1QEAu9opvQ
	(envelope-from <devicetree+bounces-265725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:52:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C707914374B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 830D9300B3E2
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEADB2248B9;
	Mon, 16 Feb 2026 12:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o6KRUoL5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XbqLiaQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADDC221DAE
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771246358; cv=none; b=kgnHGWLNESK3MOO7QFF5WjspvEK6w7rgemg9HV8QyetIxOA6fBkGf7HqWLX4ZTzn2BNCmyghcnwwBX2vXgZDcnBVIT1uJTQh0siEnbTdZ+GkZ4a16hy2pgC6juAhyJ0k1nAY3oB8qiR6VizyLnrMXxcjUM5IIrHNnO2l1gk29pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771246358; c=relaxed/simple;
	bh=yAQOVm4CsLGoOpTthNQtptFK+zOUObZvtTSs9udM+ww=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dI33T3Y3LXrJzyWrGFED3EoIOVUTEIn2kNTiUDekkKh2oVdpgl1uEKV/G39qtV8SSAbAxgAqY7kn8PHWqe/hvzELSWI63IoJKaekxGLlZzGjgV0vDTAGVNtMdg3kKA+RdltKOaG0FmKn5JF7b/8qXs6vAEztclzILP4VRl5fjN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o6KRUoL5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XbqLiaQx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GARsKr2068611
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mFOemXEfU4qyefImBX8oJkJp/1pm3QQzq9FUO8gvu7U=; b=o6KRUoL5/r1P3gR/
	PGLe4q84lTbQ0BYk350EBsTmi3l+r+Thyvc7nlI1wYWaCuJVz4ctrI3RYotUfa3v
	3bFM+/rJZSRQ2aX1uTWu3usvqyiUbPbjn7thXVya9orc8q1iJew+MP5eomj7szu7
	Jdr89qXl9k2ZxdOuj8/k6Of4rzWt4fSVt6Ok2B4MDIR5YhBRh0C1HEiLA4ZY6Fwd
	EY2CjfI+6Ovq/jSPOyC2aMNcNbfkzxx0vQroCfl5Q90LtGrwBZTOCuW88rfwIOrK
	GiJ2s+3diFIDnq7rt1V7908H1t7XEJjz1upIO892nuoqdm420nvDR0vWO6Uz4hP/
	tiWzlg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cagcf4m1w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:52:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-506b3baa69eso25134071cf.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771246355; x=1771851155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mFOemXEfU4qyefImBX8oJkJp/1pm3QQzq9FUO8gvu7U=;
        b=XbqLiaQx5p8ajSCTim+runi6Rd6oywMDEwdiiBRtUG+sI/KAtbF3JkcfpcH/B26kSl
         EPnFH4vsT+MZECzLWuS1nfkJMlBlcl9q/kQuWPxH8Q6wmxqmrEQKCf9i9vXmCr6WLHaa
         RhYhFW01iuRY1AijVsCvg4Y8sWcN+Pk7th9MReaWTJ74i5Py7W1QBmY0oNnPOcbfy9Sk
         D3H1UndqdVMz46h18OyoPKZvlbVT7L9014XNhG0CCaYLd0s7Rp0BPU+Yl0JQIG5Oz8pw
         jO7+a0A4x3U9xV9JZWf/N45gaeUVMyhCkVUj8AyFDpuje+u5a7FHdzIveujY+E+cd/WV
         MSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771246355; x=1771851155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mFOemXEfU4qyefImBX8oJkJp/1pm3QQzq9FUO8gvu7U=;
        b=AEanIbF/DU+bEdT6sHxGMS2REP0qzHfnEYRBuE6Xdap2clvmN9o6tdQiU6uQsr5ma5
         XH9d0hOs6oZlMsY2l48KZ5UiQrqFgqaH20lPtdKc96OPbRdZF/LNmrN23H4ArpDsjVB+
         x9rysurWdvfefNmONg5XytiGWsP5Nd2BcMqVVrFeyZkAhqHMuDd8n70NqNA0Mo1HWKjz
         O0jiDAlyhJo6d5sgD5bKnQpXHk657NRhNwyrga7qnoT/inB7VS+s7D4yXBBotUqbMMjj
         NNVjUjT+++saKitGihmV+GRZxKxMQzU3KCwHh55QUuT5T6Lm94FNrzn0/r0QJLAj1TtD
         gdcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHdHkBYvUk0euTSjwVpE7HDQQwxV5rPg7Afb18HwU1u7PzZnXVfYh1ZmXB9IPEmE+L8O6e44c7uBrS@vger.kernel.org
X-Gm-Message-State: AOJu0YxRsfl6xcnw0nUVCpz2JF5wFMXh3QzIjIs+ES105280qOB4/1sJ
	TyxnpQoPzq3tzE9354Ll0z08Or9xZTbxBevaD1bk97AhlnWXVqGz6eJaLP3IjX/Rh878HFBKNRe
	+NTttKJHHTrtV/Ik8eHB8RukezISR5Iqgcq9UubD3AH59JOiY7SrDW3Q6OLxznJy5
X-Gm-Gg: AZuq6aLlq6rfVQk/mObLFszdDZPnjPsUyc1OB0zGXVb8EIi4sM31lfqnMME354KNt31
	ckbcHT6598ou5mbOldkpEpnPP6LatAtFkKco2hW7vrta1nE/LA5bDF7DDo4tpHoVifvpXRXZ55L
	j1racmIqyi3fhqMJSgew1Kf9Qd5HnXsw027aE1ttBOlF/01+M322NIurC/pIKDyOjjKSYtKwg+5
	7eLTLp0IyAT9e+LrIEz4h0sitaWCWmiGLnRIAogAAPL4XSFOdvKFbuzZmnUlPiir8udrYPq626K
	jDF4ozcAWf8zk6pMQTQc0YjWAY7eJYX1joiekijmqD0840llfFHDd8voJIWRVcO83MbPQ8K0MS+
	AQiCmfzN7SjYlBuybl88k4BLsnkzWvmsKfh8PFbAgyqIiU9eDI5Sd+w/d5OeYsrM8+KZ6wsgAvj
	4pr5Y=
X-Received: by 2002:a05:622a:148e:b0:501:4ba0:e06a with SMTP id d75a77b69052e-506a6a8ad5amr112911871cf.8.1771246355316;
        Mon, 16 Feb 2026 04:52:35 -0800 (PST)
X-Received: by 2002:a05:622a:148e:b0:501:4ba0:e06a with SMTP id d75a77b69052e-506a6a8ad5amr112911481cf.8.1771246354796;
        Mon, 16 Feb 2026 04:52:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e356asm1849577a12.16.2026.02.16.04.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 04:52:33 -0800 (PST)
Message-ID: <dcbe3388-a074-46ac-930c-e7c143f47513@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:52:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm670: add thermal zones
To: Richard Acayan <mailingradian@gmail.com>,
        Amit Kucheria
 <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021607.12576-1-mailingradian@gmail.com>
 <20260210021607.12576-3-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021607.12576-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FOmPXOCN3eEaFg20Iv0DFbWBRMKXj1wX
X-Proofpoint-ORIG-GUID: FOmPXOCN3eEaFg20Iv0DFbWBRMKXj1wX
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=69931313 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=kiNorpxd_LLC9_ghbWkA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEwOSBTYWx0ZWRfX3E181/cPYDj1
 2lZxPfRIZf9GD0u9vMg+WYWxqkL8UtbcsJ8FKAIer8Y1eKMGTEqTxgfaImU3udwRkCm4R0qbLue
 13JaAGGid5ZuYtb9K9bYIHkY3b+AQj5TZz/XoHIpqzhVxw1oS3qLsu5zoY+RadReW3g4WUGzUq2
 VPfYLYRAZ0HfzH2ssFfD3HlZFGf1F1uSmV3lLLetNoXrDKBflKIJKCWipbC70DnfazUsemEIzrE
 63cG7ff1Ap3w2kd8Ahtbb2+0FsDOJ7BNTPIzdndOMFi8iQ4XD9uwbxaSzaJG/+aDaEJ/UVhdeP0
 E9pBppFKhUVF5+k7NflOYfvCdiXWMBRZBarJeKS1MOxDa1Pg8pUAK5JcMHCm6pVplkbfmi+cWCv
 Kycpp6dXY3HCaZOL1qgZ7YZTnIlJNQtMxjK8Ty8JoSA9iqVj4B8PNG/7tPZ3iDk9GYZXffLBFNr
 haavHb869u36tvn8iYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,arm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C707914374B
X-Rspamd-Action: no action

On 2/10/26 3:16 AM, Richard Acayan wrote:
> Add thermal zones to safeguard from overheating to high temperatures.
> The temperatures are very high, but should still be safeguard for
> devices that do not specify their own thermal zones.
> 
> For some zones, do not include untested cooling devices (although the
> GPU is untested).
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 558 +++++++++++++++++++++++++++
>  1 file changed, 558 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> index b8a8dcbdfbe3..70f8a0a0aff4 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> @@ -20,6 +20,7 @@
>  #include <dt-bindings/phy/phy-qcom-qusb2.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -62,6 +63,7 @@ cpu0: cpu@0 {
>  					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
>  			power-domains = <&cpu_pd0>;
>  			power-domain-names = "psci";
> +			#cooling-cells = <2>;

This hunk is useful

[...]

> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu0_alert0>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};

This, as Dmitry said, shouldn't really be

And apart from that, I can confirm the sensor mappings are correct

Konrad

