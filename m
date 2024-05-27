Return-Path: <devicetree+bounces-69344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3928CFACC
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0986B20B77
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4995A39AC3;
	Mon, 27 May 2024 08:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VZGFnL1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0E12EAF7
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716796877; cv=none; b=OrqtA9JFHO4n5t0EPbXhMxgjfNc6MupcNjmcTTcbSN3FNs1U3t6lQOcr8nySfLsChD6GDD7y2C8F0fKVI0iYNkqd5HTKv6EKxDi0HIBpHTpj64ujBVg5nBZcAYYZhgc0Vn3iTGHKMSyk5v6TxKfdxFLBwuwY5OehgegOSpC2m3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716796877; c=relaxed/simple;
	bh=KGYzo0d4ydTiDRoHwUaveUva4TGHCiqn07mQdn+93U8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mia0AYPrC9jYQsd5pGX1/qBCJmQqUkR3k1f4VvvRaTfoYTs1Km+yNVoBPyXUuBbXJXFsoHwAQKZ3bzm7JOhzY095dpDcpLtd7y+eoH7JKG5esJAWlxbci3GeJR716zCuZaasGrYhPHgKdOuiTZnuVQnJCPE3ZzNOt3Z/NQFyG64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VZGFnL1n; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-578517cab9eso3369442a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716796874; x=1717401674; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JVF2aDiAwuR8zQRgdtvjMogqVM3XbukgpjZURs9F6bg=;
        b=VZGFnL1nRoZOHkGqlMC5Cq295VlfVXIKQwieBkvr8Jrx/6OdVmn/sXBIyqOFQDElu2
         t4LL1pXLg4Zc00coi0ct4iOolMU0xKEOGYqHDng7o/0M7iozNK32kDT1I58xYTdLFxfN
         UEBstTxBAPIoU9vkgLbvbItBIY1JQ4+ajqj95Vy3V5eYN6fkCUrGYhe8o0vGWN9dRjqw
         /gk6jrXeH2FZ+vYHj5fY09Hopcm+zxs95Qgxb2w7S2HXsqPZgPwkGbdCuLaMlK4jiqb9
         ZMGn12lSJPT4/LJHBvQerCH+FLxLO0Z3VIpC7vuHbum0o6pudGhjtMvh0NRF7VA/uvNp
         jhcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716796874; x=1717401674;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JVF2aDiAwuR8zQRgdtvjMogqVM3XbukgpjZURs9F6bg=;
        b=vUJzwxone1TCOfpSKCSwy+x1gF61nDCeZC7ur9/QLJ3GUOMxBb8D8C8BhQ9qWHlMhe
         KL6R6kto56yokMzpLYI4Vn6DrSOGqmALiCyxYPjLTOhp0zrBx0IR5Wqr9aNT7TCr6ueV
         i+SXxttgMUsxN/UOlnK2w6Lra3t6ToSvgeFPiNiQ/8VRP7CbITEvZqKdSDG/0x9kSi2C
         EjXz+udj8fr+SGb582c9tG0pe8Snk1JgGbC4jDYpCoQEgISWnwBhvSWTNoJ1L76KqFrg
         DAvcmDUF/oGXZyIiSIVgVXse5mjKF7zCZM3VlztKkBVEFgb1ItlDgP8fkt0xv9IbViTj
         CPSg==
X-Forwarded-Encrypted: i=1; AJvYcCUcpCGlJU0f2dvRxqW6rueNsmCPz9xgGSHwZUTd8H04W/rqJZU9wT+IjJsEkbwVl6dmITmRdOU7bQprBE/mwUssqzvsBDqurjNdmQ==
X-Gm-Message-State: AOJu0YwXiNSSfRs1Ibt+cVXuA+dVHPuXKQkQXRt4Mlj/SnU98csMFYw7
	fQ8pgsEIoBcxSKwwMOJq0C940lkgHnyPcR5HralCh4eYYFg/vv53LRXKJvhxxMNv2cOveHuqSON
	t
X-Google-Smtp-Source: AGHT+IFQsIh5kK+9ePczG/hmYzE323NUpoIVFMaCMZbZuQdBUucEYG/RX82tMtIPJFmuC6hg8bvxxw==
X-Received: by 2002:a50:a417:0:b0:579:c442:3684 with SMTP id 4fb4d7f45d1cf-579c44238e4mr2204315a12.24.1716796873691;
        Mon, 27 May 2024 01:01:13 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-578523d2507sm5443603a12.40.2024.05.27.01.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:01:13 -0700 (PDT)
Date: Mon, 27 May 2024 11:01:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Frank Li <Frank.li@nxp.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
	abelvesa@kernel.org, peng.fan@nxp.com, mturquette@baylibre.com,
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, marex@denx.de,
	linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, p.zabel@pengutronix.de
Subject: Re: [PATCH v5 2/5] clk: imx: clk-audiomix: Add reset controller
Message-ID: <7ee00c15-ed39-4092-be79-d4683d1c3ee2@moroto.mountain>
References: <1716458390-20120-1-git-send-email-shengjiu.wang@nxp.com>
 <1716458390-20120-3-git-send-email-shengjiu.wang@nxp.com>
 <Zk+oxAh9+c0RIQ/t@lizhi-Precision-Tower-5810>
 <CAA+D8ANOQ8Pgt8QZWduZoVKCcb8Mdc=Xzotu4zAqakTjHO8pBQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA+D8ANOQ8Pgt8QZWduZoVKCcb8Mdc=Xzotu4zAqakTjHO8pBQ@mail.gmail.com>

On Fri, May 24, 2024 at 09:49:08AM +0800, Shengjiu Wang wrote:
> On Fri, May 24, 2024 at 4:36 AM Frank Li <Frank.li@nxp.com> wrote:
> > > +static int clk_imx8mp_audiomix_reset_controller_register(struct device *dev,
> > > +                                                      struct clk_imx8mp_audiomix_priv *priv)
> > > +{
> > > +     struct auxiliary_device __free(kfree) * adev = NULL;
> >
> > nit:  *adev = NULL;
> 
> Actually,  the checkpatch.pl told me need to have space after '*'...

Someone should fix checkpatch so that it knows that __free() is an
attribute, not a function call.  (The cleanup.h stuff is quite new).

regards,
dan carpenter


