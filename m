Return-Path: <devicetree+bounces-140660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AD0A1ACD9
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 23:53:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5BE516C181
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 22:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086DD1CEACB;
	Thu, 23 Jan 2025 22:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI1yQRSK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27DA14A4E1;
	Thu, 23 Jan 2025 22:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737672793; cv=none; b=KH69AOLvEoa/yqHEz4Mp8oCZ+tKpqhNXmbwKHIpF4p8Lj7DJQtjkdb2uahLXON60lvkGLBW658M7FZ1DNn78cBEIvqhzOxKHNcsldGBD3PHw9XLSVRgK6t6dDltksy16Qt3QWvytv0PNstdy0bJajxjCTxkkUdEdqOZ4i6IyOrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737672793; c=relaxed/simple;
	bh=9kDaPBtiy4XqPZaW3KOJzyOgz0w8OU8/JMlV0tr7pPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ulakDYEWZuUVbBCiTv/mZOhaaIaj4kqWYOxx3jRUM1LAnq7jb3ao9sUCyGQVykWelJJ844ujY3RS0TRalbgJgt24l2PfNxpku8yffPnk+OUp0DfZCe9OTC+d04qvnBWum7KXqWyaBlloL25vzNoUZs76NyFU1HcoPvcm8R4/gxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI1yQRSK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 070B3C4CED3;
	Thu, 23 Jan 2025 22:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737672793;
	bh=9kDaPBtiy4XqPZaW3KOJzyOgz0w8OU8/JMlV0tr7pPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PI1yQRSKUKBZHNj3UT4rT8v5wWX/GOUzAT+z8danMHl1D1KVxw1uwKAxwxU34vHFM
	 nThF0MeXWfcBt2mGgMV9KfyVnQXeVhYQgj7QeQRnjO96bTBHdfAMKpXTuAxrWhRg8g
	 QeSWgGc1n2lkxaJ5VDXQbTNqoztxyRkNG6L4xSNhUX5ZHFTJqC00wG0zlWLbVAFwxy
	 a+u7IPDNYqiJL7/NO3U9H1lYtAErU5AljrLMlWHwAQLYrzuFGAy2FCJM8qSz5wDqSj
	 lOUsSodhMOeBgEyPaQBzaLjNREe8zFCi/pAdPcaqJeNljAvYtXNvwA5TQPtU7smygW
	 Crk345F7qwoAA==
Date: Thu, 23 Jan 2025 16:53:12 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] docs: dt-bindings: Document preferred line wrapping
Message-ID: <173767279082.495218.9801817678940262482.robh@kernel.org>
References: <20250118102247.18257-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250118102247.18257-1-krzysztof.kozlowski@linaro.org>


On Sat, 18 Jan 2025 11:22:47 +0100, Krzysztof Kozlowski wrote:
> There are some patches with long lines as a result of checkpatch
> enforcing 100, not 80, but checkpatch is only a tool not a coding style.
> The Linux Kernel Coding Style is still clear here on preferred limit.
> Mentioned preferred style of wrapping long lines in DTS, based on Linux
> Kernel Coding Style.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/dts-coding-style.rst     | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 

Applied, thanks!


