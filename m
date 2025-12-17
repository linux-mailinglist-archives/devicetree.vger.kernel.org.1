Return-Path: <devicetree+bounces-247310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 562D3CC6C42
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1965B3026AA9
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B893339847;
	Wed, 17 Dec 2025 09:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry+QAcQD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FDF338587;
	Wed, 17 Dec 2025 09:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962861; cv=none; b=skAK+y+U1wFpxAep6AVKQSTa1pGxZiXzaCy1caJPAc6LUMQ/JauUSqj7plYy483vzpQexKSz5/0jZkvME3jTVftd46U4JSG99tp79UIncxUeqim1GF7HWEvi5aKKn8So6RiDuYo0KKOn6w6xJnIlparb1ssjFvvw9FYmoXn4Kt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962861; c=relaxed/simple;
	bh=/7SLiaIZZd96i9+L5hF9k2Q8Gkh3M6Xu20IXncyQWyE=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZHy22Z4UpHVUex6Odf/0XM29QOMPUTu5edkqMEwj9m03iQTede5htOiSh4hLfSyvpq50vTOKeJKQjT/1mkMagxMV7bHNS4EqGUXZ6FyXL/zHlGufrzCFHp5dlc4WKv9aWHrvu7jMb13RjqjTTdQlYdVhYI5x1Df148TLQTF0FFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry+QAcQD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00D3EC4CEF5;
	Wed, 17 Dec 2025 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765962860;
	bh=/7SLiaIZZd96i9+L5hF9k2Q8Gkh3M6Xu20IXncyQWyE=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Ry+QAcQDzdbTO9ui1IjzczaxqrMNQYAB7HadZFm+kO65EgEFytBDUkZ8m/12VCflS
	 3XAJz8Oa3PcXrC5gSxK4nIIu0vuyTcjEhIxLLDsBw6NSD6GTV7MKUHKgD1oQacsN4o
	 3Ky2wPQZtkz00+8Y1Ym4i3WjcIXskkQWl9pCxrXMdAeOJHmnL2QZTj88TvsQSniPRm
	 0RNJuuScL4RgQZQWKrSL//ctvXKZrS+67/sFsvKbZ3aTcUiL7Q87eHt+Rbc7BlVQan
	 0dWTzgq4TJOGPrKsklyL5+R+RuAHIkfy+YBQInMs1KWo5nfdfz8ody5BL8qjiVXzEy
	 GMEHR2IrkvftA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Avi Fishman <avifishman70@gmail.com>, 
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, 
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, 
 Benjamin Fair <benjaminfair@google.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
References: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/2] ARM: dts: nuvoton: Minor whitespace
 cleanup
Message-Id: <176596285769.23017.10677165882858222439.b4-ty@kernel.org>
Date: Wed, 17 Dec 2025 10:14:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Tue, 19 Aug 2025 15:17:26 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> 

Applied, thanks!

[1/2] ARM: dts: nuvoton: Minor whitespace cleanup
      https://git.kernel.org/krzk/linux-dt/c/0fa50c575c1f33be0ab353d0d3820e20357e83fe

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


