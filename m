Return-Path: <devicetree+bounces-1736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C7A7A7D0D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C872A281B9F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A9D2E659;
	Wed, 20 Sep 2023 12:05:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C991023752
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E570C433C9;
	Wed, 20 Sep 2023 12:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695211541;
	bh=SVjZrp8GMvacQryLgLqV5iIILxg3tgUYy/85oR1BDMA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Hj8bQdfcJPwjPJKUHJIrD/0xAHWpeD1vUEyyc+KnEGasnQ9sUDJqCcuu9RJj3/waY
	 YWhyHtwVOHUGUn400nP0EqUnR4b3ZVaQw+9ZT/d2JASvfCAxhX2rH1N6s207EQ94wz
	 5vRTv+vBPDvUgldLTwUDAnAuZi4XWtuPiFyrtHt0UNKEeI35imSf7TTa8AeShUNxgb
	 0nccPDlvet3Js6EkSESLkJtPOpC59hz11WiTe8IAE8U9sA9v4jZkpdtcxAQObRdtvM
	 GQ697eQYDXrlorGoIFhjuQP8DjcPK5AkafFDqoHEVBgREKoEKlRRzJE4fSzQIAKLKx
	 iinBGcuhHvi1w==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20230911120135.37528-1-krzysztof.kozlowski@linaro.org>
References: <20230911120135.37528-1-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH RESEND] dt-bindings: mfd: maxim,max8998:
 Convert to DT schema
Message-Id: <169521153989.3405714.14729013886378279472.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 13:05:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 11 Sep 2023 14:01:35 +0200, Krzysztof Kozlowski wrote:
> Convert the bindings for Maxim MAX8998, National/TI LP3974 Power
> Management IC to DT schema.  Adjust example to real DTS and make second
> interrupt optional (like on s5pv210-aries.dtsi).
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: maxim,max8998: Convert to DT schema
      commit: f62fbc01e78ff3f055092b22dc62dcedff90879e

--
Lee Jones [李琼斯]


