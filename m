Return-Path: <devicetree+bounces-257148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E69D3BE07
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C38234E6C0A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 03:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F74335081;
	Tue, 20 Jan 2026 03:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZmqhouTb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9E8335072
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768881022; cv=none; b=Uje5IiDEPgp6hRCo6xJGq/AWNCF0bnhd5y/EtL45SI42vLF1aIXGRJwycttPojb6u3L9KyQAG4eeADRJS//F7KJxN/OqzIuAD5v7teGE5t/sC+1e20bYOiQY73NlmeKiR8w0DE8O/Bn8rcGvaudHeCD2p4nxDScgE0jjbk9se1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768881022; c=relaxed/simple;
	bh=YouqfwVWzYXpcikOlfu9sTS3gDOn1ZFujhD3ULTm95g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cER+Zpa/5E9KCJ/qgwVhxpfMISOXFc02R+1i9K9pK+HORyCGo9vUQZggydmna4WW5PjATSQJbdEGzx3TXGGrjxAjEXus9stnaES9cLbjr+rOznIAWF9wt6ZNDnWMeJil3TVE0V6WoTPVWg7rCw4As9YrRS1vPbiz4Cm+GxlfKIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZmqhouTb; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8c6a001e3bfso302333985a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768881020; x=1769485820; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J0ylyK0Iu22RJ/xkcdGlRObGYO0FeHTfl507VqBaAx4=;
        b=ZmqhouTbwST4ddALMVWqWYXrD6SOgQJIASZXcp1vBD6BF+Zo55rXjoSNVULPX/aRUW
         ur9RsyoFLFnJ6IMDWoqqNtsRoLyCqppfLbCN8/CR4nkAyXRqFlfP9OHMcxp9pm8FaKRI
         NYcwVFQ4jagrD5FgIYl/XzZKnbl3Wic0TpoI1ow0pjv9PA04fsQ8uuiePnWSlvfeGx+m
         r3apki+c9emFM70Q++iVoS2lyRHcMo4Wji42O7/5C3eyQ9mdC7TDLksftz4wFGgcqauk
         Ceczqnr/IlqyLmvKDN8Hj7H1NnXphNcPnq5zRf4rkbHVZOPqwDlgD7bhijGExMXJhnbd
         oqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768881020; x=1769485820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0ylyK0Iu22RJ/xkcdGlRObGYO0FeHTfl507VqBaAx4=;
        b=KP5ahLNaduaYMes1ztu0gK5WnlkuMvFB20dkKpWzMUYz+14xajqHxTBjMdxj5vEpFq
         r0DthvkRf6TP2clLI2o9P3F3OzIc74L5BnpKxedXeCkqxIxNWpLLqjj4WRo9XBXcOLSl
         DwNwWXt1fnr7lS1QtBtFAD8IWhZ+WwJn+OusGL1daMQ9/CHHLtegTT20d5mHbJsbruTA
         0PzQyBsZVHvKTuzaH15ZJyfX8jCyIMoAT7HId70Xxf1uv5EFAI+w1p5KYktQryo5L3IK
         1a2kiwoISpiPrtIKvLR3cBu9jurcXrzxIA9k4qv/7oOks2ZuGX5KUC6Jufd5iGTCSzZu
         488w==
X-Forwarded-Encrypted: i=1; AJvYcCVcapqekpaAM04htyFei+WU0ESR2ry1PYttqecnDFmcU/WkbS+A2QE0clk12DEifCr3sgAtgdtiGPbR@vger.kernel.org
X-Gm-Message-State: AOJu0YwXb0Dlunyrsk/5vO4ZocckNjl/u/akB1VpuFvhssSUPkS1a21v
	/iOwPcOV93r0d4N8zfjlJc2EC4ouqjnRWA5u+2L2rJEEZ+Ic53D7o1ld
X-Gm-Gg: AY/fxX5JVwarXJHu9BsC5W8KNQxYK5k0tWt1GA6CPEVXaBDgLhsY6jpfnIYZKxz4AF5
	A4FU1sceD+TyknGZIOjrz9fCD6503RAUBDsDxRZrMkXFXUxFCKiZ00kCbVzetZC9cxK8L59th3w
	MGmesucf858AzMZoWRqaiD1f2QFiw91qz8hNybgTFdQvBpYIYSEpzZtCx+bRQC3zCfFXWol2CYl
	brzZYbGXimK2tVXm/05e8PGCsGuvyF4KB07hsv1qi7RuO/to1ta7EulhXVWomo781vAMu3gK1dI
	4hCUHF1I6lAXSfy87aIk1F94jXeXIYDXTt6xkz9Y8SqXyZMGg2zgnwu4lBPhHQ+gyF2Cbk74jbc
	sNvLUDyq6DoQqueWI81NlG4KrsQu+b7NP/DJgI2oO9McPdoWjGcApWeWYICox/btb3i/U/skKbO
	jDW3qMaqlrlf3FiLXFHXh0fFxj
X-Received: by 2002:a05:620a:3f97:b0:8b2:2607:83d5 with SMTP id af79cd13be357-8c6ccf2381fmr56720685a.75.1768881019642;
        Mon, 19 Jan 2026 19:50:19 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a7250a60sm936184085a.31.2026.01.19.19.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 19:50:19 -0800 (PST)
Date: Mon, 19 Jan 2026 22:50:41 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v7 2/5] media: i2c: imx355: Support devicetree and power
 management
Message-ID: <aW77kXzBjAlIMG1C@rdacayan>
References: <20260117040657.27043-1-mailingradian@gmail.com>
 <20260117040657.27043-3-mailingradian@gmail.com>
 <a29ff1e4-117c-4703-b0c7-73ad4e369201@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a29ff1e4-117c-4703-b0c7-73ad4e369201@linaro.org>

On Sat, Jan 17, 2026 at 02:03:02PM +0200, Vladimir Zapolskiy wrote:
> On 1/17/26 06:06, Richard Acayan wrote:
(snip)
> > +static int imx355_power_on(struct device *dev)
> > +{
> > +	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct imx355 *imx355 = to_imx355(sd);
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(imx355->clk);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable clocks: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(imx355_supplies),
> > +				    imx355->supplies);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable regulators: %d\n", ret);
> > +		goto error_disable_clocks;
> > +	}
> > +
> > +	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
> > +	usleep_range(1000, 2000);
> 
> The deassert above is not needed IMO, anyway.

This assert is for clarity, otherwise it isn't obvious that the GPIO is
asserted low when the function is called. It should stay.

