Return-Path: <devicetree+bounces-265016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PZYGnKwjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:50:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D659C12CB24
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99BA23015D02
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A906A2F6170;
	Thu, 12 Feb 2026 10:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XCf9gHDR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ajRxWCJM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286FB2F7AAB
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893390; cv=none; b=am0OAfK0rSw9lC90CPI8lbNqmPBN+U62cHeCABnCoM3pkk0dhb56JTLv+fnzx73wXXdQxItAQiKgdJxFTrN5cpGovV7Th+MaG2WaZxIsl3TKAzuy6bdiTrRfz6ie0lvC9VV1IWKMsZPMi6ZuEhmT4DGjAAF7xD1qmEWveGBgIpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893390; c=relaxed/simple;
	bh=JK66NEayfTlyuWsy+naiaOa32Cw3SqEWk9QvpA7Qidw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ge6iS7D5fS9KdYfaeO1JgwykIK5j8XYMlYtO+V6PuaZ30uPrjPHX8CfxAmjhT7r1O9373FZ8SIt2ubIW/ziggn9pH6Hu4tPlyLNMaKNpJXaBknfq8LyYASazhe7g+VcZRlFBAgkYVPqfws4A1yr/DMTrGm0akuU3rfTSUWYb7aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XCf9gHDR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ajRxWCJM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAG7JS010004
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:49:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Oi+5300sLF//jDIQlrC08qFf7l+8hzz5Q4REqsHr+mA=; b=XCf9gHDRx3cXI7Bb
	1lE3JcAGJ5Nx5kJn5jmX7/UB1F4X/9YLs11JKaJBtrOFIET+Gov4nIxKYXzn/vvD
	2F0zuqUl1DORqlE4iaBuBwBPm0YVi5Un28KwVPUiIUXEdEcmcBCYghPVAIGzNKbd
	vyXmuZO4SafVfKeuOzxoqeVUSnmJpvsFCMTEW+aDCmn4X7HeWtl23jrZgnvjiME1
	A3P60g0hh7A8oyjjSfZGDOpTIPYjvQ5y9DzZ63pJNkn2wt4SGHVNw4f6nMQuCq7B
	PIpY1HtBIXiVM7oG8AyidzAm2WwEMpWrRBsb3nACSRrsC9HjGRj9N+v59ABAjCBC
	8lJSNw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cy48345-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:49:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb39de5c54so5752285a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770893386; x=1771498186; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oi+5300sLF//jDIQlrC08qFf7l+8hzz5Q4REqsHr+mA=;
        b=ajRxWCJMUKWZpfQLxKWSp8TNp8k4DPCtap1SWjIc0qrDwMSSguFw4dRwfuQNQylXrp
         tp62eQrFttFeOTLNuSTnZbYSyL3GuKfSB+9iycu7LVVcuxwUzaVbSCS9XP6WNOzoLCGE
         t8ukYto/H6HI82PxtMIl4gIK88vi0pk5/a9/G+P4vMmqX91qJkpi4DQwU/AekZOoprvh
         QbBdnT8L3465evyG/TDztePG/D38yspQBUh7Ap0HntFXaOgHp3b0uoOlIIM7e82emlFI
         OoR6cQzuccJBFH6Ut0q5ocyf1vlKvu+Gh4orGX9P0y3jZkf9jZiOQMerMqazLBruAkOT
         x33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770893386; x=1771498186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oi+5300sLF//jDIQlrC08qFf7l+8hzz5Q4REqsHr+mA=;
        b=PSvDU/w9mU7/hgifivfcREjDjXgxhqRcIiY7Tu+grswusUQPaiAxncnnG2iNoZEti0
         eppSEzBFGHEYw88jdZW3tkxdV4wGM1ro6lW34lViyIHU7j44zfuSpDRs5iz/ZkzA5wPC
         GJnWvxcvfSsxyRMnT9Estwu4LcO5/H7Qa+vCzSQRpN4xDmefihemFQVHLU5CDDwN7kFR
         SIbVI+E89/FSmN7Mk/F9caRihErcilGJHI5W/JAUkzi+8R9tw7VNe4agdpWREcHM9seu
         0vWa/or57LNnNZ1wMu4jPFBUi9p/bzNXgb08wqiOz+UkhqAO7P6OkHVlbMEgckms7zib
         H7Mg==
X-Forwarded-Encrypted: i=1; AJvYcCWjmZl6HzWdE+hP8nA4OKrv4dxHWuJsujtVEgn8vSxbPhyPoJ6bmjBXYumFr1FLFIPnCCrVWu3eZ6I1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyiz2n8+thMM7T/f5evpUE+uhHJRJ5VqJSLFaEo01MjbL/g3RLx
	taMr7XG4mnr58RgPGV8oI7M60y8N1uttqPqrpFVU1zjy81eNytfsSwSwGTyA3svyPVVzneBzdWw
	qhDQ3tExpjn1ZjBOBpn4VC3MhAOwI8NUWNKRPxtwxdkzVt37pe9bEAiMhOpDKGfel
X-Gm-Gg: AZuq6aKBmmGP2fBmmXjAKVI+lpdqa5Bv0A8N+2geQoe9UjVdABgOPEfa+ZQMeuCzFyq
	InRXtF/BAb91OxKGmQuvsRiqI/KBqXGiB3FXModSTzEJ5tT093YHMILvbETV6tSC38D32zWElsZ
	P9skYxHLc5LM5iYi9oc9YMDpTwee5Umd+aTX9JTpVsbOU7x2Rs4LZ0ZpGLGpP7Y+Bq/XVB2f1Sh
	LnOF2oDz40L7MMLqvO/D69rCj1UxFejPThSjwKleC6UykRc5Cg7SYBjkznw52tk+C/frkjbcOQv
	Hw1B7VcuzQiDqio/IQdHW0YwstkA+8izt5WjUUd6on4s39V0op4HuamZ4QEtfWN6EC9IlwN9tq7
	uronB5m5edCjoVCZMGzeudUK8HLLCTynks7o06WFN216xHdc6DrjK3b83k8/ZcsZYkleZqETQ9B
	XY/Ec=
X-Received: by 2002:a05:620a:1aaa:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8cb3315d2d5mr227273785a.9.1770893386490;
        Thu, 12 Feb 2026 02:49:46 -0800 (PST)
X-Received: by 2002:a05:620a:1aaa:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8cb3315d2d5mr227271785a.9.1770893385977;
        Thu, 12 Feb 2026 02:49:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ecadb27sm145536966b.63.2026.02.12.02.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 02:49:45 -0800 (PST)
Message-ID: <567d28df-485c-4dd6-bfc1-5c357da7dde7@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:49:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Add UART15
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>,
        Molly Sophia <mollysophia379@gmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20260211-sm8550-uart15-v2-1-bd23a0de18bc@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211-sm8550-uart15-v2-1-bd23a0de18bc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: a54lmNvNT-b9Zv4GxScXLaqUQLMw3n77
X-Proofpoint-GUID: a54lmNvNT-b9Zv4GxScXLaqUQLMw3n77
X-Authority-Analysis: v=2.4 cv=XvX3+FF9 c=1 sm=1 tr=0 ts=698db04b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=sifBqpcu5JwDvXSy-rMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4MCBTYWx0ZWRfXxPdN6uEQrQPV
 jvsvjKBW1dzU0HEnPw49ibGQ5zzodykwmHY9lfyw8hX6xLE3v79rnoiQRWIht0bWImUsst44K6Q
 gYmfKNzDxFcyAE73ckjSzhuLT9AiFg/qjiSlwJ9a4GLvrU/AIi6l7F6zsH13X2oVFOutaTpl7VR
 zYBQKo3MXWI/x9M8L3f12l8Sy3VjXS4GHSTHq7DvrvlZqbheQT1zMPQQwYZMVs2ugZyIn5Gvbvj
 qI9s/dGoD6rdAqhHeckhe2g5XVo+GcsiKExd5hmwiqtlv0l/UOu9xOQzx1wwy7rH0C/f8NEsZEs
 pNZcevpGPR7LajlCTlicqik/HTVlp6C2Cef2LZVEJcHKCWY8WjACvTeqvqrBSiKp89mes5OnrYt
 w+NYE8vKv2zEydTuG4tsHlWwEkCfo4BFrBnpaVVw3KpgnR3ehNU4Ofvl80Kp7ALHgo8BAmddZqO
 A4+uO04ekNisASPRZfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265016-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,89c000:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D659C12CB24
X-Rspamd-Action: no action

On 2/11/26 11:35 PM, Aaron Kling via B4 Relay wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> Add uart15 node for UART bus present on sm8550 SoC.
> 
> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> This patch was originally submitted as part of a series to support the
> AYN Odin 2 [0]. That series stalled, so submitting separately.
> 
> [0] https://lore.kernel.org/all/20240424-ayn-odin2-initial-v1-0-e0aa05c991fd@gmail.com/
> ---
> Changes in v2:
> - Use QCOM_ICC_TAG_ define in interconnect paths phandle third argument
> - Link to v1: https://lore.kernel.org/r/20260207-sm8550-uart15-v1-1-d8ccf746d102@gmail.com
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..a54f375f7f041a193a4396e4aa911abb42e3e6dc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1251,6 +1251,22 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
>  				#size-cells = <0>;
>  				status = "disabled";
>  			};
> +
> +			uart15: serial@89c000 {

This should be uart23 (see other nodes at this base addr have that index)

> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x89c000 0 0x4000>;

Please pad the address to 8 hex digits with leading zeroes

[...]
> +			qup_uart15_default: qup-uart15-default-state {

And let's also update the name here

Konrad

