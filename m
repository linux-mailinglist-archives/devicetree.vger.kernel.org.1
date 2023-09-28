Return-Path: <devicetree+bounces-4295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCDD7B1EE3
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:47:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 219F1B20BBE
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751B53B7B5;
	Thu, 28 Sep 2023 13:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9FE3AC3D;
	Thu, 28 Sep 2023 13:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39D4DC433C8;
	Thu, 28 Sep 2023 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695908816;
	bh=2YzCsfGuDcZbmNxF5WFR5C/acVLmd3czOOew5lOaKXI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=F3fTfiijmvTNwSJoN0cRtKn6x3aVUf9jkb6SkGiaxnd36Hwziyc2mewjk1CSWjl98
	 2xqfk8hbRCfGyfHgLOwXXZCu0/faKZW7oBk4Yf0uCghd02mW03BH5W0FNjbySPwUc3
	 Kl7IIKb7fH2JYzk8kYT/8YJYs/IiUBjzd2Zzood7dy8pG5yP+N6X85wzFDOWVlbdHp
	 QppAHqUrxLSj+PV0/rMJWugnBwrKrzT8eDxTME4RoILzWQPHkylmlHid8gHdYztMkq
	 PQJZzADxr1H3jlLem28O3sv93EveD3UFk2xsMGVPsXu4hT8Xg9s03TWDMr9ue+XtDp
	 1lsZOYM9oC7lw==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, Mark Brown <broonie@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Shengyu Qu <wiagn233@outlook.com>, 
 Martin Botka <martin.botka1@gmail.com>, 
 Matthew Croughan <matthew.croughan@nix.how>, linux-sunxi@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230919103913.463156-2-andre.przywara@arm.com>
References: <20230919103913.463156-1-andre.przywara@arm.com>
 <20230919103913.463156-2-andre.przywara@arm.com>
Subject: Re: (subset) [PATCH v3 1/2] dt-bindings: mfd: x-powers,axp152:
 make interrupt optional for more chips
Message-Id: <169590881296.1610191.10475308941086886340.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 14:46:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Tue, 19 Sep 2023 11:39:12 +0100, Andre Przywara wrote:
> All X-Powers PMICs described by this binding have an IRQ pin, and so
> far (almost) all boards connected this to some NMI pin or GPIO on the SoC
> they are connected to.
> However we start to see boards that omit this connection, and technically
> the IRQ pin is not essential to the basic PMIC operation.
> 
> The existing Linux driver allows skipping the IRQ pin setup for two chips
> already, so update the binding to also make the DT property optional for
> the missing chip. And while we are at it, add the AXP313a to that list,
> as they are actually boards out there not connecting the IRQ pin.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: mfd: x-powers,axp152: make interrupt optional for more chips
      commit: cf71329eb3a37f90c8ddec0651dc7b3fa76036c1

--
Lee Jones [李琼斯]


