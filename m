Return-Path: <devicetree+bounces-154123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB4CA4EED5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 21:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 323917A64AB
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7D525F99B;
	Tue,  4 Mar 2025 20:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sMSA5BHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58464265639
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741121661; cv=none; b=g2Mb8WPO5eoKMeWgZlqyqsDNFdmEOkVBZOHgV0N6NGjYarbrxZWiOC518Og/uFQwKx8v8VpVTBBgCmFqlRXm+xZxogI9R0bJhKZCE+pWOLyyhCgjplY2FeAZCVS6fmH/DtnAQCbN8IGE9fGPCHqm+kd3w3mlYr9kPyZZ2QAo0U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741121661; c=relaxed/simple;
	bh=IRmRM/iqkdC6qVTybFyE3ZuVo0jNnkna+PcF+XjgpOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mMZGDdHnzjKPtO2/7IWW4I8xjCGLJDn3BBYO+3goqA98udY799WFKXEBjVDiXMd6Q4dRmbfQsmJuANnaVS2KPHVEnEPRJEMpRW6AGexriDD7jYNfQ/a5/CN86jlowu6Xdj6uG75q9QKWOjFq/qCCtI8PbysoakqhKRbABhPkbRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sMSA5BHg; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30613802a6bso64675741fa.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 12:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741121657; x=1741726457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zL7TK+qWnCNV5/AETFrb8jPp5cyvJYgATDrXM2qgRgo=;
        b=sMSA5BHgrCnvwYsX05tvOghXR5G5C+Aglgp7TptOi2wcbjnonD3I8Ub5RQWIwrRo0N
         W3RujL+q0Q4C6eN/iCQiSwvPcfntg34b1HMF0s0HDRfqEnQfriJvEmTAJevO11d4HOCe
         ThTm1LJ56b7kpBiGcIBRK2FdZI6JWDXCbaW9SbAnKzEfE6dyruI+SISLOmysSc9nQibN
         w5E/z9pdcv+Cx6NMwnsVpAGFylP8sjtmHku/wf2PjFSXGt/UozkCTiouphxfdp3xagw6
         Ywg2CuSGhI0wPT5gJ1EnO+5kmW/mPwV1Uam3TXt8hnAUaQXZwgyEtNvBCuJTPrjTBzTy
         q+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741121657; x=1741726457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zL7TK+qWnCNV5/AETFrb8jPp5cyvJYgATDrXM2qgRgo=;
        b=jM7fdEFyczhXubDCoQQyl0POpey8t9e1OfAzkNyNWNT8x8DeeJ/O/i98RieRfK8f8h
         wS4LBL0umRYWiWnbYN1YsHluHcnaudawf3gtG0ObvA3M89wE/MKXr/sw2arjNFjDdVmn
         IoZPBSt32G0TVBZMiM5ZzMP6nYF4rUraEW+/CCDpMYHLMObIzbbTmDCQTRiaYK5ig15f
         rUd3vD2A1Tm+a96SsNdSEcc0xmR2ZIqUB91x+V2l0/JUWFnxe7c3gKKh/7QVlC5gj+J8
         5F3oVjIU/yfkos8CsXOqr3pOUNdWHYU0ZLBRpG5Op+I4I1Q84BAw5MdidmNahdh3WZqK
         lwEg==
X-Forwarded-Encrypted: i=1; AJvYcCXiTGlm745KOV9VSVA6MnNVB5xrHL023I7y0032sc9QPKm6Q81tiMyjvPBe3O7hMWP7tPX0lwwZnZSz@vger.kernel.org
X-Gm-Message-State: AOJu0YwHXbyM5vZpCmufbUOuX8+MmHg3X3PwJfVOUkmY8dQCWYUkEuLH
	LjsomLSkGVB3JQxWcX0b9rN5kjGxDCFl9519RrUUWZyeePOpP6tsV0p2HN0u32U1LSoG0lGbQxT
	8dnk=
X-Gm-Gg: ASbGncvs8dsZu/29GAKwlH9m/wKmgy9OeVvJuYGP2GH/IaKQiEOehm9hDfQZxtpl6fD
	pqxdILW5kfP9SzdU4IP1hbAaAl4bKyPEQKdyjQ3hbxjwEq7OQ9PMbau954iPC+h6PbK8bLmRbtm
	oxjYnaG+oKBHnYxLLz3yEb8rrBML3wMnbn7skA5z4/ckuz1L+w62RZXfyW/OlzVm2h6YFW04xoO
	RF4oN6goaJTRJKUyPr92hPw0bocVUkosCgdHZ5Nc0uMoWqRH0P+iZmji4+G+datEHCoFjoabQ8n
	OFJzJf9O8z8Wto055WmVTeMBawrm1+K946j3CQq7P6bmgwJ9Vjls45Q/l653HfHi+na63I3dxLv
	faU7AKwcJxnv6OGiPkIyZJNz5
X-Google-Smtp-Source: AGHT+IE0DjiMQw1sLephw4rxWk7HFEElK/DPXY4ccSdGxPEFiNKQH0Zh68XsjdtSq4f6eZVQtGRvTA==
X-Received: by 2002:a2e:780f:0:b0:308:e9ae:b5b5 with SMTP id 38308e7fff4ca-30bd7b0fc11mr1647801fa.33.1741121657314;
        Tue, 04 Mar 2025 12:54:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bb9d46221sm7710481fa.54.2025.03.04.12.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 12:54:16 -0800 (PST)
Date: Tue, 4 Mar 2025 22:54:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 5/8] media: venus: core: Add SM8350 resource struct
Message-ID: <gwgvw5wpfnvswifeyjvcppsxplobahqrwsswikc7z2h7vbef5e@66qpvzp7hz2e>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-5-279c7ea55493@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-5-279c7ea55493@linaro.org>

On Tue, Mar 04, 2025 at 01:07:11PM +0000, Bryan O'Donoghue wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Add SM8350 configuration data and related compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Link: https://lore.kernel.org/r/20230731-topic-8280_venus-v1-5-8c8bbe1983a5@linaro.org
> [ johan: rebase on 6.9-rc1; convert vcodec_pmdomains ]
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> [ bod: added static video encoder/decoder desciptors ]
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/venus/core.c | 41 ++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 93e5b9e1f70cc..dbce635f9fa45 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -1012,6 +1012,46 @@ static const struct venus_resources sm8250_res = {
>  	.enc_nodename = "video-encoder",
>  };
>  
> +static const struct reg_val sm8350_reg_preset[] = {
> +	{ 0xb0088, 0, 0x11 },
> +};
> +
> +static const struct venus_resources sm8350_res = {
> +	.freq_tbl = sm8250_freq_table,
> +	.freq_tbl_size = ARRAY_SIZE(sm8250_freq_table),
> +	.reg_tbl = sm8350_reg_preset,
> +	.reg_tbl_size = ARRAY_SIZE(sm8350_reg_preset),
> +	.bw_tbl_enc = sm8250_bw_table_enc,
> +	.bw_tbl_enc_size = ARRAY_SIZE(sm8250_bw_table_enc),
> +	.bw_tbl_dec = sm8250_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
> +	.clks = { "core", "iface" },
> +	.clks_num = 2,
> +	.resets = { "core" },
> +	.resets_num = 1,
> +	.vcodec0_clks = { "vcodec0_core" },
> +	.vcodec_clks_num = 1,
> +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> +	.vcodec_pmdomains_num = 2,
> +	.opp_pmdomain = (const char *[]) { "mx", NULL },
> +	.vcodec_num = 1,
> +	.max_load = 7833600, /* 7680x4320@60fps */
> +	.hfi_version = HFI_VERSION_6XX,
> +	.vpu_version = VPU_VERSION_IRIS2,
> +	.num_vpp_pipes = 4,
> +	.vmem_id = VIDC_RESOURCE_NONE,
> +	.vmem_size = 0,
> +	.vmem_addr = 0,
> +	.dma_mask = GENMASK(31, 29) - 1,
> +	.cp_start = 0,
> +	.cp_size = 0x25800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
> +	.fwname = "qcom/vpu-2.0/venus.mbn",

"qcom/vpu/vpu20_p1.mbn"

> +	.dec_nodename = "video-decoder",
> +	.enc_nodename = "video-encoder",
> +};
> +
>  static const struct freq_tbl sc7280_freq_table[] = {
>  	{ 0, 460000000 },
>  	{ 0, 424000000 },
> @@ -1086,6 +1126,7 @@ static const struct of_device_id venus_dt_match[] = {
>  	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res },
>  	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res },
>  	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res },
> +	{ .compatible = "qcom,sm8350-venus", .data = &sm8350_res },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, venus_dt_match);
> 
> -- 
> 2.47.2
> 

-- 
With best wishes
Dmitry

