Return-Path: <devicetree+bounces-135367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB4A00B53
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3BFE1641DE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7301E1FBE89;
	Fri,  3 Jan 2025 15:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW3bTJJX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95B1FBE85
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 15:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735917636; cv=none; b=svL6qHmK0k8eKpI58HNo48gk6la7wnQqMGRtp4lhOTvo10EWB6kTZWDW9wc013Av/RkMYsD6F8bYKlqSR/aiBpckQQgC0IMhQ3IY0CRK4CFbWNZ5D8Wsg652HEdbizm4Vj8j53g7Xj7+/4DRxgBRnrGG5odcZJ1AqRlERLDiGRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735917636; c=relaxed/simple;
	bh=el3W4jiKTFvgMk17ql8zwcLjJZEPe9R2tL1/ytsFm0A=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=tsesF1hGpkNMoG9d+caro/bVxRf1xBA2xBBvmgcxCxPOG3zbZlZyK/862Zqb46J9LqywThyEIC676BXhI98rCJk7y0pb0WMUPH6P+kNRhNv4qggN25EVHV+9sVP9zFuPLBjC4uwEEkWvPsot5X8rJJziye+bHtjsNazznPTd2KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW3bTJJX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B95E0C4CEE3;
	Fri,  3 Jan 2025 15:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735917635;
	bh=el3W4jiKTFvgMk17ql8zwcLjJZEPe9R2tL1/ytsFm0A=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=gW3bTJJXXhJqwHA/o8w67zkkWOyYDtJgE3u9AQJb9QcOknB98NQMpjSw0d30yNGgv
	 kHg4Lc+5EJU00jjz81uNQVk9lktSt4QUGbFdAsT5uC4cWzkT9FpjXi8y1D6dWCvrSz
	 xmlthFSQd2Em7MlP84AfRzwsO1xRQtb2Oa8DI3CQ5e1swhp/gHqkuUiSnQCeBSVYYL
	 XNpQd8VdyesfMv60dz3vyAjTkfIHA+JIcNwN65A4bGJpl7N80mEt+1VPQwu/0Jpp/J
	 o6f78GWUx6+dN8akEnPZcIAFwBthcV0uckH/Jb5uaapIO7p8hqHAmaVgWjw+DBuLlA
	 kd26iR8YDPLrw==
Date: Fri, 03 Jan 2025 09:20:34 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Ondrej Jirman <megi@xff.cz>, linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org
To: Jimmy Hon <honyuenkwun@gmail.com>
In-Reply-To: <20250103004114.1902-1-honyuenkwun@gmail.com>
References: <20250103004114.1902-1-honyuenkwun@gmail.com>
Message-Id: <173591746023.2305391.8447160640005890243.robh@kernel.org>
Subject: Re: [PATCH v5 0/4] Orange Pi 5 Max


On Thu, 02 Jan 2025 18:41:09 -0600, Jimmy Hon wrote:
> Changes in v5:
> - Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
> - Defer Orange Pi 5 Ultra to a later series
> - Defer Orange Pi 5 Plus HDMI1 to a later series
> Link to v4: https://lore.kernel.org/linux-rockchip/20241229184256.1870-2-honyuenkwun@gmail.com/
> 
> Changes in v4:
> - Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
> - Move HDMI0 from common to the board level
> - Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
> - Updates for the newly submitted HDMI1 support
> - Add Ack for dt-binding
> 
> Changes in v3:
> - Refactor to share common include with Orange Pi 5 Plus
> 
> Changes in v2:
> - squashed commits together for initial board file
> 
> Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/
> 
> Jimmy Hon (4):
>   arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
>   dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
>   arm64: dts: rockchip: Add Orange Pi 5 Max board
>   arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++
>  .../dts/rockchip/rk3588-orangepi-5-max.dts    | 101 +++
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
>  .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 806 +++++++++++++++++
>  6 files changed, 1128 insertions(+), 792 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
> 
> 
> base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
> prerequisite-patch-id: 6346d482f91509dec24bfe5d4f0ca0d345b90deb
> prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
> prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
> --
> 2.47.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-orangepi-5-max.dtb rockchip/rk3588-orangepi-5-plus.dtb' for 20250103004114.1902-1-honyuenkwun@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#






