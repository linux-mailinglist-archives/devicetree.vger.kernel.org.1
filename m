Return-Path: <devicetree+bounces-254769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7489AD1BCD7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B22DB301CEBC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 00:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958C01E9919;
	Wed, 14 Jan 2026 00:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gs9e9L7h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZNe0Yh0b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3895C1E9906
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768350442; cv=none; b=LQOLMklM6Hm1810BXHeQed1vnOHrPRNThOjCge6J4cKK12+pWlF4OkZXB2aWgjI1YSfA10KNj67/VeX+FarzzjajysbONyplIxHnK4WWL5Do8HO15EsP5pc9a4mlM2ur7i4aTR/SdkoyuJFAjj8tUtG/YzH1JhB2BBHmwUEAHv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768350442; c=relaxed/simple;
	bh=NNyCYOUi4U1fryuZrqJRFpStQ8gdylg7PeafAQyPzko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NSDv2u2Ey0f/i1QGMO5xkthCFNTcED/rW8h4VRcGl15aeCMr40ukw0agB1ggKHOTjOEexM0KcWni1I/HQyQXDkfPcYCjVgSfE8fWEcLXdVCFHnruG2t3Qvp67bAGB1z4/2Psyl2Xf6lI1RbY8F5Ka10rk17G5l8Z64ELoWpGFGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gs9e9L7h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZNe0Yh0b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DNIChC1287280
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:27:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tq7A54nNcf2frx18c9LPyVYT
	RRdcLBQ01zV+OEOP/oI=; b=Gs9e9L7h7Ro3I8ngEL9UvizMsLPJxX4NdV7BYWzh
	6JCn+WjAwXLu6/Ev0VUu/xIb+a2xz57BiuU7+S2X4QpyfqoW6y9jeT3UNmGObrsk
	CfBkxEksjLlcES7aljwRk3Z8yHa50gv7OXqncUX/2+8Yxq51UcuYRvmjT05pvHlu
	F2mel72blxLvmp3zanAH+hbs5/f+DdxiMYGbOqNRq/dPWzAZg/iPyZOpw1jX6PYj
	W49nFRsPw8JQEPTveHICQ18LUw0HO5vxMMmc6BaUqMmPzMnyrnPPcCmd7S5G6jfe
	5cPAXVqAj17Yoc87f+sGoYbTpTLHlm1u7jUDODolWWszWg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0dtjqv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:27:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2f0be2cf0so2584847385a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768350439; x=1768955239; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tq7A54nNcf2frx18c9LPyVYTRRdcLBQ01zV+OEOP/oI=;
        b=ZNe0Yh0b5S098j2Ave2NqhIJbJdxPp0iUEiUnL0nZBztGsL4MBD4RU66TbQ48ovgMX
         EjsSbsw/S8ULKKq+uf5Paa2rdK8NV+a1eVPKY6R5KmORH2g7o/CzEukWQE8WKPJ7OTy4
         dAfUMUUIPxsZoPMFPYXXqMkwqRdMVMiOaLBkhpHYxr3yoldiEM6ujIlohtTVdWH+xg4Y
         dDQqyRO286qNVtgeXcW2lQvjCjPkGztFOW787A8gFb2LQzVniSNUCs8vv7od8bUOkkvZ
         HNzcSVsfU4IBq8/C+ZcEalQT31VIIKUJfB9fbu3Cua5vJ0YUU7j7QctIVb2wrjUOL0i+
         mW9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768350439; x=1768955239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tq7A54nNcf2frx18c9LPyVYTRRdcLBQ01zV+OEOP/oI=;
        b=FlYmEYM60/0r5XVQStbQtbZk+XgESmVIUx9udpfeWbUvLiZRMdNNqaXUPOGQSVtfz4
         z27tmkIuBju0zRipsh1kaRbC4K1e0YP6jmjAXP2KL1F/6qtzLpeBS2Jqvzvs4nFFhFdb
         m1V2vjIdg1DnB03j5SvDsila6mdMTO+Lgy1y2965RppVdgQ1QxdUpU1jiI7VCEVXBjua
         KQ9jzdz8EYdgqqbFvhfv/sUcZf7NS8swCYcB29bv5jA6IdxBFR+OkPpfsw274SK+g7jg
         I3mUJUFWxrh/3xjEQCxH86G5yCBK54pXL7lvR/hseCq/MZjuYqrXatv1wOTCAI3gSUX4
         nDOw==
X-Forwarded-Encrypted: i=1; AJvYcCU53d2ubTu1TSCrDIh7QT6cU31ZiNYIsTNw4qCdQx+5B/FOGt4FjPwX8CdT5hM+IwSSXtItYO9RN9VR@vger.kernel.org
X-Gm-Message-State: AOJu0YwVFyeeRPvQTH6kSsUlCoWRHMPTokpDdQhgk3liWim0I0HTMTr0
	1k9R/0wJGjUgW96HlcA/Cm5hnbQ0Ob80MHLcnb9w59JJdkYonAjl1I5LCYzMnGOadcNKC90inPp
	3e+4lU/ddiDEi5jOfa305eW2fNsoHP+rsc4RDPbYILsnmB+/kq0ikyPV1xExZ/nwa
X-Gm-Gg: AY/fxX7PfWl8y51qU2EvsALRWfpdJMKbybx6So+uA1wb4KuWJJX+GR7auXwdHzl9hEU
	Iyiiiq1o5y3Ufkt2wuUDaNf4+qnZNu4dNKusVn7b8xQO2N6dm/5wqRPS/2+9T1XgXp/KNBm47vm
	wsV+/5Io4eNpt+vAxjkWtu4bMXrOCYBJxQu8PE0FeHM7Q/9zy/ZMCHCqS/HXzuAFwQig3suNX51
	bftglQfcBSO++SomfVoQ4G6sBkokcSyy07UEdb0RX63PdhSu6lrGL0xMZL6ZA3ZZeXWwGobZFer
	opc1Cta3kxDbHCF6jpF78+XDCNwtKl134u3wNaI4jKNqJLoexI15E61qG4/ScVBK3BZcQW+hhWu
	p8S5gjgvHxIsKB8lR6C8PJcBZvDc7a9ss2wk6zBrjT8zUpbQaFb7FKANhiLcHEyGARkxGQudS4e
	ya8hL6OvVX3v2/2NLmw8WdExA=
X-Received: by 2002:a05:620a:3181:b0:8b2:fef0:742d with SMTP id af79cd13be357-8c52fafd0bdmr157956185a.7.1768350439460;
        Tue, 13 Jan 2026 16:27:19 -0800 (PST)
X-Received: by 2002:a05:620a:3181:b0:8b2:fef0:742d with SMTP id af79cd13be357-8c52fafd0bdmr157955485a.7.1768350439023;
        Tue, 13 Jan 2026 16:27:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba1046000sm160300e87.87.2026.01.13.16.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 16:27:18 -0800 (PST)
Date: Wed, 14 Jan 2026 02:27:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: power: qcom,rpmhpd: drop duplicate
 defines
Message-ID: <fey7axet3du7db3h5p3j4cdea67pwaxb6fzhlskcspgkhguyx4@ymfipsylffpj>
References: <20251211-rpmhpd-drop-v2-1-569e5e8ab34a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211-rpmhpd-drop-v2-1-569e5e8ab34a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=6966e2e8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=lR2tOKNDw1Un2gOXHDgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: QKyqcK5yBw5Z954A16iKiPgBCfc3YQYp
X-Proofpoint-GUID: QKyqcK5yBw5Z954A16iKiPgBCfc3YQYp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAwMSBTYWx0ZWRfX0O1l0X5P7vVX
 mMGQ8GGGNY16hlmIlfeTYZODGxRaGdARZ48jpIKpwYLeRpJuSa0TD6E+pmHeS81jvoYNpt/S7wX
 0S9F1qxvMCIQONbsLmxbyr4uBtQYVyT0ICnXcI9nHUMV0b/C/zZLM9Zf98tMcefTfsVxhfe3iLi
 gXZ9o4O4aGiwGV14/gongKL/CptryRm18+wyuhqXrZKjKEH9gmGwBSmY6l8Lgl9ebfYgpIGN2iJ
 /XrTIoA8EhevcrTZmU+hD/Y5It26vk+khiukCC/uhjBOswLTdMSkO5DLgKtKg1GPZrSaBd4wPVJ
 aDcY/eAGlTa7zxeCKcXE//WM09ykIjMBdtiXpnyaK8BCD2Sq5p4SjA9SnWcdOJPrsGQKUtDNszT
 Yzqe2pwFTdyX8BTEzkYQl0QbXdU+FSqVACwLqcIENkP7KhJ9k+2oN4J4lCFeHMFpRNUnrcdEfA8
 71Swa/i3QGSq1e5DcrQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140001

On Thu, Dec 11, 2025 at 03:51:02AM +0200, Dmitry Baryshkov wrote:
> In order to prevent further confusion, drop SoC-specific defines for
> power domain indices for platforms which were converted to use
> RPMHPD_foo indices.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Changes in v2:
> - Split the patch to a separate series as all dependencies were merged
> - Link to v1: https://lore.kernel.org/r/20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com
> ---
>  include/dt-bindings/power/qcom,rpmhpd.h | 58 ---------------------------------
>  1 file changed, 58 deletions(-)
> 

This has been reviewed-by about a month ago. Gracious ping.

-- 
With best wishes
Dmitry

