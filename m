Return-Path: <devicetree+bounces-273097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBlZO9Qmr2mzOgIAu9opvQ
	(envelope-from <devicetree+bounces-273097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:00:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DDF24083D
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B25A3025145
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E724D345745;
	Mon,  9 Mar 2026 19:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UOzv/ayw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RvyXLpSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BE340F8C2
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773086114; cv=none; b=HQDfBR3xjPgbe1HN62pzsxC9JqTY9fvKaLiAjsmnv0uIQA2tEEuC3Z9gOLB87LWPe7SEkEKUk7DCATEHYb30BIjZnO+qfIyz7ZrYtkRT/NBH8sC6B9fHZbQLxC9zienV4+35Ym1ZNrWdJD4cFWyn0+GoLlFpc/LerjMAOALTqC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773086114; c=relaxed/simple;
	bh=W4MrTBic1HBb9ZZN8z9MrPVPIQYMw2XdIROxl0BHWOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EnxNqe2svv3u1mDIjDCe1meOoJfNbqMkmVWYIPOdAexmSLml2iatWuQgpRjcpRd1I0X7ZPbd2q8dQBv7Ob5WFXF335I+dd6lm/DomcRWq31MFM1ikrD3GmpBsjOop9/KU3rsIlw8VJilGmkWEg3egnQgAKGg8x05+SFQqTLc8zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UOzv/ayw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RvyXLpSe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCDKB2428709
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:55:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B9IxQXCxQ9UXI/vzh5L1RtMV
	bGGacONEYx7BpSheQDE=; b=UOzv/aywgzW2EfTCe/ndkr/dIb2B1m0x/XV45O73
	IqAGnL2aL2fBCP/nabJg3s0oDrH/B5pnlM/fDwv4+Nj5Cbp7hmMpIa+M/Wb0jY/m
	I0ZHwgWJCsLt/r7CDximt7OVrOs2qFBOKGMZXiDjpkxgT7e3QUSyXWazv4rqUcZo
	UHG3jjuHbMVjp2CWGXw728P5Oh08QtRfSg9el/ORNS4Pj519cGbH+sRFusFgZzIP
	l+2AsfDNArOiHo+FJaW7kIrOdqGUSBr+QOLJR5EdjHAMm7qziPXI6SMH4dUCC6EI
	MguHLJyuLvXKCdOOrjTofEYn2FR/kdkWR7czvdydrM2urw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1ekrtfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:55:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd81506677so955568285a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773086112; x=1773690912; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B9IxQXCxQ9UXI/vzh5L1RtMVbGGacONEYx7BpSheQDE=;
        b=RvyXLpSeB0itrcyoaDGOESANpMX9+9d12V9f0CsuzU8FifUmhhKZsE80A8gHY2i1cp
         Aw02noeKgWwdhwRQPu7p9Gl8TjvkWA1ZhATrNc5I5/gwZSmt/Mdjlq1FTe3DBAxT5flw
         tia4t8gJSHUTTcpgIu5m04ZFbNhx2TJm2YRiUTmmvVNy0qkm63qwesxqxMwA3Udcg1XE
         DuaTQ4iw43FEF39NErhuFhXESN33uqWoGnehwqbP31Dz8q/0RHpe9nzTvP84Iydm8qsK
         az7YUvGDHBp5m+4FextG4O1Qs5Deh41wkx98n9Tc61cA3eaxx3j2L3i/hfvU4GBRzFHw
         ArTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773086112; x=1773690912;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B9IxQXCxQ9UXI/vzh5L1RtMVbGGacONEYx7BpSheQDE=;
        b=dSOYl7IUKcyk+9JesR0FQXCYWRw/gJ1zqDhH9JmwGCGL4+Jh89aYkA6tbYRluQmmLz
         G3MKaiIEo2+tP8KXEFCYrrO/cTruwRNWZ2rrOKbjBfkpg7IdElqntECAbIcS8Yxnvjr7
         3jN4pRrv9C5kLdyY8pmUCplamlxV7lUAWNmNbdcqE7QqCrC+d8c8QR/lO6VbbWsQOKV9
         ed5KfJFPrVlnwOPik4sIRKaYl5NsAfw3LX54fJSLYY98tiqLzHmStz7Ab2QKM8NI0sGG
         p22eI/hIYajwvhGNbhRoBM6p+XR8jORpIWuLlkhqubqoyY6tJa6V8iNcdhs/dFtrQTZt
         CZ2g==
X-Forwarded-Encrypted: i=1; AJvYcCVBlEYscGoCjwQDRm3A5MKY0X4SmnpFzQ9FuWTzpuxn7NoWthnCgqw3d/7sq4ZocHY4B/L98dmhLC7p@vger.kernel.org
X-Gm-Message-State: AOJu0YwhQ1ZbtnLEINNAHQ5SN2IUh9W3VJmwy5Lwv7jO/kS53aLUOuS3
	5j5RGgTWZruyFgnCePAjOPGy+4GwlwW9lQ32Jb3tV6hxMBbUipFxzEUK9L6mygfYbAtmYS/gvqt
	KLl2yihe9vkXFBhsn8DEjKbhnuYvik43CoLWZqZ8N+HC5YCKdzkQZJXuAa/8fp/hL
X-Gm-Gg: ATEYQzyaXFlmoqY/sS1x9iJoz89tzXxW10h6n/Nlxj7AVE+jbgb6H4HPXQ8QIL3/qxF
	xtIVKO2AgPUtLyN0407hUeg5KEWsB2waRZC9QBAvSmVl50qex8VCE8JsrsR2z6PLl+VVfRSHbYT
	zNhtUv6z6pKPyhOw/mbgG8MBYTEPizsGqB5d6HLdeqsHE2xkflyozJfxyiB1fnE6u85YWPj7P2M
	WWW50MPkLRdXm7HbZWtCcivdAvkey2AJWf7PhJkfX32xxm/Iyl4a12C375eqW5uOhgVQIai1klC
	c0mj6shDRNkWeO0WvSJ6a8gQbQmb4w8Vtg6Fv8UzjI9OwcJGKEZndK/xGi7GwuwJHLaoPAzx44d
	PnMr33pQM5htI29py1VfkP+LHrFTvKfK5bF3VqUVMh1ECz50x9SBqEeEKU3IJ5fMDBSTL8AXNvr
	P0yJwdKIE4Y4GlTZNXFC+FCQzcvIvu5WQCrVY=
X-Received: by 2002:a05:620a:4543:b0:8cb:71d4:d0fb with SMTP id af79cd13be357-8cd6d48496emr1526153985a.36.1773086111837;
        Mon, 09 Mar 2026 12:55:11 -0700 (PDT)
X-Received: by 2002:a05:620a:4543:b0:8cb:71d4:d0fb with SMTP id af79cd13be357-8cd6d48496emr1526148185a.36.1773086111226;
        Mon, 09 Mar 2026 12:55:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d0726fbsm1040101fa.41.2026.03.09.12.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:55:10 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:55:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH v1 1/4] ASoC: dt-bindings: qcom,q6apm-lpass-dais:
 Document DAI subnode
Message-ID: <3ml7bphfd7abn6mat47yagw7l7whv5hia7ifkbh6yi7gdg24j7@2p4sihkcowjd>
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260309111300.2484262-2-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309111300.2484262-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Proofpoint-GUID: pFeIrkMNszsL_4ddLKOice_7iQ64ZpuW
X-Proofpoint-ORIG-GUID: pFeIrkMNszsL_4ddLKOice_7iQ64ZpuW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3NyBTYWx0ZWRfX5vGAj98OKX7j
 b9P9Nj7Tqp/wYOHZe0G15ZrzJyBeP7rPH4eGEvTumU/qvevj1JpPRv+Ese5fc/Ebna32e1aTnMy
 o/JJ15cgqeYVeHIFrbHsSCsIfnd1gZZ9XitWnAo4fkjCeOpRMmwYs1BA5jQCkxCVQreIBdp+5YY
 d71O6+YOB1B0QU/fd5ASvEAFuBP9G/QUPc9fAp0nXmpohX85MrMVFOCCx7hfscF9MUxY4I00MtQ
 RR28lHSsoR42eCw5HrQvSCxkCMVwDKm77H0Q3+CXOhPWRAL3OqZgPEIrceaiJJj9aVs/1vJp4OK
 GKFdO/IH5zhYKSqK438ZbYtgl9Y52T+2VCgrL69LlPiIRkDtRfsJw3HlTJ2+OXeOgGg+g3O/m5c
 14zkBWtZ21Yb4bf6cw1gxFjuK/K4MINCL5VL3ujnjBG8OFSRoI9qaAW4du3iZx37nLJPgx7vS1m
 /nqOwPRucfagOgP0iGQ==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69af25a0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=oeFafo8-zzntoLF-tkkA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090177
X-Rspamd-Queue-Id: 62DDF24083D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273097-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.16:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 04:42:57PM +0530, Mohammad Rafi Shaik wrote:
> Extend the qcom,q6apm-lpass-dais device tree binding to explicitly
> describe Digital Audio Interface (DAI) child nodes.
> 
> Add #address-cells and #size-cells to allow representation of multiple
> DAI instances as child nodes, and define a dai@<id> pattern to document
> per-DAI properties such as the interface ID and associated clocks.

Is there a physical device being represented by this DAI subnode?

> 
> Qualcomm platforms like talos integrate third-party audio codecs or use
> different external audio paths. These designs often require additional
> configuration such as explicit MI2S MCLK settings for audio to work.
> 
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  .../bindings/sound/qcom,q6apm-lpass-dais.yaml | 41 ++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> index 2fb95544d..1d770cbcb 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> @@ -21,6 +21,34 @@ properties:
>    '#sound-dai-cells':
>      const: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +# Digital Audio Interfaces
> +patternProperties:
> +  '^dai@[0-9]+$':
> +    type: object
> +    description:
> +      Q6DSP Digital Audio Interfaces.
> +
> +    properties:
> +      reg:
> +        description:
> +          Digital Audio Interface ID
> +
> +      clocks:
> +        minItems: 1
> +        maxItems: 3
> +
> +      clock-names:
> +        minItems: 1
> +        maxItems: 3
> +
> +    additionalProperties: false
> +
>  required:
>    - compatible
>    - '#sound-dai-cells'
> @@ -29,7 +57,18 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> -    dais {
> +    #include <dt-bindings/sound/qcom,q6afe.h>
> +
> +    bedais {
>          compatible = "qcom,q6apm-lpass-dais";
>          #sound-dai-cells = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        dai@16 {

What is @16 in this case? What kind of address or ID correspondings to
the PRIMARY_MI2S_RX?

> +           reg = <PRIMARY_MI2S_RX>;
> +           clocks = <&q6prmcc LPASS_CLK_ID_MCLK_1
> +                              LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +           clock-names = "mclk";
> +        };
>      };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

