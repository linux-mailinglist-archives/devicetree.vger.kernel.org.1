Return-Path: <devicetree+bounces-5162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB707B57CE
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:18:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 718251C204F9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77401DA39;
	Mon,  2 Oct 2023 16:18:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71DF1A711
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E5FDC433C7;
	Mon,  2 Oct 2023 16:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696263486;
	bh=nJBI4YMCnC7wDFeIOxGfChOrML2/pMEaV/ZwChIjZ0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hd6+n9d3cL6sS4epqQxPT3In6FHseHl4Tr/15EvSnkLFzUZeaNDKmpABlDYnhTfoY
	 bSOArQC43S/RpmLBICYs613yn5gEdrMek+nX4s9dryr2UMMBBva9Cy58Zg2qD8aks2
	 yEVoUMy/bsQibanK2WFHJYEo4ut7fGK03EW7PgC9LweLAngCNQrZJ6syu4GQvIsaCX
	 xrw8pQkGbPGK38Td2Yj4i7VgfQWXgnsYZCBFGx+Gy+apMSECwWQCdyJdOzHg/9CaIc
	 PctG23Wy+u2aZL1tFbPlaPFBhI3pKbbWU/kpQj5rnpZrBe7H1zb3CcT3IIzU50xfmi
	 0RhgLeNFGaqBQ==
Received: (nullmailer pid 1886811 invoked by uid 1000);
	Mon, 02 Oct 2023 16:18:03 -0000
Date: Mon, 2 Oct 2023 11:18:03 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Zhiyong Tao <zhiyong.tao@mediatek.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v4 05/12] regulator: dt-bindings: mt6358: Add MT6366 PMIC
Message-ID: <169626348288.1886756.17093504896321888644.robh@kernel.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-6-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928085537.3246669-6-wenst@chromium.org>


On Thu, 28 Sep 2023 16:55:28 +0800, Chen-Yu Tsai wrote:
> From: Zhiyong Tao <zhiyong.tao@mediatek.com>
> 
> The MediaTek MT6366 PMIC is similar to the MT6358 PMIC. It is designed
> to be paired with the MediaTek MT8186 SoC. It has 9 buck regulators and
> 29 LDO regulators, not counting ones that feed internally and basically
> have no controls. The regulators are named after their intended usage
> for the SoC and system design, thus not named generically as ldoX or
> dcdcX, but as vcn33 or vgpu.
> 
> The differences compared to the MT6358 are minimal:
> - Regulators removed: VCAMA1, VCAMA2, VCAMD, VCAMIO, VLDO28
> - Regulators added: VM18, VMDDR, VSRAM_CORE
> 
> Both PMIC models contain a chip ID register at the same address that
> can be used to differentiate the actual model. Thus, even though the
> MT6366 is not fully backward compatible with the MT6358, it still falls
> back on the MT6358 compatible string. It is up to the implementation
> to use the chip ID register as a probing mechanism.
> 
> Update the MT6358 regulator binding and add entries for all the MT6366's
> regulators and their supplies. The regulator node names follow a cleaned
> up style without type prefixes and with underscores replaced with hyphens.
> 
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> [wens@chromium.org: major rework and added commit message]
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v3:
> - Expanded commit message to mention why a fallback compatible is used
> - Adapted to ldo_vxo22 and ldo_vusb movement to properties in previous
>   patch
> - Split example into two, one for each variant
> - Renamed regulator node in examples to just "regulator"
> 
> Changes since v2:
> - Merged all the propertyPatterns together; the if-then sections now
>   only block out invalid properties
> 
> Changes since v1:
> - Replaced underscores in supply names to hyphens
> - Merged with MT6358 regulator binding
> - Added MT6358 fallback compatible to MT6366 regulator
> 
> Changes since Zhiyong's last version (v4) [1]:
> - simplified regulator names
> - added descriptions to regulators
> - removed bogus regulators (*_sshub)
> - merged vcn33-wifi and vcn33-bt as vcn33
> - added missing regulators (vm18, vmddr, vsram-core)
> - cut down examples to a handful of cases and made them complete
> - expanded commit message a lot
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20220823123745.14061-1-zhiyong.tao@mediatek.com/
> 
>  .../regulator/mediatek,mt6358-regulator.yaml  | 149 ++++++++++++++----
>  1 file changed, 120 insertions(+), 29 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


