Return-Path: <devicetree+bounces-277461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J0COlULu2kSegIAu9opvQ
	(envelope-from <devicetree+bounces-277461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:30:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 676BA2C27B4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DC263081BDB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21DDF36F42B;
	Wed, 18 Mar 2026 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="hnjfVKeq"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83A736D4E1;
	Wed, 18 Mar 2026 20:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773865763; cv=none; b=ngmo5mzqlFKEFDKnRf+TX1rWxs3DgVxhfP1uc2AtndsHTtzkpNr5K4/eibZYDgTXMI+nk2o79FHOzeuU3Ol3etwiJ6wZxse4vwjsaQpJOxL6hhxMquBWl328TvAlxfcIzu8/CfaVRGxaqFR78nTfb7irs9DxhIKDi5B4q5tjHTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773865763; c=relaxed/simple;
	bh=3GBxvjkUjLZS+mY0YDkzk/ovJ5tICqpctmdz74FwzT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rr5nUfDYig0sIMExKNu1o+jdbXeTjy/NfZSAFcBviWmDMiclnLfB3FyOGm4Alo2KyX+HGZm3b2d4YbO9dVG0DtO2IB9TxN/uAaJDGeKvgE+wlDnrOKV264IUNeuaUndIUB4cS8aQvNP0/uunR2PsPUrCd64Q8tWADWjONUJyRA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=hnjfVKeq; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=kMEfzXsB7JKireizXoIe2FQNbvVD/n2jTrp8b4fyj/U=; b=hnjfVKeqsuUHHVlJjlufr4M1xX
	3YovllmITe/ZWh4+FMjnO+5wyV/T77V6hjaclb5ivDNcIu8I5YZUxrJjkdQHiXnek7vcUxmVMrbFV
	0UTFYzqE9ua9w/z+ekkp1rrchw9iw9LgybdJE2jTWfCRtrPwcftAc08XdcmbVKmcufWOmUtzevYnQ
	3iSCNiqL93YKMlS8mjAovmYCrVo54Gs54uulkmjHwBeOLZAOX97rLV4KyBGPpIYuA8iJFEEhyaba5
	HPgAdWZx8xHoYXW0fBkO/J78RIBzMXIG8zOlTNLPP0zNJkrbmuFGnG3/fK2dzGENRkrB08fTUm0bL
	b8dU98SQ==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1w2xVu-00000005fov-192c;
	Wed, 18 Mar 2026 21:29:10 +0100
Date: Wed, 18 Mar 2026 21:29:09 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Shuwei Wu <shuweiwoo@163.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] thermal: spacemit: Add support for SpacemiT K1 SoC
 thermal sensor
Message-ID: <absLFdJ8GypLh8te@aurel32.net>
Mail-Followup-To: Shuwei Wu <shuweiwoo@163.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
References: <20251127-b4-k1-thermal-v1-0-f32ce47b1aba@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251127-b4-k1-thermal-v1-0-f32ce47b1aba@163.com>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277461-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[163.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aurel32.net:+];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aurel32.net:dkim,aurel32.net:mid,aurel32.net:email,aurel32.net:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 676BA2C27B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 2025-11-27 02:44, Shuwei Wu wrote:
> Introduce support for the on-die thermal sensor unit (TSU)
> found on the SpacemiT K1 SoC.
> 
> Include the device tree binding documentation in YAML format, the
> thermal sensor driver implementation, and the device tree changes to
> enable the sensor on K1 SoC.
> 
> Test logs:
> Hardware: OrangePi-RV2 integrates SpacemiT K1 SoC
> Kernel: 6.18.0-rc4 mainline
> 
> Verified that all five thermal sensors are registered and reporting
> valid temperatures.
> 
> $ cat /sys/class/thermal/thermal_zone*/type
> soc-thermal
> package-thermal
> gpu-thermal
> cluster0-thermal
> cluster1-thermal
> 
> $ cat /sys/class/thermal/thermal_zone3/temp
> 28000
> 
> Dynamic threshold and interrupt tests passed via sysfs trip_point
> manipulation.
> 
> ---
> Shuwei Wu (3):
>       dt-bindings: thermal: Add SpacemiT K1 thermal sensor
>       thermal: K1: Add driver for K1 SoC thermal sensor
>       riscv: dts: spacemit: Add thermal sensor for K1 SoC
> 
>  .../bindings/thermal/spacemit,k1-thermal.yaml      |  76 +++++
>  arch/riscv/boot/dts/spacemit/k1.dtsi               | 101 +++++++
>  drivers/thermal/Kconfig                            |  14 +
>  drivers/thermal/Makefile                           |   1 +
>  drivers/thermal/k1_thermal.c                       | 307 +++++++++++++++++++++
>  5 files changed, 499 insertions(+)
> ---
> base-commit: f5f2e20b1cbc5f9ea20b372d15967b24921ede19
> change-id: 20251124-b4-k1-thermal-eca906e6dd7a

Thanks, I confirm this works fine on a Banana PI F3.

Tested-by: Aurelien Jarno <aurelien@aurel32.net>

Regards
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

