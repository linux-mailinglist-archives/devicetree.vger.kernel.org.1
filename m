Return-Path: <devicetree+bounces-36822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D74F3842CA1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:26:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15C2F1C21F96
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 19:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B393838C;
	Tue, 30 Jan 2024 19:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzHHxxda"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C11560BA8;
	Tue, 30 Jan 2024 19:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706642628; cv=none; b=VcuZRjipvzL6mQ/D/gv7pFJrNJEvMlJnZzW3NA+fZnj0iBkaVhECCXNjzw0m9ndV68y4OblIt+TQCci4kQWOZjeEohk5OXYh1wSsSGIqmWS3INyK7sIsLrnl9IDsn3td7GSqJMW885LkexWU9oVVfIIiPgwi68za0fwRf1ebPKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706642628; c=relaxed/simple;
	bh=8VflfkXLHZ292qH8KopeytZ7etQ8Y0XHoeku0xktQDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h/gs+/GyNLaEgp7SlrvRt8WS58avWMdF8ghTRdI6ZxRNgqAHZ7tK7IVImC/EtxkEIzyKLiQWDH3qkBCRkegXqo+rZQQFd3PYkMrpgr21x5vkZYrkDE+wUC7a2ad1OOBpmjPgxMrYICtbJ3AhL5D3lAu1HMOZtDJXyO/J4fSKWM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzHHxxda; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8568C433F1;
	Tue, 30 Jan 2024 19:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706642627;
	bh=8VflfkXLHZ292qH8KopeytZ7etQ8Y0XHoeku0xktQDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LzHHxxdaWyxqTms0YeaXMPXZf8yGIJFJG+qFcw4t8Rd3oaR1/O7Rh7TemzD/SQOtU
	 lGKGu5amiPquoxJb5y3FHpFMPDqPIZkitkXTzDmUElViVTOyC9i7X7so28nCtPNEkX
	 eTgn6V0z7nVPSbwlrBRWYoKt3CXcDZ3Rka85RTtupqR+2xIsZ6NQwU0Wq4vth26VZq
	 lzp6ReKdWgtsWi9e2N4bdmsPlO/4zxA1rN1MrLHAbMZKxZOJIH6zxi3PWfOBLm73yH
	 FdqTTUe78BqKRky75Bq8xhBJ/FAZHbt3A5jdf/178stDptU9u5x1Uiwe9k4vNlqEy/
	 WZxuVZnCBYXaQ==
Date: Tue, 30 Jan 2024 13:23:45 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
	Ran Bi <ran.bi@mediatek.com>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-mediatek@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] dt-bindings: rtc: convert MT2717 RTC to the json-schema
Message-ID: <170664262503.2186910.3437321072867058001.robh@kernel.org>
References: <20240122124949.29577-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240122124949.29577-1-zajec5@gmail.com>


On Mon, 22 Jan 2024 13:49:49 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files. Introduced changes:
> 1. Reworded title
> 2. Dropper redundant properties descriptions
> 3. Added required #include and adjusted "reg" in example
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/rtc/mediatek,mt2712-rtc.yaml     | 39 +++++++++++++++++++
>  .../devicetree/bindings/rtc/rtc-mt2712.txt    | 14 -------
>  2 files changed, 39 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/rtc/mediatek,mt2712-rtc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


