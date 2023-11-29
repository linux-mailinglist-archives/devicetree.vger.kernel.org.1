Return-Path: <devicetree+bounces-20007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DAE7FD819
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 511F6B20F45
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 021C520332;
	Wed, 29 Nov 2023 13:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="C8Yuxjik"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D69C19BB;
	Wed, 29 Nov 2023 05:28:36 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 310176607328;
	Wed, 29 Nov 2023 13:28:34 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701264515;
	bh=391JrrSGeUr9291eqzljQo/DgLrHi642hF1rtV4tUW8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C8YuxjikO+Q2FNYZ3hrnkWv9cv8/7ajn0OcCYlOshuU7VMJKXTtUcAs7LdbmxZPH0
	 1UkLmNtwkLnA3OPK69eDjnNdboS5YCwRsUqOyy/fp47gTfnYl/1CioFRSqWHryvyOt
	 Wm/IjXfD0KQwW7e/KXyDcxV5pf4I4Alj8JIbmVS53e+xZuFFV0ZO6ci1zvB1XqeSGB
	 5La6rvC0HnU+YLA6mfRuQXUQLHR2AP7nrF5PpQ0XvCBImnsh6Ht9cF/Mvip2rIqDIy
	 Ql8qeRpDlkRyGSt9AXNAzLnIJsm6KVWcYax3PX3jsJZesSyfk/16mjKgp0ZA0nCum/
	 Q1Fp1TCH3RJfA==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Frank Wunderlich <linux@fw-web.de>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	matthias.bgg@gmail.com,
	kernel@collabora.com,
	Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Eric Woudstra <ericwouds@gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: mt7986: change cooling trips
Date: Wed, 29 Nov 2023 14:27:40 +0100
Message-ID: <170126437824.153055.7638508509040884567.b4-ty@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025170832.78727-4-linux@fw-web.de>
References: <20231025170832.78727-1-linux@fw-web.de> <20231025170832.78727-4-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 25 Oct 2023 19:08:30 +0200, Frank Wunderlich wrote:
> Add Critical and hot trips for emergency system shutdown and limiting
> system load.
> 
> Change passive trip to active to make sure fan is activated on the
> lowest trip.
> 
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: mt7986: change cooling trips
      (no commit info)

Best regards,
-- 
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

