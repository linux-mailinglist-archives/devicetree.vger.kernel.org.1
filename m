Return-Path: <devicetree+bounces-284993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2s1pJ5Dk02n/ngcAu9opvQ
	(envelope-from <devicetree+bounces-284993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 18:51:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F4F3A5706
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 18:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 229D73003ED4
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 16:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFFB38759D;
	Mon,  6 Apr 2026 16:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umGnpJca"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674363290C7;
	Mon,  6 Apr 2026 16:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775494285; cv=none; b=JLb6jinBTcDN4O7PQTT3BmWyqLgfZdINgWgmcfTtLO5tA7s0fLmwpCJPcMho6LX0bjDXR97nLFLvUP3xhwUNJRfr5P+7uWsiKaZ0cw9v9HYQW8yll0iDQN5DVVSQg21s9wJincoEl1FUKBcQsNEd8qXTRd7jX68JBjLwI9SnGYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775494285; c=relaxed/simple;
	bh=N1Ai32jkGLjlfO+YDVIXKiR0wz+UyCh4aqCqpF0jJBk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=cMbxJBqZWdyGQuHoTkzyhQoCOYlph2HLQhKHQyk2f6Uqz/xStcDogAa1h2sUFILjzNV2ZciDNj/wDUQ9irlP4ZHetNbvdydtPhLcOS54Qe0lFfhW7bQboWarc3LtScZ6F8KZqhSaOKbQ1RjEWD0rDIuS7Oni+/yePicLfa0k6nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umGnpJca; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C3BC4CEF7;
	Mon,  6 Apr 2026 16:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775494285;
	bh=N1Ai32jkGLjlfO+YDVIXKiR0wz+UyCh4aqCqpF0jJBk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=umGnpJcaXsyPp1Rrs9szHLoZq8l99X48tcz8Y6OVvuQpBeuVpUC+SkVGYG6wdlOod
	 Y79X3B8e55ud/7064FRxdv9MtPkRRVawgV2HeH7+Qx0Xm6JBpoLAg0/U3us2Bex349
	 XDx794hTqTRhitBRAgl6l8sI7WLC+H79NO8aE5aq+f6ut9f/ypzVFLUNtaP74vS/yL
	 2AxVkITgx8E8oKC1zv3rvFhU1skmVbZAOW/ymz8MfTx/YLONPOBZpMM/Gb24qPuRVT
	 qAv07O1T9IDhBcUbSMpyqDAtPDuNY34QLputrEKc8WXlQw/G/xiczYwpw61geYIrD6
	 uqC3RveVaSmqg==
Date: Mon, 06 Apr 2026 11:51:23 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260406145104.36472-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260406145104.36472-2-krzysztof.kozlowski@oss.qualcomm.com>
Message-Id: <177549428295.3420527.14302032860881762505.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: thermal: idle: Correct node name in the
 example
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284993-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: E8F4F3A5706
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 06 Apr 2026 16:51:05 +0200, Krzysztof Kozlowski wrote:
> Thermal bindings expect the node name with all the zones to be named
> 'thermal-zones' (hyphen instead of underscore) and also DTS coding style
> is not to use underscores for node names, so adjust the example code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/thermal/thermal-idle.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-idle.example.dtb: thermal-zones: 'cpu' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260406145104.36472-2-krzysztof.kozlowski@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


