Return-Path: <devicetree+bounces-5251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0217B5B3C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:26:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 93B8D1C204F9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A9E41F936;
	Mon,  2 Oct 2023 19:26:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2BB1F182
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:26:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A19A1C433C7;
	Mon,  2 Oct 2023 19:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274779;
	bh=/VXK0Doi2ugIAsDtjX5XrQhNXO4ojTZSscjv1xrbOgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TtMPJxUtQO0dOH9Uvp6l6vEzpDyAKTrN8TNJlla6L305ICOCwsVaKVnsOwLo+JV7b
	 X2sMBl5PXWCISRXb/a2dMeaiK/hag/v7pOpat7R1JK2UG78soGgVMez0BCkvxAYO8i
	 9r0znZgdgG7iYlNUFp5OGwVW14epjuvc7MgQcwzAaw49U2+7B98H+uFxddpabod7o3
	 TZh8qMATF6IsSsNHQ3A9qas+IwJs2BLElmgnifE+s8gsgYHuMBlB20sS1MsZyaNM2r
	 MlW1aCmOK4wRy3RCBG9tc1AxVU9WBvNVh/cNLf814vdrGaMnkoDoIGgTqwDgCZkkV5
	 IlfNyT6hNKItw==
Received: (nullmailer pid 2386735 invoked by uid 1000);
	Mon, 02 Oct 2023 19:26:17 -0000
Date: Mon, 2 Oct 2023 14:26:17 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: power: mfd: max8925: Convert to DT
 schema format
Message-ID: <169627477713.2386676.2358148175794895273.robh@kernel.org>
References: <20230930202743.214631-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930202743.214631-1-sebastian.reichel@collabora.com>


On Sat, 30 Sep 2023 22:27:43 +0200, Sebastian Reichel wrote:
> Convert the binding to DT schema format.
> 
> The sub-functions of this MFD device do not have their own compatible
> string and are thus described directly in the MFD binding document
> after being converted to YAML.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Changes since PATCHv2:
>  * https://lore.kernel.org/all/20230922233142.1479677-1-sebastian.reichel@collabora.com/
>  * Add unevaluatedProperties: false to regulators subnode (Krzysztof Kozlowski)
>  * Use "pmic" for nodename (Krzysztof Kozlowski)
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20210413153407.GA1707829@robh.at.kernel.org/
>  * Update License to GPL OR BSD
>  * Add missing type references pointed out by Rob
> ---
>  .../leds/backlight/max8925-backlight.txt      |  10 --
>  .../devicetree/bindings/mfd/max8925.txt       |  64 --------
>  .../bindings/mfd/maxim,max8925.yaml           | 145 ++++++++++++++++++
>  .../bindings/power/supply/max8925_battery.txt |  18 ---
>  4 files changed, 145 insertions(+), 92 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max8925.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max8925.yaml
>  delete mode 100644 Documentation/devicetree/bindings/power/supply/max8925_battery.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


