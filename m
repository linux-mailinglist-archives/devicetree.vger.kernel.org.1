Return-Path: <devicetree+bounces-266498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yD2zD0sBlmlHYAIAu9opvQ
	(envelope-from <devicetree+bounces-266498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:13:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 653351589AE
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:13:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E060830060AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E133C346ADA;
	Wed, 18 Feb 2026 18:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sYMocTki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B41346A05
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438401; cv=none; b=J/bxFzIRNnR/kq+pSA4X4jB9Is59MA9UU47eb0Su/l/RrePOH2pT1PKiUqRFE28cz1Hoct3WFzsVJWLs8SkPWTVQtisQWa0l1fVCr5ppBuETmMnM+x6YnggJBFVqM0Pyx5gIuPUODgFY7lAyMVFqoUIQM4j3VwnGtssqvGfTQTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438401; c=relaxed/simple;
	bh=zDjBvHqPxX/UNO4JPLX6sFcO2RcmeEiXEdVvkfXFKEk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FYrbkre3XTj1GS0cPXQS/9ubEoHOksUzGj4McLUdDw6aa0IVF1an2VNoKzX96NStTlKDcKUu3C7AW8/MSo+UnX8e9CwodrU9IEBP27fcuMdgPdjx+gMxm8ZnHD5EazPfntxVwTPzssSt0m4qciQATKyPc5/DEcKHZ37QuotwMz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sYMocTki; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so687055e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771438398; x=1772043198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIekHAkyURnbY7ZGcdPvi5VEj7cPbPYtWFDuUCFEzTw=;
        b=sYMocTkiR7XecJWB9AoMW1aW0GXtNmuDYv6MXsVVHGJU2ulnPtueEYUoBxD92JAvto
         SZCO04eYTqDry4gKSAZy2uvXnmfIQyTNf9gOpESE27gqKtzQSRBZLZUVtSJ6s1DlYZ4m
         PNMD4hviMvQaN/Xx7tAzfCrPbRtE542aF605ISjd1MURe6PAk5FscAH1Bha3clMf5951
         Jv3tL23ML/fxJWI9yeiqtXo/KeFZITQCoeumCJPbOeISl0OmervVQGwL+/ZlI5x8jqMA
         2Mtwx++PztFjUB/o90nG3wA4G6b8SXOpdtkx3ucJiljfFOHqMa9mOhuJnM/+MCr6N5YB
         07PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771438398; x=1772043198;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vIekHAkyURnbY7ZGcdPvi5VEj7cPbPYtWFDuUCFEzTw=;
        b=aU9GNNzDBlmiD6CWGcC+H5XaFMVv4D7O5gQ20kq8hYi3B2xpzF0jqToKxhBBDg7VkZ
         7gGntg/vBYawLGHQ48tnJx8JS/00XEcHy0dT74p76SjY4jxCrRPXB42BZtXA7gOp62LP
         HEazVP2s7UYd/X9d+th+l4i2zE6eMnWNVvQFjolLoE5B/bjyrIDpNmvZKym9bPkHQTgG
         uNZ2JHTmdVTM1HYjQ7VMsvTL7Dw0wTtzIiDFGliBYSiD2dd5Tkwce3T2Zwfgun07lhtu
         fyZfpguwnvVecw1TNIEZvsvP/o0MxcbsinSvz1MctcjicetcI1DSbLZ2PM+ZOW0rwY0g
         wZSg==
X-Forwarded-Encrypted: i=1; AJvYcCUfw0Ja0thALLKH0Pi+oeFarF5siN5M73XtRFSajjJPgxhk0Y52iOhv/pogiDKdxNxGQwiV/8c33PFN@vger.kernel.org
X-Gm-Message-State: AOJu0YyXVAlMn00iPBMXEpPayQnmiDSr1NzTGK8HZgOw8WssVmUzC6QF
	08ajSOneiZUJLq6uq7HJivWGIoUQUBBjlwUk0jLcndAU8lhBLHRsNKNfzzJISErDCew=
X-Gm-Gg: AZuq6aK13WkfI+ETKsKckX0WS/SBQrRRZOCr+TNhMM5cKT7HxHnrIfsVfqJWZhMcyzN
	FROEO6QRbmC4vtHfPwVcFmDbkjY3DhjHX1E+sAabCiWguQatNj111/d5xNci37zz6BflkWhiJuL
	pUdw7ZCS/74joeQG5ay0FHRu5l81gi6WZLjjnFk21iK/kMBwVWZQWe1+H4Ypcy6gNd6DjmZX09M
	Rdg3dBDX7QP27Ogkc9cbPZrV2+2/s8nM9NvuEjtnlEXCE6XgZpXpG7AhAGhp+79GAooK2hbgu6j
	ZRHSaWixMLWQz13j61CSToNrOwL+Nws9ihsQHc5Xi6PeHohddDjMU1UDYP2eeDJR8uvOuQRiyA9
	kxThlrCy8eNqQghHvyRkUt23eFI5iTc8zfwGS0XXcPIInYMN0K02jNaZpmC7l2Z3oRCr5CrOeXL
	Zi+wbhTIHrNDNdyeaUEijo1A==
X-Received: by 2002:a05:600c:6215:b0:480:6852:8d94 with SMTP id 5b1f17b1804b1-48398ae8e6cmr48823635e9.27.1771438397601;
        Wed, 18 Feb 2026 10:13:17 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:cf71:8cf8:56bb:5790])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4837b68e5adsm416187875e9.9.2026.02.18.10.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 10:13:17 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: linux-amlogic@lists.infradead.org,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Michael Turquette <mturquette@baylibre.com>,
  Stephen Boyd <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Jian Hu <jian.hu@amlogic.com>,  Xianwei Zhao
 <xianwei.zhao@amlogic.com>,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: clk: meson: Add Amlogic T7 fix pll
 support
In-Reply-To: <20260218105709.36253-1-linux-kernel-dev@aliel.fr> (Ronald
	Claveau's message of "Wed, 18 Feb 2026 11:57:07 +0100")
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
	<20260218105709.36253-1-linux-kernel-dev@aliel.fr>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 18 Feb 2026 19:13:15 +0100
Message-ID: <1jpl616htw.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266498-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[starbuckisacylon.baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,aliel.fr:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 653351589AE
X-Rspamd-Action: no action

On mer. 18 f=C3=A9vr. 2026 at 11:57, Ronald Claveau <linux-kernel-dev@aliel=
.fr> wrote:

> Add PLL for the clock controller of the Amlogic T7 SoC family.

Assuming the 3 first patch are actually needed (I don't think they are)
I think patch 2 and 3 should be squashed together

>
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>  .../devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml       | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.=
yaml b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> index 49c61f65deff..6a1598e6c359 100644
> --- a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> +++ b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> @@ -23,6 +23,7 @@ properties:
>        - amlogic,t7-mpll
>        - amlogic,t7-hdmi-pll
>        - amlogic,t7-mclk-pll
> +      - amlogic,t7-fpll
>=20=20
>    reg:
>      maxItems: 1
> @@ -42,6 +43,7 @@ properties:
>        - const: in0
>        - const: in1
>        - const: in2
> +      - const: xtal

Fishy. Maybe it will get more clear with a more detailed commit description

>      minItems: 1
>=20=20
>  required:
> @@ -72,11 +74,12 @@ allOf:
>            contains:
>              enum:
>                - amlogic,t7-gp0-pll
> -              - amlogic,t7-gp1--pll
> +              - amlogic,t7-gp1-pll

Indeed that's not good ! but you need specific patch for this, and Fixes
tag. You can send this separately.

>                - amlogic,t7-hifi-pll
>                - amlogic,t7-pcie-pll
>                - amlogic,t7-mpll
>                - amlogic,t7-hdmi-pll
> +              - amlogic,t7-fpll
>=20=20
>      then:
>        properties:

--=20
Jerome

