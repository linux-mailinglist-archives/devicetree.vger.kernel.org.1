Return-Path: <devicetree+bounces-147229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9CEA3796A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 02:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D47B43AC15C
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 01:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FFF7748F;
	Mon, 17 Feb 2025 01:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htb9FbjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F19BD2FB
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739754505; cv=none; b=b0yltdFIwH3Z+1Nu1PNAVoY0uJgv63UdfU2Fu0XRrFBDZFq432CIC27C+PNljNXlVrGb/M0KlU3IP8Y7YPfjpVKzGFewtusjDeJRAG77rj9IsQARh6bXyJgL2Ivy1dYBPEy5WwbyNFaq+7y2xlHqNwlMMb0O7JFQO5vo8THIo6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739754505; c=relaxed/simple;
	bh=u3YxH15cjWWJ3E/10audjE1bxiQ6GUHOtodwSzvDMlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=luoD4wrivnceys8UfLnj5I3a5CO3rMX8p1sK/EzFlW3IoRa2ooLd5vhUoVUz5esDk27hs2zrDOpYjHu7/8TkkRoBWMMKDWWwo2zxIjcwPdRMrjUjupfE8DZ/jYGVbB+ocmaqd+mx9iIwQQu36BXdgkcCV/a+IvwXEBeAvCEsIUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=htb9FbjW; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5461a485aa2so850812e87.2
        for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 17:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739754501; x=1740359301; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3MN2ZxY65wgcbMugjNj5As5w/ekQkDx89GK80XWoyKk=;
        b=htb9FbjW35wzEr/w8U83A1x2HqyryyRxx8aoaGEWk4Hht0ryFT8zlruv+3YjVSOBcX
         qrbXxTHH4mPeASkfpXXRLQVyXKGYgmVBAvTkxSxxved7wXL7374hwsabpJ0SFMvo1XBT
         h+uSGJtkoZbssImJ90c+IVNa3+WeHxcO62Za7QJwpuB5Yxt41XT9C5i9VEiShdwects0
         O3I6Q7GSS7wbrdhvKznsEDEYLGVELEEciDXTuDruUD7huhfSGLwDgbLJ3aDky5jama8o
         v/xdieGHtApL7NoqkpVKuCObnd/CZRprlqVrVXRXuKgLYS5phUzrrI9ONjU1AX8amgId
         XbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739754501; x=1740359301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3MN2ZxY65wgcbMugjNj5As5w/ekQkDx89GK80XWoyKk=;
        b=lxZbGBY6qOeClAruRisjCbmRDjRIIEXlkPFh1edEHfkavmbIF3DAswGr0RByQOrS0u
         6Hfcc59tB0bWycPKKfyFJLYe0PCIVo7Qxjb1F9XaEcVh80xhiYlYJ3AZ2nUbAfOO0Niy
         Yv/NZjkjO/e5EJxaY6/VPHkaH09tAlo9Gff+cfxP7ESt1WIhI+LentDaYMH1Z99vveWk
         Bqi3nEAY80TEUf1I4HMU6k9XPWc+WAb3/QUteVchjwNnT0gVceKjGRy8eno1o6SjllSD
         ht5YKtkMSGBy8PFsV2x00p/9OKfokcinUF5TtxMWATma4nDcLjm0zQ887yPLzyMlUeMY
         nKfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnEz5IWS8BryZzRt1BW3x2Bn5V8zqNNU1xQwaNB7sGRsZ3Aj3ftkf2QP9hwCgCG4kCT3HsXQSZmZQI@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQd9OntSjtEdmT8bDFG5RlJ1Upcaqayi9Q0z9AZKBi+4ifyfB
	nuNDB1eTk2yfE7LQlqoEmobEphlGRvNJx0xRJYyQ5TVgYXfuta/P/qJ8i4kPPlY=
X-Gm-Gg: ASbGncs7rfirvdsMkTQckEoySHTkVQl6xy4vQD0sc0MjHNXwcOb+1/pynakBIOBIsKq
	BbPYnlLwNXWGORRi5SD+nIw7QZwHyTR96dat2C9UKc4Ma5++EEzRjFIH3jxVDkdl67oyEfnE7ID
	pXf9lbkDoaMSWBk3n8iYRt9JcCbghDJ2HSLS0kqS1sScTdMkFbmh9CRT2K/laDDAPm6v6GvOxZO
	prLbmX/N2AfKSQJLnP4N6nTvROJjgdT2T1r4cpqB/lXlveRmI0qMiQN2V9lJvge49T/BrsDOtty
	B1mrAtbpKRssGXa0+mvBuYqySoHBmFY0n3nC/r6aRWEGYbb/dECuSdLAi38Kj6alE205nQo=
X-Google-Smtp-Source: AGHT+IGZ1x+tVaZyUAcDWjHsFFF95dHEbPaN1Bn3GkymkP9Y4varLpg8emLi8GEW1T50We92UzbRYA==
X-Received: by 2002:a05:6512:3094:b0:545:2f04:31da with SMTP id 2adb3069b0e04-5452fe8fd5dmr2174156e87.46.1739754500571;
        Sun, 16 Feb 2025 17:08:20 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461c03bbdbsm456325e87.214.2025.02.16.17.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2025 17:08:19 -0800 (PST)
Date: Mon, 17 Feb 2025 03:08:16 +0200
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
Message-ID: <ii33reyezniliytyom2u6k33nqcdrf5c444s76uwb2rs2hodno@q6exlaj6pqug>
References: <20250205182743.915-1-quic_rlaggysh@quicinc.com>
 <20250205182743.915-4-quic_rlaggysh@quicinc.com>
 <fclfywuw3p43pcj42gi2w5kutvnto3rcrdng2zl2pzgpvz7dis@cjx2e6v4skfm>
 <4482b900-2ec0-44c1-9b68-3b403a1df7d8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4482b900-2ec0-44c1-9b68-3b403a1df7d8@quicinc.com>

On Sun, Feb 16, 2025 at 09:58:41PM +0530, Raviteja Laggyshetty wrote:
> 
> 
> On 2/10/2025 4:27 PM, Dmitry Baryshkov wrote:
> > On Wed, Feb 05, 2025 at 06:27:39PM +0000, Raviteja Laggyshetty wrote:
> >> EPSS on SA8775P has two instances, necessitating the creation of two
> >> device nodes with different compatibles due to the unique ICC node ID
> >> and name limitations in the interconnect framework. Add multidevice
> >> support for the OSM-L3 provider to dynamically obtain unique node IDs
> >> and register with the framework.
> >>
> >> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> >> ---
> >>  drivers/interconnect/qcom/osm-l3.c | 46 +++++++++++++++++-------------
> >>  1 file changed, 26 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/interconnect/qcom/osm-l3.c b/drivers/interconnect/qcom/osm-l3.c
> >> index 6a656ed44d49..da2d82700b5a 100644
> >> --- a/drivers/interconnect/qcom/osm-l3.c
> >> +++ b/drivers/interconnect/qcom/osm-l3.c
> >> @@ -1,6 +1,7 @@
> >>  // SPDX-License-Identifier: GPL-2.0
> >>  /*
> >>   * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
> >> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> >>   */
> >>  
> >>  #include <linux/args.h>
> >> @@ -33,6 +34,7 @@
> >>  #define EPSS_REG_PERF_STATE		0x320
> >>  
> >>  #define OSM_L3_MAX_LINKS		1
> >> +#define ALLOC_DYN_ID			-1
> > 
> > This should be defined by ICC framework.
> 
> ok, I will move this to framework.
> > 
> >>  
> >>  #define to_osm_l3_provider(_provider) \
> >>  	container_of(_provider, struct qcom_osm_l3_icc_provider, provider)
> >> @@ -55,46 +57,40 @@ struct qcom_osm_l3_icc_provider {
> >>   */
> >>  struct qcom_osm_l3_node {
> >>  	const char *name;
> >> -	u16 links[OSM_L3_MAX_LINKS];
> >> -	u16 id;
> >> +	struct qcom_osm_l3_node *links[OSM_L3_MAX_LINKS];
> >> +	int id;
> >>  	u16 num_links;
> >>  	u16 buswidth;
> >>  };
> >>  
> >>  struct qcom_osm_l3_desc {
> >> -	const struct qcom_osm_l3_node * const *nodes;
> >> +	struct qcom_osm_l3_node * const *nodes;
> >>  	size_t num_nodes;
> >>  	unsigned int lut_row_size;
> >>  	unsigned int reg_freq_lut;
> >>  	unsigned int reg_perf_state;
> >>  };
> >>  
> >> -enum {
> >> -	OSM_L3_MASTER_NODE = 10000,
> >> -	OSM_L3_SLAVE_NODE,
> >> -};
> >> -
> >> -#define DEFINE_QNODE(_name, _id, _buswidth, ...)			\
> >> -	static const struct qcom_osm_l3_node _name = {			\
> >> +#define DEFINE_QNODE(_name, _buswidth, ...)			\
> >> +	static struct qcom_osm_l3_node _name = {			\

No. Global data _must_ remain const.

> >>  		.name = #_name,						\
> >> -		.id = _id,						\
> >>  		.buswidth = _buswidth,					\
> >>  		.num_links = COUNT_ARGS(__VA_ARGS__),			\
> >>  		.links = { __VA_ARGS__ },				\
> >>  	}
> >>  
> >> -DEFINE_QNODE(osm_l3_master, OSM_L3_MASTER_NODE, 16, OSM_L3_SLAVE_NODE);
> >> -DEFINE_QNODE(osm_l3_slave, OSM_L3_SLAVE_NODE, 16);
> >> +DEFINE_QNODE(osm_l3_slave, 16);
> >> +DEFINE_QNODE(osm_l3_master, 16, &osm_l3_slave);
> >>  
> >> -static const struct qcom_osm_l3_node * const osm_l3_nodes[] = {
> >> +static struct qcom_osm_l3_node * const osm_l3_nodes[] = {
> >>  	[MASTER_OSM_L3_APPS] = &osm_l3_master,
> >>  	[SLAVE_OSM_L3] = &osm_l3_slave,
> >>  };
> >>  
> >> -DEFINE_QNODE(epss_l3_master, OSM_L3_MASTER_NODE, 32, OSM_L3_SLAVE_NODE);
> >> -DEFINE_QNODE(epss_l3_slave, OSM_L3_SLAVE_NODE, 32);
> >> +DEFINE_QNODE(epss_l3_slave, 32);
> >> +DEFINE_QNODE(epss_l3_master, 32, &epss_l3_slave);
> >>  
> >> -static const struct qcom_osm_l3_node * const epss_l3_nodes[] = {
> >> +static struct qcom_osm_l3_node * const epss_l3_nodes[] = {
> >>  	[MASTER_EPSS_L3_APPS] = &epss_l3_master,
> >>  	[SLAVE_EPSS_L3_SHARED] = &epss_l3_slave,
> >>  };
> >> @@ -164,7 +160,7 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
> >>  	const struct qcom_osm_l3_desc *desc;
> >>  	struct icc_onecell_data *data;
> >>  	struct icc_provider *provider;
> >> -	const struct qcom_osm_l3_node * const *qnodes;
> >> +	struct qcom_osm_l3_node * const *qnodes;
> >>  	struct icc_node *node;
> >>  	size_t num_nodes;
> >>  	struct clk *clk;
> >> @@ -242,6 +238,10 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
> >>  
> >>  	icc_provider_init(provider);
> >>  
> >> +	/*Initialize IDs to ALLOC_DYN_ID to indicate dynamic id allocation*/
> >> +	for (i = 0; i < num_nodes; i++)
> >> +		qnodes[i]->id = ALLOC_DYN_ID;
> > 
> > This can be initialized statically.
> 
> There are two instances of EPSS L3 and the target specific compatible
> data is global which requires resetting the IDs for the second instance
> probe. If we don't the reset the IDs back to ALLOC_DYN_ID, then ICC
> framework assumes that ID has been already allocated and doesn't create
> the new ICC nodes for the second instance.

Well, don't use global data for shared purposes. Consider both your
instances probing at the same time. So, please drop the
qcom_osm_l3_node.id, pass ALLOC_DYN_ID directly to the
icc_node_create(), store returned nodes in a local array and pass node
pointers to icc_link_create().

> 
> > 
> >> +
> >>  	for (i = 0; i < num_nodes; i++) {
> >>  		size_t j;
> >>  
> >> @@ -250,14 +250,19 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
> >>  			ret = PTR_ERR(node);
> >>  			goto err;
> >>  		}
> >> +		qnodes[i]->id = node->id;
> > 
> > Should not be necessary.
> This is required, each qnode corresponds to a ICC node in framework and
> some nodes get created in icc_node_create() API and some in
> icc_link_create() API, to have a track of node creation qnode->id is
> used, hence initializing qnode->id with id allocated during icc node
> creation and avoid creation of duplicate nodes.

Basically, no. You cannot do that. Create nodes first, create links
afterwards.

> > 
> >>  
> >>  		node->name = qnodes[i]->name;
> >>  		/* Cast away const and add it back in qcom_osm_l3_set() */
> >>  		node->data = (void *)qnodes[i];
> >>  		icc_node_add(node, provider);
> >>  
> >> -		for (j = 0; j < qnodes[i]->num_links; j++)
> >> -			icc_link_create(node, qnodes[i]->links[j]);
> >> +		for (j = 0; j < qnodes[i]->num_links; j++) {
> >> +			struct qcom_osm_l3_node *link_node = qnodes[i]->links[j];
> >> +
> >> +			icc_link_create(node, link_node->id);
> > 
> > Please add icc_link_nodes() (or something like that), taking two struct
> > icc_node instances. Then you can use it here, instead of reading back
> > the ID. Ideally the 'ID' should become an internal detail which is of no
> > concern for the ICC drivers.
> >
> 
> Instead of reading back the link node id from the framework, I will call
> icc_node_create before calling the icc_link_create() API and assign the
> allocated id to respective qnode in the following way:
> 
> struct qcom_osm_l3_node *qn_link_node = qnodes[i]->links[j];
> struct icc_node *link_node = icc_node_create(qnodes[i]->links[j]->id);
> qn_link_node->id = link_node->id;
> icc_link_create(node, link_node->id);
> 
> This looks cleaner than reading back the id.

As you might have guessed from the the earlier comments, no. Don't write
_anything_ to a global data.

> 
> 
> >> +			link_node->id = (node->links[node->num_links - 1])->id;
> >> +		}
> >>  
> >>  		data->nodes[i] = node;
> >>  	}
> >> @@ -278,6 +283,7 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
> >>  static const struct of_device_id osm_l3_of_match[] = {
> >>  	{ .compatible = "qcom,epss-l3", .data = &epss_l3_l3_vote },
> >>  	{ .compatible = "qcom,osm-l3", .data = &osm_l3 },
> >> +	{ .compatible = "qcom,sa8775p-epss-l3", .data = &epss_l3_perf_state },
> >>  	{ .compatible = "qcom,sc7180-osm-l3", .data = &osm_l3 },
> >>  	{ .compatible = "qcom,sc7280-epss-l3", .data = &epss_l3_perf_state },
> >>  	{ .compatible = "qcom,sdm845-osm-l3", .data = &osm_l3 },
> >> -- 
> >> 2.39.2
> >>
> > 
> 

-- 
With best wishes
Dmitry

