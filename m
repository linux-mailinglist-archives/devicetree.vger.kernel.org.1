Return-Path: <devicetree+bounces-235211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5F9C3591D
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 13:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17A111891853
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 12:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85E3313E2D;
	Wed,  5 Nov 2025 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EBgt27An";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kNS0e2iy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C61A313526
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762344714; cv=none; b=hlUI3x3I7asPIeKzT5LnQktBUjaOAuCHpHwMll5cWPcM4v5QVFyuQgFJIx5TT+8/PlycQEDBqEyegwpZ5Xn14yGC//N9zvR2X4WlQfq3Tvok2kKfQWb8yygql2DlTGIEDWCLYrSkrclNDsPBohgPBcO+TacHPl0f5XpMX+0t9gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762344714; c=relaxed/simple;
	bh=wz5ENZt5Ic8O9QlHYo2XewF50GZ2Oa7k4QWZhPiExVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iEl3cMVGLwUSEIX8h2UKAmgTk05soB2gPO/7XzDZL6Tt4sCjmt2csQJRX+y9Kn0TS58pMJJUkOrdsyEUoIjMCV/pQN4qCApX69kmAULTUbgiOb4zXUl+S81JUgfyn2RmpwfCkJ/rr+NHr73SOBIIbOIGIMJOf5pAici72ld+GC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EBgt27An; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kNS0e2iy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A57u6P03165204
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 12:11:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=snsQD4l2AXcjWmxN/fszbJ7h
	2kOikH95rE3CwRz2zUM=; b=EBgt27AnuOFLD3tZKyOpo6xD83u9A03VmGfBkMds
	lb4PiRYRzac2NJUvXa25gcwayfM/C83TuN60XmLEvyvKWPb2RnxBWFVfmkAJvjc4
	IUzvWYXBTaE5fvYx1WplcRSpt2ajYXpCQtvuGYakjmSqw4Ct7cS9dWTA9iPgrsni
	plxpBkZ+XqA1YbobP4Ez1BIiNFmpwJ5vF84rpnN/Iy6iAlUPD9+Bbqhl57qvKe0t
	Gmf4VZSy+E0KqIwbt8qVP8wFpIksJPSQJStcFGwGqKRUz0NZR3OUohHptKpVtxmD
	MGYVGPJIzmsEgR5KIPmxdDujDOY4D2mmAbF0gW2bKlU9JQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ketkgjr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:11:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29598910dd2so77779095ad.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 04:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762344710; x=1762949510; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=snsQD4l2AXcjWmxN/fszbJ7h2kOikH95rE3CwRz2zUM=;
        b=kNS0e2iyLPJILv4WOTvoqqEIboxEAPzlRtaof97PaPohmV/PP4hzg/s/K5QW7hbTTx
         gA00I/P+1TKttzsc9l4/RENApWMH3aF6q+xgR1akN0c8oUgSFxK7Qt4iBOlOEb4WFzrl
         tqIMWHwr70pX5Eu+T07HI523izbkY7ieN7iWuYaYFYB3DBjvltMIQ8wlxUs91Yr8Lyja
         2N0Cn2tTlcTFA6H3ONy33SreQmdn+P4V2RYPp5qEW8rv1vGit9tRu5+Ijo372WhiaeFE
         rEtBIFlJErQQ1bFut1q+pvHwdqWU5fOmwqwKSyywo8xnFRrfnXY/YVI8kRbNYlUVYMDb
         cTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762344710; x=1762949510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=snsQD4l2AXcjWmxN/fszbJ7h2kOikH95rE3CwRz2zUM=;
        b=PPAhCI6ezWYaUFFFewRjuI8pYi9W7JQPgdftOLBHrWTTUkJrIKR/GO4bJZwuXEUbhG
         zquXIJNJeE5uL0d2Z/YEnO+DFe2mBkaLzID8r+W2LPIRI7+eD41tOIAYbxvYM4si+FMt
         uUuV1O72ih+q3BC8ldkFbhxYTqFPi5blPBRO8cQEX4Nx7Q8hJsJHih3anYduEWjE1xCj
         +Vcz4iiFHdIGgEuinhY20NJL7PgW9fgeD8IiHamtO7ulNRjz9BxgzNAQ1bYpqjO61EcD
         uz7g9OiB0f4lcPoNuOq+0Z14IA5lt8GVLolP2n+rMr702N73/BEO0REbg9NmFYfzOeKd
         cDPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx4KnjkWerjvnTWI9NHqcY4qqEsaFI7fE7VTcTUDHfsg7VR5ux4aRNgIaqBuoR/Lq5vyA8icW9TaUp@vger.kernel.org
X-Gm-Message-State: AOJu0YxlKzqII2CiFEnYjEWnN+4lvj6jFBoeKl4ke8NFN/Ch2d324dGT
	Cz2CCoAFELUujkrzTooUZZMY5e4kbZqqoRpsBtKGlqhNTIDwzui1E8eZVGpS6+hlaaESIbWFiKC
	2sydSElu6TWyGlALfB9L+bWeQ1APWE21X07VhRSYJ1mWRZ+8VYwWQy/jZMnsq0AQM
X-Gm-Gg: ASbGnctnxmddwxpygSuX4cOGfCCYs5Gsl8u5GUMRk1Z6AdhodYiL4pNbuHNDPOjkO+d
	mzoS5dZcLWvEj3uX0/7PkTJPtjQYMMdj2qTwMoG4Rjnb8JK3fO6xY6KX0SASPZUj6kjKB33IB0u
	elXwN9ob47NgN24hlL3gbc/QKDqbPdu+v7S+4k9LnSLuM4B2rR+YODMVPIuu+1dwnLwvWVzCFGF
	8zy9LI1wADgHa9hpALI/hbYQyhiIe9dgVzg2DsSSpELQFwi5a8wcQx0foQ6cmtmAhC+l69/WjxU
	/TnoahOBB9VhghUYOcARn1+YLWr1lgqITirgd6+k8obuYB21IqP5DPcqzBICVARcg3BIbwUX9Ic
	/5PKpEZ7Az/PrkBACoxEfVdVOxmPR+FVt
X-Received: by 2002:a17:903:244d:b0:296:3f23:b939 with SMTP id d9443c01a7336-2963f23bebbmr12373315ad.42.1762344710494;
        Wed, 05 Nov 2025 04:11:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiEWa0ffKN5nZV90leH7AWVaVvhnOx2CMq8Af0ffJqTrfJblGjM9mAfQcc/g0CeJMjYVL/Ig==
X-Received: by 2002:a17:903:244d:b0:296:3f23:b939 with SMTP id d9443c01a7336-2963f23bebbmr12372795ad.42.1762344709954;
        Wed, 05 Nov 2025 04:11:49 -0800 (PST)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a60ef0sm59997125ad.83.2025.11.05.04.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 04:11:49 -0800 (PST)
Date: Wed, 5 Nov 2025 17:41:43 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/2] soc: qcom: smem: Register gunyah watchdog device
Message-ID: <729d0806-0f92-45a3-ae36-307513f8b808@quicinc.com>
References: <20251031-gunyah_watchdog-v4-0-7abb1ee11315@oss.qualcomm.com>
 <20251031-gunyah_watchdog-v4-1-7abb1ee11315@oss.qualcomm.com>
 <nnq34bfbbi3satxiqzaouy5pgi3obyqp76avh2ipyqxx6w67td@e7eqehjq7iww>
 <40a6395e-26f6-4bad-88af-d89479b6fc28@oss.qualcomm.com>
 <abicharluq6bm7gbngkbdc2hobcfifcmazh7oukcoufsrpcpse@ml2wccwe6s7i>
 <599188b5-cd2e-4667-a91d-04cbdd62cecb@quicinc.com>
 <ykg7mwgncmvdap6xzyhmgxu6ur62zzfk5nd3tqrkivugn4w474@rkazrlhwbhtj>
 <2ef1d795-5cdd-4465-9333-16a02207a806@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ef1d795-5cdd-4465-9333-16a02207a806@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA5MiBTYWx0ZWRfX6lCQXVp8aulL
 XM2Nab006GSuKBu9nQFreRvpkVN8me1KGzfDKE8sd5fXrZwzGzsDbp+3/OnqWiGZN2zuOga9D+R
 9KFp08MHznxY3lCYQOUfCT/bsFdjzfKBliWBbKLfAr4Y+WvVkua87ebyHkUC8KScyaoB2fBlFqQ
 FO7MXUFnN+TRwcl/ZKzsLIk5Xh0uH7ouvNZ/0UaZ+icpHyXonPF1PrDkUuARnAuUEiQh2JrXGp+
 T+GwhDExZMx8nJ6TwUhQbmWfDrdBBqW1ypvJEV/w2EUAUPylMgI92pi7nRzl9q5LgiPjxfjjPKM
 J3zfZ+bJ7OVUmXXZHrH5xmKYxVQJV3VDnNPPHnu+ghU+e0PEXh1mDEK1FWT5K2/zHex2pAwrSlo
 uUfbmc+InXBaPsOt30XCRxDatWfLhw==
X-Proofpoint-GUID: M6lqmqAp8NjH4TEDLCanHbxzWX6-qQV-
X-Authority-Analysis: v=2.4 cv=IdSKmGqa c=1 sm=1 tr=0 ts=690b3f08 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=v0qggLAlYnFivbKH520A:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: M6lqmqAp8NjH4TEDLCanHbxzWX6-qQV-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050092

On Tue, Nov 04, 2025 at 10:33:52AM +0530, Pavan Kondeti wrote:
> 
> > I presume if we determine that Gunyah is present, and we haven't put
> > sbsa wdt in place (e.g. during bringup) Gunyah and Gunyah WDT will
> > handle the outcome gracefully...
> > 
> Yes, we are told Gunyah support SMCC based WDT even if it emulates
> SBSA. Most importantly, we have STATUS SMC in gunyah-wdt probe before
> registering the watchdog device.
> 

Thanks Bjorn for asking this question. I have tested this scenario on
Kaanapali. Since the initial platform support patches have added
watchdog device, I don't see gunyah-wdt platform device created. When I
removed the node, I see gunyah-wdt platform device is created and the
driver is probed successfully.

Since this patch checks the device node presence via
of_find_compatible_node(), it does not cover the case where the node is
present but marked as disabled/reserved etc. I think it would be good
to add of_device_is_available() check as well to cover this case.

Thanks,
Pavan

