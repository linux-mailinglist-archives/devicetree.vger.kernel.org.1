Return-Path: <devicetree+bounces-294996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MN8C1Sm/2lr8wAAu9opvQ
	(envelope-from <devicetree+bounces-294996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 23:25:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B20E8501780
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 23:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71516300E70F
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 21:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B7C38BF67;
	Sat,  9 May 2026 21:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhRNa9U6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBDD38B7D5;
	Sat,  9 May 2026 21:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778361932; cv=none; b=R5EOZY6k/w+jWOSEQI7zk+1l94FwmTnF/ueNb1GLKZya6edaFJkIQyBQIBAN30anH8YsBwq4OhEBrHg9amARsB0L9IbnnM9sii4YAmreY1NXPAWqtLc9GRSP4idr8AN91UQTPMsIgv0j+IgUDGAG7KjESkLB5Q+TzV5HxT3feTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778361932; c=relaxed/simple;
	bh=kqHOrbJyhA/27njgwMH67BMSnrFaEGEAU6ESTHsUOMY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=NW6SzcUtHCtEn1kEtpU6mATpkZSKpVY6YNLoy5lRNzhrZj40MqTmPHBAwTgYwFg/DBdIxRHb/xHxuRnfo5HM4RYSEk+Rni4AY82+VYx91ro+hiCujBR8pN4pLh+uaxm+NVA1YJOLJ/HkeBfCM9SSDjLilhBocZMJXPMAVD2JON8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhRNa9U6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C787DC2BCB2;
	Sat,  9 May 2026 21:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778361932;
	bh=kqHOrbJyhA/27njgwMH67BMSnrFaEGEAU6ESTHsUOMY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=lhRNa9U6a6Yx6f+isl46Vmo87cARQlOGnSA39+RCjZwb7G7vS9Jn993kdHdc4C+dI
	 CcuXkUOfxsvWT9dghrcgwFTRziEqVSl7qe9l61EG98WgsSA7qe83n7eNHsUfKaNtq2
	 qTLnZobTNrv0Q6BJvEKc0RvR9OxD/A2AzDSda1Ey5v7KPDSVvq75WxsjKgU6+nWc/g
	 fk1uREqrGrqgKHOhTytbV/yLzkIHWPgpQbDSCS+axh07yu8UqLmD802yxHMlHzl5uO
	 MJvEh+390TGDEUn4OvJ/4Ti8noknu+/c1dsw4UYk+2aixCt4Dc5MlauXS2wJgw5mh+
	 crXMeft5QpJ9g==
Date: Sat, 09 May 2026 16:25:29 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Jessica Zhang <jesszhan0024@gmail.com>, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>
To: Aaron Kling <webgeek1234@gmail.com>
In-Reply-To: <20260509-icna35xx-v1-1-688d3d4e10f9@gmail.com>
References: <20260509-icna35xx-v1-0-688d3d4e10f9@gmail.com>
 <20260509-icna35xx-v1-1-688d3d4e10f9@gmail.com>
Message-Id: <177836192983.1140170.1302751195131262657.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Chipone ICNA 35xx
 OLED driver bindings
X-Rspamd-Queue-Id: B20E8501780
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294996-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com,linaro.org,linux.intel.com,ffwll.ch,suse.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Sat, 09 May 2026 15:18:57 -0500, Aaron Kling wrote:
> The Chipone ICNA35xx series of DDICs are high refresh, low power
> MIPI-DSI drivers for OLED panels. The icna3512 is used by the Ayn Odin 2
> Portal and the icna3520 is used by the Ayn Thor top panel and the Ayn
> Odin 3.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../bindings/display/panel/chipone,icna35xx.yaml   | 77 ++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/panel/chipone,icna35xx.yaml:28:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260509-icna35xx-v1-1-688d3d4e10f9@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


