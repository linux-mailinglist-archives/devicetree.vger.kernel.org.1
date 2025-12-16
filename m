Return-Path: <devicetree+bounces-246860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09424CC0F62
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 06:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 95EA5309453A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 04:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF68532C921;
	Tue, 16 Dec 2025 04:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPtzu4Km"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C3330FC36;
	Tue, 16 Dec 2025 04:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765859222; cv=none; b=Wzs0KYAD9DfrN7nP8HzUQgjDMQKltwcrDCNsUoEO39PK9IRqoR3rzu+6qFkYRMvD137k5TpE/4KY63tTIlAxC+p19+3H+P6yqCbZd1xtscci9xOt05GqiGL1N43mRVasf4dS2N2KFaC3r8tU3FK4SZa1ntHw8WZ1zLp4BR5GeRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765859222; c=relaxed/simple;
	bh=MrTitMKqptuihX2NlWXSwG9vLpTcBZxq3XR3eaBqBDk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=axa7q8eh8AF+ONh/F7uIvSOswjPecU2Zmg0gtqTBBMleBculmeCAs4yXg1bmekBjBCeGR30lhMdiXFyhWDZQIex7F2FazhsmHEIKgdV6OYs0r3/zon8My7AnPhtm0+qzp6MJDF4V3c1x+Ya0AQbbQjpgWubse+FbBbejF4wWUPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPtzu4Km; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB510C4CEF1;
	Tue, 16 Dec 2025 04:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765859222;
	bh=MrTitMKqptuihX2NlWXSwG9vLpTcBZxq3XR3eaBqBDk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=XPtzu4KmLPhac4N164hbXQSTeNdV7tj4OPq+Z4k6/Yo4/ky15wSt98inxnezUYX20
	 kxy7UU6G4B5PHUmMjcwJ2Sm/61rMVYBZD98tXn4/CZu3yy7FEVwPGSU8jxKWPSFWPk
	 8wTx1P3dDEv1V0NmJwqHIRCwlZQuuChJLw/Qng7KaW/8hYtq71VWvx9e23C2vBcvSz
	 j/Xtz3OCHiK/U6/CLL3Hn940cfCNnVPAs/cmnriPIcFPgFYVW6XRxZyuRx0J9KaFC0
	 xg6pEk4n+IWcDwlgKRfbjp28B4/+geV1utUEvJZGmWulZfhGTnSqof1ZGwCOUVKohl
	 fzzlQzjA1cQbw==
Date: Mon, 15 Dec 2025 22:26:59 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Jonas Karlman <jonas@kwiboo.se>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Conor Dooley <conor+dt@kernel.org>, Kenneth Hung <kenneth.Hung@ite.com.tw>, 
 Pin-yen Lin <treapking@google.com>, Robert Foss <rfoss@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Hermes Wu <hermes.Wu@ite.com.tw>, 
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, 
 Maxime Ripard <mripard@kernel.org>
To: Pet Weng <pet.weng@ite.com.tw>
In-Reply-To: <20251216-it61620-0714-v4-1-9d2fea7847ae@ite.com.tw>
References: <20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw>
 <20251216-it61620-0714-v4-1-9d2fea7847ae@ite.com.tw>
Message-Id: <176585921916.796400.11631028194091184487.robh@kernel.org>
Subject: Re: [PATCH v4 1/3] dt-binding: display: Add ITE IT61620 MIPI DSI
 to HDMI bridge


On Tue, 16 Dec 2025 10:51:49 +0800, Pet Weng wrote:
> This chip receives MIPI DSI input and outputs HDMI, and is commonly
> connected to SoCs via I2C and DSI.
> 
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
> ---
>  .../bindings/display/bridge/ite,it61620.yaml       | 140 +++++++++++++++++++++
>  1 file changed, 140 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml: port@0: Missing additionalProperties/unevaluatedProperties constraint

/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml: endpoint: Missing additionalProperties/unevaluatedProperties constraint

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20251216-it61620-0714-v4-1-9d2fea7847ae@ite.com.tw

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


