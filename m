Return-Path: <devicetree+bounces-100278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C364696D0A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AA991F23F11
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E63B1192D70;
	Thu,  5 Sep 2024 07:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7ym7Rk+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FA718A94F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 07:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725522197; cv=none; b=KDVlPfbT3Sq7G27zOSvSL1ykJi7nsFihIXD+LkLG869ZyKmlPGEtPdOtBN0d/12VszsqOV0MMpfH/eQn2NA9SfFNYePqApp2gq90OhrcLonptTUsNRSawxx1ks/d6EGLM9NpDO7g1xPIVptWYZ9BvqIYo5k0A6H4BfbU8CqqPRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725522197; c=relaxed/simple;
	bh=PSHmRPlymVF9FxRmxgdRJuK/SoQQG9TI2SQoKNIXvwg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JdM4DFpJnNzA42aw5qHAxAOk5frfnsoeS5JvVXvl4baueFWVKu47WUHWFdUAvuolSkZtFsjOIMNvpn/LRUb0ZfWu38ZCCSg21RI4rGiu9b4agGVZPdj3Z3FEBxLJTyTDhTB8EZZkWde1+jtJlhc60fCZxHwGrfGE4qkc3CwhOwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7ym7Rk+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3C6C4CEC4;
	Thu,  5 Sep 2024 07:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725522197;
	bh=PSHmRPlymVF9FxRmxgdRJuK/SoQQG9TI2SQoKNIXvwg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r7ym7Rk+bXNpktwyy/ALKE7ScDQQQ+xkhHyI4NWozjA6T7G6BFgPiwAf8c7AzLVIN
	 3NA6occQzRIZppA6CeWFkGpED5o9qsZfye7y1NupyAPATAON5CqmY7h6JwpuDwsGNu
	 6mFPhGXZEmn9xnMRuAf+5Z73TouGRYGHKK1kOsHhOhBqMPD5/buQKCEbKl9tkVK7R9
	 2ICnThAtrOCLMKL2I3sFldJdtX97y5Qc6399SJdy2YTvJzh1kAK1yRWq4Jp03q7Vq9
	 cXApDME+GZLEMIgYyyMfzAQCrWPOMNxfVAJHwZAzmAnxzS2NXe4STFKPh/ijNLiGwZ
	 aIu55wYl0o7zw==
From: Maxime Ripard <mripard@kernel.org>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Cc: Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH v3 1/2] dt-bindings: display: panel: Rename WL-355608-A8 panel to rg35xx-*-panel
Date: Thu,  5 Sep 2024 09:43:10 +0200
Message-ID: <172552218878.2901646.285441761169432091.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240904012456.35429-2-ryan@testtoast.com>
References: <20240904012456.35429-1-ryan@testtoast.com> <20240904012456.35429-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 04 Sep 2024 13:23:21 +1200, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> OEM used in a number of handheld gaming devices made by Anbernic.
> Previously committed using the OEM serial without a vendor prefix,
> however following subsequent discussion the preference is to use the
> integrating device vendor and name where the OEM is unknown.
> 
> There are 4 RG35XX series devices from Anbernic based on an Allwinner
> H700 SoC using this panel, with the -Plus variant introduced first.
> Therefore the -Plus is used as the fallback for the subsequent -H,
> -2024, and -SP devices.
> 
> [...]

Applied to misc/kernel.git (drm-misc-fixes).

Thanks!
Maxime

