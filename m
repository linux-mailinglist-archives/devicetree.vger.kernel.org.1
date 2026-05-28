Return-Path: <devicetree+bounces-303732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKzfDwIAGGrgYggAu9opvQ
	(envelope-from <devicetree+bounces-303732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 10:42:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5885EED1C
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 10:42:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D59F306B1D2
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 08:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF463346A14;
	Thu, 28 May 2026 08:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPeOZoMM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A346E2D9481;
	Thu, 28 May 2026 08:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779957489; cv=none; b=rmf5W+Np7lWqEYuzjpLL5HZXOnMo6Mqj2+Rw7InDWfBOseKd9GSJuVvpNr1v7tq6QdcQtuwdXMH1i4fWvph8GFW6F9aCr4ASWyoAV7RgFsgzidfAGaj+2az3FHvJsA7PtGpZKKuvzhh41IoEnUtwxemrLhQ9uLyOWxGf0+uQeW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779957489; c=relaxed/simple;
	bh=qX+gyp7iLQbkhqCAl+ssQYzS2wiXMag3bhDmbPo6AWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qXdKyHhuttrIQkmS+ozSDFYLx6x/coCr6hRktCJw1bgTY1ybwjLOntAl7ZCRR+eD6I1GQ0M/GSOk5N7H8HT5Ct2uSbVZk9wOpTuQv0iTvH4TII4hJRhouY0EX3WKEDsHKoq7KGAkA3aA+fEyuB3ZxjTUusfZsWHzCmSkhKlMKCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPeOZoMM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F67F1F000E9;
	Thu, 28 May 2026 08:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779957488;
	bh=vKehSL1/3umU8OhujzkI2ikXJ6NcxCQ7iE1W7LsrXho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kPeOZoMMXw5BTIturArwsiZrVn8yBgzLeEEe1jfmLQslAxmY5ehSQrCU2Hy7XarC7
	 PEt/vYHLBW/YdBIrvPUV1Y6Ohp1tEU/WKlHv5S51y4BdIpVJ7dwh+BxLIAigwa+08e
	 HcqrwJgMUkZf/8UCbNAadNnOgsY//5i6YzFq+mj62Bvacu9oc0rCOczvPeieBgDm9m
	 cTkdwLaDCGFUWdZ1kH+4EhsJTW9c42BibYi4wVNF2wsCBDQUAdAHW7LiFjMRRzoZpb
	 RmmVwBZmHMX0IuPIAFFE1mK4ZXmqBmKFP+Ir0LIWIWrYGnu7mL2G9/POBLx7xu2YjY
	 4PosYRMiBu+rA==
Date: Thu, 28 May 2026 10:38:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Conall O'Griofa <conall.ogriofa@amd.com>, 
	Michal Simek <michal.simek@amd.com>, Guenter Roeck <linux@roeck-us.net>, 
	Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: iio: adc: add xlnx,versal-sysmon
 binding
Message-ID: <20260528-illustrious-outrageous-wren-51feef@quoll>
References: <20260527114211.174288-1-salih.erim@amd.com>
 <20260527114211.174288-2-salih.erim@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260527114211.174288-2-salih.erim@amd.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-303732-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0A5885EED1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 12:42:07PM +0100, Salih Erim wrote:
> Add devicetree binding for the AMD/Xilinx Versal System Monitor (SysMon).
> 
> The Versal SysMon is the successor to the Zynq UltraScale+ AMS block,
> providing on-chip voltage and temperature monitoring. The hardware
> supports up to 160 supply voltage measurement points and up to 64
> temperature satellites distributed across the SoC, with configurable
> threshold alarms and oversampling. The device can be accessed via
> memory-mapped I/O or via an I2C interface.
> 
> Supply and temperature channels are described as child nodes under
> container nodes, referencing the standard adc.yaml binding for
> channel properties.
> 
> Co-developed-by: Michal Simek <michal.simek@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> Signed-off-by: Salih Erim <salih.erim@amd.com>
> ---
> Changes in v3:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


