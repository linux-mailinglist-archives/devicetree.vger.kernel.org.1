Return-Path: <devicetree+bounces-272828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMTrLZ2hrmkLHAIAu9opvQ
	(envelope-from <devicetree+bounces-272828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:31:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F37237202
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10805304EF76
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F6B2355F49;
	Mon,  9 Mar 2026 10:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw6v93rw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA2F254AFF;
	Mon,  9 Mar 2026 10:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052239; cv=none; b=PQGf4b8gWeu6/OjNC6eK2FqwrnkBA61eWg6ykGtRMMc19Dwg2zA+wI9fFE3gjjlT2WLfzi23mXNqFTTDdrl9eLmlOEPsb32ux7crAY6IdEDjG+2Csd6kjWeMkvoQhd+ddKrlPZAATrNHkYxauFULisBN5z8aFch2uY9w/G8ZH58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052239; c=relaxed/simple;
	bh=CYoh8Q81ENzSeGq3xOwWDJTDSt996SoFePTjS6bvyS8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=GkGFFENW8X1picfHaT2+fYuMEIftVCJsW4MWqbtK7ghECC+ciQDSLXHPicegWdwjRpEczKnQaV4nZ/c9INQIRWF/S1ItIbfbkRlZvtklQfXKCnY4qUl66WRgBS07AO6s+8iVd30rfSgxhjjJSIDNdpn2ajwsWG2H7EyVLIqkdJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw6v93rw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B5AC4CEF7;
	Mon,  9 Mar 2026 10:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773052239;
	bh=CYoh8Q81ENzSeGq3xOwWDJTDSt996SoFePTjS6bvyS8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=pw6v93rwka9lygAVW1ABBf0TPK+l3HpIdE19sgbkRsa9HUz+Tyh7nb/XFyBd5oYOX
	 axWTbndKFGXfVuyuDHYFYM3XRPqtKXsxfiuExhNtrGJDJ3mLZFZt0865EyWw60R8wT
	 KACha09iq/wL5g9ZTUN2MEIC5NbGayPOQuBydbtxrSflGvupOOk5OKdFLnJJGimasD
	 7QB/6lXlRasuCN4YVZahCeOHFei3/oH6TsqY7xX3np4aBn+9Zvk1IIjwTZu3Vv00pe
	 c7rLNP/tZdd+uSHhf8oSAT+sWBDgvyYeGi+bcyxpMU6SsT8HBUv9ulGsvujBcjrk69
	 xnxRzBhCd5O4Q==
Date: Mon, 09 Mar 2026 05:30:37 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Robert Foss <rfoss@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Hermes Wu <Hermes.Wu@ite.com.tw>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kenneth.Hung@ite.com.tw, David Airlie <airlied@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Pet.Weng@ite.com.tw
To: Hermes Wu <Hermes.wu@ite.com.tw>
In-Reply-To: <20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw>
References: <20260309-upstream-6162-v2-0-debdb6c88030@ite.com.tw>
 <20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw>
Message-Id: <177305223794.870890.11114414845312436607.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add ITE IT6162
 MIPI DSI to HDMI bridge
X-Rspamd-Queue-Id: 18F37237202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kwiboo.se,kernel.org,ffwll.ch,ite.com.tw,linaro.org,ideasonboard.com,suse.de,linux.intel.com,vger.kernel.org,gmail.com,lists.freedesktop.org,intel.com];
	TAGGED_FROM(0.00)[bounces-272828-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ite.com.tw:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 09 Mar 2026 17:42:01 +0800, Hermes Wu wrote:
> Add device tree binding documentation for the ITE IT6162 MIPI DSI to
> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
> supports the following configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The chip also supports up to 8-channel audio output via 4 I2S data
> channels.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
>  .../bindings/display/bridge/ite,it6162.yaml        | 216 +++++++++++++++++++++
>  1 file changed, 216 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml:216:7: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


