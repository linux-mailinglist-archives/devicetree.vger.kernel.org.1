Return-Path: <devicetree+bounces-235775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E8C3CDBF
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 18:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E20864FEF7C
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 17:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89F834FF76;
	Thu,  6 Nov 2025 17:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="XaHPLzPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D95134F495
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 17:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762450099; cv=none; b=cIcxe3hQhtlUwdhwBgi62/nAnKen9mB9TX3wgjlgbI11OBcXDmcZ21QlT4L7cG2JIO64/8E1mch0waqpqFiSfMdg2qAN/qsdzV4Ccd5C64QqmB5TMsT//FgU5RJYPNT4xoTxr8N1BOb42UDB+nxbrR1K36yjeML7hABybhEYoK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762450099; c=relaxed/simple;
	bh=oYf852XmPSnTsJPv2ICqCZVY+o8aM4NGtu/MMcDrPWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tuzsyWyzd63VxrRXQheaAOhO49amZoBq0aMj/hPY1ILZS7rkBZ/R33agkRisFB1KmmGt+z1HjFfpj8f60yVaYjNMlQM3YeOPFpyq6IgCzbEAAgwDBaLuAY/jo0Yqep17hNWHuQiXXars1a4NecRVcVZOC7ENbckBgwSwBJpSM4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=XaHPLzPI; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-295ceaf8dacso13511145ad.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 09:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762450097; x=1763054897; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hLBofMqKN3VaS7h4xsO2CKhBBssknoWp+VFnYQ+9NIQ=;
        b=XaHPLzPIM02VsOdfbUt6zi/wEgDft/LZ9LZfDcxBu9gPSlClQNeydtFaGgw9yWZ40Q
         BxnX5BxQgO9RGZ0riPY3gaJnPz/jl8lZQ3S2kzRuS8HFw/CWVsIiJBM1YzJL6OHDXE00
         8rIudFOM21CYGtbyHhIb/7wAwMk/tYJLsm0u1Dkj+kRNEIQ3gVr31VqFhiweaOs7w/wG
         12ZUNks+HMeM4SJbTOBkecqT7IbBGNH9oMD1zGUbEM4L0MbVbL5TieWQD+XhCfrhsBkR
         7d+zKrGNAHGd73eXon5p5dLCbxjIIxD1QrXMcuvH1WyLLeCZAhoNkt126gJxxw/GR1w3
         3rXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762450097; x=1763054897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hLBofMqKN3VaS7h4xsO2CKhBBssknoWp+VFnYQ+9NIQ=;
        b=xQJWTkvcvEyusZHbe2ZL9/C0daGd8kibffQkJqZ7SesuQB095pjhYfvJe2+8FtNNbI
         uq/+NcoHM5XzIZHwyYPG1QZY2n4UCXM8dCs4CbLv8EkpBv2L4MNKKPEb3l409BGKadXx
         SN/xpKhVzVFYEhI8N8+pe7o+YCy9xcJfq352CZtgnfOaYuuBWypSNhnV2kbDVvGw8+lo
         dWALC+hxEAuyKB/0wBwySpIsvO3C8IfHGBxlCexbmj35nPIU7Kr0alIcIDDq8Zf8MKTi
         Yy2TSsZ6bxJOSbeDj/uWsNQBRYego2h+NQwH3DB/9BtItqe5/xWPCl5L+Ph6AN/M4Zk8
         1Pjg==
X-Forwarded-Encrypted: i=1; AJvYcCUW7TXK8vJzjDhVm6UXqFjYRf55/hkVfNmge+R2/Rb2fhXX0Uuvken4XsoQe7G7rcVdJGg4535ADcBG@vger.kernel.org
X-Gm-Message-State: AOJu0YzNMxRw5OnsbRX6xroqBohXGBnBTVgeZis2XHPCWzJFKLEaqEvJ
	6IU4bilNeJI+ZFFBmK1AD1GUSdB1j/lnxQFKL6Nr/ul94zEHTM2HiLienS2v9n3hGA==
X-Gm-Gg: ASbGncs0ThEkmw4IaaxbXOTE0li6QRAjR0/r9BvDQS+qpEJVkVU2CCoDO1iqus1xlZO
	5xnashIfKQhndZFr6flVXIVX1YZzsuG66Dm/bacyBdcHuKSceawStFWX52E/ghRLXTHH7YhBWXR
	CJVGhH9q19K+FKYR88jQv/kNMSvqLbYx/KDTVNkmAXnb3MhzQJA05qE/fCexHQv/U9cHThAnB1r
	r3DpugFMcrBCCuRTXnU9u7SToNyNHdsbp5iByu4WuVr1FcKCq7vszbacojELQt8soyBmwHrl9uH
	aV88AMA99edwmlL/Nf5W1Ss1zrfejZP1KnzNyVm3LlvkttlMCCCbPeQGka0fw/P0x5TWcsVGFeA
	+qsENuXLAe9a0DdBkp4ebuzReW/neRMlKlAL+ztAIloNdmNn8IJXCABEQW3iXjqlfMBx/RlbfaV
	Il3zLatlG78DS5/ZQ5XxDJsFBSsn5kbh5/gDmhpBP7KjbG
X-Google-Smtp-Source: AGHT+IHBNC1jf6r38TkeQ/oHkizcoaleYcZliP5t+OWlYI2kyXAfaGDt97VYWBSTlcQmGkWVXUqktg==
X-Received: by 2002:a17:903:174e:b0:295:82b4:216a with SMTP id d9443c01a7336-297c049df28mr2482025ad.55.1762450096884;
        Thu, 06 Nov 2025 09:28:16 -0800 (PST)
Received: from google.com (232.92.83.34.bc.googleusercontent.com. [34.83.92.232])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650968298sm35077625ad.6.2025.11.06.09.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 09:28:15 -0800 (PST)
Date: Thu, 6 Nov 2025 17:28:11 +0000
From: Benson Leung <bleung@google.com>
To: Jameson Thies <jthies@google.com>
Cc: dmitry.baryshkov@oss.qualcomm.com, akuchynski@chromium.org,
	abhishekpandit@chromium.org, krzk+dt@kernel.org, robh@kernel.org,
	bleung@chromium.org, heikki.krogerus@linux.intel.com,
	ukaszb@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: chrome: Add cros-ec-ucsi
 compatibility to typec binding
Message-ID: <aQzaq2ord0gK-gaL@google.com>
References: <20251013203331.398517-1-jthies@google.com>
 <20251013203331.398517-2-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XuiAe52XEjP5vh9N"
Content-Disposition: inline
In-Reply-To: <20251013203331.398517-2-jthies@google.com>


--XuiAe52XEjP5vh9N
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jameson,

On Mon, Oct 13, 2025 at 08:33:25PM +0000, Jameson Thies wrote:
> Chrome OS devices with discrete power delivery controllers (PDCs) allow
> the host to read port status and control port behavior through a USB
> Type-C Connector System Software (UCSI) interface with the embedded
> controller (EC). This uses a separate interface driver than other
> Chrome OS devices with a Type-C port manager in the EC FW. Those use
> a host command interface supported by cros-ec-typec. Add a cros-ec-ucsi
> compatibility string to the existing cros-ec-typec binding.
>=20
> Additionally, update maintainer list to reflect cros-ec-ucsi and
> cros-ec-typec driver maintainers.
>=20
> Signed-off-by: Jameson Thies <jthies@google.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Benson Leung <bleung@chromium.org>

> ---
>  .../bindings/chrome/google,cros-ec-typec.yaml | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-type=
c.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> index 9f9816fbecbc..fd1a459879bd 100644
> --- a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> @@ -8,17 +8,28 @@ title: Google Chrome OS EC(Embedded Controller) Type C =
port driver.
> =20
>  maintainers:
>    - Benson Leung <bleung@chromium.org>
> -  - Prashant Malani <pmalani@chromium.org>
> +  - Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> +  - Andrei Kuchynski <akuchynski@chromium.org>
> +  - =C5=81ukasz Bartosik <ukaszb@chromium.org>
> +  - Jameson Thies <jthies@google.com>
> =20
>  description:
>    Chrome OS devices have an Embedded Controller(EC) which has access to
>    Type C port state. This node is intended to allow the host to read and
> -  control the Type C ports. The node for this device should be under a
> -  cros-ec node like google,cros-ec-spi.
> +  control the Type C ports. This binding is compatible with both the
> +  cros-ec-typec and cros-ec-ucsi drivers. The cros-ec-typec driver
> +  supports the host command interface used by the Chrome OS EC with a
> +  built-in Type-C port manager and external Type-C Port Controller
> +  (TCPC). The cros-ec-ucsi driver supports the USB Type-C Connector
> +  System Software (UCSI) interface used by the Chrome OS EC when the
> +  platform has a separate power delivery controller (PDC). The node for
> +  this device should be under a cros-ec node like google,cros-ec-spi.
> =20
>  properties:
>    compatible:
> -    const: google,cros-ec-typec
> +    enum:
> +      - google,cros-ec-typec
> +      - google,cros-ec-ucsi
> =20
>    '#address-cells':
>      const: 1
> --=20
> 2.51.0.858.gf9c4a03a3a-goog
>=20

--XuiAe52XEjP5vh9N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaQzaqwAKCRBzbaomhzOw
wp2+AP9SJFEYIzmMX7wReFg8A8bTfAW9puN4rGeQqHGMqCl16gD9H9LsKtJexPSJ
wJa/rxDyLKo1A8lNbYjk+JggefOqAQU=
=Gu40
-----END PGP SIGNATURE-----

--XuiAe52XEjP5vh9N--

