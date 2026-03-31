Return-Path: <devicetree+bounces-283140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NdsBJASzGkvOAYAu9opvQ
	(envelope-from <devicetree+bounces-283140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 20:29:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8456336FF71
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 20:29:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93706314F50A
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 18:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498F4374160;
	Tue, 31 Mar 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7/4x0nT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252B4375AC6
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774981054; cv=none; b=FWgkf1NACDsn4XTAy6v8oarYdNrAND/F9SwsQkHHyt65VcPThTteV9UxKno8fVkVB6xnBeek+/38FIYV8yYTfxIj6zBGa5sfuclNh3ZeKwXD43okhkWnsBODuNMDS0kvgfOvMqI/sC6onbn0P+4PhHvIgyrqyoHwKiOpwqqr/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774981054; c=relaxed/simple;
	bh=5SfKtWMW/MTMKZvB2XBW+7ZIzP+paJSdBKtCWkXfuQw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W9wuKV+aW0UH2yL8m0Rp6dDob/nIeb3A7MIKRJEHPiOBfM9xrXGjaMwqNmOcoE3M//WeoK/HgXH06+Ofwb7HM7nNnFMu2cG+RG9IeziDPeOaRjomQ76moEPWerVB9K+bP+UPMBKpwwAZa6fuwfOn5aqCEY0HN3fY6w0PFTUjuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7/4x0nT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF6DBC2BCB4
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774981053;
	bh=5SfKtWMW/MTMKZvB2XBW+7ZIzP+paJSdBKtCWkXfuQw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Z7/4x0nTwLxu7/3knpbYpvdeLuUj3P2hPOg2TSpqblXcdoIZp0rCCEmepZcqLHwJt
	 r1Z7vPLAogkkMTwdpN1IHXB04MfaQLlpD8scw4kspbzC0eUdXeXBbIhBPBGMrru3ad
	 F+hjp0eB92SajLf0lUOTLoZ28eeJdb8tic+fjwi0TB7hr8zcLUVQoQZ6SvFURMtPKR
	 RH0TosQ17/W29fLvqMCJoYZ0cTI9cZdJz/TOOAX9zqc6aeW5pAq1+QABoQPa0Wa8py
	 oNslusIrOmMJDipn+gWBAV0O/u/WwDNDYR7QwCSiJG6NYvFLdposAtc485mzLHgUVP
	 wB+SkJH996ZGQ==
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-79ab3e26cceso22872297b3.3
        for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 11:17:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWzveN22IqmpBbz5c1U6PbLf8/xUCmGtY8WQtNfLUnBHwzTDhlScq7YOJgpZU3jpyeLjp5HvKGheaUj@vger.kernel.org
X-Gm-Message-State: AOJu0YxWZN9y0NPijNzmtwVDSjxFClsuJOr2fb9XjN4HHZ6doSklmkZS
	1u2j0R/bFYyqwwMy0l1OrIZaaBvohWkCqUDTPTOV0l+cPhnT/I5zPMzscIFw/cMCO/XJ/1T6rpz
	5lzOV2pUp5ru/n9p3ZIDsARBSzZrJxY0=
X-Received: by 2002:a05:690c:84:b0:79a:4767:238b with SMTP id
 00721157ae682-7a20ffc58b5mr5096637b3.18.1774981053248; Tue, 31 Mar 2026
 11:17:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260331-expressatt_camera_flash-v4-0-f1e99f474513@gmail.com> <20260331-expressatt_camera_flash-v4-2-f1e99f474513@gmail.com>
In-Reply-To: <20260331-expressatt_camera_flash-v4-2-f1e99f474513@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 31 Mar 2026 20:17:21 +0200
X-Gmail-Original-Message-ID: <CAD++jLmK2Pxw=Zj_8TsPm8vKcLWwGRjuFzXhHhFgq_ekYmmrzw@mail.gmail.com>
X-Gm-Features: AQROBzBYeESNwniyKl-C50INEHNyIKSVre4W_M1f7i-oE4ahJatHHOaELZwZf2Q
Message-ID: <CAD++jLmK2Pxw=Zj_8TsPm8vKcLWwGRjuFzXhHhFgq_ekYmmrzw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] leds: flash: rt8515: Support single-GPIO flash ICs
 with vin supply
To: guptarud@gmail.com
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-283140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8456336FF71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 7:08=E2=80=AFPM Rudraksha Gupta via B4 Relay
<devnull+guptarud.gmail.com@kernel.org> wrote:

> From: Rudraksha Gupta <guptarud@gmail.com>
>
> Extend the RT8515 driver to support flash ICs that use only a single
> GPIO for both flash and torch modes (no separate ENT pin), with an
> optional vin regulator that gates power to the flash IC.
>
> When vin-supply is provided, the driver enables the regulator before
> activating the LED and disables it when turning off.
>
> Make ent-gpios optional and validate at probe time that exactly one of
> ent-gpios or vin-supply is provided. When ent-gpios is absent, the
> driver uses enf-gpios for both flash and torch brightness control.
>
> Assisted-by: Claude:claude-opus-4.6
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>

Excellent this looks good to me!
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

