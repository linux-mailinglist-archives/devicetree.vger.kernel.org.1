Return-Path: <devicetree+bounces-261974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHdFHmhBgWl6FAMAu9opvQ
	(envelope-from <devicetree+bounces-261974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:29:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D46D1D2F90
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37EAF3057EBA
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963821A38F9;
	Tue,  3 Feb 2026 00:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwPAu6rh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7367719D065
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078340; cv=none; b=XjC2cfMGm48B/B07AawQEYJu9o8tKuN1UoeMYS+ZALKf4B1ULYhHrjLpI1XfaX0ZJoAl7a7JHhU6wQQB8YIqZpvuot46SYrx5PLooGLzA7WB3hHmFj3S0XUfW1D8k6dl5AJjoPmBrZuTliFN2eJRmrPhIb8dJC2uMZkSpArO3Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078340; c=relaxed/simple;
	bh=Kt81Yd3F7HLokt8mXMiEb0ooMHC1f33dUjW6mARYkOU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fS6mo7frk5fYn8HGt3/rYWJv5RnBLxG9d9Ujjj7POSJwi9RSExSMHxavoQC22biZqFPJlEyU5Nic0KKBvBmvRSjZnHTJxJWbkoVS8fO4l8oEPQeakGuN8Z/lHrBW4t8wGex1/IPSL8QVXK0C52gxRmvyUue0bjJXFKWVikcEDww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwPAu6rh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CEA7C2BCB0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770078340;
	bh=Kt81Yd3F7HLokt8mXMiEb0ooMHC1f33dUjW6mARYkOU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cwPAu6rhW5/ejITSELQBtytS4EOpgRF71+d+TnxrRf+y32HFhYqUWG3rkXVcsZRiH
	 gBvzLuy+qha6ycH/rLNGMbk9YjRbq8Vl63EsLryg5bKz/2XWHTdhdjlqB4vG2/bLGZ
	 EK/l/XGQbegzgLoAvAH3z4vlwic8NHtqLqJvfv51T5rGxCgcwJ+LJBk1t54YYW6FUm
	 Y8cdl4nqNVArnCyzzuhDUFgYdQpIdOjMeAJ3CPzYx8u8cKTv3fV+6eewzWCWUbBZcU
	 3J0zSssjnECoeRSUBZuBt4b9K0GHjjn+TIdvfpD1phVjkZELIZdlKl+Gju4j2KPEol
	 T4PoVJ2R58ogQ==
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7946a1f2430so48182287b3.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:25:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWlPtYQERzeJs0BXOwV9+U2PIBW1LeDHoNt22JiuslwchPs+6MzbC1JuuGbFZh+AhgNp3WVG7C9+YH/@vger.kernel.org
X-Gm-Message-State: AOJu0YwpD9cO8m00bLjw4clLyIbL8LVpUfmRzUy9k/k2RwTp4beOGmgA
	+YmKgpej79um07h9ffFOJ3rDSYChaKXhcFSJjRLjZCCqZbu8Lgzoyfsgdsb1xuriBbyRt1s8PEo
	RyqMKU7C1TLC/UseUPoOkk2UNi2bPN/Y=
X-Received: by 2002:a05:690c:10:b0:794:1447:1adc with SMTP id
 00721157ae682-7949ded8fe6mr131488927b3.22.1770078339352; Mon, 02 Feb 2026
 16:25:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202110304.236320-1-jerrysteve1101@gmail.com> <20260202110304.236320-2-jerrysteve1101@gmail.com>
In-Reply-To: <20260202110304.236320-2-jerrysteve1101@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 3 Feb 2026 01:25:28 +0100
X-Gmail-Original-Message-ID: <CAD++jLmXbbmawezYN-V=UFvy75Be6RdrcW_qFm+pnrc06mO3AQ@mail.gmail.com>
X-Gm-Features: AZwV_QhT2q8uAbpAzS5Al6hdciBIUlk7vpXlk2ljwlN8Yn-iRUV79OQABSjFgcY
Message-ID: <CAD++jLmXbbmawezYN-V=UFvy75Be6RdrcW_qFm+pnrc06mO3AQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055
 accel binding
To: Jun Yan <jerrysteve1101@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Cc: linux-iio@vger.kernel.org, stephan@gerhold.net, hns@goldelico.com, 
	jic23@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261974-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sparkfun.com:url]
X-Rspamd-Queue-Id: D46D1D2F90
X-Rspamd-Action: no action

Hi Jun,

thanks for your patch!

On Mon, Feb 2, 2026 at 12:03=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> =
wrote:

> Add the device-tree binding for the Bosch BMX055 IMU (accelerometer part)=
,
> which is compatible with bmc150_accel.
>
> Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
asheet.pdf
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  .../bindings/iio/accel/bosch,bma255.yaml      | 43 +++++++++++--------

DT bindings must be posted to devicetree@vger.kernel.org, please resend.

>  1 file changed, 24 insertions(+), 19 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yam=
l b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> index c1387e02eb82..5c44b8cf156a 100644
> --- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> +++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
> @@ -16,25 +16,30 @@ description:
>
>  properties:
>    compatible:
> -    enum:
> -      # bmc150-accel driver in Linux
> -      - bosch,bma222
> -      - bosch,bma222e
> -      - bosch,bma250e
> -      - bosch,bma253
> -      - bosch,bma254
> -      - bosch,bma255
> -      - bosch,bma280
> -      - bosch,bmc150_accel
> -      - bosch,bmc156_accel
> -      - bosch,bmi055_accel
> -
> -      # bma180 driver in Linux
> -      - bosch,bma023
> -      - bosch,bma150
> -      - bosch,bma180
> -      - bosch,bma250
> -      - bosch,smb380
> +    oneOf:
> +      - enum:
> +          # bmc150-accel driver in Linux
> +          - bosch,bma222
> +          - bosch,bma222e
> +          - bosch,bma250e
> +          - bosch,bma253
> +          - bosch,bma254
> +          - bosch,bma255
> +          - bosch,bma280
> +          - bosch,bmc150_accel
> +          - bosch,bmc156_accel
> +          - bosch,bmi055_accel
> +          - bosch,bmx055_accel
> +
> +          # bma180 driver in Linux
> +          - bosch,bma023
> +          - bosch,bma150
> +          - bosch,bma180
> +          - bosch,bma250
> +          - bosch,smb380
> +      - items:
> +          - const: bosch,bmx055
> +          - const: bosch,bmc150_accel

Maybe drop the Linux-related comments because DT people seem not
to like this. But it's not your fault because these comments were there
before.

Yours,
Linus Walleij

