Return-Path: <devicetree+bounces-247311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D3DCC6BF6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9378530198EE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB1333B6D2;
	Wed, 17 Dec 2025 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS9e6c+I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FF833ADB8;
	Wed, 17 Dec 2025 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962863; cv=none; b=sT9V4V1x9W7XlK9T+xdMULhyZ1DyxQ6zmO1TzkdJzRX+huVC3AgRZ6HKBMgXb5INDrS6oU7VE50Ir3Y3JXSZ1shJ8bcg9qTsE+HDBvUG99/xOMIY6TzgCqnQG5fP3EueZIvMaVVF911MARBA9GdMUuDK94rEBPw1UpusQL4LcKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962863; c=relaxed/simple;
	bh=hKrdHuycJPbvEsDj2tZgRwVTxKqNY8M69+vbBKagi80=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=COar4yW1TBtjetyh9YkhTd1NxQuLBSE0fI26yg5mxjmz0JHSXOAld/oMA/CInkfHHq8W9Dzd6R5C8s9l5UDpmfcr82Ek/COHd5fRAfWbLG4VJoGFtvYz0sRsQY5CAvGBuDNi1iJaVllzzW1WpUzmndrne05e44UlA6Ul1oL8IzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS9e6c+I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02206C4CEFB;
	Wed, 17 Dec 2025 09:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765962863;
	bh=hKrdHuycJPbvEsDj2tZgRwVTxKqNY8M69+vbBKagi80=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=FS9e6c+IrZAbun6vDm661URbXTtIgG+IGNakhx2vqs5o7zLiAN09LokHkY+ggbp8G
	 Pp/zPUj4I97R+E9BGgpuQpONRnoEPYPs9WOAFUTAjMGFI/0nDFEcKcTpZ3rQviFRkv
	 /gQaXwOU+pRY32ThXaWPpOwrZNGjqRBhR81f4JdSoHKw6Yuviog5Q15lx8/KRHqS0e
	 6fEtGbJ3bwxrK5tRn4FniK0qhSzQ2G3PR7k4AAH9ao+Cx6OBywPqc48WgkcvOGiZ/S
	 73jRhMx0wqlbyAg0NzZBLy3n66SlKE8dgt/AP/j7IcQ0wlFvNGoYvjR5avHYsqYm19
	 c/wb/4D78Jg6Q==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Avi Fishman <avifishman70@gmail.com>, 
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, 
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, 
 Benjamin Fair <benjaminfair@google.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20250819131725.86770-4-krzysztof.kozlowski@linaro.org>
References: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
 <20250819131725.86770-4-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/2] arm64: dts: nuvoton: npcm845: Minor
 whitespace cleanup
Message-Id: <176596286072.23017.6853937326050297009.b4-ty@kernel.org>
Date: Wed, 17 Dec 2025 10:14:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Tue, 19 Aug 2025 15:17:27 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> 

Applied, thanks!

[2/2] arm64: dts: nuvoton: npcm845: Minor whitespace cleanup
      https://git.kernel.org/krzk/linux-dt/c/1b06942cda6e83c055e4530fec8227f6e2aba13e

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


