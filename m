Return-Path: <devicetree+bounces-240724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DA2C748D5
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D300E4E83FF
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002CD34886A;
	Thu, 20 Nov 2025 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M41DNbl9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF4E346FA7;
	Thu, 20 Nov 2025 14:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648312; cv=none; b=c5Obcy3SMTuOiho7uozBEAwc9OgaQYvHjlmOc5bv+ImHmxNHJmzWhi9MFzAAwNN0LSmYxx4dSPug6LYtx/y8FILZbz4CFOlY+eGvwyQRMvDS7lbEeB5Zt88USjEdo2dJ7t9VgxI48KFr/KkSiQMs9VVZ7CP/JmF8+Wo+AWMPprc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648312; c=relaxed/simple;
	bh=kF9f4IYE1Y7cHiV7zpiJ1ITnZVqMqwIVtN5rP9NumFo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=S4PncuWyMDjyTuLvj0tKxEvxQKKnQbl5luW2FvI1s0Mp8kongEpLB6JHuPzC2fTOqrfJYuDFAo70s6NqlaptDlYgmp3vOP0EwMES2mb3DQ9ANJGpamS/cqaCnW9TSn3X3pCSntKCv5jCjChwQKbmJxd59nNJB/PnTEt9UQBOly0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M41DNbl9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2A1AC113D0;
	Thu, 20 Nov 2025 14:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763648312;
	bh=kF9f4IYE1Y7cHiV7zpiJ1ITnZVqMqwIVtN5rP9NumFo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M41DNbl9tTc1Nl3bxG+tvWu0Y7C8zaDLP+KAsjb0Ay4+X34Z/q9mBvT1A0ubMuNbl
	 /QB/IZQp941lCD7yPVZNk9fkBfC8GzX30fxLmoe1jGTBMVJN3nhtUZmseVSEqFpc0J
	 udfiVYW1/pd7hZeVUygNR3A/tjFHy6oGuDBhzjH3wQZk+WDYXJXoZ9fsIVAwnxZt2p
	 U+vVnFxScU+Od2j/A0Myb4+vetDfsPmWklx3p8hn/GCSg9+F4BaunY1pShITPuoIUW
	 q3hqtYUSxYrNrsKU3uWy/tdyH6bO68blwsKYu6e9OJqWXjl6DxD3t9iZvbKYwAWkPn
	 y9fQY6NiauyFg==
From: Lee Jones <lee@kernel.org>
To: linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20251117-aeration-smock-5e7ac06e2942@spud>
References: <20251117-aeration-smock-5e7ac06e2942@spud>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: document control-scb and
 sysreg-scb on pic64gx
Message-Id: <176364830946.726067.14196845460912590375.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 14:18:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Mon, 17 Nov 2025 16:29:29 +0000, Conor Dooley wrote:
> On pic64gx these syscons are identical to those on mpfs, and should use
> a fallback. Add support for multiple fallback compatibles to syscon.yaml
> with these as the first two users.
> 
> 

Applied, thanks!

[1/2] dt-bindings: mfd: document control-scb and sysreg-scb on pic64gx
      commit: 1f9793a4d5188cddc0eb69d7840b7c5c57c939a6
[2/2] dt-bindings: mfd: document syscons falling back to atmel,sama5d2-sfrbu
      commit: 9494cb237b490cecc8c5d97824692b82097141c3

--
Lee Jones [李琼斯]


