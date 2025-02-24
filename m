Return-Path: <devicetree+bounces-150291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1266A41A79
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BEEC16EC26
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B148C24A05B;
	Mon, 24 Feb 2025 10:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c30knrbo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A6324A044
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740391921; cv=none; b=FiwwQ7eC63rlESHyM+ucjmmpY04/qksHXy4Q1fWMMYIRc5o4TIyGckEqSG0yJSf5fHQ7xFbQtP5nV/N/oIHS1Yc5B5HkkRgdGzEO/Wt0MuOAalekFP56JsMEm8mrdDzARl5iDKnGGzfxPJqlIWVkzOJmV9+k8dGAWLXHnyDTp4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740391921; c=relaxed/simple;
	bh=fKXxxp8mVUx99PTCuJ9lTvEvjgM846KcN6TPo4R/fBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nGBunRQKse85XNq2Z7Awx81c1D869XXL51ZZQEGle2JliOcqfoMtonEwyWcUq7W7k1lHauDLdQ8b/4DQ7Ak3mC/e9qdEcJlPXgCkal3G0gU+blSziVLhtvcKrjSpUyPoaMi4DoWxh7zpKen8jCxh5BkqbraFhU5XVgoi/AlcS8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c30knrbo; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e050b1491eso9081492a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 02:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740391918; x=1740996718; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CU8WACFROSgTLo9Ox03v99I3iVcvKceQqegZUMUwxvk=;
        b=c30knrbovl3LBy7d2vKl26KV58/0RgFZW4EkY+B1DWzfBl7ME2Edr/dHTXtYikfdxK
         yzWpg/oBlkywJGY5kaSLpi05rGfM5Q7zFslmflLb14NcoYDkYyno72qm2qZc5OPnhS8P
         qgNXKXwC5Yny/w8CYqdx+zWzUh92DPQHJOhktShNgeaqj+CtYc7okbURNPR9kWy6YEVa
         Qr5qUyZkN1X24XCGhvhSo6gcGk5kqawU+3TI2iVs0FXtrAEY6t1/fPugH0DQtLW3xIYd
         /3kdrWCifI12DGZpTuRYZJuNavfygRQlCuJazK4L4gh7GIT20Hz83tJQRmSUbLsJ0m9d
         j5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740391918; x=1740996718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CU8WACFROSgTLo9Ox03v99I3iVcvKceQqegZUMUwxvk=;
        b=GdQyB8WAVE5l3OXucTIhP3606mTHCM3uhMVHkv3ZTdy+Z8S+tPPKu8FG9Oxpz1I/mz
         rhz2ZlEvnF0CVZL1yTxNRT+k7zAIAQkgo1KgDyaGbiUPmN+Z/zcXybHUNZTFsjyhBaqU
         nOy2UdjjVCmEx2nFD8H0cmtBU+uQ+lhnnSpBtWRXw0lKiSq85thS9n1g+w3m6QeJG6wC
         dF84NVY3KzdoXHGeZ04eetAO4/xxScQUuhMawhG2nYPLaE6SpvGgvEIsV9Q/AurS4aKM
         0to7P5c2nR6Rl+03k+1wCpby5t5YC3kN5fAE7Q97BIHii2bpJw2MMXcWTziEuinq5pD9
         K8Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWf+Anq0TWTjE5kJt1lUCFermy9JM2dCWkFbbKVXqRebEOIdsP5TQ3LDpEgMeExODFHSp7wXlXnwonn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywag/nIZPN9QmKwooF6/HiXQ39eQUzjcWW0kfsQaCJpNXBYQo45
	nnKSk7womMXleil0OjhEE/d3aAEYWQksLlRQjS+8M5dIFCURgZXUPp2ZcwcdiLE=
X-Gm-Gg: ASbGncsYufypQuO8pSdfuMn6w1fCHiWOBfz3aibEwGld3itrEKug9Na5s68TrF1zn7f
	hJztuw8N19XMroLTwPwENVdh+51BRg3K0pcOMpAUzHOPLN/AXp4ZkmQBMCRtnL+fcQo4NEiqps/
	8GOm+ykci7dNn8YD4Pv0iJ0qUTyv7q6EpMnNuWXP6ejqKQOoMv/ZMhZ/3W0qdIdMmvO9YsYsG3G
	+XnnfW1zdKTi93QFUhYico5DJE6GvOW3xnoBs7ArlQZ9J+IpywTQWnz16i+wyvdbsctgcyPXiB0
	Fen5QKFvxLV6z/i2RSpPwvU=
X-Google-Smtp-Source: AGHT+IFBYGv39ku/WXgGCB6eZU2Nhkmme9NrVcRsypJZXftUwbVR6qfXWzvvkzePYp6cqUbaZIeE6g==
X-Received: by 2002:a05:6402:524b:b0:5de:50b4:b71f with SMTP id 4fb4d7f45d1cf-5e0a12baa86mr13103989a12.12.1740391918073;
        Mon, 24 Feb 2025 02:11:58 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece2709b4sm17963793a12.57.2025.02.24.02.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 02:11:56 -0800 (PST)
Date: Mon, 24 Feb 2025 12:11:55 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/8] phy: phy-snps-eusb2: make repeater optional
Message-ID: <Z7xF66TctF2wuoGj@linaro.org>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>

On 25-02-23 14:22:24, Ivaylo Ivanov wrote:
> Some platforms initialize their eUSB2 to USB repeater in the previous
> stage bootloader and leave it in a working state for linux. Make the
> repeater optional in order to allow for reusing that state until
> proper repeater drivers are introduced.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 4e5914a76..dcc69c00a 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -461,7 +461,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, ret,
>  				     "failed to get regulator supplies\n");
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> +	phy->repeater = devm_of_phy_optional_get(dev, np, 0);

Maybe make it optional based on compatible or something?

>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");
> -- 
> 2.43.0
> 

