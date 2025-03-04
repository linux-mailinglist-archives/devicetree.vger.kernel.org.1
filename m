Return-Path: <devicetree+bounces-153682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D12ACA4D7C9
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8543316E437
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6C31FC0F0;
	Tue,  4 Mar 2025 09:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iFwdUxsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC1B1F8BAA
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741079937; cv=none; b=Rni/gPEEB/SPFYnmQr4wToWjyIcWPyr4zAx4JNEquFgS4GIWafp4g9MD01IsFe5fIGT2e616rtqcDqK2x+sIQEwuXH9EZIKuLYWBOOwsIEsP/6bgbvr1OrppfMzagFTIDf8009K76gjRrWC38G0FljCDA1dGvbdF4RMw5zrFNuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741079937; c=relaxed/simple;
	bh=ByaSfraEFsTXGZO4pzqzJKHqdxUCOzQKCtYLM+7ORPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ekB54RVyD58CW28ThdKq74XPLgJ5B9k9N5lIUuVzoKZgNf/V2KetDiogvwsiPuuwrEy3NcGICzIYfBHF7uqvuDUih8OQa+JGXcKsqRDHxPz/nbqsDiBtmWAWUKY0Qotlh+W9atSljL7mRbRCjahZuy5qtVtK8uWJLZ0N8LHae5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iFwdUxsk; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-549662705ffso2440615e87.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 01:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741079931; x=1741684731; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eh3sm64xdsfIMmSWCik/mctk9FPMUJ3WlWE+DsnDAnQ=;
        b=iFwdUxsknA9qmGwtmvBH7a4S3dLWZVXnD7C3WbPeD0Xf2R/crynKH/yeinc/1PPiWf
         PtUw5nHV04suptQbYHLrr+tDAEiS/zicoyIDGu6LcunT5TrnVnVhzYj3z31bIHWvClLe
         Kzwu6vGhiIComS1sdIs3s8u8gJHt0k/Ep/03guhmYxiWcb8f4bM6rYvqZ54Hc/Z8lt7d
         GOfwFWGf9DMgKkFcSU4hTFl6rl4CjodmSGv7RDRGkD8GTvtdHNORYJnC76bE1wKnR8yC
         WeMmn0+iHdDa6QS8ypx4pqIm7oCGqfy0WIumc8npY02nPGe+547VjtEQWJOV2ylyjpNp
         qk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741079931; x=1741684731;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eh3sm64xdsfIMmSWCik/mctk9FPMUJ3WlWE+DsnDAnQ=;
        b=oHVYgNLhSVUIBdsSrlkDhKpdXRnKZbm8vbyjEoNmBCD4DhKufpbjxtGsw5BjkwYpDu
         NR2x03BycWrW9ma6TY72GhOGJAoMpzc7jv4ND7sAYSm70hdykvVkjBFwoeZMy6bVsa/D
         P4W9QVs7q1mH0ugv84FaqV5XBL2UanE86QbZRkhzZZzXs/Yx0HSc/U0TLPHs5+dCRtbP
         yzZvjUSdnRIjRedaG8fzX8+ZtvKDxeAfnySzWtoKE+6GQQSEOeF3qslhqcRVi0UoKMOv
         P5/534ME/9+B4cZeQfaxC+KEiKFP6WxHB5BseeapJRMPUxn2CPsPgDR6VZXBW0yQ2Gjy
         8XIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtm2h/U+UhHLaBhZi9I5b6jeMFOs6BQzSQWvAhpSirmZ9VAmkxzDBW/H2d6rQueI7JvaJCo6FSoNMT@vger.kernel.org
X-Gm-Message-State: AOJu0YzoYOYRb01c8wVJrHTWlGRuSeSQXeYeMEeRfAHxIye6XrkN5VQ8
	PTHKGpQbsfUqWKzTRNnQtJficOmA+erkudvmyielIC4rnFx12Y/t7Iwq/6eg6HM2D15Bu54YoMS
	+VNcn7g==
X-Gm-Gg: ASbGncudvmRJ2m7FupkiiR/J1vgoR6+GgHG/hWx3nE94nXuQaTK2gfZPt57hjuNxbGl
	YoU2QtIPp5TYV+wqcQM+2ScI7WorxfuinKWXwb36zqfOn+FjkIbjTSocwoXg/LlKzf5+qERPbCe
	9N5oCA3FMtqAEBY7gSEwzZ4jKwV2P5l30EKM6vYY9SwMCyBpMrFtIfu/ZP8XTJ8Eurg2pg6T3Aa
	nMAtnVt4d6hxoIYnwMH7UFZCCeRZRaIErrT1BFXPYC9PqxO15cxCrQ85MMEaQf0kjom0E8JtsjU
	azHdShJYsbdd2/Dm2U4XNp2gUjBCSDQqURE5WYUg9hGP9h2tdEXa7MUpxCVxe8UlyIi7DkMWCK9
	dmVcsikVeHJJRUmzbzseQK5/X
X-Google-Smtp-Source: AGHT+IFaI7kFDzRukB6bw5LvU29GAn7T8p4jSK3FlMNj5oR7hTTOydD0AGY8SgVeZXuqezGRsHJtqQ==
X-Received: by 2002:a19:644c:0:b0:546:207c:1c59 with SMTP id 2adb3069b0e04-5494c37d840mr5893078e87.34.1741079931143;
        Tue, 04 Mar 2025 01:18:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494b8cd4b8sm1401866e87.110.2025.03.04.01.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 01:18:49 -0800 (PST)
Date: Tue, 4 Mar 2025 11:18:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, 
	cristian.ciocaltea@collabora.com, neil.armstrong@linaro.org, yubing.zhang@rock-chips.com, 
	krzk+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/6] drm/bridge: synopsys: Add DW DPTX Controller support
 library
Message-ID: <g3d2wjkr2igmnreu7eujl32s4lofupxl7i2w4ub4djztlni3td@g35vrcyr5bis>
References: <20250223113036.74252-1-andyshrk@163.com>
 <20250223113036.74252-3-andyshrk@163.com>
 <563i7xcbbsxfezkgs4txsa6lar5tb5folp7zk7dc7sbvf54n6y@vqbtuwvj3fcw>
 <6046d805.2173.195566bd4cf.Coremail.andyshrk@163.com>
 <5g6qv47ufjfy4yvzpw3rw7xopyuikzi7k4n2habxoexor4kyb2@f7pwawo75kqu>
 <7c4a1e3e.6be8.1956003303a.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c4a1e3e.6be8.1956003303a.Coremail.andyshrk@163.com>

On Tue, Mar 04, 2025 at 03:16:16PM +0800, Andy Yan wrote:
> 
> Hi Dmitry,
> 
> 在 2025-03-03 00:21:06，"Dmitry Baryshkov" <dmitry.baryshkov@linaro.org> 写道：
> >On Sun, Mar 02, 2025 at 06:34:22PM +0800, Andy Yan wrote:
> >> 
> >> 
> >> Hi Dmitry，
> >>    Thank you for your review。
> >>    Please also review my inline reply.
> >>       
> >> 在 2025-03-02 02:14:19，"Dmitry Baryshkov" <dmitry.baryshkov@linaro.org> 写道：
> >> >On Sun, Feb 23, 2025 at 07:30:25PM +0800, Andy Yan wrote:
> >> >> From: Andy Yan <andy.yan@rock-chips.com>
> >> >> 
> >> >> The DW DP TX Controller is compliant with the DisplayPort Specification
> >> >> Version 1.4 with the following features:
> >> >> 
> >> >> * DisplayPort 1.4a
> >> >> * Main Link: 1/2/4 lanes
> >> >> * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> >> >> * AUX channel 1Mbps
> >> >> * Single Stream Transport(SST)
> >> >> * Multistream Transport (MST)
> >> >> *Type-C support (alternate mode)
> >> >> * HDCP 2.2, HDCP 1.3
> >> >> * Supports up to 8/10 bits per color component
> >> >> * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> >> >> * Pixel clock up to 594MHz
> >> >> * I2S, SPDIF audio interface
> >> >> 
> >> >> Add library with common helpers to make it can be shared with
> >> >> other SoC.
> >> >> 
> >> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >> >> 
> >> >> drm/bridge: cleanup
> >> >
> >> >Stray line?
> >> 
> >> Sorry, will be removed.
> >> 
> >> >
> >> >> 
> >> >> ---
> 
> ........
> 
> >> >> +static int dw_dp_link_power_up(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	int ret;
> >> >> +	u8 value;
> >> >> +
> >> >> +	if (link->revision < DP_DPCD_REV_11)
> >> >> +		return 0;
> >> >> +
> >> >> +	ret = drm_dp_dpcd_readb(&dp->aux, DP_SET_POWER, &value);
> >> >> +	if (ret < 0)
> >> >> +		return ret;
> >> >> +
> >> >> +	value &= ~DP_SET_POWER_MASK;
> >> >> +	value |= DP_SET_POWER_D0;
> >> >> +
> >> >> +	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, value);
> >> >> +	if (ret < 0)
> >> >> +		return ret;
> >> >> +
> >> >> +	usleep_range(1000, 2000);
> >> >> +
> >> >> +	return 0;
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_link_power_down(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	int ret;
> >> >> +	u8 value;
> >> >> +
> >> >> +	if (link->revision < DP_DPCD_REV_11)
> >> >> +		return 0;
> >> >> +
> >> >> +	ret = drm_dp_dpcd_readb(&dp->aux, DP_SET_POWER, &value);
> >> >> +	if (ret < 0)
> >> >> +		return ret;
> >> >> +
> >> >> +	value &= ~DP_SET_POWER_MASK;
> >> >> +	value |= DP_SET_POWER_D3;
> >> >> +
> >> >> +	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, value);
> >> >> +	if (ret < 0)
> >> >> +		return ret;
> >> >> +
> >> >
> >> >Would you please mind pulling these two functions to DRM DP helpers?
> >> >There are enough users to make this into a common code.
> >> 
> >> Yes, when developing this patch, I had the same realization. 
> >> The processing logic for MSM/Cadence/ANX6345/tegra follows
> >> a similar approach.
> >> I had originally planned to defer this refactoring until the series of patches is accepted. 
> >> Additionally, I have other pending tasks in my TODO list, such as fully decoupling the 
> >> bridge driver and encoder/connector components across all Rockchip platforms。
> >> But I prioritize completing these foundational features before go to next steps,
> >> Is this acceptable ？
> >
> >You can add necessary helpers as one of the first patches in the
> >series. Convert one or several platforms that use drm-misc (i.e. not
> >MSM, AMD, i915, nouveau) and send conversion of the rest of the
> >platforms as followups.
> 
> If  pull these two functions to DRM DP helpers, I think they should be
> named as drm_dp_link_power_up/down ?.

I think so.

> I found that tegra/dp.c already use this name, so I need to do a symbols rename
> for tegra first to avoid build error like[2].
> 
> Can the patch for Tegra be merged  through  drm-misc branch?

Yes, when drm_dp_link code was moved to the Tegra driver, nobody renamed
those symboles. Maybe in the hope of moving them back. Please rename
those symbols.

> 
> 
> [2]https://lore.kernel.org/oe-kbuild-all/202410250305.UHKDhtxy-lkp@intel.com/
> >
> >> 
> >> >
> >> >> +	return 0;
> >> >> +}
> >> >> +
> >> >> +static bool dw_dp_has_sink_count(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> >> >> +				 const struct drm_dp_desc *desc)
> >> >> +{
> >> >> +	return dpcd[DP_DPCD_REV] >= DP_DPCD_REV_11 &&
> >> >> +	       dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT &&
> >> >> +	       !drm_dp_has_quirk(desc, DP_DPCD_QUIRK_NO_SINK_COUNT);
> >> >
> >> >
> >> >isn't it drm_dp_read_sink_count_cap() ?
> >> 
> >> I will have a try, since this drm_dp_read_sink_count_cap requires a connector parameter, 
> >> I need to figure out how to get the connector here.
> >
> >Maybe Maxime's series will you here, see [1].
> >
> >[1] https://lore.kernel.org/dri-devel/20250225-bridge-connector-v4-4-7ecb07b09cad@kernel.org/
> >
> >> 
> >> >
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_link_parse(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	u8 dpcd;
> >> >> +	int ret;
> 
> ......
> 
> >> >> +		break;
> >> >> +	}
> >> >> +
> >> >> +	if (video->color_format == DRM_COLOR_FORMAT_RGB444) {
> >> >> +		vsc.colorimetry = DP_COLORIMETRY_DEFAULT;
> >> >> +		vsc.dynamic_range = DP_DYNAMIC_RANGE_VESA;
> >> >> +	} else {
> >> >> +		vsc.colorimetry = DP_COLORIMETRY_BT709_YCC;
> >> >> +		vsc.dynamic_range = DP_DYNAMIC_RANGE_CTA;
> >> >> +	}
> >> >> +
> >> >> +	vsc.bpc = video->bpc;
> >> >> +	vsc.content_type = DP_CONTENT_TYPE_NOT_DEFINED;
> >> >> +
> >> >> +	dw_dp_vsc_sdp_pack(&vsc, &sdp);
> >> >> +
> >> >> +	return dw_dp_send_sdp(dp, &sdp);
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_video_set_pixel_mode(struct dw_dp *dp, u8 pixel_mode)
> >> >> +{
> >> >> +	switch (pixel_mode) {
> >> >> +	case DW_DP_MP_SINGLE_PIXEL:
> >> >> +	case DW_DP_MP_DUAL_PIXEL:
> >> >> +	case DW_DP_MP_QUAD_PIXEL:
> >> >> +		break;
> >> >> +	default:
> >> >> +		return -EINVAL;
> >> >
> >> >Is it possible?
> >> 
> >> This IP is configurable for single/dual/quad pixel modes。
> >> It's  quad pixel mode on rk3588 and dual pixel mode on rk3576,
> >> so we add this check here.
> >
> >My question was slightly different: is it possible to end up here in the
> >'default' branch?
> 
> Sorry, I think I didn't get your key point here.
> If someone give a invalid pixe mode(not any of SINGLE/DUAL/QUAD_PIXEL ), 
> then we go to default branch return -ENVIAL,  then the dp_bridge enable stop.
> This is what we want here.
> 
> 
> 
> 
> >
> >> 
> >> 
> >> >
> >> >> +	}
> >> >> +
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_VSAMPLE_CTRL, PIXEL_MODE_SELECT,
> >> >> +			   FIELD_PREP(PIXEL_MODE_SELECT, pixel_mode));
> >> >> +
> >> >> +	return 0;
> >> >> +}
> >> >> +
> >> >> +static bool dw_dp_video_need_vsc_sdp(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	struct dw_dp_video *video = &dp->video;
> >> >> +
> >> >> +	if (!link->vsc_sdp_supported)
> >> >> +		return false;
> >> >> +
> >> >> +	if (video->color_format == DRM_COLOR_FORMAT_YCBCR420)
> >> >> +		return true;
> >> >> +
> >> >> +	return false;
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_video_set_msa(struct dw_dp *dp, u8 color_format, u8 bpc,
> >> >> +			       u16 vstart, u16 hstart)
> >> >> +{
> >> >> +	u16 misc = 0;
> >> >> +
> >> >> +	if (dw_dp_video_need_vsc_sdp(dp))
> >> >> +		misc |= DP_MSA_MISC_COLOR_VSC_SDP;
> >> >> +
> >> >> +	switch (color_format) {
> >> >> +	case DRM_COLOR_FORMAT_RGB444:
> >> >> +		misc |= DP_MSA_MISC_COLOR_RGB;
> >> >> +		break;
> >> >> +	case DRM_COLOR_FORMAT_YCBCR444:
> >> >> +		misc |= DP_MSA_MISC_COLOR_YCBCR_444_BT709;
> >> >> +		break;
> >> >> +	case DRM_COLOR_FORMAT_YCBCR422:
> >> >> +		misc |= DP_MSA_MISC_COLOR_YCBCR_422_BT709;
> >> >> +		break;
> >> >> +	case DRM_COLOR_FORMAT_YCBCR420:
> >> >> +		break;
> >> >> +	default:
> >> >> +		return -EINVAL;
> >> >> +	}
> >> >> +
> >> >> +	switch (bpc) {
> >> >> +	case 6:
> >> >> +		misc |= DP_MSA_MISC_6_BPC;
> >> >> +		break;
> >> >> +	case 8:
> >> >> +		misc |= DP_MSA_MISC_8_BPC;
> >> >> +		break;
> >> >> +	case 10:
> >> >> +		misc |= DP_MSA_MISC_10_BPC;
> >> >> +		break;
> >> >> +	case 12:
> >> >> +		misc |= DP_MSA_MISC_12_BPC;
> >> >> +		break;
> >> >> +	case 16:
> >> >> +		misc |= DP_MSA_MISC_16_BPC;
> >> >> +		break;
> >> >> +	default:
> >> >> +		return -EINVAL;
> >> >> +	}
> >> >> +
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_MSA1,
> >> >> +		     FIELD_PREP(VSTART, vstart) | FIELD_PREP(HSTART, hstart));
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_MSA2, FIELD_PREP(MISC0, misc));
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_MSA3, FIELD_PREP(MISC1, misc >> 8));
> >> >> +
> >> >> +	return 0;
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_video_disable(struct dw_dp *dp)
> >> >> +{
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_VSAMPLE_CTRL, VIDEO_STREAM_ENABLE,
> >> >> +			   FIELD_PREP(VIDEO_STREAM_ENABLE, 0));
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_video_enable(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_video *video = &dp->video;
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	struct drm_display_mode *mode = &video->mode;
> >> >> +	u8 color_format = video->color_format;
> >> >> +	u8 bpc = video->bpc;
> >> >> +	u8 pixel_mode = video->pixel_mode;
> >> >> +	u8 bpp = video->bpp, init_threshold, vic;
> >> >> +	u32 hactive, hblank, h_sync_width, h_front_porch;
> >> >> +	u32 vactive, vblank, v_sync_width, v_front_porch;
> >> >> +	u32 vstart = mode->vtotal - mode->vsync_start;
> >> >> +	u32 hstart = mode->htotal - mode->hsync_start;
> >> >> +	u32 peak_stream_bandwidth, link_bandwidth;
> >> >> +	u32 average_bytes_per_tu, average_bytes_per_tu_frac;
> >> >> +	u32 ts, hblank_interval;
> >> >> +	u32 value;
> >> >> +	int ret;
> >> >> +
> >> >> +	ret = dw_dp_video_set_pixel_mode(dp, pixel_mode);
> >> >> +	if (ret)
> >> >> +		return ret;
> >> >> +
> >> >> +	ret = dw_dp_video_set_msa(dp, color_format, bpc, vstart, hstart);
> >> >> +	if (ret)
> >> >> +		return ret;
> >> >> +
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_VSAMPLE_CTRL, VIDEO_MAPPING,
> >> >> +			   FIELD_PREP(VIDEO_MAPPING, video->video_mapping));
> >> >> +
> >> >> +	/* Configure DW_DP_VINPUT_POLARITY_CTRL register */
> >> >> +	value = 0;
> >> >> +	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
> >> >> +		value |= FIELD_PREP(HSYNC_IN_POLARITY, 1);
> >> >> +	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
> >> >> +		value |= FIELD_PREP(VSYNC_IN_POLARITY, 1);
> >> >> +	regmap_write(dp->regmap, DW_DP_VINPUT_POLARITY_CTRL, value);
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_CONFIG1 register */
> >> >> +	hactive = mode->hdisplay;
> >> >> +	hblank = mode->htotal - mode->hdisplay;
> >> >> +	value = FIELD_PREP(HACTIVE, hactive) | FIELD_PREP(HBLANK, hblank);
> >> >> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> >> >> +		value |= FIELD_PREP(I_P, 1);
> >> >> +	vic = drm_match_cea_mode(mode);
> >> >> +	if (vic == 5 || vic == 6 || vic == 7 ||
> >> >> +	    vic == 10 || vic == 11 || vic == 20 ||
> >> >> +	    vic == 21 || vic == 22 || vic == 39 ||
> >> >> +	    vic == 25 || vic == 26 || vic == 40 ||
> >> >> +	    vic == 44 || vic == 45 || vic == 46 ||
> >> >> +	    vic == 50 || vic == 51 || vic == 54 ||
> >> >> +	    vic == 55 || vic == 58 || vic  == 59)
> >> >> +		value |= R_V_BLANK_IN_OSC;
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_CONFIG1, value);
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_CONFIG2 register */
> >> >> +	vblank = mode->vtotal - mode->vdisplay;
> >> >> +	vactive = mode->vdisplay;
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_CONFIG2,
> >> >> +		     FIELD_PREP(VBLANK, vblank) | FIELD_PREP(VACTIVE, vactive));
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_CONFIG3 register */
> >> >> +	h_sync_width = mode->hsync_end - mode->hsync_start;
> >> >> +	h_front_porch = mode->hsync_start - mode->hdisplay;
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_CONFIG3,
> >> >> +		     FIELD_PREP(H_SYNC_WIDTH, h_sync_width) |
> >> >> +		     FIELD_PREP(H_FRONT_PORCH, h_front_porch));
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_CONFIG4 register */
> >> >> +	v_sync_width = mode->vsync_end - mode->vsync_start;
> >> >> +	v_front_porch = mode->vsync_start - mode->vdisplay;
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_CONFIG4,
> >> >> +		     FIELD_PREP(V_SYNC_WIDTH, v_sync_width) |
> >> >> +		     FIELD_PREP(V_FRONT_PORCH, v_front_porch));
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_CONFIG5 register */
> >> >> +	peak_stream_bandwidth = mode->clock * bpp / 8;
> >> >> +	link_bandwidth = (link->rate / 1000) * link->lanes;
> >> >> +	ts = peak_stream_bandwidth * 64 / link_bandwidth;
> >> >> +	average_bytes_per_tu = ts / 1000;
> >> >> +	average_bytes_per_tu_frac = ts / 100 - average_bytes_per_tu * 10;
> >> >> +	if (pixel_mode == DW_DP_MP_SINGLE_PIXEL) {
> >> >> +		if (average_bytes_per_tu < 6)
> >> >> +			init_threshold = 32;
> >> >> +		else if (hblank <= 80 && color_format != DRM_COLOR_FORMAT_YCBCR420)
> >> >> +			init_threshold = 12;
> >> >> +		else if (hblank <= 40 && color_format == DRM_COLOR_FORMAT_YCBCR420)
> >> >> +			init_threshold = 3;
> >> >> +		else
> >> >> +			init_threshold = 16;
> >> >> +	} else {
> >> >> +		u32 t1 = 0, t2 = 0, t3 = 0;
> >> >> +
> >> >> +		switch (bpc) {
> >> >> +		case 6:
> >> >> +			t1 = (4 * 1000 / 9) * link->lanes;
> >> >> +			break;
> >> >> +		case 8:
> >> >> +			if (color_format == DRM_COLOR_FORMAT_YCBCR422) {
> >> >> +				t1 = (1000 / 2) * link->lanes;
> >> >> +			} else {
> >> >> +				if (pixel_mode == DW_DP_MP_DUAL_PIXEL)
> >> >> +					t1 = (1000 / 3) * link->lanes;
> >> >> +				else
> >> >> +					t1 = (3000 / 16) * link->lanes;
> >> >> +			}
> >> >> +			break;
> >> >> +		case 10:
> >> >> +			if (color_format == DRM_COLOR_FORMAT_YCBCR422)
> >> >> +				t1 = (2000 / 5) * link->lanes;
> >> >> +			else
> >> >> +				t1 = (4000 / 15) * link->lanes;
> >> >> +			break;
> >> >> +		case 12:
> >> >> +			if (color_format == DRM_COLOR_FORMAT_YCBCR422) {
> >> >> +				if (pixel_mode == DW_DP_MP_DUAL_PIXEL)
> >> >> +					t1 = (1000 / 6) * link->lanes;
> >> >> +				else
> >> >> +					t1 = (1000 / 3) * link->lanes;
> >> >> +			} else {
> >> >> +				t1 = (2000 / 9) * link->lanes;
> >> >> +			}
> >> >> +			break;
> >> >> +		case 16:
> >> >> +			if (color_format != DRM_COLOR_FORMAT_YCBCR422 &&
> >> >> +			    pixel_mode == DW_DP_MP_DUAL_PIXEL)
> >> >> +				t1 = (1000 / 6) * link->lanes;
> >> >> +			else
> >> >> +				t1 = (1000 / 4) * link->lanes;
> >> >> +			break;
> >> >> +		default:
> >> >> +			return -EINVAL;
> >> >> +		}
> >> >> +
> >> >> +		if (color_format == DRM_COLOR_FORMAT_YCBCR420)
> >> >> +			t2 = (link->rate / 4) * 1000 / (mode->clock / 2);
> >> >> +		else
> >> >> +			t2 = (link->rate / 4) * 1000 / mode->clock;
> >> >> +
> >> >> +		if (average_bytes_per_tu_frac)
> >> >> +			t3 = average_bytes_per_tu + 1;
> >> >> +		else
> >> >> +			t3 = average_bytes_per_tu;
> >> >> +		init_threshold = t1 * t2 * t3 / (1000 * 1000);
> >> >> +		if (init_threshold <= 16 || average_bytes_per_tu < 10)
> >> >> +			init_threshold = 40;
> >> >> +	}
> >> >> +
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_CONFIG5,
> >> >> +		     FIELD_PREP(INIT_THRESHOLD_HI, init_threshold >> 6) |
> >> >> +		     FIELD_PREP(AVERAGE_BYTES_PER_TU_FRAC, average_bytes_per_tu_frac) |
> >> >> +		     FIELD_PREP(INIT_THRESHOLD, init_threshold) |
> >> >> +		     FIELD_PREP(AVERAGE_BYTES_PER_TU, average_bytes_per_tu));
> >> >> +
> >> >> +	/* Configure DW_DP_VIDEO_HBLANK_INTERVAL register */
> >> >> +	hblank_interval = hblank * (link->rate / 4) / mode->clock;
> >> >> +	regmap_write(dp->regmap, DW_DP_VIDEO_HBLANK_INTERVAL,
> >> >> +		     FIELD_PREP(HBLANK_INTERVAL_EN, 1) |
> >> >> +		     FIELD_PREP(HBLANK_INTERVAL, hblank_interval));
> >> >> +
> >> >> +	/* Video stream enable */
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_VSAMPLE_CTRL, VIDEO_STREAM_ENABLE,
> >> >> +			   FIELD_PREP(VIDEO_STREAM_ENABLE, 1));
> >> >> +
> >> >> +	if (dw_dp_video_need_vsc_sdp(dp))
> >> >> +		dw_dp_send_vsc_sdp(dp);
> >> >> +
> >> >> +	return 0;
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_hpd_init(struct dw_dp *dp)
> >> >> +{
> >> >> +	/* Enable all HPD interrupts */
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_HPD_INTERRUPT_ENABLE,
> >> >> +			   HPD_UNPLUG_EN | HPD_PLUG_EN | HPD_IRQ_EN,
> >> >> +			   FIELD_PREP(HPD_UNPLUG_EN, 1) |
> >> >> +			   FIELD_PREP(HPD_PLUG_EN, 1) |
> >> >> +			   FIELD_PREP(HPD_IRQ_EN, 1));
> >> >> +
> >> >> +	/* Enable all top-level interrupts */
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_GENERAL_INTERRUPT_ENABLE,
> >> >> +			   HPD_EVENT_EN, FIELD_PREP(HPD_EVENT_EN, 1));
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_aux_init(struct dw_dp *dp)
> >> >> +{
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_GENERAL_INTERRUPT_ENABLE,
> >> >> +			   AUX_REPLY_EVENT_EN, FIELD_PREP(AUX_REPLY_EVENT_EN, 1));
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_init_hw(struct dw_dp *dp)
> >> >> +{
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_CCTL, DEFAULT_FAST_LINK_TRAIN_EN,
> >> >> +			   FIELD_PREP(DEFAULT_FAST_LINK_TRAIN_EN, 0));
> >> >> +
> >> >> +	dw_dp_hpd_init(dp);
> >> >> +	dw_dp_aux_init(dp);
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_aux_write_data(struct dw_dp *dp, const u8 *buffer, size_t size)
> >> >> +{
> >> >> +	size_t i, j;
> >> >> +
> >> >> +	for (i = 0; i < DIV_ROUND_UP(size, 4); i++) {
> >> >> +		size_t num = min_t(size_t, size - i * 4, 4);
> >> >> +		u32 value = 0;
> >> >> +
> >> >> +		for (j = 0; j < num; j++)
> >> >> +			value |= buffer[i * 4 + j] << (j * 8);
> >> >> +
> >> >> +		regmap_write(dp->regmap, DW_DP_AUX_DATA0 + i * 4, value);
> >> >> +	}
> >> >> +
> >> >> +	return size;
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_aux_read_data(struct dw_dp *dp, u8 *buffer, size_t size)
> >> >> +{
> >> >> +	size_t i, j;
> >> >> +
> >> >> +	for (i = 0; i < DIV_ROUND_UP(size, 4); i++) {
> >> >> +		size_t num = min_t(size_t, size - i * 4, 4);
> >> >> +		u32 value;
> >> >> +
> >> >> +		regmap_read(dp->regmap, DW_DP_AUX_DATA0 + i * 4, &value);
> >> >> +
> >> >> +		for (j = 0; j < num; j++)
> >> >> +			buffer[i * 4 + j] = value >> (j * 8);
> >> >> +	}
> >> >> +
> >> >> +	return size;
> >> >> +}
> >> >> +
> >> >> +static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
> >> >> +				  struct drm_dp_aux_msg *msg)
> >> >> +{
> >> >> +	struct dw_dp *dp = container_of(aux, struct dw_dp, aux);
> >> >> +	unsigned long timeout = msecs_to_jiffies(10);
> >> >> +	u32 status, value;
> >> >> +	ssize_t ret = 0;
> >> >> +
> >> >> +	if (WARN_ON(msg->size > 16))
> >> >> +		return -E2BIG;
> >> >> +
> >> >> +	switch (msg->request & ~DP_AUX_I2C_MOT) {
> >> >> +	case DP_AUX_NATIVE_WRITE:
> >> >> +	case DP_AUX_I2C_WRITE:
> >> >> +	case DP_AUX_I2C_WRITE_STATUS_UPDATE:
> >> >> +		ret = dw_dp_aux_write_data(dp, msg->buffer, msg->size);
> >> >> +		if (ret < 0)
> >> >> +			return ret;
> >> >> +		break;
> >> >> +	case DP_AUX_NATIVE_READ:
> >> >> +	case DP_AUX_I2C_READ:
> >> >> +		break;
> >> >> +	default:
> >> >> +		return -EINVAL;
> >> >> +	}
> >> >> +
> >> >> +	if (msg->size > 0)
> >> >> +		value = FIELD_PREP(AUX_LEN_REQ, msg->size - 1);
> >> >> +	else
> >> >> +		value = FIELD_PREP(I2C_ADDR_ONLY, 1);
> >> >> +	value |= FIELD_PREP(AUX_CMD_TYPE, msg->request);
> >> >> +	value |= FIELD_PREP(AUX_ADDR, msg->address);
> >> >> +	regmap_write(dp->regmap, DW_DP_AUX_CMD, value);
> >> >> +
> >> >> +	status = wait_for_completion_timeout(&dp->complete, timeout);
> >> >> +	if (!status) {
> >> >> +		dev_err(dp->dev, "timeout waiting for AUX reply\n");
> >> >> +		return -ETIMEDOUT;
> >> >> +	}
> >> >> +
> >> >> +	regmap_read(dp->regmap, DW_DP_AUX_STATUS, &value);
> >> >> +	if (value & AUX_TIMEOUT)
> >> >> +		return -ETIMEDOUT;
> >> >> +
> >> >> +	msg->reply = FIELD_GET(AUX_STATUS, value);
> >> >> +
> >> >> +	if (msg->size > 0 && msg->reply == DP_AUX_NATIVE_REPLY_ACK) {
> >> >> +		if (msg->request & DP_AUX_I2C_READ) {
> >> >> +			size_t count = FIELD_GET(AUX_BYTES_READ, value) - 1;
> >> >> +
> >> >> +			if (count != msg->size)
> >> >> +				return -EBUSY;
> >> >> +
> >> >> +			ret = dw_dp_aux_read_data(dp, msg->buffer, count);
> >> >> +			if (ret < 0)
> >> >> +				return ret;
> >> >> +		}
> >> >> +	}
> >> >> +
> >> >> +	return ret;
> >> >> +}
> >> >> +
> >> >> +/*
> >> >> + * Limits for the video timing output by DP:
> >> >> + * 1. the hfp should be 2 pixels aligned;
> >> >> + * 2. the minimum hsync should be 9 pixel;
> >> >> + * 3. the minimum hbp should be 16 pixel;
> >> >> + */
> >> >> +static bool dw_dp_bridge_mode_fixup(struct drm_bridge *bridge,
> >> >> +				    const struct drm_display_mode *mode,
> >> >> +				    struct drm_display_mode *adjusted_mode)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	int min_hbp = 16;
> >> >> +	int min_hsync = 9;
> >> >> +
> >> >> +	if ((adjusted_mode->hsync_start - adjusted_mode->hdisplay) & 0x1) {
> >> >> +		adjusted_mode->hsync_start += 1;
> >> >> +		dev_warn(dp->dev, "hfp is not 2 pixeel aligned, fixup to aligned hfp\n");
> >> >> +	}
> >> >> +	if (adjusted_mode->hsync_end - adjusted_mode->hsync_start < min_hsync) {
> >> >> +		adjusted_mode->hsync_end = adjusted_mode->hsync_start + min_hsync;
> >> >> +		dev_warn(dp->dev, "hsync is too narrow, fixup to min hsync:%d\n", min_hsync);
> >> >> +	}
> >> >> +	if (adjusted_mode->htotal - adjusted_mode->hsync_end < min_hbp) {
> >> >> +		adjusted_mode->htotal = adjusted_mode->hsync_end + min_hbp;
> >> >> +		dev_warn(dp->dev, "hbp is too narrow, fixup to min hbp:%d\n", min_hbp);
> >> >> +	}
> >> >> +
> >> >> +	return true;
> >> >> +}
> >> >> +
> >> >> +static enum drm_mode_status dw_dp_bridge_mode_valid(struct drm_bridge *bridge,
> >> >> +						    const struct drm_display_info *info,
> >> >> +						    const struct drm_display_mode *mode)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	u32 min_bpp;
> >> >> +
> >> >> +	if (info->color_formats & DRM_COLOR_FORMAT_YCBCR420 &&
> >> >> +	    link->vsc_sdp_supported &&
> >> >> +	    (drm_mode_is_420_only(info, mode) || drm_mode_is_420_also(info, mode)))
> >> >> +		min_bpp = 12;
> >> >> +	else if (info->color_formats & DRM_COLOR_FORMAT_YCBCR422)
> >> >> +		min_bpp = 16;
> >> >> +	else if (info->color_formats & DRM_COLOR_FORMAT_RGB444)
> >> >> +		min_bpp = 18;
> >> >> +	else
> >> >> +		min_bpp = 24;
> >> >> +
> >> >> +	if (!link->vsc_sdp_supported &&
> >> >> +	    drm_mode_is_420_only(info, mode))
> >> >> +		return MODE_NO_420;
> >> >> +
> >> >> +	if (!dw_dp_bandwidth_ok(dp, mode, min_bpp, link->lanes, link->rate))
> >> >> +		return MODE_CLOCK_HIGH;
> >> >> +
> >> >> +	return MODE_OK;
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_bridge_atomic_pre_enable(struct drm_bridge *bridge,
> >> >> +					   struct drm_bridge_state *old_bridge_state)
> >> >> +{
> >> >> +	struct drm_atomic_state *state = old_bridge_state->base.state;
> >> >> +	struct drm_crtc_state *crtc_state = bridge->encoder->crtc->state;
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	struct dw_dp_video *video = &dp->video;
> >> >> +	struct drm_display_mode *m = &video->mode;
> >> >> +	struct drm_bridge_state *bridge_state;
> >> >> +	const struct dw_dp_output_format *fmt;
> >> >> +
> >> >> +	drm_mode_copy(m, &crtc_state->adjusted_mode);
> >> >> +
> >> >> +	bridge_state = drm_atomic_get_new_bridge_state(state, bridge);
> >> >> +	fmt = dw_dp_get_output_format(bridge_state->output_bus_cfg.format);
> >> >
> >> >Should it be a part of the atomic_check() instead?
> >> 
> >> Since we have modef_fixup in this driver, which is mutually exclusive with atomic_check.
> >
> >You can convet .mode_fixup into .atomic_check. The latter can change the
> >crtc_state->adjusted_mode. It is better to reject the invalid
> >combinations from the .atomic_check rather than having to handled them
> >later.
> >
> >> 
> >> 
> >> 
> >> >
> >> >> +
> >> >> +	video->video_mapping = fmt->video_mapping;
> >> >> +	video->color_format = fmt->color_format;
> >> >> +	video->bpc = fmt->bpc;
> >> >> +	video->bpp = fmt->bpp;
> >> >> +}
> >> >> +
> >> >> +static bool dw_dp_needs_link_retrain(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	u8 link_status[DP_LINK_STATUS_SIZE];
> >> >> +
> >> >> +	if (!dw_dp_link_train_valid(&link->train))
> >> >> +		return false;
> >> >> +
> >> >> +	if (drm_dp_dpcd_read_link_status(&dp->aux, link_status) < 0)
> >> >> +		return false;
> >> >> +
> >> >> +	/* Retrain if Channel EQ or CR not ok */
> >> >> +	return !drm_dp_channel_eq_ok(link_status, dp->link.lanes);
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_link_disable(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +
> >> >> +	if (dw_dp_hpd_detect(dp))
> >> >> +		dw_dp_link_power_down(dp);
> >> >> +
> >> >> +	dw_dp_phy_xmit_enable(dp, 0);
> >> >> +
> >> >> +	phy_power_off(dp->phy);
> >> >> +
> >> >> +	link->train.clock_recovered = false;
> >> >> +	link->train.channel_equalized = false;
> >> >> +}
> >> >> +
> >> >> +static int dw_dp_link_enable(struct dw_dp *dp)
> >> >> +{
> >> >> +	int ret;
> >> >> +
> >> >> +	ret = phy_power_on(dp->phy);
> >> >> +	if (ret)
> >> >> +		return ret;
> >> >> +
> >> >> +	ret = dw_dp_link_power_up(dp);
> >> >> +	if (ret < 0)
> >> >> +		return ret;
> >> >> +
> >> >> +	ret = dw_dp_link_train(dp);
> >> >> +
> >> >> +	return ret;
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_bridge_atomic_enable(struct drm_bridge *bridge,
> >> >> +				       struct drm_bridge_state *old_state)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	struct drm_atomic_state *state = old_state->base.state;
> >> >> +	struct drm_connector *connector;
> >> >> +	struct drm_connector_state *conn_state;
> >> >> +	int ret;
> >> >> +
> >> >> +	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
> >> >> +	if (!connector) {
> >> >> +		dev_err(dp->dev, "failed to get connector\n");
> >> >> +		return;
> >> >> +	}
> >> >> +
> >> >> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> >> >> +	if (!conn_state) {
> >> >> +		dev_err(dp->dev, "failed to get connector state\n");
> >> >> +		return;
> >> >> +	}
> >> >> +
> >> >> +	set_bit(0, dp->sdp_reg_bank);
> >> >> +
> >> >> +	ret = dw_dp_link_enable(dp);
> >> >> +	if (ret < 0) {
> >> >> +		dev_err(dp->dev, "failed to enable link: %d\n", ret);
> >> >> +		return;
> >> >> +	}
> >> >> +
> >> >> +	ret = dw_dp_video_enable(dp);
> >> >> +	if (ret < 0) {
> >> >> +		dev_err(dp->dev, "failed to enable video: %d\n", ret);
> >> >> +		return;
> >> >> +	}
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_reset(struct dw_dp *dp)
> >> >> +{
> >> >> +	int val;
> >> >> +
> >> >> +	disable_irq(dp->irq);
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL, CONTROLLER_RESET,
> >> >> +			   FIELD_PREP(CONTROLLER_RESET, 1));
> >> >> +	udelay(10);
> >> >> +	regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL, CONTROLLER_RESET,
> >> >> +			   FIELD_PREP(CONTROLLER_RESET, 0));
> >> >> +
> >> >> +	dw_dp_init_hw(dp);
> >> >> +	regmap_read_poll_timeout(dp->regmap, DW_DP_HPD_STATUS, val,
> >> >> +				 FIELD_GET(HPD_HOT_PLUG, val), 200, 200000);
> >> >> +	regmap_write(dp->regmap, DW_DP_HPD_STATUS, HPD_HOT_PLUG);
> >> >> +	enable_irq(dp->irq);
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_bridge_atomic_disable(struct drm_bridge *bridge,
> >> >> +					struct drm_bridge_state *old_bridge_state)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +
> >> >> +	dw_dp_video_disable(dp);
> >> >> +	dw_dp_link_disable(dp);
> >> >> +	bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
> >> >> +	dw_dp_reset(dp);
> >> >> +}
> >> >> +
> >> >> +static bool dw_dp_hpd_detect_link(struct dw_dp *dp)
> >> >> +{
> >> >> +	int ret;
> >> >> +
> >> >> +	ret = phy_power_on(dp->phy);
> >> >> +	if (ret < 0)
> >> >> +		return false;
> >> >> +	ret = dw_dp_link_parse(dp);
> >> >> +	phy_power_off(dp->phy);
> >> >> +
> >> >> +	return !ret;
> >> >> +}
> >> >> +
> >> >> +static enum drm_connector_status dw_dp_bridge_detect(struct drm_bridge *bridge)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +
> >> >> +	if (!dw_dp_hpd_detect(dp))
> >> >> +		return connector_status_disconnected;
> >> >> +
> >> >> +	if (!dw_dp_hpd_detect_link(dp))
> >> >> +		return connector_status_disconnected;
> >> >> +
> >> >> +	return connector_status_connected;
> >> >> +}
> >> >> +
> >> >> +static const struct drm_edid *dw_dp_bridge_edid_read(struct drm_bridge *bridge,
> >> >> +						     struct drm_connector *connector)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	const struct drm_edid *edid;
> >> >> +	int ret;
> >> >> +
> >> >> +	ret = phy_power_on(dp->phy);
> >> >> +	if (ret)
> >> >> +		return NULL;
> >> >> +
> >> >> +	edid = drm_edid_read_ddc(connector, &dp->aux.ddc);
> >> >> +
> >> >> +	phy_power_off(dp->phy);
> >> >> +
> >> >> +	return edid;
> >> >> +}
> >> >> +
> >> >> +static u32 *dw_dp_bridge_atomic_get_output_bus_fmts(struct drm_bridge *bridge,
> >> >> +						    struct drm_bridge_state *bridge_state,
> >> >> +						    struct drm_crtc_state *crtc_state,
> >> >> +						    struct drm_connector_state *conn_state,
> >> >> +						    unsigned int *num_output_fmts)
> >> >> +{
> >> >> +	struct dw_dp *dp = bridge_to_dp(bridge);
> >> >> +	struct dw_dp_link *link = &dp->link;
> >> >> +	struct drm_display_info *di = &conn_state->connector->display_info;
> >> >> +	struct drm_display_mode mode = crtc_state->mode;
> >> >> +	const struct dw_dp_output_format *fmt;
> >> >> +	u32 i, j = 0;
> >> >> +	u32 *output_fmts;
> >> >> +
> >> >> +	*num_output_fmts = 0;
> >> >> +
> >> >> +	output_fmts = kcalloc(ARRAY_SIZE(dw_dp_output_formats), sizeof(*output_fmts), GFP_KERNEL);
> >> >> +	if (!output_fmts)
> >> >> +		return NULL;
> >> >> +
> >> >> +	for (i = 0; i < ARRAY_SIZE(dw_dp_output_formats); i++) {
> >> >> +		fmt = &dw_dp_output_formats[i];
> >> >> +
> >> >> +		if (fmt->bpc > conn_state->max_bpc)
> >> >> +			continue;
> >> >> +
> >> >> +		if (!(fmt->color_format & di->color_formats))
> >> >> +			continue;
> >> >> +
> >> >> +		if (fmt->color_format == DRM_COLOR_FORMAT_YCBCR420 &&
> >> >> +		    !link->vsc_sdp_supported)
> >> >> +			continue;
> >> >> +
> >> >> +		if (fmt->color_format != DRM_COLOR_FORMAT_YCBCR420 &&
> >> >> +		    drm_mode_is_420_only(di, &mode))
> >> >> +			continue;
> >> >> +
> >> >> +		if (!dw_dp_bandwidth_ok(dp, &mode, fmt->bpp, link->lanes, link->rate))
> >> >> +			continue;
> >> >> +
> >> >> +		output_fmts[j++] = fmt->bus_format;
> >> >> +	}
> >> >> +
> >> >> +	*num_output_fmts = j;
> >> >> +
> >> >> +	return output_fmts;
> >> >> +}
> >> >> +
> >> >> +static const struct drm_bridge_funcs dw_dp_bridge_funcs = {
> >> >> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> >> >> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> >> >> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> >> >> +	.atomic_get_input_bus_fmts = drm_atomic_helper_bridge_propagate_bus_fmt,
> >> >> +	.atomic_get_output_bus_fmts = dw_dp_bridge_atomic_get_output_bus_fmts,
> >> >> +	.mode_fixup = dw_dp_bridge_mode_fixup,
> >> >> +	.mode_valid = dw_dp_bridge_mode_valid,
> >> >> +	.atomic_pre_enable = dw_dp_bridge_atomic_pre_enable,
> >> >> +	.atomic_enable = dw_dp_bridge_atomic_enable,
> >> >> +	.atomic_disable = dw_dp_bridge_atomic_disable,
> >> >> +	.detect = dw_dp_bridge_detect,
> >> >> +	.edid_read = dw_dp_bridge_edid_read,
> >> >> +};
> >> >> +
> >> >> +static int dw_dp_link_retrain(struct dw_dp *dp)
> >> >> +{
> >> >> +	struct drm_device *dev = dp->bridge.dev;
> >> >> +	struct drm_modeset_acquire_ctx ctx;
> >> >> +	int ret;
> >> >> +
> >> >> +	if (!dw_dp_needs_link_retrain(dp))
> >> >> +		return 0;
> >> >> +
> >> >> +	dev_dbg(dp->dev, "Retraining link\n");
> >> >> +
> >> >> +	drm_modeset_acquire_init(&ctx, 0);
> >> >> +	for (;;) {
> >> >> +		ret = drm_modeset_lock(&dev->mode_config.connection_mutex, &ctx);
> >> >> +		if (ret != -EDEADLK)
> >> >> +			break;
> >> >
> >> >I think it's an error to continue in such a case. There should be a
> >> >return after the loop if ret is not 0.
> >> 
> >> Thank you for catching this， I will add a check fater the loop.
> >> 
> >> 
> >> >
> >> >> +
> >> >> +		drm_modeset_backoff(&ctx);
> >> >> +	}
> >> >> +
> >> >> +	ret = dw_dp_link_train(dp);
> >> >> +	drm_modeset_drop_locks(&ctx);
> >> >> +	drm_modeset_acquire_fini(&ctx);
> >> >> +
> >> >> +	return ret;
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_hpd_work(struct work_struct *work)
> >> >> +{
> >> >> +	struct dw_dp *dp = container_of(work, struct dw_dp, hpd_work);
> >> >> +	bool long_hpd;
> >> >> +	int ret;
> >> >> +
> >> >> +	mutex_lock(&dp->irq_lock);
> >> >> +	long_hpd = dp->hotplug.long_hpd;
> >> >> +	mutex_unlock(&dp->irq_lock);
> >> >> +
> >> >> +	dev_dbg(dp->dev, "[drm] Get hpd irq - %s\n", long_hpd ? "long" : "short");
> >> >> +
> >> >> +	if (!long_hpd) {
> >> >> +		if (dw_dp_needs_link_retrain(dp)) {
> >> >> +			ret = dw_dp_link_retrain(dp);
> >> >> +			if (ret)
> >> >> +				dev_warn(dp->dev, "Retrain link failed\n");
> >> >> +		}
> >> >> +	} else {
> >> >> +		drm_helper_hpd_irq_event(dp->bridge.dev);
> >> >> +	}
> >> >> +}
> >> >> +
> >> >> +static void dw_dp_handle_hpd_event(struct dw_dp *dp)
> >> >> +{
> >> >> +	u32 value;
> >> >> +
> >> >> +	mutex_lock(&dp->irq_lock);
> >> >> +	regmap_read(dp->regmap, DW_DP_HPD_STATUS, &value);
> >> >> +
> >> >> +	if (value & HPD_IRQ) {
> >> >> +		dev_dbg(dp->dev, "IRQ from the HPD\n");
> >> >> +		dp->hotplug.long_hpd = false;
> >> >> +		regmap_write(dp->regmap, DW_DP_HPD_STATUS, HPD_IRQ);
> >> >> +	}
> >> >> +
> >> >> +	if (value & HPD_HOT_PLUG) {
> >> >> +		dev_dbg(dp->dev, "Hot plug detected\n");
> >> >> +		dp->hotplug.long_hpd = true;
> >> >> +		regmap_write(dp->regmap, DW_DP_HPD_STATUS, HPD_HOT_PLUG);
> >> >> +	}
> >> >> +
> >> >> +	if (value & HPD_HOT_UNPLUG) {
> >> >> +		dev_dbg(dp->dev, "Unplug detected\n");
> >> >> +		dp->hotplug.long_hpd = true;
> >> >> +		regmap_write(dp->regmap, DW_DP_HPD_STATUS, HPD_HOT_UNPLUG);
> >> >> +	}
> >> >> +	mutex_unlock(&dp->irq_lock);
> >> >> +
> >> >> +	schedule_work(&dp->hpd_work);
> >> >> +}
> >> >> +
> >> >> +static irqreturn_t dw_dp_irq(int irq, void *data)
> >> >> +{
> >> >> +	struct dw_dp *dp = data;
> >> >> +	u32 value;
> >> >> +
> >> >> +	regmap_read(dp->regmap, DW_DP_GENERAL_INTERRUPT, &value);
> >> >> +	if (!value)
> >> >> +		return IRQ_NONE;
> >> >> +
> >> >> +	if (value & HPD_EVENT)
> >> >> +		dw_dp_handle_hpd_event(dp);
> >> >> +
> >> >> +	if (value & AUX_REPLY_EVENT) {
> >> >> +		regmap_write(dp->regmap, DW_DP_GENERAL_INTERRUPT, AUX_REPLY_EVENT);
> >> >> +		complete(&dp->complete);
> >> >> +	}
> >> >> +
> >> >> +	return IRQ_HANDLED;
> >> >> +}
> >> >> +
> >> >> +static const struct regmap_range dw_dp_readable_ranges[] = {
> >> >> +	regmap_reg_range(DW_DP_VERSION_NUMBER, DW_DP_ID),
> >> >> +	regmap_reg_range(DW_DP_CONFIG_REG1, DW_DP_CONFIG_REG3),
> >> >> +	regmap_reg_range(DW_DP_CCTL, DW_DP_SOFT_RESET_CTRL),
> >> >> +	regmap_reg_range(DW_DP_VSAMPLE_CTRL, DW_DP_VIDEO_HBLANK_INTERVAL),
> >> >> +	regmap_reg_range(DW_DP_AUD_CONFIG1, DW_DP_AUD_CONFIG1),
> >> >> +	regmap_reg_range(DW_DP_SDP_VERTICAL_CTRL, DW_DP_SDP_STATUS_EN),
> >> >> +	regmap_reg_range(DW_DP_PHYIF_CTRL, DW_DP_PHYIF_PWRDOWN_CTRL),
> >> >> +	regmap_reg_range(DW_DP_AUX_CMD, DW_DP_AUX_DATA3),
> >> >> +	regmap_reg_range(DW_DP_GENERAL_INTERRUPT, DW_DP_HPD_INTERRUPT_ENABLE),
> >> >> +};
> >> >> +
> >> >> +static const struct regmap_access_table dw_dp_readable_table = {
> >> >> +	.yes_ranges     = dw_dp_readable_ranges,
> >> >> +	.n_yes_ranges   = ARRAY_SIZE(dw_dp_readable_ranges),
> >> >> +};
> >> >> +
> >> >> +static const struct regmap_config dw_dp_regmap_config = {
> >> >> +	.reg_bits = 32,
> >> >> +	.reg_stride = 4,
> >> >> +	.val_bits = 32,
> >> >> +	.fast_io = true,
> >> >> +	.max_register = DW_DP_MAX_REGISTER,
> >> >> +	.rd_table = &dw_dp_readable_table,
> >> >> +};
> >> >> +
> >> >> +struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> >> >> +			 const struct dw_dp_plat_data *plat_data)
> >> >> +{
> >> >> +	struct platform_device *pdev = to_platform_device(dev);
> >> >> +	struct dw_dp *dp;
> >> >> +	struct drm_bridge *bridge;
> >> >> +	void __iomem *res;
> >> >> +	int ret;
> >> >> +
> >> >> +	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
> >> >> +	if (!dp)
> >> >> +		return ERR_PTR(-ENOMEM);
> >> >> +
> >> >> +	dp->dev = dev;
> >> >> +	dp->video.pixel_mode = DW_DP_MP_QUAD_PIXEL;
> >> >> +
> >> >> +	dp->plat_data = plat_data;
> >> >> +	bridge = &dp->bridge;
> >> >> +	mutex_init(&dp->irq_lock);
> >> >> +	INIT_WORK(&dp->hpd_work, dw_dp_hpd_work);
> >> >> +	init_completion(&dp->complete);
> >> >> +
> >> >> +	res = devm_platform_ioremap_resource(pdev, 0);
> >> >> +	if (IS_ERR(res))
> >> >> +		return ERR_CAST(res);
> >> >> +
> >> >> +	dp->regmap = devm_regmap_init_mmio(dev, res, &dw_dp_regmap_config);
> >> >> +	if (IS_ERR(dp->regmap)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->regmap), "failed to create regmap\n");
> >> >> +		return ERR_CAST(dp->regmap);
> >> >> +	}
> >> >> +
> >> >> +	dp->phy = devm_of_phy_get(dev, dev->of_node, NULL);
> >> >> +	if (IS_ERR(dp->phy)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->phy), "failed to get phy\n");
> >> >> +		return ERR_CAST(dp->phy);
> >> >> +	}
> >> >> +
> >> >> +	dp->apb_clk = devm_clk_get_enabled(dev, "apb");
> >> >> +	if (IS_ERR(dp->apb_clk)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->apb_clk), "failed to get apb clock\n");
> >> >> +		return ERR_CAST(dp->apb_clk);
> >> >> +	}
> >> >> +
> >> >> +	dp->aux_clk = devm_clk_get_enabled(dev, "aux");
> >> >> +	if (IS_ERR(dp->aux_clk)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->aux_clk), "failed to get aux clock\n");
> >> >> +		return ERR_CAST(dp->aux_clk);
> >> >> +	}
> >> >> +
> >> >> +	dp->i2s_clk = devm_clk_get(dev, "i2s");
> >> >> +	if (IS_ERR(dp->i2s_clk)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->i2s_clk), "failed to get i2s clock\n");
> >> >> +		return ERR_CAST(dp->i2s_clk);
> >> >> +	}
> >> >> +
> >> >> +	dp->spdif_clk = devm_clk_get(dev, "spdif");
> >> >> +	if (IS_ERR(dp->spdif_clk)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->spdif_clk), "failed to get spdif clock\n");
> >> >> +		return ERR_CAST(dp->spdif_clk);
> >> >> +	}
> >> >> +
> >> >> +	dp->hdcp_clk = devm_clk_get(dev, "hdcp");
> >> >> +	if (IS_ERR(dp->hdcp_clk)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->hdcp_clk), "failed to get hdcp clock\n");
> >> >> +		return ERR_CAST(dp->hdcp_clk);
> >> >> +	}
> >> >> +
> >> >> +	dp->rstc = devm_reset_control_get(dev, NULL);
> >> >> +	if (IS_ERR(dp->rstc)) {
> >> >> +		dev_err_probe(dev, PTR_ERR(dp->rstc), "failed to get reset control\n");
> >> >> +		return ERR_CAST(dp->rstc);
> >> >> +	}
> >> >> +
> >> >> +	dp->irq = platform_get_irq(pdev, 0);
> >> >> +	if (dp->irq < 0)
> >> >> +		return ERR_PTR(ret);
> >> >> +
> >> >> +	ret = devm_request_threaded_irq(dev, dp->irq, NULL, dw_dp_irq,
> >> >> +					IRQF_ONESHOT, dev_name(dev), dp);
> >> >
> >> >Are you ready to handle the IRQ here, before the bridge is filled?
> >> 
> >> I will move to  devm_request_threaded_irq after dw_dp_init_hw.
> >> 
> >> 
> >> >
> >> >> +	if (ret) {
> >> >> +		dev_err_probe(dev, ret, "failed to request irq\n");
> >> >> +		return ERR_PTR(ret);
> >> >> +	}
> >> >> +
> >> >> +	bridge->of_node = dev->of_node;
> >> >> +	bridge->funcs = &dw_dp_bridge_funcs;
> >> >> +	bridge->ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
> >> >> +	bridge->type = DRM_MODE_CONNECTOR_DisplayPort;
> >> >> +	bridge->ycbcr_420_allowed = true;
> >> >> +	bridge->vendor = "Synopsys";
> >> >> +	bridge->product = "DW DP TX";
> >> >
> >> >These two are unused
> >> >
> >> >> +
> >> >> +	platform_set_drvdata(pdev, dp);
> >> >
> >> >Unused
> >> 
> >> I will remove them.
> >> 
> >> Thanks again.
> >> 
> >> 
> >> >
> >> >> +
> >> >> +	dp->aux.dev = dev;
> >> >> +	dp->aux.drm_dev = encoder->dev;
> >> >> +	dp->aux.name = dev_name(dev);
> >> >> +	dp->aux.transfer = dw_dp_aux_transfer;
> >> >> +	ret = drm_dp_aux_register(&dp->aux);
> >> >> +	if (ret) {
> >> >> +		dev_err_probe(dev, ret, "Aux register failed\n");
> >> >> +		return ERR_PTR(ret);
> >> >> +	}
> >> >> +
> >> >> +	ret = drm_bridge_attach(encoder, bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> >> >> +	if (ret)
> >> >> +		dev_err_probe(dev, ret, "Failed to attach bridge\n");
> >> >> +
> >> >> +	dw_dp_init_hw(dp);
> >> >> +
> >> >> +	return dp;
> >> >> +}
> >> >> +MODULE_AUTHOR("Andy Yan <andyshrk@163.com>");
> >> >> +MODULE_DESCRIPTION("DW DP Core Library");
> >> >> +MODULE_LICENSE("GPL");
> >> >> diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
> >> >> new file mode 100644
> >> >> index 000000000000..07845f609eca
> >> >> --- /dev/null
> >> >> +++ b/include/drm/bridge/dw_dp.h
> >> >> @@ -0,0 +1,19 @@
> >> >> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> >> >> +/*
> >> >> + * Copyright (c) 2025 Rockchip Electronics Co., Ltd.
> >> >> + */
> >> >> +
> >> >> +#ifndef __DW_DP__
> >> >> +#define __DW_DP__
> >> >> +
> >> >> +struct device;
> >> >> +struct drm_encoder;
> >> >> +struct dw_dp;
> >> >> +
> >> >> +struct dw_dp_plat_data {
> >> >> +	u32 max_link_rate;
> >> >> +};
> >> >> +
> >> >> +struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> >> >> +			 const struct dw_dp_plat_data *plat_data);
> >> >> +#endif /* __DW_DP__ */
> >> >> -- 
> >> >> 2.34.1
> >> >> 
> >> >
> >> >-- 
> >> >With best wishes
> >> >Dmitry
> >
> >-- 
> >With best wishes
> >Dmitry

-- 
With best wishes
Dmitry

