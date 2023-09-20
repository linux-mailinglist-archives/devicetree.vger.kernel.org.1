Return-Path: <devicetree+bounces-1698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC807A77B8
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D53D01C20D20
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3611A154B4;
	Wed, 20 Sep 2023 09:38:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2375DC8E2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F20F4C433C9;
	Wed, 20 Sep 2023 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695202681;
	bh=4uscOVD6TB53mRPO5QLLWGGIeKZl73p+kYRuHBF8CPU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GkC0eMxyy+wyIN9G52c4eO9x4bB/No/0Elz1CcOIoRE3OCf2b/uqWYC+wtTY3ZP0K
	 dvOTTs47x4DTYN6yl1feb5FMwNGQfEddoFV9d3BPCXiPJqTZuDFx0meloUQuWrelG5
	 wsFvNT081GNHx3hZ60rP5/Qkd1i0uH1Rwgoi2MhJXsPvZeDSkKFu5m6JfZRoQeZsWY
	 OvpZHGtWBC2Tt9rt9aC/IfxHpOI7FYFZzoJbPE5Tk4Pn+oCXKMPNxDp9cFbgo4na0I
	 RPl2yslQ0JVPwYiQbBphEBxFnCjKWVCqK+LJPZtwhL2YdE6rPqq1a0YLwUTfAGeVRA
	 7yd5zi3t6+fxA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <0789000f012122a7fa27ef709c738101b00cd834.1693407196.git.geert+renesas@glider.be>
References: <0789000f012122a7fa27ef709c738101b00cd834.1693407196.git.geert+renesas@glider.be>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: stericsson,db8500-prcmu:
 Spelling s/Cortex A-/Cortex-A/
Message-Id: <169520267972.3355646.4317395999770034810.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 10:37:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Wed, 30 Aug 2023 16:53:43 +0200, Geert Uytterhoeven wrote:
> Fix a misspelling of "Cortex-A9".
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: stericsson,db8500-prcmu: Spelling s/Cortex A-/Cortex-A/
      commit: 0235574f1ae5569a39e35de72767e42e03747bc0

--
Lee Jones [李琼斯]


