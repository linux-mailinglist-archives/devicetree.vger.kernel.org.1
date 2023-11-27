Return-Path: <devicetree+bounces-19221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D04017FA0EB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 735A9B21000
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69662E634;
	Mon, 27 Nov 2023 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="payg5QeV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985431A593;
	Mon, 27 Nov 2023 13:22:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83171C433C9;
	Mon, 27 Nov 2023 13:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091365;
	bh=0BLQG6JYQ067UNDJ5wfmB5ZjUGQKZe55ZiL1VEJSO78=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=payg5QeVmhoFO1Y7oc9QbOZipHt7xsfGm3HNu1qNPFnFITyBT53rddcG487o7CsNd
	 4HXMQEIWY7VFq2UQqGrsotm5PDzVToCJHFZrr6kSlXn4O+oO2uqkh0HOIDopuUJhb8
	 PUrCOf+xWMU8PwNgfO8EKlmtH8AhiqqzzHj4qmGpWuYUNNGHSUUu+bpl8hmA5Wm/4c
	 Bby45Ek3MlYijhJq+WtfQC9UXA8Ctn0z1zEsOiYn1k/CQqw8vFF/Y7ce/8nIw1vSfj
	 bIGRAWOclNGebowmrny7YIPMxVRFON9PfkY7YajyVy1lMPdgeFNa0RsPuFGi2OQ445
	 6O3SL/k9cB9Iw==
From: Vinod Koul <vkoul@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 "Lukas F. Hartmann" <lukas@mntre.com>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
Subject: Re: (subset) [PATCH v9 00/12] drm/meson: add support for MIPI DSI
 Display
Message-Id: <170109135706.42627.15247339910188185100.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 24 Nov 2023 09:41:11 +0100, Neil Armstrong wrote:
> The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
> with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI
> glue on the same Amlogic SoCs.
> 
> This is a follow-up of v5  now the DRM patches are applied, the clk & DT changes
> remains for a full DSI support on G12A & SM1 platforms.
> 
> [...]

Applied, thanks!

[03/12] dt-bindings: phy: amlogic,meson-axg-mipi-pcie-analog: drop text about parent syscon and drop example
        commit: 130601d488fa06447283767e447909ce9e975e43
[04/12] dt-bindings: phy: amlogic,g12a-mipi-dphy-analog: drop unneeded reg property and example
        commit: 5f4a9a66f8a7582e90311fa8251da33a8d2111d7

Best regards,
-- 
~Vinod



