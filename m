Return-Path: <devicetree+bounces-124394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF099D8A92
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28519B378B0
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C951B6CF4;
	Mon, 25 Nov 2024 16:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L53j1MSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3F1B415D
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732551629; cv=none; b=DGS3X+DBOatb6xE0SgR7H9+b2ZCPzsjKEPfZ9m7ttJcHIW2+KHSansmN9zReJ9+uwrAaSis4qhX0HYRiwJ/SVvlBS18XLnkYrmZG8rSyPULXxEEBNNk+Tbu+DztoGZ3qzImtoSM99SctIa23w+iniHRbJ2iZh+xKdR57pHFhSZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732551629; c=relaxed/simple;
	bh=jIz6yqv3rQbq9An1NPSJcpLwnbdowJpW7nXb8kiGPyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NqUB/NZ4NspH4fdS165p5qLzZnKNbDHED5x7ZRLfQXJDf2d3D9ONa6Gb8j61h1NQHTrPEP1yV6cV426P1KIWCgnDJXmQo4rUG06u1E7P+tYY1X2X5NOXLTZBlk5uQhX+hnverfiU6LL1yWCQWuVpYANZqPRJeYSSY8cTUbbbb4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L53j1MSQ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53de2c7e101so1626708e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732551624; x=1733156424; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=osAdnzghfwg0ow+DK7g6ijsqkNJWf2271WtACbHNvN0=;
        b=L53j1MSQHGgd56joGpTEA7/DJSkBcfWhC989ev8vZYvgbiZ5GBay8eXelRyOnAeGZj
         AmoWG+SQ77R5Id0p9sLwDCit9kCjfXGpK5EGyYtGunO+PVEod9w8HQYjlJF6k+INTh5+
         qOeP7Rb5Nac2d88nLgHD85oKPq3MSBUPbyf0pGionmscR+7s6CmowkHurwHQiL2cL1KK
         Po5kEHnbBEi7r/N6/ddnI7IDxzr9M6l99DpdUDXWcOQK2A/MZX8YyyU+p/drmtuldgGR
         0YOaARv05tGBK7rRYyVR/CIyw5Lqs/47Mx+n5fDVg/u40W1NSD1T/ccmxtVI4LexlBO8
         6Xlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732551624; x=1733156424;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=osAdnzghfwg0ow+DK7g6ijsqkNJWf2271WtACbHNvN0=;
        b=YupIYPdylG72n9Z8ppRht23NWLn2uLYrjRTCIJCvAiefh8CgB2iZNp2oLSgJLsFv5Y
         dlTo0IxBWpwUIREd7NOUd2AcCy7wuCNCBEtf6AWTh4UEQgCEsx8eqj5BRXiLSPFKfYWP
         oHRI77JcOVHdVLbDRYDxOrrBalne5HH2ijcXYnCv0v3Ah5c8ExDMDw4fw52m1KGLoUPI
         r+7h85JzqX5yEXi/dtXtSPoYsqFPicqsRrJk6oacmVQCa29fQ7heFQhyTqYSnAdP2acH
         +b8QwjnFLxvfXNsVUbJa4FcAP1zQXJHiD7pahWDwYJtD36KxJMqqVWAxtDKMSJw72XzK
         oIUw==
X-Forwarded-Encrypted: i=1; AJvYcCUmZdNg8KK9D6ebsb8ZNTwIn9sk5KMEi2cgXz5Lk4F59fswK6dOaB2qfaRGZg3kCcEfEKdCJa2hqCMG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx663Y2BgqH5AfIpKLa/WEUn70DM1glae21hrK18Z/zh8RQZgMP
	vUN4uRAQFNxCTAfqnKBtG68eYZNHdr0/PuYNnVC4d5qIXTDbp9nT9WeRnEGYQF8=
X-Gm-Gg: ASbGncvEn4A6U0cLqrREwBSjUe2QaGaQlU02466GroiZWUC9kPTFIG1PGQW7Rnt7n/q
	uZcXfs0s9bsTHPFbhgrBHzBZ7DxNJt4d5LMDe5ujgWuKtyqty4z+5mLXovkR8BsKkz6iVVg7N5l
	tYvJvITI7y9/IMAGVvrujuqkzgn1PatQ6jh4zbNjKAesamrq0ibXvlkgzdO2JfgpYTyGJXz/vUC
	MHcY/KjkbYsu8iNDb6y0RPZ+KjBhQ5fedUPmqdajY9dRhJclecxvtWyC8XAIotXQ0N3nF/zUfez
	p4k4pkrnRoNQXK/0mj2e4/+vvuqJwg==
X-Google-Smtp-Source: AGHT+IGGJmuLAqbWK+ECiMMHIoK9Za26vUdLmxRyMCY0pIIzGmiDusuBm5BdVWv1P0n612BIvLr1ow==
X-Received: by 2002:a05:6512:224d:b0:53d:a5c8:aaa6 with SMTP id 2adb3069b0e04-53dd36a1186mr5952770e87.13.1732551624397;
        Mon, 25 Nov 2024 08:20:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2489ac9sm1704981e87.182.2024.11.25.08.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 08:20:23 -0800 (PST)
Date: Mon, 25 Nov 2024 18:20:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Renjiang Han (QUIC)" <quic_renjiang@quicinc.com>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
	"Vikash Garodia (QUIC)" <quic_vgarodia@quicinc.com>, "bryan.odonoghue@linaro.org" <bryan.odonoghue@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/4] media: venus: core: add qcs615 platform data
Message-ID: <ro5nx6brovd7inyy6tkrs7newszcxrzymfbsftejgpglz3gs6v@pscij26xmmco>
References: <20241125-add-venus-for-qcs615-v3-0-5a376b97a68e@quicinc.com>
 <20241125-add-venus-for-qcs615-v3-2-5a376b97a68e@quicinc.com>
 <j4nnlbstclwgoy2cr4dvoebd62by7exukvo6nfekg4lt6vi3ib@tevifuxaawua>
 <da432de1369e4ce799c72ce98c9baaf1@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da432de1369e4ce799c72ce98c9baaf1@quicinc.com>

On Mon, Nov 25, 2024 at 03:34:19PM +0000, Renjiang Han (QUIC) wrote:
> On Monday, November 25, 2024 9:36 PM, Dmitry Baryshkov wrote:
> > On Mon, Nov 25, 2024 at 11:04:50AM +0530, Renjiang Han wrote:
> > > Initialize the platform data and enable venus driver probe of QCS615 
> > > SoC.
> > > 
> > > Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com> >
> > > ---
> > >  drivers/media/platform/qcom/venus/core.c | 50 
> > > ++++++++++++++++++++++++++++++++
> > >  1 file changed, 50 insertions(+)
> > > 
> > > diff --git a/drivers/media/platform/qcom/venus/core.c 
> > > b/drivers/media/platform/qcom/venus/core.c
> > > index 
> > > 423deb5e94dcb193974da23f9bd2d905bfeab2d9..39d8bcf62fe4f72674746b75994c
> > > ce6cbaee94eb 100644
> > > --- a/drivers/media/platform/qcom/venus/core.c
> > > +++ b/drivers/media/platform/qcom/venus/core.c
> > > @@ -630,6 +630,55 @@ static const struct venus_resources msm8998_res = {
> > >  	.fwname = "qcom/venus-4.4/venus.mbn",  };
> > >  
> > > +static const struct freq_tbl qcs615_freq_table[] = {
> > > +	{ 0, 460000000 },
> > > +	{ 0, 410000000 },
> > > +	{ 0, 380000000 },
> > > +	{ 0, 300000000 },
> > > +	{ 0, 240000000 },
> > > +	{ 0, 133333333 },
> > > +};
> > > +
> > > +static const struct bw_tbl qcs615_bw_table_enc[] = {
> > > +	{  972000,  951000, 0, 1434000, 0 },	/* 3840x2160@30 */
> > > +	{  489600,  723000, 0,  973000, 0 },	/* 1920x1080@60 */
> > > +	{  244800,  370000, 0,	495000, 0 },	/* 1920x1080@30 */
> > > +};
> > > +
> > > +static const struct bw_tbl qcs615_bw_table_dec[] = {
> > > +	{ 1036800, 1987000, 0, 2797000, 0 },	/* 4096x2160@30 */
> > > +	{  489600, 1040000, 0, 1298000, 0 },	/* 1920x1080@60 */
> > > +	{  244800,  530000, 0,  659000, 0 },	/* 1920x1080@30 */
> > > +};
> > > +
> > > +static const struct venus_resources qcs615_res = {
> > > +	.freq_tbl = qcs615_freq_table,
> > > +	.freq_tbl_size = ARRAY_SIZE(qcs615_freq_table),
> > > +	.bw_tbl_enc = qcs615_bw_table_enc,
> > > +	.bw_tbl_enc_size = ARRAY_SIZE(qcs615_bw_table_enc),
> > > +	.bw_tbl_dec = qcs615_bw_table_dec,
> > > +	.bw_tbl_dec_size = ARRAY_SIZE(qcs615_bw_table_dec),
> > > +	.clks = {"core", "iface", "bus" },
> > > +	.clks_num = 3,
> > > +	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
> > > +	.vcodec_clks_num = 2,
> > > +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> > > +	.vcodec_pmdomains_num = 2,
> > > +	.opp_pmdomain = (const char *[]) { "cx" },
> > > +	.vcodec_num = 1,
> > > +	.hfi_version = HFI_VERSION_4XX,
> > > +	.vpu_version = VPU_VERSION_AR50,
> > > +	.vmem_id = VIDC_RESOURCE_NONE,
> > > +	.vmem_size = 0,
> > > +	.vmem_addr = 0,
> > > +	.dma_mask = 0xe0000000 - 1,
> > > +	.cp_start = 0,
> > > +	.cp_size = 0x70800000,
> > > +	.cp_nonpixel_start = 0x1000000,
> > > +	.cp_nonpixel_size = 0x24800000,
> > > +	.fwname = "qcom/venus-5.4/venus_s6.mbn",
> 
> > I really want the firmware discussion of linux-firmware to be solved first,
> > before we land this patch.
> 
> > SHort summary: can we use a single image for all 5.4 platforms (by using
> > v5 signatures, by using v6 signatures, v3 or any other kind of quirk).
> Thanks for your comment. We have discussed with the firmware team and
> other teams if we can use the same firmware binary. The result is we'd better
> use different firmware files. They should respond in the firmware binary
> thread. I will push them and hope them respond as quickly as possible and
> give reasons.
> > > +};
> > > +
> > >  static const struct freq_tbl sdm660_freq_table[] = {
> > >  	{ 979200, 518400000 },
> > >  	{ 489600, 441600000 },
> > > @@ -937,6 +986,7 @@ static const struct of_device_id venus_dt_match[] = {
> > >  	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
> > >  	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
> > >  	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
> > > +	{ .compatible = "qcom,qcs615-venus", .data = &qcs615_res, },
> 
> > The hardware seems to be the same as sc7180, only the frequencies differ.
> > Can we change the driver in a way that we don't have to add another
> > compat entry just for the sake of changing freqs / bandwidths?
> 
> Thank you for your comment. I agree with you. But based on the Venus code
> architecturE ANd the distinction between different platforms, I think the
> current changes are the simplest.

Well, it is simplest, correct. But not the best one. There is no plan no
migrate these platforms to the iris driver. So instead, please improve
the venus driver instead of just pushing the simplest change. I should
have been more explicit about it earlier.

> 
> > >  	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
> > >  	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
> > >  	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
> > > 
> > > --
> > > 2.34.1
> > > 
> 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

