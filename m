Return-Path: <devicetree+bounces-260312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DfRA+vmeWnb0wEAu9opvQ
	(envelope-from <devicetree+bounces-260312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:37:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7400E9F945
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:37:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 537833054653
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13AFF2C08C8;
	Wed, 28 Jan 2026 10:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWj/kwNf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BDA29E11A;
	Wed, 28 Jan 2026 10:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596528; cv=none; b=iQagph8O1GfeHzsAxYhRXUTlr9nW8FjM9aYBoADpPTqb9kVh+9wq6g1jK6cGm566asIXTB6ZY+FKt0QbKOt0jJ9UnLod7j/JR4ztxkblKnWAo+5luzfv+uG+GsxlASwvGa2qqnbyqJYQTy1LrXSo0ke4a1DQtiDwRaog4oI684M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596528; c=relaxed/simple;
	bh=MMXlK/ZS6Dbv4x0b3Y1sa8UQ3/TvW2dIaUZPoAmHvlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EkVVcdANqmqDMmRuEonhIyxG0p0PN/I6bpw6g8DujRTfqPqU10AgNkeTKMDNpFeBwCgrxBY0DC2Yj0t7uRM9+/2LAToyxB+j04BUfA3vWuPVDulE5pM57aXr1qTFhnHANyGr4LcDaVwdO5OPMF1gkwV//wEjLgkrAT2fDSMBrl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWj/kwNf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0702CC4CEF1;
	Wed, 28 Jan 2026 10:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769596527;
	bh=MMXlK/ZS6Dbv4x0b3Y1sa8UQ3/TvW2dIaUZPoAmHvlM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bWj/kwNfVxLy4OxYnXPytcQQOfpTQpwHSNTyBBno96HRsuAUZHg0K9DFLVo7uW6hG
	 zwHMW9MPt8KX0FeZq5AIkSAO3sTvgFVpccdqbpVi6tudeXkaGWPAu9WmlDjkYlYJYE
	 iuVBQOFlzDN+knEKSKAj3HWxikC822RUl/FvblA4NsPTiDGkuPfd+27CDRJ7Qxw0f1
	 lWohvK5W5t7Hc426XWm/G4ZLlbINSISBnOCIHHZapyrDp1uaSh4UHeUWbrHlrB7X7Q
	 GRkcJRSJQYBYuHFtIRcRQhQYS9poeHyUOQ1U8ItrWyJPAuZwdb0ogUBoAGFGzgLC6o
	 55U9qRUs/9O+w==
Date: Wed, 28 Jan 2026 11:35:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Danny Kaehn <danny.kaehn@plexus.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jiri Kosina <jikos@kernel.org>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Ethan Twardy <ethan.twardy@plexus.com>, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, Leo Huang <leohu@nvidia.com>, 
	Arun D Patil <arundp@nvidia.com>, Willie Thai <wthai@nvidia.com>, 
	Ting-Kai Chen <tingkaic@nvidia.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: Add CP2112 HID USB to SMBus
 Bridge
Message-ID: <20260128-magnificent-faithful-otter-c4f900@quoll>
References: <20260127-cp2112-dt-v13-0-6448ddd4bf22@plexus.com>
 <20260127-cp2112-dt-v13-1-6448ddd4bf22@plexus.com>
 <20260127160217.GA3776731@LNDCL34533.neenah.na.plexus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260127160217.GA3776731@LNDCL34533.neenah.na.plexus.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,vger.kernel.org,gmail.com,linaro.org,plexus.com,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,plexus.com:email]
X-Rspamd-Queue-Id: 7400E9F945
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:02:17AM -0600, Danny Kaehn wrote:
> On Tue, Jan 27, 2026 at 08:47:48AM -0600, Danny Kaehn wrote:
> > This is a USB HID device which includes an I2C controller and 8 GPIO pins.
> > 
> > The binding allows describing the chip's gpio and i2c controller in DT,
> > with the i2c controller being bound to a subnode named "i2c". This is
> > intended to be used in configurations where the CP2112 is permanently
> > connected in hardware.
> > 
> > Signed-off-by: Danny Kaehn <danny.kaehn@plexus.com>
> > ---
> 
> Hi Folks (Intended for Rob or Krzysztof),
> 
> Wasn't sure the best way to go about this, but trying to see the best
> way to get a message in front of you regarding an ask from Andy S.
> 
> In [1], Rob H initially directed that the gpio chip share a node with
> the CP2112 itself, rather than having a subnode named 'gpio'.
> 
> Initially, I did the same thing for both DT and ACPI, but Andy S.
> directed that ACPI should not have the node be shared in that way.
> 
> With the last revision of this patch, Andy S. asked that I try to get a
> rationalle from Rob (or other DT expert presumably) on why the gpio node
> should be combined with the parent, rather than being a named subnode
> [2].

Because it is explicitly asked in writing bindings. Please read it.

Because we do not want Linux driver model affecting design of bindings
and DTS, by subnodes present only to instantiate Linux drivers. I do not
care about driver model in this review and I do not see any reason it
should make DTS less obvious or readable.

That's actually rule communicated many times, also documented in writing
bindings and in recent talks.

Best regards,
Krzysztof


