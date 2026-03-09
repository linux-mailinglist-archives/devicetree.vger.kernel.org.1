Return-Path: <devicetree+bounces-272886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G5qJFC4rmlIIQIAu9opvQ
	(envelope-from <devicetree+bounces-272886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:08:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F04238774
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB5FF309DC5E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91FEB393DC7;
	Mon,  9 Mar 2026 12:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="mADDQ0jO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB6F3A4F2D
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773057838; cv=none; b=a/Eyx8BK61ZeNqXcPlHyEPnTSm7M6Y7uuprSanpxeyyR/mZ3p7BkHrCP9esd5gEw+ka8P20A7y9jAMda11ybQ8Gjx0euNOXlfCH6O+oXS765mCRPUjHpp59VgBNnNoQIR6iKi6OBxtJwYXcjd786FHTuePMPVZvWNOj/2ktI/ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773057838; c=relaxed/simple;
	bh=+TAmd42UIaglHGE/3bX49QcRlO9QTc2VdzRDQrqceZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YD7A4E+jU3iGz1T5Kqttyo7FEyUGxd2dAprYuKhL3WA64YSiz/3WO6Fgu6LTqC2HkTg3hXeuaBBd8VmCemOaFIpaLbnfqHPeqJ/Rv0r07ZhqblzpuZz3BSDo1tOjapaYoKgL7wAccaN6GEpAWbI0mtxj8j91n7ndX3SxezBxAS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=mADDQ0jO; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=5Hiy
	aThHq3+rh7mDIEUL8bioSnbtaPFQO4u2XnbzF2w=; b=mADDQ0jOZPZQC9iVXtKp
	pFkqMFjzhNDMkygEPX+MtPBbb0vcBB82wBcK7A5uIIpNGqw8f3LArdbH2tLafiAU
	K61eKhYIuvduFmQWA9tKq96t60NOo6D71MjkqqTVaqmmYENGqgL4HTMMRN2T33yk
	oM8i/sEnxCY9T4iL4XU6w2/ZGYUSN0Erj3+h4LXM1D7Daqa4MRRHngSrRcygDC9z
	J4m8tjUfXMsdK8R6jC0IooOcTqxCqyDZpcVNkzOk4L9cdJkWY2trzFKTg2XF9b+C
	1qg8vXmlduVlCrrrjB/GUjt9kg3GSsye2D2xvxNkJ3ahbRba4g/AKyrgL4qEQc1u
	lg==
Received: (qmail 2766109 invoked from network); 9 Mar 2026 13:03:55 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 9 Mar 2026 13:03:55 +0100
X-UD-Smtp-Session: l3s3148p1@R11pMpZM3tkgAwDPXzF+ANZpdrMKUeLI
Date: Mon, 9 Mar 2026 13:03:54 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: dw: Update maintainer
Message-ID: <aa63KjktVReu2QZT@shikoro>
References: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
X-Rspamd-Queue-Id: 04F04238774
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[sang-engineering.com];
	TAGGED_FROM(0.00)[bounces-272886-lists,devicetree=lfdr.de,renesas];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.930];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sang-engineering.com:dkim,intel.com:email]
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 01:51:09PM +0100, Mika Westerberg wrote:
> Jarkko does now work for Intel anymore and since I'm currently
> maintaining this driver, update my contact information here to make sure
> patches get Cc'd to me as well.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>

Applied to for-current, thanks!


