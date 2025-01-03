Return-Path: <devicetree+bounces-135468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC02CA00FD6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 22:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03D2A160FEF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FE7C1BEF9E;
	Fri,  3 Jan 2025 21:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ5quWD5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCCD1B6D0F
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 21:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735939591; cv=none; b=m6oXclEtBTkb/3Q6u9HxtOws4VNkfxkTDRUsNztmUce/3wT+XVQvBEjFxkF7fAr64Pts8vzdt0ecqwm6PJywLKYouipBdNsBe6rb8WE3e/2mdt6P59oTf+QqSmJxNQXZ+K6284p61l2PRuBE9+cK/oZOLbCz39fjDhUy0+ssC48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735939591; c=relaxed/simple;
	bh=uXuy4IWRsKXD8rNtSyP1/mc8ptjFuQ7vs1Efa2ZVw1c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qqvEu1comv7BrxNrSK/msP0QwE2caMLLed7lhddJegOCnLPfNqQZS4YKISGVyAu2Zd/RuDDBbJkEgDI1lu+yU6ghXfhNbqazEnJqGy7IG3uMASejfGJ4zBG1mP1hoonzFwnzOYVyNP73OytW3JxpssbNzLVWwd82CLLyPJYQMPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ5quWD5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B22C4CECE;
	Fri,  3 Jan 2025 21:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735939590;
	bh=uXuy4IWRsKXD8rNtSyP1/mc8ptjFuQ7vs1Efa2ZVw1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rJ5quWD5oEQkZ+VZzz2Kahzwz85zyAOOF6dp6eHYQc5TwQtsdRGD5TPWqL+hIBdHp
	 YeZUMsrRAclZE2ZKzrHp9XT0XG6WWJwmIYaGoQIUUE6gFLKc4hqmixtx5qoBIVOjdU
	 6576gRb90sFBTJvLUwliKEnKVUC1BZIHe93BjveQoATu+iXa6NdxXheIMpqiWYqSQx
	 i+3jhKAIgNDDkWmROSmTHPxXWm0O0icPRCM7T9EdhgqJypu4DYiuq2USTGrGK5Qvr0
	 iASHLLo9AeFJYeCp4glGiI96m0/D3+UwUD+xNcwUV0suKVhxca0DwPcWSgO4i4CIul
	 CJI1fHZyeomJw==
Date: Fri, 3 Jan 2025 15:26:28 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dirk Behme <dirk.behme@de.bosch.com>
Cc: devicetree@vger.kernel.org, Alex Shi <alexs@kernel.org>,
	Gaurav Minocha <gaurav.minocha.os@gmail.com>,
	Yanteng Si <siyanteng@loongson.cn>
Subject: Re: [PATCH] docs: dt: unittest: Correct SELFTEST to UNITTEST
Message-ID: <173593956645.2854564.1729339108860030605.robh@kernel.org>
References: <20241029054042.958775-1-dirk.behme@de.bosch.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029054042.958775-1-dirk.behme@de.bosch.com>


On Tue, 29 Oct 2024 06:40:41 +0100, Dirk Behme wrote:
> The Kconfig switch is CONFIG_OF_UNITTEST. Not OF_SELFTEST.
> Correct this.
> 
> While at it replace the outdated file list with a link to the
> directory as proposed by Rob Herring.
> 
> Cc: Gaurav Minocha <gaurav.minocha.os@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
> ---
> 
> Note: I'm unclear how to handle the translation of the file. I can
>       correct the OF_SELFTEST like done in this patch. But not the
>       description.
> 
>  Documentation/devicetree/of_unittest.rst             | 12 +++++-------
>  .../translations/zh_CN/devicetree/of_unittest.rst    |  2 +-
>  2 files changed, 6 insertions(+), 8 deletions(-)
> 

Applied, thanks!


