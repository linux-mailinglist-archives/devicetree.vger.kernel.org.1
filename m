Return-Path: <devicetree+bounces-2932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F897ACEC9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 9B9511F2418B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D65569C;
	Mon, 25 Sep 2023 03:52:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4587F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:52:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69CDC433C8;
	Mon, 25 Sep 2023 03:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695613951;
	bh=iMhuI+K7irijA4GtinLI4ZJTkWq6Q/oCEucRRY4fIzo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dNgsRMjJhGhFHd8mT9vaR3MDB7HdVwHi5DbgJNzp8UlwFsn/I9YMKIZGzeJxEJLab
	 WrBSr3StiVA/60Ahttu+mK+AofbCYdXBrkTwgSxPxf2I+VxCU9kUFo/0n07frJgzWA
	 jaxLYr3/y2jJmZA11TYV4gnyPk/ZZAD319pfAzVkGd2+e4MwLLKWRRqIRMyqlwYZUW
	 1uXb8R/w1ERlyjZGvKl0/qizd7GLurTL8NBUhXGCTnqa43BXXPYhrCuYugjS8m29Jn
	 U6rQPuO6PdNgkLr6oQUYTI6+5cwB+BkF2zpeLpwqWlPOD6OOecOmoGr52/TebgDHRX
	 y9qk/nwvhqxUA==
Date: Mon, 25 Sep 2023 11:52:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: mxs: Switch to #pwm-cells = <3>
Message-ID: <20230925035221.GM7231@dragon>
References: <20230922124229.359543-1-festevam@gmail.com>
 <20230922124229.359543-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922124229.359543-3-festevam@gmail.com>

On Fri, Sep 22, 2023 at 09:42:29AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> mxs-pwm.yaml documents that #pwm-cells should be 3.
> 
> This is correct as the last cell may indicate the PWM polarity.
> 
> Convert all mxs devicetree files to using #pwm-cells = <3> for
> consistency.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

