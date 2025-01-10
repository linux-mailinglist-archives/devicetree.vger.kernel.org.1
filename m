Return-Path: <devicetree+bounces-137601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B25A09E3C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DC4E3A1C3E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7974E21660F;
	Fri, 10 Jan 2025 22:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAceQn9z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AA1213E61;
	Fri, 10 Jan 2025 22:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736549039; cv=none; b=euLBtb1hDXB7ZOW/eCQtNQcmhbMlx0Rn73yYh01YVBdu+br+B9q3KTMW+n3Bv/Gb6XYiYHtr/9F/uRyE5MV4wPdLH/HCjab3NKsgMjoPNw75JF8eAOJPa49UTwE7IUyvYUZtemSbO/SFzWMBB7WhAlS8ZFbXTFPRDjpAS4s/jRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736549039; c=relaxed/simple;
	bh=9rxUz9ojcB/buc6JlnGsz5tAJUhPR3MfHzPlf9l/4YM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=CEhNa1qJU8VO0kZSLhMooI5CyCD5iDKfcK3/5s2i/8BuV0K+DBty1OsCHWFT7Ke2v7UN4wElxTA91koj4NHnTEAEQGkpET0/mqyiS0G9eLbkl590O7vvwn94I9Kw1GZXOUjlMf1s1RLhh1LCCNlrD2xkQKaNLt2GdVtvTiJfpPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAceQn9z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 945AEC4CED6;
	Fri, 10 Jan 2025 22:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736549038;
	bh=9rxUz9ojcB/buc6JlnGsz5tAJUhPR3MfHzPlf9l/4YM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ZAceQn9zD6mKmAJJThF/9noy3JaT3TbU+1fC4XwPWpaBAlPScwK9iTz5ZgTL715lZ
	 Rv2+H/UDKipn+OIkpBTPktI2pUhYT2YfQBoHKeYv9ASyMJ1Lw0p/10+H+mxVz8sPeV
	 K8kc0EvnSK5tiHiHwE8ma0Dz/ePRfV+TZBh80HSIn/aPTPPZYQW57nUYRgc69M7PnH
	 88u092fu1L3SOY/VbOvvhENX7jl9o6axtpsyyx+aaAStbjpr7ZJJ3RmmC6bF9PJJQL
	 1hf4q4K8BbrqMitNHeGdgreWgGQdssbalAWWWPerMrIOoZH1dhfx/dPGUgPYzIaqoq
	 xOtalLDmftdVQ==
Date: Fri, 10 Jan 2025 16:43:57 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Maxime Ripard <mripard@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-amlogic@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
To: Ao Xu <ao.xu@amlogic.com>
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
Message-Id: <173654872408.3799019.13473379234545268910.robh@kernel.org>
Subject: Re: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for
 Amlogic S4


On Fri, 10 Jan 2025 13:39:50 +0800, Ao Xu wrote:
> This patch series adds DRM support for the Amlogic S4-series SoCs.
> Compared to the Amlogic G12-series, the S4-series introduces the following changes:
> 
> 1 The S4-series splits the HIU into three separate components: `sys_ctrl`, `pwr_ctrl`, and `clk_ctrl`.
>   As a result, VENC and VCLK drivers are updated with S4-specific compatible strings to accommodate these changes.
> 2 The S4-series secures access to HDMITX DWC and TOP registers,
>   requiring modifications to the driver to handle this new access method.
> 3 The register addresses for the video1 and video2 planes have been updated in the S4 hardware,
>   and the DRM driver has been adapted accordingly.
> 4 The OSD, VIU, and VPP components remain unchanged and are consistent with the G12-series.
> 
> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
> ---
> Ao Xu (11):
>       dt-bindings: display: meson-dw-hdmi: Add compatible for S4 HDMI controller
>       dt-bindings: display: meson-vpu: Add compatible for S4 display controller
>       drm: meson: add S4 compatible for DRM driver
>       drm: meson: add primary and overlay plane support for S4
>       drm: meson: update VIU and VPP support for S4
>       drm: meson: add meson_dw_hdmi support for S4
>       drm: meson: change api call parameter
>       drm: meson: add hdmitx vmode timing support for S4
>       drm: meson: add vpu clk setting for S4
>       drm: meson: add CVBS support for S4
>       arm64: dts: amlogic: s4: add DRM support [1/1]
> 
>  .../bindings/display/amlogic,meson-dw-hdmi.yaml    |    1 +
>  .../bindings/display/amlogic,meson-vpu.yaml        |   48 +-
>  .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     |   39 +
>  arch/arm64/boot/dts/amlogic/meson-s4.dtsi          |  121 +++
>  drivers/gpu/drm/meson/meson_crtc.c                 |   90 +-
>  drivers/gpu/drm/meson/meson_drv.c                  |  127 ++-
>  drivers/gpu/drm/meson/meson_drv.h                  |    6 +
>  drivers/gpu/drm/meson/meson_dw_hdmi.c              |  244 ++++-
>  drivers/gpu/drm/meson/meson_dw_hdmi.h              |  126 +++
>  drivers/gpu/drm/meson/meson_encoder_cvbs.c         |   10 +
>  drivers/gpu/drm/meson/meson_encoder_hdmi.c         |   19 +-
>  drivers/gpu/drm/meson/meson_overlay.c              |    7 +-
>  drivers/gpu/drm/meson/meson_plane.c                |   24 +-
>  drivers/gpu/drm/meson/meson_registers.h            |   17 +
>  drivers/gpu/drm/meson/meson_vclk.c                 | 1018 ++++++++++++++------
>  drivers/gpu/drm/meson/meson_venc.c                 |  346 ++++++-
>  drivers/gpu/drm/meson/meson_venc.h                 |    4 +-
>  drivers/gpu/drm/meson/meson_viu.c                  |    9 +-
>  drivers/gpu/drm/meson/meson_vpp.c                  |   12 +-
>  19 files changed, 1865 insertions(+), 403 deletions(-)
> ---
> base-commit: 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
> change-id: 20250110-drm-s4-c96c88be52e4
> 
> Best regards,
> --
> Ao Xu <ao.xu@amlogic.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/amlogic/' for 20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com:

arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dtb: vpu@ff000000: reg: [[0, 4278190080, 0, 262144], [0, 4261445632, 0, 8192], [0, 4261412864, 0, 8192], [0, 4261462016, 0, 2048], [0, 4261478400, 0, 256]] is too long
	from schema $id: http://devicetree.org/schemas/display/amlogic,meson-vpu.yaml#
arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dtb: vpu@ff000000: reg-names: ['vpu', 'hhi', 'clkctrl', 'pwrctrl', 'sysctrl'] is too long
	from schema $id: http://devicetree.org/schemas/display/amlogic,meson-vpu.yaml#
arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dtb: vpu@ff000000: reg-names:3: 'pwctrl' was expected
	from schema $id: http://devicetree.org/schemas/display/amlogic,meson-vpu.yaml#
arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dtb: vpu@ff000000: 'assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/display/amlogic,meson-vpu.yaml#






