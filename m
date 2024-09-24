Return-Path: <devicetree+bounces-104883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ECE984702
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 15:47:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E476A1C20A29
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 13:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7061A7248;
	Tue, 24 Sep 2024 13:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RLzaxAAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F84F1EB31
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 13:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727185673; cv=none; b=Sm7HkH8X+p4b3r2bdjbiQ4ovW422OQ0KNtZ0AnSTeh8eTaOfbcOSW0YcaRcXibiNKWb5NJQHxqbXkY8GiunuQ/1UfiiPx72fI1BuRNzBP/SlXHgFFlSsyMNh/1LdwDjOZzXjQhbFf+0uD65i9UcAAxEp/aOPWDsqgw/flS3we58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727185673; c=relaxed/simple;
	bh=MYbiObRfNL9nYVzpNyq7zpldpI/7VuEmR/UvTj7hEOM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kTkyf8Y7ZZjfBIjj7P0JIFTx6VGt3uXkq8QydKmXi8hcq1mEKtrQVvtgERjlsP8fXTpgumTZjaLN9s4Rn2jn6d7LXsSEYJgVjSwp73O8+IPIBVnirD0B6SiTTSrQX0sHNXJCxQLz27R/H4QsT1mKmGpZcfmhadb7+iKCLUj5RQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RLzaxAAz; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53659867cbdso7999737e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 06:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727185670; x=1727790470; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kBt3x6ALV42ewF+LrxPLGBD5z1fDXU5VRBYVjXfLHqA=;
        b=RLzaxAAz0YRVVPGa1qEgmI+PI8iobIX1vvml7tJjYYShhTswBb7ciflQmvUf01/QpK
         fLoknXEUMa96aC2OWC+rY6KHfzoDwOiUBzeyzm6ct4B8lvqg/OZx9cC7DPhSFji6AnzI
         52Vv9ZM7xkANuaV38gWnUl4aES2O1UumZuS5XUi+SIKMoozOaxj4okELTfma3qFsHASW
         y/bYdPLt93KkBOy5hqpSEZm8TkybURRtTJqfV/sOhoHGkCq2PbgPDrAL7Hnem9z+05jS
         ea6SszUa/y/jOEDEFigCDVdeOo16nZVptbldJfF+y4HQOkuv9Q62piJSXd5amxD/+oWR
         pXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727185670; x=1727790470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBt3x6ALV42ewF+LrxPLGBD5z1fDXU5VRBYVjXfLHqA=;
        b=w1Po7h72k8mhSbYMjNPsLLkN4DkrpQ3w6LUeNwcayI5rw0T+Q5h7Q+Ge93S2+o48DJ
         IaXM8KGhCGBUc9w8drdJZiT/1Aw4sa8MGKdHGSkqKQhqZV5BlUxlQpdEzDsTIua+IS74
         Ubu1q3YVBis3Bw11Lh5qU43IeCEAzvwd2IY5Or8JhCHN78+2HlKjPcnJ7P8Y43gpr1b9
         LKfOPnFfAJl9SSfyXsA2YVysvaVn15pn9D2Ophm11qTpFmul4jUF9vVSH2R2HAICLvLs
         BeGQRe103vxKYeTT7YAuBVP7n4HbOqda3ZR7qRnEMpZ1k/s5heLpipOWHpTiIne6fZ0S
         COBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCM5IgJsmIw/E0YHSj3amAt46h+CVROoLVCI98sr1Uw7/NzAJOBQtV8LhBEV7/IxvfMca512olaHbU@vger.kernel.org
X-Gm-Message-State: AOJu0YxdwrT573xoGLoA0b25yKiZPCT7/v/2Qrqre3bYeUiWypWAjDc1
	+oQjUKKwdbRBNowg2wEk8d9d9Dra3ML414G06iRl21+OuHJ4o+m4j8C4htoo+Gw=
X-Google-Smtp-Source: AGHT+IGJKZpf6QQ+S8K3ti23EiAXeRY+081fsTj6EyFFUngV4d81tjNwb7xcXTbrQdu0LscMt/VsWQ==
X-Received: by 2002:a05:6512:3048:b0:533:4785:82ab with SMTP id 2adb3069b0e04-536ac2d6a6bmr9755530e87.1.1727185669530;
        Tue, 24 Sep 2024 06:47:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a86408cesm233908e87.149.2024.09.24.06.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 06:47:48 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:47:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
	vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v17 4/8] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Message-ID: <2mug3ii2vi735sk7nwwu2rcj63d3mlgazlhg4sydcxb6uf5nsc@qi5ut5pmajsv>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <8bdf573bfd7e3feb45d7ccb53765a978a685ce2d.1727159906.git.Sandor.yu@nxp.com>
 <20240924-mottled-psychedelic-lorikeet-ef8f4c@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240924-mottled-psychedelic-lorikeet-ef8f4c@houat>

On Tue, Sep 24, 2024 at 12:16:27PM GMT, Maxime Ripard wrote:
> On Tue, Sep 24, 2024 at 03:36:49PM GMT, Sandor Yu wrote:
> > +static int cdns_mhdp8501_read_hpd(struct cdns_mhdp8501_device *mhdp)
> > +{
> > +	u8 status;
> > +	int ret;
> > +
> > +	mutex_lock(&mhdp_mailbox_mutex);
> > +
> > +	ret = cdns_mhdp_mailbox_send(&mhdp->base, MB_MODULE_ID_GENERAL,
> > +				     GENERAL_GET_HPD_STATE, 0, NULL);
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	ret = cdns_mhdp_mailbox_recv_header(&mhdp->base, MB_MODULE_ID_GENERAL,
> > +					    GENERAL_GET_HPD_STATE,
> > +					    sizeof(status));
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	ret = cdns_mhdp_mailbox_recv_data(&mhdp->base, &status, sizeof(status));
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	mutex_unlock(&mhdp_mailbox_mutex);
> 
> That's better I guess, but it's still not a good API design. If you
> can't have concurrent accesses, then cdns_mhdp_mailbox_send et al.
> should take the mutex themselves.

I think that a proper API might be:

int cdns_mhdp_mailbox_send_recv(struct cdns_mhdp_device *mhdp,
			u8 module_id, u8 opcode,
			u16 size, const u8 *message,
			u16 buf_size, u8 *buf);

Internally it should take the lock, exchange the data, then return.

-- 
With best wishes
Dmitry

