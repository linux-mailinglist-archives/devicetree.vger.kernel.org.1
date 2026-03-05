Return-Path: <devicetree+bounces-271482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOT0EZtVqWng5gAAu9opvQ
	(envelope-from <devicetree+bounces-271482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:06:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBD320F5A8
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6EC33010491
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC88C37BE62;
	Thu,  5 Mar 2026 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EcmSfzwj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cJQpuFvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D2D37B03C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772704886; cv=none; b=m3DDfvoWvkjhMUOiDlml3A+Ryg5lUHl243SUqyD2Ce1+XS4EQGPRAaCjaEMUuT/GISFLRxyRrOn2CU0oECLXSVqS+XYvutlWQargvLTMKV5TyMj6SjbWeIHppRjjYSGIKdPr3EC7fiMR3JonGFmYObugvFTYv3/HrV+JeX2iIoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772704886; c=relaxed/simple;
	bh=wDLglFX9PA5cLOwAenyb1mY6R8BcHsFLh5owe0fFwrM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mn83xqgKMck2QQAHVwdaCd7Mp4NJ02dECASoXeoPF+bSsTJanKghS0l4iHWTeLkkq9Dy2EQK216zQZ2xfb0QYcwhTqjrRrdWTQeNwTFevAbaTEAAalhT3j0JqsdO8lg9Q7n1mh7im6jaxjO2PEbFGXOeWHhqCW/r5QdkXLSjnlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EcmSfzwj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cJQpuFvm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258lq9p1193272
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 10:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gHxqPY9FPzuJxFhy7ETC/+90zdEbUqq3ZKx36kD9wGI=; b=EcmSfzwjRjV3Sas2
	SkjRmkUDYgIihfasYP/Mja6WBtDmZjnUYeW2YxgNXjOS3V9yoy7Ie5T4wJU30/z5
	uckV7Wf8lPmlpFOJwP+jr6FmN7RBrUz8mwMlfc+tlpcMUNrLxPzukypOMLmbyv9a
	SC99ivvboChdVAghDfp2NkDY4q3XnK+1yDXRm6+QsWcNWZI2fuVntGLHl4r7EHty
	OASjdEalIqJ+dQDpF6RIquDIZ0Oqjm6Iu3A87CqHE0QCJTkwhpu06m4CTKafPbNd
	0Ub5pWSnutdkASWoigVnh7LapJyzmJwsuq3SC/WPnHwk704A6JZSM/2zRGm1zmCY
	wFaU2Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwgb1wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:01:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954b9b5da7so61649826d6.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772704884; x=1773309684; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gHxqPY9FPzuJxFhy7ETC/+90zdEbUqq3ZKx36kD9wGI=;
        b=cJQpuFvmJ4slW7iwnVjgxhW8D+NFkhS1Yp+AimT/0w0qvQrXrqLKY2vbG3yYxascds
         Xvp8H4bEAhhHNG1Z2x/JxZPfpxIYfmRlLtEbxKCmRw9cQkHpPJMIXGwqU/s1swhj7o29
         UrMNbYR+rIpJJdwZ7WsSfeHrFxkJ3nYPLEoiEA1c3/7xE6a5xwPJbKq9vlG93+wnOIEy
         hIwD4bZuUHw1jCrayu71ShO3FYDlCtf3o/M63m2F1zIwsNCx1bzxGi1y+f6/4jKJ5tOx
         rs3+UDhaFD8crfLwRF9OKpjEtDPmEd+YmtPdZqnD+5DApQva+LbGRyo2GUjArIE6QMb5
         einQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772704884; x=1773309684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gHxqPY9FPzuJxFhy7ETC/+90zdEbUqq3ZKx36kD9wGI=;
        b=dO88mHfvcUla+fnhiLooxgwT6+BPNLgtkvu3nbqc2qlnOHi9DHfgLB3RZ/Ipz34/Ig
         R3tkTxpCOaTR97UXWvBzDA3zeE4AxPS2XXiT45b2hRHr/TxWzMmrE9IWAbac+QAxq9qz
         NUrM83s9vIYpUfDfAFEAK04kHWWqXxMie+tXXK5qa9M4w4miFf7kVSvRoikuF8L7H7lB
         YGdlcnpq/tXOyhQ2f2l7LKqFIGwhghMzEybjPTVW3THqejFxXzuZhP7MhSGz6h4+PSE/
         j5l3n/SlazWd20w9YyzfXF9/uH9999wD5jAUT1IpV1Bsr9c4U1mpKzi0uhWePNBot1/p
         NsRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUISWe3RtSX7neOeX5I0jnUjZz64R7nI/wPhXcSNkEf1ky1L1JeI7LI2VU8RrUiR8JkmQdTGToQXMhh@vger.kernel.org
X-Gm-Message-State: AOJu0YxIFMZDBuLR1a+jEJxllezgGZBY9EoE0VTp9pjy3Pvq8VT8m5dx
	Z3TeIOZDsHDyz2oM76OqStPk7TaZMCoPDce/SZZwz9IW8CzqwvShPswbchiFZx2oV8jq72fJ0q5
	0xkHEBaQk/KvLP+RtELZ5JZdBfJIDdp8UQxeJ2ItFEPbKl2OBiVvtSCsLr02apQ4n
X-Gm-Gg: ATEYQzxdxaLWjzImdkqhNxVb2OLu89TuPv+fI0rknvaSVyuK5tdSfwGwUX+pvcZHeLh
	6lOsMEdBI4LtBXXd6khn2S4tE2w69baLC/ap+Xa9i48wxImP+QwvH14chfO1YaxBDCp0/SCTTx1
	MRokPb0L4BcjEUvqL9601lmzGhX3jT8Aj/5dm1sVFtQf8/ETOnOP3rrCIvmzjcWaSfCJoT8v+zT
	xVhUlIMr8JVjcAC3k1Uzm0JKHcT4cNVxvHxrwBAzR5oeZc0bRXXW8TxO2Wv39vE6lxgdWn80JEq
	VMRWbejOOUATuViIRjAm/DQdyHdeLfmXqK+piP/0kDORBVC8/ozWDOFTf3rWFIIwboSyl13H3/T
	vj2119TC395j261nncZkJB0vsB8HiQrGmal8CjR2N2mSrLxoM/mZFh5RSC0hGIJ3t58BRTPAc0x
	tnvYY=
X-Received: by 2002:a05:6214:6004:b0:89a:b62:301c with SMTP id 6a1803df08f44-89a199a57d3mr50520356d6.1.1772704884057;
        Thu, 05 Mar 2026 02:01:24 -0800 (PST)
X-Received: by 2002:a05:6214:6004:b0:89a:b62:301c with SMTP id 6a1803df08f44-89a199a57d3mr50520036d6.1.1772704883594;
        Thu, 05 Mar 2026 02:01:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b941461b52esm37668466b.29.2026.03.05.02.01.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 02:01:22 -0800 (PST)
Message-ID: <b63a9bde-c2e7-4718-878b-e4161eecdc0c@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 11:01:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcs6490-rubikpi3: Add audio support
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Daniel Drake <drake@endlessm.com>,
        Katsuhiro Suzuki <katsuhiro@katsuster.net>,
        Matteo Martelli <matteomartelli3@gmail.com>,
        Binbin Zhou <zhoubinbin@loongson.cn>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Srinivas Kandagatla <srini@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Roger Shimizu <rosh@debian.org>
References: <20260305-rubikpi-next-20260304-v1-0-327595a4528a@thundersoft.com>
 <20260305-rubikpi-next-20260304-v1-6-327595a4528a@thundersoft.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305-rubikpi-next-20260304-v1-6-327595a4528a@thundersoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a95474 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=Wdb1h0LgAAAA:8 a=2bRy7qri546BrDWxAXsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-GUID: 1k7G969pXhQPPUZh4zt47EPEuzNTD5VX
X-Proofpoint-ORIG-GUID: 1k7G969pXhQPPUZh4zt47EPEuzNTD5VX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA4MCBTYWx0ZWRfX0g+DbMBn9oCs
 25VU0RIrGFGJJ5fZzo8qirSiYxGHQ9bTvJHTazjY9Bj9kX1DfvW5ZgOGrSlXY0DlXg1mziFgAf0
 VO9vg9FL9fghhdGn6Jrs/ExnP7VgtGpfGk/ux/BFo8KKXzgu8BEZsag1pJmekwTPEdpgX4qBwkL
 0au/OhRKcKZlF6qg5nro4hUUwvBBbHNbRfd75mJU8RvvlQsO+g5fkdpUOjrUcxzvyt4WAukg9bR
 O1rXKe/0+tndayQN3tfMG0pqok5Ah1+5xexpJCBhCxNkyM2m9Z17ydxR3MsISjHdMjSoeytZxuO
 0cth+SES1EKbWfjTqvtsQY173/A7+wIqrv3cNNtkOl9gdLTYjzqa1VY1hsJhORQvlzBOsTDWFIb
 DnUKJmnSIJyCiy64z6sD/aS64/Y6Jy8+dmRuLd+M3nVG1i8frTE+ovWwXS/kmExpFf7UOtNMYbb
 jTI7dNnfaBeivgcQaiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050080
X-Rspamd-Queue-Id: DCBD320F5A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271482-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[thundersoft.com,gmail.com,kernel.org,endlessm.com,katsuster.net,loongson.cn,perex.cz,suse.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 6:47 AM, Hongyang Zhao wrote:
> Add audio support for the Thundercomm RubikPi3 board:
> - Enable AudioReach via qcs6490-audioreach.dtsi
> - Add ES8316 codec on I2C0 with MCLK from LPASS PRM and jack detection
> - Add fixed 3.3V regulator for ES8316 power supply
> - Add MI2S playback/capture dai-links for ES8316
> - Add HDMI audio via LT9611 bridge on quaternary MI2S
> - Add SPDIF TX/RX on tertiary MI2S exposed at the board 40‑pin header
> - Add LPASS pin configurations for quaternary MI2S and LPI I2S1
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> ---

[...]

> +	spdif_tx: spdif-tx {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	spdif_rx: spdif-rx {

'r' < 't', please swap them

[...]

> +	mi2s-playback-dai-link {
> +		link-name = "MI2S-LPAIF-RX-PRIMARY";
> +		cpu {
> +			sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
> +		};
> +		codec {
> +			sound-dai = <&es8316>;
> +		};

'co'dec < 'cp'u, please reshuffle

and leave a \n between the property (link-name) and the following subnode
as well as between the individual subnodes (but not after the last one)

[...]

> +&lpass_tlmm {
> +	lpass_qua_mi2s_sclk: qua-mi2s-sclk-state {
> +		pins = "gpio0";
> +		function = "qua_mi2s_sclk";
> +		drive-strength = <8>;
> +		bias-disable;
> +		output-high;
> +	};
> +
> +	lpass_qua_mi2s_ws: qua-mi2s-ws-state {
> +		pins = "gpio1";
> +		function = "qua_mi2s_ws";
> +		drive-strength = <8>;
> +		output-high;
> +	};
> +
> +	lpass_qua_mi2s_data0: qua-mi2s-data0-state {
> +		pins = "gpio2";
> +		function = "qua_mi2s_data";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	lpass_qua_mi2s_data1: qua-mi2s-data1-state {
> +		pins = "gpio3";
> +		function = "qua_mi2s_data";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};

Because they have identical properties, you can squash GPIOs 2-4 into
'lpass_qua_mi2s_data' with:

gpios = "gpio2", "gpio3", "gpio4";

Konrad

