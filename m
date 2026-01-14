Return-Path: <devicetree+bounces-255213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8A8D2138C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ABB0302F6B0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 20:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC173557ED;
	Wed, 14 Jan 2026 20:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ+BRXKT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998A632B991
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768423896; cv=none; b=BMBPdaZM2RGu+JuOQyYPRzIWJXqGZec8Dvqpw0rlidznqC5rb3ryqvI3Gs8HqeijDTmceTs8iMJ/WZd691rnhgb21g+9o5SzOYRoeKWswg/j4vCm3g9Ra+4Jz1L0p49hc49nfHOC0bTzsjexmn42yHlG0ofZ2SFnYAkt3w+V/po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768423896; c=relaxed/simple;
	bh=dwL47rYgTdWjH2R9TONSAhn5UmSu6UH5MGZCn6Mj7KM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dWjuE8oYKCyUtr6Fl6nRHS4W2XKe2Dc041vTr/nuPAJuCMq2xtGoEa44Ba48cVzMCZyxDQEPwoOllAa6m3+cVq556W0IjRIQHdn6WhSNWLkfDhmKxBXLH4wSGrtSsX5VbX3IJdbVhkDy5u3p+NEkDY68Id+iHVObupy6Y09H7sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZ+BRXKT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182EAC4CEF7;
	Wed, 14 Jan 2026 20:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768423896;
	bh=dwL47rYgTdWjH2R9TONSAhn5UmSu6UH5MGZCn6Mj7KM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pZ+BRXKTkbWWaLyq4wWKeIIyjyEvlnSYP1AyEi0okhBLvkruc56wx94x5hQ/dL++t
	 J+F3kX2fQdga3hsjc3ddvDYmVgce6C//rbGgAOZt0A5B2cC4cbgdm+vzBuBx9k5qfT
	 xORbUo5FFff8Dh2ZavSCYzkllYCEyj85N/mY3QIF+wZ+scQHH/V/RuBaxkchGTTXz6
	 OlIpeP6UVrLQJ5FCf0gGZe9UXrUYRJSGtksUuzPOSgje0DFx40WD9rjMHZ3g3s/INJ
	 dB0CXdoigNscXM8Fv5DNbhSWsxEoDiKAl/iw7uRM2sPC1THyKQJKIda0ODI6jx+j3m
	 v0oj0sP3vdzkg==
Date: Wed, 14 Jan 2026 14:51:35 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: thierry.reding@gmail.com, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org, sam@ravnborg.org,
	dianders@chromium.org, linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de, jesszhan0024@gmail.com
Subject: Re: [PATCH 1/4] dt-bindings: display: panel: Move FriendlyElec
 HD702E to eDP
Message-ID: <176842389446.3188655.18330903813710913313.robh@kernel.org>
References: <cover.1767111804.git.robin.murphy@arm.com>
 <80a68e706e869aadbdea228b207a5df52bbfd7b2.1767111807.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80a68e706e869aadbdea228b207a5df52bbfd7b2.1767111807.git.robin.murphy@arm.com>


On Tue, 30 Dec 2025 17:20:31 +0000, Robin Murphy wrote:
> The "E" alludes to the fact that FriendlyElec's HD702E is actually an
> eDP panel - move its compatible to the appropriate binding doc.
> 
> Cc: <devicetree@vger.kernel.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../devicetree/bindings/display/panel/panel-edp-legacy.yaml     | 2 ++
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


