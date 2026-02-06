Return-Path: <devicetree+bounces-263274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NghrCSGxhWlrFQQAu9opvQ
	(envelope-from <devicetree+bounces-263274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:15:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498EFBE6F
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B24973015CA1
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B2AF3570D4;
	Fri,  6 Feb 2026 09:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EksFQ9S2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I7RIXDIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9E23563F3
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770369073; cv=none; b=Skgpz7cCsnNS2/Nxqdmw762WCmi3x8vuBhxLzoC52CW1jeYkubTQwZqWqg+X2WmvvOYqZSAioNmbwHJTwJlmkY3L7vQA5zNF1nfyNfMEEz36Hw5DQLc4F1naWCNVk+L0kh39Sxz+Fi8pttGarNNYnTFyjxHQhvE//mMFNyCzAx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770369073; c=relaxed/simple;
	bh=TIVw9CNpR7eKwcCcEB9OVbsac8JnxA9iryTKgfDv9a4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YTx8SMhiF+gl2AFlU+wikS/q5atgevWT4reH52LLuUEdRdBa1pkIW+YSNxUZwuXxbyJs0OPLYO6IFnA01u3ZXeyj1vJMMU7TX8RVTX1J3jk/1YpzCkvhuJ0y3ef7io/J9B4MOrrSAMN+iLwy1WLpaMmaBdIRO80jY+cGzw30IBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EksFQ9S2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I7RIXDIg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bqnq4042340
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 09:11:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jvowj2AQnypvzkVEw1N9fZa3NmLiIaFVVSqGmxoEdTE=; b=EksFQ9S2658cCfaw
	L9i2AMXNFeGKeTEiGC8SkeuR5P8Dky2lWSiVj25Ni4b52DN9g1H3S/C2JUtvyiXX
	HzNC1KCLygWIVrKyxUdynpi1bIGkeUtE0omtaXjTXPurFlEhjGCTbksObszvp+Kt
	J/8z+Z6bMPHLVMLDXF4JAaakTvYxbJsz2oZiMkLtdS5vSgDOw/akDR6IG2dE7Sya
	g4zPmxnS0jARjOJw39SQ70RxRsWOTKtOt6COH3HIQKJksuGodzFs6QfXy4l4lSaD
	9XyTFvOuHwiyx3ldJE0eYSdqtcWDeU8ORBwTywQ3PXy8XozF4f+oeI20eiWXyVIH
	8ChUSw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w0a6m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:11:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso48466885a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770369071; x=1770973871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jvowj2AQnypvzkVEw1N9fZa3NmLiIaFVVSqGmxoEdTE=;
        b=I7RIXDIgjBd05vvqzguvtll1IwegUmuAG/6Xqqukg+1trYtGcjLuvlHihUDpmM7llH
         1H3IUK6PVHTbEeHFwboSDbKl782ME3vFfWlM39hk4ySyIbHcJIJuJWS5HULMwEKz7sC+
         PmQcect2REoPiG8oeRAyWtqhM50OzFiqAAyG76/d7CRC7+BtTVi1lKhlG7S11E48tpYu
         y2f8osCDGkapeqln1UoFZT1NJMhDdygv/CXk3ZgMBcyBBYaRzMAx9ABUq0emq9i8Wlmg
         Y8ZKn+Lwe6CvRv47yA+TAQQxS46lX6iLwqYd0Yk5wUgsM8rTuXtsCyXapSEIrwGstKp7
         yvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770369071; x=1770973871;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jvowj2AQnypvzkVEw1N9fZa3NmLiIaFVVSqGmxoEdTE=;
        b=cm6amIlRjoHvF6E0WYIlyBufnyMQPN92EqMC5wSQ1hjz+KLoFoC/5B/qh3TPTNKRT1
         u6nWcHgBk9yGLeHtuLAS1A1odmpUkkETlMHfAxa+0leMJShsQbwjx+a2ii1QLlY4D5Rq
         tUeTmnQADcUsmCkDsdSMV+/xA11dJY28XFRL0dbUMAJb4aTuRdi8HrzOxnhJ8JpRPHPg
         tVJaSMjR+x93y9LQDM2W9exhZ1/+jEDGAREYTcj4HjuDJ93zKhJjGd0Rznhz7YXnA5h3
         TXjdygt1sSaO56eeylr3LLDPtGFyuN1tGJ00z9IS+wguvTCXX7gxUpttjXJ42zogj9S9
         542g==
X-Forwarded-Encrypted: i=1; AJvYcCVcajxkuv6/ELmD+4mB0xreIM8kdmxAoFYEz2GHUzl1EtxNiUOTVja5QQ/pKrFr0gdoO48GUEDgd5m8@vger.kernel.org
X-Gm-Message-State: AOJu0YyFESVcAqf8G4rfg2m248GbdfyV46vjuZ5xIAeN5llFhH5INX8f
	F3lqLDn/mjQ/7BDEETItrVemZBMjCNBBuyOSbPooCHI0BJ27RIZ6nyKmG4BDwGS6TJQ+dhsFlCl
	Gu08erVS51OAMq6hnwWxy6oZog5GLevCfKEaQs7s1N3anELLhydIrBWWDxKT87pQwacpWEbLt
X-Gm-Gg: AZuq6aL7TYAJ7M0GPhPQ1WFgCyCe3sSrxqDQTCbNqinGqVBGRDu3q4vX3HWplnD3jjV
	bnbV8LH9i6UHMMEgFpuyTd1yXF8DoXirWLV6M7V6yhrfnGaZrOAwDbirFAht9Cp7LWcdgz64tCW
	R/TzKzm5o8T48DD6iXWQffpQ9VLK1yLD8+Erp9fsCuQjFEBzMSrA0LzDni5/QMB0O6FZIpNxrtl
	IenA3l1REonRzlDCAbMlkEaftkSwUBKDCIPGL2iDQ1L6v65lplNJPzTmRnadljwQAnvRjjlW1J+
	xQWQ5NkpcjV9wo5IOV6gYuLvR7+zVwtfs+UXP9vfiGI8YDyJeKmcE9NT/9yFokbExWkvUBqP6+i
	6sgBqV08EYGgx+XrnuoV1R0kjTqQ9Q4iJGLmdL3k7lRQRaa1lk3Bzk8eVaw+oGRm0BEI=
X-Received: by 2002:a05:620a:14c:b0:8c0:c999:df5a with SMTP id af79cd13be357-8caf067dda9mr143077585a.6.1770369070974;
        Fri, 06 Feb 2026 01:11:10 -0800 (PST)
X-Received: by 2002:a05:620a:14c:b0:8c0:c999:df5a with SMTP id af79cd13be357-8caf067dda9mr143076085a.6.1770369070535;
        Fri, 06 Feb 2026 01:11:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda74a515sm65081666b.2.2026.02.06.01.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:11:09 -0800 (PST)
Message-ID: <98ad13d8-82d0-4def-917d-b99cf455c5f1@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 10:11:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA2MCBTYWx0ZWRfX+ZEJJKS2OSV9
 znXRhYP5ufLyK0QNHxvB9218AK6cV80y55RkzPXT+OSSVVOfS28OaCtoriJQfWDRKVm/HM43Qax
 9/Woj1vFjBMTx4JmCJWvhWY4iXCxI0DEjFI/nQadc5J/oURc0SaMq0bXyX0FjYACi1q4G7GxQAo
 w5JUcdIaaQLZ2B3iIH+FkNDCpmNFgCnhPXj0SgKQ8z4IlNmbNH/gbcXBm09tMfFqSqFAl2dgo6Q
 OTjUgWHrH9HE36g0nhlei8P2XEhtMW8GedO2yQgMPcxO18DRiVa5JgXl6npoVveq8HhOqhPIuuV
 27MRERNbwM0e4JzPtIcbFNpm80F+d/ZsCuUMP0oVz0VVvEeCz3eOGb8i00r7M0UD2g7xjzb2ak3
 TlK+X+rfxjxfzy+O4E3E1EyXPE2TS4TieNG14wVPaT6rnGekHOB6GsjE6LiGtLv19h1mKRU10Yo
 N53Ri6cnDUchvA6LHvA==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985b030 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=XTV_dTSmcC2b72LbCk0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: FoXrpasvVKu11EyiqqBT0IgLfeJhZ3-9
X-Proofpoint-ORIG-GUID: FoXrpasvVKu11EyiqqBT0IgLfeJhZ3-9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_02,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060060
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263274-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,1d00:email,c000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7498EFBE6F
X-Rspamd-Action: no action

On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
> Enable Qualcomm BCL hardware devicetree binding configuration
> for pm7250b.
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/pm7250b.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> index 0761e6b5fd8d..69ad76831cde 100644
> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> @@ -202,6 +202,16 @@ pm7250b_gpios: gpio@c000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		bcl@1d00 {
> +			compatible = "qcom,pm7250b-bcl", "qcom,bcl-v1";
> +			reg = <0x1d00>;
> +			interrupts = <PM7250B_SID 0x1d 0x0 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x1d 0x1 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "bcl-max-min",
> +					  "bcl-critical";

We should strip the "bcl-" prefix, since these interrupts happen
to be under the bcl device

> +			overcurrent-thresholds-milliamp = <5500 6000>;

Is that something that we expect to change between boards, or is
that an electrical characteristic of the PM7250B?

Konrad

