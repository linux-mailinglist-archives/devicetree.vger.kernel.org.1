Return-Path: <devicetree+bounces-257329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJgDFBqEcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-257329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:57:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E49660985
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 091707CB4F2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7B835A944;
	Tue, 20 Jan 2026 11:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cn5FwKto";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QRBMD48V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA61332906
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768908109; cv=none; b=cFLJkb0AUC0fBKrRs0+WHeZk2SJwyzkmql3ESRDGBZwABO7PLoqlC9OVbgNkD4xhrDUba+D5LVOG1V6cbJ5UKQDi7aiZUZgQl4r2e6iQPWn9cs7iuwW6l5pqJm0ng0qXiP/kXqRvzhfd16y0frSPPC/IbgY1fJ3J0/jRzxHB9Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768908109; c=relaxed/simple;
	bh=F0t5sbycw9YQ5W7Eletv4zTITIv2QNOjvOBgJ0EmP7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u+cAOujODv1su4S9wRCK/9696vWMHW+50TdusgQqlg724OFT1rYDfivi8cafR7+Wrcy6lysJnbf1HYG0yNhOqJBnQkb3OH5TpxadKDuZIV7fFMm5ZVWxoOXKjUnAfJuvRSVPJtoD/uVWuhQcdGF8MmCG7slGfp2gChIqwwI1ojw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cn5FwKto; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QRBMD48V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KA94M41347376
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4a0PQ+QMkBfoZo42ZG8lJzDFY2OErM69QALH+UBgI0o=; b=Cn5FwKto2g6hPBaw
	UsUSqS4m283A8SRLWkXhAn3W93rj48e9LGYOqcZzSs/KXaiveTBr2V8Etu+A85Go
	J23qd1hriOjIhmmpFirHP2Um2mKCXaiJ51IHRGGNBajCIysI/Vxhhb4FlaJr0vPB
	3mdVBzaDHIeTZuVn2UyFJTh96fkICve9vV0lnBqTEQ+ZK+A3KCaS6q0S51Zf/E0Y
	/CGqpj9nSpK5GjOV/ZjNEhtLxz8y7aK/CeIoeD9r1+DfMTqaIDEkWuMs8sGk8J0N
	Ivm5G6/cQLrAV/ATRTx5n2lWzZJnLkmCVERteTn/5WHMjtaCBWArL4+EpgXojsM0
	lOq8zA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdk1h3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:21:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-501476535f8so17882671cf.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768908106; x=1769512906; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4a0PQ+QMkBfoZo42ZG8lJzDFY2OErM69QALH+UBgI0o=;
        b=QRBMD48VhGDy2WJhD1eRTxvy/xb+02jXLCDhdWcpgTVKHXbaoWk83H5JANYj6X2Le8
         tmzSA5STFhdydmJ1k7Yw02N17FJbyyoMtrNjLBipREAhJYU4PHYYWocn6lzE3NobX8jb
         vxczOsuIRPimoaRbTH3h6gQkOcYczEAA7TchqYwhk7LHdL7Tr2bJpjmVyDVxk8SUD+MG
         FDuox2Khj/V3eFW6gwJgpG7T/lMzJe7idyqzQ5Q3AXuI2Rk1CVRVDav6isU9qnP8Zfli
         sMWp+7AhwEdaw8XMHY6Ocde7cIwm51bfDVy1fFw4J9ZS/cbcwoYTJ9ysyyhAUJkbuK6v
         JbLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768908106; x=1769512906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4a0PQ+QMkBfoZo42ZG8lJzDFY2OErM69QALH+UBgI0o=;
        b=d9CXoNTAiyJjwWD9BcZb1at94dDrrZJtQ270kQvHa4/z7bdvAuMdGhtRKxPF1H+BVO
         xNXb+OpkWIDgX2zxbbjuN+iuOezWqeW+wtNGDwdzjakBrYXL9hp0rLwyTrWD+F/OOGli
         4MnN1uwVUuGk+hKOUXDLLTyHqtCYAoSsvVUUld267i1YNzE4xYf/qHB86v8ndGPndgWH
         Vs4s+FHZc7R3CXrYPgJGu/woIW81HEihvrM2Xs6aO3hQOTEMa8d0ZZKWej/Xz4YNQgzj
         gaVKri35dl3d8DARiOcE5Sgf1ytmOO7m+RI3n0q0Rv28IAQtbTW16RzM2xW7+Ebm2eoV
         v5yw==
X-Forwarded-Encrypted: i=1; AJvYcCW9dvwg4xyr03d2NCcuxCsFI3ZeViRUANfz/jFUeTouy5UAj0uu11lFTtRaqJhFF/zg71fewc4WE3J3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0S6tPKEHVjzxNrqTk2MAiv6Frb8qiHj3GAtSyqDHMbLe7nZQv
	N2tsZOVEg4CQCHB4+4okxJGPF1rfrkMx773+ZwMrns9VUdhQ9qc2jZuHyFZN9/p2+p/Jp7d2OTY
	WxV6AAUQoawV0Ke68/hKORPau+u1+xjW7UlS6SGjUWZOxvTLZavKzpEE13wg+DHme
X-Gm-Gg: AY/fxX7fMeaU+Bxw7gpy1SQFiv+syWr6vpVdqgQ+X7JEoxnyH1ZnXB0b/gfdcalYCGJ
	Mojw5YKrgjtKO70nSCDaduqOwAauj515YDdlQm2vzpzD6jzB21sDeO7r7QbSqaNbcAvd7iFnshI
	FRb/LlhcTII+go66ItB+voeoXfmTXVUrUU+Nkx/FF5N/7yU0AiPBytPJc2RbZSknk3GvkZnfsRk
	9M/EAoo5G0V0Y0qG9ZPe/92c3XRt22Pw2EijWbtFzbEpYBxaNItePaOQcdXtL9e0AxbAsfMsozU
	6lb94ohIB6bmrZBxWVvQV1N2sBtBrp1U2dsPNqHJL5FqTWAu/JHQ1unJB9+ahIom575uNrLDSQP
	Iu63rh8G/eeMVQTfuYU0fwOM7ZARjqEO6MuBSVsE813nAYSIoaOXqlYIibTppkcidzio=
X-Received: by 2002:a05:622a:51:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-502a168dce3mr167653221cf.4.1768908105762;
        Tue, 20 Jan 2026 03:21:45 -0800 (PST)
X-Received: by 2002:a05:622a:51:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-502a168dce3mr167652921cf.4.1768908105374;
        Tue, 20 Jan 2026 03:21:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6580ec85bc4sm90439a12.5.2026.01.20.03.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 03:21:44 -0800 (PST)
Message-ID: <b27bd055-d6e1-4021-a2e6-95064b2a0ea3@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 12:21:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180: Add missing MDSS core reset
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Kalyan Thota
 <quic_kalyant@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Harigovindan P <harigovi@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
References: <20260120-topic-7180_dispcc_bcr-v1-0-0b1b442156c3@oss.qualcomm.com>
 <20260120-topic-7180_dispcc_bcr-v1-3-0b1b442156c3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120-topic-7180_dispcc_bcr-v1-3-0b1b442156c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f654a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ijxkZjTTDkK4w4DhjVMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: TB2S_7vIRZS4RjHsY7YReFNA2sI3KVP3
X-Proofpoint-ORIG-GUID: TB2S_7vIRZS4RjHsY7YReFNA2sI3KVP3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA5MyBTYWx0ZWRfX+26FOkeZLviC
 tnJkYBXMsebrn2P93O1Rc91QixuVISuyGsCsl9aEfmMLNriJvV2LIo5LOjXU8SwBBMwciQY9VED
 gjiuxjWwGyVQf+fqy1/hTiqZu65DYUKnGVGUXssK+gTYji/0RxIw9J/8ebp7q2NX1zeThwwD0gP
 IogtjniFHerFcrb17McPQy4/kdU8OXcI6LXUkxgZTFXP6O3Gop3TyXnfTnZMPT7W4ydMxebv4u8
 q9kgjJcG0LNj0/oMmBASkRBC6cYCw7HmAt/f9DsldvIHSmnhwOj0V66UTX6K/bGjful4KU8VPaW
 6KCQtTbbvMS/AH0+FBmQNgKX10tx3aGOwdOc/4OMXEsmPxSZOFRRuVmNRv+66lBXGXoAXjlzfuC
 sTpcdft3c4MnliP8JA74wxEW46pItN2oULilglpgUjQUOcCpmjIHObb23zb/dG7fOMCovqQkygx
 ZpHmGhHozSUSWRXZR1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[38];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257329-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,packett.cool:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9E49660985
X-Rspamd-Action: no action

On 1/20/26 12:19 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> To make sure the core starts in a predictable state, it's useful to
> first reset it.
> 
> Wire up the reset to fulfill that missing part of the HW description.
> 
> Reported-by: Val Packett <val@packett.cool>
> Fixes: a3db7ad1af49 ("arm64: dts: sc7180: add display dt nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 45b9864e3304..f7937fa88536 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3221,6 +3221,8 @@ mdss: display-subsystem@ae00000 {
>  				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
>  			clock-names = "iface", "ahb", "core";
>  
> +			resets = <&dispcc DISPCC_MDSS_CORE_BCR>;

^ won't compile without a _ between 'DISP' and 'CC', should have 
compile-tested harder..

Konrad

