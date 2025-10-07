Return-Path: <devicetree+bounces-224080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF2EBC0B6E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97C913C7012
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553092DF145;
	Tue,  7 Oct 2025 08:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="crNa8lLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478FD2DECA0
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759825997; cv=none; b=CG6m3KO6JLRO/EjfOsQzbBVkLZ0z5s1aRR1J74SmBZD/TXv+C8fOha9Vn/M29aI1KcBkloa0ywfGmViUsap0wn8+RF8Cy4ae2Dr4hjK/kGJ5gIMGd+OuUQMFDVIJiFyGpYrdUOZpNKwtPkRjx/TMeKtXKbFZiHqDM23ws/k+m5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759825997; c=relaxed/simple;
	bh=7uAEAm51rLd1FKqy+L2ec4vQm8vIVZoQc5npaYHbk3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BKVAh8+CCA9fH1fngVvCK+PRBmPGSHa/yF1TDIDdmbFPP38AsBAV8B7D5UkaLgZnlVi+JWA/099A3MCdHScfxURjoTK8Y9xFBRh9WawARSM78ykT1KlAjxGOE9km4S9U4LtJX1WIP+8ioMCgs0o1cix60rWmh1M3/OYkTJFoHIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=crNa8lLa; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-3696f1d5102so37742381fa.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759825992; x=1760430792; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gGiMbjmQn7XfKWV9vHi8Sy/mWp58kUDQTy/MiPcOTHY=;
        b=crNa8lLa8EjqTStdYaRKokAEtj6ea55hG7k/uRyNzMVqXy+uf10NN+PIG7uJG19Q5+
         xnUgyo/LMVKy1cPQlbUpP/GxRgpC3GvPg8DJLURlqRbnf3oPqzm5fujevlLZXND85LvA
         LJJaRC7/5XanRfYaMlFLgIG6CwIjcbXLYS525lycFtpyxpmazKfZ3W82ImhqmRhMOcVC
         /OnGgiNdl2Mz7tKKtXBKL7yYwosEqr0YvSj4w8WSHdmzM03UjHvEe6LL+UbSGYi87OOE
         C1gykKSVP+SPiDrw8cwSiKk3xqvNlT6+mt1pnpp9gbL2g5uvQb3gVSX9/V6x3S3LFtkM
         XwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759825992; x=1760430792;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGiMbjmQn7XfKWV9vHi8Sy/mWp58kUDQTy/MiPcOTHY=;
        b=ui+TGCnseapw8fkEU+HSrfzhknThXtQolE3zJaZ93P0IfD3Jif28S7x/C6ALkZzcxX
         jNw9QawPx+jqE8yMEDVX2JYB7Clj4OL3evI2NYIKY8TG5uzqvEWtsbi2EEX7aARlOa93
         /+L3cs1rAiZcK6iq4bcCYWWw/++1XiyOztH3QsNq2WPwxXJfO2sX2DPfDzdJWUwKe+BV
         BU2FAnaUAJ6cXih6KQ1uK5N+MCoFneXLto2UGDkyjL+4rA6n75alWNubVgKmF+ugiTkp
         hp3V5uy0th0+uA9d4uM72cjjp43VYK92qP6x4PbYk/KkM2sKF9RYWCKlIf2qLu1g+iQN
         C7ew==
X-Forwarded-Encrypted: i=1; AJvYcCVYWFAxidBTBO2CqDOiNsSeQLPI4jIOAsL9eNQKSC1vH2WbHLLIfYF1zHRBplJkgnyTx9bMErwpKKY8@vger.kernel.org
X-Gm-Message-State: AOJu0YxkR9gv6sGscXKumILM0clGoDtyVU4tBnqfLDw0QUDzw4wIs7GY
	6YkUg4VXd7TobA0W3RifpUH21NDDzbZAnUy92bvehqd9r0rRUhogNKNh
X-Gm-Gg: ASbGnctuYIZdcxMyyRsEq+dZKYyl48LG10ho+somBObvjIWeG1KgjZKqLweJ93ygQgs
	KcgAzSI9bcjkgHX1NnZuWgClmcQcwdQ3ZIHXlepIlcK83JWRabgWeMvGBrbdVtMeR60+XOzIz6S
	BTVH5QoaBn7USDLCVG0v3uWzgV+yTU6/sWoo8Dxsj9VOuQ7h0m1O2YScCjYNBZLW8S+0QRszxKQ
	auw1XiI8zccuOeylb/lOsR/02q7BPYB4F5FR6BOAoc3dH5gqmvEHtIzNyHDXVeCnFiGTZH3L05w
	6DmXJE4aN2OgSnlo99LiYIuRZc3orR3/7xTuegTe9a5pdizXAHvcQFbCfT8/VHuhTiTLXxRzv6x
	DYXH/dTzAmah/W68gqSO3311K/cE5hcKKtf43jgk7fYTAzCqo2C1Gu6grAflDqdJE
X-Google-Smtp-Source: AGHT+IHuGRguErrXJP9h3pDzhOaJUtpac4R4MsXzz6Y0nXTmBHq4H3FCgsyuBlP6yhqsJfsGeldLBA==
X-Received: by 2002:a05:651c:4408:10b0:372:9505:725b with SMTP id 38308e7fff4ca-374c3837106mr35638181fa.34.1759825992192;
        Tue, 07 Oct 2025 01:33:12 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b64e6dsm7807951fa.39.2025.10.07.01.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:33:11 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:33:07 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: [RFC PATCH 02/13] dt-bindings: Add trickle-charge upper limit
Message-ID: <072180743039027b8476525bfb3d04b3dd044be1.1759824376.git.mazziesaccount@gmail.com>
References: <cover.1759824376.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v2C5QlrJAk9yRRw2"
Content-Disposition: inline
In-Reply-To: <cover.1759824376.git.mazziesaccount@gmail.com>


--v2C5QlrJAk9yRRw2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Some of the chargers for lithium-ion batteries use a trickle-charging as
a first charging phase for very empty batteries, to "wake-up" the battery.
Trickle-charging is a low current, constant current phase. After the
voltage of the very empty battery has reached an upper limit for
trickle charging, the pre-charge phase is started with a higher current.

Allow defining the upper limit for trickle charging voltage, after which
the charging should be changed to the pre-charging.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---
 Documentation/devicetree/bindings/power/supply/battery.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/battery.yaml b/=
Documentation/devicetree/bindings/power/supply/battery.yaml
index 491488e7b970..66bed24b3dee 100644
--- a/Documentation/devicetree/bindings/power/supply/battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/battery.yaml
@@ -66,6 +66,9 @@ properties:
   trickle-charge-current-microamp:
     description: current for trickle-charge phase
=20
+  tricklecharge-upper-limit-microvolt:
+    description: limit when to change to precharge from trickle charge
+
   precharge-current-microamp:
     description: current for pre-charge phase
=20
--=20
2.51.0


--v2C5QlrJAk9yRRw2
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmjk0EMACgkQeFA3/03a
ocXmPwgAxfL/bnwzJGbWAfYUHNKmQwT+fSbIu0KruqseE4yNXxdi24bAtxHIFSbw
+WR6S46YkHhtZXkD0Ew/skbhuRAaYjmP/NbJYVQdRBj6l5GUcmxtxs3uiadOmaGU
UWa3wakGNMZIdRrOguR7syzu7tq+gc6R0XS7v+EEksiFi9arXBXmknN012XK6x0E
Z/ywhwDzT05HmPuxGV1BtfUd2RlZhfx1w7M9PM4dcNWi0edfB4jgwKNPEUa3A2sR
SfcnNxz+lX34BASK6I2E+zqUfMmg0fBvNCDEC7xbxn98oTU9ceCuj5ADDG7c0wXd
gjb9SctkHZE5Cw67sS2Vg/Lu7E975A==
=b1vC
-----END PGP SIGNATURE-----

--v2C5QlrJAk9yRRw2--

