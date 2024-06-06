Return-Path: <devicetree+bounces-73384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA348FF2D4
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 18:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 640941C253B6
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 16:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67756198A22;
	Thu,  6 Jun 2024 16:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0H4g1rCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBFC197A7F
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 16:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717692555; cv=none; b=q7qeI62Mm/3y9cMHVr4gO9WOxuhutCO4LtreTx/RUzhJ34uef1YaiZXqUtFRHKQNfOdgH+XuTpaw0YTjbW66VkGsSOEmuAN9k95MySadfopcl/OSwmXSt2qjIUzw1ilH6MlSugUj+RhC4Z7AEFC18wgFMsohphx2Ss2EsQn7qx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717692555; c=relaxed/simple;
	bh=tiCDm7bQeazIveQ+TqmO+DoHjVeAxore34wgY+AIKtA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YavJzI7uLCeuEg3nUREcoFA6+aCHwhzSWEBiEhFIKTkwtXxMZhD2nxSwMNcFtnJkySfX448lInLJrLQKy9iFAZb2PIlfBaPmojv54qI7wGLkPTMLw86tMpIgAcCPfNwm/Q4CN1ka+Xzh9Nhft33Y0un2wdYhalfwJBpDU8KtLU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0H4g1rCz; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42163fa630aso3329765e9.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 09:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717692552; x=1718297352; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oSUOm+s6w//51hXzTTT6KSVkXugh1Bfh/htdRvH7neQ=;
        b=0H4g1rCzcv8h6rM2GF8mN95vHh2SrC4PSELJgLqRtj4vvVwBX0jH6LrLlOw/Xv7iID
         vyQc01cckNJ53zsK5lDkLoxD3Zk7nPIbcHhPMeTxPf9g9CJZMIrzkR8a0Gfh/6R6QMo6
         h7/T3dLf7HM8mUvpOC5xdaFGL2glbX88SBwBYgFstAYpurfskGcVxmv1bNkTTqZQ4Sui
         DP8Qi53QsKDAwwLkoxstaqNVBKeTEqQRzr8XC2Be6QGewdSXP/osXq8XodLxka2j49yP
         v3mQmsXT1z6wbU6htgNo6pwtcZ7532vdGH1y6twH9vNw/IqvGYZpsLlNkeYxBlUdGUmf
         nNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717692552; x=1718297352;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oSUOm+s6w//51hXzTTT6KSVkXugh1Bfh/htdRvH7neQ=;
        b=Xgjn3X8al0P9mB0HAJmalkNxZExIm6xP3UCWyW/QLtcOcQcBxq39HBZMD92tyRXW6t
         xyiLhnzeZsToh3rBwXsVGidk2N1BBNFEpMc2nywEG/7vzzEyYG1mczl8+CWh0TBjyxrG
         4O5MN780vdj+mi38gB5PUYc/grXyLu5JxYwkHasU5tY+nmhpaB3KC2QRiYbeOTrmLXRJ
         fS7ygZqBlS+RssLCmXWhlN7tXrwqzdaWvtAqvy1QBTYN2rjX2fqO41fiDsHKXrVSMxpi
         gCCrl9Nr0779BSvDzFOnR0Z2WOdbOzVifzYTHrAWIpnqlfz5D0+IrCiS4CJtjJ3PcJ23
         +GCA==
X-Forwarded-Encrypted: i=1; AJvYcCUzaAKSnqRww+Zmq/0Ftp1Xd+olzR03r7wzKz+CXnPuRf2DH80WclBCFOOcbuSTXdlmNlDPIhjey7MvOVro3QSQ0ZFH1ahGFwuNpg==
X-Gm-Message-State: AOJu0Yw56I0HWsUDiSt7i1pgEccKfWNxZnjjT+mOZFzqwlxfa63XbmLz
	sDTXxZdspEA0cTjWrkCPl1aa75TaBz80L2NlkmkKzbxl/zfKN1O6ZxXUVYxbfhY=
X-Google-Smtp-Source: AGHT+IETeVy2S0X0ToniwMemG9HWaKxUfz7+suNaSmJu6XYzskDMOIIBIvpEEBYVVz2aX5u3vA6tIw==
X-Received: by 2002:a05:600c:3503:b0:41a:ff7d:2473 with SMTP id 5b1f17b1804b1-421649e9f54mr2318905e9.4.1717692551704;
        Thu, 06 Jun 2024 09:49:11 -0700 (PDT)
Received: from localhost (p509153eb.dip0.t-ipconnect.de. [80.145.83.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158102af1sm61361915e9.16.2024.06.06.09.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 09:49:11 -0700 (PDT)
From: "Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=" <ukleinek@baylibre.com>
X-Google-Original-From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Date: Thu, 6 Jun 2024 18:49:10 +0200
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	michael.hennerich@analog.com, nuno.sa@analog.com, dlechner@baylibre.com, 
	devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [RESEND][PATCH 0/2 v6] pwm: add axi-pwm-gen driver
Message-ID: <wrniwk6ywjinuejn63fx7fmbck26arqtbsihz4ctqatd6coi3s@rwugd6dxsku5>
References: <20240605203507.1934434-1-tgamblin@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="reyzrg4yf7eenh64"
Content-Disposition: inline
In-Reply-To: <20240605203507.1934434-1-tgamblin@baylibre.com>


--reyzrg4yf7eenh64
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Trevor,

On Wed, Jun 05, 2024 at 04:35:04PM -0400, Trevor Gamblin wrote:
> Resending due to missing real name in "From:" line.
>=20
> This series adds support for the AXI PWM GEN subsystem found on FPGA IP
> cores. It can be used to generate configurable PWM outputs, and includes
> options for external synchronization and clock signals.  The work is
> being done on behalf of, and therefore lists maintainers from Analog
> Devices, Inc.
>=20
> The series has been tested on actual hardware using an EVAL-AD7985FMCZ
> evaluation board. An oscilloscope was used to validate that the
> generated PWM signal matched the requested one.
>=20
> There was previously a follow-up series
> (https://lore.kernel.org/linux-pwm/20240314204722.1291993-1-tgamblin@bayl=
ibre.com/)
> that enabled support for two different versions of the AXI PWM GEN IP.
> Since issues were identified with the v1 IP functionality and v2's
> regmap is the one listed on the device wiki
> (https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html),
> the driver was changed to support only the v2 IP after squashing those
> additions. As a result, the overall driver is simpler as it no longer
> uses an axi_pwm_variant struct. Support for v1 IP can be added back
> later in the event that it is required.

I found a minor nitpick in your patch. I applied it anyhow and jumped at
the patch opportunity myself. Patch in your inbox (or at
https://lore.kernel.org/linux-pwm/20240606164047.534741-6-u.kleine-koenig@b=
aylibre.com)

Best regards and thanks for your contribution!
Uwe

--reyzrg4yf7eenh64
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZh6IIACgkQj4D7WH0S
/k5jMgf/QgQYjCo0fHzsyrRbeEkabbKST7oz2dDGTe+6SpEgxK+krU45hdMQI7hX
y5kpSC7CZO1u50/LUIwjXX6wrLeipcVHWhLqc2PCdQxMExWJwf/kClGEcE4lEZpm
Kb/kJYjoz0GDmBPF8EoFnacvJSbTddC5SSGEh4+mELSSLctgp0g08/5+2NlbkX57
rz0lh3+QTI79KQ6+AS/5RYXK/y6CHNDFv9e8k/VkexVmKuwMX9SEKPRqu07wnh+4
y/wcwRwpvtPyR9zgAOsaui0V69Mghy6HExyhpJkcWVD5+wOK34gbq10GMvk1Cpy3
2O4NY7enbdjhFbL3cbxKDG4aWVy5fQ==
=5lHp
-----END PGP SIGNATURE-----

--reyzrg4yf7eenh64--

