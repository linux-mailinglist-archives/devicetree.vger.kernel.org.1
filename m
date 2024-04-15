Return-Path: <devicetree+bounces-59511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7498A5B4D
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 21:48:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1500D287F33
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 19:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E119157468;
	Mon, 15 Apr 2024 19:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a86OOB73"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D3F15686C
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 19:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713209738; cv=none; b=mSAWFgY22hHWcDDcEBChfkauNB9vK3VDTWMsbgBUk7yVuX+YdSsjEWVwW+kQVprQjD/nlM7fVRLBdZJuoWEGIiP5rQF4/i8GzTTgHjgFMzqUllx+4MXqG5oc/4UeKDt6Qhz3bowaP/IySqaw8+DZfQ+sQY1Vebfk/7L6uqwT/qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713209738; c=relaxed/simple;
	bh=Xj531FzHUfUqRC9AazdNJgWk2yRipg1rIef5kN9/pkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKv3tPI/ecf+wAfaivJKZs5D01V8rmGu5FHRVV0LMKFrJ3/KxKhsOBPOwDHPzg7KskvNu/n2BeEkkW9UOJJLnwGLIeHDmyGDsXWc2hOn4Vnr4p8qHQP1eDfJ6nz2BdV/pI1j13a4n1Vm0vRDWI8XxF6wh2qEhSM668VTdbSH2mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a86OOB73; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DDFBC113CC;
	Mon, 15 Apr 2024 19:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713209737;
	bh=Xj531FzHUfUqRC9AazdNJgWk2yRipg1rIef5kN9/pkg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a86OOB73ErT50r9uF7BkKw0BLjo6R1Ed7dthMIJtdP7BEk8/07ETICWI3EB/fPdb/
	 EqOFphWNvGlKWVCifMzxDSkRItE7YSfs80cvp94wa3deQJvUM3qxCGH4a68Sc1AzcF
	 Z4bcn9L9s6qsjLnAZTHeNeh1MYjwAPRsl70V+4K1PhnIQsSg2BmHFTteLrHjtay2Ro
	 SBVbe3WQ8bSX4CtAfKODH6Ufkx/x7JwuLN+pt/I91Ov60wxDHsWe0L6f1nFaWzzCBS
	 Uf7XdvTEAzR7Znvwdy7WSbO3Upb9I+DAVvFlh2ZXHRUvdvoIif+0IdUXAMOpgvwlT6
	 AVj3GlQpTUjIg==
Date: Mon, 15 Apr 2024 14:35:34 -0500
From: Rob Herring <robh@kernel.org>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
	Alexey Khoroshilov <khoroshilov@ispras.ru>
Subject: Re: [PATCH RESEND] of: module: add buffer overflow check in
 of_modalias()
Message-ID: <20240415193534.GA81190-robh@kernel.org>
References: <bbfc6be0-c687-62b6-d015-5141b93f313e@omp.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bbfc6be0-c687-62b6-d015-5141b93f313e@omp.ru>

On Sun, Apr 14, 2024 at 11:51:39AM +0300, Sergey Shtylyov wrote:
> In of_modalias(), if the buffer happens to be too small even for the 1st
> snprintf() call, the len parameter will become negative and str parameter
> (if not NULL initially) will point beyond the buffer's end. Add the buffer
> overflow check after the 1st snprintf() call and fix such check after the
> strlen() call (accounting for the terminating NUL char).
> 
> Fixes: bc575064d688 ("of/device: use of_property_for_each_string to parse compatible strings")
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---
> The patch is against the dt/linus branch of Rob Herring's linux.git repo...
> 
>  drivers/of/module.c |    7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks.

