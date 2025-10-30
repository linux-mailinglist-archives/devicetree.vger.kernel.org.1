Return-Path: <devicetree+bounces-233284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F41C208B4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9AE4134EB05
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B29D257820;
	Thu, 30 Oct 2025 14:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QXbR+HMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8056325334B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761833970; cv=none; b=LPQztslbBPxMI2dQ1EOY/UXGiGcf4sZfH/58EhHeP+LybcpYmspf6uvGRVIOw51j+4t8zqpNm0iZsUbcD2PhdAzRNZ1L0tFgU2RZmUlnUOTgciZsE5OCc8zIrAu0/o8BtMhAmLMM8Tu0bqIf71DZwOHbyBsN/ZSexUWnWqOp3fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761833970; c=relaxed/simple;
	bh=nWjEWW14xA6wvhmaKlUmBYkwCi9XznMqECjmZVOuvc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GlOwcsw0/vyOisUfmDTG1Rj5jKrZ6YShaBGnI4sxDCCI7xMzFcECCRTR+o4eIj5y6VuRmXXgE2N78eOxJLRHk6+ed1g5pa1QDrSvy3iLQMitoSF+s6KgiZcvuUNvrmaOliMG9qGEA9prGFR8BuWY8K8tTNXAqVuSHZAtwwoePYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QXbR+HMK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-475dc6029b6so12726455e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761833967; x=1762438767; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a20YeKsMFc9Z6sbLd4e+xL3fMV6LgnJCfC9IDTqyQpU=;
        b=QXbR+HMKmSNQXcqAKd9nVhvOLgYoA3rcN2ykBLdnIklYia71Fdn0We1FCH+vIkrfvR
         NMCAtdu8sqGqhOWohL02QXSgIS8Qnlp67l80/kXdT3zjs2XsTxVAx3IQD1GXfsAQZfsu
         TKf2nhsmtzDbYQluAnN7anuKSvc54c+jikZV0fIlMwQX4efSAYet5Orjja59SRY8mFPi
         o4Raut4qKnh35i/hwOIfYmVpwFE1/+UnYGBgrhY4f2zNxaSZUnJU6B4ssqF5U8OB7Hl3
         Le6+cxgkq5HuejZp7RaSkFPuh8tFbI7SNLoDpiTnupnGmidaKHxGIzVFRR7WSJJEmJzA
         dhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761833967; x=1762438767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a20YeKsMFc9Z6sbLd4e+xL3fMV6LgnJCfC9IDTqyQpU=;
        b=hATVP/RVSYKiccD1+zPqDi+OKnlfzG6VrhjK+gwsXd095zawtga2o3CgX5f/cOVp4C
         e5RPppL/oMuUCW8x8SFRWGOw91UKIyJRhJZ9YDCroOcrd4TCz7wcZow106m0QABrR3dC
         5F7Fz8OboG/41zdj7eE3ZBfEA3rmrAGCghDZPqGxo4emeUWqYPwwd2bVWKOywaB/yQ6F
         akwoiefzeMAGWqGvz8oD16zc7b/PzrlzvI4CJesnmUJ9UfsN9xy5fCFQH8vcz5NbwhE/
         pgAgWJqHNLiOnyPK+OQKeD2sQtqkDwnsbAZBgQp2TkOAKsOKk4pv6j1MIjsgHMbm/3jX
         bNaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1W7EE/qz9Vu+rb3GzyY/5OZtBCs96xHSQOtbFSp96y1Yj/xT5KUqk0fbjbAS/PPn9Je++WDydMq4F@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7+pBwfwfHEYCKWY4+j0ePQFGPuP832tRN0vAFz83tu0tHgJNi
	hInG7iLqJUDX2UVwDuT3UCcp5QX4R0/yXhTouSrL6V5V6qCdSgZz8a0SRnWME4pzu+sd/qfxIQP
	BPinX
X-Gm-Gg: ASbGncsAINLEEPjOYUQJBi3CuAgtPBhv7qddMx2VSZj3F2mL+9WbdIZ3tNvBnkLH8hT
	KPK6SAEeM7rkm5VgMq/eHW3n0U66tqRT8EAEUur88eXK61SsukP71/ec2C6egOgxxbLB1GkwENg
	7NrCN+Id0K2uO/EUB2lQGrw7KS+clqXHSEHEEtRz6nzLuyhOpYLtVMu80OyD2524squgOwd8ACx
	bX+T4BAUBIEKkCh2wQhpwQoTRGY5dhMbnlmHPaZ+yBz48BPiTlWJsQIPqMPvL20ONnVcssj9ML5
	VHCn4LI4UXlGTqIgeawa+3InUn/nM2QB8tegilxT2JNU7qG+ds/D0+Nwu0zbsHwvcOcAdPycRAc
	HvJeD9yuBsdR/GyGmSKRpNyk3XQw7lypuo76sZgIssLLeV9543QW78pYpGHeuEzStQLLcsAZDbp
	2fhAINnNs=
X-Google-Smtp-Source: AGHT+IEBlja5JbNdrJw1QkNw2N7bwbcqpMzF5dSAbI4fK9ZOC8Mvm/unLC/mvyeKuAms9L9CjudSAg==
X-Received: by 2002:a05:600c:b85:b0:476:57b4:72b6 with SMTP id 5b1f17b1804b1-4771e16e83emr67296335e9.8.1761833966643;
        Thu, 30 Oct 2025 07:19:26 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fc524ddsm909265e9.7.2025.10.30.07.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:19:25 -0700 (PDT)
Date: Thu, 30 Oct 2025 16:19:23 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/3] phy: qcom: edp: Make the number of clocks flexible
Message-ID: <sxk3zeqaul32upo2gnmvgembvx2d7eq6qyylmwuxsdahgw4ngu@4zcjcqlooyqa>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
 <wjvec7fiqjzlyo6y5kpzsd5u7rz47anaytu25w2j4yqgtdntx6@zuapdsayoio2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wjvec7fiqjzlyo6y5kpzsd5u7rz47anaytu25w2j4yqgtdntx6@zuapdsayoio2>

On 25-10-29 11:42:26, Bjorn Andersson wrote:
> On Wed, Oct 29, 2025 at 03:31:31PM +0200, Abel Vesa wrote:
> > On X Elite, the DP PHY needs another clock called ref, while all other
> > platforms do not.
> > 
> > The current X Elite devices supported upstream work fine without this
> > clock, because the boot firmware leaves this clock enabled. But we should
> > not rely on that. Also, even though this change breaks the ABI, it is
> > needed in order to make the driver disables this clock along with the
> > other ones, for a proper bring-down of the entire PHY.
> > 
> > So in order to handle these clocks on different platforms, make the driver
> > get all the clocks regardless of how many there are provided.
> > 
> > Cc: stable@vger.kernel.org # v6.10
> > Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -103,7 +103,9 @@ struct qcom_edp {
> >  
> >  	struct phy_configure_opts_dp dp_opts;
> >  
> > -	struct clk_bulk_data clks[2];
> > +	struct clk_bulk_data *clks;
> > +	int num_clks;
> > +
> >  	struct regulator_bulk_data supplies[2];
> >  
> >  	bool is_edp;
> > @@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> >  	if (ret)
> >  		return ret;
> >  
> > -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
> >  	if (ret)
> >  		goto out_disable_supplies;
> >  
> > @@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
> >  {
> >  	struct qcom_edp *edp = phy_get_drvdata(phy);
> >  
> > -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
> >  	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> >  
> >  	return 0;
> > @@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  	if (IS_ERR(edp->pll))
> >  		return PTR_ERR(edp->pll);
> >  
> > -	edp->clks[0].id = "aux";
> > -	edp->clks[1].id = "cfg_ahb";
> > -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> > -	if (ret)
> > -		return ret;
> > +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> > +	if (edp->num_clks < 0)
> > +		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
> 
> Nit...We're not really failing to "parse" clocks...
> 

Will respin with s/parse/get/

> Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Thanks.

