Return-Path: <devicetree+bounces-219326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44323B8A0CD
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F27333B1C33
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC9924DCEB;
	Fri, 19 Sep 2025 14:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAE8oEAX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABFE227EA8
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293021; cv=none; b=bgR7xzfBoYDYtzVYRNyMIcqcIFN818j8ckAoO/ruEh6khTItH5tNag9gEta+tYfTQwcmQwfYE6voOjwxu/E9xaNU8fC7M7NIQ0G1YGzHQr6LSFIVt+62NxQPOu1gMs/yRonRCLA+jb3wJl/6B3ydCu/9PcU0fwNoIWrjl9BfLo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293021; c=relaxed/simple;
	bh=GRWvbLVJoCRvQy1pyW+E11G+20xo+6FXxHxhCH7vm2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WD+Vhr/dhDihAdctz3LKQ/wQLZ+0CcFLvcYE8xHiNkDxVgDAW6l68gXrg/DibdNHX6724QyjoKR9ogIHBRkztImb3cP+TN6XP74vKt2yz6TAuPmHFkZMRrQXJXgCUsg0s190Ar+Jzjhr9x7vTjiceZIoZDPYiY0+y5OBzS4bO/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAE8oEAX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6EA2C4CEF0;
	Fri, 19 Sep 2025 14:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758293021;
	bh=GRWvbLVJoCRvQy1pyW+E11G+20xo+6FXxHxhCH7vm2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cAE8oEAXO2SokxMv8QENAiFM9e6YXxmWGbKCjAX65ddnuDthoABkFaYR3kInIQty/
	 yvj3PV+3Vo+RD10ffFn7qSpXXAB9XZonxTqWIVlfpDuzExU1A/6xN5TEgCorYma4qp
	 qSirgsPtyjQL7/2rV0sgYqirruH9uTABkJ+qqGBeipdCwmT4nTDSZJZqN+XxvjUCdy
	 tMBNoWxjbuawQ1jr/po83GsRI4hUB/bF3hRWDFsKziCjMFuOB2zO8f+7XDSrsIRWY8
	 RHAfz81zk1ZkMSyh4Yq1KeHzrDMjCL9hLL9te6WNzXiX+vo87aElDWSAhiMGoW7/58
	 6Zn5ifF3wz4xg==
Date: Fri, 19 Sep 2025 09:43:39 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: conor+dt@kernel.org, linux-mtd@lists.infradead.org, richard@nod.at,
	krzk+dt@kernel.org, vigneshr@ti.com, miquel.raynal@bootlin.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
Message-ID: <175829301902.882885.6356641284141772860.robh@kernel.org>
References: <20250919075201.4177901-1-markus.stockhausen@gmx.de>
 <20250919075201.4177901-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919075201.4177901-2-markus.stockhausen@gmx.de>


On Fri, 19 Sep 2025 03:52:00 -0400, Markus Stockhausen wrote:
> Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
> The engine supports BCH6 and BCH12 parity for 512 byte blocks.
> 
> The hardware can make use of interrupts but this is not yet
> supported by the driver. From the known datasheets it is
> connected to the LXB (lexra bus) and propably depends on its
> clock. Provide an optional clock property that can describe
> the relation.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
> Changes in v3:
> - add optional properties clocks and interrupts.
> 
> Changes in v2:
> - change cells from 2 to 1 (only 32 bit hardware)
> ---
>  .../bindings/mtd/realtek,rtl9301-ecc.yaml     | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


