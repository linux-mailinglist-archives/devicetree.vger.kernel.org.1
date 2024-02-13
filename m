Return-Path: <devicetree+bounces-41163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D04852A8E
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:09:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91418284019
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A00179A2;
	Tue, 13 Feb 2024 08:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="cxrZ1tXQ";
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="YGGjLTNo"
X-Original-To: devicetree@vger.kernel.org
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD941798F
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=24.134.29.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811743; cv=none; b=Qa5y6Vk2m6VymXji7ccdiH00jrxWtvEjKsao4JKS5tUPJN1MfMWyCXhi/055+BfG/lo1GywZaMED2pXowqvXRlJe6/eE8hOpWr2Ms6uoxfXMZJpzCE9RKwsbxfo8dgz5UlRZ3Bm8KP9tv9HpIxOop21OnelXJw5iOhlrGxwoMto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811743; c=relaxed/simple;
	bh=yKmzIACGmln6cc4um1JqjafqS8ErymUzJ7el3Su2Bto=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MHsY6XLzemTTdCFO7YAaQRPtbDFxAqONYvOrUTztULY4Cn0YH6UbPRBAQJA8BkRTtB3SnmRqYTJjjL6tcphwovHYeNwtwm+DTtvYZoEMY+uL1FeRLb901F1SbWv6pmFQRAAxWlERWoj34o4OxoM7ycbUhVYvPjD1klWM6LuvQls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org; spf=pass smtp.mailfrom=sigxcpu.org; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=cxrZ1tXQ; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=YGGjLTNo; arc=none smtp.client-ip=24.134.29.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sigxcpu.org
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id DBA98FB03;
	Tue, 13 Feb 2024 09:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811236; bh=yKmzIACGmln6cc4um1JqjafqS8ErymUzJ7el3Su2Bto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cxrZ1tXQ+DTiT2bXkMROARspyq8fRVtd7B1+JhuSxyS/ITRKvC94ETl0dOFXO4qfb
	 7vqyewaas+9DiH2ZF3VJUdenX4oJL3P5qjdr0HH7TAJMJ+WpXM8z2XSUWxBpwTq8JY
	 zjstmSjFI0jSH/w4tqYvxxk8YhoDbJzONDCWhofQ3kfaJNeixH+cFFKEw8FvyzZJwb
	 wOIGBAZ2oVrE40PGkKWaJKOIZkkK7b5taRQUyNAimCOnAZtM8yLyVsTwwDSZwNLCQP
	 LACHxDfGoU9/UwJoAkk0ZDTnilK8ifnrJuxEbNzOBPg0K8pzKLLldEjmZeICzooHbZ
	 mC4YDrC3ikCgw==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeDCnu0LeCGH; Tue, 13 Feb 2024 09:00:35 +0100 (CET)
Date: Tue, 13 Feb 2024 09:00:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811235; bh=yKmzIACGmln6cc4um1JqjafqS8ErymUzJ7el3Su2Bto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YGGjLTNoQsDaOUQMux+e5bOF7f6QZY2pvlrtlF+ibfkO+J7IGcJ4ewWCM0S3TZ7iG
	 cIJFnPG4KaKCnNtfDwWoQvndgQ23IdmIZh5VGUwtyfrdTzZucQS26FO5Ic5NRg2A7C
	 5fuZhyHImzwk8FIPRKl9ZLW/h7AHfHPUVNY/z7po9aRTBf/GtO+Gsgd/Y2U+AnwfVY
	 Vx3Q33c2qVz/n6OuABIAWXPmdHvcJwGoTyu8EPiXGRI7D8G8q2Y97shogfKfHY0AuC
	 1wWfZhXnyFeA8oqpxCqrAzD6Hq7q+jsZvfQYyFuLhXV/rosdORDMuy3SCf91CTzb7/
	 ww4oh2Jvot4XQ==
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
Subject: Re: [PATCH 1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3
 panel
Message-ID: <ZcshoKi9cbhZQ6V5@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240212184950.52210-2-macroalpha82@gmail.com>

Hi,
On Mon, Feb 12, 2024 at 12:49:44PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The RGB10MAX3 panel is a panel specific to the Powkiddy RGB10MAX3
> handheld device that measures 5 inches diagonally with a resolution
> of 720x1280.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> index 97cccd8a8479..8dfe8951bf5b 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> @@ -22,6 +22,8 @@ properties:
>      enum:
>        # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
>        - anbernic,rg353v-panel-v2
> +      # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
> +      - powkiddy,rgb10max3-panel
>        # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
>        - powkiddy,rgb30-panel
>        # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel

Reviewed-by: Guido Günther <agx@sigxcpu.org>

Cheers,
 -- Guido

> -- 
> 2.34.1
> 

