Return-Path: <devicetree+bounces-131798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E70EE9F4994
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CBC51881216
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1E11E573F;
	Tue, 17 Dec 2024 11:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pp8iozYX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963251DFE0C
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 11:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734433673; cv=none; b=ug3fmrwDMawuBzZg7MhSxVbnHHBspabydrgfjWANLOSaFXo4q57yXwVeFxcZ0PcxsWLZUUDgnBvtsmVVG1omkZL+JVCYUhiac4fsK/OHTHjhLcxl9qJuvpWW26/Es/sFBq6Wg2T3cwnATnKN9SShB1W/U+PhrUyNdaMgOjh5hUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734433673; c=relaxed/simple;
	bh=9xMb13ehIBFD0OjFa8STg0scG8DNPG3wbZxfM1/1jmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i08ibzOFcLVjyMdajy1TIQQVyfhcKdCfupCCx6Z4/j04loPAfM91idqPz0zUnGG2dAhzwJzH8XSyx5Dm5Hwz0pqToWe83NHpFGQV031g1gBAIM4GQOJRZhINgpjHXfVVSt2vnxt5XenMZGneX8tUCsL5SyG2yIPpUoKkHoxrjQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pp8iozYX; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53df6322ea7so7037439e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 03:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734433670; x=1735038470; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uYia6bkOtOvm8zyMUkFTLmAVFFk1rfM5TLia+8wKurw=;
        b=Pp8iozYXzN84zloMHejnDJ7x/ABHWYB1T97UgaxiaL8NulZ2UcaL+WGJwZsTJXErwT
         mBoKYOKOi1s2uaCEdtpHsJJEd42u6HUOae3awIrO3ihKplfmRUA452ZH2Vo9McCJ7fLL
         +ODIlNJ0z8vM8McL+FILiOgGIKC+o9YffB9l/zJGws4Bea9DyaZky8N6J7V+uwNKpppq
         0X12O8JkrvjQ5ge5c0u8nojFB9t9xcaYnp+OFRWHfJWNVguIaifN7pwSjVMo8X4QSFTp
         7AUanEwST3wF2vOr1JeGY9tao5cNlXC4ZtXEbqv1u73yG5sDe2/7oJQYpX4/KoICZsxi
         cQYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734433670; x=1735038470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYia6bkOtOvm8zyMUkFTLmAVFFk1rfM5TLia+8wKurw=;
        b=nd945sCniemILfddiq9AI+k1+NcVp4W6wGAtUz+Jz+zVvtSysIOzvQOQXxv9X8wlie
         fFAc/pI3SqQU8WmSRFI2qyZCrvCDim4++38Omha+EkDm7KyQscAMJHUQ6AKEwuXK2SKQ
         8MDlS7z9Ohn1Q10ail11Xrhi8f5u8iRZYmMfuM6TK5G19ewK92rvvFZVA+ZKp6oDAmov
         IbA4aNXuZhS6WTpPol9gxZids5xhmKUcSfJf9OUm/HlzHP4uhE+hmrtqgujsLuagpiNW
         IMkyccahBN5N15h5Fe3UpoVNHVwfOhmCAG96Z4bucAsQf/nRY971TtVN8iXhPZFsPgOB
         yvGg==
X-Forwarded-Encrypted: i=1; AJvYcCUz+YJmoqUZuP4qwbTfAaH/pDt8HDFIoCLLJ8hqxfhEBQ8JDG0FvwO0VI8EcsBi7Z0+sqLcIAK6URNw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk1eD+4jpDNZTFo/tcf3g75AyAuYd1VvtTheSwk09ozQz18AXu
	gcYpWwSiQHkhtXcplov4F+t/5db0WheZg64HWfZ92gfWDiemlUJkwAx5n0mWKNU=
X-Gm-Gg: ASbGnctYpTcMnte5rofLEBZXa42OLjaQcXqmn9Vlv99EAksj8A2nbnmHzVVZNIUikTt
	bKoq5pxMyUEPUh2IFc5OeQZTt/zXBgqncLz1c0BDF7JKsJcj1MRSTiGH1G7xQATXIoL2c0mubE/
	jnAhOrfCoXB/ZFg/+ccH7GRC6jczjZztREDG9QgwszF/CwQg71Ia/00rhob3F1uScdWclsoWudV
	xlCVLpA0qsZD3tETASjhrWFoKSRtNKh/Pd73LKHV1ta7og1jDzGVRmb6ZlNQuF3F2kyiDv1ANw6
	3LfmHwTgFPrJUx/umBiGpj0RLTTxFNQkn6bL
X-Google-Smtp-Source: AGHT+IF9wRRafyTuXG62lAlU9PV2hBrxozyuUj5pTu0s/yHqf/P45mfDC//C58CWkkxQbTLd1cCzgA==
X-Received: by 2002:a05:6512:4012:b0:53f:22f5:afdb with SMTP id 2adb3069b0e04-540905958a8mr5350614e87.35.1734433669649;
        Tue, 17 Dec 2024 03:07:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9db5sm1122725e87.88.2024.12.17.03.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 03:07:48 -0800 (PST)
Date: Tue, 17 Dec 2024 13:07:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 2/9] drm: bridge: cadence: Update mhdp8546 mailbox
 access functions
Message-ID: <z4cmwy6vh6nncq445hvm23n4ar4quciemvcj5zvofevulyofx6@w266vucwqv7s>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <74bc3f2ff56348afd9d773589236ddf06dc3d45c.1734340233.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74bc3f2ff56348afd9d773589236ddf06dc3d45c.1734340233.git.Sandor.yu@nxp.com>

On Tue, Dec 17, 2024 at 02:51:44PM +0800, Sandor Yu wrote:
> Basic mailbox access functions are removed, they are replaced by
> mailbox helper functions:
> - cdns_mhdp_mailbox_send()
> - cdns_mhdp_mailbox_send_recv()
> - cdns_mhdp_mailbox_send_recv_multi()
> - cdns_mhdp_secure_mailbox_send()
> - cdns_mhdp_secure_mailbox_send_recv()
> - cdns_mhdp_secure_mailbox_send_recv_multi()
> 
> All MHDP commands that need to be passed through the mailbox
> have been rewritten using these new helper functions.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - remove mhdp helper functions from the patch.
> 
> v18->v19:
> - Use guard(mutex)
> - Add kerneldocs for all new APIs.
> - Detail comments for mailbox access specific case.
> - Remove cdns_mhdp_dp_reg_write() because it is not needed by driver now.
> 
> v17->v18:
> - Create three ordinary mailbox access APIs
>     cdns_mhdp_mailbox_send
>     cdns_mhdp_mailbox_send_recv
>     cdns_mhdp_mailbox_send_recv_multi
> - Create three secure mailbox access APIs
>     cdns_mhdp_secure_mailbox_send
>     cdns_mhdp_secure_mailbox_send_recv
>     cdns_mhdp_secure_mailbox_send_recv_multi
> - MHDP8546 DP and HDCP commands that need access mailbox are rewrited
>   with above 6 API functions.
> 
> v16->v17:
> - Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_mutex
> 
> v12->v16:
>  *No change.
> 
>  drivers/gpu/drm/bridge/cadence/Kconfig        |   1 +
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 487 +++---------------
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  47 +-
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.c   | 212 +-------
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.h   |  18 +-
>  5 files changed, 104 insertions(+), 661 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

