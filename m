Return-Path: <devicetree+bounces-251707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B34CF5C80
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90964302E078
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5ECC2EC08C;
	Mon,  5 Jan 2026 22:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsSR97ij"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D52E2D7D42;
	Mon,  5 Jan 2026 22:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651114; cv=none; b=hoyVDyXkhtcqx5FoFLxfchGvcCvEYFD8JNrNtgcKBWtuL6aq368jt/Jc+9T5/o1apJLvslDLs3TZINxqQRf7qtUfFCPiBQYNiYM74O/8SDE+rzQwV44QgtYPf6U2x/rCNRKwi7Gdae16krxyewaKz6NHQVsd1+YZtKRG+pJBrco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651114; c=relaxed/simple;
	bh=/gm8GYXC5F+E0Jz5sOUrCqGj8a5tx5Ck30tP9U1BjXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rj3YKYkDZBNRS/VUY4Q/8a4NRZOVW0KShfTBFId4uNZK7lx3PtbxRvLkUhPTFr9aSMqK+tE0njzDn5G2W7f84TQDJXD2lYRGD/2zz8bqIjaeHbA0lE8N7LNv3R71W+E3wVHRTz2eRieb/v0DxYENayPA0z+8GwrvFWct/T6u7CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsSR97ij; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEF1FC116D0;
	Mon,  5 Jan 2026 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767651114;
	bh=/gm8GYXC5F+E0Jz5sOUrCqGj8a5tx5Ck30tP9U1BjXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IsSR97ijB9RvOuFvf2VP39vceku8wBuCaRpDQ879/1rWQ+OG0wZJY27KsBgK2wwz5
	 Y/3Yzz9BXSR6QOXlfsjmQsQhoQ0MlgCfbRyK+KYmaXF6B4Axvv5q6nnRrwNa4oxUhx
	 lGn072TlXmiIRvu+sfW63YFRXu1wz5KAVqBqDijcdBmWZr4eomzS07p0+Kr2aJntws
	 8/RBHFOgSlHkk+NnHfSvgMgT8taMZNTsF5pWdjpdRRG5mgh8jkorIHPr6n7uOtRKtm
	 oQ7J8u6kNf/A2X5YJT5lF2yWdySd/NX8KbdPNElfKEnVYV1mI++U4CCAOIBamj0QMJ
	 7E09M05bUwaMA==
Date: Mon, 5 Jan 2026 16:11:53 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tuo Li <islituo@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	saravanak@google.com
Subject: Re: [PATCH] of: unittest: fix possible null-pointer dereferences in
 of_unittest_property_copy()
Message-ID: <176765111114.3559000.3639451594836452599.robh@kernel.org>
References: <20260105071438.156186-1-islituo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105071438.156186-1-islituo@gmail.com>


On Mon, 05 Jan 2026 15:14:38 +0800, Tuo Li wrote:
> This function first duplicates p1 and p2 into new, and then checks whether
> the duplication succeeds. However, if the duplication fails (e.g.,
> kzalloc() returns NULL in __of_prop_dup()), new will be NULL but is still
> dereferenced in __of_prop_free(). To ensure that the unit test continues to
> run even when duplication fails, add a NULL check before calling
> __of_prop_free().
> 
> Fixes: 1c5e3d9bf33b ("of: Add a helper to free property struct")
> Signed-off-by: Tuo Li <islituo@gmail.com>
> ---
>  drivers/of/unittest.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Applied, thanks!


