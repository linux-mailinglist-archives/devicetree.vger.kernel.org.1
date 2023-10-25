Return-Path: <devicetree+bounces-11799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6690B7D6A60
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F713281D25
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58FC250E6;
	Wed, 25 Oct 2023 11:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuwBQ0eD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B5B11732
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:51:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31E73C433C7;
	Wed, 25 Oct 2023 11:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698234676;
	bh=ccDEHLyNQ55/aoYnEMt5UuSrpWflucLNjB+nH26h8ME=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UuwBQ0eD9mjom9pz/LhHpyRrz5f531lApbW1EF/aM6aaDejxnTdKjzlZF7CDjEYCf
	 b9hMFfW6oLpIR5/1C72TCD3poRCxa61b8N6TuqFi7KcVGCuitO4yN4Drn+02KOUoUj
	 lPsRqh2TjVk2UrohokTCD4Usm8r9rFqKc8jm8o+nlWWTResKtEaz55Z6EUeBlIgK6s
	 WZ1CqKNAUxR6uuO9Wz+rdvof05n0YPg0d9pPe5T4oZSt7EhYys7E3NoUfTEfw10hd1
	 uoXxUuXWOqdtO8T82hfUvWYNC1cv1r9gGnRk7YKwClZDySVVaInW6EW7aQDuvWdwTL
	 M4eHhQb0EkETQ==
From: Lee Jones <lee@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
In-Reply-To: <20231020142252.3113716-2-robh@kernel.org>
References: <20231020142252.3113716-2-robh@kernel.org>
Subject: Re: (subset) [RESEND PATCH v2] dt-bindings: mfd: armltd: Move Arm
 board syscon's to separate schema
Message-Id: <169823467391.712087.1077897635437160110.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 12:51:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Fri, 20 Oct 2023 09:22:51 -0500, Rob Herring wrote:
> The Arm Ltd board bindings are a bit unusual in that they define child
> nodes for various syscon's. The schemas are also incomplete as they lack
> constraints on having additional properties and some properties are
> missing. As the bindings for the different platforms only vary by
> compatibles, combine them into a single schema doc.
> 
> Add the "arm,im-pd1-syscon" compatible which was not documented. Add
> "ranges", "#address-cells", and "#size-cells properties which were
> missing.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: armltd: Move Arm board syscon's to separate schema
      commit: 2bad5bd2552a34b27dce2bbc3ab1bb50d85f5869

--
Lee Jones [李琼斯]


