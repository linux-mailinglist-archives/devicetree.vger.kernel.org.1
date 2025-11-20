Return-Path: <devicetree+bounces-240739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF85C74A9B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 7BE8A2AC35
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A566933C519;
	Thu, 20 Nov 2025 14:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdFFiqcI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639C8314B60;
	Thu, 20 Nov 2025 14:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763650366; cv=none; b=OGzyUy1uPA/MYudD4/QMfcg9Z8Wcp5LaxsAPtLPtBKQqIig3rHKOknIRvPZf6Xs38htKjYvjpG3DeTkWvxpyibQeFKyz+UOQBkjdJqh5Qo69wBPAioBhcfzSV6+5DZib/WSL4QY+1wN7ooKdtGj0cwnBx9GOxR+4WN6UKgaKkW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763650366; c=relaxed/simple;
	bh=dd8gXAxBGCSTKR0xqs6Xe9fhkfzo2q5Xg4tiEYganaE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CNd+kgrtrAfNCgRRi5TacQhcHyI1tFexoqnbU5KA4O+D/YbfAAmGp9QxzARsxe5eoFxT/hh7HkILwn+fH5F3vVlikqFe5YoDSOtjkdvwqboU51AT1x11eH1XfNuFBPvNSc0/lDdq17BsMzTJM3Ys+seCkUpoXxvVGQnfuXjeo2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdFFiqcI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8233CC4CEF1;
	Thu, 20 Nov 2025 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763650365;
	bh=dd8gXAxBGCSTKR0xqs6Xe9fhkfzo2q5Xg4tiEYganaE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KdFFiqcI4MKf8fbRTxWZBRU2sLzfrJLngSUi8ly9yon0/9tvUGui/zsF3d49N4D89
	 zYy0HpyHBsLSim1eMttKOCoQV7w1Yp+99g1bRXuzcSrtvr8CKwRvJHdbN0aJ4vxbj/
	 NLs52Tyb6pnTvdNLs0ku3xBC9f4hE9/f5QhSwh4DwhAJb7nTVw6TQm49f7UoCxzwbA
	 3P4THEHG20YFzGbETpCII1SgGGxBITsdSecUZNa1R9S11NoWDyTaDeQTZPUjcskibn
	 ShvE4g9xIvZlLHNGg3O2VH0D1sYbKb88KTD3KdOOiEedisn1H49f6iVHHSoEd+oaNS
	 ST0D7RlKA8tow==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexander Kurz <akurz@blala.de>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251118213541.43812-1-robh@kernel.org>
References: <20251118213541.43812-1-robh@kernel.org>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: fsl,mc13xxx: Fix leds node
 schema
Message-Id: <176365036417.744495.17310062447934282027.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 14:52:44 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Tue, 18 Nov 2025 15:35:40 -0600, Rob Herring (Arm) wrote:
> The 'leds' node is missing constraints on additional properties. It is
> mixing 'leds' node and child node properties as well as missing some
> properties. Add the 'led@' child nodes and the missing properties.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: fsl,mc13xxx: Fix leds node schema
      commit: 1759a0392f345689e155196c42f1db28a222618d

--
Lee Jones [李琼斯]


