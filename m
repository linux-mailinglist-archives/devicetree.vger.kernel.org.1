Return-Path: <devicetree+bounces-267197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NgbM4x4m2mzzwMAu9opvQ
	(envelope-from <devicetree+bounces-267197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:43:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 50403170818
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C5C15300B572
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6D035C1B2;
	Sun, 22 Feb 2026 21:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pvBvo79K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cXcw1h6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB10113959D
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771796610; cv=none; b=kBA8g4No7gGuJhZJs8g1qwVjMlbK0c8TfygKUe/6Eo+RvbdUjnvTOZYW8n/F82v8Vl9UXp3Uqro+ncK4fj01Mp62OogDzgorkzda7nFY8hnQc8oC3C4qBbqHsiBN+CcSSJZ9iFfhIu/gg+xsc9qSznCMiRZ46/CV6/QREGBC5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771796610; c=relaxed/simple;
	bh=y+0PzllYowefgrq4bX6z1bci+YOmxTxMI1RMx/4ji3Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=armFcQ5y7iobUlz4f+uboSaKnr6cyC7yyMVgQaD2XwQfb0IbZKP8/kVQJaEq2tujepN32iW2K5xX6WYzG7NbwC68g9diREpuMHrnX+fzE+2qI4yobnkD1d7NYqH622H5cYMWd1cNWhbAUcNJhNxpJ8KlsWYttPoNXRTwlfrV+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pvBvo79K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cXcw1h6W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MKr91W2251771
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:43:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YZaj7KLhvb1aDwkuQxwNAbWp
	rsQ0MS9Gl2DYNTFLP7s=; b=pvBvo79KeZAg3qYEG623DFHnTgIKR5/8MTMPqWc7
	Bs+UvSgpnH5mMotjSLfo0R4k31tg4sDp8Doskw7rv5TPOOYh2/TyrA2IAMXPCs58
	SzNUe76xh+Y1IJ7ko6avg91I0jdLyvykyzh3dDClkufZcjiOoXqDSr24NvPmz6L5
	9iFQQhCzIblVBLR77DIQGL7yixcEGIZl44d5DPTskf1ersKbOv3gMNgAjQoccGnh
	uMH2StD3Uxi4s5DC1qENkHzmZ0VzfqiJbfKb7sG0oH1vIoljhEz25s11DjswTFOl
	T4wvw5ychIEmCrPiZ02W5JHUhtTSAB6jsOuzhcuuIOF1kA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wytr4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:43:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3ff05c73so3730421985a.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 13:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771796606; x=1772401406; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YZaj7KLhvb1aDwkuQxwNAbWprsQ0MS9Gl2DYNTFLP7s=;
        b=cXcw1h6WxbuA4OnVcg0eAQF1B425qwwONrZmmFIZ1iy0WOk7QcENUst2cjQVvmUex3
         vCG4laOzNmqK637K2edNfjiPWSdFB+eOi1zFsol2vCtYMIZZI80Jx18Lk1vILi9d7Lf1
         w+fyjLIuFK61s+yclzYw+GhdOQZnFXul3o8MEOq/L5KbhKzN7kYbMsj3LADynLxpaikv
         nARxmqXTW4UwyFPaB5+9R4YSmh4KvW8HfhGfJ8t/JOUygLrtF0Htb2NXeQqj47JHBTSb
         i+RV5SQFBp5YUYauVXZDZ4OfUh7T+qRkvB0JFmVBzyxSBaY9V5dwA7ZZ/U8khlbHQx8b
         tEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771796606; x=1772401406;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZaj7KLhvb1aDwkuQxwNAbWprsQ0MS9Gl2DYNTFLP7s=;
        b=ZaziU1kjiKs/cO+fTw7MLwJPnzdIPy/5D86rB3/8VA7wCxP8Gis91oGzxM3kUUsoQS
         mzfJYP4GuPUNtRqreJOizYIcSPO46IiPSwb+eI3tGvfL+jX/R9xOaq9CL7aWX4l/We2+
         CpwN7YTCa/ROeJwRCLOdc8jOPF7rzdvfN+H8H7ig9iiZGJyzC8/W82EeUf1fqXT9/ho7
         uJORT/QFGewc3G3x0wUVclzMUnvSbV8cfaTRsnv//15LYZYV3DPaDsBvIWD9XSqKXB4d
         hTYnll3zQ9YGGd/OQ2OaXuECVBlpcwNuMy9B3mJYeKKcDfwTI0wYkfVZoiEChgMi6KWO
         eOPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVE/xPSj7gSRvvySvCmzpE29BsPrufcqjpCLYZ4jUs9+5yR19dfiWmdABrNEmbQQ6sv02O8PBU/VlOZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzDVfPSkfX/HHwrQD9luXoQe+7dWbiob+7EYs78VVkiAsYtFv2L
	JGsE8g7izh0AEHri0JfsldkaMJrEIYHeCBwbYg4UqUm0PugmpRzi0zJqcCyWSvFDMQkN9fxZu8s
	RrnP7a++9EuylK8aLvUWph4l8XndPSowoJSLjuJOufkupyyi41ckmSKGTxu6GziK3
X-Gm-Gg: AZuq6aIN2rqRL60qXzNgquDRnMBHqoqZCuCyQFyEFyD/6qaHYd0UFU9dyobTHHkxMrO
	6AtHXBvBuliVSO7pPxrlHJoak6nBKn2mJYZUIUnuf8mET+4IZdRAAFB+xrZVy+suSe1i9Hv62FI
	n5p/IZKTeewe59rW5FcdGUjtTB2zStiATaW/JrT3UbaibIrEtuD6H3Dyj4zRHMmb5m2iIl2HLol
	3S9CRx381oAWANf/qQx/VrbAEH3rOqUNgX1aV5zCd1Mg/6si25ZgGuGqtHyDAN29bQOxw+N1IWM
	Aca5zf/lfMse02mi0TJmVNjzlJ+8ss6NUllLUp49OJ/WRIwnK8uvKwBJaDRHlJXzm080dB/jRrc
	79Ig/AXagAyEOfN/AkV0FwDzHJOdRSZqnRT5JeKZeKC4tNsKqVNwzoA2CtxybbjB62mBeCk3aDz
	HKstiRcu4AHLq8EIucLkMeJFb5OcGNvX3Gew8=
X-Received: by 2002:a05:620a:4542:b0:8ca:d5cb:6841 with SMTP id af79cd13be357-8cb8ca6751emr754972185a.49.1771796605971;
        Sun, 22 Feb 2026 13:43:25 -0800 (PST)
X-Received: by 2002:a05:620a:4542:b0:8ca:d5cb:6841 with SMTP id af79cd13be357-8cb8ca6751emr754969485a.49.1771796605555;
        Sun, 22 Feb 2026 13:43:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7878be0sm11421441fa.4.2026.02.22.13.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 13:43:23 -0800 (PST)
Date: Sun, 22 Feb 2026 23:43:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Trilok Soni <trilok.soni@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 monaco-evk Mezzanine
Message-ID: <dmp6vh2ehf5wi5kglpts7p2kshawkwezilz3dykgi7cwj6uw2z@rpvmltn5yg4d>
References: <20260220-enable_rb4_lvds-v1-1-c6296ef9ccdb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220-enable_rb4_lvds-v1-1-c6296ef9ccdb@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDIwOCBTYWx0ZWRfXwnqYv8sJqJp2
 J0ypej39HybKacWMFWqi/1HMJHf6+1rC5rEntY0ZSvFrs9uuP6PJqODFbGSZ4nriB5X0mafWzmG
 U1Se14ueDcV+YWvRnoKkc1PveLkOVkJ8gSCCfezaMi8MuTtjSbxCXAB6vRjrI+6emeCs0xXzBtG
 Q1DfwTH5EBAAuBBZdpQix1ucjn9HsN8aPZ9ypTbnbJajZtA5ulW5+R1guLexIih6p+7GKUQuVtQ
 KLo2fUKonfnNPRcmQMedkWzpY+aSNVbtRgBDxEB/z2rYc8CpU316Z8aVfi/nBTOU4kgUFOo/uEA
 BkUSg5SCb0khBAfXky78E+EVwfPHmvAUcJI5A21G+UfkqMdyYIJAx7diOK938QC1/VJeozA5NOE
 FhGxenTXATIwrADJx6U4ozgKRKOE5X4d16yUdXplXo0SD02mmweJaVmjafp2dThMTuCUTxnoa0+
 fWhNVuVe08cmxjAMIYA==
X-Authority-Analysis: v=2.4 cv=UO/Q3Sfy c=1 sm=1 tr=0 ts=699b787f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=IyjTvOAsDvkwUc6yvZAA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: mHoaB1TMT1jzIj2_aJsMaAm5YOJIP_Dm
X-Proofpoint-ORIG-GUID: mHoaB1TMT1jzIj2_aJsMaAm5YOJIP_Dm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_05,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220208
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267197-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 50403170818
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 12:05:26PM +0530, Gopi Botlagunta wrote:
> LT9211c bridge and lvds panel node.
> LT9211c is powered by default with reset gpio connected to 66.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso | 117 +++++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
> index 701494d4dd7f..2512bdfbadbf 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
> @@ -11,6 +11,58 @@
>  &{/} {
>  	model = "Qualcomm Technologies, Inc. Monaco-EVK Mezzanine";
>  
> +	panel_lvds: panel-lvds@0 {
> +		compatible = "panel-lvds";

You still don't match the LVDS panel bindings. Also, this patch is being
sent for the third time, but you didn't version it. Please stop. Either
actually read the guildelines and follow them or find somebody else who
can send patches for you.

> +		data-mapping = "vesa-24";
> +		width-mm = <476>;
> +		height-mm = <268>;
> +
> +		status = "okay";
> +

Yes, all the feedback was ignored.

-- 
With best wishes
Dmitry

