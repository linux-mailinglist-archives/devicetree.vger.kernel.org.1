Return-Path: <devicetree+bounces-274386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC0vE1EmsmnlIwAAu9opvQ
	(envelope-from <devicetree+bounces-274386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:34:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF3C26C473
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3203A30229B5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C337537C932;
	Thu, 12 Mar 2026 02:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bU9DG/0n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DFvuEXS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DCB37C90E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773282892; cv=none; b=ih28DwVT8+a+WxBngM2isJLQiN4Xb28QYa4HD7wS5erh4eAnhlwgOG2OrfqmbeHuE/IEqo2LXPBXG7yoFykqifwVD5EO4GFq8MewZ4nvJsaWr2dIK5ziQqpbsuLWDAo7JiT1N2vdsUp8uouugLPR0aR2yARpc92Vh/2vy8sVePw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773282892; c=relaxed/simple;
	bh=/nqZ+f2nVivSgfHE253neYkKdpWA3AR30w8tm2ouLLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lo8Np/In1h2N4QaxJz1y3p5PNtgNblUtVchWVsq8sJeVlaDPk2oCGTPnjF2qZiM2R36OxsAVncN757MlGkBMEsOGWI8zPxNMeRhSlDIxTCkphvGOLaEk5f2t+UPYHi5odlbyIpNdAZnIm3aKt6tKfV9LS9HB+MRO9wOVvR7/p/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bU9DG/0n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DFvuEXS6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMtxF4132875
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:34:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iEWRLawKUMcKcgnXaUTfRx6G
	DeVA4xrQwkEkodh5kUE=; b=bU9DG/0nTc66IonE7idQ4MmHRQkftf2PntUcGNH0
	WVCTWF9nT163RZsGB3ONPocLRXedGPpSKEk9yGg7YfLGiDFJ2JV7NxJK5vDtg+yB
	ql+baT1dlxX45Z8JQbN9elr43UoQtzuUNDYvEQ6ZbXekZha7zz/EaPKbDU0LQlTq
	dlg+8KEyATszjHGXvnML4oPNDioD/UvpYCKOFLxoGIR2V2RdxcCC6Vn3rGYNKTyq
	CSIOnnz/J8gJeXp+0FrLw9rFKXNEbNTyrHZjeLVfFD0zTqdsI6VABJsTbR9/qmBC
	qUu7SZgQINJgaLTnVQ3W93uwnmfj0xBpOzBTO5My8PBz0Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w0jpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:34:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd827a356aso354263685a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773282889; x=1773887689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iEWRLawKUMcKcgnXaUTfRx6GDeVA4xrQwkEkodh5kUE=;
        b=DFvuEXS67t5MU/eOFubbpLoM396Db2me0bk5AqmVAuorb2nfQV/ICzrq/TlSlOD7JJ
         CNPhqgAa3xms/nLdmZ+kyG32XdgpKCy2Ud/gxjvQbj/OmiJ23DT55I3r2C+jdfVcr4Pm
         E2468X3xz8LgDAl5/4BqTzh0s123YGcFBgUjFXXEQGPsFh4JymtpOk+zO9EkIS7Mw3Po
         mxOS0ZrxuizX5tlC9eIXbyKszImEE4s+EeHT8+Yw22dJ2qT4MScQsYrXnbDSUK2n/O/F
         zd/RPsNz5cvGmbRp3EDJHckBdFG9VlpAIaXSKCuEOL1Hot3eFiYfoXl70j7pKDcSUvuG
         D+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773282889; x=1773887689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEWRLawKUMcKcgnXaUTfRx6GDeVA4xrQwkEkodh5kUE=;
        b=Vs3T8kJo7f5oqGj43DEOkIMHrPBRiocJeRfRqyKugEfywI7UNd8To4rH5BnHROC2rc
         bnYGzLsIKhSNLbpnBqN90YIE/4EJip4HwIUKwG/QtEAh8MZIYoZuKj0hkog5HL3mj7O7
         XpTSqiP5HJbAqWNHzvILEDGPQMb4WF+Cg31TJL6qKRYc3g/mpCmJ7JegeoHHNdhB+Haa
         35MCdaF4k4xjEJo8abdfSLtvKE413nwt9A4t7l2KHjstnhGIjPBrKVFa83kJ3fQW/fgI
         CezAv4zvalHK9pVCexVS3G/+E4zi+G1fwL45tHL/MJmF9rAZfS9/1cT8m2MYLfJAf3+M
         K5fw==
X-Forwarded-Encrypted: i=1; AJvYcCUTUSIggF3QnJVke+lx3AW4JqYRbhGXayBwK5chLggWJbs9yLvFdeZI/szoBgdjtSxsK/L9l7lWsTzk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5pfinkmmz+EU3s2nO3oa9VoB8HLMIO4/OgFc2LaSUHajz5bdm
	VAvoZwb3/wBWjEYado1AyvzYT07B1ui/8urmYp2jRareqlXxp92mYrHSX0LN/IDRo/uwEXFVZuP
	ySpRZdDGaXlIhyejKKZQ6vio1q97I6bXexRh4NfRRjVGwMmPhQmnAJgGQfLwoEKjV
X-Gm-Gg: ATEYQzxHVI5AtBtNnw+PZ67NBAPMcBl6V7KJv8YUJHJHP25C6ZP5Jwiw7tH/7J8Xd4v
	c7StQezgXM571V68s0ZyBc8v6+tEg/RpeqKrRubtAFFrS5u/9udZT06/+YO4Gxs67J/V6PNPG62
	mKO3VhAx7/RiEgNVGbeeb5cpdnssJS9+vyJVEuyKSmB0iZPEKNQ+13ixuc2OGCfG8ts2eLmH8xD
	17cPJ+EDnqXEUgabCjT3Nh78FWhseTiJtpcjyP1SOgRw34xerUiZ2ZaJE/Hs/Yjg29gcckXye+u
	bn8j4k5fXe6zz7vpyHk+hSOq/gDMjBoISevHJN3nSQulm3BAWvB94/kF9XNP+F2TDupzzDJVFDU
	ib2YD/qIyVq9pnBAzoaE1V242R5byHXvCsr2sn3xrsH3WLkt3OiISxyyktSOqmLFvj5cZ8wdEjB
	kcGH9oeXD9l0gg5z+D179dpM839MiW5hJnQdU=
X-Received: by 2002:a05:620a:2688:b0:8cd:8d79:6c63 with SMTP id af79cd13be357-8cda1ad7ad7mr618460885a.68.1773282889228;
        Wed, 11 Mar 2026 19:34:49 -0700 (PDT)
X-Received: by 2002:a05:620a:2688:b0:8cd:8d79:6c63 with SMTP id af79cd13be357-8cda1ad7ad7mr618458885a.68.1773282888804;
        Wed, 11 Mar 2026 19:34:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e2e1sm693900e87.24.2026.03.11.19.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 19:34:46 -0700 (PDT)
Date: Thu, 12 Mar 2026 04:34:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] dt-bindings: usb: qcom,pmic-typec: Document
 vbus-detect-gpios property
Message-ID: <m326m6tjiiatutb3s7jhr472grmlvkbg25cqf5gijusioaszxm@6bkxef6s3pyy>
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
X-Proofpoint-GUID: BC4cHqvsJKXKCq4dZBy7xQHobDU8n3eY
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b2264a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=843x3jrLC61IQHLzAyoA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: BC4cHqvsJKXKCq4dZBy7xQHobDU8n3eY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAxOCBTYWx0ZWRfX5/5eoQNiReU/
 lVop1qSKHDZK8ee7BBahA0patPlStlHHPmqh7ZX3Usvji7/+3zxJiFXiqTosLAPK+VaVNPB9v1d
 OYOBXhwRxAtcH8TKIHIvT6/XftOGtgrNkXWDvCPBaUmE9YRnhHbM5nTLf1PU2nzS3hpplCG5HMt
 iRJ/DnCythsZXi+iHeABOTZQyjfIfdnsrV9+AaJsLGwxRvTG4TJunMk2NXp4bfj4kU5ZNTrth7w
 IiIgr/Rc/zz2v6Gq8e69Db3jZLpTDB5Y2xYqvbJLIa1OzvWehtCQnFmvhKZPaad4GUipcl10IpI
 8YfpTWNYWX+ccRb7KlPg8RsE+QqoQ4T0sfBSgYCIRllWAXV2/zsoqTTJSQ9aDQUd9Kr/jbdLmBk
 waOA7Z5Q/1Y2f0iMU71hw8XnQMw/RdEWRusUqmdeFsfPtCkPnqLqJlPo4znfeJL7F8HevFfUL12
 oduVBaUcpuO1MItniDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120018
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274386-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BCF3C26C473
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 08, 2026 at 11:20:27PM +0000, Alexander Koskovich wrote:
> Add the optional vbus-detect-gpios property for devices where the PMIC's
> built-in VBUS detection is unreliable.
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
>  Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> index 6d3fa2bc9cee..f45bf3e34c03 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> @@ -78,6 +78,12 @@ properties:
>        - const: msg-rx-discarded
>        - const: fr-swap
>  
> +  vbus-detect-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO used to detect VBUS presence when the PMIC's built-in VBUS
> +      detection is unreliable.

Can we use vbus-gpios from the usb-connector instead?

> +
>    vdd-vbus-supply:
>      description: VBUS power supply.
>  
> 
> -- 
> 2.53.0
> 
> 

-- 
With best wishes
Dmitry

