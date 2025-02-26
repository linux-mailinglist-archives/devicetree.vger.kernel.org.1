Return-Path: <devicetree+bounces-151452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C689A45D46
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 12:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B2F93A9A33
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5FB2163AA;
	Wed, 26 Feb 2025 11:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VmSsYdzS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E210B215171
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 11:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740569750; cv=none; b=A0cO/c1cuemvhAKSM5bOdzYg1WmOVONajF4rWnjx7ntnER3IWJ83Yv9wFTSv7tKbGFc9h0eJoiqkMdi5PhK/raHbrYJ63ygUUiR9knbazPRXwLbsXh2eWaSwVIEaVCb9k7V2pn4qdlvLV+AKxWxkP8V9W+w7qIc43JQVAoDnkcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740569750; c=relaxed/simple;
	bh=ffiHvoYh6iU6s3zsooC5MU8+iOVhtyFVS3+5AZbo2U4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gcuqe1FDmKfrbyUFDMQEe/9p+SL8Lt7G6QrNXVjiUOBuxFaWYWJ7Nb34635TgogVLwX/uvBzLgGzxHt4FRE1veGieHohTG4aV6nIOYUyLJnndBL/RvgtlS7DO/cvMDk/yIxCaDDtRMrITfSD2uwxEOHjuYV5FFXVcQlgUsKVhDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VmSsYdzS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43948021a45so58392245e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 03:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740569745; x=1741174545; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=alBmJLHqLeak0MrBEaiF+GvOpgs6GCrussWTD7ASuFg=;
        b=VmSsYdzS+BZgAKFNsxsCTuaIgcFslUQJTvGmt2TDoEdBBlvOqxE3xAX/XkZDPS6SaM
         6OFgPK4AiX8V6Y7bZ5zq7Ic+Nf8XACwxy/+eWVtWdJr05pdNES6X04kYLWwYbWTgoYKU
         gKBNEaVwKYJtyg3CdJnn88h9Iupe4EZQL6WjGROjXrglOn4kKaIeum7zDi395/YG8Wke
         DHYh5UZAhZnWZHNqJ9sSpnzhvkdN3Ojydof+Raw8dyy7L8xAu0S9b49XfMCk/eBMgi4s
         XqLuE1rR7wS5TTxAviXtJfuyHeOYn/mp+jmAz0tLsVniLi8H5HomrC0d/7vYuQvMSKTS
         wBkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740569745; x=1741174545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=alBmJLHqLeak0MrBEaiF+GvOpgs6GCrussWTD7ASuFg=;
        b=H+zkiy329TyAFUnzLmsyp4g+YF+SnMEjH551GzmpMgV24wqDnMBuFyQUzDSc2n1jGb
         z2Rfq9xJjn5jQa3qJ8OONiGh1s2wJPxNR8beb3wGAnp9dhwPxZyj1gN3ZAommRjORnK6
         9o9fklJpCAk0yHw1XyWfAkiYkzaFjlrJWp3711M7woOzvWaRPY7z01w2w44nNpSXrCSi
         XEm4HpuTlFzRGIOlPv7PREodj+QQ4F/HdhwDi0/c0K7fjHS/7wFtrVzyn+oXfrgfy30G
         S3tJyXSI7lsFfeAtIrwCPXVjpkmqxM4qppVfbVY9buWn/N7/l2+rFUyXQN5KHXam39ii
         j6UA==
X-Forwarded-Encrypted: i=1; AJvYcCUwKnEAcY07Urg5UaF0aXOwEOC+xToyp+5V7lN1SVAwQNnOCLz23BAeZK3Q8TEdTEbF4d+e1nkKq8DM@vger.kernel.org
X-Gm-Message-State: AOJu0YyndSXGyyFx3neMu2rYVwUb5sg5itv0VlUXI4zux2z/5MRU9iDk
	ixJVZDWFewGmHCKL93E/UDBtmoMLu88MXMclGQHNr+c3s0uqXiPPwVYv5f+4r4Q=
X-Gm-Gg: ASbGncv88ZKP6CvA+/qHMwdvEhEAoxpHsSZskWk3pQO1mO0UrAeWFoYPU6FuskrFRSD
	4w5QTBm1dm4ZV5zqclKiPDONLTBRfqionTdZafe5G0ARKwj7m0LWp7C2VSqa1i/qDgSvpfEqVyx
	CnlFYduraQbvbLm0z9ITz466uhmRiwNzNJnPHUonc6WHe/yMhKKZ10PyTkk8X/bwOvOMONpvCrG
	ic3ODTWr0QnvnzFrNGBnp2U/lUmWX2xIaWx+enNIsSPz4fXGMEDT0bbLeAFu4EOScyMvI7FhTpj
	GdEf3CI1Hpb0V1i77DBbRps3D+YURyzCtSumkTJO4uRXUtQkRHDBOqWrdTrYFDISog==
X-Google-Smtp-Source: AGHT+IFDxhZDh0OTrZqQRYhLB3t0W3PSVkeDzir54VORaU0Ul7AQg6j84zQMQRzUVA7uut0cfrh6Pw==
X-Received: by 2002:a05:600c:4f86:b0:439:967b:46fc with SMTP id 5b1f17b1804b1-43ab8fd73f2mr24567335e9.8.1740569745142;
        Wed, 26 Feb 2025 03:35:45 -0800 (PST)
Received: from [192.168.0.172] (88-127-185-231.subs.proxad.net. [88.127.185.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba5442c0sm18103605e9.32.2025.02.26.03.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 03:35:44 -0800 (PST)
Message-ID: <0863ee2e-25ed-43b7-a896-e380de828d58@baylibre.com>
Date: Wed, 26 Feb 2025 12:35:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/6] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 "simona.vetter@ffwll.ch" <simona.vetter@ffwll.ch>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "will@kernel.org" <will@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "robh@kernel.org" <robh@kernel.org>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
 <20231023-display-support-v7-2-6703f3e26831@baylibre.com>
 <ab3bd050c873bb6cecc00b615b938eabc157cb49.camel@mediatek.com>
 <79477810-00a9-47f1-8282-f8077ea082bb@baylibre.com>
 <3310b6f9-df7a-4769-a221-4a93cc3ec035@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <3310b6f9-df7a-4769-a221-4a93cc3ec035@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 18/02/2025 09:52, AngeloGioacchino Del Regno wrote:
> Il 17/02/25 16:03, Alexandre Mergnat ha scritto:
>> Hi CK.
>>
>> On 17/02/2025 08:56, CK Hu (胡俊光) wrote:
>>> On Fri, 2025-01-10 at 14:31 +0100, Alexandre Mergnat wrote:
>>>> External email : Please do not click links or open attachments until you have verified the 
>>>> sender or the content.
>>>>
>>>>
>>>> Currently, mtk_dsi_lane_ready (which setup the DSI lane) is triggered
>>>> before mtk_dsi_poweron. lanes_ready flag toggle to true during
>>>> mtk_dsi_lane_ready function, and the DSI module is set up during
>>>> mtk_dsi_poweron.
>>>>
>>>> Later, during panel driver init, mtk_dsi_lane_ready is triggered but does
>>>> nothing because lanes are considered ready. Unfortunately, when the panel
>>>> driver try to communicate, the DSI returns a timeout.
>>>>
>>>> The solution found here is to put lanes_ready flag to false after the DSI
>>>> module setup into mtk_dsi_poweron to init the DSI lanes after the power /
>>>> setup of the DSI module.
>>>
>>> I'm not clear about what happen.
>>> I think this DSI flow has worked for a long time.
>>> So only some panel has problem?
>>
>> I don't know if it's related to a specific panel or not.
>>
>>>
>>> And another question.
>>> Do you mean mtk_dsi_lane_ready() do some setting to hardware, but lane is not actually ready?
>>
>> The workflow should be:
>> ... | dsi->lanes_ready = false | Power-on | setup dsi lanes | dsi->lanes_ready = true (to avoid 
>> re-do dsi lanes setup) | ...
>>
>> I observe (print function name called + dsi->lanes_ready value):
> 
> Alex, the first poweron is called by mtk_dsi_ddp_start() - and the start callback
> is internal to the mediatek-drm driver.
> 
> That callback is called by mtk_crtc during setup and during bridge enable(), and
> there we go with suboptimal code design backfiring - instead of using what the
> DRM APIs provide, this driver uses something custom *and* the DRM APIs, giving
> this issue.
> 
> Part of what mtk_crtc does is duplicated with what the DRM APIs want to do, so
> there you go, that's your problem here :-)
> 
> Should I go on with describing the next step(s), or is that obvious for everyone?
> 
> :-)
> 
> Cheers,

Ok thanks Angelo.
Can you let me know if you agree with this change please ? This should be better:

@@ -843,25 +843,6 @@ static void mtk_dsi_bridge_atomic_enable(struct drm_bridge *bridge,
  	mtk_output_dsi_enable(dsi);
  }

-static void mtk_dsi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
-					     struct drm_bridge_state *old_bridge_state)
-{
-	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
-	int ret;
-
-	ret = mtk_dsi_poweron(dsi);
-	if (ret < 0)
-		DRM_ERROR("failed to power on dsi\n");
-}
-
-static void mtk_dsi_bridge_atomic_post_disable(struct drm_bridge *bridge,
-					       struct drm_bridge_state *old_bridge_state)
-{
-	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
-
-	mtk_dsi_poweroff(dsi);
-}
-
  static enum drm_mode_status
  mtk_dsi_bridge_mode_valid(struct drm_bridge *bridge,
  			  const struct drm_display_info *info,
@@ -886,8 +867,6 @@ static const struct drm_bridge_funcs mtk_dsi_bridge_funcs = {
  	.atomic_disable = mtk_dsi_bridge_atomic_disable,
  	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
  	.atomic_enable = mtk_dsi_bridge_atomic_enable,
-	.atomic_pre_enable = mtk_dsi_bridge_atomic_pre_enable,
-	.atomic_post_disable = mtk_dsi_bridge_atomic_post_disable,
  	.atomic_reset = drm_atomic_helper_bridge_reset,
  	.mode_valid = mtk_dsi_bridge_mode_valid,
  	.mode_set = mtk_dsi_bridge_mode_set,


-- 
Regards,
Alexandre

