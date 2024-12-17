Return-Path: <devicetree+bounces-131791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 992CB9F4927
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1AEC16CBBF
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2610E1E3DE6;
	Tue, 17 Dec 2024 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D3ssx1hb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FD71DDC35
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 10:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734432383; cv=none; b=tX4u/2rOasB095H27JSk7a4PkZqPd+tQEi7AjM90XGNAhFaNJwpxFpeYqvNvWcYl9KW5s5v56KjpPsV9rRcYTNt3DtFvGUcTGFIvOwsoWB0CGmD3IXOsjWzkZ9dyZW5doA6ngAHn9iLBVCG9nG5AybGo6SIfbzRuMBx9O4AK1XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734432383; c=relaxed/simple;
	bh=FiwxY4VPkyBVx4uoiII8zeVGiwxR7zogFcIeuHj7lAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAbx1KVX2vKm5BF+HQmX7E9wbb8Nfsm3sI3r/+JFkFqfE/GUBnYoYnha4P4VqL4L6on5UbpPLp/TCAiGFPRbOCbfWuHeFwotVx/hh89u5GXPrAYP3fSJ/IcZdWVAw7g6fiXt3lVLZz7Jn5Twj2skK2FsQfYJGTPYiCUam7Oui1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D3ssx1hb; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3011c7b39c7so56536571fa.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 02:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734432379; x=1735037179; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JSnZ0Mx4mizg0acLlif+7AZWMWB8JycxaVkhyVnyK8I=;
        b=D3ssx1hbaLvdwLXwuwaPYtsyouom2DTdJGfpdZDQyzUGlbq0ckrvSrkLyEE0N91ERQ
         peQ4W3QFgYb0uQnXqubqv6Ga2ScOsfROmCFLAQ4gDSJpf+A3nDt3gOZLwnnTEkucDNgl
         jspQHclldLMmwVlzvLytIKQ5CyYafprr+WWo9eA26+qyUDqRUS/X/BA7UrLYJanXPpsR
         lPANqYV1KecqucaQgr8OIr27yFcryw+V7MyJRxmNovJiUjNU+r544yy/gjekRkZ43Rt1
         AD6oOXVt/m6ol0ATm7inclAs/T0jSCc/IXxXIBO4cuIHOIaSTUa7tlgFR4zzBjwLdNPq
         lNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734432379; x=1735037179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSnZ0Mx4mizg0acLlif+7AZWMWB8JycxaVkhyVnyK8I=;
        b=AJnKoarhZhW2N/wGT2yh1aoUVb+O07cQhxtX0uAIkuCeBFMRHbjYTm//Kg0dY6yf5N
         8YBnQ1mEPOdfiM+MHJiSilfXy9V0j0M9/6CpEteOebDkIWTlZ9pQCrGdqm5v7Tj1abbu
         i8rOxS2UPCy93QKuv2RV9zFQ5yJ1a8qpGLSvteJ24T6GyZgO3u1aHKNF+qDDtvCb4Ty/
         Hx+VjLd74i8pKvdD6jjlPv6ujrbivLV67kqGjxP/cEDGHnFoobCMwdnhPbP2ebsfWNFe
         +g4+Na7YdVFDmKwYx8Cl6hTr2AhdTImIqbdNKpXIWBkjzNOPtNkKmr4QEzqAjmVcGl0d
         0UBg==
X-Forwarded-Encrypted: i=1; AJvYcCW4mAHw7A2cuasiAioWBRp9JfMfEbA8kreWscybGhjbBSGujtUPs9zPjHinWn0fLX6qLKTjw6OKiG3+@vger.kernel.org
X-Gm-Message-State: AOJu0YzugfDbf4fi/A4j3hVwpDY5BwEFnMh5WkQbIeVrA7Pi6MbDv51S
	0avWNV2JzJZCV7HN7H4qSYG++tHOmsqk1hgcuns0rWOSF5QSx1caxN9SoQmsbpM=
X-Gm-Gg: ASbGncss6HV0faQjubkgUkN5zYycZDwWxPOvAklK9w/95+Jo1LGXV72Eot0J1gC2ZRV
	64TMHdlgS6gCJRLef+vNkJu1AvE/6lJDg3+HvFp7c1b2R+X6Ut+brv7i74N5lZmtRLdQYRb/1IF
	9P2iSwSCsBX06ZYvBQcj74FnEMwAsOEv1Yz9ZYDFy/9qaumnWMXnenPvFhUPARMSUT5TVmFkndM
	L6977PPM8hfYL5wU269VDfoYTLTTq77WqlRkD6AVjt6kwuVAr1PamL1cPsnsAN90rTBdajaUKoa
	UcgNn2xCbttbldbK7UtmJEJGHl/VvkMK9s+J
X-Google-Smtp-Source: AGHT+IFtdnVnrp1/gspKbWgsAMJI+1h5/kNF3qFQhCksGg4KzJBNmIkm4ZMGj0ADHd8QexsymwkNwA==
X-Received: by 2002:a05:6512:3d09:b0:540:1e75:4bdc with SMTP id 2adb3069b0e04-540905aad0dmr5140888e87.38.1734432379074;
        Tue, 17 Dec 2024 02:46:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c13c3asm1102025e87.210.2024.12.17.02.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 02:46:17 -0800 (PST)
Date: Tue, 17 Dec 2024 12:46:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: myungjoo.ham@samsung.com, Kyungmin.park@samsung.com, 
	cw00.choi@samsung.com, Viresh Kumar <viresh.kumar@linaro.org>, sudeep.holla@arm.com, 
	cristian.marussi@arm.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org, 
	arm-scmi@vger.kernel.org, Amir Vajid <avajid@quicinc.com>
Subject: Re: [PATCH V4 4/5] soc: qcom: Introduce SCMI based Memlat (Memory
 Latency) governor
Message-ID: <uwwiz2o6brn5zczbpaiajdq7yva2qpcpgzwdr26lhg4jvlwvvj@w5bkiuhdalze>
References: <20241007061023.1978380-1-quic_sibis@quicinc.com>
 <20241007061023.1978380-5-quic_sibis@quicinc.com>
 <2aycrvnvivcrqctqmweadcgenwugafdr6ub3bzkscterpenz32@bzabln2hkral>
 <29eef87e-96f6-5105-6f7a-a8e01efcb4a3@quicinc.com>
 <k4lpzxtrq3x6riyv6etxiobn7nbpczf2bp3m4oc752nhjknlit@uo53kbppzim7>
 <ac655bdc-5ccf-c6c6-3203-659f1916c53c@quicinc.com>
 <34p27za5hcpubaxjuddsir2vqnqrvwyesnclu2cocvm3yhbv3r@ak7rcnp67gyd>
 <1f5258f4-7c20-5343-dec6-0847449c821b@quicinc.com>
 <CAA8EJpoN3QSi72UUDV+=YkqySgXkiODUFJvwpBYfSmnkSotuZA@mail.gmail.com>
 <4399f7da-9478-57c0-7405-e51dc35d90ba@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4399f7da-9478-57c0-7405-e51dc35d90ba@quicinc.com>

On Tue, Dec 17, 2024 at 03:46:24PM +0530, Sibi Sankar wrote:
> 
> 
> On 12/5/24 17:00, Dmitry Baryshkov wrote:
> > On Thu, 5 Dec 2024 at 12:53, Sibi Sankar <quic_sibis@quicinc.com> wrote:
> > > 
> > > 
> > > 
> > > On 11/14/24 18:02, Dmitry Baryshkov wrote:
> > > > On Thu, Nov 14, 2024 at 09:43:53AM +0530, Sibi Sankar wrote:
> > > > > 
> > > > > 
> > > > > On 10/26/24 23:46, Dmitry Baryshkov wrote:
> > > > > > On Tue, Oct 22, 2024 at 01:48:25PM +0530, Sibi Sankar wrote:
> > > > > > > 
> > > > > > > 
> > > > > > > On 10/7/24 23:27, Dmitry Baryshkov wrote:
> > > > > > > > On Mon, Oct 07, 2024 at 11:40:22AM GMT, Sibi Sankar wrote:
> > > > 
> > > > > > > > 
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct map_param_msg {
> > > > > > > > > +        u32 hw_type;
> > > > > > > > > +        u32 mon_idx;
> > > > > > > > > +        u32 nr_rows;
> > > > > > > > > +        struct map_table tbl[MAX_MAP_ENTRIES];
> > > > > > > > > +} __packed;
> > > > > > > > > +
> > > > > > > > > +struct node_msg {
> > > > > > > > > +        u32 cpumask;
> > > > > > > > > +        u32 hw_type;
> > > > > > > > > +        u32 mon_type;
> > > > > > > > > +        u32 mon_idx;
> > > > > > > > > +        char mon_name[MAX_NAME_LEN];
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct scalar_param_msg {
> > > > > > > > > +        u32 hw_type;
> > > > > > > > > +        u32 mon_idx;
> > > > > > > > > +        u32 val;
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +enum common_ev_idx {
> > > > > > > > > +        INST_IDX,
> > > > > > > > > +        CYC_IDX,
> > > > > > > > > +        CONST_CYC_IDX,
> > > > > > > > > +        FE_STALL_IDX,
> > > > > > > > > +        BE_STALL_IDX,
> > > > > > > > > +        NUM_COMMON_EVS
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +enum grp_ev_idx {
> > > > > > > > > +        MISS_IDX,
> > > > > > > > > +        WB_IDX,
> > > > > > > > > +        ACC_IDX,
> > > > > > > > > +        NUM_GRP_EVS
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +#define EV_CPU_CYCLES           0
> > > > > > > > > +#define EV_INST_RETIRED         2
> > > > > > > > > +#define EV_L2_D_RFILL           5
> > > > > > > > > +
> > > > > > > > > +struct ev_map_msg {
> > > > > > > > > +        u32 num_evs;
> > > > > > > > > +        u32 hw_type;
> > > > > > > > > +        u32 cid[NUM_COMMON_EVS];
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct cpufreq_memfreq_map {
> > > > > > > > > +        unsigned int cpufreq_mhz;
> > > > > > > > > +        unsigned int memfreq_khz;
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct scmi_monitor_info {
> > > > > > > > > +        struct cpufreq_memfreq_map *freq_map;
> > > > > > > > > +        char mon_name[MAX_NAME_LEN];
> > > > > > > > > +        u32 mon_idx;
> > > > > > > > > +        u32 mon_type;
> > > > > > > > > +        u32 ipm_ceil;
> > > > > > > > > +        u32 mask;
> > > > > > > > > +        u32 freq_map_len;
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct scmi_memory_info {
> > > > > > > > > +        struct scmi_monitor_info *monitor[MAX_MONITOR_CNT];
> > > > > > > > > +        u32 hw_type;
> > > > > > > > > +        int monitor_cnt;
> > > > > > > > > +        u32 min_freq;
> > > > > > > > > +        u32 max_freq;
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +struct scmi_memlat_info {
> > > > > > > > > +        struct scmi_protocol_handle *ph;
> > > > > > > > > +        const struct qcom_generic_ext_ops *ops;
> > > > > > > > > +        struct scmi_memory_info *memory[MAX_MEMORY_TYPES];
> > > > > > > > > +        u32 cluster_info[NR_CPUS];
> > > > > > > > > +        int memory_cnt;
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +static int populate_cluster_info(u32 *cluster_info)
> > > > > > > > > +{
> > > > > > > > > +        char name[MAX_NAME_LEN];
> > > > > > > > > +        int i = 0;
> > > > > > > > > +
> > > > > > > > > +        struct device_node *cn __free(device_node) = of_find_node_by_path("/cpus");
> > > > > > > > > +        if (!cn)
> > > > > > > > > +                return -ENODEV;
> > > > > > > > > +
> > > > > > > > > +        struct device_node *map __free(device_node) = of_get_child_by_name(cn, "cpu-map");
> > > > > > > > > +        if (!map)
> > > > > > > > > +                return -ENODEV;
> > > > > > > > > +
> > > > > > > > > +        do {
> > > > > > > > > +                snprintf(name, sizeof(name), "cluster%d", i);
> > > > > > > > > +                struct device_node *c __free(device_node) = of_get_child_by_name(map, name);
> > > > > > > > > +                if (!c)
> > > > > > > > > +                        break;
> > > > > > > > > +
> > > > > > > > > +                *(cluster_info + i) = of_get_child_count(c);
> > > > > > > > > +                i++;
> > > > > > > > > +        } while (1);
> > > > > > > > 
> > > > > > > > Can you use existing API from drivers/base/arch_topology.c? If not, can
> > > > > > > > it be extended to support your usecase?
> > > > > > > 
> > > > > > > ack. But I'm pretty sure it's going to take a while for reaching such
> > > > > > > an agreement so I'll drop this feature during the next re-spin.
> > > > > > 
> > > > > > Why? What kind of API do you actually need? The arch_topology.c simply
> > > > > > exports a table of struct cpu_topology. Is it somehow different from
> > > > > > what you are parsing manually?
> > > > > 
> > > > > yup, we had to figure out the physical id of the cpu
> > > > > since cpus can be disabled by the bootloader using
> > > > > status = "failed" property and we have to pass this
> > > > > onto the cpucp memlat algorithm.
> > > > 
> > > > Isn't it equal to the index in the cpu_topology table?
> > > 
> > > from what I see cpu_topology indexes remain unpopulated
> > > for cpus that are disabled since get_cpu_for_node
> > > ignores those?
> > 
> > Why do you need cpu_topology for disabled aka non-existing CPU devices?
> 
> sorry was out sick couldn't back earlier. We need the know
> what cpus are disbled to pass on the correct mask of cpus
> enabled to the SCP.

Yes. So isn't it enough to know only the enabled CPUs?


-- 
With best wishes
Dmitry

