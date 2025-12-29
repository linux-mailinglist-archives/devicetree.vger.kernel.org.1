Return-Path: <devicetree+bounces-250163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF471CE69C6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24FEF3007262
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7312D6401;
	Mon, 29 Dec 2025 11:53:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [5.144.164.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D223B604
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767009182; cv=none; b=KZe6DDyWqGXFSs8Nk2fAPZVpqCCfq6r2/iDgrYTOOhUyrSsH1Lk72xd2oKQv5pph1j1BWTDIKYib0MhBu/H2CuqSc5PISXyV7b4GYzpB/uUUd8qO3qVzW3J3M6OBFd/NQwPOgrsVR+nJJQcoHU7hoghfSqQ4oJ47AiyRfgqDkjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767009182; c=relaxed/simple;
	bh=uboTYwJ421NXpiSVGfrHsrE26DsNNAgP/uiRqAChfXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YUdYtBnXp3bCwgJ284sK50SYSrwqDVKlmlEtwl3AdyFEZO8IjXB4oTNaHdfoJZS8EPjvJv632ntcJLVZ/zt1Yrl97ECNOexqsxj/ndBP7yqHZMc0E+TKBvdD5rMMEMSoPpOQteOE5BAR8+Qa7te7FTtV7AXJms7dylL2hphQJs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 3DD973F65A;
	Mon, 29 Dec 2025 12:52:57 +0100 (CET)
Date: Mon, 29 Dec 2025 12:52:55 +0100
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
Message-ID: <aVJpbJEymWWQLK6O@SoMainline.org>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-4-82a87465d163@somainline.org>
 <CAD++jLmSev3=HJF1j_kTU5j-u2NhxH6TsdE0uUjnD7Vqkt_h-w@mail.gmail.com>
 <aU6QxjOphoq9E1pL@SoMainline.org>
 <CAD++jL=HDRAcwDVUeYUKFbamqVnOADqz5qpbSr1XVsr3M1iNoQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD++jL=HDRAcwDVUeYUKFbamqVnOADqz5qpbSr1XVsr3M1iNoQ@mail.gmail.com>

On 2025-12-26 18:38:56, Linus Walleij wrote:
> On Fri, Dec 26, 2025 at 2:48 PM Marijn Suijten
> <marijn.suijten@somainline.org> wrote:
> > On 2025-12-26 14:25:04, Linus Walleij wrote:
> 
> > > They are clearly using the S0FEF01-M display controller.
> >
> > So you're implying or certain that these panel names here are always bundled
> > with exactly the same controller (making the SOFEF01 part "redundant" in the
> > compatible)?
> 
> Yes that's what I suspect.

Do you still want me to drop it from the compatible, but definitely keep it in
the driver filename unless we unify all of the drivers (hopefully in a later
patch)?

> > Also, divergence of the driver commands got significant with the last two panels
> > / three phones, though that might be down to vendor configuration/calibration.
> 
> That's kind of normal. The defaults suffice for a while, then engineers
> want to start poking at different voltages to the display to improve
> and tweak things.

Makes one wonder if the changes are down to the panel used, or vendor tuning
when they started using these panels in their phones.  To note, I think I booted
all these phones on the "original" SOFEF01 driver without problems, before
ultimately implementing all diverging commands because I don't know if they're
defaults, related to color tuning, timings, thermals, manufacturer tolerances or
anything else.

- Marijn

