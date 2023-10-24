Return-Path: <devicetree+bounces-11120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A1B7D451D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 03:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 584901C209E1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 01:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD30F20E3;
	Tue, 24 Oct 2023 01:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJrG57SV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F78F10F9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06A4DC433C8;
	Tue, 24 Oct 2023 01:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698112040;
	bh=mO3XCjY6Z0lxeyk7f7BJMy9qpCv7zZnFBymSDfJlDWg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=rJrG57SVlu4spNUaY4iPdXEtxyYZWOT7fb29l8P8JM4S/7pxetWDhYqsyNO7EXbcw
	 EatHJxOfWwk1Ff5Cm0x8u3BcMC3SMQEjmjilYtr1E47o5xQqqjDXMxbq/Xx22j9h1x
	 wLZdOBAWHS2eHUTXGjmngNvEBpHeQ3X64sFDAQIF+Fk7QsY+W0DJkqYbcHs4Y9jBj8
	 KYbPF5PJ5p2cXY9jc1mLAsgkjxLFcTp6R8acJdM1bX3dycKdM0Tl82elIXlAPcSirv
	 VrbX4bQ25xCAGTX+Mu6765zvmIw0kcr/Z57pqYRqGmufMCRrPwacnMq17dmjEPUwbA
	 1byHUuCsyROTA==
Message-ID: <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231018070144.8512-1-zhangqing@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, zhangqing@rock-chips.com
Date: Mon, 23 Oct 2023 18:47:17 -0700
User-Agent: alot/0.10

Quoting Elaine Zhang (2023-10-18 00:01:40)
> Recent Rockchip SoCs have a new hardware block called Native Interface
> Unit (NIU), which gates clocks to devices behind them. These effectively
> need two parent clocks.
> Use GATE_LINK to handle this.

Why can't pm clks be used here? The qcom clk driver has been doing that
for some time now.=20

 $ git grep pm_clk_add -- drivers/clk/qcom/

