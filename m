Return-Path: <devicetree+bounces-320093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TTp8MtSmR2rccwAAu9opvQ
	(envelope-from <devicetree+bounces-320093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:11:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 295E1702393
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:11:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WTWi0jR7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320093-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320093-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 389E6300A759
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2C43CF04C;
	Fri,  3 Jul 2026 12:07:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7A23CE096
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:07:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080478; cv=none; b=FkZQXNGUZJsd+UFP+Ls3Ceq9qc7kDPXjmGbqAeGhAmetrnUNjpVXbvd9o4EXmjlx5T7TVwaSk90JQOa7P40/SU2C2Z7HZiAifiwCkmVuQjI1G5RMciZ0fERUbwTQPPQ2Y0H2N8zy2MhlNzNMMpSjI1dRDrVW2o8IIk8xS3hDcXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080478; c=relaxed/simple;
	bh=PjYdTZtX7lK06ob/wWBa1ApljcuOIaY/cFe1TQGyGz4=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KJRbmjjp8w08HxW4WjzYzHz97ibjJKHq/0+Mi83gDlXvKMJ1XCF8knHCu7w1S3zg2mUncQAzADi07+e/tbUVqJRvH6HIt+/LjFhSarKickOsuMKJ4/J+Ww96lC2ilR+0fg2l45Ly5oGjSI0Reo+7hrBcyHpd3Rv1mGni8LG8A9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTWi0jR7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34E3B1F000E9
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080477;
	bh=PjYdTZtX7lK06ob/wWBa1ApljcuOIaY/cFe1TQGyGz4=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=WTWi0jR7xVCoxYKYqgxGq2fcoz5SNKI3/szg5jvDubWkKDZOL52ioyEKLmIcyAcpx
	 sSmaP4ca9BOE32xZQ9v/sp22wjWqCBoK8xAAhOFCFxIPV/lSpuXiy5uBIeZd4Ka8au
	 mupp6ItSo4dd4lZOsZRKtj7kZ2PFM46nBtvA66Y04MEHJfDZgsbpHqeoMvYwyYitw5
	 ifd1bhmOq1HXeR+tLGHkv/exz8r4DCMSObfom4g2+N9u3PhrdGMmBkOB+MTMuDfCC0
	 JDSpo4w5XSF9yHQ+6OG+Vmmz0dYmxDGap8vxmfspH2EKlva+vLm8tcfIyjsjzg5K2w
	 ZqPvtvwNRyAHw==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5aebf9a509eso535064e87.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 05:07:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro2PNPJMNophvf+b18+uzdkdrw9PXEHvHWgC2fepYfAQWBbrhKgjsEUrrCs2eUuFzbYg1HPK/T1Jw01@vger.kernel.org
X-Gm-Message-State: AOJu0Yy46uedlccrDLqVNRnQIeSKhsY3CousYqzg3pFKf4MmOcHKaxTP
	h+QeS+NeUiTfDqiuEZsH+cR0eNl5J5kIOWNnbwo3NOittpwHeWKZrsHkK393OWSTJ1AGQT6qAUZ
	tck+pe0GqJZ0346jCzRuWshlWf23Xa2wvSY0r9u071A==
X-Received: by 2002:a05:6512:4cd:b0:5ae:a9ec:9fc4 with SMTP id
 2adb3069b0e04-5aec807d281mr1746358e87.63.1783080475763; Fri, 03 Jul 2026
 05:07:55 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:07:53 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:07:53 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703110317.1283411-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-4-wenst@chromium.org>
Date: Fri, 3 Jul 2026 07:07:53 -0500
X-Gmail-Original-Message-ID: <CAMRc=MfPC=Jm6RFkCYG6vsYQiWHxBeNq0L59rwahF_6Fu2Ledw@mail.gmail.com>
X-Gm-Features: AVVi8CfXtDf2gFZfiLD1uTcC0ptlbG8CkVr7knkjsqBhpkA4tCpa69WB2eeLrDU
Message-ID: <CAMRc=MfPC=Jm6RFkCYG6vsYQiWHxBeNq0L59rwahF_6Fu2Ledw@mail.gmail.com>
Subject: Re: [PATCH v3 03/13] power: sequencing: Add pwrseq_power_is_on()
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320093-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 295E1702393

On Fri, 3 Jul 2026 13:03:04 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> The power sequencing consumer API already does power on state tracking
> internally. Expose the state to consumers through pwrseq_power_is_on()
> so that they don't have to reimplement it locally.
>

They wouldn't be able to do it as the field is private to pwrseq core anyway.

In what situation would consumers need this? Typically you know what state the
handle is in if you control it.

Bart

