Return-Path: <devicetree+bounces-207293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BAEB2F06C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:03:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CEF0582F11
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A859E2EA723;
	Thu, 21 Aug 2025 08:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M+RFZSQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61652EA729
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755763271; cv=none; b=iK9UETlaPgRDqBylgY/PXOdmTPvP6hOYcLnOYmJ96ROx1q+wXmuG0G9kGIRZc0E103taeQ78CO8KO/P0ADZehv/uEze9HtZL7AVpzZVx4zR4CqSUA3QVBGk4AQp94oRqnTOhAwZ7czDEteFZGlWOLMCa1ldDKWsHfdlTye5dsdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755763271; c=relaxed/simple;
	bh=WM8iBOuPE1mzfpli1zA7QCdO0jJda95qiYQylczUrj8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TLXJE1KDw6PUXgTL25C85oHjegVr6jK+W399BuacjyWH3GRztvvTm7j/i2/ObFJ0T30+7OVx/8bPDkM2mPTvJL38kIGXydQdiNqK9NkSq/62H5udfAcyskQE1VLqY4PdV1S3cYU75+9hgN7y7WABJB4GmcvUSOt6RsRISEImnEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M+RFZSQd; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afcb731ca55so8125466b.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755763268; x=1756368068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BiJM73jXetXZPDg3FG4r1HGiBdkCRmSbEWZmqbaw5yc=;
        b=M+RFZSQdQef57NMCCLl7slGI0kQgLEwJQHcjok9NGQFvnyjeo5rSsHCybCYgA1y+WM
         R8/E9x2/LwXrff0vr4GjFI9VQn6eAw3zuY4oKlrUfTBhMNKrFy+TVNSXzQ1S1GCydjte
         6SxxwZX9mkSKzewi4rx80bo0fZQYZKLyzW+kF7KNS4Np3mmqxfq2KWFHTqKSwzzfBeNt
         pYp7hxOU0lQpVX0nl53ZG5RUf0S2QgC8EqMAnGifxCGyEJpv6Mt//Vv/9i7QhrFJwXcY
         1QDldoe4RNycnGiKz7wXjmSSLAFODeRd7hd28FsOn8mEZx0mto+OrbDRzvop6FWCE2W/
         re7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755763268; x=1756368068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BiJM73jXetXZPDg3FG4r1HGiBdkCRmSbEWZmqbaw5yc=;
        b=fjTM0yRhXEWvH2FIx+ROex5h5kqJS03zzsdnnVByCJUNjJt2yNa83wIDqPK3d0bQFO
         sz3LP+YeC3k3XMbNI+3g6tfdTHwkh/f5BgFlZGWb7cIElU+P1E7vfbzPt9wq+r0UaCyF
         PfmkxJ+jQH9Dx7suIz7cWCcoonDP9GblWKrbF2UP7QyrKDVbNWl/q82Xl++XXqTYbbug
         26ZwozQB7f8Bh4SlKH4xXf2+4G1IOjG0SAjmZlVNinmdqR+QtwJYVXyAngMH1ktcV60C
         pKotJwm9DaPDyNxL0kJSgDOBVNLNVLVdEzjTiqk7wkIc3OR6pwl9g4KRkmVL/Oh3rOCu
         Kziw==
X-Forwarded-Encrypted: i=1; AJvYcCXBIl2547vWRftS/MwE7gDjCPinedce/Aht6/2N4dU+S9Zown9Gr1z0z49d0h6R1EVY427V/RXlTggg@vger.kernel.org
X-Gm-Message-State: AOJu0YyUJ6JbqHsUf2n3LrnbtVnKEcKBUcOAZU3cmODmXnCUbgt+BqKu
	dAG759dXwWlIeP3gmJXRdD2Z/nxPZVyFKSpG9F2A5qpKmD7CFsI6knOobZ+y+C0ZJbkWF8dbb5m
	V716e
X-Gm-Gg: ASbGncu7h+3FZdMDp+pLLdL8QChy5hUH/UwEMG3JGFmFbgYeD5KSHZ+ehtl+XKEVoPY
	lYoq7sNQ4Zlz4X8zo+o3vi44+fWNwCBTmPX4pAqM/pKKb4wQ+mT9A0deENkpzWlt8YkKB7UQ4aJ
	blJFdJHaSuKniQ6O9/W7ZnbEUMFZUTQt9STyLsz/TLDUnOGeHTHZ6YLr3v0fHSa8HfjmdRHuHSE
	0qzrzjK/4WQo3U5wfIoRhSynT5rCVvgLSo0HeoaF/pryE9LeaHDORSiJhiesZO1YNigQDUW74DW
	7y3PThbS09Z6+5z6cihJ7XOG9rnjeCPXpEe/h+nUghJo7i1Qqb53Ty644TkHdMLx0rzyhGpk0Yd
	bTzgVFlkKtyO4c7Zg3o16Me4dORFuyuP3tg==
X-Google-Smtp-Source: AGHT+IH3gn8Qycx/6jx0+ZrjQBw2uOwmfgWlfZLnew0fX/8+fSDm7labToVuHmhoQfKaLY1+ZXezHA==
X-Received: by 2002:a17:907:86a2:b0:ae1:808:85ea with SMTP id a640c23a62f3a-afe07e22fcemr84096366b.8.1755763267959;
        Thu, 21 Aug 2025 01:01:07 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe0051f99asm160445566b.80.2025.08.21.01.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:01:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org,
	Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh@kernel.org,
	conor+dt@kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: w1: imx: Add an entry for the interrupts property
Date: Thu, 21 Aug 2025 10:01:03 +0200
Message-ID: <175576325985.37108.788865752007366111.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819121344.2765940-1-festevam@gmail.com>
References: <20250819121344.2765940-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=583; i=krzysztof.kozlowski@linaro.org;
 h=from:subject:message-id; bh=UUyNC56jMamtus4MZ2ppbC8jQAbVbVoRYAvxv/kIeFs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptI/a3T64yN5wlcUrqeGW4KNHuT3rYZvmUNH/
 ciOSNLG6IuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbSPwAKCRDBN2bmhouD
 1/XHD/41SooDF0qcGmR2Qhh0gauo86YW3mpcfx1AzIwEZhSD324gIuU3H7MZBaG25RqaD06ZYeN
 +heUHEl7QH4vYE0OohCVvkoIp/GguLA6UcIbCqJGBsX39YrkXdp3FnDbOYnKd+szao3B/d54FsA
 eM49dfRC942RaPkWQB1Sgjo7IYRuqx8w6mvViW8JnRIFs2gRXjEKmfQ/El0vqe6E5k/OxNT3TFU
 MEOR0pfn5Meq3JXarvlpgb5sNM+dX/mOkJLvq8O6iIFrQVQFJleJ39F7mh18EcgivTj/K/apU+S
 vq7mRhBJu4slSp3B3oiXwF6cpy4zs6DJUchtv7oyAk3dfiqYZvh3E85RGWfsGsMXt1lzAlVDNfj
 xn6hzTHPodZtWTv52hXVXJ1xkg14rXs7senXyOhwwwaOGkqMz+XR1scYcLSji/L+ML2PgluBdUt
 pLlpX75dc57GnCpnNDDd33w4sYrOMfcojxAC0dprF6KAqQmss3I+58yUv9Fc0NIojTabKBlqc7t
 tk4wbbpO/snTfsI39DTZOcJ4HRp91pESOOf6MoWqQ0ROphHbFQgrAdC9sRIlui593hksQdmeVVd
 rnpy4GeI7lpgH/5WgUcWGbmeqfZL7nlc+alCh9hM49IKGtGRbINi4wDZ3KiTHQYyPJnk/fXkbMJ dqTkIVLo0L3lS4A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit


On Tue, 19 Aug 2025 09:13:44 -0300, Fabio Estevam wrote:
> There is an interrupt line connected to the one-wire block on
> the i.MX51 and i.MX53.
> 
> Add an entry for the interrupt property to avoid the following dt-schema
> warning:
> 
> 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: w1: imx: Add an entry for the interrupts property
      https://git.kernel.org/krzk/linux-w1/c/411053cb6657a3cf8db50a2d004a112070ca14b2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

