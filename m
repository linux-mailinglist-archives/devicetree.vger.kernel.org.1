Return-Path: <devicetree+bounces-249761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE7DCDEBE5
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 14:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E5103002A55
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 13:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4030570809;
	Fri, 26 Dec 2025 13:48:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [5.144.164.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0D81799F
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766756915; cv=none; b=YWKb2Lo6H103ecYWxY4ACKE2+AxYMnlFSZjmSigGa3hRqTBbXItHw9VcS30UMMJX8GCKF5TXU8JHzPzoZ4D+YRTVe1xfk2Df+XoOhry2228JKlHqMnelDNZGNY1FvlG3UlzJ8HarWy+KYFG0bddUH542ADWLrWddcD2BMnKMokA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766756915; c=relaxed/simple;
	bh=bVb21i+uhIJWuOL/Eo7L69iSCHGu9Kzp8sIj7G920Hg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dgcW8fJBgqyNrrcg6Cb4+fZLYwbk3sNl7Bs/4Krp5txZIi6Nj+QCXfWUo5LGIbwfFTkp2HqyGoKOMz6ANonR2sPB4qibZpaJDa3h00K6QKdDrbmep1l+7EzSoKr/JuO++Zsu5xZVXURxR+RMFqd6Fbyg+d12fbDxrBcn7TwEnQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id EC3543EA72;
	Fri, 26 Dec 2025 14:48:23 +0100 (CET)
Date: Fri, 26 Dec 2025 14:48:22 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
	Casey Connolly <casey.connolly@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, Martin Botka <martin.botka@somainline.org>, 
	Jami Kettunen <jami.kettunen@somainline.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 04/11] dt-bindings: display: panel: Describe Samsung
 SOFEF01-M DDIC
Message-ID: <aU6QxjOphoq9E1pL@SoMainline.org>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-4-82a87465d163@somainline.org>
 <CAD++jLmSev3=HJF1j_kTU5j-u2NhxH6TsdE0uUjnD7Vqkt_h-w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD++jLmSev3=HJF1j_kTU5j-u2NhxH6TsdE0uUjnD7Vqkt_h-w@mail.gmail.com>

On 2025-12-26 14:25:04, Linus Walleij wrote:
> Hi Marijn,
> 
> thanks for your patch!
> 
> On Mon, Dec 22, 2025 at 12:32 AM Marijn Suijten
> <marijn.suijten@somainline.org> wrote:
> 
> > Document the Samsung SOFEF01-M Display-Driver-IC and 1080x2520@60Hz
> > command-mode DSI panels found in many Sony phones:
> > - Sony Xperia 5 (kumano bahamut): amb609tc01
> > - Sony Xperia 10 II (seine pdx201): ams597ut01
> > - Sony Xperia 10 III (lena pdx213): ams597ut04
> > - Sony Xperia 10 IV (murray pdx225): ams597ut05
> > - Sony Xperia 10 V (zambezi pdx235): ams605dk01
> > - Sony Xperia 10 VI (columbia pdx246): ams605dk01
> >
> > Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> (...)
> > +      - samsung,sofef01-m-amb609tc01 # 6.1"
> > +      - samsung,sofef01-m-ams597ut01 # 6.0"
> > +      - samsung,sofef01-m-ams597ut04 # 6.0"
> > +      - samsung,sofef01-m-ams597ut05 # 6.0"
> > +      - samsung,sofef01-m-ams605dk01 # 6.1"
> 
> So is the assembled product really named like that?
> 
> Samsung S0FEF01-M AMS605DK01?
> 
> I would more expect the compatible strings to be excluding the DDIC
> name, like:
> 
> samsung,ams605dk01
> 
> ...but it's not like the vendor is helping us here, so I'm practically
> fine either way.

Unfortunately I'm not that familiar with display manufacturers and panel
assemblies.  Most of the what I presume to be panel names were gleaned from
online screen replacement photos; those don't ever include the DDIC name.  Those
mostly come from the DTS though isn't mentioned exactly for every phone (only
the first two in the DTS name).

> They are clearly using the S0FEF01-M display controller.

So you're implying or certain that these panel names here are always bundled
with exactly the same controller (making the SOFEF01 part "redundant" in the
compatible)?

Also, divergence of the driver commands got significant with the last two panels
/ three phones, though that might be down to vendor configuration/calibration.

- Marijn

> Yours,
> Linus Walleij

