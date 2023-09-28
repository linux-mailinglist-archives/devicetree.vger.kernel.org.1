Return-Path: <devicetree+bounces-4276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AA67B1C86
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2FBF2B20D95
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA8B347D0;
	Thu, 28 Sep 2023 12:34:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE38D38DE1
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:34:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF1D0C433C7;
	Thu, 28 Sep 2023 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695904465;
	bh=lIDMdnTxQP7t89OuJ29zkIG40XJQFpyQ/rEb/H/3OIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o75VWMvbbbKxQKo1vCy3d5UsaSBKlD+JydA226K3A+uLdwMZ35vrCAVmaXBqm63SI
	 p1hAzFivx7QnKpLR/0/O7t9U4c5y4WyJVY7GYX+ONBez4mPAc0/eBJtPPWyyMeU8iz
	 N1rgu98RN7CALLziTxkjyhzSKokSnTdN4qIEhSHGoRzgzsX0mBvhKu38ltj+qUayrT
	 SiqDRZSO+Y+8PjlzzdmwOeqHpcAXRp7h/ZQGhBCG8ZeMChC00ttBdIMhApSozFZKns
	 5h0bqiF6eJHIJrIqyWb0mAhf3BFgIM+HgGgT+wG2IYa79cfhgxSROZWy6YgvnYPJS6
	 cVjZV+q8ejSFA==
Date: Thu, 28 Sep 2023 13:34:19 +0100
From: Lee Jones <lee@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 01/12] dt-bindings: mfd: mt6397: Split out compatible
 for MediaTek MT6366 PMIC
Message-ID: <20230928123419.GG9999@google.com>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230928085537.3246669-2-wenst@chromium.org>

On Thu, 28 Sep 2023, Chen-Yu Tsai wrote:

> The MT6366 PMIC is mostly, but not fully, compatible with MT6358. It has
> a different set of regulators. Specifically, it lacks the camera related
> VCAM* LDOs and VLDO28, but has additional VM18, VMDDR, and VSRAM_CORE LDOs.
> 
> The PMICs contain a chip ID register that can be used to detect which
> exact model is preset, so it is possible to share a common base
> compatible string.
> 
> Add a separate compatible for the MT6366 PMIC, with a fallback to the
> MT6358 PMIC.
> 
> Fixes: 49be16305587 ("dt-bindings: mfd: Add compatible for the MediaTek MT6366 PMIC")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Let me know when the other patches have been merged and I'll apply this.

-- 
Lee Jones [李琼斯]

