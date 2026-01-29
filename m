Return-Path: <devicetree+bounces-260822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APRTHAQ0e2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12111AE7FF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 616F4300D99C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52B9335BC0;
	Thu, 29 Jan 2026 10:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e5RX6ENu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HZ+SGb6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7B527E06C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681894; cv=none; b=mStyyt+vGAbEZ26EeXItnOGJ8FSGEtLzDisDoB7HwBbnajE+gVmZF5P/y4rPNmFD5bfrqx7ffvPwsKyVf1TmqIsd5mAC+U9Mw3j0WmueWqgHlhd62dYhZ5soR1whNg+WWG11+cGxdJTF8RoF0oG+6E8tfOVBLvpyz4g0/nClqIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681894; c=relaxed/simple;
	bh=fmVB8nuKTZoNDXcyCXt/SFOizDb1FQ0xC37rvDu4MXQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oUyMyZdb3S7arWzGSF1zxJzoNB7ey266gWxdFt8pE7yraYKR3+4HAns2w0GfHr+SrZx09822vg0YUFFc1mRRGOEIgB090MpTwN7xUpo6FWpFhYDmxIEIknCVFfMfZyMOrq/4wFYg6uGg7xuRWa5qlhVQCzXQJaxr0c+tYYcnIJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e5RX6ENu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HZ+SGb6C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TABRjR1565059
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HCEYa7cgOuBIBFytHhgw3xduRbCl0l0EjHqLpkKY/JI=; b=e5RX6ENux33VEhaS
	UQ2VIpSmQrjokykE5eQNpFpmYjRlmbPezJS30LjtW2EUdlZNodiNYMjNjxCgeetO
	0bCoEt8YJJ7H2O4/8aHhU38Orey99XFU8yiC8h3LJT3+Jgb0zpG2YInWpZdMkT6R
	CPtG1wqL31pt4Mkr9GP5My5yPFwvT6cgIgNP7k5rOeoANr6nmJIsj5+GtB/1dEbt
	+h2sHYDgdWzIwkQ4TGxco80ezNioFpq4GeQff/rLlRNgFo37Q6mWQfL2oe0KSt5W
	9KSopcEB+cQfu/qZadPpPAMFSWPR89g61edhf3K4qp+YzCIkzXrLuYaLOaHhs4sT
	vDVj1Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byusfhvsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:18:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88887682068so2810696d6.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769681891; x=1770286691; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HCEYa7cgOuBIBFytHhgw3xduRbCl0l0EjHqLpkKY/JI=;
        b=HZ+SGb6CLny2kMWx7rwvL6Sn94UMilueQ3yW4D6qFgJ7fAcPBVBmmyYdgXd15bjxuZ
         vW1Nu2pDMqObseLRfkwE4te/ltkpRP/6Wvw37ykdJhDrGTjQFdXu7PZI1PydIO7taqys
         bY5UY6AWaxGHSTPEOdomzkKixdh+TMeqY24ZItCb9iCOXDN3X795hItSikcuzLTZscFU
         OvJOXFZw7+3qCS6WLPIvxDGTupHkJ9EXJzJef9WBBAvRryqiQsTLPP291RRKrpYfZ+9F
         UsUI7XPaAaY/v6eYtS/oo/haalBQ8xaonWuVlcoIV1pKNie+B4JHtLSQRyX6gvnsjQpp
         6sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681891; x=1770286691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HCEYa7cgOuBIBFytHhgw3xduRbCl0l0EjHqLpkKY/JI=;
        b=msKE8VC7dsjAVbqGuuTpKMxdTcGZMg0hYXybwY0EuuzAjejjzjb4uYOWABDHYwXmxd
         XfpbuwFFhNglFeciZ784ItDVUTEmc11V+GT83k2vA5ajkrJHR2Lkr83YRsaU2ZEn3rY8
         p8r+h9LPK3R2TSmEtkVi6GmGI/PdU9MKAoqVXhWncyp7+LvwWQdSDCuA+r4JAwiYLoNg
         RUmiUcZFAj9zdU1WiazDbYPRJhF7+pm3UMgRprQJGlgCyGMrsGm/nJWI2xJD7s5Hx3gp
         oWNDgl+ZBT8+e9WJpvcPYIjbhsfhzbfR82U4IlY6akZeOhxpycgQwJuWLY7qrbS8uKQj
         7wXA==
X-Forwarded-Encrypted: i=1; AJvYcCVQkCzZh0CCRBWOdFPnCJJ6jMQltS6z+lAn1vwe2ymmppD+249NLSFKfjU8v+HzszcBEiq4hzVseMvM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9hhLXk33MFebiWEVV06aVOd8c4lFIQTlKhJssa+R/+xxL73mr
	DWMlNFQG7z8s7umamI6TNJUkcmnOC5Wr12l0FxOQNpxpQC178bmdgn+zFbm8DdS0gbxRwFqmPKs
	InzV1q0MR685Vzibp5PUq61/o7Fyy9YG4HKMLHQDUa0aiKZ7gyEGzL+GHa1f+TCtM
X-Gm-Gg: AZuq6aJpiCubRaEuG1Y1001XZ18nQ1cdsWVWpU8fV1xxrjP8l7EcStCENHzex20QwtS
	J7q4DP6CW94h+8K37FUxNNVP85jDBWtM3nJ72x9JBUqWQ3YISWtkJkFB+FbGv1ukJ3/JQdsRhdD
	ByyWN9LA+LJwIwuFk0Jmuc+WGRy1KE9njuHQFu6La6UNn/4pifCPEGwxid1RDT7giy4VB86UJX6
	cFsUocsGJ7YluLtq5PrpcGDEcFuNVuZ595z0QXIr9pYwNZHbJanqTuTHgJtcj55bvlyMYLmLALe
	OT+cccI9cZrCxK+D80pjmzrb9JegDqO8+eQulGDRi6WL54xVimK5PKKwNXHOacE4u3ryTXJD4n8
	ZLhkYoWtxjJcqRSppqTx8ZjpL56vmy5Si/q9YIMVRkww6S8S1kD0kXGNeTl4g5NOQ13U=
X-Received: by 2002:a05:6214:6015:b0:894:9ac1:8be0 with SMTP id 6a1803df08f44-894dccabccfmr38221076d6.3.1769681890868;
        Thu, 29 Jan 2026 02:18:10 -0800 (PST)
X-Received: by 2002:a05:6214:6015:b0:894:9ac1:8be0 with SMTP id 6a1803df08f44-894dccabccfmr38220876d6.3.1769681890476;
        Thu, 29 Jan 2026 02:18:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4256a35sm2707274a12.1.2026.01.29.02.18.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 02:18:09 -0800 (PST)
Message-ID: <7c3646e4-48d3-4b32-93e4-69e7ce439e94@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 11:18:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: milos-fairphone-fp6: Add
 vibrator support
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-3-b51ee086aaf5@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-aw86938-driver-v2-3-b51ee086aaf5@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: I4KGoMeklNbBOP7fjLeeKK3qDZd1qKuB
X-Proofpoint-GUID: I4KGoMeklNbBOP7fjLeeKK3qDZd1qKuB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA2NyBTYWx0ZWRfX7QH/7iNImQDH
 tCwjh9m4vp6otRfhf6hYHUCIPfO5B9I6gmUfv77tN5TuKII7x9hk5vKyX+UHkAA/70kYulV3486
 REc+1syrtFRp1WtUxXh7oak9LQ9lm/jdn7A28turLUnIy1wSkfyXWUGY40sP50ADbw9wMhDemMb
 6LGIdILar27a+3s9nhB5ENGfKgC/TN9fvjZfHhWiKjmWI4uDeclwp3NW8v0BK4utEOzDnXbQnH5
 Szsl9ghFvZjGb9RR4JdGlMWY87RGyVpXwykDJ6irFfJ1AGtkmjzYTgAgY/7Ep4VivvTSle20Uwt
 5FFH4hmGoGz6QiWt/sZR++vt9MVAa1qXPRZouxxBHh3Mw9XFT9UtfSY/eC2R38SdoBfaDp2ysld
 5m7hewmm9wZ63xJHOe0f3Y7erPq7Q9PTqHUvyjh5TJzGFzk6vw19lGs4iSZ7GM62jx00nbuFrmw
 oZrBri04qvd9GNDVqmg==
X-Authority-Analysis: v=2.4 cv=YtIChoYX c=1 sm=1 tr=0 ts=697b33e3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=kndQm4PL0qyBTY2Ci5cA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260822-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[fairphone.com,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 12111AE7FF
X-Rspamd-Action: no action

On 1/28/26 4:51 PM, Griffin Kroah-Hartman wrote:
> Add the required node for haptic playback (Awinic AW86938)
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> index 52895dd9e4fa117aef6822df230ebf644e5f02ba..881239d22fa97685206d1fa3a70723c5b77a339c 100644
> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> @@ -625,7 +625,17 @@ vreg_l7p: ldo7 {
>  	};
>  
>  	/* VL53L3 ToF @ 0x29 */
> -	/* AW86938FCR vibrator @ 0x5a */
> +
> +	vibrator@5a {
> +		compatible = "awinic,aw86938";
> +		reg = <0x5a>;
> +
> +		interrupts-extended = <&tlmm 80 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&aw86938_int_default>;

Ideally there'd also be a config for the reset GPIO, but otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


