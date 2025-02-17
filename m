Return-Path: <devicetree+bounces-147105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2838A3746A
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 14:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD4BE7A2E7E
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 13:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CF818F2D8;
	Sun, 16 Feb 2025 13:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPJmzPJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3906A1624E7;
	Sun, 16 Feb 2025 13:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739710989; cv=none; b=LDgko5y5582/MAnTr2HLM8o5WDHEkZH0prAZ0hZPdSYuYLJga983NtL8NsNfmxeQTpUjG+JlAwqxBjY7s3krQ4ESnSIhRJ0xLyOQ8aAijbBOKFhMkvLA8a/+hmMa7vs+6BKOgEntW3983UXfaO4lnPHlE5Jv9vXGt7ShLtWqYlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739710989; c=relaxed/simple;
	bh=SY1bppY9XWbNItLiPZtP5Z/ine5onr/3mr/FP+7Wreo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZfBeM1jPdFAaVXTWlHymdBQKIbxedFsrQRTOzJKTIPdZ74jyKVG3RDmFbosuJVfjKC4JTIAF8HZ9JLmI/v4RLxdL6CWu6C2eP3XpDfJvR7N9FpZFqn1jiZA1Ceahqn10LZ4YyFmA6pqL9Oi79QiXFoKps/wl0QlfGVPQ6lJNyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPJmzPJ0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02FCFC4CEDD;
	Sun, 16 Feb 2025 13:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739710988;
	bh=SY1bppY9XWbNItLiPZtP5Z/ine5onr/3mr/FP+7Wreo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iPJmzPJ0urkkWLi/8fuB6IGhKQCgIwemIpEbsnmsPa4GJRJEs9MTKRDC748+b6egY
	 GgMNmk/tkLrcb5bWFkZAbWWbkiUUmDj1RR/+uOCbrg4bklkVAeJiVA4MfhjkHg7gmW
	 PzGbSUcfOm1c4VIzWAMNO9tcWMR1iXniF2R0/PTIrBrpEUcPjiMLXgQEQNSsKl/cGa
	 h2SJUrFiH1BY1HdIoZDKCY6ZETtxeSFw6cbsa6W9NeGWbEt/IbLxz9G4iEfVCdWROX
	 ZXamjuOu02FVxZDOlTwvFm3rjJvvDf9111Pn70kWzWBtYXzVe5gvqwKym091J/afeb
	 wodG2nKCwzJuQ==
Date: Sun, 16 Feb 2025 14:03:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nikola Jelic <nikola.jelic83@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, 
	tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	rwalton@cmlmicro.com
Subject: Re: [PATCH 1/2 V4] ASoC: dt-bindings: Add cmx655 codec
Message-ID: <20250216-fearless-arcane-koel-3c75ad@krzk-bin>
References: <20250214215826.80878-1-nikola.jelic83@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250214215826.80878-1-nikola.jelic83@gmail.com>

On Fri, Feb 14, 2025 at 10:58:01PM +0100, Nikola Jelic wrote:
> Signed-off-by: Nikola Jelic <nikola.jelic83@gmail.com>
> 
> ---
> V3 -> V4: review remarks

You keep sending the same, not responding to comments and not fixing
them. Still nothing improved - same problems as v1.

What above changelog even mean?

Please respond to the feedback, the best to the v1 which you received,
that you acknowledge and implement it. If you have questions, then ask.
Sending something with the same mistakes for 5th or 6th time means we do
not understand each other.

Best regards,
Krzysztof


