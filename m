Return-Path: <devicetree+bounces-151637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E796A46670
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F7684269A7
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A70B21D3D4;
	Wed, 26 Feb 2025 15:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn1w8luB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DD62904
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 15:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740585448; cv=none; b=qXUM0ojuUEKUnnidqSHeMXq7BlSDa9cshvEh4f7NfVQe9DgiLG5Bq1nYtM8OqVpLz9o43yALj9E2vdohG66Cz5kosnWXt9fI2nE+aefa4LS9pcJxr9Q2C4kHpYEK5IDIfRt+M9oAE6XTbPQqqT5AsQUMBWFLJgQyb52HjsDa2Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740585448; c=relaxed/simple;
	bh=y8jsCkKdNJVLcptk+VOu8TS+CbG14vqEdbXaDiqHOoI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V8Ha/qavTv7aqut7B8uWKL0isYys2juhy2PODEjt0vV9ZvTeCD+l/utWZhHLqgWoWdDy8tyi/9TjRyR+QSVfHuAKlvvbiIctY83Pop3NIJpx6cv2aj3a59KoPzkkhJ9nYZY0ApNvl2HWeOryqi+qlQlienjbLPAuzvpzf5LiRzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn1w8luB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02C1C4CED6;
	Wed, 26 Feb 2025 15:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740585447;
	bh=y8jsCkKdNJVLcptk+VOu8TS+CbG14vqEdbXaDiqHOoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fn1w8luBkQwQT5Gf6PbdYbzEcJY5EWhNV4NzILJGStXAiaxMu/LvEjhpUFYE3I6sa
	 8p1YI3R5JehQrAq5WSFr0SY5meqRyh0637IbtXcyOwNcLxhTAmMXaBAb1xGE+cueNC
	 K+MAM+zU1K11J6ejoak9JegH11AZ/kvf+OgQSiQJMohFF1/tJE84weUncIm7M7KxYc
	 AXLyho3vACvIQ3B+Rpe3rhPI9whdWrtGPX8YksOcGZPC5j2A1eSR/RBvE468JSOVZs
	 MBpRXm0jdanQvvLK1hEl/oRO4/xTj75MlLQx7elMSkSclWOo4PuJgfAuJZRQlRZyIg
	 PbFeIDnTOHcGw==
Date: Wed, 26 Feb 2025 09:57:25 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/4] dt-bindings: ARM: at91: add Calao USB boards
Message-ID: <174058544546.2504002.1070415645254851999.robh@kernel.org>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
 <20250226084938.3436-8-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226084938.3436-8-wsa+renesas@sang-engineering.com>


On Wed, 26 Feb 2025 09:49:37 +0100, Wolfram Sang wrote:
> They have not been added so far. dtbs_check complains loudly.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  .../devicetree/bindings/arm/atmel-at91.yaml   | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


