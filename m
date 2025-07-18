Return-Path: <devicetree+bounces-197788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7235B0AA35
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 20:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 007E75A24E3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB2C2E7F06;
	Fri, 18 Jul 2025 18:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P8XqDrW5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFD22E7178
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752863835; cv=none; b=fkp06llRR01CsDxJErJHx7650G2wJSIC+BOw8ZLlKNYRoAjON3fcRHp1dAitwtbAvezmxbKnLv3fNDxWre73KMAouJ0PI89jifZsBg4cptV72R6U2VpoySK2uAwxe5z3gr4Kmz7kGld4BsTGFbZ6rTSrpZCMvTcUEgGxZpp5RZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752863835; c=relaxed/simple;
	bh=FD9HooRQCc+PXCUOKvmD24mEJXDixu8d1mCmEOHZHmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dHUwioD4IOYAkwRN6esiH5SA0NPQQ4ivKS/JpgnlS3qzmKhslKSXeA9CATQ/Fda03ziTGhsQjhNlcb7UN8+v7Rz3bEkF6mFrkXwRFHmJBvpLKO9Td1s9QMU7aFGwGQszPVYiUYaKO8DZaHP68jRiAauOfzb6kH6wHANoeyFtil8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P8XqDrW5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IG7JkI032515
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ALPvAyKfQjtdHFgs68bECM2y
	VyHmmPwO24e9jJdHfv0=; b=P8XqDrW5iPG1Zr+qNYrNvxjbOiTer6Kt+/d6Vte1
	U/MkzM1dytcaMlu0aj78H5itvp5IMCpGjxy4Tr0j8VO6daAVabH7uLGgt70TvUit
	UjofSgTWIoF8kkxkMpum7buUxBLgxVGoko/N05tbu/R0p948qF3/4/vy6S8pkNnM
	zeR6189Rz37Cr/c2wJumOJ5j/DYZGwIxN+mp8qkBhfd3N5T+gODgkedqQW7ySpHP
	lI5pkGZdb44ABl6RHSCz4X2wfzp7fVtjK6+Hwcy+v981IgTMULCtGrMW37R8V1VF
	Y+8s2w9sWCBHf9o7RNJpZK0iQTgVJHcL3m3/rBu6N4+w1w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38crru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:37:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e207330a45so358954485a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752863832; x=1753468632;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALPvAyKfQjtdHFgs68bECM2yVyHmmPwO24e9jJdHfv0=;
        b=atPCJ6Jy0A+EtKfeKzfDZQqLcS9W4ZEqKxCd38bSAM07OYmj+5mme3F0SonjUFqf0z
         buD9lwZti7S4mCENnDvHpjMjV9iJ2yJOcWSx7S2j2GaAkQbEyke1SKJdzjXiY5qbchuE
         oHH9F2yjPrUGzyLI3rwO9gSDWPcRK5KxFjmreIYa/VSyRc+mhBCup2L+Xolg1P3zlFQ6
         PWowq4viEih6cyLrB779H/hx50dRu+/SUNhVyljTQDSm6om4cJd5FIGhQswHMbci9n1j
         xNsfU9+78fbEfmdQ2moN+5hA6Ce4j5N+FYetgHTWmZ+0sSgHl8r/VimsYCywvs88td88
         MGLw==
X-Forwarded-Encrypted: i=1; AJvYcCVRygBM1Rr3Mfn3xiyCEdASv9zyaNMo5Qsyx92n2T+hBDe/oQ+uyqbL7nc2e4VZp4xMPGbZ2Bkf20Z5@vger.kernel.org
X-Gm-Message-State: AOJu0YxwBB1fMyUCpuLM0Y0ND0JR+EsdS0pAVcRuHMSK6spMpewH5c6y
	Awb6ulm52SMHnr8r3xukdgGDou6b2aoM9HItnIxPpxh6q4fp6i3kEdVkwPJqzorUHA2nqyuEsV0
	iRL/JSBOlW5okhHi/3GgRYSOyLjOKJU83WZ4vvU5+QG1jcTu6ha8MJuLtkmtiyET8
X-Gm-Gg: ASbGncvNMY5X1LmAfX3U9J3PfWXpzL5r4l/z6NUyTWZ3bG57wZLpu56VcXKpfSmxxQJ
	Oac+WAP8YM4Gc/UG8nyFVVAPHMdBCRy4W57t9s0+hjy2xDADS01NXrGCU4L2YjdG4tn0MnmHaj6
	ySU3bUbTwvwrdeSPtAb94aSyDA1Zk52wUop4Q4z6vWk8NH/w9yTm4Y087EZfV4MBBmRJEmejn7W
	w6OvHtb27x20Szd1v3W49XxZ7Cua/sv7FSLPLXkiIiqswZdgg6S/gFhookYCKjLFoJngPemPFSJ
	IyOeoJ+CctCKDDuHlunSTaGRi+9Rv4vx51t23WbH391ZtfQ5HNJYrb6x7wiTwSzNtR0emCF4ypS
	6GKhrcpjVswxTQWLw8KpzCa45JC01MY+HGpcRpKYW38KlORtIT5Pt
X-Received: by 2002:a05:620a:268d:b0:7e2:769a:c857 with SMTP id af79cd13be357-7e34335131amr1702167185a.1.1752863831614;
        Fri, 18 Jul 2025 11:37:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHElvVFF8dizfyr2Wk3GnhytPZl7LLlYnIUcaoY5rC3+dyUZxZapzDDTomhRW5XbvK70xXqrg==
X-Received: by 2002:a05:620a:268d:b0:7e2:769a:c857 with SMTP id af79cd13be357-7e34335131amr1702161085a.1.1752863831040;
        Fri, 18 Jul 2025 11:37:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d8db4sm2741471fa.74.2025.07.18.11.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 11:37:10 -0700 (PDT)
Date: Fri, 18 Jul 2025 21:37:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v11 1/8] power: reset: reboot-mode: Add device tree
 node-based registration
Message-ID: <y7xhfbiwkduo3lytb5gbukdu3yptx6uajtbngbspqbqkyt5dzo@gy62zoxwr6ah>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
 <20250717-arm-psci-system_reset2-vendor-reboots-v11-1-df3e2b2183c3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717-arm-psci-system_reset2-vendor-reboots-v11-1-df3e2b2183c3@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDE0NyBTYWx0ZWRfX0g703p5gIF9W
 NHFM82CLhA7lVALyFHvPWvkUF1L51Mk4dsI4DZOW1kTvzdN//LRYOEClGYTPsOKJ61ZRazOTF9h
 pAaq5a4oECsHZzzz3/Usy/EtlA+rJtw88q/zUZ8TvnqlOaBjdK8JdwZR9LCJz3CVXU+FtMtKW1v
 FjeXZQg80vpJCJ+4FkSczWpnxOeoCULe6LXrFzw7dLVhMk04Emt50yds1epzrzk93RdgfE4kE63
 ugf6O55XX7ErCcF70uFLdxdq4MgMqKsinmGtNfM2AAjW0o7fHstxd7v4t0usTPCgQocwocV3xGb
 wtNSrYMN7+cb6HTZUC4RWFn3Iv2lRPqkg4IBgdOVU9cUWR3354Bdfbx5SUm9/twWoQQb+uRBDuX
 rnTyhoPG4kakOrHesoRWMJb/47ZBgjgF7BKrehwDISIz/vNFEGcjSDAOt8kvLCNar5Ot/HJL
X-Proofpoint-GUID: R7lDRyG1zTy8OkOi53kkLxgmRffJ6lzt
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687a9458 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=vZ9_uWrtemhWx8VJ4wEA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: R7lDRyG1zTy8OkOi53kkLxgmRffJ6lzt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180147

On Thu, Jul 17, 2025 at 06:16:47PM +0530, Shivendra Pratap wrote:
> The reboot-mode driver does not have a strict requirement for
> device-based registration. It primarily uses the device's of_node
> to read mode-<cmd> properties and the device pointer for logging.
> 
> Remove the dependency on struct device and introduce support for
> Device Tree (DT) node-based registration. This enables drivers
> that are not associated with a struct device to leverage the
> reboot-mode framework.
> 
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/reboot-mode.c | 29 +++++++++++++++++++----------
>  include/linux/reboot-mode.h       |  2 +-
>  2 files changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index fba53f638da04655e756b5f8b7d2d666d1379535..0269ec55106472cf2f2b12bd65704dd0114bf4a3 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -3,13 +3,17 @@
>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>   */
>  
> +#define pr_fmt(fmt)	"reboot-mode: " fmt
> +
>  #include <linux/device.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> +#include <linux/list.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/reboot.h>
>  #include <linux/reboot-mode.h>
> +#include <linux/slab.h>
>  
>  #define PREFIX "mode-"
>  
> @@ -65,33 +69,35 @@ static int reboot_mode_notify(struct notifier_block *this,
>  /**
>   * reboot_mode_register - register a reboot mode driver
>   * @reboot: reboot mode driver
> + * @np: Pointer to device tree node
>   *
>   * Returns: 0 on success or a negative error code on failure.
>   */
> -int reboot_mode_register(struct reboot_mode_driver *reboot)
> +int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np)
>  {
>  	struct mode_info *info;
>  	struct property *prop;
> -	struct device_node *np = reboot->dev->of_node;
>  	size_t len = strlen(PREFIX);
>  	int ret;
>  
> +	if (!np)
> +		return -EINVAL;
> +
>  	INIT_LIST_HEAD(&reboot->head);
>  
>  	for_each_property_of_node(np, prop) {
>  		if (strncmp(prop->name, PREFIX, len))
>  			continue;
>  
> -		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
> +		info = kzalloc(sizeof(*info), GFP_KERNEL);
>  		if (!info) {
>  			ret = -ENOMEM;
>  			goto error;
>  		}
>  
>  		if (of_property_read_u32(np, prop->name, &info->magic)) {
> -			dev_err(reboot->dev, "reboot mode %s without magic number\n",
> -				info->mode);
> -			devm_kfree(reboot->dev, info);
> +			pr_err("reboot mode %s without magic number\n", info->mode);
> +			kfree(info);
>  			continue;
>  		}
>  
> @@ -102,8 +108,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>  		} else if (info->mode[0] == '\0') {
>  			kfree_const(info->mode);
>  			ret = -EINVAL;
> -			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
> -				prop->name);
> +			pr_err("invalid mode name(%s): too short!\n", prop->name);
>  			goto error;
>  		}
>  
> @@ -130,11 +135,15 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
>  int reboot_mode_unregister(struct reboot_mode_driver *reboot)
>  {
>  	struct mode_info *info;
> +	struct mode_info *next;
>  
>  	unregister_reboot_notifier(&reboot->reboot_notifier);
>  
> -	list_for_each_entry(info, &reboot->head, list)
> +	list_for_each_entry_safe(info, next, &reboot->head, list) {

This feels liks a missing lock.

>  		kfree_const(info->mode);
> +		list_del(&info->list);

list_del should come before kfree, otherwise it's possible to access
freed memory while traversing the list.

> +		kfree(info);
> +	}
>  
>  	return 0;
>  }
> @@ -162,7 +171,7 @@ int devm_reboot_mode_register(struct device *dev,
>  	if (!dr)
>  		return -ENOMEM;
>  
> -	rc = reboot_mode_register(reboot);
> +	rc = reboot_mode_register(reboot, reboot->dev->of_node);
>  	if (rc) {
>  		devres_free(dr);
>  		return rc;
> diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
> index 4a2abb38d1d612ec0fdf05eb18c98b210f631b7f..36f071f4b82e1fc255d8dd679a18e537655c3179 100644
> --- a/include/linux/reboot-mode.h
> +++ b/include/linux/reboot-mode.h
> @@ -9,7 +9,7 @@ struct reboot_mode_driver {
>  	struct notifier_block reboot_notifier;
>  };
>  
> -int reboot_mode_register(struct reboot_mode_driver *reboot);
> +int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np);
>  int reboot_mode_unregister(struct reboot_mode_driver *reboot);
>  int devm_reboot_mode_register(struct device *dev,
>  			      struct reboot_mode_driver *reboot);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

