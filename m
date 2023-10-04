Return-Path: <devicetree+bounces-5739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE97B7B56
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7A5B01F21FB5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA08310955;
	Wed,  4 Oct 2023 09:11:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A89A10949
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 804A6C433C8;
	Wed,  4 Oct 2023 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696410688;
	bh=3tcd15/ZhZ377CKHNn8APJe8bHeAciTOTOhoUjvaohg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DxSpJYyVREb2yGfKKnw9XSQ1b8/PfzDDLw1n0AfAWJpbDxN5aeF8+GwUULbrMkUgH
	 OTYTGKvD9ba9vCfGfHV/aEOrTNxwhtl/O8OABpQABMAs5FeM3+KQXz5I2RPk9b9flc
	 wkSZcKKx2DnIhFcaKgCjwVwezihs8unE9xmAOWGilJIloCd5P/qWQjHr/TxxfTfQua
	 jWcbgEjvR2M/TCB28g8Z0+FI7lrSHPsiMqsf9jRUghMqKqj5NI6yKqBZODV0D3DHJH
	 gsJLlCAtLQIRIuduqECIQElhZszhdkr0VExwQN2Xz+dEF58YZVBizNAUpZBSI5JGxT
	 q8VeZop7iehGQ==
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Lee Jones <lee@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230928085537.3246669-2-wenst@chromium.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-2-wenst@chromium.org>
Subject: Re: (subset) [PATCH v4 01/12] dt-bindings: mfd: mt6397: Split out
 compatible for MediaTek MT6366 PMIC
Message-Id: <169641068524.66814.2537584517055836452.b4-ty@kernel.org>
Date: Wed, 04 Oct 2023 10:11:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Thu, 28 Sep 2023 16:55:24 +0800, Chen-Yu Tsai wrote:
> The MT6366 PMIC is mostly, but not fully, compatible with MT6358. It has
> a different set of regulators. Specifically, it lacks the camera related
> VCAM* LDOs and VLDO28, but has additional VM18, VMDDR, and VSRAM_CORE LDOs.
> 
> The PMICs contain a chip ID register that can be used to detect which
> exact model is preset, so it is possible to share a common base
> compatible string.
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: mfd: mt6397: Split out compatible for MediaTek MT6366 PMIC
        commit: 9e2a2fd1ca0555bd0c278cd4061cc4bd9c8d0f7f

--
Lee Jones [李琼斯]


