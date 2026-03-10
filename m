Return-Path: <devicetree+bounces-273457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHyUMuT2r2mldwIAu9opvQ
	(envelope-from <devicetree+bounces-273457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:48:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D94B249A4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BE46311D662
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5501C37B413;
	Tue, 10 Mar 2026 10:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSaoErtb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HwLeQscv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DD378829
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139514; cv=none; b=SGRg60G9C1+NaoTbNm3wiBTplh07R/nNP08l7Ytq6SXWNxvXCxFaafOl9WxQ1T8am/+vzf2jxaGVyFHwBoAnu+b7/AVP3XqXLFl2cLuELGsFj2JNWSba+ZtDyEYlrWGzkxO3IsVzjZQTqeY93EIHp4bx1cCL856RbzT6Ifjx6Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139514; c=relaxed/simple;
	bh=+Kx6CW/dov2b+Z2F57Pk0PKvcNAXcXGjfBQOBOoPYp0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TOSfwN9bNYbkSbbt9n/DyI7DB+sxSmNvcW//0V1xnAlIMEOsJhnDbE0xkcUMXiEXAKZPyN+TDkRWXJyKGnljADYtZJvlyOmQKwcPh3zc0cXZg2gzFW7MkUfjSw+xIX19AW1pzfxbxw8HlYxUbD/TbFruIPvzHyd4zp377HQapqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSaoErtb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HwLeQscv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A7wkd83125153
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:45:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IyCjKE1CRtdrkKn3m0S53RpV96KhLjntxQ+MS5fj5gc=; b=jSaoErtbTjuYJIe5
	CR4lHMT6cSUu6FsxeX8CyOYJjnenINbmSTnnuJQV0iQwgeKQK/cMFiPCDDtb22/z
	WnzwUVG/EGTRsm8sNg+S3nK69T8sI8VcXwnMgG6wvghFVsHgBAJEIQ9rOcVt/MVf
	SZD1xaKbq1aXpxlHGXdctAiXhKftgfh80RJ3llHFCOBW8qMSeacsrLRFkvdOaIcQ
	9avQFoehgyizDQFpo7c0CeMe5n+TN/RIJvx/onM98G4hFkUKvcDtxGyJfuKW6PKm
	+BGL0MfyWO/1G7G8N8rD/OROg7GmIcHZI6KXQYXWmrOWV1BB8WpIEBbRlNLK5jbf
	3UeenA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctfcj0pmu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:45:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd8198fe16so173641285a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773139511; x=1773744311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IyCjKE1CRtdrkKn3m0S53RpV96KhLjntxQ+MS5fj5gc=;
        b=HwLeQscvpXfMXrqXv30WBP9Vneu7wllFr/++fOVjRnHhbgpvIX6t7T9a4MLvYZag4/
         LIgRtr8x+8+XMPPCVh08kpCOAx/NCNqqFLVBpcICz+8X8UnVDZkURhdwi80o7z6OI/dQ
         6GjmPepxP7T6VWJmqaDKogqBDeZYo2VO6ZUeQIoD5ooDJa7HcsaUagIqlrGmojYLkpYk
         s3X3lvYIHYFgf0Zv6muB5IFeyc43Js8WoHO17j1h0W1oTLdeNX/j4sr+cpn71sxWFg90
         YkrANsa1FZwQE6e8sv5HNzrQ/gShmyXwoSNkAOpW9FWopnizZalm+cHzUzvj1REaslRy
         ezaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139511; x=1773744311;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IyCjKE1CRtdrkKn3m0S53RpV96KhLjntxQ+MS5fj5gc=;
        b=o/ujPUT0inFxIdeStYRVcj0CBVhh6HA0kMlVAkv/AMB+12+PGInusV+0e9wxKN5l8i
         3o+KTG56yGQOFTYkZVvSn7ACwCCH1d6QtfW6FCvvQralWvPHJACS3VSfF8wIDiSFpbBE
         V+XBAV919c/9g3bXsxneh44dF3x0yuZtasZSCe9WQECtSzyl4ifJQeCD2zoVJChmQcVR
         tRJZkDA31cQZ4i5ROxpZAMrlvKhPMRHsVSL0MOVaos+T4H8e63VzGjusrWycgBYqvLIF
         MpFvb+I5G1j/bcIQvlcmEYyOi4JdxhNqZXa46Oak4foX6+Od1N/rDSHxebrCuFWb1EV4
         8p0g==
X-Forwarded-Encrypted: i=1; AJvYcCV1wcYr8j9hqw7cIOwJ6LIna0nybrS/WOJAUq8SFe+Q5I32hnn03nFusoIcWodYgdr7xZ+1G+iAIPP1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/YwPLjSLUtTO2+9lCkwGupyXfzzukTIQoWqmoJD0mt2Tu4uPS
	Oi/LjqKe+v8VHLHuu5kf6h5FMONyBS1KwZiePeT1JDS6INMYoIgi1pYpw/O1rVuc7MTCRgqKyaD
	9F6cfkC+pSqVlNkrByGjsmzCl9Jrqn8PtFrapQ0k5kKr1ytogt4Rbbyi+AkFEPuJi
X-Gm-Gg: ATEYQzyt2AlP/8kwZPgfgG3kt/CBygG+tYHHNaDk/3cXOHKOV03aK/XoqJsAdnlwlfL
	YfPODiCOubfvBOL8PQNm9BGbzsjcjZ9P9d4hf+Zk5AjLNXkteiLLEme/s2is9lcBeadEP8p4JQe
	1lVvUdivw/x+Ggj08XbFIcuer/kPMFQL+o0ZEy5AwxZ5Evlu0GRToN9dMUi5mwS7WE52ZQzfjvY
	sLyeESDgxBHzo7Yo5qc8hM9I+B5eSuvBsktsoRkSL/e2HuOAXvdey8HBVzU0dxSfIEXI7TgIUlI
	kTaqisn9sZNDLzctnqKhtflUjhVNl9Mjb2cDd1PoWvx97Ks+qHLe7G/AX6jwsZbA9ERHneW3ePF
	v3aimGLOw1tUSIm5rYEH5zLKo/kW3PzK/UDHOkDSEE9/PygXGZt6ws6yI6AIIcyHn7WE9OvfG0r
	PqW7k=
X-Received: by 2002:a05:620a:28d0:b0:8cd:9665:9f09 with SMTP id af79cd13be357-8cd9665a51bmr126363785a.4.1773139511355;
        Tue, 10 Mar 2026 03:45:11 -0700 (PDT)
X-Received: by 2002:a05:620a:28d0:b0:8cd:9665:9f09 with SMTP id af79cd13be357-8cd9665a51bmr126356985a.4.1773139510830;
        Tue, 10 Mar 2026 03:45:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a559b777sm4060854a12.27.2026.03.10.03.45.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:45:09 -0700 (PDT)
Message-ID: <3dccfa39-9562-448b-a982-447cfa7d5a5f@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:45:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: monaco-arduino-monza: Add sound
 node
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
 <20260309152420.1404349-7-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309152420.1404349-7-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7fWAuYi c=1 sm=1 tr=0 ts=69aff638 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=PSYRucXItuZ608vo30QA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: L0WqLHP4JPQu1u3WdG1N88dtjhpm2LUs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MiBTYWx0ZWRfX39XtNOf+QaxH
 GrHGVWNf7fjZ/RrvVOepagtjI+HIXNcZVE8OieIs84W0mN5ifDt/syH4kssDnPApGw3mtUa3u+L
 7k/1kvRl/VTVxWrdy/d5DbCVOX0R2N8icnomthsSN+l7p0waHOfP20v3fzUNm+dN/3sWOh/RaZp
 5nqJhIejln1M5wb1cvdczMTjwjYTLOxabFj3T0qT40ltLrSIhOpBzpgVezVfJjll4fURvd1lB32
 SIp37IsH0Xl48OdrHsrXenoFW4nnTeQmAF9FliUiRFWOmQkhBTCY2RHCUsET2pHDp5KWFxS5zJ6
 /gyix6y9exWJ1eHNxhkEY56rybGlJOCIo3jXltDDpre/s8WPWFXiqbXjFA35UM964/16pfLJnIc
 Lk/D7UGEp4AGJi4oTEpyU9qD1caD70q+XoYYvViv1oM/1Fhw9bfoXK/T9H1/swvdZKo/+wC1iiN
 G5p/++I/EklelZDlwiQ==
X-Proofpoint-ORIG-GUID: L0WqLHP4JPQu1u3WdG1N88dtjhpm2LUs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100092
X-Rspamd-Queue-Id: 6D94B249A4F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-273457-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
> Add audio support for Arduino VENTUNOQ board, which has Headset, Mic, Ear
> and Lineout connected to external Maxim max98091 codec, HDMI audio
> via ADV7535 dsi-hdmi bridge.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/monaco-arduino-monza.dts    | 66 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi          | 55 ++++++++++++++++
>  2 files changed, 121 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts b/arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts
> index b6db2a7151f1..be62b3dabbca 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts
> @@ -80,6 +80,72 @@ hdmi_connector_in: endpoint {
>  		};
>  	};
>  
> +	sound {
> +		compatible = "qcom,qcs8275-sndcard";
> +		model = "arduino-monza";
> +		audio-routing = "IN12",  "Headset Mic12",
> +				"Headset Mic12",  "MICBIAS",
> +				"IN56",  "Headset Mic56",
> +				"Headset Mic56",  "MICBIAS",
> +				"MIC1",  "MICBIAS",
> +				"Headphone",  "HPL",
> +				"Headphone",  "HPR",
> +				"Receiver",  "RCVL",
> +				"Receiver",  "RCVR",
> +				"Speaker",  "SPKL",
> +				"Speaker",  "SPKR";

All lines have a double-space

other than that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

