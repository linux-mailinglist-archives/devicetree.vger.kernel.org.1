Return-Path: <devicetree+bounces-138818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BA4A126B0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4DA23A13DD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A3B78F57;
	Wed, 15 Jan 2025 14:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lccjyHV3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22D824A7C3;
	Wed, 15 Jan 2025 14:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736953188; cv=none; b=S6s3P3DTjla/9d+x9jzmBhVeeuElP3NztTqkcLToLosdOweT4DQDWKSGM4oz3yaemAjHTyvwXKQDmrnqF7PeeQD5EPRmY1aq15QsHrfNzoAdJM5b1P/9jHJRHKeC0oN23XTmQDJ1Q0bvZPjqm5g4xllt/4hUUZzyQ2gq61ERooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736953188; c=relaxed/simple;
	bh=BubgrMonH6F1F/dC7AtJUvkg82vXKXCk/M2xUjB2Bi4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YJ4qir7r5/ZPZv7Ddjh52cg8wnmy9YNas+oFp1+QRfY1H+A+kSJiMNIc1v/G4HnBkMKKYbBWxd3iN66KN00Dse7aNmkhbLc+fzO7+SBZtA+5CwN7ZdXi/UIIIZ6YrkJWB3qd5dL4H9xF+hKbCK+lE8DdXKJqMzQ3rnJFfLmcRD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lccjyHV3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C4AFC4CED1;
	Wed, 15 Jan 2025 14:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736953187;
	bh=BubgrMonH6F1F/dC7AtJUvkg82vXKXCk/M2xUjB2Bi4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lccjyHV3QV+pyA9mAqvEaqqs3t7IucrJCMFh3y0mSx+fPtOtUZsaPfPM97+GSbkqQ
	 pgB07zd0XhbxRNPlSu4d6SgIP+Cn8nbGnVOKW5YGo0BoNfm6qScMHq3YJkPik/WPDa
	 0DXAfTu9cgoTMkMOgva3Bc+sgOvGhVCJRnITH3tmDVsICQd3A9wUMdmcRz/3DWUjui
	 zh69m+bB6LEFAYI0vbPG0fMjwdbhR422P9j1Tdv4JNZbKak2XElhN7uzEB7/41VvQD
	 CwmG/PnVQk4ExQ7V7MnPN7OELczyOD5sIQI2Hp+KYp7bWm1cKc8DvJelgYMKfjKsJL
	 fGf77al/zheUg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Romain Naour <romain.naour@skf.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Andrew Davis <afd@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250103174524.28768-4-afd@ti.com>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-4-afd@ti.com>
Subject: Re: (subset) [PATCH 3/3] dt-bindings: mfd: syscon: Fix
 al,alpine-sysfabric-service compatible
Message-Id: <173695318512.4114171.17469792622037044289.b4-ty@kernel.org>
Date: Wed, 15 Jan 2025 14:59:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Fri, 03 Jan 2025 11:45:24 -0600, Andrew Davis wrote:
> This compatible seems to be missing the last 'e', looks to be a typo
> when creating this file. Noticed this when diff'ing the two compatible
> lists (which should stay in sync).
> 
> 

Applied, thanks!

[3/3] dt-bindings: mfd: syscon: Fix al,alpine-sysfabric-service compatible
      commit: 476f519d1ba1671f97f657027b33d5833b9e691d

--
Lee Jones [李琼斯]


