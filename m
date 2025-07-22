Return-Path: <devicetree+bounces-198495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC6B0D304
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FC9518853BB
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50292D3A88;
	Tue, 22 Jul 2025 07:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRfa5n5T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62D62D3742;
	Tue, 22 Jul 2025 07:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169340; cv=none; b=SCjzlnwLlpVCZ6DXkJLiB1PU2wcJinCETJLsn5smWMkA4vkO0VhHkI0+Ttzhpq/tjIUVxe/txIM6lb40xyMR0o3fJF3T1KpfG4TVvpdILtCoHxnazVwfB4S6S+qt6d2IVWAwRGIIcG4VlosPHUpkuohcEmp3ehlCQBAlSph4gUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169340; c=relaxed/simple;
	bh=DuHZ7czdryVEz7C9CcRR7EyNqzZMMuJFxmfzQEZzp7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILU/i4g/Up0ARYE91nn8QFm5WMEqyjfYSMf9rkWdB0EqXzTXYprSFWJ5P7Lu2uhnFSSkfDor3tsKLGT9WWT+fYFLC+h9iJxZ+NXNTwETrLscsCGNQZagdOgZhGYgVouZeH0QD2l6fM7Ra7LN5EwYlQN0iXssI9eDoKWOdGeGFPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRfa5n5T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80FBBC4CEF4;
	Tue, 22 Jul 2025 07:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753169340;
	bh=DuHZ7czdryVEz7C9CcRR7EyNqzZMMuJFxmfzQEZzp7Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IRfa5n5TNwEg+TnfggjHWux6R/kw/kHjtCirmgr/apR87i24zYilcVME9gQ7t9KJu
	 ef64v385Z4Yv3Wbzpu2TjYoXvPvk2ZlAu5xveBbAkplyAnbN0fs0MfLzZ6mr/vI83c
	 eWad2kBy5zfz5VKym+OEom09eKkeFB7EIWxf3wcyHIqOISY1OvoXUbA7+I2o/ySkJy
	 XFdGHaTQULboEiB7Hk+6f0+k4EwHMfZ9pTnSZ5dMeVD0Hw5f+sTacehfFgX/s4tBwE
	 R84oZG49U9XVMxCIHje42tGc6BcFph3sOF4BTOeODwkXgYjieUr/SZ+6ITz6IiMYgH
	 m/HiBFbQGxYOg==
Date: Tue, 22 Jul 2025 09:28:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>, 
	Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH RFC 03/10] dt-bindings: riscv: Add Anlogic DR1V90
Message-ID: <20250722-hungry-kind-horse-ead44e@kuoka>
References: <20250721-dr1v90-basic-dt-v1-0-5740c5199c47@pigmoral.tech>
 <20250721-dr1v90-basic-dt-v1-3-5740c5199c47@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250721-dr1v90-basic-dt-v1-3-5740c5199c47@pigmoral.tech>

On Mon, Jul 21, 2025 at 11:46:09PM +0800, Junhui Liu wrote:
> Add Anlogic DR1V90 FPSoC, which is used by the Milianke MLKPAI-FS01
> board.

Here you describe the hardware with more details.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


