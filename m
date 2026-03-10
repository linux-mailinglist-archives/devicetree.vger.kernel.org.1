Return-Path: <devicetree+bounces-273527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJCeBsUpsGn/ggIAu9opvQ
	(envelope-from <devicetree+bounces-273527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:25:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F535251DF2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C5980320F6B2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13743B19D8;
	Tue, 10 Mar 2026 13:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSub3+lj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB433A3E64;
	Tue, 10 Mar 2026 13:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148021; cv=none; b=S+7SaByGWVjNSGDDDjbJw+O7bfdps3Q2b44F2VRqVQm3jyHS9td/93kX3tEGvzG1TvQREo+JBH9gi+QilakFjXMvdTft4o9sYtg+eGoP96bk31Te1lRbI2GZAH1OxfIw9nHsW4D6fiQW4X3IDWG1ywRDlRv64Jkvp9f3v1KAhjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148021; c=relaxed/simple;
	bh=94nl0GEogTO/1dPQp9iWTYeOiVKIrSSXwuiM/IxEhOY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ShCVsVCo4n+ejCulmsfLG7ntdEW+jiulPJxR99VDKIpkFm/CVKInnC2tIPxfcZdkPAIXhcMpxaTmnehF6POi5r0ORFc1c8r58LGb8BSm3uFmPffSjvdFHhdgosKx+OdYCMepuZL1R0T9topcrc/MhNqF7q53lGSFmYbBTvwRHwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSub3+lj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6AD5C19423;
	Tue, 10 Mar 2026 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773148021;
	bh=94nl0GEogTO/1dPQp9iWTYeOiVKIrSSXwuiM/IxEhOY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WSub3+ljBZpowU3KgDaBxT4o59rvUmnkW6NrW5Y/mRGuMig37Fpsc4ZzZHDUyCaIx
	 hoD+qrxfTEHVBKKHaw6ntKm2j3wE7XjpFNjRTF91LgOxYGL3jBrp1Ldhy7NXXHjlEc
	 +OGFl7K25BYDPqwVnNeEomSpasXuzaPmo5gS6GjmSp8RXIYpvtrbZOUymm1hegqw3X
	 U3ddwsw+474yt+99ggZenxiLpX6gaN7Vpt3ccT5vjSNCQ/Aczie/7+97ivBUxWX9xw
	 ZuUmoXLP3lHeSYbAuDJi830Z7y2UFsNoaTy+KRchBEfWOfcLsMkw3WmMcowGJspOrX
	 uN9DYL8nf9ADg==
From: Lee Jones <lee@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>, 
 Matti Vaittinen <mazziesaccount@gmail.com>, 
 Matti Vaittinen <matti.vaittinen@linux.dev>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
Subject: Re: (subset) [PATCH] dt-bindings: bd72720: Add ROHM BD73900
Message-Id: <177314801939.2202398.642468671617212356.b4-ty@kernel.org>
Date: Tue, 10 Mar 2026 13:06:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38
X-Rspamd-Queue-Id: 9F535251DF2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linux.dev];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 15:11:12 +0200, Matti Vaittinen wrote:
> The ROHM BD79300 is almost identical to the BD72720. Main differences
> are the initial values for some of the registers. Thus, it appears the
> BD79300 can be handled with same software as BD72720.
> 
> Adding the compatible for the BD79300 enables people to use the real IC
> type in the device-tree instead of claiming it is BD72720. This does
> also help differentiating the ICs if appears it is needed.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: bd72720: Add ROHM BD73900
      commit: 405c1338219f0d0e272db85659ac8b9c2d19ac9c

--
Lee Jones [李琼斯]


