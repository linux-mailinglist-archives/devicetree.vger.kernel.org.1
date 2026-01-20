Return-Path: <devicetree+bounces-257312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALdtCHRPcGlvXQAAu9opvQ
	(envelope-from <devicetree+bounces-257312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:00:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4D250BDD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 362245E7811
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2895D40FDA3;
	Tue, 20 Jan 2026 11:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SBCdgDDR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cCbCIzkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795B93F23CF
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768906847; cv=none; b=d1/j9rkjRk9/SZHeDThbJLcyj/cIO9p95ceroBaR6/FENdAFc+d1MzCToSZZ9Mde0EBl+C/Es0VF9A8JMotw2kRrNt+x7ydFJumkaDPAivoE78qjDZhZseZWgGV5G/Bjgu/rzKjyycYX6jNSk3+GL6ERHRzEc4/qD5Ac5vz6qSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768906847; c=relaxed/simple;
	bh=O46rSJlea/SajDU0CJ0HrX7k9pM7TZlXxm7PxEt0hAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PlTjmIQbNPf6j8ph3evDDb6iVK5Fi4iuAI6FcLNFy3vqFvmXiUHH4Kw0+dGRRcbGTi9spc1z6yqZ1IDkNrRJd9RRAj/f9iZ3rR3nIKueGSsBzPaisgm8brnrsFG5svsR8axCh+vwqk8icehfuYwUkfV4WrynCe7xlcr00PlwDtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SBCdgDDR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cCbCIzkg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KB01qj3252367
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uckr27RLbm3h8w/yqL5p6ZXMdJeaPZyAz9adDw0oykc=; b=SBCdgDDRB7ddlvY9
	R1a0+xdtP5OD2wPh6jVv8cHBQqhKdjp2Q7CgdLd2vA90FnlyZ+DpBablDPU7Ykma
	fP/VHhPzcQqeQYHOCjsxpylok0iEbxQ2J/0h/EwNjoxTFOSAQsCo8eWrJlrcpY5B
	nU533isvtDc37zJcCCNJSuVTRNju3+0CGCYEP3Fith6zyLroY+x/nw81tZdobOit
	23qW5EV3UvH7iOqSNusRExhhjiAlEWqjbaMo1ySeg9l/cHNyQ8ms8veAdlVtEG/i
	Az2385lYgPa+o52q2oCngr3i6sz8ixTCz1377k5Dn2OZ9W+nXMDywNH2ZpCQrFoj
	raYAQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt27ah7up-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:00:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c533f07450so115347985a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768906843; x=1769511643; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uckr27RLbm3h8w/yqL5p6ZXMdJeaPZyAz9adDw0oykc=;
        b=cCbCIzkgndjIhX1NEhWEBjNe+WmbWu2kAH/NwIF6m+JsfduMdvPUn0pOKawXFZ0sYn
         /PttCzI4SMeNFR5wQCihwsTuLPDgSVOog7JtlZHtgKCyqHMRIfFfYg9MG/bMWbEBFUx+
         qFgg+HSpznvrdU3VYyNvHx9i1IJqE9kn/4IXprTa0c0ugi4CJjg610a0nPDCTMCDuS4n
         AwnfMmLlmIDoEGZV/n+IO0VD79IiISnNWYmu6lEsWqXprQVhasXmuYrcMTSnCJVofYOS
         AR0DER6/lVD9Lh9DBKPeimarZZcURvK4ZIGWrnx3gtEfnSbaUPAyj5fO4PwzlnzioQ2r
         8+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906843; x=1769511643;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uckr27RLbm3h8w/yqL5p6ZXMdJeaPZyAz9adDw0oykc=;
        b=ixwYjnZQPF/EJ+HZlZWWiT5DnHjCTc05kIGrf/jjugyHqbmK8M9PWQ+jm0tGTKA24/
         YIe9FLn5hdDjj7/9RlSZmJeZtcuvail+SbRgLBWUmaj2m7fhDi9HF2Reh34AGSouMmzP
         8qpCajpK1sum0DI8Mv3Ar5amXCVQ/KRmrNDKDvEH1G5CxhshXv6YEMy7BAW7G0i/oJZz
         3vYsV49DbHEQOWXmKSD9evu1C1+wpdZ0PbrS9GEjzHaAOcLzIDufSxAIuCX+lVoC9RmC
         qDgQY2/JVOVx+4VBVilRXfAwwHezgW8oxEV8fNg/rC4dUBSFS8ENdtXjIvhl++Sze3ya
         67Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVxXD3HqYXnSFeh63SNkgdwFZTYKz/8n7aEt3xtNYY7QLIouaQtFzw9o4Kt/nrM66HJh+grLYOpAgnt@vger.kernel.org
X-Gm-Message-State: AOJu0Yydd0hHwWEMHlyGy+q9Mj9KEmhWYOyegUpwamxvNV2jNSJn1iAU
	5DBvtI/kUw/FYY9k9UbKuTflGCUa6ju8zW9eKuiqjcWHZnK53BetrQKFl1jHAfh3Pekz0X9cDW7
	gBu/1ggXzToy0YDZk/Jx6kdCHGagQqgzv84VZD7zPzVGP5ADs3OX0jaLl/AR49sCv
X-Gm-Gg: AY/fxX46HL/fDf0D1G3HJSBByIwXY1KlWKWEhe2rSFLy6tXkKY4ekLxgt7ZQQ++FPiQ
	wj0WRklXp2E4AMbPuVe3aTj7hqWqsW+niTuuERKGNcfk9qU/jsWOC2h0iPIfmg/QUcXJcMlycnx
	3NvkeMueMWVF1S8IxKlR2C6FS2Pi3L8vv3DmLg1VSfdqedZNIJ5+NLWBfTSJloV2nDCysylisuz
	TJEBk10n1brggVAW2WHb5RUzOOLWURJHEGjWQTCsdb9b+E640AzEOOdt9lV5dSnPzxiVG90pCya
	7WEQMbWITxNu2R+0A3EO6oUK+vpGNbFy8dmlfqB93QLLQxxtE6lkTFvarNGVuJnYWZ4twUNYAce
	pjevNtv16wWO0Bo57z6gy3mlSSAYLplkLcwueViCU8cmr6qEn2Qy9s03kls9965TmRC0=
X-Received: by 2002:a05:620a:1911:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c6a6716bedmr1505531085a.5.1768906843320;
        Tue, 20 Jan 2026 03:00:43 -0800 (PST)
X-Received: by 2002:a05:620a:1911:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c6a6716bedmr1505522385a.5.1768906842492;
        Tue, 20 Jan 2026 03:00:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a2f1a3sm1348490166b.62.2026.01.20.03.00.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 03:00:42 -0800 (PST)
Message-ID: <c37e9121-31df-4934-9568-9f7e9c9698f3@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 12:00:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
References: <20260117040657.27043-1-mailingradian@gmail.com>
 <20260117040657.27043-6-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260117040657.27043-6-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JfCLC1GUZ4f86K5bwbD23p7i0vh-Ye4f
X-Proofpoint-GUID: JfCLC1GUZ4f86K5bwbD23p7i0vh-Ye4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA5MSBTYWx0ZWRfX5Wds4Zi4z9LX
 jCwy1FeatBveh+EkP1/jM7vtyhsPlqwLs+p/ZeUCTED10iKu0BOM263XSWqqZ4UijjLk9eXZ8Qu
 tfP/6aeyxxd+3eybc2+a+dnFT1tAz60gCEhJ3A6UD+ZMBfDYGbr2EMmsapZRcCyXBNzmJTaSDXL
 ArX56RnJxihlPOLA4dQxsj2oT7rzB8JY9EgdLBvFSUVYN4B8hVoEFEwakfyZBqbQ8mF3m142p6l
 s+oWzK3W5pTVIxrwP8757lTP6BOTDzlHKCertJNt5f4IXcZPoC5ea0fV3q7P9l94IO6ia6HReup
 ukwdCLPKZUxbocPg6v6RT7XOkkyFi8s+FXYxA2UlwtGUseaQ5Ezokjt2fUSf3EOXWpjsFDgyRS9
 ngVECPDDdu65nzXh4LEmg9Lp0rjqaPJ9lY9rqa6OHTOOjYNjJOstkBk6s4U0le23WNbhZqEHb3i
 txT6AiCO/z3GmUhmHwQ==
X-Authority-Analysis: v=2.4 cv=P6U3RyAu c=1 sm=1 tr=0 ts=696f605c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=He3dl_zFzQSlanp4l3sA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200091
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-257312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.intel.com,intel.com,vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BA4D250BDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/17/26 5:06 AM, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

[...]

> +&cci_i2c1 {
> +	camera@1a {
> +		compatible = "sony,imx355";
> +		reg = <0x1a>;
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
> +
> +		avdd-supply = <&cam_front_ldo>;
> +		dvdd-supply = <&cam_front_ldo>;
> +		dovdd-supply = <&cam_vio_ldo>;
> +
> +		pinctrl-0 = <&cam_mclk2_default>;

Ideally the reset GPIO could have its config defined too

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


