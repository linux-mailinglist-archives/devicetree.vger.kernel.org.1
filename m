Return-Path: <devicetree+bounces-135227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C7BA00392
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 06:33:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6723A3799
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B95E1547F5;
	Fri,  3 Jan 2025 05:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SugzObVv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339335674E
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 05:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735882426; cv=none; b=Dzgf7dY9ouYwsYDehm8EFJzpmBOBnnfGw2/oUgCZpo25l773rOPpJqe1mW/sRSC+4rWIZHbePB2mP0z6aQVG6KMSpQFaC2eUgmMw+Sy2BwnwIQN1r/4c5X8ALEOShsCldC8VRGoIBmoX2HjN7Vt8V3M0i4ugt2lSLsCp3Ki0I8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735882426; c=relaxed/simple;
	bh=5o+fZ5vS6zENX6ARZ8J1kYOLho4QnIT89p4IlB2FjgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IxFc1Hf8QpeVwUfc6ZSMzP8QFSeV2Wqs00IyGK1s/bkdx33+0CXCg5ndLeEmS1BPyMUp78vN64DBk4Wn7FTTwPCQL6UYooUTr9UJDHVyDFpKr8na47AN7nMlLIZOztP7uzOFm2arRCqaV1UocxbEDdmxxofgNZcQ6P836Bk93ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SugzObVv; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53e399e3310so14551268e87.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 21:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735882422; x=1736487222; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HUrhr336s+60zt23QDWZqcGTF0DZKHiNks6mhysqyVM=;
        b=SugzObVv47n9wd7cCaiDxI31ka9QtXBOGDm5yi56mA15a9q0TqYARW1TCQQTlWyAGl
         2VKtwdu+aIva7ItoJHvT8Iqa6ZftLpcoZEkLm8fsO2T4smMBrWPK3VPkuhmppSe6qWFj
         ebgyVJchDAOR+L1yCmgzFBKu7CpGxPaAefTM4/69TwVqzjj1B5F3XryJ5Ce36FjKKwAm
         YcyJFsDws+GMelgMBvTEx+OYFrz1LVyWmHOqekx8fY601yyv9ryJWsQia8fiZwQs3r3Z
         5W2gQO6AX/zseEac+7aTfL1SoMeRIlqRlOQ+XN2Ao3SLqnCxGizBM6h/P+kUEbjqiJcd
         62og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735882422; x=1736487222;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUrhr336s+60zt23QDWZqcGTF0DZKHiNks6mhysqyVM=;
        b=PUdlaZz7jVVnyuJ8L/TgC1ql6UKQZpl1r9CtmuO9wvdgB6E5CZgiaPcCOMuM9BtGiX
         PppJp2lBsxNpqgRMlXMyus8w/CcNdg2kMPi3sDXbkIKfpejgfdVVmggjma21s9cPw4Tk
         ewg3Pj/A/f2vyx1ZFtfmS0aQj3U0uftHEpthEIOtmHLy/iZr/q9OdLTLwz/YFafPzdYn
         q/kNxH43rQKaXBiM9OfuKHxwIrnVOzW3Bgm5MRSGIhYMWBTUUQptmOvqEde8XG2vM/5b
         aTSq3SCbXX4LuLYia+Hy8tu94MXa6u4SECZfb7UsWtUpFopGg2XLpUSOyT48mfgUZ5Da
         r8TA==
X-Gm-Message-State: AOJu0Yx0OLVp5hUXLxDkQrWynGmH55V3TBH1mF1Jaxje7mqSmU7eIgpQ
	dxxwWdb/FsRu8QqKUW/WZUOu2vCvQqr1iWn9btCNiapDQbJjBoUZUBL5brL3exQ=
X-Gm-Gg: ASbGnct6rlMRLWnVGuIu1Ur/aNpsJZkb80QNZ7iAD6LGpTLIpQuMvTM8yVoEHaAqSEp
	WhX6+PMQcC5RuTVx953xmvPlV6ehFPUYtEElxl9xwUyOc/EYR7y1nIIXru4vV7j9llo9fPV8lA1
	Hdc+5efUoTJjSbZpyLFqmkPNdGijiPcYa12MNO4sv6n0dj+WTyDCXhPExAEnbu/SICr7YouGFLa
	hwuEEJEjj1WLz/hD2fajJm7VsaSUhGuo2RpRsRre6NMMqUxbdhBjXAt7f8dmBCnESRYCpZGOei1
	YXJYMCRLqqT0+mMtTiTOwXxwoh7JKOCUG3aU
X-Google-Smtp-Source: AGHT+IEsLjhbu2jSaiZPN8bLQCUM6NVU655VzJ0kcFZvInsNgvUMyCwvCcQ0/H8BekM4Tf47nmpS8w==
X-Received: by 2002:a05:6512:118e:b0:540:22e0:1f80 with SMTP id 2adb3069b0e04-54229530295mr13502516e87.20.1735882422120;
        Thu, 02 Jan 2025 21:33:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813595sm4103333e87.136.2025.01.02.21.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:33:41 -0800 (PST)
Date: Fri, 3 Jan 2025 07:33:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>, 
	David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Robert Foss <rfoss@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>, Stefan Agner <stefan@agner.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] drm: bridge: dw_hdmi: Add flag to indicate output
 port is optional
Message-ID: <zijtpn55edeeepzfqiv6d5xv3vyaircloeaa2pbauwlxow7h3a@a5v6p37o3ppq>
References: <20241231192925.97614-1-marex@denx.de>
 <20241231203136.GD31768@pendragon.ideasonboard.com>
 <88778e2b-8c43-46a1-bb79-0d9c968a5233@denx.de>
 <20250101223620.GA7206@pendragon.ideasonboard.com>
 <ac4kkjv2nmziu6pd6vkuxbllhkqaueu32snfetpemtu2l5s6ud@cvystps3734o>
 <20250102083038.GB14307@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102083038.GB14307@pendragon.ideasonboard.com>

On Thu, Jan 02, 2025 at 10:30:38AM +0200, Laurent Pinchart wrote:
> On Thu, Jan 02, 2025 at 05:26:50AM +0200, Dmitry Baryshkov wrote:
> > On Thu, Jan 02, 2025 at 12:36:20AM +0200, Laurent Pinchart wrote:
> > > On Tue, Dec 31, 2024 at 10:10:51PM +0100, Marek Vasut wrote:
> > > > On 12/31/24 9:31 PM, Laurent Pinchart wrote:
> > > > > Hi Marek,
> > > > 
> > > > Hi,
> > > > 
> > > > > Thank you for the patch.
> > > > > 
> > > > > On Tue, Dec 31, 2024 at 08:28:48PM +0100, Marek Vasut wrote:
> > > > >> Add a flag meant purely to work around broken i.MX8MP DTs which enable
> > > > >> HDMI but do not contain the HDMI connector node. This flag allows such
> > > > >> DTs to work by creating the connector in the HDMI bridge driver. Do not
> > > > >> use this flag, do not proliferate this flag, please fix your DTs.
> > > > > 
> > > > > What's the rationale for this, what prevents fixing DT instead of using
> > > > > this flag ? Adding such a flag will most likely open the door to
> > > > > proliferation.
> > > > 
> > > > See the V2 series discussion, there are a few in-tree DTs which do not 
> > > > have the HDMI connector node. The rationale is there might be more and 
> > > > they might come from vendors, so this flag is necessary to work around 
> > > > those DTs.
> > > >
> > > > > If you can't fix the DT on particular boards, patching it could be an
> > > > > option. We had a similar problem on Renesas boards, which we fixed with
> > > > > a DT overlay, see commit 81c0e3dd82927064 ("drm: rcar-du: Fix legacy DT
> > > > > to create LVDS encoder nodes"). This made the workaround self-contained,
> > > > > and allowed dropping it several kernel versions later (in commit
> > > > > 841281fe52a769fe, "drm: rcar-du: Drop LVDS device tree backward
> > > > > compatibility").
> > > >
> > > > Frankly, I would much rather fix the few in-tree DTs and mandate the 
> > > > HDMI connector node in DT, which would keep the code simple, rather than 
> > > > maintain a backward compatibility workaround for problem which might not 
> > > > even exist.
> > > 
> > > The in-tree device tree sources should be converted as part of the
> > > series, I don't see a point trying to maintain backward compatibility
> > > for in-tree DT sources.
> > 
> > DT is an ABI. We are supposed to keep backwards compatibility with
> > existing device trees (at least for a while). I'm adding DT list and
> > maintainers to be able to provide comments on this topic.
> 
> Backward compatibility is about supporting old DT binaries with a newer
> kernel. There's no need to support old DT bindings in in-kernel DT
> sources. By definition, if someone compiles a DT from a newer kernel and
> installs it along with the newer kernel, there's no "backward"
> direction.

Hmm, nobody is asking to provide compatibility with old DT bindings.
However supporting DTs with no extra "display-connector" bridge after
the DW bridge is exactly "supporting old DT binaries" in my opinion.

> The backward compatibility requirements aim at ensuring no breakage when
> upgrading the kernel without upgrading the device tree. As I mentioned,
> there is no regression if nobody is affected in the first place. Proving
> there is no affected DT in the wild is difficult though.
> 
> > > For out-of-tree sources it depends on how likely the problem is. There's
> > > no regression if nobody is affected. I personally like restricting
> > > backward compatibility to the strict minimum, to ensure that all new DTs
> > > will use proper bindings. Making the backward compatibility code
> > > self-contained helps there, and we could also print a loud warning
> > > (WARN_ON() seems appropriate) and set a date for the removal of the
> > > workaround.
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
With best wishes
Dmitry

