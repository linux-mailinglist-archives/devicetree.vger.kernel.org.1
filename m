Return-Path: <devicetree+bounces-247744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AD7CCB09D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:59:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 310E1300F3A6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848A22E8DEA;
	Thu, 18 Dec 2025 08:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lV9hhaQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A924678F
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048383; cv=none; b=RQfGtLomP/DlA8N1IciGilOeTgO5DsbiAHKrKJGgNfliQNtzibDDg9CLhwp2sJySLMoSvbAbD24qQzbU3EcHAQSQBMDAXUZ5SM/PGPtqgxZoVgwgd/8528KbnNIby8n2tawZw6cqwJIJA93D8O4nC5Rg/QIVSytQ6eJIu9O5dhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048383; c=relaxed/simple;
	bh=7ZE8YPQl7QsEhuKovaLGrW39lp3Jy3s9vIV+4Kv2ZBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M28MEgNJrez0ErBWGYrZmuxhTeMsZmY9YcXp4XfkzgTDyZ6tcilrLyCwB/klvtBhrUYwEd+sWLvgYwTA9rO3VqViqQ5QXpHDHgDIJUjZGvUEeQIs783M4Y20oYjEmc+acY/AMqaW46g9EuUz/sVNecE1ZkfSJOm+mV4peBu9Fxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lV9hhaQl; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fed090e5fso156903f8f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766048380; x=1766653180; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=om2rKE1N70JJX4v2/KTDKJc7zTx25w0NNYinUpFagbI=;
        b=lV9hhaQlmT9xH5Qk1aelHxDmRnbcj2JNUm0zvUXX6BTIzYzDgFvgSooARdvnhDOfnn
         x3diu8N8W8b+BzAiVU+EsdbPG1RoQlCOLcw5bXJhia/AJm2cJG1NVE3XZgnRyF8gLmQk
         KsILHfi3ko/P/tlnOj6t/+6QwGSRs5YAHP2usPRIM0SiOJO0/P8L8X7flNsUidmk/an9
         x+0gF2bOMqauME+ktt/8k/zyGshC+p1gW4A0Wts7hHLUQ/3gyk2ptUoo2CTV4L1Hexlq
         2zdHJek6DhFL17GtwjB3GKzebndVVvq+MFd/ZjrhKd+M8dg+58otg7GIxrqyI3X6T2hK
         GH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766048380; x=1766653180;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=om2rKE1N70JJX4v2/KTDKJc7zTx25w0NNYinUpFagbI=;
        b=pdUpzbRJ0DVBq8dELHQ9GUAESbv3ISS7wvsdgqbBNuu4R7ZSSd0Sj9q+UpojbkpZHe
         QLPgizcQ+szm/mzYKYcj9umqtuSMaRbY6ZS64646Hd4K0XPFDbgtlW+msgc1srrxixqo
         6fitu9VIw3TB5qOyHTLNlvSbrjEy5PLUuT0XV0Tek26XN06B0Nnf0toq7V6pECafhxTg
         mNv4quNPy17yC2xY4Kh4DVC1Saste0FrxlRmLb4xbY8D9mAz18gMQ/wvu6n/1BR/eZj5
         C/JZXvEO/EGn8h4fLkADkSrME+QYlUr0sFl5PCDfYYVnaaCtpi36/YEvbuJeUC46OMgm
         MDng==
X-Forwarded-Encrypted: i=1; AJvYcCXVcNng7tcgv4C1ckzqSZhJKpzt43/dvvzF61lh6o9+34YKeE8djOzbg2NPzS170p8FBTfe3WuR6WgD@vger.kernel.org
X-Gm-Message-State: AOJu0YzH3DLxzOqDMtyjRSPdqQllQ2OIGsD2rtnCRYr60pkgBhfTTbJg
	wW1MnYPiatedMqaNreblIHKNaNbUJwRyEx2QGJqTplFFk8O9jKYt3ZyS
X-Gm-Gg: AY/fxX4o9d0RNvmDqgWQZll5kXYRS4JCSZrNqMhjyn+NfaLN+teq9by6DyDBd6uxqor
	WGy8cdu4kXZiAWbXW2WM1PFCDY1EL3v65qXbogO2+FGqlmml8zJL0Hbo5joYfF//oI9eiB49MEP
	zsN1IjQEP83l0gNJS8lKlxytLn2r4tE09nzQPRFmJi/VfQeVpJkVIU1D2jK3M0GJ17to+XdRXPy
	ivl2fvZNNIz6f4Xpc8NZ97N5Xsnnm+7sbV7N38lGvwEvYTE/nxiUBThNUiDaKNPD/9nqhCFDPgw
	OwC5HrXv++HcqdtPIcX+CE9aAM55G7mwCb5OytXibwhBXYaSHUPOfibfivVpq/I8mjWsLplfdu0
	B3pM5fDJ5fN6pDaqycj3c/OCZu0GmC5mgKbjpe/MPCpgme9CqZQ2DuyUiYYHGUS6U0XmlFLzni+
	wYoosOkytu1A==
X-Google-Smtp-Source: AGHT+IHxOQV0spgMiB52IXhgfbDdjuVcdRSJjF49j8AXe42emIt9cYPpNASAPSENE72KVOdCKF+RWQ==
X-Received: by 2002:a05:6000:310c:b0:431:9b2:61bf with SMTP id ffacd0b85a97d-43109b26377mr8616701f8f.12.1766048379911;
        Thu, 18 Dec 2025 00:59:39 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:12b2:a0ec:fe74:248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43244998ca0sm3716959f8f.32.2025.12.18.00.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:59:39 -0800 (PST)
Date: Thu, 18 Dec 2025 09:59:37 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, andrew+netdev@lunn.ch,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	hkallweit1@gmail.com, linux@armlinux.org.uk,
	geert+renesas@glider.be, ben.dooks@codethink.co.uk,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, francesco.dolcini@toradex.com,
	rafael.beims@toradex.com,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH net-next v1 2/3] dt-bindings: net: micrel: Add
 keep-preamble-before-sfd
Message-ID: <aUPCeeRkLwUBBlax@eichest-laptop>
References: <20251212084657.29239-1-eichest@gmail.com>
 <20251212084657.29239-3-eichest@gmail.com>
 <20251215140330.GA2360845-robh@kernel.org>
 <aUJ-3v-OO0YYbEtu@eichest-laptop>
 <aUKgP4Hi-8tP9eaK@eichest-laptop>
 <20251217135519.GA767145-robh@kernel.org>
 <aUK-h6jDsng0Awjm@eichest-laptop>
 <49385cb4-6ce9-4120-9dd6-c08d763f0564@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <49385cb4-6ce9-4120-9dd6-c08d763f0564@lunn.ch>

Hi Andrew,

On Wed, Dec 17, 2025 at 06:04:56PM +0100, Andrew Lunn wrote:
> > > I think the ideal implementation would be the MAC driver calling some 
> > > phy API to apply the quirk, and then that gets passed on to the phy 
> > > driver. Surely this isn't the first case of a MAC-PHY combination 
> > > needing to go fiddle with some special setting.
> > 
> > I was also hoping to find something like that, but I couldn't really
> > find it. However, I will try looking in that direction. At least we can
> > identify the broken MAC via the compatible string of the MAC driver, as
> > they use two different compatibles: 'fsl,imx8mp-fec' (fine) and
> > 'nxp,imx8mp-dwmac-eqos' (affected by the errata).
> 
> Maybe see if you can use phy_register_fixup_for_id().

That sounds really promising. Thanks a lot for the tip! I'll try to
address our problem by registering a fixup.

Regards,
Stefan

