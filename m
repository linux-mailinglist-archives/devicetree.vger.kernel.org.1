Return-Path: <devicetree+bounces-254584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A3846D1996E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CCAF301E17D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8615829E117;
	Tue, 13 Jan 2026 14:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bjgLqBxs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WhSX90/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3682F25A2DE
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315395; cv=none; b=dWL3RwYosLR8KHpBoxUr62jXAyv5bs5H4iRADwnv3gAoabCd47Ns3PPtfiiHWCHJzQPLWGs09bch8X+v9tMK4n7+ymnTL69sfkLh83CsZZyjK0dOPq+UGZ3gBNF7N6XNsSWJAKOWpJwd/TYBDDZAnNDF7yCro3DmMcDoTWApPDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315395; c=relaxed/simple;
	bh=1Ll6KWp8e17v8hlRj500h85dY/6mrh/mdfWoU/sDbkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M4JzMKbCG6H6xyGTfO0SqSK4H15gwImRoAIZc1SKYgelj7sJb6498z1dzo3XzdiK4ZI/CVMpQH1hsV/mTCfKXcSwLhiVHQTDfSJMlSFA0VwxwfdpUzogDWO22hsWAOsc7ydMP9QFP/ICKKuiPorkjjlr/8UU4BC4oOcERIFWIxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bjgLqBxs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WhSX90/u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCEOI52865836
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:43:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ryT2EboSDI7ZVh0uwC1hy4z+jFQ8M5WPkhn0EZ/RBo=; b=bjgLqBxsVZKM6HSw
	dBPwGg7cfuHmFJr1Txn0mZEpCLTtoV7K/qaqDHLUgXr7FkZSMIPWKiL9jlR6x/QA
	OprLN3NmGLkxa1XSTWM+FtlqI6FNWsG0fv+sze2miD9+M03ZB0IZhTFRXW+96AXj
	gn7DaqRUf9Aea/fdUdmochUHxDvvIH0L3mhGaBFYa8K//OQuE0leD4akYG1NpmNu
	9hNPm7BMR1ri21djOm6NfP2Nhb1q2bOrBP2QObqmKiucyyBzV+PVAeIYmaKf0oT4
	XvVEwiN209w7ySrrbGtuYQ6E3WSzDs7PENmSv9B934/sMK6gObvJmG5NMkaOlKxH
	NNzAew==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjh9ruv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:43:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bedacab1e0so217752585a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768315392; x=1768920192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ryT2EboSDI7ZVh0uwC1hy4z+jFQ8M5WPkhn0EZ/RBo=;
        b=WhSX90/u3Pn3ySHfHfcERYVVF+rTfNvlZx0wAO4lK6s9ZyLMl55rdjxYQYxo5Jx3Z4
         maZTd5pXKcs/jpWDT+m5PV/rfYzcov9wQSSgs61uCQNmH9JTTY/vhzuJC3pYlzqpmpZd
         tJEuZfHveHyPtwbo6HVhVD4URIPgEFJCm7d5Yt67O73gf+Dm3SZ80fToMaSQmkjBNMU9
         mq9g0Yf9BLzQJWs961pf8DpGDhh7BPvdevtgFAsdo0IhdHpbPXeYngH7UnDQzCMOCMQw
         cb2X4JUL2pUgB0eKsql/dl5ew310nArKoL4XHO/s3gjTIVl0RyDmAFfNTV/kR6mx205N
         ntTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768315392; x=1768920192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ryT2EboSDI7ZVh0uwC1hy4z+jFQ8M5WPkhn0EZ/RBo=;
        b=DVnmwYhQN4/Hnkzs40ktNbkf0HUu3DbdVZUxzk8xiQncBJVMR1gLjPvKbhS3dMgg/d
         lFK8wFi+X00DFGlE24z8WO3oshaFPAFjTxKEvMrnKp+RnYKcExU3s6Kfze/rwNQXQ0ms
         jFfNcjFeL48zANGGkx1ZuGDycN3jmWrS2FfFrZUL642PkO7HbNTlfusGH470gTWziulK
         BsnfyTgJpqlP8Wtdo50tqZj7/Ts0D+1ZRRbwSFMsjKrfIcH3nF0LVGnnolilc8rdB02G
         l4sKFmVYqWOTOcIisPtOeuXHpkHClvZXWJt6fphqXlLNtmZHsoUevlMKFOFFOVCruvb3
         5PAg==
X-Forwarded-Encrypted: i=1; AJvYcCU5qJ/2TzBqK8ALwWap2+GqfeLgVY/jzR6ij+Hm4x/BtkwPBV/4xB+/oaUd4p8fnv9HWhXUG1QemJYi@vger.kernel.org
X-Gm-Message-State: AOJu0YwoKy+IUopadd1yMcVBGTAMm1Ec8hThYJVRf+J7kaWtBXBE7qKX
	KJVbR8Hb6yEuqEpa+RWcV2hvEfa9ozoZ7mvAf6MNeAW0/6XzxsamRjAy8BSxeUpePrBCcc67QdS
	716CmWcaWRgBo2fMzfJxBMf9zBjZEnz6CsepsSwL8XeYHROWQvmnV4xsbf1xI+buD
X-Gm-Gg: AY/fxX6I46ZSjHzUmzvZHl65aDF7D9eDqowQ/E7hmPBLKhMVsjEEkxgfiSMRZKYD/7T
	8QaSh4tItT6ii2KBzsEr2ULLI1xlP8x/BvSpkZJD/QpjNrzIZlAlPmxRhkCtNH4yzcTEaLkDf29
	VMiebpYyaEfsOqzft7mxJGJaOm+Dj52agAhH8IER1qiqs4ZYLLomoxksuOqV5yydaPauMLCeX0f
	Odo0JF3KrhDXq8NVbOvmigV6uEIIE5RSUtNxokoooTW/7WRJgvIUc9GmP1Y4BoZcV49UN8nBUMM
	1zfNeIdZ6+qUw0OqvwI4KScoG6JWGudkzOt+3VUZFCIrPhHr0J403U5ybodMZiLfY9gmuDDTnl0
	qSyoLlC09VOjPSMfp4b7rOt9ud3sOLd0ua2KlLxaeh1lDVXyKc0mfZE2J1QZaHBZm/M0=
X-Received: by 2002:a05:620a:2945:b0:8c5:2ce6:daf with SMTP id af79cd13be357-8c52ce612c8mr86103385a.7.1768315392379;
        Tue, 13 Jan 2026 06:43:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGltXtRv68anWfC0zzbMMDeKSHJfbTZqyC+/myOA9/x/+ZonEcMc4b73lsKpeSp0EEKyvtV7A==
X-Received: by 2002:a05:620a:2945:b0:8c5:2ce6:daf with SMTP id af79cd13be357-8c52ce612c8mr86099285a.7.1768315391608;
        Tue, 13 Jan 2026 06:43:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a56c547sm2237049566b.69.2026.01.13.06.43.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:43:11 -0800 (PST)
Message-ID: <7c225148-63de-4264-a59d-c14237aef455@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:43:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: x1p42100-lenovo-thinkbook-16:
 add hdmi bridge with enable pin
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>
References: <20260103-tb16-hdmi-v2-0-92b0930fa82e@oldschoolsolutions.biz>
 <20260103-tb16-hdmi-v2-2-92b0930fa82e@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260103-tb16-hdmi-v2-2-92b0930fa82e@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNCBTYWx0ZWRfXxoZqRdrCXMo4
 /nzAOigvBWhispR/SzWMrGb6IcVSnaNNXHwhaVDkYSpAsnurOZmPxA7YDJ6jtKZ7fle/ih6p8OB
 ITh0lFLMZ8ETXjcKj6CEcHLYGbMTJFGi0wd17oSIU0HeN2DBiAiM7gho3oAGAQb+0OWzeJwfIdv
 TgT5tjcOtQJEC6+VliCJUc8zShlrgD13V8KKsQjWqQ08QtADEek0DehS6ubWbOTBxzaa0p1q4h3
 8+BZBk68p5b2cN3DQRXRneyGbXRuRkI0rC0/Yp/w0GA5jF2Mot39m5543/ZLzCg270JcX4D36jn
 K7t44RLdwSqp4db+P265bUBlTi0E16xjdiyDOH/hfTkKVcISuvhVRotkrCoj+D6SlwZRIo3RRzw
 Np2E3dyhPsrTEVoqerFNDh2UjpOh9eUD9s5YUK6fp2oFXmxNWsO8iC5DJ86sZ550bLnDHBk0e7r
 lAtptbijRgoDUVPQ4OA==
X-Proofpoint-GUID: ANFqf7M73zL72A8Krdd2XlGF2vZDGxsU
X-Proofpoint-ORIG-GUID: ANFqf7M73zL72A8Krdd2XlGF2vZDGxsU
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=69665a01 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=fxpkFqXb0DSoSc4RkP0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130124

On 1/3/26 10:00 AM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Add TLMM 120 for hdmi bridge enable.
> In general this is the same setup as on the T14s. Since its using simple-bridge
> and also is Lenovo, we also use the same realtek,rtd2171 compatible.
> The real chip identity is not known yet. The bridge is wired with un-swapped
> lanes, though.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

[...]

>  .../boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts | 88 ++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> index b4a40904f0a01b36ff2fc72e801a5fe7d6971e2a..1e5eb8c5dc988c3c4655f0019e53fc19e0884e4e 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> @@ -78,6 +78,47 @@ camera {
>  		vdd-supply = <&vreg_cam_5p0>;
>  	};
>  
> +	hdmi-bridge {
> +		compatible = "realtek,rtd2171";

Since we're not sure, a comment to draw attention to it would be neat

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


