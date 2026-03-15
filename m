Return-Path: <devicetree+bounces-275800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mH3NFyDctmkQJwEAu9opvQ
	(envelope-from <devicetree+bounces-275800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 17:19:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 630FC2915E5
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 17:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 76FBA30060A3
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 16:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25BF2371CED;
	Sun, 15 Mar 2026 16:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgLDdw+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC47363C66;
	Sun, 15 Mar 2026 16:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773591577; cv=none; b=J4UQEZLmo4F24dminxkLAU+pzE/wDNVcaFw7OHVrjze0s0V7zHX5dca98B4l03wTsBZpOMiVXsBXk4FGnNKGhex0tezFJSjC1RJZTP7I4KZUPuIh5i/gIx72fApKNobBQfydwfAwQCbtyr3f2DPR7q6tm6hX7Rd0UeaNhIU9tow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773591577; c=relaxed/simple;
	bh=h5Z6I40xCkxuo0L+Pz55mKrVb/ARpUeKbuqHsTWX90o=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=FtiXbqPI8HMHAIrqovHKbfGzBYdLLIWbmta5cor7HmIb+i6XTmLM+9RStaA8OODJBhAv35ZGTLkU1Px4pXy9RBRAv83NyT8BCw9mgzU5ShUWFVKty6G2rFmIYGzZ3pzwvhTEqslrYI0vm7RIGTAG8bKn5MwTAxa6IBCGwbrlSVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgLDdw+Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD90C4CEF7;
	Sun, 15 Mar 2026 16:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773591576;
	bh=h5Z6I40xCkxuo0L+Pz55mKrVb/ARpUeKbuqHsTWX90o=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=LgLDdw+ZqkTckA4mFvt+6o+TVZxNlHTnrRpgkJVdELZWwNb0bXItkkBGKWECemanf
	 /OZXW2pM1zl0ssQ+jNtwbGHUkVcioPlEuuOxzugyjzt/NbtFyTTNRG/2BKFpFHktPQ
	 bOkcoMwVGRsjQ/Aq/8iaAKtt84HeDoMZhTwSypKZVD88YyXVLB39Pd0sfkm+OGsIar
	 RiHtb+WJIbPNIRdd2Xjx0jvWE345dBEEEy8VvYdV4uOEfCqgOpkdbjHUYrGyIiCDog
	 eFad/cQKBY4/TxEyvfb2lGjN/RZlQy4XnIguj6UN1cL5QLDOjxRwglOKK0X8/B38cM
	 BfC8UE+JoOjqQ==
Date: Sun, 15 Mar 2026 11:19:35 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Simona Vetter <simona@ffwll.ch>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, 
 David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org
To: Pengyu Luo <mitltlatltl@gmail.com>
In-Reply-To: <20260315144536.515032-2-mitltlatltl@gmail.com>
References: <20260315144536.515032-1-mitltlatltl@gmail.com>
 <20260315144536.515032-2-mitltlatltl@gmail.com>
Message-Id: <177359157560.309332.9206480782210457963.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add Himax HX83121A
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275800-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,oss.qualcomm.com,linux.intel.com,ffwll.ch,suse.de,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 630FC2915E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Sun, 15 Mar 2026 22:45:35 +0800, Pengyu Luo wrote:
> HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
> v3:
> - remove '|' from description (Krzysztof)
> - drop description for reset-gpios (Krzysztof)
> ---
>  .../display/panel/himax,hx83121a.yaml         | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/himax,hx83121a.example.dtb: panel@0 (csot,ppc357db1-4): 'ports' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/display/panel/himax,hx83121a.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260315144536.515032-2-mitltlatltl@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


