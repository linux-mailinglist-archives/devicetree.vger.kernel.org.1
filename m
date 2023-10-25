Return-Path: <devicetree+bounces-11773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB557D68DB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:36:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D8741C20D49
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92C7C26E01;
	Wed, 25 Oct 2023 10:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOiBRPIs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7655A266DB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:36:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF09C433CA;
	Wed, 25 Oct 2023 10:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698230203;
	bh=ntDXN6/2qOsCCkilJlaxE0vWMmmPJiupJ7r60b2XmUI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UOiBRPIso13bGcE/dHRWnAAPD3tWDEd3aq+7CdIUQl9qgz4eOAeJcXX58da+eXK2L
	 MOPmSPZuyjUhNwXijkmQ2JBWWRjuUFNtlMZQf8FqspwJ2eQmseJ/j2mwTqxEXq9eFv
	 hHSL84+cvhIor5HBMmnE2EfcRWT0L/Z0oKlbCNgOHV9ZUIFDQ+/cQ5U28sXxtyee+5
	 BnszHdpuEiT9juPV8ztCdaDo6mPmK3HoyL6fGw5KziSN3GPLgZNJ37Fn8oV0F4/lxm
	 Tix9njlM952bp0cNwYIMfhust8vdzujhrnFCgXlIyw7reqdsWIgB9bp9FmKmiAYs6g
	 DTxkqI0aRGPTA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231019165732.3818789-1-megi@xff.cz>
References: <20231019165732.3818789-1-megi@xff.cz>
Subject: Re: [PATCH v3 0/4] Add support for poweroff via RK806 PMIC
Message-Id: <169823020128.678899.14014128373986258754.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 11:36:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Thu, 19 Oct 2023 18:57:22 +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> The PMIC supports powering off by twiddling some bits in a register. Add support
> for it via pre-existing rockchip,system-power-controller DT property.
> 
> The series was tested against Linux 6.6-rc4.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller
      commit: 8b7fb96f861c17443b7e3a5c256897b72d4c205f
[2/4] dt-bindings: mfd: rk806: Allow system-power-controller property
      commit: 517dbecfeafa52c8ada4bd3585d9e8b005f7e542
[3/4] mfd: rk8xx: Add support for standard system-power-controller property
      commit: 4be7cc6f62beb8a56c2c8f9748a7e345a645c914
[4/4] mfd: rk8xx: Add support for RK806 power off
      commit: 8dc3aab3c45eb0fba9202d2d6ad628cc7b59c17d

--
Lee Jones [李琼斯]


