Return-Path: <devicetree+bounces-266376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGU1Fe+UlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:31:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3271557A2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49172301F7BF
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63AF72FF15E;
	Wed, 18 Feb 2026 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="by5wXyGD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="krexp60q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33012EF64F
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771410667; cv=none; b=UcjeVqM9doaXxGvRnSULbahUEX5WOi/h1iHL+NQjQzzQ3HqGC8Fn3cV8t06hct+gejW8JC4WgxyEN5upQ4497z+jCcfK71AWS2S6krlnXWcHgpxClQtLeef9tEQ3Y1JO2bsezKdns2Z4a1QFeoMbO2YpPkG3/xCnfgowxSLgRQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771410667; c=relaxed/simple;
	bh=auC0xueomOl931O/vRZPwJNkFbOzIwy/JN2zSPgyKrA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wd7TZE8bMo72vECLr/U9j1+v8sdcFAsFKHg6LcIANJhO9QTc07ZIRCgky8NRUgLAuq0Qnr8iSNwn2F35AGc/oPPUn4vmdq0rESPPUQpbvEO7xj+xPmTGkGOYk1fDZ+Vop36zywNS5VZl3gq+Ckf2fpxu3EYtlNJUTJwJyiBEn2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=by5wXyGD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=krexp60q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I8WcEN3379935
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ceYC3dS1E0sMY+7Me8g8yRAFhnCfYWenXOtaCGhAEgU=; b=by5wXyGDNLBs5+wO
	azx6ljfB4zNb/4aewMncPNuuJ8Gf6Bje2JmaJ36lTKUkI4pkc7I92cu8YrovLq59
	Bty4gWm2DP0Vmb3eJ6X3lLs0XeYA2H7OWnlCdVCFUyUMcROTuiyAX73oFqJjO2Z/
	I9XyoSEDkFj5wv8ALbKNxQBTQp77YJs7rhXNOfgeVZ2ub45wYTfxKrOjb0GTmPi3
	aPcLDDqKxKTWkvyCy9P16cX2Qfg5iN1bHclqlTXxMCQRBXpBoLBtB0sjB1ouQV6S
	w9tCzbuNjEWgLI4D1VSPHp79Rlamx4clml5b2QKii/21kUqhFjGpfaRPEuQRsAnn
	bhsJhQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccxnyj2k6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:31:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so422304285a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771410663; x=1772015463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ceYC3dS1E0sMY+7Me8g8yRAFhnCfYWenXOtaCGhAEgU=;
        b=krexp60qWw4iHcAC5EHET1j34dixokPauYNhUdIFzMu5/YiUhRVaKZxUv0okcYdtHM
         qN/ySwscEFcVK1AiuofTLV3U76I+24ZK6jn2RetZoJB6SGCVLDoTWG4aQ9wpeaxlT8pA
         WwpYbj1mT0Myl7QhZfY5A9FwitJnDLhdGWzr0wqXv8Mqfyhh2zWuvldIyjgmlme22Ujv
         SbNlkU2iwCW5BCSIJ1aS3Co8uATNWtTh9qolShLXlzi0mRe47i5Qztd3vv2LP1TmLt1T
         t4KiVx1l4YyrfpOegie1TalnIRRVDJaup66ANJI+mBXdoHNrMuBcas0+1A4D62YsViGZ
         yAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771410663; x=1772015463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ceYC3dS1E0sMY+7Me8g8yRAFhnCfYWenXOtaCGhAEgU=;
        b=XvSYpGmJd2orOkUq6cVJO10UYFpBmk7MwgIvpmZ2GCUMB79AS5mad9lK/PdCc+uHJ3
         45PxV26QbXhHf705qM/zYqvhGAyooBm4xWmNzCs2ZtJTIrgKJygex/PAo1COiG0Y8iqs
         lvandUeekZvRAy9rmbXcOC3ETPkRZq8IVkqEp0ZDWCi91rQ1X/BgL8z6F8D2pr91fVYx
         uGwgwsJQ9PjGjRg+ZK7lbZb08cJ/pTo1B0GDbXI8PYVXSHXPxHOiU7up3KzWCkKa2vTV
         9GNrgekemEbxAAQd9KvRVkMwFYJr5kKVd/B+L1CAIpEBwXZ7q+MCylONr62RQq3/Ke/x
         XmFA==
X-Forwarded-Encrypted: i=1; AJvYcCWL3eK7f+3NHPP1mh/5QQ4ENgLHVJpxeFE2NBUondFQZfnP0B5cEeL5TDZh0aolTgbk1Bfme1oU8ZUu@vger.kernel.org
X-Gm-Message-State: AOJu0YwlKgirG6X2ToTl/97DcrbiLQGZtGx1mufwueTHjaDmsqKKE5av
	QwAGYGM7uptcyz8BYruoFYrnp0EdUb3sbJ/vv5cSP1QP2uAAjH0eIdeP1aGb9ZInhposGiQRUL6
	DBw0nCMpayTZ91Wf5Mu+jAiot9Z5eWHF6X8Pq2gokkW3gAnnsa/bYS7cHDeJndjOO
X-Gm-Gg: AZuq6aLyn4wlykVhuC4DrxFQuwv8foFJ3Ux1AXWKtRAjtUP5dkulvdt/3iGo+eBAIxf
	1CFBlbUIf8YnJnnAp6cm2oXgUhexqEIJ9omjao0Fm823dmqmiFYo4ToQZV55dTBurtqZCggd0sq
	9F5XhzU/Rs+c8khKGXDP4ylGX0NH45pOpSn7o1kCHewCsQ+UjRFvFNCmWMVr4DAR092xm3okBNu
	2m2pmS6FE+6XnY/5QJgCw6Y63HsHmQMuz9oHOxslrEPs8DxdhRUY1d5OAFRZqEussvhXOKh2shB
	Qqvqv10syoZAHQkUxBFzAHEAxrHr3xYhH5davO9PHa5ZjoKkatpTrUStW15jwgc2AhmLxnzg0Se
	uz8KuYQIJgkDbclMd3nzsIfCrIY6AqeBjFJIZVg5AtEqdJ7vp1WmiM6jG/1nn2UVaPIG8BSZIxF
	9XsSY=
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1548290385a.7.1771410663117;
        Wed, 18 Feb 2026 02:31:03 -0800 (PST)
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1548288485a.7.1771410662668;
        Wed, 18 Feb 2026 02:31:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f7c24sm446322266b.30.2026.02.18.02.31.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:31:01 -0800 (PST)
Message-ID: <590f75c2-6418-4d39-ba7e-589acdf98786@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 11:30:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm845: Add missing MDSS reset
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        David Heidelberg <david@ixit.cz>
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
 <20260217-sdm845-hdk-v1-3-866f1965fef7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217-sdm845-hdk-v1-3-866f1965fef7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uosGYtLETURqzja5AJrdQHw5OPYXQu4m
X-Authority-Analysis: v=2.4 cv=Do5bOW/+ c=1 sm=1 tr=0 ts=699594e8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=SvsOOShjqf7P06K1ulcA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: uosGYtLETURqzja5AJrdQHw5OPYXQu4m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA5MyBTYWx0ZWRfXxcrJ36IlDuWj
 gLeE5MbLWjLmL99T6YlwB3u4ncYoW2jeMtVa84In0lEtyXKWf5bRqexFO9AH921NbvXydrJ+zV7
 oDhAfUJnb2qKcvXqpi770wg7LkuItZ0NH23m1SQ7yj+k5D/F0j+gcu7shn4j/WFv0uSKc4UTjh1
 SMaoLpvFhe/TEv1sjlMaupQqFQkWiUsa8ud60deTBsLaEfqZzVVdja89tXsvDB7U47BxqIx7h1d
 r5ky6HGYRE4VGKaJgEVn4t1xKZBV0bXz77F8fjxbmc4++1fccRBFU+VWqR/aiLfdEf9oj0kMp6P
 sILHiLR9JXWXF3FHYzs6gyy+EQMoRct6sv/Yz12//6LDAMjyfOJTWsMGP5RDmO67epSq7ENKE19
 JSZgUJ5N3TjlBW0basjI6enO8UWA3Z6Jcjy0H2O9ir2FXr0r0YJO6xQWYvyJxg0q4xVprpJnj4L
 dwejT9ySQu/GujI4z+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180093
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
	TAGGED_FROM(0.00)[bounces-266376-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ixit.cz:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF3271557A2
X-Rspamd-Action: no action

On 2/17/26 10:20 PM, Dmitry Baryshkov wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> If the OS does not support recovering the state left by the
> bootloader it needs a way to reset display hardware, so that it can
> start from a clean state. Add a reference to the relevant reset.

This is not the relevant reset

You want MDSS_CORE_BCR @ 0xaf0_2000

Konrad

> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---


>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index bf2f9c04adba..75c192eddc57 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4550,6 +4550,7 @@ mdss: display-subsystem@ae00000 {
>  			reg-names = "mdss";
>  
>  			power-domains = <&dispcc MDSS_GDSC>;
> +			resets = <&dispcc DISP_CC_MDSS_RSCC_BCR>;
>  
>  			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>  				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> 

