Return-Path: <devicetree+bounces-294952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JuBF29//2mV7AAAu9opvQ
	(envelope-from <devicetree+bounces-294952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 20:39:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DDD501050
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 20:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0167300B743
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 18:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C05238F659;
	Sat,  9 May 2026 18:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBZftAhM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3D8375F82;
	Sat,  9 May 2026 18:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778351980; cv=none; b=MAnt8v3Vwe1oGChEkLl1Roxqe1ITz7RdMAVB1mdoVFshULNy/TvVW6yXjKDeRN1En1f361dbZ1h/+5V4gCiZNnDJKlLE3rpr6n7ETWNAhYzatXeCQekvAsKqwciIxhCW55b4lWJiRVn2jHvg62/Y4Y46tVEdD8A8Q5qvJv5h/Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778351980; c=relaxed/simple;
	bh=wOJLEzf+rx/GJNnZw66wIn7rzt4vSZIvEbRfirdKAmQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=FXQiNDrTGgaHzSDeikLORt9pI56lUKEJ3oRCywIhKcy/hw+FzBW/FrgSbP/m1Ee2TWPYd0Hx0zOjXHy91I/C4VQLTk5bxGcQEUFnSDh6Xnu4n16TaEbuIUAq9BHkCt5B4IYxlF56MjeaQXSz9g84C3tCWRDNgK5p3Wd2w4/GENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBZftAhM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68DDEC2BCB2;
	Sat,  9 May 2026 18:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778351980;
	bh=wOJLEzf+rx/GJNnZw66wIn7rzt4vSZIvEbRfirdKAmQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ZBZftAhMwz9pgIm5LUEyQSQtoT0ZJIPiNcN+gaB/kEaQVaQ7IcU64bzRjQGQlYSq6
	 a88pQVthkOj20eZM9FV3Ukv89gqA0mdD6cLxpmqdvqa7UKB4XlM0VTftyBYmSQvaGO
	 TQcj0xaVaJ7bVMsvAakpyzvHZYi2sGbFhhFdhko/J0XKKu46argoe639ELsuK6R7lB
	 1NI97qknuIKDfRBwd84D0ryP0tcD+6T9RkjqHaPxDxvdAzaia2dHL72IOq40B7ilXJ
	 swwsWZO1CEmRFWEArO8TyvR+2MxW37d+tlU89pqek6Yao6vUjsc6HXQ1FzoSzRAbPZ
	 huP7yEDXJBcNg==
Date: Sat, 09 May 2026 13:39:38 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
In-Reply-To: <20260509171644.12513-2-wsa+renesas@sang-engineering.com>
References: <20260509171644.12513-2-wsa+renesas@sang-engineering.com>
Message-Id: <177835197752.785526.10193851716163594776.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: remove Wolfram Sang
 as maintainer
X-Rspamd-Queue-Id: D1DDD501050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294952-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Action: no action


On Sat, 09 May 2026 19:16:45 +0200, Wolfram Sang wrote:
> The YAML conversion added me as maintainer but I can't recall being
> asked nor do I want to maintain it now. Remove the entry.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/i2c-mux-pinctrl.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260509171644.12513-2-wsa+renesas@sang-engineering.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


