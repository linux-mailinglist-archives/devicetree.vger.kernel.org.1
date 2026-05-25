Return-Path: <devicetree+bounces-302647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMiTBPMuFGqUKgcAu9opvQ
	(envelope-from <devicetree+bounces-302647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:13:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 189A35C9CBE
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2BA2D300185C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC89437DAA4;
	Mon, 25 May 2026 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwGjr4Ae"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1A92D94B5;
	Mon, 25 May 2026 11:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779707629; cv=none; b=RFE2x4q3ws4uocJl3kfDkkH0oPm5ALj/i7Msllu82CsEP/kj1n68QkCFA9z+pcN+1wDHD0kqhU/H7Jcn+qI3Hq90xNjmSpzZ7NgmVPhzsAb5ijsL00wx7ff+g8KL2RCxmnYB00x7TFMHBHnVpu0zXDoupDYy+Ex5+uEp2vgD2rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779707629; c=relaxed/simple;
	bh=eG0goKixSp9WEDptAksLHC6c0v0wa8s3dUkhT325Bw4=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=V/fl6ZEixfwh8WhSoZ+Gui4+bcZO3g3RPdkW2PGJWwl3Suv+E5WS8/jPmfPOCLju17ubbXVcOL9LPETmKGLrXeDIq1Cp6rCH4dc4Cl4pEOi4q35yEtn+cElG1IuKjhVRoNJUdGVG3IVb+YDht0PiOEiQvXiZEygkIwnLUwrN9Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwGjr4Ae; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B321F000E9;
	Mon, 25 May 2026 11:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779707627;
	bh=NXobWrGdt7/K85JfkhbiE1Xx6KirCAh53EJ7f9blg18=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=MwGjr4Ae3OPcbzZnE8QRWERBbD6DYQu8iwXRrVD5GSs3vkDaTTz7KBGzwdO/LgoBC
	 +i4+Ax7paoavAuTFOW6nKtToXREgoQUeWie3rTnB+xTpntqNuce0VO8t0gSGYT1XA4
	 PFFV01ZTwMnbZw3rv8x32LDiJTQUyJ264oKnyTHgj95MOtbObrFdOYOZdb4Iptgz8R
	 WjH716z9j8wUz+aFOGsESfBvdCxMZrFKA9bCQPNbfz0cI2MXvte3/7ZXLhBj8Mg/UB
	 k6gtNJoOkMqcv6Kdx3xYmikEnwVTEO/fho/Ja1wPW3HCOCUsmXJSc/38hoQ3ZOwejS
	 uKXdidvqYPhzA==
Date: Mon, 25 May 2026 06:13:46 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: airlied@gmail.com, tzimmermann@suse.de, 
 Conor Dooley <conor.dooley@microchip.com>, rfoss@kernel.org, 
 cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com, 
 heiko@sntech.de, dianders@chromium.org, sebastian.reichel@collabora.com, 
 simona@ffwll.ch, dmitry.baryshkov@oss.qualcomm.com, jonas@kwiboo.se, 
 Laurent.pinchart@ideasonboard.com, neil.armstrong@linaro.org, 
 maarten.lankhorst@linux.intel.com, m.szyprowski@samsung.com, 
 linux-rockchip@lists.infradead.org, andrzej.hajda@intel.com, 
 mripard@kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, conor+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, nicolas.frattaroli@collabora.com, 
 hjc@rock-chips.com, andy.yan@rock-chips.com, linux-kernel@vger.kernel.org, 
 jernej.skrabec@gmail.com, krzk+dt@kernel.org
To: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260525082033.117569-3-damon.ding@rock-chips.com>
References: <20260525082033.117569-1-damon.ding@rock-chips.com>
 <20260525082033.117569-3-damon.ding@rock-chips.com>
Message-Id: <177970762578.3598344.16093942078468322022.robh@kernel.org>
Subject: Re: [PATCH v7 02/10] dt-bindings: display: rockchip: analogix-dp:
 Add per-clock descriptions
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,suse.de,microchip.com,kernel.org,collabora.com,bootlin.com,sntech.de,chromium.org,ffwll.ch,oss.qualcomm.com,kwiboo.se,ideasonboard.com,linaro.org,linux.intel.com,samsung.com,lists.infradead.org,intel.com,vger.kernel.org,lists.freedesktop.org,rock-chips.com];
	TAGGED_FROM(0.00)[bounces-302647-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,rock-chips.com:email,microchip.com:email]
X-Rspamd-Queue-Id: 189A35C9CBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 25 May 2026 16:20:25 +0800, Damon Ding wrote:
> Supplement dedicated description for each clock in the clocks
> property, clarifying the function of each clock input for the
> Analogix DP controller binding.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Modify the commit msg.
> 
> Changes in v5:
> - Add Acked-by tag.
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml      | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml:33:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260525082033.117569-3-damon.ding@rock-chips.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


