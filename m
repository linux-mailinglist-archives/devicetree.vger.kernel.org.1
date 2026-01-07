Return-Path: <devicetree+bounces-252286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6EBCFD222
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D523A300A6DD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6AF12D8379;
	Wed,  7 Jan 2026 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X1+qLOGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C402DE70D
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 10:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767781076; cv=none; b=LiKuPtSZbRksBZ9ofoqkzjgHCRWutVKezhTIXMg19g4HD8GnXnFQ4/pg9qpyNvb2TCKdN41BTBC32sEfY4l5Jy1nPpKlsvFkZheO8FUnLHp9hayzSKEGxV9uDlhTPA3xnfExaexrRoB0mSTvIe5yK4XYCeO3JGQe7DgmbvJCDEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767781076; c=relaxed/simple;
	bh=sZ3mYpTbv/XotPCF4CdZdQgefByrsCZvWPwwcFuFdu8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gCLsxa1SlbZVo/vd1//c1dvpCx2eGefIPH38TLu6BA5I8XjViJCpOkmEtW8oX0dy3M2wqJXAyWIDrb9DHEodw0A0Q559oMana45UVvpXMujeFeOBstxHW5YyWnstWtLJxRlQZgEOYD71cVIBLnXqwB5kW4uka9IHWf0M19KZiRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X1+qLOGb; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fbbc3df8fso1009013f8f.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 02:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767781074; x=1768385874; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zz5VqpciYzlzrDKhkNf3p0wOlTe+spDWVku/imh0wW8=;
        b=X1+qLOGbt8H+g5qDNZHBIy5tvYG6wB4JoYWcV87piCyg0xaFyFq5Cjp9HmMOzAcxr9
         Vamw4onaXp0qIxWm65AHgC2wbfi9h+HRGuBZ4kmnTcwf4CF6ydHJ1Xsysd8zX34hxO4w
         h5YFR6c/qoZEfwq55dHv4JM4GnztZIPPt8aszg4V1BmxsNOKVa+beYRDylNWv04pjTwJ
         vRYxg/aBVaZnNfMkXqteBL0GzinOJuch267whNRTL3Da9EhjQdc+bUmLCvzQlnBD6x7D
         38bspZlPuXqGcY0RDICLUfYLnztecMnbeoWPODWiyv3qb5vYN7RAX3e+kExTbYfQL9t9
         Ub2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767781074; x=1768385874;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zz5VqpciYzlzrDKhkNf3p0wOlTe+spDWVku/imh0wW8=;
        b=KtLfkzzoCIIQBn4kPtvrSc31M88j5Lv3OciCLOgsldXH/fAgui5MQiXaBe7qiV94h+
         YTLRHvXjo7owfH8FA4hJerYZuTmfJ7mRht2W11ycfxBbuklWKc8mmS2a8FZhsDZsBCuy
         JK9QjVuLCcuRNmToTF/Ym5OF+HaX4BPC91mMdbTvz8l4sX13FwiwT0dGQ3WV0XZ2XtuN
         juj5rcw2rlwuR9mywlu733QlK7Mw7X7UWwIVRL5CDu/e90JUfOSHbo6QK0kqATnpyPkL
         /9XseAnL+0qc3iDwzw/AMEXXxl+I1M+eF+1dpIz4yP3LxluJTZ+c8prT2LKx+JbdxdE8
         Ok6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUk9peJ/faPr73qwPiCiOIJF0P+5P7tN0LSW6wfJvIgOzFSl1iN2HJuhlH/9ICvKLPyZmrhyOc2Xb7g@vger.kernel.org
X-Gm-Message-State: AOJu0YydBypdsUptTELAQSsU/BpGewEfKvdN6t5cgX/DwfIGp+NYmMSB
	/AuqfytBhroeEqT1PJLiIt3t4NQiZkjyOLs4ddbg/ceGo+0iVbkziVfH
X-Gm-Gg: AY/fxX5csoIvYTBB94SxgId+X8bwf1G+ldHUZKeiy8Zh7/LUZotE98seMRzvew0Rrdr
	EP0zm+tTkNzJZ9l/9ozHiG+VGmD9+TExTwZhTEZcwOvtQE3rbXU5oIjcNttbVHlmtyvI1aqChYs
	LN7x+o8LJHAsi8eV4YbCNYkM2C1kIxQ5/+prvn9Et2J0YAxARCr0dYlFKOhMwvdMuLzKi7OkKE8
	/IDG/v9jUF5PZ0AycnvJUkY8dLnr2KUUF79fwYCuNRlXF6TI8sPOxMcJBmFX+1MmfSPsrc8LZEr
	edOIRmcp5f02P8ks6DP8Q6rijHhOsf1wFVkmrHTFhOoikUw9TKSYqUGhM8wa2tdsOOgw8OZfkfj
	sR2Tkf++eHOk7kKvBYtPb64Uqa6SW5pIjyU+axbKcxUJjOg4uhcdMsOcD+mm0V+Ox505tSLqsq5
	zIq+Wine2YHLC7lsfvceM=
X-Google-Smtp-Source: AGHT+IGVy0IzKXT0arvwyJMRyYIHdNRpHdjTMklcKCCT8hfx7RIZD2RcwFg53tOX3u+ah11y3aFn3w==
X-Received: by 2002:a05:6000:40dc:b0:432:5bf9:cf2e with SMTP id ffacd0b85a97d-432c377298amr2547801f8f.13.1767781073405;
        Wed, 07 Jan 2026 02:17:53 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e6784sm9281054f8f.19.2026.01.07.02.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 02:17:53 -0800 (PST)
Message-ID: <019bcd38dadb138fda4cf8b113c13b77a4581168.camel@gmail.com>
Subject: Re: [PATCH v2 1/2] net: phy: adin: enable configuration of the LP
 Termination Register
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Osose Itua
 <osose.itua@savoirfairelinux.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, michael.hennerich@analog.com, 
	jerome.oufella@savoirfairelinux.com
Date: Wed, 07 Jan 2026 10:18:35 +0000
In-Reply-To: <a587cedd-9450-4c58-bc39-ecbdd525ef65@lunn.ch>
References: <20251222222210.3651577-1-osose.itua@savoirfairelinux.com>
	 <20251222222210.3651577-2-osose.itua@savoirfairelinux.com>
	 <a587cedd-9450-4c58-bc39-ecbdd525ef65@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-12-23 at 10:36 +0100, Andrew Lunn wrote:
> > +static int adin_config_zptm100(struct phy_device *phydev)
> > +{
> > +	struct device *dev =3D &phydev->mdio.dev;
> > +	int reg;
> > +	int rc;
> > +
> > +	if (!(device_property_read_bool(dev, "adi,low-cmode-impedance")))
> > +		return 0;
> > +
> > +	/* set to 0 to configure for lowest common-mode impedance */
> > +	rc =3D phy_write_mmd(phydev, MDIO_MMD_VEND1, ADIN1300_B_100_ZPTM_DIMR=
X, 0x0);
> > +	if (rc < 0)
> > +		return rc;
> > +
> > +	reg =3D phy_read_mmd(phydev, MDIO_MMD_VEND1, ADIN1300_B_100_ZPTM_DIMR=
X);
> > +	if (reg < 0)
> > +		return reg;
> > +
> > +	if (!(reg & ADIN1300_B_100_ZPTM_EN_DIMRX)) {
> > +		phydev_err(phydev, "Failed to set lowest common-mode impedance.\n");
> > +		return -EINVAL;
> > +	}
>=20
> Under what condition do you think this could happen? Do you think
> there are variants of the hardware which do not have this register?
>=20
> 	Andrew

I think he's just reading back the register to make sure the value was real=
ly updated...
If we were going to that for every write our lives would be miserable :).

I looked at both adin1200 and adin1300 and they support this in the same wa=
y so the above
should just be:

return phy_write_mmd()...

- Nuno S=C3=A1

