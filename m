Return-Path: <devicetree+bounces-255502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4DD23AB4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41B06309155A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0684C35B136;
	Thu, 15 Jan 2026 09:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rpq9QmXE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C7E33291B;
	Thu, 15 Jan 2026 09:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469685; cv=none; b=AU8l6rHOqZv4+1Y8My+A+020fPI4q/0itCrD2uoEbt0R4h2O5GunrlSlbCymHCMHStNGlYRjCj8nbmwO6CGFNGfaBkzQ6/+qXE4ihdJGC+GdvIBT6FguDo0rBy8NysaoXm5vXd72ZeRgygrd2fAnxghasX58Rj8hG/XcDirjiqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469685; c=relaxed/simple;
	bh=TJJWJEH9cBep2QCio7p5rRyRMMqXshoNHerQDcCsLEA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NeRmRRV/2L7QFQ/XpnZgvY3ezTXBBolHaVwQt4G7hZKqYswJO+NQr9qEOaoi5U9ZmMnuUPTCwYEcl+xW48+bq11t6v4ngGKqBbcAlxmq9R9rjxPQ86jQs2yY+JXKu5LRHa1AJoP/fkPUXmGQynbmiYL1tYD5pspOpGREoC4Nbqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rpq9QmXE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3D8CC19423;
	Thu, 15 Jan 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469685;
	bh=TJJWJEH9cBep2QCio7p5rRyRMMqXshoNHerQDcCsLEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rpq9QmXEhO1Y/mmywYZKcLHYqrS4Y9udQggyp3JxZuN3eEYpGlx8CO2eKzUt4gf4R
	 5ZUzEhkv8s8+cEMEg/pXboVo55W8N4ZbHQKBrdE/E+Fne8PpAmXjre/B+lelNaiWOY
	 Szsr6VtslznA0YPtjTrkGVj7YqDaI1tp2+tFfRTTtgS0nO8D13V/y04fioC3Ti/8uS
	 xC/HD/0JLc31B6coh22NuUxnPkyWsPpA17P5MgPDrHvCVsviTIYO27+ymW1YDTaJTe
	 yR+ZKwpN71dYJvcTfY6DmDxGsXS2zbi23T+DW0lpRS3y3MnB0RuoOP+OjBtdERuPfl
	 VTjDhmKKVH1oQ==
Date: Thu, 15 Jan 2026 10:34:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: aspeed: Add Asus Kommando IPMI
 card
Message-ID: <20260115-illegal-sweet-skylark-bc2a92@quoll>
References: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
 <20260114-asus-ipmi-expansion-card-v2-1-12b72d20a9b9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260114-asus-ipmi-expansion-card-v2-1-12b72d20a9b9@gmail.com>

On Wed, Jan 14, 2026 at 11:31:07PM -0600, Anirudh Srinivasan wrote:
> Document the new comptaibles for AST2600 based Asus Kommando IPMI card
> 
> Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


