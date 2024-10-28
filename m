Return-Path: <devicetree+bounces-116564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7979B33FB
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6729C1C2176A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 14:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCD081DE2AA;
	Mon, 28 Oct 2024 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jvxL9o2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EEA1DDC3C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730126959; cv=none; b=SJbh87Kc9aKbQsp/kzYx4+aKUnEQsLNdUb/r+zmU2C8BnQJCQxqHluR+6T+GNKrh6NbSe6PEpj1XRI0p0gifzeT6KsGLXrDprUtmxs0yiTqHj9nTd1CU8O1p+U3cmrHEpwGQj4K/3pQwKY+s/7jZO9NkdoLOP8rUZD4dn0GBQv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730126959; c=relaxed/simple;
	bh=Lj5qeQvfVSYPijoJ8KXf22qOzE58rJTQ+nvgoPDQIa4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PrJOlcoZMK1IXaIEILF89d2eTIO7uDBKlAO2aCKd96gmGvn9gctTBKPgfuDhOxseqwlh1o4zYdOaCI1Js1v9ziHqXgUp/FwBTfuZ9Hz+Z1tZrBWGX+qOUMy+c//lwLc532QrpQgevHgfuR9qI5Po0wy3Ujm45wOEHoG1CG59FIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jvxL9o2g; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so42896915e9.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730126955; x=1730731755; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CaPYz53ew2gx95k4ULY/j8X206olAgthkt9FCNBp5/o=;
        b=jvxL9o2g2pABUkfB4f9ynx2fp+wRALi7GdU3tQojGKoJ+vAnbnHQLFkXmoXMBS8Sic
         DEiE2lIE0Zt1FODRMwyvJleyNDuZkWQrpH1MoUYcrQWmdfn4Gr0qdBVKjvF85SntRkJn
         lrWcRabN3h1OSUJBKRfhfjFHo+Pi3neODDXtRSt51IqQ3UCJXdKxlXnNMup9rEDKOlqf
         3/PBidkYI2y3J/ITUY/aaC8UKvgUKAQraA+3D/SPdrXeOhpJV/aGZ9evmn4j4Ox1c1vP
         IofesmOcLvi1kCc3w3mIWrzwz93OVbKWt2tbourwe0Q+BGlpw+DpcJ4Edu+Oe9eK5fdF
         NOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730126955; x=1730731755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CaPYz53ew2gx95k4ULY/j8X206olAgthkt9FCNBp5/o=;
        b=MUCqKQ8aWTTVbktJj0bSpAlgWt/gXWwoUf9TJ1RZkRkF/cG4gGkywJ2G54O+P9k4ZG
         q54v9VyjSdnahOlTjRkCwPEjkJQjcPDQNQvpA6qpKuD0Oby7uI8b930QcIqoqGOrv+dD
         V0Vky9A1ta8wr3NugjsUpNplO6s5Oa+FXE3uGnStaBKPRHw56s89gTNA17yHqzsyt4XQ
         8/c0mLAuJM142cxZ3TP7FZ+fk6JnzCX2ZCWfaxNREKI1QfFAYUfU4dbmXAiW+llZvQzN
         FKEiPms8MGhtcz3IWpDJfH3LEQOD2IFYaPF9W71kxmd5i50UfOjwxtIyCaZjptsg5POO
         RBWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJmwfwpDUchLYt7ab5seuR2HmNKSlP9o9iId8GkZyIXpuTRe9xB+WQntEtpnohvVcOxI/XVAoMDxNy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj3wjDMBmrBdbz3Ipip3eJjiwghhC4g+1YBJtaNgpZlAtuVWkS
	epUATAd2EeLFVzdypD+3EXPU2HphiFubcYOQiKBlVF5Ijmj8o76j6phki2qGxm4=
X-Google-Smtp-Source: AGHT+IFxXNoJjvvEWI7EdoBlBRxvjVqId7VO2o8bkZtwJXZ2oUgS7llQBk2awnVf3u386gmvAmYDFA==
X-Received: by 2002:a05:600c:4ec7:b0:431:5459:33c2 with SMTP id 5b1f17b1804b1-4319acacb31mr91712715e9.17.1730126955302;
        Mon, 28 Oct 2024 07:49:15 -0700 (PDT)
Received: from localhost ([2001:4091:a245:81f4:9c1b:19fb:62cb:cfc9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b55f689sm142187985e9.16.2024.10.28.07.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 07:49:14 -0700 (PDT)
Date: Mon, 28 Oct 2024 15:49:13 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>
Cc: Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v3 2/6] firmware: ti_sci: Partial-IO support
Message-ID: <7l5ok4bufvewoimrecm5pajlqqmqg75rjthivdufoqhphfgiy5@xo7f3rrdr3zs>
References: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
 <20241012-topic-am62-partialio-v6-12-b4-v3-2-f7c6c2739681@baylibre.com>
 <20241025174204.xwmsn2arcy4q63xu@reaction>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xq2jo632shlb63xp"
Content-Disposition: inline
In-Reply-To: <20241025174204.xwmsn2arcy4q63xu@reaction>


--xq2jo632shlb63xp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nishanth,

On Fri, Oct 25, 2024 at 12:42:04PM GMT, Nishanth Menon wrote:
> On 16:39-20241012, Markus Schneider-Pargmann wrote:
> [...]
> >=20
> > The possible wakeup devices are found by checking which devices are
> > powered by the regulator supplying the "vddshv_canuart" line. These are
> > considered possible wakeup sources. Only wakeup sources that are
> > actually enabled by the user will be considered as a an active wakeup
> > source. If none of the wakeup sources are enabled the system will do a
> > normal poweroff. If at least one wakeup source is enabled it will
> > instead send a TI_SCI_MSG_PREPARE_SLEEP message from the sys_off
> > handler. Sending this message will result in an immediate shutdown of
> > the system. No execution is expected after this point. The code will
> > wait for 5s and do an emergency_restart afterwards if Partial-IO wasn't
> > entered at that point.
> >=20
> [...]
>=20
> > +static bool tisci_canuart_wakeup_enabled(struct ti_sci_info *info)
> > +{
> > +	static const char canuart_name[] =3D "vddshv_canuart";
> > +	struct device_node *wakeup_node =3D NULL;
> > +
> > +	for (wakeup_node =3D of_find_node_with_property(NULL, "vio-supply");
> > +	     wakeup_node;
> > +	     wakeup_node =3D of_find_node_with_property(wakeup_node, "vio-sup=
ply")) {
> > +		struct device_node *supply_node;
> > +		const char *supply_name;
> > +		struct platform_device *pdev;
> > +		int ret;
> > +
> > +		supply_node =3D of_parse_phandle(wakeup_node, "vio-supply", 0);
> > +		if (!supply_node)
> > +			continue;
> > +
> > +		ret =3D of_property_read_string(supply_node, "regulator-name", &supp=
ly_name);
> > +		of_node_put(supply_node);
> > +		if (ret) {
> > +			dev_warn(info->dev, "Failed to parse vio-supply phandle at %pOF %d\=
n",
> > +				 wakeup_node, ret);
> > +			continue;
> > +		}
> > +
> > +		if (strncmp(canuart_name, supply_name, strlen(canuart_name)))
> > +			continue;
> > +
> > +		pdev =3D of_find_device_by_node(wakeup_node);
> > +		if (!pdev)
> > +			continue;
> > +
> > +		if (device_may_wakeup(&pdev->dev)) {
> > +			dev_dbg(info->dev, "%pOF identified as wakeup source for Partial-IO=
\n",
> > +				wakeup_node);
> > +			put_device(&pdev->dev);
> > +			of_node_put(wakeup_node);
> > +			return true;
> > +		}
> > +		put_device(&pdev->dev);
> > +	}
> > +
> > +	return false;
> > +}
> > +
>=20
> What is the binding that supports this? I just do not think that
> scanning the entire tree for vio-supply implies you will get thr right
> property here.
>=20
> Just giving an example to illustrate this point:
> Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt says it
> needs vio-supply -> so i have a node with the wireless supply as
> vio-supply -> Since we are scanning from NULL for vio-supply, we hit
> that, that is a bad choice for enabling io-retention.

There is no bining that specifically supports this as I think it is not
needed. The devices that are capable to wakeup the system from
Partial-IO are all powered through one supply line that is always-on. It
is called 'vddshv_canuart' and the name of this supply is checked
in the above code as well. Yes I am using 'vio-supply', but only to
search for the potential consumers of this supply.
So wl1251 will be skipped in above code at

  if (strncmp(canuart_name, supply_name, strlen(canuart_name)))

Best
Markus

--xq2jo632shlb63xp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZx+kYwAKCRAkjLTi1BWu
P5akAPkBBA8XP72OHJ8p/zMDU3gXL2huEO4vEwmxe1IyxQoJxgD+JMD6nnbu+xSY
BpaZm8rb1PNiiWmGX4Nzl30WM0rIrQM=
=ak4k
-----END PGP SIGNATURE-----

--xq2jo632shlb63xp--

