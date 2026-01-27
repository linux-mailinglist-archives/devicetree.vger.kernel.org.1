Return-Path: <devicetree+bounces-259863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC/mOr+peGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:04:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D7293FC0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C8BC301841B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD51D3101D4;
	Tue, 27 Jan 2026 12:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQNZz4Ep";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HjMrQmet"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9A430F541
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515451; cv=none; b=nnRFiM+v/WUZvYue7iMqvR057yZbmhEmsD0eZ7j/MsNwdiMErYvD/37XLmXzeD34EvAWWamJuUxk91MocwpgxRO30UdHIfOGb04oRCwcl1F8J6wpTi8C1XCKltwBQN2JaqLBxkEDsMxPiXqfsruFw2vbcHYMkMH5m8cWmcbxe9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515451; c=relaxed/simple;
	bh=DcI/jI/4iE19cpkE7eoNoy+0lbMB00f9lcp4pzRZop4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=evMGiYpuFdCiiS86mL3Ipvn3mY8C+JzNc/9U2nGpBHYVoTHeejQ0ixJ701pklrlLYLgYo84OAcB/x/PEpGwWNPasYlAypb34rNrc2NsHC8hLVbGvEgCnCMURgA/AWEpmKHl80CQXSzbEc61AlquPdYWhnH94SZrnFL6Dz9XSx3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQNZz4Ep; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HjMrQmet; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RBwokn1136098
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:04:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D4tq4up+IfT/2cgrOVF3wgTzYful0xQAMJs/XlKjbaA=; b=DQNZz4EpYMMC1mk7
	0Rc9oGp/KRTcP3mWqqNRq3RoWkJazrZ35tay11qnUTmQ0lMspnc5qya5w7IUsXJT
	WLayr76aJx6E3MhXcMYzLkFNw/RnRD4+Qdm42pRLsH0Ud7bw/D118kQCppfBX81G
	t4ObRY6iMvYnwE7imdMQPUyGtb6GeDd+SljsN/LcGmNktueGdJklD44h9wSOgLVn
	t0nePHiRL+F8j1ctjQBN7gmDpG9GGJTeuRDKt/kmG6/Kp2fqfOBXA2j6/f3nEt7K
	Tz+Z8SfNfZb0EfBJqBAtEN9pLPMQNub6qNnAsNCZo87KTNEJJ/DJLI8bTaKvdmrD
	2AdzXA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjegqtu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:04:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-501506ff58fso16758191cf.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769515448; x=1770120248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D4tq4up+IfT/2cgrOVF3wgTzYful0xQAMJs/XlKjbaA=;
        b=HjMrQmetF8b1i8bKioQOHi7WbjzUQ/PK+eIcx36MMVpE4L+iNJi1W5Jepcmh08ktl+
         RS6qDpkYFrTrgkVQdhFTYPu7aXKjCWH1SsRLV8zYwm1597SReoky9evs25517zQRE9b6
         UY0+PMN+cCrwOvuhp13oGiaiiMEb1uo7Vi1QKMyg0ZVS5aYSg18mv7zHCIVtO8RGuw22
         XztkQqsE59qfeGoNJN9UL22McIznYNQ7QIoCGzyqirSiE4pDJhQtBOWC0d78PPGBxy6b
         zNYN/47qIk0ldTVuiOTti6pQqncMZYSSAS6G8BrKs9MSRpgvlxxQI3k+qDlhMMhxxHDP
         0SOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515448; x=1770120248;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D4tq4up+IfT/2cgrOVF3wgTzYful0xQAMJs/XlKjbaA=;
        b=i/tw/tcz6sF62tM9OnnEJSoIzSGsJWEwiqZQqyAR1b/YamnUr1TBD/KlbWb+spndmW
         5eV4kVOE5h03KK6gjawUht91/Tedq+kl91nFK8U4B3n2zbWKLuSU87sCSdsBxMebOnMA
         hPRhGORdxM/lLRBdPONpytmJPUW/31tPQLCZwvBhfLxtQUcE45YdHuzPAXiTeokXRtPS
         mAWOGQ/hxjP5RRPNKPqwK3B9hioa8Vp+lLZdNjQzQzK/s/3kdBPiK1jYvlEWHdLRpaWR
         6hm6yZ32foAWt/3IfNIHSvBKPkK90PN/jYWdmYFltkceyr49GeDg4Cyq7kUFQnhdjKY3
         ZjRg==
X-Forwarded-Encrypted: i=1; AJvYcCXO/l0ggCyG1XCvnE9cZ8E9wnl8prGwwrZft41Uo8wL5N3SiMf7lakfxRmVl0suItSRzhrPtUCKSY+4@vger.kernel.org
X-Gm-Message-State: AOJu0YyXIA8k/PIP8BGEnm4P5NNlkT7KVnzLe2DiDXhdq1DLLFyESiyz
	bfWEithU1YqZeoP+H2rmQrLX+oFuQu5ubdVse7aEaW3pfBmUI+pZFiYWYHk5BJLWGht/JpfypRv
	tF4NJl2HFzaE48wFYfmpc+edx27H6SWkltR6FJqsPD409KrqJLc2+EbljpNpi0wgk
X-Gm-Gg: AZuq6aLHknXyhOKVNBS9mViqCiD5WT9y9/vWIFFiw37LV1a2WXEiNJAfXjEQp9RzpRx
	TqEVI20URCw+moikDTpfFkRp7W4QIYj2AlUNmA9qMZ6Dyph/CL2u1pa8LyNQXAf1CLTacYxKoib
	Cd2mV36aQ4eTx+Gpiyn5vDKs4MORMGkgRUUQ+0QuO+3jvtJ0kAiVoWVInrvQBz0IRW5+hYuhNyN
	93BjU6vRJucIhfjeUGrr+NeRlALAWpCA+OJ2+A9DvAjgurqkaldWPWP3PUInEI5FCKVohIyFQVk
	t3vl0nrqqdLmn1P0xveOtXzhGLw/Wv9ASsvwQgJVEpSjliyKhsbZ7tq9XtkM8iiOnGuVnNN2Snr
	lQPhw5pWGYmIbfcEHRvGfoTvK2V1Ea3P3qI7i6RYRuRBL8HYbIIcj32fNUy/oaCLdXxo=
X-Received: by 2002:a05:622a:44:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-5032f74b06emr10916631cf.1.1769515448401;
        Tue, 27 Jan 2026 04:04:08 -0800 (PST)
X-Received: by 2002:a05:622a:44:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-5032f74b06emr10916171cf.1.1769515447976;
        Tue, 27 Jan 2026 04:04:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b92b5efsm6652408a12.18.2026.01.27.04.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:04:07 -0800 (PST)
Message-ID: <ad5ce24d-4847-4363-b8a9-69bcd2e4695e@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 13:04:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: talos: add ETR device
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5OCBTYWx0ZWRfXyO5LFLJnEQLM
 KkSJAzlvGk5T4P4wksTxWvIXl26J0ZoIoABQXQqfnFv9PpJlqxF2d6WwxmaauCdTodnFtCYc0Yq
 XnA5JmZ0rK6HEQFU6rt0HdsxrI/S1dbZcOKfaDOm9Hqd5r7y/gsFaLd6BlTkTNCyroBYmLg+Oge
 1ABZskTbEqlmFlfkOnVzwh62RXI5iL86AQu+q+eyaFcXcovazWb1RU6WPZRpJa+h4m3I7OB+49a
 ksS2AW0XA7n00eGhY1ZIBlGT7tcHJ1kKZ0S5J2nD6JGldPogPTuhMYsKxlAbA5LAh2V1bq727JJ
 pNNO2XQvqKzbH55KXQaFgwusRSWo5PDZEuQJtHY7t/L9aqQyfRYDSQrCB/1qTjig/WsWnSa6FF/
 VRemiGscEnawpXaNPMBYdkLWWTnQWULhtuYy68PWZiSFXQdt6LxmOXcTNGlJZYSnYZKKELWQIIm
 ckDRVWNu3Ay10eAdT2g==
X-Authority-Analysis: v=2.4 cv=Qelrf8bv c=1 sm=1 tr=0 ts=6978a9b9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FVcTPOSHcKpnnfN3-twA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: s6ZzE85_7EooV8OZPbGelMcEweaSocnX
X-Proofpoint-GUID: s6ZzE85_7EooV8OZPbGelMcEweaSocnX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259863-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.92.73.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 65D7293FC0
X-Rspamd-Action: no action

On 1/23/26 8:10 AM, Jie Gan wrote:
> Add the TMC ETR device to store collected trace data in DDR memory.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 75716b4a58d6..3b081ce9d202 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -2253,6 +2253,14 @@ out-ports {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  
> +				port@0 {
> +					reg = <0>;
> +
> +					replicator0_out0: endpoint {
> +						remote-endpoint = <&tmc_etr_in>;
> +					};
> +				};
> +
>  				port@1 {
>  					reg = <1>;
>  
> @@ -2287,6 +2295,25 @@ tmc_etf_out: endpoint {
>  			};
>  		};
>  
> +		tmc_etr: tmc@6048000 {

This label is unused, please remove it

Otherwise lgtm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

