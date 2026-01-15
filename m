Return-Path: <devicetree+bounces-255737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDD4D27C00
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ABD74304DBAC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB1B3A4F22;
	Thu, 15 Jan 2026 18:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEl2a6yq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F2039E6EB;
	Thu, 15 Jan 2026 18:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502563; cv=none; b=ZQHMTG+Vy6OPX+IP6g7HaHDvFwHHYIcaxfJt16P6xcRzYUZtZjs8GlgZ1H3ogx+EwyfGbkGD2mMYgGyiLqju0cE4UUSPszQKF1/x4TKpPqBx/ULWQeTIEzBbhtNt3pjdTVRU8RDBC4sR3FFzvzACL7PF+hPaSKALLp6Dwkrcb1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502563; c=relaxed/simple;
	bh=k0lbEC8vrTHNjsPX5hPqfBo8B6pyhjIjvsVG82jVXzA=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ku700Ra4AiOhTAu8i8pEOl9RYegrfxF5KTgw4FNssqwv0/4BSxgy9O4tT0K+qiYkPvTMUdE92sshLHpHUiApaWg8kC0cGlngb2pdGbOe00qZJLjBrQQAKzn3YOC3AbN7n8Sbs4QPWHu5x7NEjNg1WDK72E64fL/SmYyZ+TEPhDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEl2a6yq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0808C116D0;
	Thu, 15 Jan 2026 18:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768502562;
	bh=k0lbEC8vrTHNjsPX5hPqfBo8B6pyhjIjvsVG82jVXzA=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=UEl2a6yqC6q7lsev4vTKZHuWH0Q3y5VlF18wJIHDOct4OyGNfEBaWrDGJ8tDGND9l
	 M3WKYLlidKM0c6vX4kdPDDyk1Mgzjh20l9EwqEt4o5Ok0iNs0vRayo2i8jdrEkuddv
	 /CmZhzqPVmGThrnLoMdZ+hOApL0Sx3M2PVdiBKKc1rObtP46BhO7rV9s/60KuhyTN+
	 bGpUemP5VOS6PM0X1bvlFzqrxChr9ba10ZIwl3ZaiWTimiqTOC0v3VD10iJeUkiLmd
	 6BcCZ+viIsiZQMXSN1Or6iEESf902tcvO6b3Xr0N0t7R6qXd4gccVJPGee8KxBDPc1
	 EmGF3lIpdcXQg==
From: Rob Herring <robh@kernel.org>
Date: Thu, 15 Jan 2026 12:42:40 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
Message-Id: <176849861782.929997.11384143044965902956.robh@kernel.org>
Subject: Re: [PATCH 0/2] NPU and i2c3 + FUSB302 addition for Radxa Zero 2


On Wed, 14 Jan 2026 23:48:35 +0100, Ricardo Pardini wrote:
> This series adds a few things missing from the Radxa Zero 2:
> 
> 1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
> 2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22
> 
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
> Ricardo Pardini (2):
>       arm64: dts: amlogic: Enable the npu node on Radxa Zero 2
>       arm64: dts: amlogic: add the type-c controller on Radxa Zero 2
> 
>  .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 36 ++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> ---
> base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
> change-id: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e
> 
> Best regards,
> --
> Ricardo Pardini <ricardo@pardini.net>
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


This patch series was applied (using b4) to base:
 Base: 0f61b1860cc3f52aef9036d7235ed1f017632193 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/amlogic/' for 20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net:

arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb: fusb302@22 (fcs,fusb302): 'connector' is a required property
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml






