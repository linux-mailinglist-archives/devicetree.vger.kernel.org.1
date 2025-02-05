Return-Path: <devicetree+bounces-143179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20DA285C9
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB174167B20
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC6022A4C6;
	Wed,  5 Feb 2025 08:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgeAwMJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC19F22A1C5;
	Wed,  5 Feb 2025 08:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738744924; cv=none; b=jbO5dvlyVI0MYOeHim1DNeYrXuiU6n7GDfIA+z+ymTQuba0zvv9jcxt7XZt7GKMUWmOrXot52sRFYyH/yrhE05O0fOhRPfbo3QzA9Pa1oy433UVSTY1Gz5jRQHsQSxA6X8gysSL5RtfrzK6suPkP9Sc/ReTInqINBdq8ssIc8N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738744924; c=relaxed/simple;
	bh=mRrKZ9WljrGXj6hWTjkApoQBg8woTOiVTba7VjhmxUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fXu3XJpyysr3MEu8NHJl4NLdqFroe0RiRp5h1EQenQySotaB24q+83Q3qmPqa7xGkxh+RBJyd9he1scud4AzQ05/MhpjN3qBkAMHmkw2TrxT3BqxsiURG8Uj6Yld77cEzn1w7BD6wHRXmLmPfQdNRskdCW4ANDC7Ly220tR3ckk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgeAwMJJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A52C4CEE6;
	Wed,  5 Feb 2025 08:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738744924;
	bh=mRrKZ9WljrGXj6hWTjkApoQBg8woTOiVTba7VjhmxUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XgeAwMJJYJbhgvPUx405gRQ2X+5yHHilHjRrkkqGrqHUTFakI6/0V+O8f21HdqWnu
	 PPCMy+0U4+fFH+IAo/cneZ1fr0iQQFCKXw2TLr8Q4Mb7CbLg1iyd/BnjDZ0d5TYcTd
	 sq3SSIll35rK2C3JUUFudCmc5HFoMyR7DcBx8/LNyUglDF4Opsmp3Yg5gn5igGWRI/
	 ytYbtVBtU3zRNt4JGBH+wQqoZshsG1bjPWrPZVf4LYHdmJTlUL+0R1oYqsy/5ryRuw
	 ahzpSmaznrPG0wlq7dGDfDOgtib+TlRdmh/wM2JxzAbzazjBsTkwsygdqQlED9n9KI
	 RzvYmymp47y3w==
Date: Wed, 5 Feb 2025 09:42:01 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sergey Lisov <sleirsgoevy@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: serial: samsung: add exynos7870-uart
 compatible
Message-ID: <20250205-strong-alpaca-of-success-60934c@krzk-bin>
References: <20250204-exynos7870-uart-v1-0-06be6aa96284@disroot.org>
 <20250204-exynos7870-uart-v1-1-06be6aa96284@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250204-exynos7870-uart-v1-1-06be6aa96284@disroot.org>

On Tue, Feb 04, 2025 at 02:08:45AM +0530, Kaustabh Chakraborty wrote:
> Document the compatible string for Exynos7870's UART driver. The devicetree
> property samsung,uart-fifosize must be mandatory, as the driver enquires about
> the FIFO sizes.
> 
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


