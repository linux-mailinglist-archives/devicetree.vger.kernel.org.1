Return-Path: <devicetree+bounces-270125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHUXAzu7pWnNFQAAu9opvQ
	(envelope-from <devicetree+bounces-270125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:30:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 571DA1DCD40
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6602C30810B9
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349192FD7C3;
	Mon,  2 Mar 2026 16:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4Z9U6Pn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IWGpTkY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3383093B2
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468353; cv=none; b=pOelsX4sjsCct2zA4n5b4mkhvG9HoYrpOZA9xDNOvStuW8ELBCCphDWy5cZyVi4uzcAfoRv30GK0MC+8l0VcNAqhSIP3JA/6ZKNmTjGn8RsVz4nobEBJv/ucGdFYHEYYSaM5ihVxvsMqjpLtgYYcrszNQzmL3/6g60AXoZOqW1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468353; c=relaxed/simple;
	bh=sYvyd0Zm5Ga2JIOjj5miURFzXTnvIdotwsCvsCSNo8Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JuHk77vfHs5MN3oljHQcIr0EJoSLU3pwIuPGiB6ykRKsX9Ml5zVY65o7GP1a0PpWJIEZTQ2tZPExj2HDhYQZRnQTjD8p/LO3n6FZz4kmrjZXlY5KC2+t627HF7/II6f2wB1uLohciYFv6+U1iRg6745PWXHoRUtgvIEGVHulHL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4Z9U6Pn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IWGpTkY8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622G0u3A3753104
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 16:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vhjju8BOnGn4NgWCoflGT14vT5s6pSmdtD5C3RVGsmI=; b=N4Z9U6PnJAiI+Oc4
	Cr1dp0Twmmqj2RQn7Ja6QIgvgMnaM7cCtExRrbjIMbBQoOWHieUFJJOGdXvtUJD6
	Xx8hRmOvawnN30Wty/0IZpaajVBdc0TGDoagW9pXCcPJ8xGZpsR3iSSrf/HuvgGP
	eBK7DdF8LbFJDGQFjPf9o3Q7riwPac7uhu2vQns4UMTjJ9pgtLcCdawYYF+R5N9q
	13d7eRK+yZ+kKG4II9b62zlv89BNXCYMhWDJCWgDswz37VvcsKTEOaFFE64kBlri
	jGHUvA324UiEYZl2fSkHsH/c11+4nchSiFWFNk2U0MnLA9kaGrtAOKiCBZ2EZ322
	STYfBg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7kq9gem-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 16:19:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb456d53a5so440595885a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772468347; x=1773073147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vhjju8BOnGn4NgWCoflGT14vT5s6pSmdtD5C3RVGsmI=;
        b=IWGpTkY8r0Xxd8wieMvwQrOrMXhVzlavSkj3D3fVzeum8m8RM66awRlXCRzaIslQWF
         g/aOWGgcQ4TTL2h1tFe5UdQJ9aAbBI39U752wwRRt1+tO1InU1hE0eqr2e4rURX3rMag
         fBGnUdL6gOV1r+Gptwm1L+KAe9IjOwwL3dZkn5s8QV7tuYRIRD9h2kV3yhrCtO96Y4F/
         DIxL9mig1ZoU9DD1JfiQlMoKUQn01w1ABGJAhn3gO2Lv2Mcs9uR6JObNCpFIhd9BnY7/
         H93Szhc59AlDlA+LH98auzk+FsGnan+hfIMUC3ygxSG9eT9e97BzIjTTknGcF5aZOlvR
         aMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772468347; x=1773073147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vhjju8BOnGn4NgWCoflGT14vT5s6pSmdtD5C3RVGsmI=;
        b=qwAuL1Azrg7bWVBkse/KBBwgOO3cge1zSaKjXb2o/gmJM6TrV2XQVaDT21dre1CDDl
         d/8gq9wn2+7Vfh/zFYxYQEPYEVntT46ZDXHDlfXGUWniL2Eyqh5maULb2WVnoF0UrI2H
         hJnUAxkzk9cu4HzFahHxnOTVB/Iz2U9ykh4/Tfam93gumcJw1DbrZaA5bVN2znXbZKFD
         +vLjTG+j9LyXEqA4SHd2wvlTAN6Yh6MbreI6M1n7aHcBEBZ/IwIT4k24Sk/2f9gyhNGs
         gVDqZIjgDVlacPraR6Ou8FplZm7/Rt4bbEMlqYoEbXnl0w7cHf2qPNhd3SAJ6FZttu+D
         /lNg==
X-Forwarded-Encrypted: i=1; AJvYcCWxfBJkkyP1yPABofRtD0/9tglCs+8P4vOWzUwNIRDsRWaCO+cyJyHm3LN13fQi8myrh8WjsTAXJgvw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz7rhV7vvQTVYP5U2mEXQtXflDlCH4QD3BxwYN6gs6dhz0jl2x
	M2OyfiF/JcljgKOhB2eULu1C4FEuTQfGkF2PY+xRFhOIg5VbAp6/jUKfvqc7ebzx8IHQGYK3D1S
	a8cYeV1vIr5KiZ/GoG7mkNT6DO/9P+FpAFio1/KjzHy4ybjwtaYRWdqrqSR5qqgRk
X-Gm-Gg: ATEYQzzxohxzhUqvhhtFkVfLje+4O17v3OeFdJ+GceXiLKpPS+bfYsY4q8TQEd8sxjN
	Io8Q5QCauHPa5Fu5tCPqy4arqKABkqFFWuPqFBO1I+pQnF/z4QLwSNFih4cM6GDJ+rLySiyV1MH
	XbZXBkyfSk7lWOPZuKmTk7p/RMLWH7bxaKmYghhBmbFtutsrZfFCzGLq7pNW5yQhHYxuRsouw5U
	IS+rqmeI2zCaTwEFDJLzHmQKEtXcnOVvxyi1PCogqBOlgl5RKXo7JvuRurPiotTL7x6QZejmIFu
	IEncrxiU+XSziqmjrUzjwfEVhS+XYmkYccNzcS9nLzx62RPO+F2SGoz3nJhLM0jkOjTNBKFyXDu
	hmcwZ74Yyx4Qt1Ee0ItepvVa96yd1gzlDdRGRvM/hjiujflb2wgjLXBuWkp3wpbjdjd/S/LDk1i
	oPJ0Q=
X-Received: by 2002:a05:620a:d8a:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cbc8f5c8afmr1174066085a.9.1772468347120;
        Mon, 02 Mar 2026 08:19:07 -0800 (PST)
X-Received: by 2002:a05:620a:d8a:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cbc8f5c8afmr1174060985a.9.1772468346539;
        Mon, 02 Mar 2026 08:19:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd36224sm3743718a12.7.2026.03.02.08.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:19:05 -0800 (PST)
Message-ID: <4fab8e64-8251-4424-974c-19434ee04c76@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 17:19:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 08/18] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-8-95517393bcb2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: R4jRM33gZoHPZZyAT0-unuxM-pJRkvoQ
X-Proofpoint-GUID: R4jRM33gZoHPZZyAT0-unuxM-pJRkvoQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEzNSBTYWx0ZWRfX6EoCnJzUlBkS
 u47VgoeOmv9K8opztibEm7hF990f/mzDN80cPFeenTL0fqq8WtjblhjfcAOmNY2V42PM/1xoSEx
 ExFaK2GfsKmv1uCKXqX94YfqYSc6qOqghK1xLTAD3ElqUuCSjWFp4s2/g1HqiJI7BfCzqgKxAdV
 /n0Wdr1BESNqBm/3nuFsQZQH+/mo+A+yZyb9ywcEa1FcYpyfX4GmWKBwSjCj33fQajDyN9plA1j
 aIkOICt3GDYb+pORdQ5zlP1Ulk0Y6FBqToSr7LwKbQPekh97oyol4+5LvgUJtznzal/hiGMEHf8
 cJdNwTIVvwWSKFMihWBw17O8HTDz0HFqbsObLHxEgOyhtd1s5ulDE3QUSoWID7yNGRwXzJ8CT6i
 /lBwOO29xI6PoOq9vu8m7HOfMjEgH+XiRxlwI36lseKKMuz42ujVjn/okPuaQ64QN9TDL2KslsA
 O2qKR8pFqRuMOOgWsQw==
X-Authority-Analysis: v=2.4 cv=GLkF0+NK c=1 sm=1 tr=0 ts=69a5b87c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=72T5t8mROkFztkF13RwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020135
X-Rspamd-Queue-Id: 571DA1DCD40
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
	TAGGED_FROM(0.00)[bounces-270125-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,aaf0000:email,ade0000:email,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
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
X-Rspamd-Action: no action

On 2/25/26 4:11 PM, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index db65c392e6189..f96411f481305 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
>  #include <dt-bindings/clock/qcom,sm8450-videocc.h>
> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
> @@ -5464,6 +5465,23 @@ videocc: clock-controller@aaf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +
> +		camcc: clock-controller@ade0000 {
> +			compatible = "qcom,x1e80100-camcc";
> +			reg = <0 0x0ade0000 0 0x20000>;
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MXC>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;

Taniya, in light of the recent discoveries on other platforms, does x1
need a performance vote on MXA here?

Konrad

