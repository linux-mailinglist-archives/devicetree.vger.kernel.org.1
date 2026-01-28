Return-Path: <devicetree+bounces-260351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD9ZM+D0eWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:37:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B60A08E2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FF863067B3A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D112634DCF2;
	Wed, 28 Jan 2026 11:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bfVknimV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HcdjnjUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3FE34FF5D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599718; cv=none; b=b1JtQiFQqQuGWChNmym28Fk3piiUsxMKXyZj1lUUrGbbkfSgFEOgK7Sy20UV68uVSPCXIae0qPtSMjUoyFZPegBo1ZquWYgq47WFdAOQhOZ4Ox98qkUlmtchvGN+4w9v4CKNUe2d7QpUdHljZCDgf0gwXmgp3cpTDHIU9yQpevk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599718; c=relaxed/simple;
	bh=nhpjmoAhgccRSF4BKQdoU7iV6n8xBXVG01ThXHYcEK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SpRKX3YrZSSCh3Lx73V6MJD+LkNBf3Hhz/zfe78uL73cPxisbMyL1dW7OXfSgYMOfxT53QWjBCGtE85UD0AUvPML12zUf6x8bl+8/xvGqnPl55/H5ZX+G+gkIqXgqYl6Hws2jS2oT471LdBKKhkd26bKuj41hokfK3Nr4l+OqTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bfVknimV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HcdjnjUq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92XRA4008468
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:28:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZtYBFm1JyhtrBw7WGfZCfQ5s667cCLosdcveYXtoEVo=; b=bfVknimVzkQov3Ez
	9Rh2291VS9pk56YvLCDxQR6AQ4V9Ztp5Tli98krLvdx3l7PPhG1Z5WQTPpbh5Jds
	SCm3FpoSPjCOdDDBUqk7U+8aCi7Cp4HgV04iXO+eCEXFhZ+rzabRPYAFNcNFf4kJ
	NVladjLQ4Dax50+6KCpyO8wQnPmFJvNDDYIwqvK9x6+7wofF4iBaFKJFIhtpl9W6
	rFd0b3DiAdtRLHxfbP2R5GskcR/GxpiJ9I8FoiB9SgknGfc8fbWOoI8/aBhird/A
	dfDOp6/Z7x+NSLWMjwP4nxGt0TfpyMCVWHBAXeorDufp0AX/ubbrYQNWSs/g9JZZ
	m+s6KA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1jx38ve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:28:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c522c44febso102895585a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769599715; x=1770204515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZtYBFm1JyhtrBw7WGfZCfQ5s667cCLosdcveYXtoEVo=;
        b=HcdjnjUqV1VcaDaJcHIGp3bVxPdUKThIdfBUUFqOs+Qy65Sj3M/g38Kkp7xCyhQsqE
         p9WBRbEFjP9ArEXkD4gvoh3g7+6FjSxCC7PGGCmMLY6f2fyZn8wF09+mC4fwryteU+TG
         KkM6bcD7hvw36Sr5J2xRO0okIe5a8KwO3SfXneeFpEkPPqyJl/CErroTpGCvzVgN8YmD
         rrIj0QRz1PN8oSCApYogmdww9o+fxGyIQ8e9CqrMCtdT6QJhWx3WSaEJtoTK4VQQ9zWk
         Yfyrd/vPzERn0vAAQ37BtJd21NKHjmJmzSQWY3SydZHhXsMDdfrf3GQTDIacGGdqFT3z
         Iqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599715; x=1770204515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZtYBFm1JyhtrBw7WGfZCfQ5s667cCLosdcveYXtoEVo=;
        b=G+xyCwSM9lbbK2uHMqI/okaaiCJQZr1EkEzouwt2nYGlfIt/qLnozHxVX76FYXEN5C
         lxZflGelh8n2onu5lu9RrMf+ciux9wLsszCFLcD4e6S5I4UsnOySepfIt7aXrK1SP0zS
         55OzapuxiXVtfu9SJdDfubYVH/tsyI5JIWY3BmNMwPmS6KPcjPR2rydYZC93ty9/2zVx
         lOeagnmnjKWiw+mQPeVIbYU4wvUJONDlt52Sqt3tvM8AJplDiWbSngvTYdmxNfQAwOer
         VWUFLm/iBB96Hz23hiEi5lRavZcorKhmpdC0Sx6qZZ7WvWnOAh5p0Dx+ZWEfjapfaBjf
         eopQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5sgQXVEy7SVNBfc3MgarP26CrSXp2NO3E2OGU0hCsJQqrSuQ7gJrtRhmjx6ob1tQtDDYOwYuwU7N/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8n602yhK5jhWptMS7CP0SK+yXPCuIQuoA5Hbr7gHfP/DsIg5G
	trOUZPsM4YIGTduSWGmHDEY0xs+vphnLuUyEHl3D2fSX6SPAWNNR2iTeNQsjaBeRMMnzfRUhPYj
	ivPZYVZa2zT/vxAlahCEFH4H3jT5urfgHBkBoIIFF8Ww2m3bBbTRw9gAEe3vTtrXb
X-Gm-Gg: AZuq6aLPPIH5/PA6R7cOTxN5W45SmnFDgrcNS/lZ8vohSns8vfFlbray0KXKFLr0XhW
	i76rvsnWQO1MT7olGNaVd9cyuHwXoTy9c2w5X39mD5wVUTqet2ZO8fyri84ZEc66lpQ1I6QwAzv
	thc1DqnUYeGaYfZMInXEoxRWCylzTOVw6lS5o/Ow2Qnjyh1+p2RZoljP+/4lG5uvqA2r3sir9QD
	2bpN7x6CAWtgMEhVLZZ76JEatCH/2/qnyWwRTPaSy9nXjs4W8c/zPXtNFUqdQQ/pUmzq4RBK0rB
	jybUZGqam4HFDirB/pSyAvg1veCKTQqVdpTgeV1xGbkauZOiIWPIQ90lBlJIRpQrEhmKNOZ2Vvj
	3oibd22c6Iqj/4/tvNG7fdg7Kxi7jN9tELowk5iOvDvo0Z2ZntKo05AdV0TbS+8Faang=
X-Received: by 2002:a05:620a:4508:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c714b440e8mr135006985a.2.1769599714909;
        Wed, 28 Jan 2026 03:28:34 -0800 (PST)
X-Received: by 2002:a05:620a:4508:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c714b440e8mr135003985a.2.1769599714454;
        Wed, 28 Jan 2026 03:28:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf183f36sm118297866b.44.2026.01.28.03.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 03:28:33 -0800 (PST)
Message-ID: <ee5ad7f5-428f-4948-9892-d2c598f4d0d9@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 12:28:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/10] arm64: dts: qcom: kaanapali-mtp: Add audio
 support (WSA8845, WCD9395, DMIC)
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-8-02723207a450@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-8-02723207a450@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: bmbiDN0BpDWMhZ9af93t5tftnNxDVdFl
X-Authority-Analysis: v=2.4 cv=duPWylg4 c=1 sm=1 tr=0 ts=6979f2e3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Aa1P8z8eOfh78w_NPE8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA5NCBTYWx0ZWRfX5XvqFCAVjyp6
 mg342eZZSVV6M8rcBc47vWIJ0+GWHNz0drsaJb1DowzatHZ+FaWd46x+umB2c6WtZwIaDUVt+Kc
 LOvWKnisZpfB2Ja/CWWLE66LDRjeq4syV5FLmt1sh0ksLcci18iFHRKB1x7BddQSFmtnjSaE/9p
 htJJcs6v0BmpjCyd1NBXtvACPhWFt8UzAJ74/66s1tzTe/Xtc9M0IXF9Ur1ZudGixZVxp1xG3zT
 XWoN+a0WkueCWrSAIF2hg+5mr7QSTNjKWJLggQB6Jmr96Y+PSOuM0MyKdQPsVl6ANYmh0BEatp3
 25FU9ZiSX0oQJ42l7xPdDzpoEdFgVB4k3LAfpNIISNuguvmfukhmcGfQ27ap96q4S0rRSaO0pBn
 K2gDreTkhosjwTU72KrLqEy1NP2d2ihCY4vnq/ELx695EeqvcvupKXmGsblzRP5rEuUyvHK60Ck
 T43idOodw9geVPDC6aw==
X-Proofpoint-GUID: bmbiDN0BpDWMhZ9af93t5tftnNxDVdFl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260351-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31B60A08E2
X-Rspamd-Action: no action

On 1/27/26 9:34 AM, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Add support for audio on the Kaanapali MTP platform by introducing device
> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
> microphone for capture, and sound card routing. The WCD9395 codec is add
> to supply MIC-BIAS, for enabling onboard microphone capture.
> 
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>  1 file changed, 226 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> index 3544f744fd1d..7dfc2a81637c 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> @@ -52,6 +52,115 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
>  			clock-div = <2>;
>  		};
>  	};
> +
> +	sound {
> +		compatible = "qcom,kaanapali-sndcard", "qcom,sm8450-sndcard";
> +		model = "Kaanapali-MTP";
> +
> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
> +				"SpkrRight IN", "WSA_SPK2 OUT",
> +				"IN1_HPHL", "HPHL_OUT",
> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC2", "MIC BIAS2",
> +				"VA DMIC0", "MIC BIAS1",
> +				"VA DMIC1", "MIC BIAS1",
> +				"VA DMIC2", "MIC BIAS3",
> +				"VA DMIC3", "MIC BIAS3",
> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +		wcd-playback-dai-link {
> +			link-name = "WCD Playback";
> +
> +			codec {
> +				sound-dai = <&wcd939x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
> +			};
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		wcd-capture-dai-link {

ideally wcd-'c'apture < wcd-'p'layback

but I have no other comments

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

