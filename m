Return-Path: <devicetree+bounces-90127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D369441F0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 05:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83C551C21B74
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 03:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4874313DDBA;
	Thu,  1 Aug 2024 03:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYKyRRsa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E94013DBAD;
	Thu,  1 Aug 2024 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722483454; cv=none; b=VaapGn+tM2v5JxrePgybCMmgls0O/tzCoi8F98fFuMz79mjc3Wt+uQ3mHguCFwW2Y4txV2WH1OnK3XT0a4ot8P4Ho5i5RaFnvpQ77HulRYjBYmfHvqU7HzhBHzxQ47sihlDS0MMgO24gCA74MHUIOQUgPh3uSELc9XZINebfL2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722483454; c=relaxed/simple;
	bh=Vp0WRXh6a99JG+/ezGQ5ywVjgLg1EA2TbMiWufFAhyY=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=TREQxMwTXPuyrfD312yYBNdMDRjtQNF8mVQqgA9Ayk0XFjWrOAb7vnMvfbH238GKDFaMktT222SRov5FHnoV9zYsFGnIZQkVJ34XznK9cU5bVxF3JvrcbQeI8h4YKE1t12nC6z3wjL0dhuEfR7ZF+S0o9Kyu8SCUF1u4iDoX+Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYKyRRsa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5258FC4AF12;
	Thu,  1 Aug 2024 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722483453;
	bh=Vp0WRXh6a99JG+/ezGQ5ywVjgLg1EA2TbMiWufFAhyY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=cYKyRRsaeRsQ+vhTxImq00tcnxZdtguLo+p1yishEBW957kN/WnCAs86A3sa4FO5b
	 fznqqsk/HmFVZSZgPzjqCXgIidlgW6FKiDlNtWCwaPKRvrxb4zYj3/PoixfyNU/eeY
	 yJAXUvrbnDKr0FdMywkEY5tYDmd+QbkuH/TXP5dwLplej8NzyVIuBzhAcVIQ7m3621
	 fU6fcXG4LnNiWq1noxeAJGInlscL/a8YT+Q4PlSgOm0Hv6zl2KeaOZ08izcvr3JFpI
	 7sv+RVZ8CmSq8eafJLXtLWCk4hNwRfRGqcjbUNs12F8dh+RPlW+KtIII/nC0T+K2F5
	 7PfJ9q9ecsrBA==
Date: Wed, 31 Jul 2024 21:37:32 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Luis de Arquer <ldearquer@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 David Airlie <airlied@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>, 
 Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org, 
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, 
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, 
 Jernej Skrabec <jernej.skrabec@gmail.com>
In-Reply-To: <20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com>
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
 <20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com>
Message-Id: <172248345225.2862796.6921035362248469311.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller


On Thu, 01 Aug 2024 05:25:52 +0300, Cristian Ciocaltea wrote:
> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP.
> 
> Since this is a new IP block, quite different from those used in the
> previous generations of Rockchip SoCs, add a dedicated binding file.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 188 +++++++++++++++++++++
>  1 file changed, 188 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.example.dtb: hdmi@fde80000: False schema does not allow {'compatible': ['rockchip,rk3588-dw-hdmi-qp'], 'reg': [[0, 4259840000, 0, 131072]], 'clocks': [[4294967295, 528], [4294967295, 529], [4294967295, 530], [4294967295, 564], [4294967295, 594], [4294967295, 717]], 'clock-names': ['pclk', 'earc', 'ref', 'aud', 'hdp', 'hclk_vo1'], 'interrupts': [[0, 169, 4, 0], [0, 170, 4, 0], [0, 171, 4, 0], [0, 172, 4, 0], [0, 360, 4, 0]], 'interrupt-names': ['avp', 'cec', 'earc', 'main', 'hpd'], 'phys': [[4294967295]], 'phy-names': ['hdmi'], 'power-domains': [[4294967295, 26]], 'resets': [[4294967295, 462], [4294967295, 560]], 'reset-names': ['ref', 'hdp'], 'rockchip,grf': [[4294967295]], 'rockchip,vo1_grf': [[4294967295]], '#sound-dai-cells': 0, 'ports': {'#address-cells': 1, '#size-cells': 0, 'port@0': {'reg': [[0]], 'endpoint': {'remote-endpoint': [[4294967295]]}}, 'port@1': {'reg': [[1]]
 , 'endpoint': {'remote-endpoint': [[4294967295]]}}}, '$nodename': ['hdmi@fde80000']}
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.example.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('reg' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


