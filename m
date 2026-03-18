Return-Path: <devicetree+bounces-277082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKLoCktyumkeWwIAu9opvQ
	(envelope-from <devicetree+bounces-277082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:37:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5CC2B92D5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:37:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB782310C9B4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E183B3BEF;
	Wed, 18 Mar 2026 09:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ecto1oXB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UwWPbkSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46363ACF0F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773825874; cv=none; b=YtCxHN6FQrRc1ygWmMXBlOLzmRSn/sqVE/7ecpM7dMVIdmjaGC8/ClE8yStT3SBgzaDA5q1s0O17Evy2CXeqvxVGjsFPxJ2bx6XWtdods4F/bYZZgu4/ejCiAogP89tbG1BiN8zDtwnyrVpoOLK8k9xddpFQpjrmPvcnkzZ7EyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773825874; c=relaxed/simple;
	bh=mKpALUSNN+vZ+vwSIY8NP+XEDB2kWb0Nbss+jOmN3Cs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F9hplN0zrJ+UD9dFsrwsc9nlRJjfMLGcvxH2MyzbpDdmtPwwcllovffEBGmjlIy6JReFJX0RV/ZZ3V90o0z8cNsBb9UJ5i8OVzsSCnk0ggsvV/5YacW0vOGJRsJJR9btveDNxGr6HFxoVbc6AugU8p6773j2mPloRtWhVgEKKFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ecto1oXB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UwWPbkSz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8WXDS1050235
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mScTVSflKScsMduaq8uFre2oakEknzUSovCM8gwCPbw=; b=ecto1oXBVXVpDc0T
	ZHgRvHx09hQ1mYXOyO+5KCzAm9voR4goMlXdnNchyi+sMvbgneHvQhWumENqatF2
	nSGfvX0t2krxoYDQbZ1nhmnUODN7/78odGoJLr1jb1n+FsiHgXN0Q8okij6h8JVO
	e+/S300VPBnAlFQL0Rkix+to5zwi6gzC04oJaQaNwWnsds350p7rAyHPgTSB3lJP
	7tG8W8/g5DkMYlLE2cBdKMG27iJZGqu/GY2UCT5PSpTWjeY6W5K9vN234GJn4oG3
	+VBBagDh4c7Z7han1GhVoc6cmsmAZV9Rmi0YVZj5m1amcgg+7xOvkVDBnpKEv7Km
	wHsoBw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4ehuha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:24:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5090114c791so49383401cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773825870; x=1774430670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mScTVSflKScsMduaq8uFre2oakEknzUSovCM8gwCPbw=;
        b=UwWPbkSzmFBc3P0Zn+8rqYVzWUobFY7qWtJDYziWU5eTGup7sHqMf3Ngc6GNg5kDxN
         Fao6kYs6QDGt3dQipBRKY82tW/YcQb6bXGGH0k9XscXU2JzXuq58Ow4fDfg/uaN/8yLd
         pG7pc0c9muw6CLgovDuviGNw5Ufj1cH5eTOSxbMoeDVwZjoijKckj53ST3vtERTUBMec
         CEx47jpSmiseKkmlMsfaa4lUP6tbwlrd1phsud7c3AgW2YtyLs/gk8t2H0f05Rvob0j2
         NopqklVntbBae+hTZaAvhNxunYlPnp5rINViqgrY1uvAIaT+pH18UM7cpX+1/jdyE/hl
         PDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773825870; x=1774430670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mScTVSflKScsMduaq8uFre2oakEknzUSovCM8gwCPbw=;
        b=RMzERqzt1Hxs6rsVolOHuLE7tha5cBVhJJacbuDtpj8fKkVv7bk/UxrYnRsVGC3QFA
         Os0ZqQoguSVueH9m+mj++WVL9UvgQsSt4qLVBN/qEOIzu/PKX5IxDHjbE6h+iLLKfVaY
         AU+kzUHTZJdOl4XRZkkKjXA8NtpbmqrVW5U8qDrWKfcp4gpQjms+Z0AULBLDg3xdzkfU
         KSdsWeLuVoupbtXaSz4tuy3h5ee4TDkYK2V1ImFPJ5d1agE6rxBYgMvmnAaGI8WR37LD
         bepjxpe5Cyd45oeW+NX+v/R1L9PR4A1C0GP1nk50yOA8xPtsuGNWvHNfiq8rnhjXJKNT
         +I8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVdx+Hy34JykXyxkF7IyZVq+Drb9xWrcfRbV0GQBBs+uXg/TA/FRJnnGODLcOs2H74VzWgCzsc0bwz7@vger.kernel.org
X-Gm-Message-State: AOJu0YydTmUR9WD9qo7KnDTZptRvpRwAQEUSDozegy3xn/t3OFsn/9bL
	ujPsQxK0ytLBNo1vBnI3d9vERHU4yB0pswAyclacW/fV4MRk1XISu88O5F8c19OhIDknoDXMHLp
	n+e4doI7M8Pm4OcBh+rey5gFBIBcZDL6qrahxj9Ap2a07yMbeSBRr739skXZVstnJ
X-Gm-Gg: ATEYQzwK5/903c7wdoP//cAVEAWer4ZFwWaCUvbdQvhFhX+b9NnZQmvWj7czMNi2MEk
	7524cmSu2OzZGZ85WG1+IV+bf+r1z27FusT85hRW+T8jrqnnLHDIyXJP9+WjzNlu6X0z38H0ZSI
	2RpDq5cEAPZekvXQV/Tt/W6M+W8zqy0jSkvDq9scH58+xEaBcu9ze/wDBpJLMCWjItMF8ZA+kQa
	9hPIc0ozN084FCFLeaCSOg77NuMyCT4zsRkAMmwS/u1bMVQMj7yeYxeopqckYb+9tBW5u7pnUWG
	Q0LusauXbfzTvr0NNipKc3E8qekU1wwKftdj9sj2ns19UTHSvPDDP6MzXMH6XsxlvAtyVIrIdvf
	O801s496S+jciSy2/BH4/lCyog5N7fTyF3L0OHTAbV9fiQhe7sHVm9kolkJjiXsTSVES8XqoX9Y
	VAdAs=
X-Received: by 2002:ac8:7f4a:0:b0:509:2c6e:f6e0 with SMTP id d75a77b69052e-50b14906b2dmr23415851cf.8.1773825870002;
        Wed, 18 Mar 2026 02:24:30 -0700 (PDT)
X-Received: by 2002:ac8:7f4a:0:b0:509:2c6e:f6e0 with SMTP id d75a77b69052e-50b14906b2dmr23415641cf.8.1773825869500;
        Wed, 18 Mar 2026 02:24:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1751cfesm162094766b.63.2026.03.18.02.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:24:28 -0700 (PDT)
Message-ID: <9adc65b6-abfa-4046-b029-1cf112c5256c@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:24:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Introduce IPQ5210 TLMM driver
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260318-ipq5210_tlmm-v2-0-182d47b3d540@oss.qualcomm.com>
 <20260318-ipq5210_tlmm-v2-2-182d47b3d540@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-ipq5210_tlmm-v2-2-182d47b3d540@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T4+BjvKQ c=1 sm=1 tr=0 ts=69ba6f4e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=_mKsZQhdUJt0vTTU-fsA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3OSBTYWx0ZWRfXzzEupLjdakqc
 q6U1OxWjopnpPLkseUYm7PqFdPsdBOWrsaWI9yY16Jx0hMC+FlR+u48GVytC4jjNF8mbLS+ovw4
 EIgnMOoi3E4+VKVC2hLZhtuV1uQbVayHgvgCdi9kDRfJmHXQ2gHqId/Pj/vUPM9FIuq5mIBUt1q
 zPYE2/UpGdwhve+ebVhok0qokjddxnGF+seDbzeSU4Zy/OVt2CD8vVVf+SJCkNyIjXfNSuwmPJI
 XPKoZbZa1JbkWWy6yOVhRbpXcgOuULuwfwVzHUI2ECVp3MLLvfGybUaG48Eb7irL2WgNbGTC2R9
 lQmaEbf65JKv/UBeswNjCcw8m7dfAcxzBsKK6b4LiTIm+MeXeKlJCfIpjwhlndTDso/z8+zdjUA
 Kwz0mER4740wsLm16XZOJ+iocDyioctmLpvGWALzTv0eg34N/rmdWh0WjFrX90VMP7cBoMdS0hf
 lip2tCZO2GFPwEw8j8A==
X-Proofpoint-GUID: A0B3tR16k_T8eSkDHGKhg5J8ThOlTCTv
X-Proofpoint-ORIG-GUID: A0B3tR16k_T8eSkDHGKhg5J8ThOlTCTv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180079
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277082-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF5CC2B92D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 8:14 AM, Kathiravan Thirumoorthy wrote:
> Qualcomm's IPQ5210 SoC comes with a TLMM block, like all other platforms,
> so add a driver for it.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

