Return-Path: <devicetree+bounces-5160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 678157B57C9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2058B283DB3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9DC1DA37;
	Mon,  2 Oct 2023 16:15:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01A61CF83
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:15:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07FBCC433C8;
	Mon,  2 Oct 2023 16:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696263333;
	bh=AhZPFxKw6JIAmar3BTlp6KAFMwqOxLDxCPhW4rygFww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QrbkQazhVsQR0aAe2Xv3ul3hzgSf1cGt0FJwjroCzNjjAz1l1znBYWl1XOJo96pN0
	 idDJth42GnDGl/dVKBqf+DP0S0Oh3LjO7pTXHivmWOQmWf+ZxuP60GfIBJawDF8AF3
	 K6wxLOnFNcSmnQNwR1seQdWlkDmZXghcgF+PlcU5pxI70NrTTZ4qkbspQXz0Qk1+vy
	 Al07ycPBfUFS6Nkb5Ixzkp2CmhiXWKG1c1XAqzgALMjZKpaPypirr3C00axU1yENrm
	 qmYBDJoUcK6Ab2TARJQt4NfGGHc0dS42ZcI3dnsK8YM6xRayV81iOiCjPzYBBX94QG
	 +AZpN55EcW4ow==
Received: (nullmailer pid 1883864 invoked by uid 1000);
	Mon, 02 Oct 2023 16:15:31 -0000
Date: Mon, 2 Oct 2023 11:15:31 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Zhiyong Tao <zhiyong.tao@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 03/12] regulator: dt-bindings: mt6358: Add
 regulator-allowed-modes property
Message-ID: <169626333046.1883804.1497786674123702405.robh@kernel.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928085537.3246669-4-wenst@chromium.org>


On Thu, 28 Sep 2023 16:55:26 +0800, Chen-Yu Tsai wrote:
> The MT6358 PMIC allows changing operating modes for the buck regulators,
> but not the LDOs. Existing device trees and the Linux implementation
> already utilize this through the standard regulator-allowed-modes
> property.
> 
> The values currently used in existing device trees are simply raw
> numbers. The values in the Linux driver are matching numbers defined
> with macros denoting the two supported modes. Turns out these two
> modes are common across parts of the larger MT63xx PMIC family. The
> MT6397 regulator binding already has macros for the two modes, with
> matching numbers.
> 
> Codify the supported values for regulator-allowed-modes for the MT6358
> in the device tree binding: 0 and 1 are supported for buck regulators,
> and the property should not be present for LDO regulators. Users should
> use the dt-bindings/regulator/mediatek,mt6397-regulator.h header for
> the macros, instead of using raw numbers.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v3:
> - adapt to ldo_vxo22 and ldo_vusb movement to properties
> 
> Changes since v2:
> - new patch
> 
>  .../regulator/mediatek,mt6358-regulator.yaml  | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


