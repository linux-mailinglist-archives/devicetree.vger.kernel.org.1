Return-Path: <devicetree+bounces-260924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKFYI0GFe2mvFAIAu9opvQ
	(envelope-from <devicetree+bounces-260924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:05:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBBFB1CE4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:05:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEC3B303AAA2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45B92DEA90;
	Thu, 29 Jan 2026 16:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8ZIlCMv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C076D26ED3A;
	Thu, 29 Jan 2026 16:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702472; cv=none; b=ISXFV0PfDE2aNqSehROQjFmz7lz7DCIzK0crFJlv/dm/259quzqdBj4AfztOdm3+iB0ueNZtgk/wOCUgKnHLuDiMOxOuvAzOZtxrQ6kjIdx3vFeoP5bli0vfwcUJJqGPVxwCINa7cQ6dGilDeii5PYZ2SgT3XWNrsXbLLC/LNxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702472; c=relaxed/simple;
	bh=ZTj/LhF2Lc4WMb5OR/6zv1LDe7MLi0KYdGoJ7tZEpLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aTfAbDNEWRJYn/s+nHpU1/wAgKSS/axVhlMqbRVcmdWPAzuAikMzpnx6mGjuXTJ15RcEp9Vvlk/KiUs1/JSI13Gm13Ooj/xUTGQO3LGrBI3EJIm9+qerNx9bNO/SDB00+sUQNSj+tEjxtN5WRST2a/ZZLa+aecVtRyza3G6TjII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8ZIlCMv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 376CDC4CEF7;
	Thu, 29 Jan 2026 16:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769702472;
	bh=ZTj/LhF2Lc4WMb5OR/6zv1LDe7MLi0KYdGoJ7tZEpLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q8ZIlCMvkLJq+S1Vy0EiNQkQ3bxWeeE2ipJQcPHK3o8O2HZe7KCN/dxsDtD6KpNUv
	 8qMUaIYEqSxsLVJuWyIIe1+6vvxpA7gM2K3kqN+ZYKdfe2GC0g51TvoAOdY5aF7P12
	 wqf/YxLLwKX8cX2VQbtPQE4Y8z/USQKTy+d9qDFK7BE/DYqwP/BeRGMhztdGli+nj4
	 0594XRhIGQ8m0yeVqycJzF5XXfMZR/Uatk0yU/co5BlCs6ozDplkuVqivL9b+KjXtW
	 qNUxAj7TMxPW+3MzIVVXjNqBiAD8HbQ/wDM1DPG2GpTjGUSeifzkZ+heiL3c58dU80
	 GYAqlkzBROlYA==
Date: Thu, 29 Jan 2026 10:01:11 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Danny Kaehn <danny.kaehn@plexus.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	devicetree@vger.kernel.org, Arun D Patil <arundp@nvidia.com>,
	linux-input@vger.kernel.org, Leo Huang <leohu@nvidia.com>,
	Ting-Kai Chen <tingkaic@nvidia.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Ethan Twardy <ethan.twardy@plexus.com>,
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
	Jiri Kosina <jikos@kernel.org>, Willie Thai <wthai@nvidia.com>,
	Benjamin Tissoires <bentiss@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: Add CP2112 HID USB to SMBus
 Bridge
Message-ID: <176970246975.1099959.16796622318524310553.robh@kernel.org>
References: <20260127-cp2112-dt-v13-0-6448ddd4bf22@plexus.com>
 <20260127-cp2112-dt-v13-1-6448ddd4bf22@plexus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-cp2112-dt-v13-1-6448ddd4bf22@plexus.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,vger.kernel.org,nvidia.com,kernel.org,linaro.org,plexus.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-260924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2FBBFB1CE4
X-Rspamd-Action: no action


On Tue, 27 Jan 2026 08:47:48 -0600, Danny Kaehn wrote:
> This is a USB HID device which includes an I2C controller and 8 GPIO pins.
> 
> The binding allows describing the chip's gpio and i2c controller in DT,
> with the i2c controller being bound to a subnode named "i2c". This is
> intended to be used in configurations where the CP2112 is permanently
> connected in hardware.
> 
> Signed-off-by: Danny Kaehn <danny.kaehn@plexus.com>
> ---
>  .../devicetree/bindings/i2c/silabs,cp2112.yaml     | 100 +++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


