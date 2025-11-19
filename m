Return-Path: <devicetree+bounces-240453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E86D6C7146B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 23:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D68114E2836
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA7731159C;
	Wed, 19 Nov 2025 22:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imgY6TDy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F7430F92E;
	Wed, 19 Nov 2025 22:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763591264; cv=none; b=Dm//Hs4vbvU8CA38diQdpyo6CptxyPb8+hq60R6cGNnGhHFIgfHW71TTu7k0OyM05BwsKz0JmtmrPILcYBQbpkymv1a9867YAA4IvBQdE6F+3CoCX+ZWBpD2jy8C4BQasKLY9Fx8NG+CSp/FLoYYYjjYEYD7XnbTl1drbmDV1YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763591264; c=relaxed/simple;
	bh=/8R3jAWH+04a5Vi5dU1uhypE32MurQD61AqM5GlfyvE=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=LyxtsioFGyK9wktMd3liY1peU/hy9QUM1mO9QuMpWMuYy/SI4UzZuBxOVcMHNmaY9XcWslWjSzFXd1RBKfS3tQrTYOlijtSU+3t11bMK1K839gxEEBc84xVxj/HCuitCqx1m7WOofv+2eb3aLHFGo1vASD8NnqluGREVp61xXcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imgY6TDy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F339C116B1;
	Wed, 19 Nov 2025 22:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763591264;
	bh=/8R3jAWH+04a5Vi5dU1uhypE32MurQD61AqM5GlfyvE=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=imgY6TDyVrEfccxsqc/JbFsbLsaXzoHtyOOV8BlZzxLiO+SL76sJwg9Zh+ELx2/J5
	 OgiA92KZgdudADz9TaTi1aTtC7vtO6iteU49A97EOyJaxPB25BjGev/FWSmPEPKzVV
	 pykdbZKYcDMu6XBqFPl68iypkMuz7ufGCe91P+hSSVsjPh98sQHRwEC1MEUb1jQnJq
	 uB8qS+0igzH1+kRpLKnpX7s9+1LG8+M6+lHnA2WM3D+l2+e8jTMtmZZDhAzlhreHyY
	 l++gSrpKYrb06UMcMGC6iJzzLZ1FgZfHrk8QR9Pbkq+AOLQyaQ8WCHS7VxhqnjFG07
	 cH6by7OtQwJKA==
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Nov 2025 16:27:42 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frank Wunderlich <frank-w@public-files.de>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 linux-mediatek@lists.infradead.org
To: Frank Wunderlich <linux@fw-web.de>
In-Reply-To: <20251119175124.48947-1-linux@fw-web.de>
References: <20251119175124.48947-1-linux@fw-web.de>
Message-Id: <176359122549.3467832.13147318038488444877.robh@kernel.org>
Subject: Re: [PATCH v1 0/2] build full dtbs for BananaPi R3/R4(Pro)


On Wed, 19 Nov 2025 18:51:21 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Build devicetree binaries for testing overlays and providing users
> full dtb without using overlays for Bananapi R4 (pro) variants.
> 
> It is not required to build all possible combinations, only for
> common usecases and to test if all overlays can be applied.
> 
> This series is based on
> https://git.kernel.org/pub/scm/linux/kernel/git/mediatek/linux.git/log/?h=v6.18-next/dts64
> 
> Frank Wunderlich (2):
>   arm64: dts: mediatek: mt7986: add dtbs with applied overlays for
>     bpi-r3
>   arm64: dts: mediatek: mt7988: add dtbs with applied overlays for
>     bpi-r4 (pro)
> 
>  arch/arm64/boot/dts/mediatek/Makefile | 53 +++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> --
> 2.43.0
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
 Base: attempting to guess base-commit...
 Base: tags/next-20251119 (exact match)
 Base: tags/next-20251119 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/mediatek/' for 20251119175124.48947-1-linux@fw-web.de:

scripts/Makefile.dtbs:20: .dtbo is not applied to any base: mt8395-radxa-nio-12l-8-hd-panel.dtbo






