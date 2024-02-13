Return-Path: <devicetree+bounces-41158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 596F9852A73
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECBA01F22B48
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E800C17999;
	Tue, 13 Feb 2024 08:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="Hr9M4xuh";
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="ECbq23hU"
X-Original-To: devicetree@vger.kernel.org
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BF217998
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=24.134.29.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811464; cv=none; b=WmcXIA5+9zRq0TJBAZsCjzw3NGdyatN4eDuNbeUWVgNSnRPxYylr5lIcoMQh9OxhGOMjhd8WtoYdkob1QiuXfKu0EM9LyFvVqC2j17s0Jxa+UsWpZBQbpfEtKk6ZPFi1UfWCvGGM9uS8ZdGYjAbSYHxfTG0nOvjj9XNL6XqjBFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811464; c=relaxed/simple;
	bh=zYMtwDFNNdylEZibK4LgoVQSY1dI+zems8RvSMNHedo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OHctFSM1zAdUiEMQNH6a3HtrAszWaK2VeAqqcV6cy+ws0FMkiYnB3VjjujU6bY8uM3y35LTr7Am6v2xLgeop6ZqKncB9S4LCqwHhMqR+vLltCOH73eNtOkFc+aW+JiUjmOBk7zgZ+1Dwhzkc864C70ppL30GCXt/lccNHelMdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org; spf=pass smtp.mailfrom=sigxcpu.org; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=Hr9M4xuh; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=ECbq23hU; arc=none smtp.client-ip=24.134.29.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sigxcpu.org
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id 7E9A5FB05;
	Tue, 13 Feb 2024 09:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811459; bh=zYMtwDFNNdylEZibK4LgoVQSY1dI+zems8RvSMNHedo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hr9M4xuhbFt5WPk0TctUss8hPKdE2JTNBi8yEZ5/6nGyx6TFzJtirB3BBNyJtKz/N
	 sxp7ZN8eWz4QJAzce2sG9eGP7YOXBuBfTKZTMhzkcFR3nVq1kmoWq9r+9lH6n9jvLN
	 3YGocieZrry3PYM5QoSjr0se6u36v+3v/sxcwzJswGZNMpaMXInlaJOJeO8Ji20a1j
	 e2hXm5z/X/v8SFQ8+1c81lnpKCO+W+etTHEy7PRC1rWJQUpZwBlPV7njFOMeV6aY8x
	 n9z+OHfg+7TW2zSxvKcP8sVX/ruqgNMPlQ1+i4OMe4BWuI/FmvhNQ/NkaxtzHlZ4rn
	 5Aed9mTO2AMeA==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3nQOoHFiO74; Tue, 13 Feb 2024 09:04:18 +0100 (CET)
Date: Tue, 13 Feb 2024 09:04:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811458; bh=zYMtwDFNNdylEZibK4LgoVQSY1dI+zems8RvSMNHedo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ECbq23hUw64uiw8QnL4Cv6UxNpmvfpn9h6irH6Twx0XtAbAP9XVb4y8xz1txRUq/g
	 CCxhYweGrlouzyTCdqBY+9MtbsVBPDnW6f3cv39o9455+JeAHWpA/W/hkmLFN68YIt
	 BZUkGSgDYYodNLFFeOgCIAtuQhYF6HWj4Ljbymekwz13SEfAP8xtrrVZDAAH0jKLUs
	 3XX1eUtThIPoXYn0tFX2S1AHKZxP+Sa6YkUbFhuDtAEZdg7S3NXtPbQY4fTAzuGSwM
	 McpXOi1diBJKrQ7J8lPWfm+vDOHtcjZFCm6mGMWU7/5BjZB3+Nad2kwZ778CLu0o3+
	 QD4C+W2dWSF5A==
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
	kernel@puri.sm, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Message-ID: <ZcsigBwmMoZeD1Vn@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-4-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240212184950.52210-4-macroalpha82@gmail.com>

Hi,
On Mon, Feb 12, 2024 at 12:49:46PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the rotation property for ST7703 based panels.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> index 8dfe8951bf5b..97e0d14790e3 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> @@ -46,6 +46,8 @@ properties:
>  
>    backlight: true
>  
> +  rotation: true
> +

I'd avoid newlines here:

  backlight: true
  rotation: true

(which also seems to match what other panels do). With that

Reviewd-by: Guido Günther <agx@sigxcpu.org>

Cheers,
 -- Guido


>  required:
>    - compatible
>    - reg
> -- 
> 2.34.1
> 

