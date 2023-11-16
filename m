Return-Path: <devicetree+bounces-16390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 777217EE77C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EDF01F22AF8
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C01E634CD1;
	Thu, 16 Nov 2023 19:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E860D4D;
	Thu, 16 Nov 2023 11:27:38 -0800 (PST)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-58786e23d38so663639eaf.3;
        Thu, 16 Nov 2023 11:27:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162857; x=1700767657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdXxO76TxrHNOJ1hG2GWZ3FtG3o6//qcCrBEV7e6JF0=;
        b=uSK7lCd44mDSPFaskFwNPiWAevRW8NVnXF+aqCq/CtZVS7GovCcL7al9y7Vng9DMiH
         5Cx5EGFhTIPk6DJM9EyX9wGhi4i11/4G9IophZI2QOqat8ahj3pT/uRB5zxLWR2g6Rnc
         ixYq2xExsJW7V1NcHcbfhl3vakPmyCOS8Oidzxdfmtxt/sK3AYZNA8pbGdPHpfHA3q7g
         KdIuZ01CA+82IxTZZuHK1dDtASeLQ8dqDbK/zHoCTYyM9+hYCqGTe681xCUoYDOAMJ41
         LD5g/8kuWwv5DzARY6pKAM0iqarDBSKMZUC0itmnVWEPCuMtaC9kAnFcM5oYpDOQrdYO
         JQzQ==
X-Gm-Message-State: AOJu0YzI6xOE8HJyLH6INeaXerbutEEGDe8p0OybDZYdREDYdeyljNzm
	hq4y0YprOQYT8YH3I5E5DQ==
X-Google-Smtp-Source: AGHT+IFX+Vh0cRgukREyljR+kjDwhtv9/esCRp99bcIH9IEMsr6X4lDgVj1LBbJa0EfNgm8RoL05IA==
X-Received: by 2002:a4a:9187:0:b0:586:b062:f3d0 with SMTP id d7-20020a4a9187000000b00586b062f3d0mr15603964ooh.7.1700162857520;
        Thu, 16 Nov 2023 11:27:37 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w18-20020a4ae4d2000000b00581fc1af0a7sm11965oov.28.2023.11.16.11.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:27:36 -0800 (PST)
Received: (nullmailer pid 3065895 invoked by uid 1000);
	Thu, 16 Nov 2023 19:27:34 -0000
Date: Thu, 16 Nov 2023 13:27:34 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231116192734.GA3050632-robh@kernel.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114112855.1771372-1-andyshrk@163.com>

On Tue, Nov 14, 2023 at 07:28:55PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3588:
> 
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 324 ++++++++++++++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  57 ++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 215 ++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h      |   4 +

This is part of the binding and belongs in the binding patch.

