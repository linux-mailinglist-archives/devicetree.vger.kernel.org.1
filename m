Return-Path: <devicetree+bounces-144617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92529A2EA3B
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 11:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC042188BF39
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6076D1DE8AC;
	Mon, 10 Feb 2025 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ezuv+mLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8B81CAA88
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739185028; cv=none; b=OgK9cRSset3FrbdikgX718NWfSGPCBOqSs57NxEPZdJefE9uRTPPQU9STMUrqaEyK6/QI2Hdexa+nfLx31EuVHP1IHSXlUSFJvIGH7jSlaqsMfD9Q9aVWJKhmgWaxAwfdk/uTnapr/UwrPkvXhGvczMkCdy6dzsRuidBEpChVhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739185028; c=relaxed/simple;
	bh=iyDDi1r4riFULUgod5wCm2MoIyCOnVwU3km7vkRgHgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S+A85zDnTAwdaot/x9RTgaGfVVGQX1YKXd59OJQ30vWOBJ0eEYgGFpK2MLKRgdjZNb8gM1RbKX+92zi2BJ3GJZgr85E57YePpw46gPr8GAonVR5hEbfSG8nMSVa4TcN9qHcyfTXYVJlbJdAOqM+9VQT51GsqlL3HBgLNi6KHwuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ezuv+mLV; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5439e331cceso4789538e87.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 02:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739185023; x=1739789823; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6xd+vxcqG1mZGT915T0HX9ILQH/E7rjAK2oLVDx9yII=;
        b=ezuv+mLVh82zeTpiJ3bNiqw5ygj2NriYPftMzParFxgKTi3AdObY3aU7pPKca9vKP3
         KTpH8V/XYhxoLzAgMWjFNZHN6uBfm3mgtkqWay8cebPOzfqcSfE6BHu20G1qDNDThOKM
         Uw1Ao4zOxXT22c22WJm7d9/p3cDVIFSdbc3l8d15KsD8pEBeZxBE0gCuN34Okzs5Ndem
         BGv6hqTkt8cv6lGo2Uro8EjUYuE6fqPHX05UcnlUVvy9aw+pcozq1BQMMzXg2uybBnA8
         fLV3AKjIJYGnTtao8ulr9OvKtdm3hpyB+Hfk8BkcTDnDZiuc3/tiX6A3NZg/friy9wLz
         QBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739185023; x=1739789823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6xd+vxcqG1mZGT915T0HX9ILQH/E7rjAK2oLVDx9yII=;
        b=ekgVLxrLTwn37LCKz4MdQjLjr7wEKGBP5kJaCLTpL7C95HSqulU48QgTP2XjRLwahL
         JuxczfjrMVagDicc4rOnWjnHwBI4xI9HBSFPYN4NP1xi9ORDxRnu+0vyKMFxiKyc72l+
         SsFBRfXCYEUsDzdQwYgR9h7BPtw6sUD9ehI1vabixByO0p+xvIOyu0oz67er6I9F3AHq
         35pTxu+HD+b6wCu1hDGOAzDKiWzPd+KFdvh9RB+eZ9SbeYH486n6ylhqC3CCj6cDgAi0
         e3s31hoBBfyoP/6xL8nPQGXmlPOY392ifKvg9bPkaEhrcyXgh7KwlPfCyqpWjfiyrvmG
         9VNw==
X-Forwarded-Encrypted: i=1; AJvYcCVaAjyXtrExnaJwk9mlzwjow6kPM+ew/utI917bhn5N69VWLX9qg3tmk3+9Giv4WqkMScUCIVEuqiHS@vger.kernel.org
X-Gm-Message-State: AOJu0YyloefvH3xVw3L0VTQ1g4eUmTWtqhEZHiMvWl5FpWQ7E2hm2fx5
	XM8YzeZl9pMhUlCwUpT3bT/9QmpztvyPavHbolTM0ZmC4Fnki2qzbKBsomLbdis=
X-Gm-Gg: ASbGncvesw/RhYe5dWYn6PwlbRLtjriVnx9xbM5VEa4aA3i71mIadQVMoI/jvbJCw1C
	usKUN9+rV22Ibwx4dq37uF/0jvsR+WOoa37fgH2OkvIMKj5BIhRc8Pbht4pCUiAboZwNix5x5Ue
	K//kTjPg7c78h5TWuFDXb3zHq5VpPf3cKSy/5dHOPB+Jf3YcjChGzWCeZTpsDXUtiMG1YqBtRHl
	VZAhrQ61bJid8VEtSJZL+3/b38PE/edNZc8IOPTkRG2pOQtIlDPupE8dbwd4YIYZYseGNZOfA4j
	/UvOH2IsyFcnBKLo3FhsEeMNpQKDAC+QIh5TfifEBQiTFYgxhLdwmvRIMffTKq3fMm5mU6I=
X-Google-Smtp-Source: AGHT+IHwDEpaVSkoV9uzP8u1aUI2Q7JyUrXFsxYabhPcKGbqKSc1h4oh6oLKcGACEjWOIjuumC9uOA==
X-Received: by 2002:a05:6512:e89:b0:545:ea9:1a17 with SMTP id 2adb3069b0e04-5450ea91b4amr641356e87.13.1739185022967;
        Mon, 10 Feb 2025 02:57:02 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450d27e43csm228979e87.214.2025.02.10.02.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 02:57:01 -0800 (PST)
Date: Mon, 10 Feb 2025 12:57:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <quic_mdtipton@quicinc.com>, 
	Jeff Johnson <quic_jjohnson@quicinc.com>, Andrew Halaney <ahalaney@redhat.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V8 3/7] interconnect: qcom: Add multidev EPSS L3 support
Message-ID: <fclfywuw3p43pcj42gi2w5kutvnto3rcrdng2zl2pzgpvz7dis@cjx2e6v4skfm>
References: <20250205182743.915-1-quic_rlaggysh@quicinc.com>
 <20250205182743.915-4-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205182743.915-4-quic_rlaggysh@quicinc.com>

On Wed, Feb 05, 2025 at 06:27:39PM +0000, Raviteja Laggyshetty wrote:
> EPSS on SA8775P has two instances, necessitating the creation of two
> device nodes with different compatibles due to the unique ICC node ID
> and name limitations in the interconnect framework. Add multidevice
> support for the OSM-L3 provider to dynamically obtain unique node IDs
> and register with the framework.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/osm-l3.c | 46 +++++++++++++++++-------------
>  1 file changed, 26 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/interconnect/qcom/osm-l3.c b/drivers/interconnect/qcom/osm-l3.c
> index 6a656ed44d49..da2d82700b5a 100644
> --- a/drivers/interconnect/qcom/osm-l3.c
> +++ b/drivers/interconnect/qcom/osm-l3.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #include <linux/args.h>
> @@ -33,6 +34,7 @@
>  #define EPSS_REG_PERF_STATE		0x320
>  
>  #define OSM_L3_MAX_LINKS		1
> +#define ALLOC_DYN_ID			-1

This should be defined by ICC framework.

>  
>  #define to_osm_l3_provider(_provider) \
>  	container_of(_provider, struct qcom_osm_l3_icc_provider, provider)
> @@ -55,46 +57,40 @@ struct qcom_osm_l3_icc_provider {
>   */
>  struct qcom_osm_l3_node {
>  	const char *name;
> -	u16 links[OSM_L3_MAX_LINKS];
> -	u16 id;
> +	struct qcom_osm_l3_node *links[OSM_L3_MAX_LINKS];
> +	int id;
>  	u16 num_links;
>  	u16 buswidth;
>  };
>  
>  struct qcom_osm_l3_desc {
> -	const struct qcom_osm_l3_node * const *nodes;
> +	struct qcom_osm_l3_node * const *nodes;
>  	size_t num_nodes;
>  	unsigned int lut_row_size;
>  	unsigned int reg_freq_lut;
>  	unsigned int reg_perf_state;
>  };
>  
> -enum {
> -	OSM_L3_MASTER_NODE = 10000,
> -	OSM_L3_SLAVE_NODE,
> -};
> -
> -#define DEFINE_QNODE(_name, _id, _buswidth, ...)			\
> -	static const struct qcom_osm_l3_node _name = {			\
> +#define DEFINE_QNODE(_name, _buswidth, ...)			\
> +	static struct qcom_osm_l3_node _name = {			\
>  		.name = #_name,						\
> -		.id = _id,						\
>  		.buswidth = _buswidth,					\
>  		.num_links = COUNT_ARGS(__VA_ARGS__),			\
>  		.links = { __VA_ARGS__ },				\
>  	}
>  
> -DEFINE_QNODE(osm_l3_master, OSM_L3_MASTER_NODE, 16, OSM_L3_SLAVE_NODE);
> -DEFINE_QNODE(osm_l3_slave, OSM_L3_SLAVE_NODE, 16);
> +DEFINE_QNODE(osm_l3_slave, 16);
> +DEFINE_QNODE(osm_l3_master, 16, &osm_l3_slave);
>  
> -static const struct qcom_osm_l3_node * const osm_l3_nodes[] = {
> +static struct qcom_osm_l3_node * const osm_l3_nodes[] = {
>  	[MASTER_OSM_L3_APPS] = &osm_l3_master,
>  	[SLAVE_OSM_L3] = &osm_l3_slave,
>  };
>  
> -DEFINE_QNODE(epss_l3_master, OSM_L3_MASTER_NODE, 32, OSM_L3_SLAVE_NODE);
> -DEFINE_QNODE(epss_l3_slave, OSM_L3_SLAVE_NODE, 32);
> +DEFINE_QNODE(epss_l3_slave, 32);
> +DEFINE_QNODE(epss_l3_master, 32, &epss_l3_slave);
>  
> -static const struct qcom_osm_l3_node * const epss_l3_nodes[] = {
> +static struct qcom_osm_l3_node * const epss_l3_nodes[] = {
>  	[MASTER_EPSS_L3_APPS] = &epss_l3_master,
>  	[SLAVE_EPSS_L3_SHARED] = &epss_l3_slave,
>  };
> @@ -164,7 +160,7 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>  	const struct qcom_osm_l3_desc *desc;
>  	struct icc_onecell_data *data;
>  	struct icc_provider *provider;
> -	const struct qcom_osm_l3_node * const *qnodes;
> +	struct qcom_osm_l3_node * const *qnodes;
>  	struct icc_node *node;
>  	size_t num_nodes;
>  	struct clk *clk;
> @@ -242,6 +238,10 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>  
>  	icc_provider_init(provider);
>  
> +	/*Initialize IDs to ALLOC_DYN_ID to indicate dynamic id allocation*/
> +	for (i = 0; i < num_nodes; i++)
> +		qnodes[i]->id = ALLOC_DYN_ID;

This can be initialized statically.

> +
>  	for (i = 0; i < num_nodes; i++) {
>  		size_t j;
>  
> @@ -250,14 +250,19 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>  			ret = PTR_ERR(node);
>  			goto err;
>  		}
> +		qnodes[i]->id = node->id;

Should not be necessary.

>  
>  		node->name = qnodes[i]->name;
>  		/* Cast away const and add it back in qcom_osm_l3_set() */
>  		node->data = (void *)qnodes[i];
>  		icc_node_add(node, provider);
>  
> -		for (j = 0; j < qnodes[i]->num_links; j++)
> -			icc_link_create(node, qnodes[i]->links[j]);
> +		for (j = 0; j < qnodes[i]->num_links; j++) {
> +			struct qcom_osm_l3_node *link_node = qnodes[i]->links[j];
> +
> +			icc_link_create(node, link_node->id);

Please add icc_link_nodes() (or something like that), taking two struct
icc_node instances. Then you can use it here, instead of reading back
the ID. Ideally the 'ID' should become an internal detail which is of no
concern for the ICC drivers.

> +			link_node->id = (node->links[node->num_links - 1])->id;
> +		}
>  
>  		data->nodes[i] = node;
>  	}
> @@ -278,6 +283,7 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>  static const struct of_device_id osm_l3_of_match[] = {
>  	{ .compatible = "qcom,epss-l3", .data = &epss_l3_l3_vote },
>  	{ .compatible = "qcom,osm-l3", .data = &osm_l3 },
> +	{ .compatible = "qcom,sa8775p-epss-l3", .data = &epss_l3_perf_state },
>  	{ .compatible = "qcom,sc7180-osm-l3", .data = &osm_l3 },
>  	{ .compatible = "qcom,sc7280-epss-l3", .data = &epss_l3_perf_state },
>  	{ .compatible = "qcom,sdm845-osm-l3", .data = &osm_l3 },
> -- 
> 2.39.2
> 

-- 
With best wishes
Dmitry

