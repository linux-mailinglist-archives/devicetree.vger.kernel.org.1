Return-Path: <devicetree+bounces-139396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1272A15B44
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 04:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0DE67A2B07
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 03:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0872B282FA;
	Sat, 18 Jan 2025 03:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shikadi.net header.i=@shikadi.net header.b="esFiz1p+"
X-Original-To: devicetree@vger.kernel.org
Received: from sphereful.sorra.shikadi.net (sphereful.sorra.shikadi.net [52.63.116.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184732F5A
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 03:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.63.116.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737172083; cv=none; b=r0ZddCMtXlH4NXENL+YdnsAUCNfyCx62VaFEPvTj12j/eAXL7ByCXLXBcLkvP35c0pf1nTpH+EHNq4/Mg92XaO1dO0ZTYCJTdXaLboZDvoI1YFKss2UY0Ja2iQqeY2kXpDsNIEOavidnKI4exqOO83CBSdel/oygxYwy29bCDr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737172083; c=relaxed/simple;
	bh=tJqiTf3D5K8R4dSy/xVNII7let7z8Z3Mge96cwI6Ujo=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=bn/1OM9gdVXPZoDv3oTF5yl/z9BTH6js7FtbWQObgmRBqJCrxvwNCWm6UgiiUfS8cELiT2BYHLtS2QI8Pr9hMJWNNlrlaPYBHtpAAi2YdY8Z2eLSuwM5AppdTYrK5jtZMLEzaPqZBy58u/Dcij6nKI8jgaRfEnXWl3qzcg7U4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shikadi.net; spf=pass smtp.mailfrom=shikadi.net; dkim=pass (2048-bit key) header.d=shikadi.net header.i=@shikadi.net header.b=esFiz1p+; arc=none smtp.client-ip=52.63.116.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shikadi.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shikadi.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=shikadi.net
	; s=since20200425; h=MIME-Version:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References;
	bh=87TZ3NfjcQJpcSrkxPXf9IzNQ8GP+NRCuEIf0LHftqA=; b=esFiz1p+AeOSKu2Q8M/zUMaIYB
	D9IuzQT9T9TvYqwyRS9MM4eRVIxxK1Qmo3RlFANUityr6bQ19ZI5rvrgTyhIGfgb3Zi7cuchqLf1T
	2+viBtYdSjY+ebyXJY6FMufg9M2ZK0rOBLjKuhhgln7ls9eNI9cJ3sByMKO4nGYj1Tz3miEQVwE6Q
	M/V761p3RUMLKVkuiaSgVj7DNpZqBQn7wVu1yzeW0Z0yT2tMhFodVZw7lf4fcSkxIODYl8F/zD0th
	ugNcZ/50F5QVVUU30f3QxOCs3fpDEJgu091DqyogypxfcXnGVcZGvXX97G+H6Q0JTMfRp60z4UDPD
	aPXSRFRw==;
Received: by sphereful.sorra.shikadi.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <a.nielsen@shikadi.net>)
	id 1tYzSO-0001dY-2J
	for devicetree@vger.kernel.org;
	Sat, 18 Jan 2025 13:25:08 +1000
Date: Sat, 18 Jan 2025 13:25:06 +1000
From: Adam Nielsen <a.nielsen@shikadi.net>
To: devicetree@vger.kernel.org
Subject: How to pass a label as an overlay parameter?
Message-ID: <20250118132506.0447af6c@gnosticus>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi all,

Is it possible to pass a label to a device tree overlay as a parameter,
to control where the overlay is inserted in the tree?

I am attempting to use the ledtrig-gpio module[1], which works by
inserting an extra field in an LED definition:

  led_act: led-act {
          label = "ACT";
          gpios = <&gio_aon 9 GPIO_ACTIVE_LOW>;
          default-state = "off";
          linux,default-trigger = "mmc0";  // change to "gpio"
          trigger-sources = <&gpio 0 0>;   // new field added
  };

While I can successfully write an overlay that does these two things
(adds the extra trigger-sources line, and sets the trigger to "gpio")
my problem is that I am not sure how to tell the overlay where to
insert itself.

I am trying to write a generic overlay, such that it accepts parameters
for both the trigger-sources value, as well as the LED structure where
this value should be inserted.

The problem is that it seems you have to use a label (e.g. "led_act" in
the above example) as the insertion point for the overlay, however I am
not sure how to specify this as an overlay parameter.  This is because
the user of the overlay may want to insert the code for led_pwr,
led_act, or one of the nodes added by the led-gpio overlay, so there is
no fixed label or path for the insertion point.

As an aside, I am also wondering how one might link up this LED trigger
with say a USB keyboard, where the LED devices are not created until
much later in the boot process.  In this case the trigger would have to
be associated with an LED device in userspace, but the module doesn't
seem to be set up to create LED triggers in isolation that aren't
pre-attached to LEDs.

However for now, is it possible to specify the label or LED DT node as
a parameter to an overlay?  I read the documentation at [2] but it
doesn't seem to list these as parameter types, and I am not sure if it
can be done as a string parameter.

Many thanks,
Adam.
(Please CC, not subscribed)

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/leds/trigger/ledtrig-gpio.c?id=4a11dbf04f31c71eb458c062129e95b7aa308464
[2]: https://github.com/raspberrypi/documentation/blob/develop/documentation/asciidoc/computers/configuration/device-tree.adoc

