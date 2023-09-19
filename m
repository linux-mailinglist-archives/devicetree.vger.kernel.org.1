Return-Path: <devicetree+bounces-1457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8167A65EC
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:57:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 442B8282377
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 13:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C06374F8;
	Tue, 19 Sep 2023 13:55:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B457374F2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 13:55:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C8C1C433C7;
	Tue, 19 Sep 2023 13:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695131745;
	bh=QF/AP/89bBr/qqXTaeqtJsd27sAduRxWczz+mUKffoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJZABjBznpJIT24jQjbTR065N12T0J2HyVmb0heC6Uj1lZeJ9FaVkJoATs8bUdw1u
	 LckZmrx8rZySHcEmxBcpHYag4XPGvNOMgF1NN/Wz3J4DgU1j8yZoz8aRlanscMS2Kv
	 uwgW1DBwTLV9nWYMvUltOkNDMGOyuhWrW29k+TXXMtQSUM1G1+KHNMnhYCfYDJAEUk
	 9fT6FalKxg5jwUl7NdOFMnwhlfRWIBGBeLBpCl7wOwVVuXPlLTT5CcNv7ULcsgkUg7
	 N+Ggc+e8BSiAGzTOiwLTT7SxnGW0NmI1VMSjRskWs7Ndo5Pf2svAUBdt9XTGOTYLwt
	 FlQCcSf3EesjQ==
Date: Tue, 19 Sep 2023 14:55:39 +0100
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
Subject: Re: [PATCH v3 10/12] regulator: mt6358: Add missing regulators for
 MT6366
Message-ID: <20230919135539.GR13143@google.com>
References: <20230919104357.3971512-1-wenst@chromium.org>
 <20230919104357.3971512-11-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230919104357.3971512-11-wenst@chromium.org>

On Tue, 19 Sep 2023, Chen-Yu Tsai wrote:

> When support for the MT6366 PMIC regulators was added, it was assumed
> that it had the same functionality as MT6358. In reality there are
> differences. A few regulators have different ranges, or were renamed
> and repurposed, or removed altogether.
> 
> Add the 3 regulators that were missing from the original submission.
> These are added for completeness. VSRAM_CORE is not used in existing
> projects. VM18 and VMDDR feed DRAM related consumers, and are not used
> in-kernel.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v2:
> - Linear range selector values fixed
> 
> Angelo's reviewed-by was dropped.
> 
>  drivers/regulator/mt6358-regulator.c       | 20 ++++++++++++++++++++

>  include/linux/mfd/mt6358/registers.h       | 17 +++++++++++++++++

Acked-by: Lee Jones <lee@kernel.org>

>  include/linux/regulator/mt6358-regulator.h |  3 +++
>  3 files changed, 40 insertions(+)

[...]

-- 
Lee Jones [李琼斯]

