Return-Path: <devicetree+bounces-273369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mH/9CMfir2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:22:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8297524843C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66D8531D5A66
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CC643CEDF;
	Tue, 10 Mar 2026 09:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9VCLpfe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0C43C049
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133400; cv=none; b=EyF5d9gCdBKKEmhUhv2DRJCMfzymCzITCjIb7NY/dXTzB7V6NogE2NWhJ8wsc7GeOnid3dhvcFRty6o8M4thKQpwt0+BjZRW84j14QnZVweim4rWE0EiZR+jD/LeZ/QvD0dUM6PHK5Q0GG2f6bDrmq4aAZ2qbxRE8BMix2RrF3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133400; c=relaxed/simple;
	bh=QvoCgBm67ri0f9hL86ZlnNu6pDT7ktHoVP5TEyefhvQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S34F6A2nFM0M3HlB320gycth3QGFVfutjRGtrz+wwhy5Witb5slQNJF9ZEUbGxkU4rxvh8+LMxCzK4eXas8JxTyWRak1pdONyxBhL9uOLBLiP9Qn3rCXUezoLEKGTSID74YjlVENwIZte23hyC5PM86xJM+ynXoPSvUQzmsDyXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9VCLpfe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08FF1C2BCAF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133400;
	bh=QvoCgBm67ri0f9hL86ZlnNu6pDT7ktHoVP5TEyefhvQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=L9VCLpfeY8OCvV5JiN0I+S8MdV24cLRhAqRIFQtmja/Q1qs4r24AMDQTv8OwKDpR6
	 DAR8VCnipZkER2SnZ4E2XcDnn6XnLiLmy+Gi+zyqLnsWxI/bqVbSxqaoGbM+YcMlui
	 glg5OQd7BS01PZgQsuScDLEmvpeVTgCmqR6pbAyPUB8rlO8sqsq8dXt+Cj5ZJtSjDQ
	 KqcoIufPWhkhHuQ1gNdOmmsbO7MPpcgaA1WhbyPA4knxHnGCtNyb9O8vUV6b0kLfZX
	 vTpIJbKY9I7VsP6o7dQRb5EQ58Umjsyib+HvbOTiFNskVYiWj02QwponJnv8C8SOWx
	 A7McMyln7C4Bg==
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64ad9fabd08so10851795d50.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:03:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVtmnFW7pOw41lt6Kw8m0I7Vp8hQxGjaEeERQw/hoUhy3+gyu2yZJDoTIyG7V/ytAaiAU5xurpXTUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwoXSs4ibneIgZeGcEyuxS6R5ZXird9I66jjUh1S4mjd8vZqrow
	sRr7tJghcJ5DT5kc4ACoezCblMd1O28WZ0nuvuONPZYJJETIc6ZQWjn2KpkH1fd9BCWVgjbZd/M
	Y1kgicLlCYLLEuxnJj0S4lWwJOzgPQck=
X-Received: by 2002:a05:690e:c4b:b0:64c:aab1:89fb with SMTP id
 956f58d0204a3-64d1414fcdamr14006084d50.32.1773133399292; Tue, 10 Mar 2026
 02:03:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309134920.1918294-1-o.rempel@pengutronix.de> <20260309134920.1918294-4-o.rempel@pengutronix.de>
In-Reply-To: <20260309134920.1918294-4-o.rempel@pengutronix.de>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 10:03:08 +0100
X-Gmail-Original-Message-ID: <CAD++jLkCVjpaci=+hZO8kFmH3mLytSAszOQyMYdtbk42UyaxOA@mail.gmail.com>
X-Gm-Features: AaiRm51Vs8pvPuDokv57nTDC9ZbT8vONgRjujm3r1SvohyxUXvhxiTZsdRYqvOw
Message-ID: <CAD++jLkCVjpaci=+hZO8kFmH3mLytSAszOQyMYdtbk42UyaxOA@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] pinctrl: core: Make pin group callbacks optional
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Peter Rosin <peda@axentia.se>, kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-gpio@vger.kernel.org, David Jander <david@protonic.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 8297524843C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273369-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:email]
X-Rspamd-Action: no action

On Mon, Mar 9, 2026 at 2:49=E2=80=AFPM Oleksij Rempel <o.rempel@pengutronix=
.de> wrote:

> Currently, the pinctrl core strictly requires all drivers to implement
> .get_groups_count and .get_group_name callbacks in their pinctrl_ops.
>
> However, for simple pinctrl drivers that act purely as GPIO controllers
> and pin-specific configuration proxies (without any concept of muxing or
> pin groups), this strict requirement forces the implementation of dummy
> callbacks just to satisfy pinctrl_check_ops().
>
> Relax this requirement by making the group callbacks optional. Update
> the core and debugfs (pinconf) functions to check for the existence of
> these callbacks before invoking them, allowing simple drivers to omit
> group boilerplate entirely.
>
> Suggested-by: Linus Walleij <linusw@kernel.org>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Linus Walleij <linusw@kernel.org>

If this patch set doesn't go into MFD as-is for this next merge
window, I sure want to apply this one patch to pinctrl.

Lee: I can also apply it and give you an immutable branch
with this one patch if you prefer.

Yours,
Linus Walleij

