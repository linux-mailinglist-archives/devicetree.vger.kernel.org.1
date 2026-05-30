Return-Path: <devicetree+bounces-304574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIsLIjCRGmrK5ggAu9opvQ
	(envelope-from <devicetree+bounces-304574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 09:26:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D097660B946
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 09:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D88BE303814F
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 07:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EA838E8B8;
	Sat, 30 May 2026 07:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP1Rll2y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746D38F65F;
	Sat, 30 May 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780125995; cv=none; b=k8ZoDImYF4DcRi3zUFEp4InOHLmiBu3RGJ3rl2Lfmhjc/76GfXY418eXP8T70xEZGv9BGz0h0eFygL0dEZbOeIcDDhwX/o2EByGJpC0lv1wW34Vp9mYp0eyyHuQ0VumB0EGrcWDOlPvG0kry9sNidwvN+tl2Tnesqkh+5O7Z/As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780125995; c=relaxed/simple;
	bh=kS0jabsrJ+NAw+YDMiPMiTht6r2CulN5YPt2svf8qN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=noCBcWNM2QQB0UUEaqdkg8aPRkB6GjzDMTRsxDusTvg6J0Se8gHhRtA8GGrYkxKHI2F9eQoILa31OCo+XDgCMjhKVv0ypzZtheOiCuSuSbLLtO4Fi1WmaEswW+MEAH/Vux7VCIaaayFKDSDxJ8DrUDJnP3EmPJeM/7gLAQEnMFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP1Rll2y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C1851F00893;
	Sat, 30 May 2026 07:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780125993;
	bh=PqWZMesufGSADxpTqQPlSy22s5kraAgknEeQvWkj2xA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TP1Rll2yVM0TvwuX8sXHW+0nAF5SsZtlGnmJULUJ4Mhyd/6ehbAe1aUJgW7Os7X9/
	 Y8ttun9KqKI1m3elc8lTKji8D1tH42OhTCJXIyLmggiQ+UkgqY1eUkR58sO+se2itt
	 ar5waRqM6WiLdzF1Ka+YKwKZ+JR5Qu8OvSBvxEXQ20YQtwazKtlFPkGZlPSZFi1hqy
	 edBDCTbd4u6R6fongzITMDB/RG2qXJRzVwe5S5gx0HvvNkRlzDgoUZ+8/Xr/to9GHD
	 vSb+yGRgwdFMQgGEVehMzM/oT7Cs5l/ahtIfTZN5FbbvL++tW9eXGplZ5YbGGjyz0t
	 ecN7VJRnpboNw==
Date: Sat, 30 May 2026 09:26:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260530-certain-goose-from-neptune-96e8ae@quoll>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
 <20260530031739.109063-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260530031739.109063-3-macroalpha82@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304574-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D097660B946
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 10:17:29PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.

Implement feedback from v3. Subject is still incorrect.
	
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout, however unlike the icm42600 driver we
> require a interrupt-names property be present.

Why do we require it? Who needs it?

Best regards,
Krzysztof


