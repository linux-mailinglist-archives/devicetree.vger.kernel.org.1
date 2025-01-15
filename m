Return-Path: <devicetree+bounces-138819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DACBDA126B8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 140153A2C9A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EAD13C81B;
	Wed, 15 Jan 2025 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZggsKDe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D21078F51;
	Wed, 15 Jan 2025 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736953237; cv=none; b=nmomnIzCt7OaWDQF1ibtJV96taeg3Y3RCz856wAum+OQeaFCAUjlU8N3x2ze4Gstq4ibYrX9Xqb0APGFtiihX4wxLdbJ2phNNDhHyDZoCm4srA1LWItxKPp7hmNN0doOAcu35znRzXh2SOB3HKHM1jPd8nt9hwbw/a0Pz7yMtiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736953237; c=relaxed/simple;
	bh=FxbiB88YKQzganFvRxFjhc+yuegeLmf0K5eDZgXZFM8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YSzy4dllaJ7KE2GFKOSdMbn2woSVqXewvCshGDj9gUja8AJRCPovOg++QnhWBzVG4PvEuzkszys20po4m7R0aIRV3CLQ0mlke4bsNTqLQvv85/5PPQPzX4jkeYIWokr4KA2lDgk7ZvjQxYZUOVjQwdGWUIn7zWkYJkV+02xWKqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZggsKDe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 114F5C4CED1;
	Wed, 15 Jan 2025 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736953237;
	bh=FxbiB88YKQzganFvRxFjhc+yuegeLmf0K5eDZgXZFM8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AZggsKDeJR8JDzSsc6Z96Fc3WiXG5A7Ru0B6JKpWFIeNwIpaWXjzaKcgMJXVyUvOY
	 vAqpQ4wd33MMeqnkx02/GvhbfnC84MLaR+q6TUcXdxnV+iJ0uHKMIsU8qitUKc1Pv2
	 LSMEDsJpKhivb9Jcr1ypBEga1owd7GEz+vk1DqzkChC6mjvWRVOm0pW6DdV/nlIWTl
	 6iwm6J+t5l7M45lEpLs57DpCpfhlX5T02PSWhqMt7YDbkioPFzSoySVtjv3oZdyd96
	 umgcqquwZKzRkJdLG/8viLQ0r9ygxmaHw5kUTYcSf/pWqMPjYzmVgDN48i+7j5EhQk
	 bhVq5dGi8j+2Q==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Romain Naour <romain.naour@skf.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Andrew Davis <afd@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250103174524.28768-2-afd@ti.com>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-2-afd@ti.com>
Subject: Re: (subset) [PATCH 1/3] dt-bindings: mfd: syscon: Fix
 ti,j784s4-acspcie-proxy-ctrl compatible
Message-Id: <173695323478.4114925.14891333273883216160.b4-ty@kernel.org>
Date: Wed, 15 Jan 2025 15:00:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Fri, 03 Jan 2025 11:45:22 -0600, Andrew Davis wrote:
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> 

Applied, thanks!

[1/3] dt-bindings: mfd: syscon: Fix ti,j784s4-acspcie-proxy-ctrl compatible
      commit: 756d4b7a873c1170b65ea1e4cf0312f0a3f9976f

--
Lee Jones [李琼斯]


