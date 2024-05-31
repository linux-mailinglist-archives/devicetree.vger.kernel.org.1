Return-Path: <devicetree+bounces-71182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5D48D5F71
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6A621F2452D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5465915099D;
	Fri, 31 May 2024 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ao8LKugR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E35150981
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717150767; cv=none; b=m00w2f+2cwKJw5EEn+7emJdKUD4arFqPbuJQipeXb847OWpnzW9bxaLFZm3KD9RusGupn7iXs6TYgziTWfbXafjV7U2z5IGUF0huVHp9nlCso82r+PmmPcFEDQ7oJHxqopHOZ4kOxz1ALI7vsMHnkeWFzKFCteXNNU+vUmsAtyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717150767; c=relaxed/simple;
	bh=tpARhdnqDejvUkHf6A6ZGltXn5u+j+vN0C/r8HohpZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=odXR4ixRFGGKDm6z+xqlMkGxfQkW0T1rTsx22Y0ylc8TzobPLM5c4QwJ7r9KdBdiJtQZQMHsxwg/d1OPBckZVUdaTL/8AaSpsirWDZiQDSjrPstIKVmL4Rbf3h171GFS7mrdzPpoCQxRqXbI0wVi/jIsGfym8jDvbbxpUNgjX5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ao8LKugR; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5241b49c0daso2220327e87.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 03:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717150764; x=1717755564; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mV76t4cc6pTDC5ZC7ticoYRVaUYUCrSvGFXMf4nLI88=;
        b=Ao8LKugRCDEOCh9jlYFBgv7KigBwXjgb9xm6JaO7ExcdC9t+LHVEV8LYkLBDKf5oPU
         kPqD9SPesp2zuQqeqakVnsPStxpP1lsBSc8Yzuy8ugc4Ktgp9digwpb5wLg4Xp7wDe0Y
         PH4awiaMYyC3L1xTZ8L9nKHRF4EFVq7/aOgyEN+VB4/Z56ueOATQSEcV0cOOlE8GFET7
         IdRv5ymrZurIFhNI8u4qO1Sg/lZevFJ+GJge/LH4Qgrl72FBP1lAPfGmodxfN89Ba/1S
         c6e190kXcaVndAL5waOsuZN2VnZ3Z7wuM208rx6NPheOGfLLXNOC/r7rvpzOXIuFavoO
         CAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717150764; x=1717755564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mV76t4cc6pTDC5ZC7ticoYRVaUYUCrSvGFXMf4nLI88=;
        b=d1tnXaSgPJhG600LzMscOh3h8W8XauivsufC8/DuN8Rtwf/oOqoZTRz6haco0SX2Sg
         GiVtcT6nvANqjsu5oBYGluASQP6ZiwLOXTreb6y7hNU6U6eE7CMjQCmxq0CDR8QGufQa
         V5P8Tc5YIiyz9PAr2pAa9CTJ0zFGyMcKItEyqLyIJwS4hFTtxE+lU66PsIG4o4Ep1h8U
         MeJg+Fwd6njJAiRYnspCIygN3MhcoiQD4hL7pJZsZ5xPJdou8HvJp150a2TXXeXD+qNz
         sk2F7WW5p3eYf7a4BwWRTbNrbmD7+2pIo6newa7fj0sz9UswG9gkmhWnAzcphDHqfiPt
         r55w==
X-Forwarded-Encrypted: i=1; AJvYcCVt/YiComMBK5+nNShc2iVzIHa4BX50gjr9D4mcjUaPsp6VZJotWQQwgQe69fkUXAdriD6056D5hiPOrF+SXs/hrpGOaPZ9NA7Vhg==
X-Gm-Message-State: AOJu0Yx/MzoU+Kr7L9WdlXqoym5RXibY76VVR2oFmaCm3gQzXmiTXbfH
	i8MmH0VQ096+IG2uYLeeh4U9twtBlrEJ35LyvjwzP/HGQSWAIkg2fXzvsOAjpt8=
X-Google-Smtp-Source: AGHT+IEqea1VcUvpL4DaWYLaSQWOtObl3fO5LomQnajs74gEtay+IQUApjHW0XNUvR4dba5N2XbxPQ==
X-Received: by 2002:a05:6512:74c:b0:52b:2f78:9c92 with SMTP id 2adb3069b0e04-52b895694a3mr836554e87.5.1717150763810;
        Fri, 31 May 2024 03:19:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f428sm286144e87.92.2024.05.31.03.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 03:19:23 -0700 (PDT)
Date: Fri, 31 May 2024 13:19:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: qcm6490-idp: Update protected
 clocks list
Message-ID: <3zpeoonngdzyubxs2t4r6izwilrqgdxk75bjhqfmov2vmrugzn@ebes3fuvskhn>
References: <20240318053555.20405-1-quic_tdas@quicinc.com>
 <20240318053555.20405-8-quic_tdas@quicinc.com>
 <06c08855-3965-4d57-8bec-fba8544dee7d@linaro.org>
 <9a2a4e55-e123-4f41-bfaa-563cf2e04f5a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a2a4e55-e123-4f41-bfaa-563cf2e04f5a@quicinc.com>

On Fri, May 31, 2024 at 03:04:51PM +0530, Taniya Das wrote:
> 
> 
> On 3/18/2024 1:24 PM, Krzysztof Kozlowski wrote:
> > On 18/03/2024 06:35, Taniya Das wrote:
> > > Certain clocks are not accessible on QCM6490-IDP board,
> > > thus mark them as protected. Update the lpassaudio node to
> > > support the new compatible.
> > > 
> > > Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> > > ---
> > 
> > > 
> > > +&gcc {
> > > +	protected-clocks = <GCC_AGGRE_NOC_PCIE_1_AXI_CLK> ,<GCC_PCIE_1_AUX_CLK>,
> > > +			<GCC_PCIE_1_AUX_CLK_SRC>, <GCC_PCIE_1_CFG_AHB_CLK>,
> > > +			<GCC_PCIE_1_MSTR_AXI_CLK>, <GCC_PCIE_1_PHY_RCHNG_CLK_SRC>,
> > > +			<GCC_PCIE_1_PIPE_CLK>, <GCC_PCIE_1_PIPE_CLK_SRC>,
> > > +			<GCC_PCIE_1_SLV_AXI_CLK>, <GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
> > > +			<GCC_QSPI_CNOC_PERIPH_AHB_CLK>, <GCC_QSPI_CORE_CLK>,
> > > +			<GCC_QSPI_CORE_CLK_SRC>,<GCC_USB30_SEC_MASTER_CLK>,
> > > +			<GCC_USB30_SEC_MASTER_CLK_SRC>, <GCC_USB30_SEC_MOCK_UTMI_CLK>,
> > > +			<GCC_USB30_SEC_MOCK_UTMI_CLK_SRC>,
> > > +			<GCC_USB30_SEC_MOCK_UTMI_POSTDIV_CLK_SRC>, <GCC_USB30_SEC_SLEEP_CLK>,
> > > +			<GCC_USB3_SEC_PHY_AUX_CLK>, <GCC_USB3_SEC_PHY_AUX_CLK_SRC>,
> > > +			<GCC_USB3_SEC_PHY_COM_AUX_CLK>, <GCC_USB3_SEC_PHY_PIPE_CLK>,
> > > +			<GCC_USB3_SEC_PHY_PIPE_CLK_SRC>, <GCC_CFG_NOC_LPASS_CLK>,
> > > +			<GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>, <GCC_MSS_CFG_AHB_CLK>,
> > > +			<GCC_MSS_OFFLINE_AXI_CLK>, <GCC_MSS_SNOC_AXI_CLK>,
> > > +			<GCC_MSS_Q6_MEMNOC_AXI_CLK>, <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
> > > +			<GCC_SEC_CTRL_CLK_SRC>, <GCC_WPSS_AHB_CLK>,
> > > +			<GCC_WPSS_AHB_BDG_MST_CLK>, <GCC_WPSS_RSCP_CLK>;
> > > +};
> > > +
> > > +&lpass_audiocc {
> > > +	compatible = "qcom,qcm6490-lpassaudiocc";
> > 
> > What? Why do you override compatible for given board? This is a SoC
> > block, not board!
> 
> On QCM6490-IDP and QCS690-RB3Gen2 boards, the HLOS Audio driver requires the
> support for the reset functionality only from the LPASS region.
> Rest of the clocks functionality is controlled from LPASS firmware.
> 
> Hence, in the earlier series we marked all the clocks as protected and
> introduced new "qcom,adsp-skip-pll" flag to skip PLL configurations.
> But as the flag was also not approved and the ask was to use the compatible
> string, we went ahead with this approach.

Is this also applicable for the QCM6490 FairPhone5? If so, maybe it's
time to have qcm6490.dtsi.

-- 
With best wishes
Dmitry

