Return-Path: <devicetree+bounces-153802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BF0A4DE37
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 459E71887FB8
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23E426ACD;
	Tue,  4 Mar 2025 12:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfaSJwYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6FA2111
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 12:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741092378; cv=none; b=Jxy5CEeXHTliLNWPWwJ++8etBfIRM1EkRclKTvdSVdMMY8KBjY8hhZS8a9+8yL6YBRfP4dKKHYH409X+IlQUKZZgI253jbMe/j4Np3dZ3jUQgREnRNaVmSPe1YBjNiMvyCMaNb2yuOOdFVUJ4hntNBVOfZy9XRAWuWy/eQr+0SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741092378; c=relaxed/simple;
	bh=hZV0kE8HoZAQPzIo6cy2S7FlcfwAWIMzw3HFqDgdCyc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=plRxpDftlo2NinouIxlDBSe7/DUA3BT7ZvO4sirc/rBQNrna1aaugEDpvB1pVMwERc7ehk871Z5CtvFXNZtFpomNcUKWQTPdHRW9dNYWJeJXUERrW2NJcbSWh71HMyhVD+KOySyitaMj7eux2j9qOKPsD3ZisyYOp7GvQcTeOHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfaSJwYQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C53C4CEE7;
	Tue,  4 Mar 2025 12:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741092377;
	bh=hZV0kE8HoZAQPzIo6cy2S7FlcfwAWIMzw3HFqDgdCyc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZfaSJwYQ8q2OyZKnda1/E9qpJ5XBbeIOvZiXHa1AFQ1wxkEP8lkN9xWDeLgUTzPRL
	 QA1g41frBWJdwPC+s733y8YwcNlXjUxJBLdOSYtVO08EOFfG/v8JrrjW6T4166F9SN
	 6hIdXtWpvN96OiGbyULwFZd8/oqh8XSPUoCXJKQLaYwRxCDw7IV7uaUcB6famTXJwY
	 PjGWmY5nR+NFeAYBSeeqZ0FjAVnLpfR4XnzfDI762rKYNtcgbuhFC6O5Q3w0Vd+Txs
	 dAFGuRek13BM46tJosWAe+gEgD3TLEeUZ3v7UC7sObOQlGYjmMjAfXE61xPZujWfo6
	 pFHwyyukJMk9g==
Message-ID: <6ae42224-74cf-4d2e-88fb-f766279d3525@kernel.org>
Date: Tue, 4 Mar 2025 06:46:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/3/25 10:46, Uwe Kleine-König wrote:
> Hello,
> 
> The only change since v2
> (https://lore.kernel.org/linux-arm-kernel/20250130074553.92023-2-u.kleine-koenig@baylibre.com):
> is that I added patch 1/2 that is supposed to fix the warning that I
> failed to notice with the testing I did. Thanks to Krzysztof and Rob for
> their patience with me. I hope I got it right now.
> 
> Best regards
> Uwe
> 
> Uwe Kleine-König (2):
>    dt-bindings: altera: Add compatible for Terasic's DE10-nano
>    ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
> 
>   .../devicetree/bindings/arm/altera.yaml       |  1 +
>   arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
>   .../socfpga/socfpga_cyclone5_de10nano.dts     | 95 +++++++++++++++++++
>   3 files changed, 97 insertions(+)
>   create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
> 
> base-commit: 00f3246adeeacbda0bd0b303604e46eb59c32e6e

Applied!

Thanks,
Dinh

