Return-Path: <devicetree+bounces-254889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B206D1D752
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:18:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 801043007C23
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E93A38735C;
	Wed, 14 Jan 2026 09:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZonvDP4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F073B3803C9;
	Wed, 14 Jan 2026 09:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382328; cv=none; b=ksJ3W3U2IvdOyj4TszKlvQuFo3OGv0DMkkZGW682Ewe+UkIJzs/IMfK5DB0HBv6eigsc+AsV7rAouPG9OYtNElfOINwg/8ubsdBpcD6Tj8z/89fmECZPznXveXRTh6p2tdUa/Z6Uee9Fc5tlUihagd+GO4ah0SL3YWCxZizVNNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382328; c=relaxed/simple;
	bh=cbSVacEGGbMYoyfPUQodO8IZ9qWw5QrZa/XaiFemHcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bTh5RZFzkvy1+F2uaViPxNtuj9XWlq4A4MEYzhZbTucjGH6e1Wfq0lnA8qatPB2+N+4CtQndKA4kjXnSGHFLRfmj34ufFaRqwDPR1TeAWTn8ZU4hxi30hyAOqiR3NwJ0YUfdrsmvJ13DfBkvG+N2XD8ZWoOw3me7v9PZnmITfbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZonvDP4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4405EC4CEF7;
	Wed, 14 Jan 2026 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768382327;
	bh=cbSVacEGGbMYoyfPUQodO8IZ9qWw5QrZa/XaiFemHcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rZonvDP4xuuY3ZESpkMQpKhwb4LP44StnjJ6mCr/f/YG2ulSMgOArhG327ppaCImu
	 uqbtEZ024B/AzqAx20URe3n0vxig+S2MUz9lAk+d864Mf9btI7zV4eHx1KVMf1rI7i
	 Y3KHK0phb1veR7V5LXa2wqpDbFxUwbtDLC7ovrPQX2CTt5TujaekEs+aFJuuVEi69q
	 MK+HikAM2dl83j1qIdRmwMYNB8sWThAKVFClYYwPEdEKQoLJ/mjUHLWJA1RrMeNZvv
	 vRz6QYQhEdy16RafeWAXBXmY0AV16YyjShEzA+U6ThtjF9VI/Y6mVkXG8v9Q+WAcDd
	 rx1vK4JhiEVGA==
Date: Wed, 14 Jan 2026 10:18:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: add EDT ET057023UDBA
 panel
Message-ID: <20260114-pastel-wrasse-of-popularity-bcccb5@quoll>
References: <20260113-v6-18-topic-panel-simple-et057023udba-v1-0-54ad218ee52b@pengutronix.de>
 <20260113-v6-18-topic-panel-simple-et057023udba-v1-1-54ad218ee52b@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260113-v6-18-topic-panel-simple-et057023udba-v1-1-54ad218ee52b@pengutronix.de>

On Tue, Jan 13, 2026 at 01:18:37PM +0100, Marco Felsch wrote:
> Add EDT ET057023UDBA 5.7" 24-bit 640x480 DPI panel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 2017428d8828e554f26f7c5d585f55a51b74a2ca..3dc2e0958bcb9965f35a21ed9982225f22ae269e 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -105,6 +105,8 @@ properties:
>        - edt,et035012dm6
>          # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel
>        - edt,et057090dhu
> +        # Emerging Display Technology Corp. 5.7" 24-bit VGA TFT LCD panel
> +      - edt,et057023udba

Misordered, 57090 > 57023.

Best regards,
Krzysztof


