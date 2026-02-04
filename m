Return-Path: <devicetree+bounces-262623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPWIKyk7g2ngjwMAu9opvQ
	(envelope-from <devicetree+bounces-262623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:27:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEB2E5C5A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBC48302B3B6
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACB83C1960;
	Wed,  4 Feb 2026 12:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kC1SZTu1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RM7VGpNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2953D5230
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770207903; cv=none; b=I9QmkB0NJRIYMu1j33Df386c+B/r6Otv9nyxn9jBXbgmBhw1ktPxlAHyfaemmLXtAik0eITUlyqKF898xyrA/hEe/priQZOO9yEJTeDofU+EAzsm8RsvZu+7Hqy74DEIGArVvMFNsHrXvSJMTPdRazg6De6gTbuorrAtE0/QTIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770207903; c=relaxed/simple;
	bh=qMQadl2rnblOT8gLyMIB1TqD7Ybe4e3X33SWCp24Y9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TxCnJmjx0AxZ4hgAnjKGvF//brn25sLvuQYRnjwRNNPdLcxJSxVe+vMtmtwCUJ4yRoW63uXXhAH4NQS2Auu/XBf8LmIcKMv8jlYJB8Asdz3WivEXma9hyusAhJJCg28c5sGN5D3ATjqIUZ57KJEzRz0TWWtSObh0Wq7wJxd/Vjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kC1SZTu1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RM7VGpNa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIb26716186
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 12:25:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gStHw4Pb525PgjQ6MQOQm4La5fEOEM8mxRFebyrAtpE=; b=kC1SZTu1oblzgJEY
	XEniWVwviac0YLKZHW43oVvHsBD9UYm+I8g648bayrdkBmBfrpsDXz0/+qhR3s5v
	OZhUojzcA/+wGi/sccIAurDWMvxKGgvEjumoHBjFmZoDgpcb4C9K39Bg1+UoIN6F
	V3jGqbDRCxJ7P07vNm9DGTskafWlKjsUfaW0U8hDTshuENq1gerMzvbmU40FCq/n
	tFESUAFQa/Pdu1Y/ePaEOgdVXGv13nW9CvnYF4sSCJ3jiib7ie8JrfNTtLslDoUy
	x0VH1RTT8TiTCRUggrZSYeh/KehWBglXhlAlghBgakIuQrtwPBZS5jGC0jBkPTYa
	Qz5n7g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3nf637be-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 12:24:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cb31bcdso164014085a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770207892; x=1770812692; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gStHw4Pb525PgjQ6MQOQm4La5fEOEM8mxRFebyrAtpE=;
        b=RM7VGpNaiAI1v0NzOU9W6JkfrUT5+d1onJPUbML8UNUIqk4U7zWv2SkFxXhFwh/5H1
         VvxH/aAcAEtXtD0ak7+PmOAC32fhM8mMr1Xe82KtjBc6pg8bDA75p9hDzGfqTtbSzlRx
         rutbCB4TF4Q5M928FBaO0ksKpOnx8VLWWZ/kZDXTgh5+K3aIqcsWiYzQRtE5SIT+z9CP
         S87zwCX5Qm85arQjYmonKL02ALv+xxlg/Qv2FWeQkBLMgkhEcnY5DvOlJqYQa+D0Ac39
         qTEhwUt8s9t2tKrqAU2cpIiM/2BL5forUSaGou5irw8R0WmX8p9GoNKR6FxxKkZ2EulE
         kBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770207892; x=1770812692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gStHw4Pb525PgjQ6MQOQm4La5fEOEM8mxRFebyrAtpE=;
        b=VH0Kvjc+qpaJJSj4r4/KdPVstUQg9A3wryYHsMd6EOLllso0FztWPXUrcNTdu2wzCG
         5Z5q5cHGs7qHjrvBmsYULWcYJOTh2UnIA+TJGPb/elLrAC+h3Dp2VzlgcXNHgx+CuhhA
         qXob8qrgwIi10hzuxHa2ZpXP5utVmRMriOjqAYLV/1/eyW4eAie7CEF2TVutOWgnfkvx
         VxMF6Uxc8wczDSIJ+W+8Ec7N8siaNK5v9nAfpYQsoGJM/mQVPRjQc+J1T6YG9/pnQomH
         30UJYxT0uBfJLud9GnAlArOZM/HmjinW3qFu9epXNAtkNB3M+1MbY8r7qv/VDSuz9bca
         +yPA==
X-Forwarded-Encrypted: i=1; AJvYcCWBhd/1SJorx5r1ZXogkAy0teQf4BJCXUMRKDiJWTS4jnc+lyrWRk3co7OoovzJSOSaeofNu5GAGNtm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2hHK/7yFPdNPba/0BMe8sGJrymxMuv4csyCn7HIpw1hgAYcqG
	SIqLUZrWojzBW+cIp3nMQ5nWlf68emptV9E1FsnzCAsmju3af9ISskRqVoV/TPg98UaHzsPaWTK
	LSCz3+aFwUQOT4K+o7plKS7dFEJUZm5pFJf1PSGlVjcQMv5kGbpHWeP1AhgWZYo1O
X-Gm-Gg: AZuq6aLZFY6dGwnv3h8jByu9R6nnrhOsD2sOkizkF1EES6gkW/zsLkQBr5SHo+4WOjb
	Q1zGFPXlwbLxYazBfqU4Crgdw4SPXB04BrqS5UDOW5GLYvfNWant57iOX3dCwCpEOO0mZmPP944
	astwjN+u9vpj6PUtQ5lOK4gz3jUbyON5j3bTigubsOG055qdp1luMsTL/n0RJllEYk3ne8baeXl
	iaGLyjfSz0xTWLhnjE0TYbmi23qA/sHcy9H55Sn77R3q16xPeiCWUDQeBuQDArQFrL8WHuq2Gly
	CidDq4X+XXLoS52L5Nqtj4vDKK1IFOGzCIFIAJZT5Y2rDm/qn4ZbJAbOBZjpiN0zXhGCr3jjaA/
	wloRhfaBeITyFi/UBgA1qV89Q/oKHjFSb1ZIvlzVJrU+uZDvamZ/1H4eB2qeVT445xoY=
X-Received: by 2002:a05:620a:288d:b0:8c0:c999:df5a with SMTP id af79cd13be357-8ca3311995dmr157023185a.6.1770207891809;
        Wed, 04 Feb 2026 04:24:51 -0800 (PST)
X-Received: by 2002:a05:620a:288d:b0:8c0:c999:df5a with SMTP id af79cd13be357-8ca3311995dmr157020285a.6.1770207891314;
        Wed, 04 Feb 2026 04:24:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea0024583sm114368166b.51.2026.02.04.04.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:24:50 -0800 (PST)
Message-ID: <3ed170d0-3291-4cfb-b092-f4a1b2b0f96b@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 13:24:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 3/6] arm64: dts: qcom: ipq6018: add pwm node
To: george.moussalem@outlook.com,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Devi Priya <quic_devipriy@quicinc.com>,
        Baruch Siach
 <baruch.siach@siklu.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260204-ipq-pwm-v20-0-91733011a3d1@outlook.com>
 <20260204-ipq-pwm-v20-3-91733011a3d1@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260204-ipq-pwm-v20-3-91733011a3d1@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: m6bYBrF77q49vTn6SstWdhi8lJYE9SXY
X-Proofpoint-ORIG-GUID: m6bYBrF77q49vTn6SstWdhi8lJYE9SXY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA5MyBTYWx0ZWRfX12yZdIqXo+4t
 g8bvKzx+nR4UVLEuJCtEfNDOZgllW5a6hPhX4cIlzePiFhkc+loPyPYPTmo+P+uenfEWM2IFAUU
 FbVpWeqg0Gb7KrnLziUwpzN40nomkI19UQKuwyRy7kfBTcSiPZxZPEUscLD8N4Gk1qKWo+WA3eo
 FeXQu+F4wEgfpZ5RLgsVcMbDkoCKSOWPTKQE+ysRCG54N++r5R79NN6Ok4ENXIrbZJaz5j8OYCM
 3reMmkav9k/lOQtssaDJXR67pFm4KDBSAv/niTJ96az6l/x/1avVaINgyZwheTXuParBlrdhAYu
 kycACqIgZVscQE+pF68HpNVVuW6gRKR8xh1WB0YOw7ztVLVAEdGJ4FYg8qxfqhQIDmHRa9l336p
 Y8a+ALyrcIOlPABfH+b5icr/6KCm8eSfz1h9yqLz2/lleMaviUhTv5f8ZlwoEeNBNzQy/FTVblv
 ROjZ6BzOps6GgeQBasQ==
X-Authority-Analysis: v=2.4 cv=doTWylg4 c=1 sm=1 tr=0 ts=69833a9d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=Lh10uZTOAAAA:8
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=HU31luCS42qLushI0i8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
 a=h7PWpkqlkWt1jHQZSjMD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_03,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040093
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
	TAGGED_FROM(0.00)[bounces-262623-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.29.158.18:email,siklu.com:email,outlook.com:email,0.29.142.104:email,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[outlook.com,kernel.org,tkos.co.il];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0EEB2E5C5A
X-Rspamd-Action: no action

On 2/4/26 12:25 PM, George Moussalem via B4 Relay wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Describe the PWM block on IPQ6018.
> 
> Although PWM is in the TCSR area, make pwm its own node as simple-mfd
> has been removed from the bindings and as such hardware components
> should have its own node.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 40f1c262126eff3761430a47472b52d27f961040..7866844cc09fd2c2c2f512ce2c8fa7826fabc7aa 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -413,6 +413,16 @@ tcsr: syscon@1937000 {
>  			reg = <0x0 0x01937000 0x0 0x21000>;
>  		};
>  
> +		pwm: pwm@1941010 {
> +			compatible = "qcom,ipq6018-pwm";
> +			reg = <0x0 0x01941010 0x0 0x20>;
> +			clocks = <&gcc GCC_ADSS_PWM_CLK>;
> +			assigned-clocks = <&gcc GCC_ADSS_PWM_CLK>;
> +			assigned-clock-rates = <100000000>;
> +			#pwm-cells = <3>;
> +			status = "disabled";

I don't think there's a reason to disable it by default, but given the
version this patchset is on, I'll be happy to see a post-merge fixup

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

