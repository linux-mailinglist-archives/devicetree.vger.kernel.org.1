Return-Path: <devicetree+bounces-1955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4347A939D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 12:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E828028185A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 10:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FD28F56;
	Thu, 21 Sep 2023 10:41:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A8B3D87
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879F7C32799;
	Thu, 21 Sep 2023 10:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695292873;
	bh=l9YKq4Mo9HZomeyWWq8kJ2jlUSxpMR2JEf+l+sajQFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p1Bkwrc82xTjn6S9fkfu1yiZ4LfO5ofNvcMcNA8MIGtqd7F7tDfjdpUr1AOtmtnqi
	 sFM5ci71SLHRYEDyPlMNnzy5g7ru0idAFa10yaEAHNKLaefUUbzbVuN++DOZQ2RDJm
	 ZjSGkQcYMdLfnS/yo/WxfN0TbHiL6s7paewBypixzYOq6u2/tVx/LFQcwQgtjXDrhd
	 yGt0IzyAEl93pdCUN9tY+qenaQWhYeIUkeNWjc9iBGrkghsLeTXRqBmmhHLyt+adjG
	 cqXsqXx7dDdOhfJ12uftnOzE24YlAVl279KkYhuMIDU5d8w61ySkebprKCKjePIBvY
	 lbZX56e425AvQ==
Date: Thu, 21 Sep 2023 11:41:07 +0100
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
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 02/11] mfd: mt6358: Add registers for MT6366 specific
 regulators
Message-ID: <20230921104107.GE3449785@google.com>
References: <20230822084520.564937-1-wenst@chromium.org>
 <20230822084520.564937-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230822084520.564937-3-wenst@chromium.org>

On Tue, 22 Aug 2023, Chen-Yu Tsai wrote:

> The MT6366 PMIC, compared to the MT6358, does away with the VCAM*
> regulators. Two regulators VM18 and VMDDR reuse their register space.
> There's also a VSRAM type regulator VSRAM_CORE thats' split between
> the VCAM* register space and other parts.
> 
> Add register address macros for these MT6366 specific regulators.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  include/linux/mfd/mt6358/registers.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Acked-by: Lee Jones <lee@kernel.org>

> diff --git a/include/linux/mfd/mt6358/registers.h b/include/linux/mfd/mt6358/registers.h
> index 5ea2590be710..d83e87298ac4 100644
> --- a/include/linux/mfd/mt6358/registers.h
> +++ b/include/linux/mfd/mt6358/registers.h
> @@ -294,4 +294,21 @@
>  #define MT6358_AUD_TOP_INT_CON0               0x2228
>  #define MT6358_AUD_TOP_INT_STATUS0            0x2234
>  
> +/*
> + * MT6366 has no VCAM*, but has other regulators in its place. The names
> + * keep the MT6358 prefix for ease of use in the regulator driver.
> + */
> +#define MT6358_LDO_VSRAM_CON5                 0x1bf8
> +#define MT6358_LDO_VM18_CON0                  MT6358_LDO_VCAMA1_CON0
> +#define MT6358_LDO_VM18_CON1                  MT6358_LDO_VCAMA1_CON1
> +#define MT6358_LDO_VM18_CON2                  MT6358_LDO_VCAMA1_CON2
> +#define MT6358_LDO_VMDDR_CON0                 MT6358_LDO_VCAMA2_CON0
> +#define MT6358_LDO_VMDDR_CON1                 MT6358_LDO_VCAMA2_CON1
> +#define MT6358_LDO_VMDDR_CON2                 MT6358_LDO_VCAMA2_CON2
> +#define MT6358_LDO_VSRAM_CORE_CON0            MT6358_LDO_VCAMD_CON0
> +#define MT6358_LDO_VSRAM_CORE_DBG0            0x1cb6
> +#define MT6358_LDO_VSRAM_CORE_DBG1            0x1cb8
> +#define MT6358_VM18_ANA_CON0                  MT6358_VCAMA1_ANA_CON0
> +#define MT6358_VMDDR_ANA_CON0                 MT6358_VCAMD_ANA_CON0
> +
>  #endif /* __MFD_MT6358_REGISTERS_H__ */
> -- 
> 2.42.0.rc1.204.g551eb34607-goog
> 

-- 
Lee Jones [李琼斯]

