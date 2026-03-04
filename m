Return-Path: <devicetree+bounces-271310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EGNFTfHqGlaxAAAu9opvQ
	(envelope-from <devicetree+bounces-271310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:58:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A53332094AA
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1068D301FA44
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 23:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06C5382391;
	Wed,  4 Mar 2026 23:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ex55ksIk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EVoEzLZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CBF38C2C8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 23:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772668722; cv=none; b=apGHcDh0sJVyI1AqcHHhTHCXbWH1uN5HIq73wU6rQ8no728PdJl0jC4VcT19Tcr2+OScSMjZQBoWoh7/8Gbd0Lzq5G6BkRAmxKWqVmEy16C81zSZ2L1Q9flaQuWSB3QIhKXVVw2OhnCJbP1A38t82hJmPdkSBpV7h7ddvsrswDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772668722; c=relaxed/simple;
	bh=P4oP2BoT9kPzoFilezeHRuA+xKsFEwEWaFZPuYLOjI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HWzCBycxICo7HifbNxpQdqeFsScyrGrFlZOBOu8Zk3wATML5kDeg3Bxz2y+03ZglSKoAr/xjUHn8NwZTi3evPbpsnZ9roI90mVtol65Ivxm1WKIOpLG6aeCREATk8WZvBRygzTIxFvn0Y0Yl/3DzaN4lFsD4961Xd8lL46UrV3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ex55ksIk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EVoEzLZj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624KL4qe3615095
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 23:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9eFNoKK53YStLQziS59y7gpu
	WFx4LBYo9LfBMrzSB+8=; b=Ex55ksIk/C6F380U+3HqWaC5SXE8FbYvjC93K8xK
	pyk0tl0II7MLqUyJHwgrsZOgJOL1po7fTH0r82KS7fDIkphRqvAYU7BZ5gIwDnSQ
	bgcRx6OdMhugEs6bZnKwlLZrVG7BBDXbz1ceWOCaLUymJFX81EL0qTd/167YwCgY
	4jVTjm/UwsXNfPfVDgo04FTdh62Scp6bQu4P94d3ILZF91XVMtm2aAsCbEhoEk+r
	XwK0X+60G4RPN5C1iDq0B30EERksSkXG9Hial0/KrdPEz8uJOu8tzM+XthLqhgC5
	L7XFnxPdyaiGzMuv3lD67GQ2UtRVWZ/Mof5NCHoxkz10lw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpuptgfx6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:58:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ed6c849so1244496685a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668718; x=1773273518; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9eFNoKK53YStLQziS59y7gpuWFx4LBYo9LfBMrzSB+8=;
        b=EVoEzLZjXBJRcscFjO619PJi9o9ekNt6nTLAI7XqisIQ7pfZI1YB/i7pBcCYZP9tYl
         qL2WulWQ9/TNO726GLR16aveTo/cnfmFHu9TmCJBI/XglROU8IHNq7RKmNyriXm7wzF3
         vIyaNAyiZQA5ZVM5Ah0tXvmt+uifSWJVrc1rYC+HH1hlXLk0xuoF1G0Fd2w+EBcj7eq8
         5PZDYQjg2H7K67MZ76h8a7SeW8nhEwTjChXs2d0Ik/PlX7qAs46hAzW/O6CAr51OPuU+
         tv9t9TG1AQp1EKgqiUbx75ljbh9Phw9MGReNVGssmu3SddIDBlE5qWGFI0cqr9JaMVqX
         +wMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668718; x=1773273518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9eFNoKK53YStLQziS59y7gpuWFx4LBYo9LfBMrzSB+8=;
        b=az4W/mEHoX8HF8b3X0TSRDKFeH9WXddZQioBH/Nkb5uhg+0t+BJ3Z77bEugwAx2Hnn
         IkClsB3v/UVXxsjd0lGEhmitGXNTHtBvg8tLptqE3ocdfJkTxunI21ma+sLbBeVLY6n2
         +Z2SSzfGZIKV1Yf1KdZ7An4a4hgEvfQR/3KhmG9gvb2xF7BKsEIHocroOXespD7SDO2h
         qa4Qlx8kHMNdp7EjaMR/zhYzLs9D9Miblnm4k/ZnJ3Qhvh+5q++OCRwpH0/lWyuOrkdY
         PT+hx+d5dnMUkOPZRysT+qhhP1Y1JeprhkuM+j6CrHWqbiOm63CEsiLsnfUQ9eomAW9S
         5AcA==
X-Forwarded-Encrypted: i=1; AJvYcCVTux1+VLQrFLmuJMIQT5oC3srhTkAFdD0L41VoDnfWBGQ0BozbzW9Q84/3rSLEjzPu4dO2Ks21lHvI@vger.kernel.org
X-Gm-Message-State: AOJu0YwYk24RRbPdx6vUmVGQXpcx8iy/h4GuXPZLkGbCuephxE1318br
	Ch3wij5MEtCC15AQPfQ2hvZnIUBQKEB9Oi5LlXi8HKpVvsn/3hPnT7GQfG/52xRM8Ru4X6I+ySH
	uKui4qOJOnkRQ30TxvE4SO/V4jWwoGsgnF1KizoCKMfQ+KvbrxO/snTPYLUy5/Ih3
X-Gm-Gg: ATEYQzz2UZoG9MdwYAXbmR5bV8GtDONbTumRqvThUy0ZD2f3pUq5Q1PW8YSR7IxDxrM
	fa4M9dMh4iaZ/KooTjlzRa1dgjcC4bvDw2Q/dOKVHsvq6ck86fg6fg5L8HNRltkFZwD5/tCVI1Q
	iMLC4mkRPSKJ2c9Uyrukyj8Hq2TtWNCfRk48pXs70M7SPOMrqzl5FyhYHOZDKuue+UP+3ESd/yU
	iVaF5Tc0tg3VeNq/bSu7zJgPLV5tVZiGDCAI21CBY9LWC3ubaWVWtgjhwfuDX5WkLwG8QxNXxsD
	FTmQPiS+ip6DbyVwuxo4ARO71pwq3qqgDGGuOqIe5OChXeZy8cwPGAUKSxcYDHvXNr4msYXuW2M
	zzx9XxajRUaWkafT3c5Shlygxlct/qjqmAe/KeoXH2Opmy+pWdRW9bCf3+ZDSf/JfIiCwIwjtoc
	WnakuPRVX0fY2GW5EAju9z24Xa1+KA1P4RU80=
X-Received: by 2002:a05:620a:280c:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cd5af0b8d7mr460988385a.28.1772668717849;
        Wed, 04 Mar 2026 15:58:37 -0800 (PST)
X-Received: by 2002:a05:620a:280c:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cd5af0b8d7mr460986785a.28.1772668717384;
        Wed, 04 Mar 2026 15:58:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12f4a5b03sm339308e87.87.2026.03.04.15.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:58:36 -0800 (PST)
Date: Thu, 5 Mar 2026 01:58:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Message-ID: <duny3mu3vx75m5ik7xkqotdajomkpj5udg7x2gcyj6pho2ybv7@w3q3pru35p45>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX2oNteSe1d77Z
 zh+Fb0P9ltfwmF7af7l6DLljKq0dLUcNGk+rpabs3fXXIXuljPOePaqkJXc14WJdCzJJxwhNNLa
 3iVNw26AJ5mS//TRuroOjDGsE9/Q5bwxGSizIFgItkwVWnbBZNKVAMbQO4Yt7vcPL9v9x6mPo2G
 g/oYZIdlwXVS1Ax4tcqp2oue/7PNMpUMXSTC3srbgDvOXFHRvc15JVaXhVZczk1QqfNmfhrnOUy
 F5WIaRt9r5dKRMWdIazndqpR6LxmNM56XcrjZa9/qawN83hXPxCf13B7L2ahbzx08BgvYaSYbob
 AQxpfv1hA99Ar6iy/LNzeP+3WXQRHYVFLrWAyIZ3n0AWnERHUKUdk3yeigj9ytvyFwInk7Mgo9y
 5Cn/COGFHfJL158jp8HLCu0A2hgGrPrawXfEEp+0jvazoBz1+rBUCkkOgDUq1BP1xIRMBhiq7Tp
 JKk7HvNySAy2WobfxbQ==
X-Proofpoint-ORIG-GUID: nLK-JEOc7dCPbLlLRNPdHFVE0PAgH-Es
X-Authority-Analysis: v=2.4 cv=Ddsaa/tW c=1 sm=1 tr=0 ts=69a8c72e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=hdDXuQ6OdnqjrmqFUSsA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: nLK-JEOc7dCPbLlLRNPdHFVE0PAgH-Es
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-Rspamd-Queue-Id: A53332094AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271310-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 12:21:56AM -0800, Qiang Yu wrote:
> The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
> a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
> that must be powered on before initialization per hardware requirements.
> 
> Current PHY power management assumes a single power domain per PHY,
> preventing proper setup for this dual-PHY scenario. Add support for
> multiple power domains by using devm_pm_domain_attach_list() to attach
> power domains manually, while maintaining compatibility with single
> power domain PHYs.
> 
> Enable runtime PM to allow power domain control when the PCIe driver
> calls phy_power_on/phy_power_off:
> 
> - Single power domain: QMP PHY platform device directly attaches to
>   power domain and controls it during runtime resume/suspend
> - Multiple power domains: devm_pm_domain_attach_list() creates virtual
>   devices as power domain suppliers, linked to the QMP PHY platform
>   device as consumer
> 
> This ensures power domains are properly attached and turned on/off
> for both single and multiple power domain configurations.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -17,6 +17,7 @@
>  #include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -3334,6 +3335,8 @@ struct qmp_pcie {
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_fixed_rate aux_clk_fixed;
> +
> +	struct dev_pm_domain_list *pd_list;
>  };
>  
>  static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> @@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>  	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
>  	WARN_ON_ONCE(!qmp->cfg->phy_status);
>  
> +	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
> +	if (ret < 0 && ret != -EEXIST) {
> +		dev_err(dev, "Failed to attach power domain\n");
> +		return ret;
> +	}
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;

These two should be separate commits.

> +
>  	ret = qmp_pcie_clk_init(qmp);
>  	if (ret)
>  		return ret;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

