Return-Path: <devicetree+bounces-78633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D439912F30
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:08:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 420541C2129E
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 612AF17C226;
	Fri, 21 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qaqRYFcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8736017C222
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719004103; cv=none; b=Gtao8P2tOGZpaVqI2qlhaTWuI9c86s4j9xTjIJh9C2fcKt2vGhem2AivcIfXXRqr5sRa6XgYZlTuh2ysKzm29y0t0ON5OMGlhEhdbTWBWNFg2W/H6g1oxtNjVtzPb9A7YJa/e4sbGqfEeHgyiPfZBOZHMw1qRgqZiuDIsqddRLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719004103; c=relaxed/simple;
	bh=bPLaeEhvuwdvCfoGzBAsG2GsboVlPdH3OleZXzQ7dak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F+YBQAeOm61U1jCAtKjn9GtU845mr+PvwL0g/pUs5AtKAcjX9hcnHZoX3aHbbpnfFrP/Yahiq1zaEyX72+1jZS/0R4bEs3sE1OrFDPwtJF0fqCCdmgAL/wlNhg9NeFuItJdrmD5eum46RwbBwNbX/8F3jcWCO5pFOLNzxG/pCdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qaqRYFcA; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso6104851fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719004100; x=1719608900; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bKDn9WDsvMx1u3mvfwAal5NXqfcR5qwHZLdccCOZ9ts=;
        b=qaqRYFcAmCec6jLfffwLdpzqB6PXubz5oL1WOZ2Keu9cZC7djFzBkrekEqnWQgi0b0
         UvKLlA52xhNTHws1M8iiL1YJGAJncQA8gpT+MCTUrshz4T9edtgHUR5PHCjKccAB/wL7
         9BVxgnpt3ku5Mu0vF67gICfHoOXMB2TsG3iUidPCJxB8TcyMEEd58ZHALxgJ5ZmZKH6u
         RXwgG+weH/NoU3iVwHp9qWAkKpCj5vDCgDDvhhbraz6nYSp3MYxthie3QIdkXVCppjvb
         M7nL2yr7nzuDp5KRdtKnXPFI3p2GdfuGxUKBvYUNkbbBYGbSa13PCz06LkEn2jZnUpNF
         WWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719004100; x=1719608900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bKDn9WDsvMx1u3mvfwAal5NXqfcR5qwHZLdccCOZ9ts=;
        b=fhIghqCenpMcWwnGgTxT4bpeWetW/tLq76c/xGtyS2ZRL79PPDzeXdt3aj/VYIayav
         TwvMJx2FBuNu2XZcInk8E6XCW3lshPjUGn1aJiEVWxEn2HGep6mj9dT7D7Z+vHfa1Md4
         lwgHf2SfekZBpDO3wf1UahMyn10Qw4r1QfORBYpY1Yl3W/WcILDD0DtABKhac5hlCb0K
         ERtAD+56rZH4acjeik2qjvewxbS8UcoSqoXO+F+hGiyZYKgMfjFMYxU1/UKCk0eqXUjz
         xcGAGNKHG5BrimvBdLPfJUlKwWlSUy8epFk99sdr+yabZf/zrXbdSOnJvRzFmEwB/zzr
         M6gA==
X-Forwarded-Encrypted: i=1; AJvYcCXejHLQuvUiukLohgMCTyzAC1arE4XlFyzrg9GgeZ44yCl1oRVRpka79zYJA/YaG6ma8YyQ4LNLfe1x7e/UvU3Ln4/I1IeiEPvfQw==
X-Gm-Message-State: AOJu0Ywh7ACGFcbvipDNipf9znc39SugkoUtR0GEg71FBE3zcM14rfrw
	PKMPr2xIhREmpburrZHafFqN6KOt6BYxGDJAotzaehriYz00um0wUYNfs5tQQe0=
X-Google-Smtp-Source: AGHT+IFUk+V09aZUixf6lRl8ihl3H4k0wsEnZZx8TWif1xVFqV5G9crEcfDXDGZ4O1vGwGWzVcQI6Q==
X-Received: by 2002:a05:6512:76:b0:52c:84a7:f9d5 with SMTP id 2adb3069b0e04-52ccaa5a0abmr5695233e87.69.1719004099612;
        Fri, 21 Jun 2024 14:08:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63b48f8sm308949e87.2.2024.06.21.14.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:08:19 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:08:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 1/8] remoteproc: qcom: Add PRNG proxy clock
Message-ID: <chi3pzh5ss3mivnhs3qeoen5hsecfcgzaj6qnrgxantvinrri2@bxsbmpufuqpe>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
 <20240621114659.2958170-2-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621114659.2958170-2-quic_gokulsri@quicinc.com>

On Fri, Jun 21, 2024 at 05:16:52PM GMT, Gokul Sriram Palanisamy wrote:
> PRNG clock is needed by the secure PIL, support for the same
> is added in subsequent patches.

Which 'same'?
What is 'secure PIL'?

> 
> Signed-off-by: Nikhil Prakash V <quic_nprakash@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---
>  drivers/remoteproc/qcom_q6v5_wcss.c | 65 +++++++++++++++++++++--------
>  1 file changed, 47 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c b/drivers/remoteproc/qcom_q6v5_wcss.c
> index 94f68c919ee6..366b19cbd994 100644
> --- a/drivers/remoteproc/qcom_q6v5_wcss.c
> +++ b/drivers/remoteproc/qcom_q6v5_wcss.c
> @@ -91,19 +91,6 @@ enum {
>  	WCSS_QCS404,
>  };
>  
> -struct wcss_data {
> -	const char *firmware_name;
> -	unsigned int crash_reason_smem;
> -	u32 version;
> -	bool aon_reset_required;
> -	bool wcss_q6_reset_required;
> -	const char *ssr_name;
> -	const char *sysmon_name;
> -	int ssctl_id;
> -	const struct rproc_ops *ops;
> -	bool requires_force_stop;
> -};
> -
>  struct q6v5_wcss {
>  	struct device *dev;
>  
> @@ -128,6 +115,7 @@ struct q6v5_wcss {
>  	struct clk *qdsp6ss_xo_cbcr;
>  	struct clk *qdsp6ss_core_gfmux;
>  	struct clk *lcc_bcr_sleep;
> +	struct clk *prng_clk;
>  	struct regulator *cx_supply;
>  	struct qcom_sysmon *sysmon;
>  
> @@ -151,6 +139,21 @@ struct q6v5_wcss {
>  	struct qcom_rproc_ssr ssr_subdev;
>  };
>  
> +struct wcss_data {
> +	int (*init_clock)(struct q6v5_wcss *wcss);
> +	int (*init_regulator)(struct q6v5_wcss *wcss);
> +	const char *firmware_name;
> +	unsigned int crash_reason_smem;
> +	u32 version;
> +	bool aon_reset_required;
> +	bool wcss_q6_reset_required;
> +	const char *ssr_name;
> +	const char *sysmon_name;
> +	int ssctl_id;
> +	const struct rproc_ops *ops;
> +	bool requires_force_stop;
> +};

Move this back and use forward-declaration of struct q6v5_wcss.

> +
>  static int q6v5_wcss_reset(struct q6v5_wcss *wcss)
>  {
>  	int ret;

-- 
With best wishes
Dmitry

