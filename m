Return-Path: <devicetree+bounces-263623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OggNNBnh2mGXgQAu9opvQ
	(envelope-from <devicetree+bounces-263623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 17:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 982BA106831
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 17:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF88930055A0
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 16:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6213336ECD;
	Sat,  7 Feb 2026 16:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRJBHUXz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825CE33469D;
	Sat,  7 Feb 2026 16:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770481614; cv=none; b=HMGeZ4vIYGuhOUx3CpOQM7YRnuIcqU/y3yAI5hsVX1uTY4S1IDNPEXELaNjv0ybS6GD5oMKwO9ZjmgmYDXf3z9JTgnUsevZ1vM1WYt/lSa0cPHJiUcAcwz5BLqlXtjsRnk7DXGCxvQGky2Hu1oawvyupncPfTqNDhAR9TYtAvyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770481614; c=relaxed/simple;
	bh=951CCdYKz52bkrmdvtGjkZfHKmN0gQC7AGqBUbiwsdY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gKj8dqhsiL6DLzr1BBCPtv811HoVrLKsMBkoyaGOO6XubsFNAsAFWV7scsYOkoTs/0/pl//9jxMqR73E6HHONkY5WBy2xGuoGu5Idpp5djuo3ZJHa+aQu6GbyNNnJ/jAyvZUKT7uFNtc1V6a8cex4ksLkvNyamyi9026Blx4Q+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRJBHUXz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F97C116D0;
	Sat,  7 Feb 2026 16:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770481614;
	bh=951CCdYKz52bkrmdvtGjkZfHKmN0gQC7AGqBUbiwsdY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=TRJBHUXzEJbNeBq8N7pqpkfGk74AXcHMsHPVg5Cu6wNQlBkNwkLW7sQ7amopX2rJe
	 /E9nIs2VurQtDyHR3EbWDs77Q1BVbzjCmJqTOTp+XcqCBftsb5V0bCY+KUoILnxQOF
	 Ay6zAaNFHyLjFx9mKRs8rYluMYHsDS3MfeuNsjr3lgnqkX5fNXzK4bsd4JspvvK1XE
	 XaJjVtZMAHeDJBrVNgkSG4XKxg7PHl6xiXqk2S2UIUc7F8fn/Ylc3Xt1+RXl9kaqst
	 A3XXFi10W17xFpMUXmhn37BNtS4OGD15hn16Zu4AWJe8LV7y59+kJDG/2brn5lX2HJ
	 4r0EEsWwBCYWg==
Date: Sat, 7 Feb 2026 16:26:43 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
Message-ID: <20260207162643.5599a3ac@jic23-huawei>
In-Reply-To: <34824fc2-af03-48e3-98b8-04fae28c9a64@gmail.com>
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
	<20260201-cm36686-v1-2-4949a2a9ba63@gmail.com>
	<eb922433-3951-409a-a397-b48efef57b7b@baylibre.com>
	<b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
	<086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
	<372c9172-ea01-4a3a-b737-3f7f14519791@gmail.com>
	<0b001503-5882-446c-a0df-642a9f75e7e3@baylibre.com>
	<34824fc2-af03-48e3-98b8-04fae28c9a64@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 982BA106831
X-Rspamd-Action: no action

On Wed, 4 Feb 2026 18:34:50 +0200
Erikas Bitovtas <xerikasxx@gmail.com> wrote:

> > I assume you have the hardware and can do a test to confirm this. :-)  
> 
> I tested the formula used in Xiaomi's driver in the mainline kernel and
> compared it against the downstream kernel, and the lux readings match between
> them. Therefore, I suppose this solution could be good for now.
> Although my formula for calculating scale is wrong - it should be inverse
> proportionate to integration time. So:
> 80ms -> 1.28
> 160ms -> 0.64 (what Xiaomi uses)
> 320ms -> 0.32
> 640ms -> 0.16
> This can be achieved by multiplying als_trans_ratio by integration time used in
> Xiaomi's driver, and then dividing by integration time we have set up at the
> given moment.
> For example, suppose we set our int time in mainline to 80ms
> 16 (als_trans_ration) * 16 (160ms / 10000) = 256
> 256 / 8 (80ms / 10000) = 32
> Starting here, we calculate based on how Xiaomi calculates scale for their values:
> 32 * 40000 = 1280000
> val = 1280000 / 1000000 = 1
> val2 = 1280000 % 1000000 = 280000
> And that leaves us with scale of 1.280000.
> Of course, comments on how we came to this value would be included as well.

Only think I'd add to this is that if we have numbers for
a sensor in a specific device, it's common for that devices
packaging to attenuate the measured light level a little.

For that reason we do sometimes have a tweak factor in DT.

Jonathan

