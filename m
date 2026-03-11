Return-Path: <devicetree+bounces-274131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIUtA+JysWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:49:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74746264D48
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C028C308870C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6B332D0D4;
	Wed, 11 Mar 2026 13:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NqJQdOFC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iJstx1SX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EDD24E4A1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236614; cv=none; b=UUIWqY/wjHdwHC3f6OO6boh16tbJo21jd4AvAuc2ex6ksjt9Cd3kzUw/kMU1iyVpnMZmCYIBOU+UvzVSgizFhYMTqqiGV4y5nAy+1xQIncZRZEbVUVXLpc7reL4ap0gDHcptrqwvYjnZ3mxICYFd9EmiSG0xyxflztPrnnAE4M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236614; c=relaxed/simple;
	bh=k4AGHLpUIUMTSQjtZXcFJEcnEsn9sBD8nvHi1611C40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oA/o8HK58U9tFqRyinzt3NWmBsXws5Zhlp9e9qdvPMcXCyTNfHbez70OSZmOc9XuwvJV3paIZx+JWrGz28ZlolA8HdL4MsSXQ3VfDqe8/V0T3oubr+afH1VOS4egbBKisFQDud5sGT7BAM8vWHxFRgBM7cTFCDqww1YKcMx3a4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NqJQdOFC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iJstx1SX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA5egb294279
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xrWmSH1skhUHDb4x82rOG9kaYy3vmFXoc3EgpvdAPWg=; b=NqJQdOFCLoKeX90J
	KsKvbsL3ig6GpfV2uwT4htSiH4bhb9fBJmZYckScdk6E0yJXrcEsec58836PFiyn
	Dd3hsCXPhPcW0Hev/pSRb4oMQysbiaLnuO5kDK/xcyY3xXOYVjc3eoJzpA19Iyzw
	j+0gCtvDVfAfjfULL/ep+aGzzeKtJMHFgUlBySWYpi8gNfhkR6kEv0xHxfPXuUlg
	IL/+oaq0RUIs2luM3KCFlEVUYtxRS/au74A/BGF4RoUtVCfpbk5KTlTg6Fv+Morl
	gWa4oT0wXvhxFzpbrSIul8ywzCZ4yNowTHS8lcxeayWG2e+cTLTBTptBBGaQs74Z
	UYevbA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6bb8qev-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:43:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd93c91075so137927585a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773236611; x=1773841411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xrWmSH1skhUHDb4x82rOG9kaYy3vmFXoc3EgpvdAPWg=;
        b=iJstx1SXZLb3edmufSEE4niAan74s/cI/oL8IJoyXnqNV72Jw+OYs0Zw9IXobyLzt7
         i3gpXPfiNZzyceqRdZwVcJ2ldMcgIw62tplbfLLHDHbswR4h07Mdr6EfkgjF3LZ/VkZs
         SugaEMxbjHcmj6/3jJQw8H0kSwvkcbko6u2IS5p49N/s/WVh3nsRVxeegC9USFlmgLVU
         wtrsjkEzNkJJq4CZTgLzHCWF/OSl9Ly89N88r6OMffgT6y/14tqSOe6g71tW4KvP2r1p
         py56kcDz1K6qckBHeZ/knFr8iEjmB/ztr+DMtpI5eEY85N50hK2ZKI5kwU7a2qNiVXM9
         31rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236611; x=1773841411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xrWmSH1skhUHDb4x82rOG9kaYy3vmFXoc3EgpvdAPWg=;
        b=q/yBAuzvq7g0WeuGtq2IcEhjy8pGhUoqpRGUE0pQOzr7vKcasiq2lI9TqYWhEQo0U4
         oi33cqU8b1GM7+daFxK4TuM5rmLzQKYekGDhOm8R153vIpT0+F3+3dcZ30RPiIYzeV0J
         IZCBujdQRvuMnMICqPnQQ7egtDWCpV3Mun64CBuHCORmmf3V+LL5B/iaGpKggummO1qx
         SqMNyShzpIAVXWy3fI+E/RONdNcKUamHdH/vC6bJeZBkQ4BofjeiB2aNyTIcWY17YCep
         Jm0IUtyv9Py7r12HCabmWC8e5uIXUDsjoZDO0V/kT1NSSPqaA4tKpXbhm2SkX/gqqVh1
         WBRg==
X-Forwarded-Encrypted: i=1; AJvYcCWbVC9rfTHPAzYKhRyKsbw53iRXXMe1AUq+bwHsoB8dDvZa8cuocUUrVMEgGsKS8MTeYBeQIJfM0n6e@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp+fejcb+QfO/rWvJCvuUxEno6j9OZlnjemmPkSkr/sbS+bJXg
	8IGNUwui6AeI1fTeTvehu0YRsCTuXZRA06f7glNDRhdOybB1lUmtQQcnqfE0Ut6k9spF7N6j1zE
	ePoThG5Rv18TwmnTP7IYUCPY/7xcsvBUgXze2g4gVtu735hAOK/BbyzGYpU9bHGnB
X-Gm-Gg: ATEYQzw61zGEkGmVnOUbdzSucFH6f3FbwuSw3bmvTaZ8PFcI49DBYbD1mf0inLpzr+p
	qmT4tx07r7pYj0+Jj9JlQxGq4r/9TAUkr6BA7SoW2fF1D3+x2rjmMWLF5A/7dDvHcVj/5UrWS9o
	ieBpeKNnd3WJxeTWCQXrwnTQEn2b//KbvUUdP1Nw+NCuK9OBkxD2PrLFDsXNxSAPqKNNJO9a8cO
	ox9XzwyZEIbef3+AyftybTwr2B6qNZGP4bgLq65/HBwaMlD6jH5kB4Oqjyy8Wdgh25G/hiI3Vmi
	+2sI9gtEAyYGcw5de2Xs/0czEdPA62N4bb7KJVA+KgEcsUpbhvkCPhcQa8fdwmEJpXi0QjDYGXl
	Uwwrn+UAq09PKg720JiJVLPTYzsm3/EAAj5kZ2UvuSIiZgm3tobyYANQCOtkpjjAXxv3xSE10g/
	H+z/w=
X-Received: by 2002:a05:620a:29c6:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cda1a120f3mr235090385a.6.1773236611185;
        Wed, 11 Mar 2026 06:43:31 -0700 (PDT)
X-Received: by 2002:a05:620a:29c6:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cda1a120f3mr235087185a.6.1773236610692;
        Wed, 11 Mar 2026 06:43:30 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e18e238sm56142766b.48.2026.03.11.06.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:43:29 -0700 (PDT)
Message-ID: <9b8ea7a8-80bd-4aba-89c3-6dbe9d43c41d@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:43:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb:
 Document Eliza compatible
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260311-eliza-bindings-spmi-v2-1-12783c6759d9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-eliza-bindings-spmi-v2-1-12783c6759d9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1WS1j6rO53G9RpoA9ePK3BZ9z_JWtewp
X-Proofpoint-GUID: 1WS1j6rO53G9RpoA9ePK3BZ9z_JWtewp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExNiBTYWx0ZWRfXxPqo4Qoyt/KP
 8F3ntf7P8b9QcwZ1BYmvNx+dSePRTXCGLrgLnDXIcwEUjRNgVhFV1BlEqlwh2Q9reYQyeiDao74
 zccNvQC39NgOCgFjxEsFpVvTM6QT9WgAV7/WgMFVRjXk3Q/9nTXcjDczKHGxICsIoZwk3edSbif
 0ahdACqnf4Ig0vlQh0CHjnRLDhVDuAOAp6m3bZniq8ECCqbyepE2QrbSuV/ukI+HtHfTfGDTl7D
 2UCcjQgBpQRqa6GrqUmNNglh1DhASJkJlBUixtueeyqd3AJrF0aP1JOmmPxt8B6Uj9wLGZeXSKw
 Jk22qrbf89ceaXebZubYrISSQqyTZCE49XvJ0MNuY41Rwk4uNaxf1IFMS7RDqAOHiNUH+KCjCAF
 mV2Z14bWLwO724IJoWwyLARYFpVaySqQ8Jtw62CJlwGh18JC09piXXfotQTwjIdyi3/deg8hiQJ
 uRVpPJJr0/IuqiwE0WA==
X-Authority-Analysis: v=2.4 cv=CKwnnBrD c=1 sm=1 tr=0 ts=69b17184 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=8CVpcUMS_7PMKiGSi0oA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 spamscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110116
X-Rspamd-Queue-Id: 74746264D48
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,msgid.link:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274131-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 2:29 PM, Abel Vesa wrote:
> The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
> driver-wise, still compatible with the one featured on Hamoa (X1E80100),
> which is 7.0.1.
> 
> So document the Eliza compatible and allow Hamoa one as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> Changes in v2:
> - Instead of reworking the whole oneOf for compatibles,
>   add Eliza similar to sar2130p.
> - Link to v1: https://patch.msgid.link/20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com
> ---
>  .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> index 08369fdd2161..4152469b3880 100644
> --- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> +++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> @@ -23,6 +23,9 @@ allOf:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - const: qcom,eliza-spmi-pmic-arb
> +          - const: qcom,x1e80100-spmi-pmic-arb
>        - items:
>            - const: qcom,sar2130p-spmi-pmic-arb
>            - const: qcom,x1e80100-spmi-pmic-arb

I think Krzysztof's comment was meant to suggest you shouldn't add an
intermittent items: entry for a single const (lone-x1e compatible), instead
passing:

oneOf:
 - items:
   - enum:
     - foo
     - bar
   - const: x1e
    ...
 - const: x1e


Konrad

