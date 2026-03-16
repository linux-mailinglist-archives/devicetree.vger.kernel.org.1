Return-Path: <devicetree+bounces-275987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULSwLNa0t2nUUQEAu9opvQ
	(envelope-from <devicetree+bounces-275987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:44:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E63C295C9F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6D593004C50
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C892D3502AC;
	Mon, 16 Mar 2026 07:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pk6mJv2V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5ABD34F48A;
	Mon, 16 Mar 2026 07:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773647029; cv=none; b=cjKlcLTnjni9VANq4JT/4gSkren5cubDv+Y/hfrrsbndEvXd3PaxyJWiFDjIs+W2ubpBsQxfUITlUwT2euYWmVtrWo9gEQ5opq/ZgqBsjKnWQdqZfhEI8FTQTlSAWC1OSoEORXUmn0HycZ+RtkzL1u2RpMLSAXHb9/7i0UzK6Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773647029; c=relaxed/simple;
	bh=fjF5nSUgO5mXuV+61RA/Pt5kKV9oNBnb3Ixg69mjzf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TwBxJF/WmuSB9Pog6ik4AB5tuTHYuX+bW4whUPc91yKwRQYgDnaGLX0D1cl+CwvQTVKpulU2aIMYn6pyCvjXEIuePFjBUnK2v7q9tQCdsvlS5EEexABLMG6Q87LULRm2RO0DOg2908+8HdEnAo9mi1yEYE2h7KMlKO7uDGRa8H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk6mJv2V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC32C19421;
	Mon, 16 Mar 2026 07:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773647029;
	bh=fjF5nSUgO5mXuV+61RA/Pt5kKV9oNBnb3Ixg69mjzf4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pk6mJv2V01hlV5iUWtqxex4dcaX3ZlgNb3XbKbZtAoiRLk8lSdx7w95yuQeLCJ/3+
	 wUdtP4xgcAEYJtL0ahTEv5lNP1neJp8wSpyGRQvhOTJJ7lnSJ8mKywAFcpEcH9/N1+
	 D8uh6GD4hiKWhPZ0KHZ7MpLmSHa31IqLIu03h7GB1BjUWTeqlaEaryZvTwiROg28Bf
	 UiPeI+nOD/lLl0G9drxBQB8qPm7mDamL9v6eJdFpgl8kHmmiSR059DsMFOuRaUitW/
	 8DqxlWaBIdG4Dk4aHI76AguhGoSiHf8DCvujCvyzWkVSV0xn76yZoiMRMGywUiyVPP
	 5PNlfHTfnXBqQ==
Date: Mon, 16 Mar 2026 08:43:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] drm/panel: Add Himax HX83121A panel driver
Message-ID: <20260316-accomplished-cicada-of-contentment-1cbcc6@quoll>
References: <20260315144536.515032-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260315144536.515032-1-mitltlatltl@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275987-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1E63C295C9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 15, 2026 at 10:45:34PM +0800, Pengyu Luo wrote:
> Add a driver for panels using the Himax HX83121A Display Driver IC,
> including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
> Matebook E Go series (Gaokun2/3).
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
> base-commit: d517cb8cea012f43b069617fc8179b45404f8018
> ---
> Changes in v3:
> - remove '|' from description (Krzysztof)
> - drop description for reset-gpios (Krzysztof)

You made multuple other changes effectively breaking your binding, so it
does not even pass tests.

Best regards,
Krzysztof


