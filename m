Return-Path: <devicetree+bounces-265193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBV5CNU1jmn/AwEAu9opvQ
	(envelope-from <devicetree+bounces-265193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:19:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9F2130E7B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 606DE3054641
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 20:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65257329C48;
	Thu, 12 Feb 2026 20:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERa1XG+b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DB2777E0
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 20:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770927556; cv=none; b=M4GWJeKA0lOlsYUhgZI1yGKTb+rxyf+ZzYIg7KUl3Y9xk6f/1rWnVA9XPYwTPFBlygTmEu6k6OO/Jq57fkF2quZoe2thh3ABfR7qgEMua34bGmlpc6ffUES0n9xxd0JNPy47wMQ9cF4n4EikW6KuY7uvlgCbDHCzv8OYv5rvs9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770927556; c=relaxed/simple;
	bh=xXnvM+8OykueY1NEjASwP8gahcI3U8JAAZxU1FiS6MI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KnN3UYkQivgu3vDfSYbk7vZUJD8gmlUdjWWeGNjKFZOyMv+RJTgUjS4P3109ge2n8W9N+OixRJ3GcT8UTdc8m8w20pqzthKf2YWD5Hhop70jm+5aoCeva+YGy1i97B1zq5/4eORhfzRkZi0sfFeuXNvtEvJT/IalHoTTeb1HHzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERa1XG+b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AE2BC2BCB4
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 20:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770927556;
	bh=xXnvM+8OykueY1NEjASwP8gahcI3U8JAAZxU1FiS6MI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ERa1XG+bkpCYc/IL4JjNXZGA41hU0ObNigwvWtmMx/9+8nNJ8r4StdyBYoeg61yFb
	 LSCWgJhOPHipdZLIsIhlQS3bYVYCd3mDjWn9ISUeP+E6Xd1XSg7S1xyJsxiNtMpvwh
	 SEloF0PxT3rQCMg4kyYbWJ3Zrni1NuFa48DCikj0v7p+W+BWzkg9bnCfqoBLr1ePWI
	 C41H032flfdzZoyfRshZuvc85/iqkYC1xcGURxNaMDAU6sg5Wy2ImBG7lwe1b838nc
	 3WFmCou3OJrdt5wXBv1wQrlkg4rBVAvfDZ4JwfN88E05mL9eysPVt9CelUEBvVv4Uq
	 zoEuZ5o5WXvCw==
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65a40f3f048so286665a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:19:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxjd7/ZKn2NYU5hpEm1s/uj/p/MLVT9Ue4TQyC9l0GqlJsO0WLOm/vP1FG9AX/Zav7ujpEQqVQg7yL@vger.kernel.org
X-Gm-Message-State: AOJu0YxV9CfdbfM+PcmP0pWrHpkM+64pXQ5WKgQYbkRe2NvnoExaxuwz
	/jP+tOf2C788JGYGIm2ujfJatWpI2FO7ullFlzde6/8BgmHJ/Tjp9BU6Oq/a0CC2AXhQg2wU44X
	h6gbf+CjF0p1nXbDvdxw0Qbw43W/iWg==
X-Received: by 2002:a17:907:1c1c:b0:b88:dc6:3967 with SMTP id
 a640c23a62f3a-b8facde807dmr15570966b.40.1770927554399; Thu, 12 Feb 2026
 12:19:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-9-clamor95@gmail.com>
 <20260211212016.GA3910589-robh@kernel.org> <E5BC797C-4362-4C75-BCAC-7C32A51C4725@gmail.com>
In-Reply-To: <E5BC797C-4362-4C75-BCAC-7C32A51C4725@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 12 Feb 2026 14:19:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLcFAP7oP0KzLp7DfcCpz0DjsjoAW3PcfnWu2nc-dG1CQ@mail.gmail.com>
X-Gm-Features: AZwV_QjR27lKcOZlGGh6bUTZWpEGD1ZyAvH4mw_Gs0vf4efEq1evZi3cDB-63Us
Message-ID: <CAL_JsqLcFAP7oP0KzLp7DfcCpz0DjsjoAW3PcfnWu2nc-dG1CQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: mfd: motorola-cpcap: convert to DT schema
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265193-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8C9F2130E7B
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:30=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail.c=
om> wrote:
>
>
>
> 11 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 23:20:16 GMT=
+02:00, Rob Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >On Fri, Feb 06, 2026 at 07:28:42PM +0200, Svyatoslav Ryhel wrote:
> >> Convert devicetree bindings for the Motorola CPCAP MFD from TXT to YAM=
L.
> >>
> >> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >> ---
> >>  .../bindings/mfd/motorola,cpcap.yaml          | 411 +++++++++++++++++=
+
> >>  .../bindings/mfd/motorola-cpcap.txt           |  78 ----
> >>  2 files changed, 411 insertions(+), 78 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/mfd/motorola,cpc=
ap.yaml
> >>  delete mode 100644 Documentation/devicetree/bindings/mfd/motorola-cpc=
ap.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml=
 b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
> >> new file mode 100644
> >> index 000000000000..7e350721d9f6
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
> >> @@ -0,0 +1,411 @@
> >> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mfd/motorola,cpcap.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Motorola CPCAP PMIC MFD
> >> +
> >> +maintainers:
> >> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> >> +
> >> +allOf:
> >> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - motorola,cpcap
> >> +      - st,6556002
> >
> >This does not match the only user in the kernel .dts files as
> >"st,6556002" should be a fallback.
> >
>
> Honestly, I would remove st,6556002 since it is not the only cpcap model =
which can be used, hence it cannot serve as a universal fallback. Some devi=
ces use ST produced cpcap chips, others use TI and range of models varies t=
oo. I guess I have to multiply commits.

The "cap" name goes way back to at least 2G Motorola phones. There
were whitecap and redcap chips for different 2G technologies which got
replaced by patriot (red+white+blue I guess) for 2.5G.

Dropping is fine with me, but then you have to update the .dtsi. If it
was me, I'd just make the binding match because that's 1 patch instead
of 2. You can still drop it on the new compatibles you are adding.

Rob

