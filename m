Return-Path: <devicetree+bounces-215639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEE9B52322
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 22:56:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B160A80CD3
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 20:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C452F6196;
	Wed, 10 Sep 2025 20:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouG8SDZh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4995924BBF0;
	Wed, 10 Sep 2025 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757537680; cv=none; b=KIe9nMg86bTRembmfsJVaOaxcsNnSUi5mVPcYTezSyazg+mYqgeZdmWLcNgAEYWBzHzO+2/iJnIEQE6U5ha+TtOwyJtLDEvYKn43rePMJHlbCrEFwHxbcInSXlfAbR+v9IGbpdSRkBCt7QN19ZGlbnNbgM/ESYHI/i6ew4JRG7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757537680; c=relaxed/simple;
	bh=KssoOpfOfigrIlpJQqWpr8ktWR+/dLD6TCQFjHkyp38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bx4L/tor0+8oTH4NC9E4/57xF5BrR0MmexV1UFZxLE99/ZSkHK0FEE7CNYbi1wJHhCW8DLJM/DvvsPkd99CE6ZuUjW4HSolJQSllOu1xzbD5Fe7aYAD4TeJT6xAVpMcXl59VGKHr84LonTncvu3RP4jzsYJJDaG1HrdmFGopTw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouG8SDZh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94C03C4CEEB;
	Wed, 10 Sep 2025 20:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757537679;
	bh=KssoOpfOfigrIlpJQqWpr8ktWR+/dLD6TCQFjHkyp38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ouG8SDZhCiqPOP5knO6OI9kwGIZss90mhwqYwsN83L09qvfznqQpOh6xYMFoT9Bi2
	 Hca3L3RTm3JKuKGy+u/1WqoBDVKfcbA1qeXRLdw4/KpEKGjrEEJP6cEhEpvp36S/ZZ
	 LjCymE6jZLONLFBYPwFh6h/WKt+LxTkACsXu7f5DTd7C/iOT3ytCnYx+HMWqBfvcAR
	 rS9EPpB9z+ZrV6+gUa/sPxd1VoYNpJQMB8uqc5+lHH+aTiSpPjLiOZrPTGnCm9Bnj0
	 mJbevjVGGN9a04+Qt3QmrhO0q7/ThBq8idm7S6QnxUU0ePn3sgrPdAAQ/VFB8eMkug
	 UiFZBH1f6KKoQ==
Date: Wed, 10 Sep 2025 15:54:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mailbox: Convert
 marvell,armada-3700-rwtm-mailbox to DT schema
Message-ID: <175753766829.393033.5874794455011904372.robh@kernel.org>
References: <20250812181357.63395-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812181357.63395-1-robh@kernel.org>


On Tue, 12 Aug 2025 13:13:53 -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada 3700 rWTM mailbox binding to DT schema
> format. It's a straightforward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../marvell,armada-3700-rwtm-mailbox.txt      | 16 -------
>  .../marvell,armada-3700-rwtm-mailbox.yaml     | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mailbox/marvell,armada-3700-rwtm-mailbox.txt
>  create mode 100644 Documentation/devicetree/bindings/mailbox/marvell,armada-3700-rwtm-mailbox.yaml
> 

Applied, thanks!


