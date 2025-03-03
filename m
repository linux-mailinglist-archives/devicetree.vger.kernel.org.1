Return-Path: <devicetree+bounces-153346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92610A4C116
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB1003A6D15
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 12:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF366210192;
	Mon,  3 Mar 2025 12:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Db+nwSKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8107DA6C
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 12:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741006669; cv=none; b=C/eCAqXPU0ISmZXW5dxrC9MR6ECtLH3hE4vivtKvQSgg6oMIS6Szevbc+oLBhkELEx1E7P2j2KLudO+a0WBgRJCI9dbwtPV7jkBuXsqE7Ctoh6Ej2T5lrqXrx+ffRQagtIp/9GpdxHJHey57kFks7yG98DoInxRQ4Jb9A3wjAdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741006669; c=relaxed/simple;
	bh=IoVPJZoD+MRYN7K8Z/aSIkdRQ3zTWS23VUWhjteSX6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J/ySmGIbVNkWstdA9LuvX6hZVeNPAun6vvF68vou7eIN66JkXlkc5XEs+quQXFlRQsmKQRaw4Ac9pLbXzxRHH9TcYqOKH+Q51r6oS8dbed1PXJ39kkfxDL7tOLsySbVCkYXwJluXA3+tjusYlyh8sl1xVziIG5Mvbe81DilVt2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Db+nwSKj; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54943bb8006so4799249e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 04:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741006665; x=1741611465; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rw6/8c80oXJe6NH1bCDHhdB7//uqsyHdcvO1rFYowNk=;
        b=Db+nwSKjNPsEJRj7xuym4OXVP4yaveFUbgfyaXhwSSBqAjvGNPmhu5ma+QSVENikbE
         DWUSsoGh+mBaNArVdsB3QrNyzr6BUXy8ax3zn4VpilNznZKGit1SKLDDHt7Rg6+4nKXc
         xgRi9PqA2WHqWlZ8Ft8gxlv2So6EfQGHmJ3Pkd6iwy8WRBOFBMa+60nsyzD3ca3E/5Ee
         rH/8T4Y/x1xambg0PIHx5dG7EiEnWEpeXnV/MAoFJUv+YLvRZ18Ecv3BU3zU4NlSGgdh
         t5ky+7GHE0Xd/B6+RyljPzr38hD9JtnSy8iP98Pe4epJlXKS5V9s1YZrWDr55tjpSn0p
         T9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741006665; x=1741611465;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rw6/8c80oXJe6NH1bCDHhdB7//uqsyHdcvO1rFYowNk=;
        b=IPRmCO/oeIhCEk2RMr6WcCaesekpRpJLegDEq+r+P9DsoA2hfMSFn6f5APAssTs9Ze
         13PHDRkE+WhhSvus9xRQf9/AGirAja76N4ti34Xr5PPH/WZG/aw4qcvezQK9+TZk4a5D
         +LOW61X6w/Bbm/YwzsfXO70+BMN0OqOdprjXYLCFtxiuixb+5JiT35qTvmFLy4+Q2/9w
         QJuRrYALUNp9HQ+Z50cfUarAkd+YnDF/g22/426c3oncEmdZ6IAy5Gcg9+N1hxg+a/gq
         D9kHhJzXJkgMPR9eLyDm0JPAR9cUnZnl+92G2a13fGrtUwAO75WSSpW11Qlv36YRLY6b
         2bgg==
X-Forwarded-Encrypted: i=1; AJvYcCUOJizB4p0n+HWxgDKd5Mi4gjjQCFw9V1BPHsjOQqyA4kFXAXyi3Nnn6+oPIsYWVrmqujgu1kqiMv7a@vger.kernel.org
X-Gm-Message-State: AOJu0YyxYWCOAnNMUlqOqiMoUWFhD/A41pkctxS2OJ+jZbIlyvC76wYb
	/Kj+KmLaWtUAo2zfLmglS5cCY0z4gCiIX+0vW15vlrKh123ln5kxnqzMypgel0E=
X-Gm-Gg: ASbGnctHaOJ43NPRElzQLbQHF/Sh3+NwW3O2TNIFXHLuNj8vz/UPqrF1beuaQO2E6Pj
	kl8x8YjAUyPCScrEZ8Wy26hAhPrXrRt/ST2Kwr1BFcOmgwh/hpZEQcCvQpHumC+m/8ejXmIfAph
	lM3U5wU2EKLfb3yGcteCEEsvd2YHhXgL+qNlrOjxrQiUX4i4Og4tBhlPMi5SDN+5g92SiDfhMLO
	tIUohypA+stBKxOJSxm3a11X5fQ13J7Ev/ujt+p4biiO9BeOgDihLwKsjqjHTBFEqVElw1IqgZA
	X/8t5pr1m3C5ug5EDIUya02xGM3pXKfUAwKo9IekTqBCu1mGR4awLQfl0uoqNm6q23MDNIgh54t
	mm+4KFDfmYznrk9ylv/8RIhFg
X-Google-Smtp-Source: AGHT+IEjjiVkoNRYdat4T0qxmeBYEe6kE8gmB95rUVf9r8bSvejeCAHmMqYFebm9jSnJR4afSnK9VA==
X-Received: by 2002:a05:6512:318e:b0:549:38d5:8858 with SMTP id 2adb3069b0e04-5494c124ab1mr4483210e87.20.1741006664977;
        Mon, 03 Mar 2025 04:57:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494ad419acsm1117002e87.127.2025.03.03.04.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 04:57:44 -0800 (PST)
Date: Mon, 3 Mar 2025 14:57:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yubing Zhang <yubing.zhang@rock-chips.com>
Cc: Andy Yan <andyshrk@163.com>, neil.armstrong@linaro.org, 
	sebastian.reichel@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, hjc@rock-chips.com, 
	mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, 
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/6] drm/bridge: synopsys: Add DW DPTX Controller support
 library
Message-ID: <udunb6r3yvjc5i5cfk5xeaz6ezvyzbnor3gujjhcfoavdwtrsl@26yxnjan6yqb>
References: <20250223113036.74252-1-andyshrk@163.com>
 <20250223113036.74252-3-andyshrk@163.com>
 <563i7xcbbsxfezkgs4txsa6lar5tb5folp7zk7dc7sbvf54n6y@vqbtuwvj3fcw>
 <65706d63-18aa-41e0-81c4-4eab3d186250@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <65706d63-18aa-41e0-81c4-4eab3d186250@rock-chips.com>

On Mon, Mar 03, 2025 at 04:59:50PM +0800, Yubing Zhang wrote:
> Hi Dmitry,
> 
> On 2025/3/2 2:14, Dmitry Baryshkov wrote:
> > On Sun, Feb 23, 2025 at 07:30:25PM +0800, Andy Yan wrote:
> > > From: Andy Yan <andy.yan@rock-chips.com>
> > > 
> > > The DW DP TX Controller is compliant with the DisplayPort Specification
> > > Version 1.4 with the following features:
> > > 
> > > * DisplayPort 1.4a
> > > * Main Link: 1/2/4 lanes
> > > * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> > > * AUX channel 1Mbps
> > > * Single Stream Transport(SST)
> > > * Multistream Transport (MST)
> > > *Type-C support (alternate mode)
> > > * HDCP 2.2, HDCP 1.3
> > > * Supports up to 8/10 bits per color component
> > > * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> > > * Pixel clock up to 594MHz
> > > * I2S, SPDIF audio interface
> > > 
> > > Add library with common helpers to make it can be shared with
> > > other SoC.
> > > 
> > > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > > 
> > > drm/bridge: cleanup
> > 
> > Stray line?
> > 
> > > 
> > > ---
> > > 
> > >   drivers/gpu/drm/bridge/synopsys/Kconfig  |    7 +
> > >   drivers/gpu/drm/bridge/synopsys/Makefile |    1 +
> > >   drivers/gpu/drm/bridge/synopsys/dw-dp.c  | 2155 ++++++++++++++++++++++
> > >   include/drm/bridge/dw_dp.h               |   19 +
> > >   4 files changed, 2182 insertions(+)
> > >   create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
> 
> ......
> 
> > > +
> > > +static u8 dw_dp_voltage_max(u8 preemph)
> > > +{
> > > +	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_0:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_1:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_2:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
> > > +	case DP_TRAIN_PRE_EMPH_LEVEL_3:
> > > +	default:
> > > +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
> > > +	}
> > > +}
> > > +
> > > +static void dw_dp_link_get_adjustments(struct dw_dp_link *link,
> > > +				       u8 status[DP_LINK_STATUS_SIZE])
> > > +{
> > > +	struct dw_dp_link_train_set *adjust = &link->train.adjust;
> > > +	u8 v = 0;
> > > +	u8 p = 0;
> > > +	unsigned int i;
> > > +
> > > +	for (i = 0; i < link->lanes; i++) {
> > > +		v = drm_dp_get_adjust_request_voltage(status, i);
> > > +		p = drm_dp_get_adjust_request_pre_emphasis(status, i);
> > > +		if (p >=  DP_TRAIN_PRE_EMPH_LEVEL_3) {
> > > +			adjust->pre_emphasis[i] = DP_TRAIN_PRE_EMPH_LEVEL_3 >>
> > > +						  DP_TRAIN_PRE_EMPHASIS_SHIFT;
> > > +			adjust->pre_max_reached[i] = true;
> > > +		} else {
> > > +			adjust->pre_emphasis[i] = p >> DP_TRAIN_PRE_EMPHASIS_SHIFT;
> > > +			adjust->pre_max_reached[i] = false;
> > > +		}
> > > +		v = min(v, dw_dp_voltage_max(p));
> > > +		if (v >= DP_TRAIN_VOLTAGE_SWING_LEVEL_3) {
> > > +			adjust->voltage_swing[i] = DP_TRAIN_VOLTAGE_SWING_LEVEL_3 >>
> > > +						   DP_TRAIN_VOLTAGE_SWING_SHIFT;
> > > +			adjust->voltage_max_reached[i] = true;
> > > +		} else {
> > > +			adjust->voltage_swing[i] = v >> DP_TRAIN_VOLTAGE_SWING_SHIFT;
> > > +			adjust->voltage_max_reached[i] = false;
> > > +		}
> > > +	}
> > > +}
> > > +
> > > +static void dw_dp_link_train_adjust(struct dw_dp_link_train *train)
> > > +{
> > > +	struct dw_dp_link_train_set *request = &train->request;
> > > +	struct dw_dp_link_train_set *adjust = &train->adjust;
> > > +	unsigned int i;
> > > +
> > > +	for (i = 0; i < 4; i++) {
> > 
> > Shouldn't it be a loop up to link->lanes?
> > 
> > > +		if (request->voltage_swing[i] != adjust->voltage_swing[i])
> > > +			request->voltage_swing[i] = adjust->voltage_swing[i];
> > > +		if (request->voltage_max_reached[i] != adjust->voltage_max_reached[i])
> > > +			request->voltage_max_reached[i] = adjust->voltage_max_reached[i];
> > > +	}
> > > +
> > > +	for (i = 0; i < 4; i++) {
> > > +		if (request->pre_emphasis[i] != adjust->pre_emphasis[i])
> > > +			request->pre_emphasis[i] = adjust->pre_emphasis[i];
> > > +		if (request->pre_max_reached[i] != adjust->pre_max_reached[i])
> > > +			request->pre_max_reached[i] = adjust->pre_max_reached[i];
> > 
> > Why do you need separate request and adjustment structs?
> During link training cr sequence, if dprx keep the LANEx_CR_DONE bit(s)
> cleared, the request and adjustment structs are used to check the
> old and new valud of ADJUST_REQUEST_LANEx_y register(s) is changed or not.

This can be compared in dw_dp_link_get_adjustments(), before / while
updating the request data.

> 
> > 
> > > +	}
> > > +}
> > > +
> > > +static int dw_dp_link_clock_recovery(struct dw_dp *dp)
> > > +{
> > > +	struct dw_dp_link *link = &dp->link;
> > > +	u8 status[DP_LINK_STATUS_SIZE];
> > > +	unsigned int tries = 0;
> > > +	int ret;
> > > +
> > > +	ret = dw_dp_link_train_set_pattern(dp, DP_TRAINING_PATTERN_1);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	for (;;) {
> > > +		ret = dw_dp_link_train_update_vs_emph(dp);
> > > +		if (ret)
> > > +			return ret;
> > > +
> > > +		drm_dp_link_train_clock_recovery_delay(&dp->aux, link->dpcd);
> > > +
> > > +		ret = drm_dp_dpcd_read_link_status(&dp->aux, status);
> > > +		if (ret < 0) {
> > > +			dev_err(dp->dev, "failed to read link status: %d\n", ret);
> > > +			return ret;
> > > +		}
> > > +
> > > +		if (drm_dp_clock_recovery_ok(status, link->lanes)) {
> > > +			link->train.clock_recovered = true;
> > > +			break;
> > > +		}
> > > +
> > > +		dw_dp_link_get_adjustments(link, status);
> > > +
> > > +		if (link->train.request.voltage_swing[0] ==
> > > +		    link->train.adjust.voltage_swing[0])
> > 
> > Should this take all lanes to account? I think it might be posssible to
> > drop the adjust / request split and adjust tries in
> > dw_dp_link_get_adjustments() instead.
> Yes, here shall compare both swing and pre-emphasis for all lanes. It's a
> good idea to drop the adjust / request split. The swing and pre-emphasis
> compare just need by cr sequence. But both cr and eq sequences use
> dw_dp_link_get_adjustments(). It will be better to delete
> dw_dp_link_train_adjust() and add a new function to adjust tries for cr
> sequence.

SGTM.

> > 
> > > +			tries++;
> > > +		else
> > > +			tries = 0;
> > > +
> > > +		if (tries == 5)
> > > +			break;
> > > +
> > > +		dw_dp_link_train_adjust(&link->train);
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int dw_dp_link_channel_equalization(struct dw_dp *dp)
> > > +{
> > > +	struct dw_dp_link *link = &dp->link;
> > > +	u8 status[DP_LINK_STATUS_SIZE], pattern;
> > > +	unsigned int tries;
> > > +	int ret;
> > > +
> > > +	if (link->caps.tps4_supported)
> > > +		pattern = DP_TRAINING_PATTERN_4;
> > > +	else if (link->caps.tps3_supported)
> > > +		pattern = DP_TRAINING_PATTERN_3;
> > > +	else
> > > +		pattern = DP_TRAINING_PATTERN_2;
> > > +	ret = dw_dp_link_train_set_pattern(dp, pattern);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	for (tries = 1; tries < 5; tries++) {
> > > +		ret = dw_dp_link_train_update_vs_emph(dp);
> > > +		if (ret)
> > > +			return ret;
> > > +
> > > +		drm_dp_link_train_channel_eq_delay(&dp->aux, link->dpcd);
> > > +
> > > +		ret = drm_dp_dpcd_read_link_status(&dp->aux, status);
> > > +		if (ret < 0)
> > > +			return ret;
> > > +
> > > +		if (!drm_dp_clock_recovery_ok(status, link->lanes)) {
> > > +			dev_err(dp->dev, "clock recovery lost while equalizing channel\n");
> > > +			link->train.clock_recovered = false;
> > > +			break;
> > > +		}
> > > +
> > > +		if (drm_dp_channel_eq_ok(status, link->lanes)) {
> > > +			link->train.channel_equalized = true;
> > > +			break;
> > > +		}
> > > +
> > > +		dw_dp_link_get_adjustments(link, status);
> > > +		dw_dp_link_train_adjust(&link->train);
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> ......
> > > +
> > > +struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> > > +			 const struct dw_dp_plat_data *plat_data);
> > > +#endif /* __DW_DP__ */
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

