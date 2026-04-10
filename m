Return-Path: <devicetree+bounces-286375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKBLFnqK2GkIewgAu9opvQ
	(envelope-from <devicetree+bounces-286375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 07:28:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 958D03D24C3
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 07:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3683F301F188
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 05:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F399233689E;
	Fri, 10 Apr 2026 05:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="l6L9z6vH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C584030C372;
	Fri, 10 Apr 2026 05:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775798898; cv=none; b=mBYEa6Q3MlmlCzxg83oXRYPwC3bglYa/t0FyNFkDXMNHsWmB6G/UMH80n5hy8rMNBCLbfzhqGZhf3mBiFcZjIuaMDa/e4QYJ+lH86PAx8E2TKdrfW2z6xS3wwO51Jay6vUqcveSaPZhX+3WqtcFsqSjt/7O2+cxl/pd55fSYEMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775798898; c=relaxed/simple;
	bh=6dnXu8Wi8vAo69F1yUajOZbuGKTHese0VXyuNBbrfcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bWG3/VKeBQ6CXU5H0atyN1TrNe+aBTQ99/cnb0UfPY7d59obUDzTNxo3+ICN0J4Lnzp85P0jTXBkCFK9X1h7k/t9r+Y/KqKL7v8HIRM4RDpHCP/31Tb646hKWLpqImIhurxWAEQrZec4gu2HnFy1XDKIDPWpDY7xTIEzOiuCQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=l6L9z6vH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCF23C19421;
	Fri, 10 Apr 2026 05:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1775798898;
	bh=6dnXu8Wi8vAo69F1yUajOZbuGKTHese0VXyuNBbrfcg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l6L9z6vHS9MLr6AW76tocahWNb3V1EEneFQO9vSnejhclMreNLLLnr7SsZ5pLAQje
	 /piwBTnntg0xDGZn3ayVNqyIhuFkcNLxVC4zXnBFesVd9B4FNW4K+J2wQd628Ud9af
	 onaCzVyfsvrOBA9FD+ooUFYdilTeQAtCqDpkMVrc=
Date: Fri, 10 Apr 2026 07:28:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Brigham Campbell <me@brighamcampbell.com>,
	Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 3/4] staging: iio: magnetometer: Add QST QMC5883P
 driver
Message-ID: <2026041027-hatless-swinger-eae1@gregkh>
References: <20260409210639.3197576-1-hardik.phalet@pm.me>
 <20260409210639.3197576-4-hardik.phalet@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409210639.3197576-4-hardik.phalet@pm.me>
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286375-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: 958D03D24C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 09:07:41PM +0000, Hardik Phalet wrote:
> Add an IIO driver for the QST QMC5883P, a 3-axis anisotropic
> magneto-resistive (AMR) magnetometer with a 16-bit ADC, communicating
> over I2C. There is no existing upstream driver for this device.

Sorry, but no new iio drivers should be added to staging.  Take the time
to do it right and put it into drivers/iio/ from the beginning.
Otherwise this will just take more time and effort to get it into that
location in the end (i.e. doing it right is simpler/faster.)

thanks,

greg k-h

