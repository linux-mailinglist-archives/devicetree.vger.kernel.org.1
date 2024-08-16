Return-Path: <devicetree+bounces-94300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DEE954E3D
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 17:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2B7E1C24609
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 15:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F9A1BE235;
	Fri, 16 Aug 2024 15:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCpcS0Cq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E108A1BDA95;
	Fri, 16 Aug 2024 15:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723823592; cv=none; b=R4e5iZlfmFoQyUICyO1kgMILWmZMomAvaK14zGNWI8bj92iUZKFS3INqANp6cvt63JbNNwkYrifBYPtth/Xt8wMfQZMo7aTHCnQaPnq76WtZNFVL8zmKjs8M3GDv6ik0FLZmAlnuu0HyGnz9jQP8J04ttsBiFy4pHN47jkJi5pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723823592; c=relaxed/simple;
	bh=KhiPh7ixe4ySw5YP7qoGj3adPjhmwJ8ka7Rcc8x3PzA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Kn/p55t+OGj60OEG83wkrsMbN0CNExuXtL3cedoicNavCv1NT9FafBotnfWNJVkrccU754xZolfQZ5ir50SzN54rgOwJD7oFFktURJjBNCx6MCjKxg6HQVQHCLfkGl/EPEqkSo9jUUQ+dpTfxXqAUWfvz2SvmEiN88iuH2ZWrkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCpcS0Cq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5252BC32782;
	Fri, 16 Aug 2024 15:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723823591;
	bh=KhiPh7ixe4ySw5YP7qoGj3adPjhmwJ8ka7Rcc8x3PzA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UCpcS0Cq86DvJ0GI0Xrr85AAmH8A9SpblNh+ocrtkqR2pXYdQ+X5vPUR70PMjoUtV
	 sFFVQRuKQByfSPeQI8Fyu1oOKmNjhvsJULD5c/dqKjsfzaQlmzET1c1iWBJQGUHm/g
	 z/R4YuVUIHpLm9qlQ0gn1rqvGOcn5KAKkgKd3SqPUBwph7yevFgv7b/HpPwqQ6RCfm
	 uIVRz9Vlm6QFkgx9ewsVaafRLeCNG1mvoB1chzmO9z7o7/gdZxOh+dJY3WaKYiFxgR
	 ysd+MLkHY+oh7imwfdXNR/FgGhBf6OEn9JW5zoHTR26yFaWOMImU9wXmm7lrLQb3rw
	 Masyvsg56RlmA==
From: Lee Jones <lee@kernel.org>
To: devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>, 
 linux-leds@vger.kernel.org
In-Reply-To: <20240708114653.18566-1-marex@denx.de>
References: <20240708114653.18566-1-marex@denx.de>
Subject: Re: (subset) [PATCH v2] dt-bindings: leds: Document "netdev"
 trigger
Message-Id: <172382358900.3362924.11938991911362091302.b4-ty@kernel.org>
Date: Fri, 16 Aug 2024 16:53:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Mon, 08 Jul 2024 13:46:27 +0200, Marek Vasut wrote:
> Document the "netdev" trigger which is used to control LEDs by
> network device activity. This is an existing trigger used in
> existing DTs, document it so validation of those DTs would pass.
> 
> 

Applied, thanks!

[1/1] dt-bindings: leds: Document "netdev" trigger
      commit: 616dbed65485c6e68325d00b6258a05369c14705

--
Lee Jones [李琼斯]


