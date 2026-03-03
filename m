Return-Path: <devicetree+bounces-270498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AITRGO/hpmlAYgAAu9opvQ
	(envelope-from <devicetree+bounces-270498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:28:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093D1F0379
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 80DFE3018E2E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B98423156;
	Tue,  3 Mar 2026 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNg+DMUk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B034266AA;
	Tue,  3 Mar 2026 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544341; cv=none; b=o+kB126kVPqWDAYYijo35DIez6Cmuusxltljrw6uS6o2MsTt3CzE4aRq/BS9TQpONqY3GcAUJvlOMnxADQBMzvs0YjrL7etFl7QRrlcGS1EiE00AyB3irP/G97Pf5sWKfKNxXFtPrqMfaeH2R/ENEb1NhfNSPupccdLYIRgBT1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544341; c=relaxed/simple;
	bh=a0C1RxOdwgadrhfl9W5zZBwBHsKaNlq8SCfd2aSE9Jo=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=NxShT7+OaZh2dmzrzuvYmg9D/OE+DQSw5VDF9WxVfIrAWUFrsFJW2MDMUROl5fBH6imfEa9xssXxr8Zggn5S9vDWdfUvbsGfFwLAgORRz5ZyJtbnKA5pOpDU9Hd9AgPsOki4w+SX/LsZvQsURsi7fpT/s0Ex1z43GWpftwaJwUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNg+DMUk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B63DC116C6;
	Tue,  3 Mar 2026 13:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772544341;
	bh=a0C1RxOdwgadrhfl9W5zZBwBHsKaNlq8SCfd2aSE9Jo=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=LNg+DMUkQiUgMOqHBFByRfIetkTksPabU8FlaZDJ23hvB4F3PZwLT677PsLu7avzr
	 D3qImRuk5EDL+9c6kxqFvwd9RJEjYnqVeT1fFI83dbRIDAxijo83lbWA3hvGAmKDZS
	 abfJaUVW1ha8nlkQ9kbR92hI7DHQOMqzUJcAValyBegwqICBqynmtPPuP/iIYTIEWZ
	 WKdUiHXehhyfHafUu03bYmZl3v1RegblK3woWTTPz6gYqLNYlkrluOvNXgsDFnc4tS
	 KtpRVsY4RGQu/hvkqEd0TOrtpy1rUsjeLgnKefpmBsbxOz4Zpeo5XbAcVOwxGXCDel
	 7ArAi+5hk83fA==
Date: Tue, 03 Mar 2026 07:25:40 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
 David Airlie <airlied@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Conor Dooley <conor+dt@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
In-Reply-To: <20260303115730.9580-2-mitltlatltl@gmail.com>
References: <20260303115730.9580-1-mitltlatltl@gmail.com>
 <20260303115730.9580-2-mitltlatltl@gmail.com>
Message-Id: <177254434051.3027812.12059408914841165638.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Himax HX83121A
X-Rspamd-Queue-Id: 7093D1F0379
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270498-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.freedesktop.org,suse.de,ffwll.ch,gmail.com,linaro.org,linux.intel.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action


On Tue, 03 Mar 2026 19:57:29 +0800, Pengyu Luo wrote:
> HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../display/panel/himax,hx83121a.yaml         | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/himax,hx83121a.example.dtb: panel@0 (csot,ppc357db1-4): Unevaluated properties are not allowed ('ports' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/panel/himax,hx83121a.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260303115730.9580-2-mitltlatltl@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


