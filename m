Return-Path: <devicetree+bounces-277124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGJTHduBumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:43:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D723C2BA1E9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1944B3087D10
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5003A6406;
	Wed, 18 Mar 2026 10:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kq6Ja2HA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/YgvSle"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5094339FCDE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830511; cv=none; b=DQNXgCwbigEkHdqwBHVk3tyYqNBpH8SbFabviPYeiTyZoOY3SSTghfulkARIj3LZtkEJURyVHVCRzofdlDzYvnJ66e+6b8T/3OrLthRdA3FpbFI5vmv9iJILWL7DMBscM4KNwBcdQYZERjNOVKRhENfeVEevsH22shNFMRMHMVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830511; c=relaxed/simple;
	bh=z8AZoCpOuAlJW8XS+8oFqlaUsdqC6TzfLRME3kPTvHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BgqvnJFXwSyY6wdHYGbBB+yRpbAh1fzVf5OBkn9bfT2esS26E1zjIP6nLcqoCEVXGWPUmonIFECek4cI5XJ+Z3+3lwIM89In6XyRIdX8KgIEZu3N4DeG69inM3/W+lMpiMmBjM7V7xv28KxnUo6WldoQIo+wAFXlso324bWc1qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kq6Ja2HA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/YgvSle; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9Ms6R3358377
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O7JvTp7hmLFziG0oBbkdI/EukWfFdhSsnVbiUF2XlbY=; b=Kq6Ja2HAc2+l893b
	Bl1fRjPOl9LPR7QwpqNWM2D5kGttOc0pxKDCx/lp0IN2K7A/ceeq+NPnezV4w/jt
	Xxgr59mVNMfCz4ce9CgcXpAPpBQ8CoI4qHhY6XXTGbgdxtHZ1wOEdQI45YBGFjHw
	DDQpuovSe4EwpVSoBHPvs1Q99VPWv6NzCd/8isRSDiaTCIEJ8kuj0rEcnRxfPBMF
	cdIMO60jmLNHY8f8PxEy5YKVYRX4d/3FWrbaXR/uszCQm4B8Iiu1lNuQ49wOKKf6
	+4D1BDrHkkKxH2gBwljbMvY7YuKlfHuePV14//kuxlvS4yQ98KVy9TPlHnBntHQm
	KEPBpg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb09xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:41:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50921f7da6dso14190171cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830509; x=1774435309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=O7JvTp7hmLFziG0oBbkdI/EukWfFdhSsnVbiUF2XlbY=;
        b=L/YgvSlelzZ41VqjkchOZwOExrNRkHkRYHDHtSTGT53vdKBM32ICs7MRZ5AwvT1tWO
         q2yRYHJ8CqZyMlsu89nTsf6vJBk3lzyoeoC0SNYEz5pBTrGev2bUEJ2fRCu+QYY4XXY5
         GNucK6rlVFB7UtbfrEqLpz7usjBQUSEixZoUQ3CkhlJ4JH5TV5QugXUFcJi6TXJN6HsQ
         aYinCN5hQPVIqF7ukNWQYDB+2MgkPlLiV92UCdusM5SDJ5C84+0zBITRs+ElHg1kglot
         BPoojOAAboFStQXNfyOWyAxpXUOILO6NXQAHDCSvqQvmtVcxaPJ8lhqCqsChklZnYinv
         vFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830509; x=1774435309;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7JvTp7hmLFziG0oBbkdI/EukWfFdhSsnVbiUF2XlbY=;
        b=GtaGlc4d4keRq0jcjt2gxPTZ7iKBCu+uGD1r14u2GS8uPwDRX2QjLqT8fhrbiYE+sx
         xWbZ9WbHCpbyuALYNu1oOOyvA3wkQlpO9dLIvpAnvKjRJ/QhnsoZ23vamBVgNMLKsam5
         DDcLL2f5o0hRrFh1TywbFr31aMw24p8HVS8jRs5CeMO0L0EAfo98BCbHBFjLJGJ0k3gl
         ilCQy6xKI/F+pXpLxz+CyUH2Sdk9nsCMbNQyp0cmEdFcMWS+HHKctriKDGAjxZw3AMas
         ol7cz9Azp7vQ9W8GmiSE4UGsnM7/zdRamrrLHYG+tddoT5WoCb1GogWzgvILrOuskHHH
         YsfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbZb8ruYHv3640vQS5Kd4P3ZZmM5Ow+cXDjQc9j2D5sY4p+JfjEHnMFkBD1dKcg1Q9zFLZyv04K9Ya@vger.kernel.org
X-Gm-Message-State: AOJu0YwU53E38Xq/+Fvz91GSsAKiTHq77EJ13eulWejAfGSPFl4eGFhL
	In4n3jW9Vbf2GDPsLZIM32/qUdu4NTZpw2rtCvZd105DR+Nh2Ue65IQpU9UhI7/s882o9nVu9vk
	dv20jKmdhwSAQTWt/j4tg7W3TUITmH432Ol5YjjIrBRPY6b/CIKAj/AXcUPrNkXtG
X-Gm-Gg: ATEYQzwc1xL0D9ioSuDoIyJGtICoXqiaq1xuiGICHJkKRZnRd8Kq8wOKtjaWqHY8SZ0
	FCq1Pyrb5CH/8K6M+PFnW0le4TIHf2UKaLPyY8nVuGteLaUm50oppY+4nwtJkgnoBqgOHlsjTo4
	/jC1RwJ7JRLHokd/SVRbL06cM879soJPqaHKl/oTPe/msSwQvhGQOg9JbskZvj92GA0DG9AHtVd
	JyP1D+Ba7iZSLX5WCSrDYY0T+ehhZgFXVcl4TuSfvunBqsUcjbQNBtayvGfgtPXD4u01IabTsMV
	hpQh9rGo+TU6CxkqTVfKlbkktxdyNAuwMbvEJNcfdgoUnKctD3P8E7YKQI6EzPTkIm0iXJVbrVk
	dPm+8zk17U4CmBD8MRB9TcyRxD7zLsFOSBc0acRtzellWjxzn
X-Received: by 2002:a05:622a:a:b0:509:3025:ff59 with SMTP id d75a77b69052e-50b147947edmr33568251cf.20.1773830508727;
        Wed, 18 Mar 2026 03:41:48 -0700 (PDT)
X-Received: by 2002:a05:622a:a:b0:509:3025:ff59 with SMTP id d75a77b69052e-50b147947edmr33567931cf.20.1773830508283;
        Wed, 18 Mar 2026 03:41:48 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518a3d78sm7471280f8f.34.2026.03.18.03.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:41:47 -0700 (PDT)
Message-ID: <0d3f8293-f38b-450b-900e-45e7486ad3dd@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:41:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: U8w5jSZYG98ALtSIvk2bgIbZo6sYmKGG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5MCBTYWx0ZWRfXxApBqWviiVN2
 rwyVBOpN37UgVDyY9nt1942DNy1/5XJ6DhEcDh+2Z7ZYiHJgJX+R+ZKLDOBiZORP5ZofTPFztxQ
 Ee3/shDfsfoA6BDe41LnC82Z7FSrakJ1HLeRvoo4L2ktMEvP0U7NEgnF6Y2wlfpz048h1UV4fv5
 d2l2Bn28jMRX9/1WHPJIfuPLoj5Mi6GcIFVPW6uS9xjrQ97u/6OuXZxdUhKtqcc6biKD6Fh2Ahw
 UutQVKqqpVmFzxAlpAy5gDIz6bMg8iLOKWpGPSahirKGZdFCKhrkxbEq16a1ybdGSu9VLGjIswu
 SMLu/Q3FpRF2+V/AIwksRJ6723hT1b3CLuT3lCx/+GIpMwJCqsgjo9fDBNZ90sFZP1Tje37YgfX
 eW36IPo3fxpBImj6lL+iS6QlVRUQbqYO3RPM8whJB++GJVIBuTCEHw/e6IshI1V6Y5ks+GIFAK0
 qv7U06y9F2FbHx/00Xw==
X-Proofpoint-GUID: U8w5jSZYG98ALtSIvk2bgIbZo6sYmKGG
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69ba816d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=sHhZwoeLBXywSJo5pqsA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180090
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277124-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D723C2BA1E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 11:19, Abel Vesa wrote:
> The MTP is a one of the boards that comes with the Eliza SoC.
> So add dedicated board dts for it.
> 
> The initial support enables:
> - UART debug console
> - Ob-board UFS storage
> - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> - board specific clocks & reserved GPIO ranges
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Parts of this is my code, so it feels odd to provide review for own
pieces, nevertheless I still believe they are correct thus reviewer's
statement of oversight applies:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof

