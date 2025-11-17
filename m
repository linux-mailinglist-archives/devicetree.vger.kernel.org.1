Return-Path: <devicetree+bounces-239547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC1C66588
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D69D734385E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A17313E30;
	Mon, 17 Nov 2025 21:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd8XnHp/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E7C208D0;
	Mon, 17 Nov 2025 21:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416202; cv=none; b=kzjtwE4J0EwwtlF5mX6f1H1Y6GdJ0sG8JP+KeYr4ba2uJVRmXBkwiz7287txBbuOVrTFFg8p2aCeOnedcJVichxxVnZH+Ui3IoeW8kNuDRnOfvq26lU7MkyADzwSgR5bVFdO/2yBhtp6mdw3fJ2Vben9SZoeZkWZF6e66e2iQ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416202; c=relaxed/simple;
	bh=k5gQnXjT4Zu1zVhxsAyW94xCW2aamw7XMtP3OXr2bZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrigrKC3JGaUKhz2rIj9/I2ijxdVYZCBBMD+AEPWY7+lIvYdkVLR/0cfZPnP4o3yj1W7vf6nhb7n+IX6Qb3yHz1YNm/m3zc+riQwSFQEIo6hVBLgHESKr2vlXl838v6Y1qJiSlEoXYghst0S2KVw67HNX5ypHad7df94al1d7K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd8XnHp/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 586D8C2BC86;
	Mon, 17 Nov 2025 21:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416200;
	bh=k5gQnXjT4Zu1zVhxsAyW94xCW2aamw7XMtP3OXr2bZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bd8XnHp/htgHuwpbHhkXKbENEs9mtDc4i03VmxgOTSEE8gv9Ly/ijqwPcVx8JM0/W
	 7NLcMgQKwteAIitbZUdaOLHC4hXQ8hNjIYQzJswWup92AWL03jL4SI3KCrWK2/iVFu
	 VFRuxJ+1CTlruV2UzNhpK2J2VOPUzdLZ5P/9INWA5yo0RT1NVloYZA4nA1gIH8hN4Y
	 Mt8CdLbiwNXrYg2qO8c1SIKGzVWbY6x0qyPL9NKu6VQS1e//7QfRFenLfALLynT/v2
	 iC/C6tiBjNHas2qaZWYe8eVIEgofa5kfm7JnbJbMRhvNrProNbH2GLMWkPdruI2POm
	 n2/Lj7nFpKdrQ==
Date: Mon, 17 Nov 2025 15:49:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] dt-bindings: soc: microchip: mpfs-sys-controller:
 Add pic64gx compatibility
Message-ID: <176341619765.777522.18084516303513018104.robh@kernel.org>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
 <20251117-enrich-tricycle-aad89e430b0c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-enrich-tricycle-aad89e430b0c@spud>


On Mon, 17 Nov 2025 14:21:21 +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> pic64gx is not compatible with mpfs because due to the lack of FPGA
> functionality some features are disabled. Notably, anything to do with
> FPGA fabric contents is not supported.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/soc/microchip/microchip,mpfs-sys-controller.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


