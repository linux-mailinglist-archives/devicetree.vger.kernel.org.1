Return-Path: <devicetree+bounces-248531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E9ECD38CC
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 00:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DF83300E025
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 23:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002D626A1CF;
	Sat, 20 Dec 2025 23:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH3ezA7E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C918278F4F;
	Sat, 20 Dec 2025 23:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766273774; cv=none; b=ouqrcJnAF5nsGEO1sPUPlwnRqGTYfzphSHy5B9wbtr+sKu7hYvJhlrjyuUftggonbuFwL1E2Y+7W4PqMvWh5sQiZtwIkSg+4/Ba9RCR/XvvJsrqzsoKc3MEl/kXxDGUgkw6yJ+1FstofiJW00zSxrMJCnFv9ELz1Nut/H1Sq3Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766273774; c=relaxed/simple;
	bh=iiY7uGZhU8PM+EyETBd5Dq0Z6cb10ORJF5o1ZB4aU4w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=O+VVO3fbjbsCu3EIFJCqo/oJwW+YauYIzoxBrMQhnUJzBA1c3ZUwB/r8qyzbkg0U2wXTEnc8CWdlj7JzB94ggcGpcbnz2qX2E2Te1hdys5ydvTV3BKVvli2yyx7Z7fkbuWO6Oa+V6lCpew1CX+6nP2pFe8idy9fH+wZ80RehvrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH3ezA7E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98678C4CEF5;
	Sat, 20 Dec 2025 23:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766273774;
	bh=iiY7uGZhU8PM+EyETBd5Dq0Z6cb10ORJF5o1ZB4aU4w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CH3ezA7Egf3Dpmrdai70Saj1XZ1pDz1nNKHcjnfO1CLWquUleT2Hu4FXebujyMilU
	 1B4Uo+NJnTZlZIwIFb85RRnYI9J6VeXesnVb4HAtH72/ajF17VFquFLswHhA8I3svL
	 yooNZlMNeHwQ6yRJ9DRtG1cufnPkWspTGYFsrHUHGB0niIwSQYsx/iW+TVfyqTv5dq
	 ujtur/TxP6sfsWOgQz9zdg33DZu1ZVSCgH6u9XJUhWWPBRMm3YLYQJ8Grw1HUzcTkx
	 RuIebiCBSpyrckNGnvUiilbamYc0WtSjSjfZ9Xn4fyRiekz5wmGgqgtvNJn8xcVCoY
	 IYelnCICIXCUQ==
From: Conor Dooley <conor@kernel.org>
To: Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	E Shattow <e@freeshell.de>
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] riscv: dts: starfive: Append starfive,jh7110 compatible to VisionFive 2 Lite
Date: Sat, 20 Dec 2025 23:34:41 +0000
Message-ID: <20251220-faceless-sedate-4053b07c5725@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251212211934.135602-1-e@freeshell.de>
References: <20251212211934.135602-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=968; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=xFqiQeRPv1OHoeevUPaQHHXdpxwyUMvRPKwdQRmtyEc=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnuRhPv1sWnMgceNr18KuHq8+shnXJv67y2x0+d4vyja W25nNrfjlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEyEs5SR4eHb1DtvK/xfZspt XPdO2a2Nv+58ZDuTH1fM/cVtTP5Rlgz/Yw5LpPsdOnNh95fbxdEyzZF9lesbeRzNL7ZM/Fr2m3U KMwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 12 Dec 2025 13:19:17 -0800, E Shattow wrote:
> Append "starfive,jh7110" compatible to VisionFive 2 Lite and VisionFive 2
> Lite eMMC in the least-compatible end of the list.
> 
> Appending "starfive,jh7110" reduces the number of compatible strings to
> check in the OpenSBI platform driver. JH-7110S SoC on these boards is the same
> as JH-7110 SoC however rated for thermal, voltage, and frequency
> characteristics for a maximum of 1.25GHz operation.
> 
> [...]

Applied to riscv-dt-for-next, thanks! I dropped the Fixes tags in the end,
I just didn't feel like they were correct. I made the links into Link tags.

[1/3] dt-bindings: riscv: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite board
      https://git.kernel.org/conor/c/d2091990c5c1
[2/3] riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite board
      https://git.kernel.org/conor/c/7c9a5fd6bb19
[3/3] riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite eMMC board
      https://git.kernel.org/conor/c/4297ddbf1d14

Thanks,
Conor.

