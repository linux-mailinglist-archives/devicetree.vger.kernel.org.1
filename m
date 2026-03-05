Return-Path: <devicetree+bounces-271316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO7NM2rMqGm4xQAAu9opvQ
	(envelope-from <devicetree+bounces-271316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:20:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D7620962E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD5F130378DE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40811C84DE;
	Thu,  5 Mar 2026 00:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFX+GrVX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E5l91Oew"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4E2219FC
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 00:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772670053; cv=none; b=qWBT45pomARv0trltOLoyv7xajfz3yeMcixg4QJJMbcFtV4Lyu/I0Vf67voh7YaYq+fj2xRq+uTZqG/SnwY/5OZQ/mBtIW4GdHGeAOOlq19TRDTg1lszeZlHqerTAXfHi272I73zhK71WRqyiYxaqobt2ZbTNsum1PE7DpOWLLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772670053; c=relaxed/simple;
	bh=dCXX9AibU0gsjaxJOA85Drwr15O0KZjW073w9KG/cB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PdGO7ogPiTUd38dhBN/8VcumPPVIr27E7dLRQamdtnnA6BFI0bOmqfNwTTM7ez/k3x/dpNUc9Tm19ukW7r6JNQ2OCJ5CX7i08DFcLTOeHoOCErHuPH+yuaqNXZaV/FEMYQBeTpp6LvBlNcGk1mwPBJI3aAn6s+lruEfF7fOAdkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFX+GrVX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E5l91Oew; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HIw6m1455851
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 00:20:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XMh9DNaYHEUy660uNbnfEzXS
	QhCYkpg18bP5w2A5jv0=; b=WFX+GrVXRZSdNPc3+uMG09NWUmFAzMVLIcaV9NLR
	FOiN0CWQ9ior2cSKmWKft403vf41yuWYgPJVfh4le3NLgctXYgmN7WKtm7cKEWnq
	V5K/icfkm6mFrfzHRxGiYzWdSkF1iXd5tSz7qpNTyQ33F26xNAU+w14sPpzqfbc5
	IXwPSXcZ8SpuIBvWf/PRiK2n2uL2YRt6DHXv4MvfYoJDqsy0GrCHrPNwtb/HigK4
	vbGguUFbkz9Fy6o4tzkbjZmasN2XQhQryBgnYLNotgz+RinZxJW8CCW3iQJKGKM5
	LM3UpOFNl1gpaHA1LL3Dj8MLLgigJ1pHF37kgqfzR9z6HQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj182j58-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:20:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb52a9c0eeso5539516785a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 16:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772670049; x=1773274849; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XMh9DNaYHEUy660uNbnfEzXSQhCYkpg18bP5w2A5jv0=;
        b=E5l91OewuRi9x5NytKH0fVbWaJi5hyZhh4DTWGCAXWXAcpb9CnDOEIiBUT8rOHUPSE
         QbI5+jwglABT7o3Mg2nZSMgaEfKEf0qsLqiqLTabk/EbUGSUhj675NAwhIlyD68Y4jjf
         rgFWMFpc/DNVeAfiIJyCkUeistNFaMkWHAapMiJu9Xtze4Dg9n+9A7aShalgEr6T70YI
         oyFfD5hqQPCoXRlcaqGyf01zxgRh7systw2/kryOCfbcI1/eRvCY+sh+EdK7VrG4xDSj
         mVjKhsYcZJrb9Ihk9Nmvj2GgTpR309Gmu/EXUb3e3AXty+biH/31MOorO8egKzk8APUc
         Ox0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772670049; x=1773274849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMh9DNaYHEUy660uNbnfEzXSQhCYkpg18bP5w2A5jv0=;
        b=JDoOc4ve0qWPnaHv4VOLhZfpRGcu7x+KtAVqIFXiNl//FeCYnGRJCNsHoI/46iij+y
         IelJBseojG1r0o8OpJrrbLxj0PpH15kXM68zUPsIMb+Jl+reoavDw4MebEBo3Kwt2aEN
         GOMvB0BvyynXHMWeuy1DiEVo50V9seC0Y85LOI45LuovaUW+j66+kWjvbAeqkWaDloxI
         r+SgFIqdU2KiOwxGPlffCV4tLvnaZtrmX/2t++egNY6ItBXuJxNCAR7dvtMLMGX5AN6M
         CNvDGl8+43gAszwl0hfXJJc0i1Bt0HAC9TDVSlzbdV7pYZf7xlfMPGj7hPauUjpMLbGZ
         Yl4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWv4Fu+QTcuuiZ+hdk/rdQ7XhUpA04DZEHPfbRo2g2NQ1U+lJMI5Pi0wr9QEb25S65yxYKIPvVLLsO1@vger.kernel.org
X-Gm-Message-State: AOJu0YylLja78Ii0GF7i2YrWsYXqhXtaUkDJq7SZp8Bu+o76X3f92Ii4
	4XxV4sHVzDwpEMnSwC1KffyoPlbJV+0tdkvHBrW4/FEZO8AV+bbg1HpO2diFG/kwRDJ8//w+SZW
	5hFJICpRNv639tc1EvRMUT9ORfP+QvAF0AVx/4VeSDl0+DfRAvgsyTR63HZqqhx2S
X-Gm-Gg: ATEYQzz0Tnleu2YqAYtAHb4K0tt1IovvFlkWT2ukVUeKFDtDt+I0xbPlG1OFoBxpT6F
	Vfm0R8rorHSr2Hqn3vmk0fftkJcpwZ/+fy2LEPaYm2urSMPDwjPS4zMsz28wwoDSiKu2FaMKjXk
	EJfT8gGiQYzSlBSb+dTHsyio+98yy5YJsxkbFT9WcL5NWUMBID8VTeQ19wQQC6HPjPltBquCby7
	1jj5gstYfR+R+5JhWzsnXjILsOhBT10rbpJ6Gzacz5gGXGnOXJHtCj3rpB2l7GwvMdf2eho2YmD
	y0qXOrg6lDoVpQXBuJjFXja/KqrmAJ0Qe/sYx07lEVlgSUIOowgLrJbU10bKhG/thNnoELhQUMk
	nvX1r1hFynzbrTwlTkIzaRV7v+h9Gbld5HG9Q8NZqQ2uWLRA8WAiS8wcmFW7nERDzEN2vpj5u/O
	L6pyAirgRoEm8on8A+0W+S1/227/NjWNm+5gs=
X-Received: by 2002:a05:620a:298f:b0:8c6:e1ff:8cfa with SMTP id af79cd13be357-8cd5afa6510mr462896585a.60.1772670048959;
        Wed, 04 Mar 2026 16:20:48 -0800 (PST)
X-Received: by 2002:a05:620a:298f:b0:8c6:e1ff:8cfa with SMTP id af79cd13be357-8cd5afa6510mr462890885a.60.1772670048177;
        Wed, 04 Mar 2026 16:20:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573c42sm1626891e87.72.2026.03.04.16.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:20:47 -0800 (PST)
Date: Thu, 5 Mar 2026 02:20:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/7] clk: qcom: videocc-x1p42100: Add support for
 video clock controller
Message-ID: <tz7njmffqixqn7554dqllqjridi6uksjcd4rq33lx5b3bj354k@bldalfcu5xyq>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-3-dbbd2d258bd6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-purwa-videocc-camcc-v2-3-dbbd2d258bd6@oss.qualcomm.com>
X-Proofpoint-GUID: DnDhRRwxHjS_LIyYQ3e1Sgg3HZwnAJW8
X-Proofpoint-ORIG-GUID: DnDhRRwxHjS_LIyYQ3e1Sgg3HZwnAJW8
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a8cc62 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=38CP8QUe7I1FTJ89_pcA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDAwMSBTYWx0ZWRfXzjgiu2y0ZZwE
 h4Dca6nikNCyHKYoWaq4sfUK6fiRT03smxoaTCGUNgqE/lqm5ybLlbrlpqNNdmdazf78EJ4frKV
 I3uCtR4wGE6wpLAde4ZCVBVWW80qXmnLmVsMd6UYJpEAX+Rql2ivZQSi703JZTBl8SIJ+24iY3f
 7gCYT+22DD1KkK9xL4lqucIJGqVA4TTHu4tgci/YcBnzuthstsrbIyto83VlA4Yd2KXq86jKgKr
 XJz1CuH7JgGMSGOqf0APwuWF4K+4YAh+z/PM3zOvWVkYqh6gTqTeISnln9HI9+5QujgoHOnjH0t
 fJMJBrhy2BGs2xx+ZouIeac5ghjkV9mIG1CbU6/mcDHRckRVSXszmb0x88Z7CJBqGNtkJ+IyAki
 ateoPoujjmTjUERC/J7rZDgTGU+r9Y1qb0xSHNXXHen/tooU8Ms++sfPl7wDSFiOTjTui0wPM0A
 yMpaINn5/oorqTc1lwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050001
X-Rspamd-Queue-Id: C8D7620962E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271316-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 11:10:53PM +0530, Jagadeesh Kona wrote:
> Add support for the video clock controller for video clients to be
> able to request for videocc clocks on X1P42100 platform. Although
> X1P42100 is derived from X1E80100, the video clock controller differs
> significantly. The BSE clocks are newly added, several cdiv clocks have
> been removed, and most RCG frequency tables have been updated. Initial
> PLL configurations also require changes, hence introduce a separate
> videocc driver for X1P42100 platform.
> 
> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig            |  10 +
>  drivers/clk/qcom/Makefile           |   1 +
>  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 596 insertions(+)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index a8a86ea6bb7445e396048a5bba23fce8d719281f..b1b1ed70871c1b348985d6f5149152e57637d904 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -155,6 +155,16 @@ config CLK_X1P42100_GPUCC
>  	  Say Y if you want to support graphics controller devices and
>  	  functionality such as 3D graphics.
>  
> +config CLK_X1P42100_VIDEOCC
> +	tristate "X1P42100 Video Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select CLK_X1E80100_GCC
> +	help
> +	  Support for the video clock controller on Qualcomm Technologies, Inc.
> +	  X1P42100 devices.
> +	  Say Y if you want to support video devices and functionality such as
> +	  video encode/decode.
> +
>  config CLK_QCM2290_GPUCC
>  	tristate "QCM2290 Graphics Clock Controller"
>  	depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 6b0ad8832b55f1914079f15323b8cdd1608ad4c0..b746e5046774259cebe3da8dad1f226561268a8b 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_CLK_X1E80100_GCC) += gcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_GPUCC) += gpucc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_TCSRCC) += tcsrcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1P42100_GPUCC) += gpucc-x1p42100.o
> +obj-$(CONFIG_CLK_X1P42100_VIDEOCC) += videocc-x1p42100.o
>  obj-$(CONFIG_CLK_QCM2290_GPUCC) += gpucc-qcm2290.o
>  obj-$(CONFIG_IPQ_APSS_PLL) += apss-ipq-pll.o
>  obj-$(CONFIG_IPQ_APSS_5424) += apss-ipq5424.o
> diff --git a/drivers/clk/qcom/videocc-x1p42100.c b/drivers/clk/qcom/videocc-x1p42100.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..4e92f0ab7e4016724af1f31aa4896655b1dc8308
> --- /dev/null
> +++ b/drivers/clk/qcom/videocc-x1p42100.c
> @@ -0,0 +1,585 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <dt-bindings/clock/qcom,sm8650-videocc.h>
> +
> +#include "clk-alpha-pll.h"
> +#include "clk-branch.h"
> +#include "clk-rcg.h"
> +#include "clk-regmap.h"
> +#include "clk-regmap-divider.h"
> +#include "common.h"
> +#include "gdsc.h"
> +#include "reset.h"
> +
> +enum {
> +	DT_BI_TCXO,
> +};
> +
> +enum {
> +	P_BI_TCXO,
> +	P_VIDEO_CC_PLL0_OUT_MAIN,
> +	P_VIDEO_CC_PLL1_OUT_MAIN,
> +};
> +
> +static const struct pll_vco lucid_ole_vco[] = {
> +	{ 249600000, 2300000000, 0 },
> +};
> +
> +/* 420.0 MHz Configuration */
> +static const struct alpha_pll_config video_cc_pll0_config = {
> +	.l = 0x15,
> +	.alpha = 0xe000,
> +	.config_ctl_val = 0x20485699,
> +	.config_ctl_hi_val = 0x00182261,
> +	.config_ctl_hi1_val = 0x82aa299c,
> +	.test_ctl_val = 0x00000000,
> +	.test_ctl_hi_val = 0x00000003,
> +	.test_ctl_hi1_val = 0x00009000,
> +	.test_ctl_hi2_val = 0x00000034,
> +	.user_ctl_val = 0x00000000,
> +	.user_ctl_hi_val = 0x00000005,
> +};
> +
> +static struct clk_alpha_pll video_cc_pll0 = {
> +	.offset = 0x0,
> +	.config = &video_cc_pll0_config,
> +	.vco_table = lucid_ole_vco,
> +	.num_vco = ARRAY_SIZE(lucid_ole_vco),
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_pll0",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_BI_TCXO,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_lucid_evo_ops,
> +		},
> +	},
> +};
> +
> +/* 1050.0 MHz Configuration */
> +static const struct alpha_pll_config video_cc_pll1_config = {
> +	.l = 0x36,
> +	.alpha = 0xb000,
> +	.config_ctl_val = 0x20485699,
> +	.config_ctl_hi_val = 0x00182261,
> +	.config_ctl_hi1_val = 0x82aa299c,
> +	.test_ctl_val = 0x00000000,
> +	.test_ctl_hi_val = 0x00000003,
> +	.test_ctl_hi1_val = 0x00009000,
> +	.test_ctl_hi2_val = 0x00000034,
> +	.user_ctl_val = 0x00000000,
> +	.user_ctl_hi_val = 0x00000005,
> +};
> +
> +static struct clk_alpha_pll video_cc_pll1 = {
> +	.offset = 0x1000,
> +	.config = &video_cc_pll1_config,
> +	.vco_table = lucid_ole_vco,
> +	.num_vco = ARRAY_SIZE(lucid_ole_vco),
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_pll1",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_BI_TCXO,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_lucid_evo_ops,
> +		},
> +	},
> +};
> +
> +static const struct parent_map video_cc_parent_map_0[] = {
> +	{ P_BI_TCXO, 0 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_0[] = {
> +	{ .index = DT_BI_TCXO },
> +};
> +
> +static const struct parent_map video_cc_parent_map_1[] = {
> +	{ P_BI_TCXO, 0 },
> +	{ P_VIDEO_CC_PLL0_OUT_MAIN, 1 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_1[] = {
> +	{ .index = DT_BI_TCXO },
> +	{ .hw = &video_cc_pll0.clkr.hw },
> +};
> +
> +static const struct parent_map video_cc_parent_map_2[] = {
> +	{ P_BI_TCXO, 0 },
> +	{ P_VIDEO_CC_PLL1_OUT_MAIN, 1 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_2[] = {
> +	{ .index = DT_BI_TCXO },
> +	{ .hw = &video_cc_pll1.clkr.hw },
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs0_bse_clk_src[] = {
> +	F(420000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(600000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(670000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(848000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(920000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs0_bse_clk_src = {
> +	.cmd_rcgr = 0x8154,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_1,
> +	.freq_tbl = ftbl_video_cc_mvs0_bse_clk_src,
> +	.hw_clk_ctrl = true,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_bse_clk_src",
> +		.parent_data = video_cc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_1),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs0_clk_src[] = {
> +	F(210000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(300000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(335000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(424000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(460000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs0_clk_src = {
> +	.cmd_rcgr = 0x8000,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_1,
> +	.freq_tbl = ftbl_video_cc_mvs0_clk_src,
> +	.hw_clk_ctrl = true,

sm8550/x1e don't enable hw_clk_ctrl here. Is this an expected
difference?

> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_clk_src",
> +		.parent_data = video_cc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_1),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs1_clk_src[] = {
> +	F(1050000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	F(1350000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	F(1650000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs1_clk_src = {
> +	.cmd_rcgr = 0x8018,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_2,
> +	.freq_tbl = ftbl_video_cc_mvs1_clk_src,
> +	.hw_clk_ctrl = true,

sm8550/x1e don't enable hw_clk_ctrl here. Is this an expected
difference?

> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1_clk_src",
> +		.parent_data = video_cc_parent_data_2,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_2),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_xo_clk_src[] = {
> +	F(19200000, P_BI_TCXO, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_xo_clk_src = {
> +	.cmd_rcgr = 0x810c,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_0,
> +	.freq_tbl = ftbl_video_cc_xo_clk_src,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_xo_clk_src",
> +		.parent_data = video_cc_parent_data_0,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_0),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs0_bse_div4_div_clk_src = {
> +	.reg = 0x817c,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_bse_div4_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs0_bse_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs1_div_clk_src = {
> +	.reg = 0x80ec,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs1_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs1c_div2_div_clk_src = {
> +	.reg = 0x809c,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1c_div2_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs1_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_bse_clk = {
> +	.halt_reg = 0x8170,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8170,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_bse_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_bse_div4_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_clk = {
> +	.halt_reg = 0x80b8,
> +	.halt_check = BRANCH_HALT_VOTED,

x1e has BRANCH_HALT_SKIP here. Is there a reason for the difference?

> +	.hwcg_reg = 0x80b8,
> +	.hwcg_bit = 1,
> +	.clkr = {
> +		.enable_reg = 0x80b8,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_shift_clk = {
> +	.halt_reg = 0x8128,
> +	.halt_check = BRANCH_HALT_VOTED,

No .hwcg_reg?

> +	.clkr = {
> +		.enable_reg = 0x8128,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0c_clk = {
> +	.halt_reg = 0x8064,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8064,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0c_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0c_shift_clk = {
> +	.halt_reg = 0x812c,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x812c,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0c_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1_clk = {
> +	.halt_reg = 0x80e0,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.hwcg_reg = 0x80e0,
> +	.hwcg_bit = 1,
> +	.clkr = {
> +		.enable_reg = 0x80e0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs1_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1_shift_clk = {
> +	.halt_reg = 0x8130,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x8130,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1c_clk = {
> +	.halt_reg = 0x8090,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8090,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1c_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs1c_div2_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1c_shift_clk = {
> +	.halt_reg = 0x8134,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x8134,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1c_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct gdsc video_cc_mvs0c_gdsc = {
> +	.gdscr = 0x804c,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "video_cc_mvs0c_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs0_gdsc = {
> +	.gdscr = 0x80a4,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "video_cc_mvs0_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.parent = &video_cc_mvs0c_gdsc.pd,
> +	.flags = HW_CTRL_TRIGGER | POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs1c_gdsc = {
> +	.gdscr = 0x8078,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0xf,

x1e has 0x6 here. Is this one correct?

> +	.pd = {
> +		.name = "video_cc_mvs1c_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs1_gdsc = {
> +	.gdscr = 0x80cc,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0xf,

And here.

> +	.pd = {
> +		.name = "video_cc_mvs1_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.parent = &video_cc_mvs1c_gdsc.pd,
> +	.flags = HW_CTRL_TRIGGER | POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct clk_regmap *video_cc_x1p42100_clocks[] = {
> +	[VIDEO_CC_MVS0_BSE_CLK] = &video_cc_mvs0_bse_clk.clkr,
> +	[VIDEO_CC_MVS0_BSE_CLK_SRC] = &video_cc_mvs0_bse_clk_src.clkr,
> +	[VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC] = &video_cc_mvs0_bse_div4_div_clk_src.clkr,
> +	[VIDEO_CC_MVS0_CLK] = &video_cc_mvs0_clk.clkr,
> +	[VIDEO_CC_MVS0_CLK_SRC] = &video_cc_mvs0_clk_src.clkr,
> +	[VIDEO_CC_MVS0_SHIFT_CLK] = &video_cc_mvs0_shift_clk.clkr,
> +	[VIDEO_CC_MVS0C_CLK] = &video_cc_mvs0c_clk.clkr,
> +	[VIDEO_CC_MVS0C_SHIFT_CLK] = &video_cc_mvs0c_shift_clk.clkr,
> +	[VIDEO_CC_MVS1_CLK] = &video_cc_mvs1_clk.clkr,
> +	[VIDEO_CC_MVS1_CLK_SRC] = &video_cc_mvs1_clk_src.clkr,
> +	[VIDEO_CC_MVS1_DIV_CLK_SRC] = &video_cc_mvs1_div_clk_src.clkr,
> +	[VIDEO_CC_MVS1_SHIFT_CLK] = &video_cc_mvs1_shift_clk.clkr,
> +	[VIDEO_CC_MVS1C_CLK] = &video_cc_mvs1c_clk.clkr,
> +	[VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC] = &video_cc_mvs1c_div2_div_clk_src.clkr,
> +	[VIDEO_CC_MVS1C_SHIFT_CLK] = &video_cc_mvs1c_shift_clk.clkr,
> +	[VIDEO_CC_PLL0] = &video_cc_pll0.clkr,
> +	[VIDEO_CC_PLL1] = &video_cc_pll1.clkr,
> +	[VIDEO_CC_XO_CLK_SRC] = &video_cc_xo_clk_src.clkr,
> +};
> +
> +static struct gdsc *video_cc_x1p42100_gdscs[] = {
> +	[VIDEO_CC_MVS0_GDSC] = &video_cc_mvs0_gdsc,
> +	[VIDEO_CC_MVS0C_GDSC] = &video_cc_mvs0c_gdsc,
> +	[VIDEO_CC_MVS1_GDSC] = &video_cc_mvs1_gdsc,
> +	[VIDEO_CC_MVS1C_GDSC] = &video_cc_mvs1c_gdsc,
> +};
> +
> +static const struct qcom_reset_map video_cc_x1p42100_resets[] = {
> +	[CVP_VIDEO_CC_INTERFACE_BCR] = { 0x80f0 },
> +	[CVP_VIDEO_CC_MVS0_BCR] = { 0x80a0 },
> +	[CVP_VIDEO_CC_MVS0C_BCR] = { 0x8048 },
> +	[CVP_VIDEO_CC_MVS1_BCR] = { 0x80c8 },
> +	[CVP_VIDEO_CC_MVS1C_BCR] = { 0x8074 },
> +	[VIDEO_CC_MVS0_BSE_BCR] = { 0x816c },
> +	[VIDEO_CC_MVS0C_CLK_ARES] = { 0x8064, 2 },
> +	[VIDEO_CC_MVS1C_CLK_ARES] = { 0x8090, 2 },
> +	[VIDEO_CC_XO_CLK_ARES] = { 0x8124, 2 },

C99 for non-single-reg entries, please. SM8550 also hase udelay here, is
there a reason for not having it here?

> +};
> +
> +static struct clk_alpha_pll *video_cc_x1p42100_plls[] = {
> +	&video_cc_pll0,
> +	&video_cc_pll1,
> +};
> +
> +static u32 video_cc_x1p42100_critical_cbcrs[] = {
> +	0x80f4, /* VIDEO_CC_AHB_CLK */
> +	0x8150, /* VIDEO_CC_SLEEP_CLK */
> +	0x8124, /* VIDEO_CC_XO_CLK */
> +};
> +
> +static const struct regmap_config video_cc_x1p42100_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x9f54,
> +	.fast_io = true,
> +};
> +
> +static struct qcom_cc_driver_data video_cc_x1p42100_driver_data = {
> +	.alpha_plls = video_cc_x1p42100_plls,
> +	.num_alpha_plls = ARRAY_SIZE(video_cc_x1p42100_plls),
> +	.clk_cbcrs = video_cc_x1p42100_critical_cbcrs,
> +	.num_clk_cbcrs = ARRAY_SIZE(video_cc_x1p42100_critical_cbcrs),
> +};
> +
> +static const struct qcom_cc_desc video_cc_x1p42100_desc = {
> +	.config = &video_cc_x1p42100_regmap_config,
> +	.clks = video_cc_x1p42100_clocks,
> +	.num_clks = ARRAY_SIZE(video_cc_x1p42100_clocks),
> +	.resets = video_cc_x1p42100_resets,
> +	.num_resets = ARRAY_SIZE(video_cc_x1p42100_resets),
> +	.gdscs = video_cc_x1p42100_gdscs,
> +	.num_gdscs = ARRAY_SIZE(video_cc_x1p42100_gdscs),
> +	.use_rpm = true,
> +	.driver_data = &video_cc_x1p42100_driver_data,
> +};
> +
> +static const struct of_device_id video_cc_x1p42100_match_table[] = {
> +	{ .compatible = "qcom,x1p42100-videocc" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, video_cc_x1p42100_match_table);
> +
> +static int video_cc_x1p42100_probe(struct platform_device *pdev)
> +{
> +	return qcom_cc_probe(pdev, &video_cc_x1p42100_desc);
> +}
> +
> +static struct platform_driver video_cc_x1p42100_driver = {
> +	.probe = video_cc_x1p42100_probe,
> +	.driver = {
> +		.name = "videocc-x1p42100",
> +		.of_match_table = video_cc_x1p42100_match_table,
> +	},
> +};
> +
> +module_platform_driver(video_cc_x1p42100_driver);
> +
> +MODULE_DESCRIPTION("QTI VIDEOCC X1P42100 Driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

