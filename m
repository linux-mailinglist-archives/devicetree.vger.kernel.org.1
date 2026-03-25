Return-Path: <devicetree+bounces-280240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ9vKIWYw2myrwQAu9opvQ
	(envelope-from <devicetree+bounces-280240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:10:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCCB321348
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9038D304184C
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3613C38C426;
	Wed, 25 Mar 2026 08:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWdhx9/2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF02396D06;
	Wed, 25 Mar 2026 08:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774425904; cv=none; b=MGgtfNStd5qfnUr2BhYm9cOSMQrdBD1cBgYIj7v4WquH1JnXMithCBq2STMdEvUVo3O/uTGUtPnfG5oF6tWvdspzoIzQuWje6aj2Js+rzmXUtrxYD0Sagz3BlPAnpT04WLp/0tbsk6g7ZTs6yeEi/qs9luP1MoTxEiL2DtxKYzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774425904; c=relaxed/simple;
	bh=5vqak9UDmdggJ3vooSi7dArYnFYboeKAY+Wsugg2BFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFveqU/ab2NyFZNTL3qaJDRUN5tmc+lB677iAv9XolbrV/YONAZOu4zldfxjufsYJoJr3Cfyh0FR8wgN4C0Ok+7nJh1bPf1mHQ3hJr2fEnnJgJOnIQbLyHHC9UtHNvaFAXH/RHGHZ5grjgQ3JjaqqOjho89epOVRpbwwlyzd4tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWdhx9/2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B00C2BC9E;
	Wed, 25 Mar 2026 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774425903;
	bh=5vqak9UDmdggJ3vooSi7dArYnFYboeKAY+Wsugg2BFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DWdhx9/2uoK1a2TviashbAZUBwZ3udXr8g5mWyqgrW6JcQMXKdrczAFv1Df51IobC
	 /eDZudHLlIMDtyI+1HMCl8/UtW8PgHnMOgCSuu/RCiG9rsQFxGxcWha7mQkjEMxbMq
	 aYSF1l1cWF4kYw7zme2fbRvSG3uXr2dkMDScReDwSSWE+mBf5VdSw48av8l2/rKo4Q
	 TwjhiJaYiLT/TzFw1G13ih6VGefb58E/pzu8TfYpQtA5201T72S6OUXBsAKqSkCoRL
	 lU7RwryotJ89ZadmxA5W0sISYWKD4hRiOo92DKouLXnAhAMat+rnmrYDQJqiNpaOxJ
	 amyi7QIXrn7Dg==
Date: Wed, 25 Mar 2026 09:05:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Siratul Islam <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF
 sensor
Message-ID: <20260325-gentle-earthworm-of-progress-1f9f46@quoll>
References: <20260325063254.18062-1-email@sirat.me>
 <20260325063254.18062-2-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325063254.18062-2-email@sirat.me>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280240-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1FCCB321348
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 12:32:22PM +0600, Siratul Islam wrote:
> Add device tree binding documentation for the STMicroelectronics
> VL53L1X Time-of-Flight ranging sensor connected via I2C.
> 
> Make vdd-supply required. The device requires power to operate
> and the property should have been required from the start.

That's ABI break and device for many years was working fine, so this
should not be changed.

Best regards,
Krzysztof


