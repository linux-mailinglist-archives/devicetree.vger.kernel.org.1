Return-Path: <devicetree+bounces-71283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B087E8D63E0
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A6821F22EE1
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8FEB176ABA;
	Fri, 31 May 2024 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLLx7F5j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A065515D5A6;
	Fri, 31 May 2024 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163866; cv=none; b=kMbcoGUVL31h9qTZPZv/CzoWlStLosP/YrlThlSCeBy/a8unYSu734TGQSVkA9GrnGGLgoQo65AqqiYsKhIQ0rr5HmeumP36bzJ76rhxF9KAaW4THrWMul2SM/KDXBUp9IwExaRiUFst8qhUfg9BgIKU5jyx6oP3/D9J7T8d0bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163866; c=relaxed/simple;
	bh=C3ouozwm1IiFQ01Aw+++mEdQu3kWfVy8HqAjEf2Golg=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CPk+c0wx87vHVkWWgxPTSYjtZdu7txJC+1gPUZeG10U4Hm3UQ0wYhrAYbYb8oOmgHaYoYt2Yil9C4W4Iq7SdwhfsbLbd448i6/EIVbNXed9JS7LXdpR6bkjOsuzdo4OIHrecxRPtwSZZVxAW2C2HSdZIrrEpChU/mf6mAiUo+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLLx7F5j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8BABC116B1;
	Fri, 31 May 2024 13:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717163866;
	bh=C3ouozwm1IiFQ01Aw+++mEdQu3kWfVy8HqAjEf2Golg=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=dLLx7F5jq68u9NfFbNCrKk80jP07XZd3TTFhQIRksyVDsxu/exJ5iyJiUH3t5AC3w
	 U/JwIHxLHktz6xncM3SGtmA4B/MY2fymJ6bRbc+axK3CBDvTfm9NJ/+CgDKTv1NEOD
	 AN01qr1GmR6qqD8Px1J93Q4nqLVOGWhXj2tH64fkl0F/wwbmjsEBk17GSepKJChJuR
	 xwAqGfoXp+B/QzJbTrDyTj4NRnS28uKuiMn66TRgLPbZTgxSkya+EXES8jjdhsDmc7
	 Y+sqT2seBAWE+GY5unx1bAM4dtS4ZBARWE519vL2jMkIvltARLk285L+G5vCzamqcp
	 YlbLKCjtnwYDw==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 MandyJH Liu <mandyjh.liu@mediatek.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/4] dt-bindings: mfd: mediatek,mt8195-scpsys:
 add mediatek,mt8365-scpsys
Message-Id: <171716386365.1113959.6499832475900299383.b4-ty@kernel.org>
Date: Fri, 31 May 2024 14:57:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4

On Sat, 18 May 2024 23:11:56 +0200, Krzysztof Kozlowski wrote:
> Add a new mediatek,mt8365-scpsys compatible, for the SCPSYS syscon block
> having power controller.  Previously the DTS was re-using SYSCFG
> compatible, but that does not seem right, because SYSCFG does not have
> children.
> 
> 

Applied, thanks!

[1/4] dt-bindings: mfd: mediatek,mt8195-scpsys: add mediatek,mt8365-scpsys
      commit: 50c779be27066b4e25873a15580999008d068ff7

--
Lee Jones [李琼斯]


