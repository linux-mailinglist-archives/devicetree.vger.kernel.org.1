Return-Path: <devicetree+bounces-266495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kQ4PBUkAlmlqYAIAu9opvQ
	(envelope-from <devicetree+bounces-266495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:09:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A191588C9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58F113004F1C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C69346A05;
	Wed, 18 Feb 2026 18:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gGDSRIqK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E0345CA5
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438150; cv=none; b=fK0+4wRAP94csn7SA9uQ/+xXhYgAI6gTQ3ZDWn0lN6rmsjVcSDnVB2/gyJlwh3UkPXT0civCP66mjEPAG2U8RvfrQ3KCUMoZNPLDduLnN/SsGywlzzuIuZbxYf7BGTV89zCn0Ln1Ef3PrDK8uK3BBHpEjkWrjO7Wxldkf1P6HBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438150; c=relaxed/simple;
	bh=yEeYbKwJ4dKz6zZmYCTVTgYkxo4KJMNXH37g/tTh02g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=VRuJ6+hEtOcv+tFtTm5KtfGuCAYwCZLlZK4ckYwdRuVjWvbUsigDdJ7dbNho08ZGqDl4hX3fS0sM3RsIDNFe0dtUYRSgR5HgXggwKQtT4zKWkYw/xuB65zu/vspOZYDHnz3RXux4JRyXZ2JRveyA/pnl4fhvpfHszYe85uF0z1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gGDSRIqK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48069a48629so1164035e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771438147; x=1772042947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHxKKXGBHlMMgCTEd77iJPpVcu514Qc+HROZ7KUYSWM=;
        b=gGDSRIqKU9M+Tl37QS5YPOi3OBQ6cBupJxBijYNfVNrCbcb+K9XYW29P+SInjvhc0S
         W6egA1GNhrBHaA76g/guSMtDpETkmxHtADiyKh018uNzaTB0bE9KypcvONyf39vcQb1i
         5c8Zmui3VPKHCbW6ePRo/APYLpUdR30Scsag+C0yUYOKl5eBSX5/yru5iAROZqrM3PrJ
         sLF2HW/0BXfr0yjJJYmpkem58+75KWcyeG8Kogg0QOUl9LwqE9hij9fLSmImuhy81Ebv
         QiPgUK6SLmGXwW7VNpWNgHO5IUYIxxP1ZL06CXrRALqXVZnC9UzujfRiZNhcgajv+4vG
         FYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771438147; x=1772042947;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHxKKXGBHlMMgCTEd77iJPpVcu514Qc+HROZ7KUYSWM=;
        b=AFMkG5ijdQjSaE9ER+udkYXbh5QKw9AJDZyuNkwtJSGuoj+TLcicxKHieMBUFje0xu
         idxZx+IfX5Yf598obC2iWb/bNQq/gnjXs3irkj2BEpkz4v5Zpxs2WsmQZTqIGgiCSQuY
         KIVif3EUHwxR26T3AV5O4KqCbCd7inOL47dOkEGs7JnBg+u1YwKkjknvtfGOSjzLA0mx
         El5aQ8EVI5NXVciNGTEYeZNxlBULst25MEMoGbQcXhqyw7UzMOhhzHfgKdYT27mxqVgV
         TCvbdR4pnv+Rcl8Api2yeKaQU4YJMNtevS3slIs32ggr8CjUdAzsBllSCGsM3AJRaTVC
         0vVw==
X-Forwarded-Encrypted: i=1; AJvYcCUzkwyoXF7ZQ3yYB4+6ainP0aEdBN9xMw/33INPwlku4//wBKPh8rpRFupbDJ1dfQk0e68puRCmj7+0@vger.kernel.org
X-Gm-Message-State: AOJu0YywxwxBkbbkvuUgHZaQXUUPAbTWL92Exmg6g2nsUycnY3BYFm/2
	5bK4xPJsi+OZFiQDzxT6i0mCxMBCGbDFATE94kMDGFZ10L4l3lKZkJrUSwjQwBaqKnk=
X-Gm-Gg: AZuq6aJ1y9yepJ9e+mWKBWnkXLzYqaMbfPTsw//eGA5+4tNSTivnPXyX6eLQHE3IIIc
	awfG9G6QoAY8tafA1iyEh2eKziONZCuA4i7v3oW567ILHbVTDZr80EBqoZ9QpjnBzn95YwjBHSP
	/fg1ZzYLGcTTTjKmjbO8PjiHeGd/kLvKyofmpQVpYIURwSHLLzfNnGre2F9SE1n7tjSqbeTfXxU
	hsxQ4kY08xTg9BwXVd4LWbAkAyg7iHlx31GRFaPIiK2eXYkNlTadwKPe+SVyJXiV/w3iR8/Kgib
	cqAz9r19E1CHMAegrKIRL0puz7DEC8xEzjTWG6qyZfF82mY6kbxjWtckHphkkcpm1k1i60qk0Id
	1+Tqc3lwNe+scpxLBYnjMvMrEL85ULD8EJfqsJTT9KHkf5xp0a24t01fcrAOeDOJz6d/mKk5l3Y
	zlTpDhfda9S597hFjp253CCg==
X-Received: by 2002:a05:600c:450d:b0:482:eec4:758 with SMTP id 5b1f17b1804b1-48373a4f05bmr316456575e9.26.1771438147319;
        Wed, 18 Feb 2026 10:09:07 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:cf71:8cf8:56bb:5790])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4835dcfb28dsm560787365e9.11.2026.02.18.10.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 10:09:06 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: linux-amlogic@lists.infradead.org,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: clk: meson: Add Amlogic T7 fix pll
 support
In-Reply-To: <20260218105611.36216-1-linux-kernel-dev@aliel.fr> (Ronald
	Claveau's message of "Wed, 18 Feb 2026 11:56:09 +0100")
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
	<20260218105611.36216-1-linux-kernel-dev@aliel.fr>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 18 Feb 2026 19:09:05 +0100
Message-ID: <1jy0kp6i0u.fsf@starbuckisacylon.baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,aliel.fr:email]
X-Rspamd-Queue-Id: 97A191588C9
X-Rspamd-Action: no action

On mer. 18 f=C3=A9vr. 2026 at 11:56, Ronald Claveau <linux-kernel-dev@aliel=
.fr> wrote:

> Add PLL for the clock controller of the Amlogic T7 SoC family.

Usually bindings changes should comes before the driver changes in a
series.

This is especially important here because you are using the IDs in the
driver. With order used here, bisect is broken.

>
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>  include/dt-bindings/clock/amlogic,t7-pll-clkc.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/include/dt-bindings/clock/amlogic,t7-pll-clkc.h b/include/dt=
-bindings/clock/amlogic,t7-pll-clkc.h
> index e2481f2f1163..690421009eab 100644
> --- a/include/dt-bindings/clock/amlogic,t7-pll-clkc.h
> +++ b/include/dt-bindings/clock/amlogic,t7-pll-clkc.h
> @@ -53,4 +53,20 @@
>  #define CLKID_MCLK_1_PRE	9
>  #define CLKID_MCLK_1		10
>=20=20
> +/* ANALOG */
No idea what you mean with this ...

> +#define CLKID_FPLL_DCO		0
> +#define CLKID_FPLL			1
> +#define CLKID_FDIV2_DIV		2
> +#define CLKID_FDIV2			3
> +#define CLKID_FDIV2P5_DIV	4
> +#define CLKID_FDIV2P5		5
> +#define CLKID_FDIV3_DIV		6
> +#define CLKID_FDIV3			7
> +#define CLKID_FDIV4_DIV		8
> +#define CLKID_FDIV4			9
> +#define CLKID_FDIV5_DIV		10
> +#define CLKID_FDIV5			11
> +#define CLKID_FDIV7_DIV		12
> +#define CLKID_FDIV7			13
> +
>  #endif /* __T7_PLL_CLKC_H */

--=20
Jerome

