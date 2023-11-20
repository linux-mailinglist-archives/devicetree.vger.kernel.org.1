Return-Path: <devicetree+bounces-17305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 519237F1FBF
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C741281F52
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE7238FB7;
	Mon, 20 Nov 2023 21:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="boxaGvzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B741919B9
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:49:44 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6b709048f32so4110776b3a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700516984; x=1701121784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dXdNO3H0aU38lJAHXmsd36+whUxtAu3qVmdPatddnpY=;
        b=boxaGvzrpucAoc65zI4Avrru+Shzbwo8jd7yszv2n+1a8YgTfswqcUqFNlkMTU5VKY
         NCzl8BhB2l7Weq/jYzQScygZcqcJGSQoGRHXdnzR/NWc/n5xnf9rxDjARNTikm/uuvSD
         d72MsyeKE8lGS/pptI+RHtmHLuxlrW0CxfV1tAqqytLg5J/5PIDi3kiwxPEaP71o0dxL
         98PiNQNxPlE3ZKVm3wJGxF7tEG0Iskw7OJDGzUvbGV9jTV1AISz8IBS98iG+5hF2Wm6y
         6J7BfPCk6OL5mCKyHAcAHVmGnLEDu0X0P6yo8d1RpoP9xkgkfrwjovugZWlZhnnpNrn1
         OFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700516984; x=1701121784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXdNO3H0aU38lJAHXmsd36+whUxtAu3qVmdPatddnpY=;
        b=rEjMYhKcY7e7sU0cs7hJJBwzNdgi2125x1IDO/79zWmbOSgNRxELugBPmBC8P8hUfo
         kVQWdfUAqYPyBEI+0Hn1xX93YZU5rr0jCdOcn27Fdm85Jt3TKEfyaKzG6CyyiCGawrsW
         sCOobPmauNUmMpsxZo6his8oks3efTdh+kEVHOA1gLTCZamp4q/kLWuOEfp8bsm76tup
         xaTull25gwTrybkamAMilVNoQ2V5EhQQnVJLVvmrsWT0ePHv73dtqRow+KIuYDymnPVV
         2FY4PPEAt///oztsgHlJgsj7Vy75bE7/UlqdrgtVEp46EYyjVOnmPFK+7ZkkVWzsci/H
         RKjw==
X-Gm-Message-State: AOJu0Ywe+yILx8K95Wp5RQE+JA2nPSSU+bKYnsraPMkRWQrMRNFlIfIJ
	leXmybWCTrTNV2C2Tn6EDHscKQ==
X-Google-Smtp-Source: AGHT+IHo4ANpQvv6aa2H17MSpU/clKN9d1EDtkl9s3C2H+RvfW2pPD7zyh9pv8/hNCFSpEBFd9e6ew==
X-Received: by 2002:a05:6a00:1516:b0:6cb:68d7:b1bc with SMTP id q22-20020a056a00151600b006cb68d7b1bcmr5001372pfu.30.1700516984127;
        Mon, 20 Nov 2023 13:49:44 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:44fb:1793:dfea:b2d6])
        by smtp.gmail.com with ESMTPSA id u1-20020aa78381000000b006c69d4c9b24sm6539328pfm.167.2023.11.20.13.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:49:43 -0800 (PST)
Date: Mon, 20 Nov 2023 14:49:40 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: "Iuliana Prodan (OSS)" <iuliana.prodan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Shawn Guo <shawnguo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	alexander.stein@ew.tq-group.com,
	"S.J. Wang" <shengjiu.wang@nxp.com>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Mpuaudiosw <Mpuaudiosw@nxp.com>,
	Iuliana Prodan <iuliana.prodan@nxp.com>,
	linux-imx <linux-imx@nxp.com>, linux-remoteproc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	LnxRevLi <LnxRevLi@nxp.com>
Subject: Re: [PATCH v4 0/2] Rpmsg support for i.MX DSP with resource table
Message-ID: <ZVvUdKxVpJesiIPg@p14s>
References: <20231013152731.23471-1-iuliana.prodan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013152731.23471-1-iuliana.prodan@oss.nxp.com>

On Fri, Oct 13, 2023 at 06:27:29PM +0300, Iuliana Prodan (OSS) wrote:
> From: Iuliana Prodan <iuliana.prodan@nxp.com>
> 
> These patches are needed in order to support rpmsg on DSP when a
> resource table is available.
> 
> Changes since v3:
>  - add reserve-memory nodes in imx8mp-evk.dts rather than .dtsi (patch 2/2)
> 
> Changes since v2:
>  - add newline between nodes in dtsi (patch 2/2)
> 
> Changes since v1:
>  - add missing bracket in dtsi (patch 2/2)
> 
> Iuliana Prodan (2):
>   remoteproc: imx_dsp_rproc: add mandatory find_loaded_rsc_table op
>   arm64: dts: imx8mp: add reserve-memory nodes for DSP
> 
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 22 ++++++++++++++++++++
>  drivers/remoteproc/imx_dsp_rproc.c           |  1 +
>  2 files changed, 23 insertions(+)
>

I have applied this set.

Thanks,
Mathieu

> -- 
> 2.17.1
> 

