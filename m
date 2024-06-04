Return-Path: <devicetree+bounces-72207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD698FB21C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19A521F21459
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E53146013;
	Tue,  4 Jun 2024 12:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfiliTvn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C07145FFD
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717503959; cv=none; b=UyNVqstFCvPoZqmz5p0cFMC4QHOtk7OKPuTLnxEzIQk8bjl75J8bc3JtiGZwiOvVVvUGDOZ4OLZMQqpgIOZVv8iKexSmGh7D+k7VQMpbJUDnf8dYss5ChUQfvrasTNcgU2Qd9tUTOlfQ4MWoNeHwhnu1mjvl6V8ZGYdIZ024jCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717503959; c=relaxed/simple;
	bh=s1VCyyJJljzsAGyKD0o7mdCoAu+eLFprs/YEVsgvPA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X4+8ZyfN38CD76hNIZ/12H8YuPa1NuYV/dtCjJzpg2aekCNN09OUSkPxc5M2601eIsLqiEZHeFH9wpVZMBWMP2Eg4tRusHe9mRF4zZYmvH+IQFR2fOPn1gVNzrl40tFkQjz68OApe3kCW9KRVH3/aYXbtJWc2326UlH/4Gdv9xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfiliTvn; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57864327f6eso8896926a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717503955; x=1718108755; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9gS0OyJH72V5TfYu3VmbBAJJsXIwwQ21Ck30Dm2cAY=;
        b=FfiliTvnArvh3SByvoAAV/xMv7XPhD6qoBLnLSUlSJjDfx8kIuHIQtasx2vLbNgEfn
         EdPeK23fBf46DLNcyzwk7G/EGkPQRXJ19PAi6bv545zVTBJ/bVtc9T7Bm9T6ejNvAoOM
         TE7OLRtcnNqVkjry8QXaAeLh1Wuqzi5OwPlGF0Ldn9dg0VDaj3gQFVmPuFd4NMRa0Y1w
         3T24TUCguST8xqYw1o0vmFSDpvOIOAa5SZ9urigwamu+0Ro9OB5CiH8YH4nOTnt9Cbz5
         19getvDlMcUFhcZPCcT1FoKCtL2WNPHWe+gcAfyoX/Vqu2Giusx4MluiYE5YW6nD/FzR
         hW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717503955; x=1718108755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9gS0OyJH72V5TfYu3VmbBAJJsXIwwQ21Ck30Dm2cAY=;
        b=Nb1C2QA0A36D7rCF1khHxAZPcfAH5pSsroGKtImhRxgvRY+he3AEXw5PZe8U9SR5ST
         dBjoQOH61sZimElxIYCmnf6j1XvFAs9kQu41a8nmWA2hQBLsUPlyDRooWPAg1ZeO3i2S
         nMJ/nt3YggNoiNUnalYsp/WVucP4v1b18f+f4coNdNKjRIToQ22TNTrW6Z76bIOBcNME
         EgGoLS5BqhvqeDjFOlXCm6uzawDm+QXL7dvPrqePlcC7ghDxLafPQfu+BT8EpvZfdMN7
         ABbdvkRre4Cb1tOnqVoafl1ZW7i1WEehEq+TdEGFXQDnY9uh89xiXVmOkOC30zmzrK9i
         LO8g==
X-Forwarded-Encrypted: i=1; AJvYcCWuy8RjXm2SeKuevTCq5oi7OA04kRmYBvRvdxvOybLZKldQIOqsS+MbtWXXH1GzHVQMBX4tJKAdEmnUfOJB80yXtNxl3Ig6R7cnuA==
X-Gm-Message-State: AOJu0YyB2k+plKWt1Je+fIL0BqgnCfS6bsExhjq9/N1tGndGzI0OBFCX
	pDSUrSp8RWqzR79QDi7PCgCko7npWFq8uqzt5j5Eh7QOSsuIIFRh2Bx4CZRgNB1qVO6GVjMT/ry
	o
X-Google-Smtp-Source: AGHT+IEN9f8uev3FXprfAoYc9A1GaTXa2CrF6gqcTsV0n51gFLuo0b534nnOFA35YyhTJtD3rOTrFw==
X-Received: by 2002:a50:aadc:0:b0:578:5f53:f017 with SMTP id 4fb4d7f45d1cf-57a7a6bb3ddmr2057448a12.6.1717503954639;
        Tue, 04 Jun 2024 05:25:54 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31bb825esm7298469a12.32.2024.06.04.05.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:25:54 -0700 (PDT)
Date: Tue, 4 Jun 2024 15:25:52 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <Zl8H0KOrfuF91kpZ@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
 <Zl27FJVU_YHokCiD@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zl27FJVU_YHokCiD@hovoldconsulting.com>

On 24-06-03 14:46:12, Johan Hovold wrote:
> On Fri, May 31, 2024 at 07:06:45PM +0300, Abel Vesa wrote:
> > The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> > 2-lane mode. Add the configuration and compatible for the 4-lane mode.
> 
> Same language nits as for patch 1/1.
> 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> I tried this patch along with the DT changes and the link on the CRD
> still comes up as 2-lane:
> 
> 	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up
> 
> so something appears to be wrong here. (I noticed the same with your
> next branch last week.)
> 
> How did you test this? Does the link actually come up as 4-lane for you?

This is the PHY part. The controller needs some changes as well.

Yes, as of yet, I'm not able to bring the link up in 4-lanes mode.
This however doesn't mean the PHY sequence is incorrect.

But, I agree, maybe I should hold on to the PHY changes as well until
we get the controller side working as well.

Thanks for reviewing.

> 
> Johan

