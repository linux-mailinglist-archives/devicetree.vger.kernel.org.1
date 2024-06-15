Return-Path: <devicetree+bounces-76057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1399098E4
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 17:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2DD51F2224C
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 15:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6006482EB;
	Sat, 15 Jun 2024 15:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD+ydWGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870A849649;
	Sat, 15 Jun 2024 15:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718465064; cv=none; b=BKpmlo9jWTJORSn1Hl+GBNhdYQkd7CheaRdB6VfTQPH9eK2kEslg7Vo0VZm1BfmaLBGq8vlac829RsO2wklOtjxU4XIvTSK9St1EJ16AuPPm9hzIuo/kh3K0kCWMiL3Q/td8xHMIA+2wmqgkvfTVlQSaxvvGF7yegmjtwJLKbc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718465064; c=relaxed/simple;
	bh=oqcpctG30CJsXBNPoWEwkkyn3w8xU4zoLSjprBusP8Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PjfDQkNxRFRbLHAf45DViUDShQe/ID+tUMkF4XejpADnABa+zieqBY5b8MzQ5UMqr6PKJ795b043Yt3D97PEUZG5uqJSRcGokPyXMfhm5Vc/QXslYvilRV29t2zYxTjJNRPZKkMm2aNAH6jbyQtC7vXvNdym0Ihk3a8lXhzxH+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD+ydWGQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C53B7C116B1;
	Sat, 15 Jun 2024 15:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718465064;
	bh=oqcpctG30CJsXBNPoWEwkkyn3w8xU4zoLSjprBusP8Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dD+ydWGQoAcaGRx91oARHuVGAhXSF3PtrLfxhbrwe1sQcsTdkLXH6GdI+RTwk6u8A
	 I45WGwUxGHBH3xNRkYL8PoSWq6pNjLZSlKduprJ9jZQsBlZBunit1hfVbOMwUc1ZKT
	 8T7/Lzj291Me9NWY6Gdh5gqcnvJiDnxlc4pk76FWhh6/UNUtC3aDwrinbNIowZXyCf
	 qXLZZQJMcceThWTQW2sTrC2z3G7nUNWekPgr1KZDx9tHGWeFYYiHDYK7pQSu0hkazx
	 3wIKHsmeOc26rGgFUMRQvkBO7KQ5amCBPtjRe4IOVpIJAJGoU4HVGJiry6GHX8O5cX
	 V57rJBYk98zIA==
From: Mark Brown <broonie@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 lgirdwood@gmail.com, Abdulrasaq Lawani <abdulrasaqolawani@gmail.com>
Cc: skhan@linuxfoundation.org, javier.carrasco.cruz@gmail.com, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240612163730.515819-1-abdulrasaqolawani@gmail.com>
References: <20240612163730.515819-1-abdulrasaqolawani@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: sound: Convert max98088 to dtschema
Message-Id: <171846506352.317831.381850229372621584.b4-ty@kernel.org>
Date: Sat, 15 Jun 2024 16:24:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14-dev-0bd45

On Wed, 12 Jun 2024 12:36:50 -0400, Abdulrasaq Lawani wrote:
> Convert the max98088 audio codec txt bindings to DT schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: sound: Convert max98088 to dtschema
      commit: 7fbc4f5e633cbc23576c32ff9773faa1788afc2d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


