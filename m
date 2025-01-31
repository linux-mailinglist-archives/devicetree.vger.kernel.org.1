Return-Path: <devicetree+bounces-141992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCD4A23A43
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 08:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6C73A662F
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 07:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07481494D9;
	Fri, 31 Jan 2025 07:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nka2Bv5t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB614C9F
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 07:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738309375; cv=none; b=jROyx/HzBD5JRdY2GwXvD5O90JXp7pX496+RJvf7aVhCYOISY2/ck5ZAZCDwkQDb6gk3ADpCiI1+z3cFJOhgr69EmjuIRZQUhFspY5g5Zcw6t3zTbIE7whCB08d6PfYeNsyHmsNWQv1prJE3cRg0m58/k+hbJpKOPbPZv8gWP44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738309375; c=relaxed/simple;
	bh=SPBFBpCWkKZSpzr2brYa2XUK8RQPaG01XP0MShmREv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XbzZnZpgtvqHNj0r53v33W2YFKBz8kwDlqeMo+QyDo16MnFksbqTQsLO+5kwdmtuYctuAO6WVb4+O4eua+HDE6YGwkI02wrS9Zi9xKXX+CDyo/V8rbaoMP3eIQycLkTfuSI8wxweeogHgI8QcuMp9qs1OklQVBws3+u38yh4pGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nka2Bv5t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41B99C4CED1;
	Fri, 31 Jan 2025 07:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738309375;
	bh=SPBFBpCWkKZSpzr2brYa2XUK8RQPaG01XP0MShmREv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nka2Bv5tv1Zjlaxcfu+o/Zy0onHMpD+nc2OsUwyFP6KGvOGeqpxRVy9nLweUoQ1Ia
	 Y5ZUXq9hgEBzUPwD6E22OiweV+BQEkEL7RRmec8SSoPlYUIDG7jC3lMdjJnGcxTGnW
	 26SWC7Jrk0hGPI4LCNSQ3R2lIfWS9EbuwnMZmWtklQM0Z0bdYbKdxMWe8AXZX5FiWp
	 QL6kVlUCvFsyslI1lsfqvmX9aIt9GnKrpH8N8fQo3JojgRrFuuCZIKlJ714TCxCCqG
	 Vbfa2tep9VJn2cWZTuMGkj7W3l1EXMOwDxTkbzVObDi6SjNyTL10GeXoZCAuIP0WRl
	 H/rt1vGeStoDw==
Date: Fri, 31 Jan 2025 08:42:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Patrick Wildt <patrick@blueri.se>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <20250131-purring-rousing-aardwark-4f1bf0@krzk-bin>
References: <Z5toOecuMiBXM6aF@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Z5toOecuMiBXM6aF@windev.fritz.box>

On Thu, Jan 30, 2025 at 12:53:29PM +0100, Patrick Wildt wrote:
> Document board compatible bindings.
> 
> Signed-off-by: Patrick Wildt <patrick@blueri.se>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


