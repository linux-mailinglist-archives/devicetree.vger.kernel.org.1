Return-Path: <devicetree+bounces-247525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A5DCC8641
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFD343038294
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A8C264A86;
	Wed, 17 Dec 2025 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtmQC5F7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D54623ABB9;
	Wed, 17 Dec 2025 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765984463; cv=none; b=QvE3SskS2Wwg7fD0b10kShc0UMuVDe2l5HoEfSSiBjnZjHJN3JeWQHMjWshe+7+vANUQ/qGXS/yG9Hnn3SoStNLthWGSTw1qYeFOLXC0x7b2+2/D5uKmNmww9UErqIK3xp+YwfG3fDH1Bu5vWkkYDmCD0YsZjRkR7ELEKcwArys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765984463; c=relaxed/simple;
	bh=b1KPF/nRa8j/eY6CoctQMZ2LJpP62fiosxsr24rXBxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PhYHeTs1MYtOeg/CcaUvZEI5wFNzypW6ckJP7rizxgUpjIGRM+xo4s6iFp6Sd6Ddj4CDQrDwXKLHnMXksLVWAed5Z71moJpWfAcHHGCpdxQxZ6ldifrZxr1OPff0Lsz7QTEP0Hp4N+Eu5ast20HFm59lTBOHRKDmR/9ZSHn10uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtmQC5F7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F75EC4CEF5;
	Wed, 17 Dec 2025 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765984462;
	bh=b1KPF/nRa8j/eY6CoctQMZ2LJpP62fiosxsr24rXBxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HtmQC5F7q6VjFtSRIQB76tl94N+llLjE0f5QwtWtOzxa4PKGdFL+emODTcr75G39M
	 P7Ng5NAEsJ29VP2kg7g/7410pRwaBFxihIOTedYKGDAkTo9CoonQA6Kgp2cGuL289j
	 W0kwPQob9qhcwlkFlZ+QZ9SA1ZHVZ8zKVUmTyzxbL2+6pqReGlIKxxzwLhWUfxbFM/
	 9jWIWvNWbjXnjJQx7A8UHXitytZmIqL2crUuNkgs/528pkJZCE8CZpKf/asuG1+2zc
	 sD1j/K2KHi7MrdN/hbMu2XYLCbvpB1RNurUeVUt9tmzTzE/OR/BT84V+HDcMLx1q9M
	 UFwbIdenDSjZQ==
Date: Wed, 17 Dec 2025 09:14:19 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] of: replace strcmp_suffix() with strends()
Message-ID: <176598445824.1179918.8336736114021260076.robh@kernel.org>
References: <20251217134308.33839-1-bartosz.golaszewski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217134308.33839-1-bartosz.golaszewski@oss.qualcomm.com>


On Wed, 17 Dec 2025 14:43:08 +0100, Bartosz Golaszewski wrote:
> string.h now provides strends() which fulfills the same role as the
> locally implemented strcmp_suffix(). Use it in of/property.c.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
> Changes since v1:
> - strends() actually has inverted return value logic from
>   strcmp_suffix()
> 
>  drivers/of/property.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
> 

Applied, thanks!


