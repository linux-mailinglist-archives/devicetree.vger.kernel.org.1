Return-Path: <devicetree+bounces-258168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELaKJ4F9cWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:29:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4302D6053B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AAAA53E4D91
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35C434F46D;
	Thu, 22 Jan 2026 01:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cs2UY99w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hCI4L2qz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7362C33EAF9
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769045150; cv=none; b=QRdV4cR5ZnuUxxnFGfNx6spPkBeVbIyMmwqXDOhakOL3XDt5UuMCw/E6IPI/pDpDWY0YcVfMJrXfYGw5jLoulcEkCX2mTlxHCZKFq9Fbz+4YcIwwUZnE6MQ7WzByrCFrJxpG91+5AGqEh6YOlAeVHcKrdyo5ng2t73xVhv0NvF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769045150; c=relaxed/simple;
	bh=+H7cv+ofy5HCd0ylXdnkPGSNu/ZiNUCQ/LKI/BhC3vA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SWDySYbqD0qcO2A57cVy25zHQSylooGp22tG/16FGXErKl6bO1MA5fvYH/WqYGDUUB/4FDmJ75zBSr0o4rdvif2ErMmaMbmcLBRTw+21Imktead3V+IYCCoxytYEMLsxdggHv7rXpC/CRsNi5yX66ao6yA41QkxAB+pjKE7/Ugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cs2UY99w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hCI4L2qz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LLNbEA788974
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:25:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nTDOIcglAyeaV3ZEuS/tgzsB
	4te1U5wxfUmhA9VBRio=; b=Cs2UY99wmNX7qH8t/z+XqKX4/jbFTsyEPKVXQ/Xa
	P6HHPW5MdNK4ATUf9C83y4hJYa/E52C9NGmEIhSY2rVeGIdcgupSXMzrwO2/8FzO
	cfAzNQ7Y/914ilwesmnZ6QUNMbA27//XTXPWvF2vKGFeruKQ8gD/hwkcIGPJpCOF
	0h0hCFJA/3l25DVb/JlMUJX/6ydBUbjsvKYfRTrj3UerJaIuknv0ILb3c3fiqrL0
	M2sTanjQiWS7QMnKOKzApog6eBVDl4KmMzbe85OqpacVUJbMm9QOlqCf1XoL0ue0
	CDkrPr11AY6UJhAW6oq89h3Bd2tsycdJSy6b6hAMEbdE2w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6p1ghhb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:25:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a291e7faso156703085a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769045138; x=1769649938; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nTDOIcglAyeaV3ZEuS/tgzsB4te1U5wxfUmhA9VBRio=;
        b=hCI4L2qzNdhpuaXR3lfVOHd7sHRTlMqr2J4ZcAxz3tfWqj2Gqv4xvGDzjjuOHRL3ih
         D6vejTY0BUTZo7dacHN47JF2vCamXHsCiZzqmQZiuonY1t7y7eJ+X70/6ZrjBEK8RUvt
         zfYxjgtGJgkVNKcz04414SfbH3PznHmVszDWm5YzDRwcn9wxPHPeiUMBdJlM6K40Sb+A
         6TW7oAzICE846ejzv8OxQX7qo3YRV4IN3uZY4XORldd+osRewdnSG0e2iCVI8anRSTZX
         lcR7TUob3EYqa7eaTwJyxXtc1OoEnu7v9+leKzhmz3wKJ/kf3aqDH3Safn5mAHoBsaHw
         cBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769045138; x=1769649938;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nTDOIcglAyeaV3ZEuS/tgzsB4te1U5wxfUmhA9VBRio=;
        b=nm3NpqN7o3+nMAVMXU9tLeRs1P3asBUfnKVKdj3edqsYHJHvryddwvnM03M+Cw7+js
         d4nwNooIIpBz7jD79CM9l9d7zkQLWI+pdbdFTBQvi2z5sXgZsvT0GOxvJOUV4KgAZGvx
         k14uoTAIjE8GMrbFb6PsGdv0eKVAgDG1e8IeYbllABq9G7lhkqBqh1kDljG+xCHpqnb6
         SGRS8WB+4mqYaSL20ByOzvc48LFfUZ2xf06l4nHSq5WkNYOLyQzYRCiJ3MmJYqETsFqQ
         tn2vIC9IpNay1tfn29vj8oV7xj7HE9g71LPRKl915gcQ2qEMfOpFbJsW1yQMaeQo9Te0
         81mQ==
X-Forwarded-Encrypted: i=1; AJvYcCUek4/YVNQQSXs02/r5bhuw0GRz8fwBMfa3rmBlL7oPbLHUUpcXgrC0tsLNL91bmZFoxxha2NfV9HEd@vger.kernel.org
X-Gm-Message-State: AOJu0YwcI0q68jiZb9xE0ACg2fRznzKHMpcbqvWq9N30X7UpjBpDKCZk
	pGYJcNXSZyqN2uB8TVfKrE3ZWlImTSn7iyKRLYil8OLMxy9kLGvTmiskgIrHYAxQQQcoR93y7U5
	BH/j2nVa0siMbnRZ8pJIKMvXgJihehs2IIwJwdkGDBiGgt3k/tw+fZSNoXSuoz2+m
X-Gm-Gg: AZuq6aLddR4lmrOFMGycCy7jZVeBRFjXGnbzrvmnYPA6WdIBeHPfSZ9spwe5eS7wSbn
	45MId518gYtsYAIrPFr3tgPxpJ7vQmaYH4ayv7e6KSy/dIBRhy5uM91cP0YuKQZiZ972z5D9DG8
	EqbxGBNTYY5dg/9Yy93HNLhNfYvQOwoCIou6ORPVjav0gh8BAHWb9HjKgtCrbYlM18PxM++rj+O
	OXSwgb93woRgsALAyYacHRWrn2ir3CulAX4S4yBOHeFx+heYMWnU306dTVYQc+4wqx/PlfnRmkt
	Ffz4kKzlGBU3c2F6Mroiigm2L+x3D9giEqUB2Fq/WvOLq7RUugp1HhTpMrFZ9TLwwEZeIBuDL+l
	rQKw08/KIV+st76M90AmX7HZy56IEC1cDYy670/sLpEyWVVOgbZKCV48S3dzc72b5iJdAEwoQh9
	Uxtv32o6Zc2I442Ij2LaPRW+4=
X-Received: by 2002:a05:620a:1991:b0:8b2:e70c:427a with SMTP id af79cd13be357-8c6a695659emr2710435385a.44.1769045138410;
        Wed, 21 Jan 2026 17:25:38 -0800 (PST)
X-Received: by 2002:a05:620a:1991:b0:8b2:e70c:427a with SMTP id af79cd13be357-8c6a695659emr2710433285a.44.1769045138026;
        Wed, 21 Jan 2026 17:25:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385c933b014sm557071fa.11.2026.01.21.17.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 17:25:36 -0800 (PST)
Date: Thu, 22 Jan 2026 03:25:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: qcom: document the Ayaneo Pocket S2
Message-ID: <ith2qszksbrxnbnt66ytnzuje5id2iexzueuyjbftb7t6ijmnt@rgejkddzzqea>
References: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
 <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-2-bb3f95f1c085@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-2-bb3f95f1c085@linaro.org>
X-Proofpoint-ORIG-GUID: F0n3cAMsAq8gj5Oig9AWuxhCF5DVWsjq
X-Authority-Analysis: v=2.4 cv=N7ck1m9B c=1 sm=1 tr=0 ts=69717c93 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=CiRNHZe3ZleBFWjHar4A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: F0n3cAMsAq8gj5Oig9AWuxhCF5DVWsjq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAwOSBTYWx0ZWRfX5JyP1R4Mi6LB
 u/tr0EQaBqfD2MQ1+W713XLthJ8rH3H2vaaDw5/vGalgCI9yf4Lx0DI3ceaNYhATdh5PFmiiMAA
 RE/ahthAOoajPcvhpvtIxZV3Pwj85mzr8S9daXPlJoEk2K6DW1YAp8BPRIhOOC2LXP/JHO/9EUM
 UQxf69fRYvbE9di3bMaA4s41wxwuZrqUPAw4DMIMky/cpw4d2HDrFVEZ2q4TpFIx1g+UG82Qj2B
 R3F35CKDVT45ydEBjaqeEWkWTODgd/jNmPPwDqW2IMNI41sVBQby0B1pCwEt8VoUuIRYBVbBBOh
 eUJrGZvy1jtQlzOYiCOTOGUa6AiFBlLkbiqzlrczvhrb6nincmYQcz9L0fpZTnhM52Nea9jNAVU
 LVYaRJGtD8xt5v9qykmf2W/UYy2GRcT5890j+CaylBFnkguFv/5lWRaZirt2MPb6I2yigBk3yNd
 X/1HkkjO9fORKXYrPhw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220009
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258168-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4302D6053B
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 05:40:27PM +0100, Neil Armstrong wrote:
> Document the Qualcomm SM8650 based Ayaneo Pocket S2 gaming console.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index d84bd3bca201..c6786dac5b59 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1045,6 +1045,7 @@ properties:
>                - qcom,sm8650-hdk
>                - qcom,sm8650-mtp
>                - qcom,sm8650-qrd
> +              - ayaneo,pocket-s2

Shouldn't the list be sorted?

>            - const: qcom,sm8650
>  
>        - items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

