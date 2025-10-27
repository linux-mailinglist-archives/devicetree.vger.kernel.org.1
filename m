Return-Path: <devicetree+bounces-231712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C88DCC103EA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 19:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 936FC4F6077
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2727F32BF44;
	Mon, 27 Oct 2025 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEdxdewS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029EC322DD6;
	Mon, 27 Oct 2025 18:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761590912; cv=none; b=m0MJt81GZpFgF1aZDIay56yZ+LETLUmIEPHodg7EG3Zcr5qumf6PtpuC9GAptHCNt9RHvt76q56r6gEXxN5R7Oxcl9wnMdo07iTYinmngopBk5wPK4AiXiDMMa+Zvii8mg12f7rKA4MRTn/gz3rGvKlBG1rt30FApXr8HaVFoOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761590912; c=relaxed/simple;
	bh=JyX5IiNpi+mT5A3b1mPJfwg7kWiJXFyu6cjoHIuw+Ns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OFI1qOWDELlpMbRRTOT8B9spo/tKQG41GmrQ1mX653qXcgHc/h4VddKgoqgiDU0oU8ogN0fjkCMfUJuOtLIGUunWFUMspH1PYk1IoJUsza8ZUjhvHq+oxByS/fJKNy3vWJ/zH+j7MiQBQXbtwMWJ3PGYeMWM6/5/BFFAjiqVqJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEdxdewS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75F5CC4CEF1;
	Mon, 27 Oct 2025 18:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761590911;
	bh=JyX5IiNpi+mT5A3b1mPJfwg7kWiJXFyu6cjoHIuw+Ns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EEdxdewSUd4k0K182nSh1VF2uVzRwo6dOycwlY9E34w0rGftGhsJtjg4g2i5kmVck
	 UJLNtvMJU+BxbS9hOZQh151Vud1CGRXvsbX5KrdbPWD4juOjFZGJOLI7ad/b49/9op
	 YAraHXS4pyXK4zLrSE9KaGnV3Um/lGWZFDLLhcZGImfhtobKtSjadbVTBDhgzSah2e
	 4GaLLV0BHpjZWt/TTA4RZg6PGfykteVVa56c53QbtpNLb+k8IqeNBPhUwzw8ExX0qE
	 Q/GWATNQNOm2+mS261PsZxIMgCuS0QC3DbdvL3PcKioRZL7ZGbVK1Y0GYGV2w6xHrM
	 EFThu4CANBp2g==
Date: Mon, 27 Oct 2025 13:48:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
	andrea.porta@suse.com
Subject: Re: [PATCH] of: overlay: Avoid spurious error messages in
 of_overlay_remove()
Message-ID: <176159090855.1395199.16848791379867357248.robh@kernel.org>
References: <f756e04e8bc239b33a0428c2dd055f202e214f0b.1761335298.git.christophe.jaillet@wanadoo.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f756e04e8bc239b33a0428c2dd055f202e214f0b.1761335298.git.christophe.jaillet@wanadoo.fr>


On Fri, 24 Oct 2025 21:50:58 +0200, Christophe JAILLET wrote:
> Make of_overlay_remove() tolerate ovcs_id being 0 without logging an error.
> 
> Suggested-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This is needed for drivers/misc/rp1/rp1_pci.c where things are taken from
> DT or at runtime. In the former case, ovcs_id is unused and left to 0.
> Being able to tolerate such cases simplify error handling.
> 
> This was suggested by Dan as a reply to patch [1].
> 
> [1]: https://lore.kernel.org/lkml/4e92a271fdb98560c4e659556a1f3e99e7d0d38e.1760987458.git.christophe.jaillet@wanadoo.fr/
> 
> ---
>  drivers/of/overlay.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!


