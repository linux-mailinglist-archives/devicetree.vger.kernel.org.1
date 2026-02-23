Return-Path: <devicetree+bounces-267656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kP6KBDnQnGllKQQAu9opvQ
	(envelope-from <devicetree+bounces-267656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:10:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB7F17E038
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 928AE307DA56
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 22:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F77A37F726;
	Mon, 23 Feb 2026 22:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TQ5gyb/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f68.google.com (mail-dl1-f68.google.com [74.125.82.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA7E37F721
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771884179; cv=none; b=NlOrR/LJUmkYL7lGAycyQpGYG1GhKtJSBZgS8nSGwEIcOSJ+H2YkEcBj60U2OIkpc5UvyHZXWSIbCZue6Wypcb2FVlH2TIG63ViEtLmCBCXwij4INlIY/TNBbG5cot2ZAhKBSHaWxaO4bBMLc+Y8Ss36QjtzvNlgPFF/bWsq8gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771884179; c=relaxed/simple;
	bh=vOliKEklsOkVi2OI7GEGcuD2cvljfQQ9hSmIICKD6dM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rMlccvscmJj7aE0r5PoWjlE0BJfZVqqq1Xy6rN+F9jaRelitTxuSzGkG8LgOPLynBZd2a22zMGxksTzgjTrWaiQktXeWBRXNekOIF0mQCgoY0SoZnE4MiVO6C4L4CLgvHvay1UpU/AmfNaUVneHX+rlod5E7RdyS0xO1G1kDAds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TQ5gyb/s; arc=none smtp.client-ip=74.125.82.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f68.google.com with SMTP id a92af1059eb24-12776bebe9fso632799c88.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771884177; x=1772488977; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sY2gQZyu0SZT38nxbLjfE/c3YsVd2LXz174z3vm70B8=;
        b=TQ5gyb/sr8NBLGRzSAUJZMR87ixey/NAp8QQTwTfzPnunLa8XvyJBva+t9MRoMqe51
         3oDp828niL4Xl9f8afs8ekL2dSuM+/R17kqLxVunuIqX4PHmUmFX4dqd6GTcTHRyQZsx
         /538iKUn5VfKadX8K/3xxUIGn1L1WgzfbeBiynF92nWz8Of6wjHaIapaj48onv35ps7f
         lS4ljH/sxs77LWKG2gSd4r5J6gqlOTBrG6tFJD7lcgHn92CaR0QDloL5uhFFbS0CZFqe
         e1U6spOZ01mrYW/UjdfJEB2ZkFDpBhPoh5Ob0wI6h+KhCxr6O7vJPWe/ttEB3zneeOaV
         BWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771884177; x=1772488977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sY2gQZyu0SZT38nxbLjfE/c3YsVd2LXz174z3vm70B8=;
        b=VxFJRnfohNIimssrIkMAjakLabTEOpz1wfi8iswCGZms1Rpb2k8AjHD8O07qPn93a4
         s8ETSd4Iz5hVvKWblxXWFMZU+RDDYwImXQb4O7s48jZLlzVKfrNO2YRhDliLmcCrtMzO
         MtyHWO6QIjV3yYbxRx+2tLOwCxTTRpVrbjq7A+l6YZbWKUF+ySARanrd3f0xHtTKLy+R
         mRGg8d0Paph2vuIpW/yn0L0nCHHpkYv2JGEbqXJCspCHH0HU6uUlPs+NXlnGltnDqhei
         GQbEigVFi418JkeyZbl++lciOSXdFvIf1sJglRRdyviJHBa3VVuvXegynqyLPMlqIwca
         9S9g==
X-Forwarded-Encrypted: i=1; AJvYcCUNDKjMXqiEgbX1tmswRPACgXdo4vtii+vov4WjMlozOHkgMDl37OajSNif6nmH1z7rF25IEkoSd4a7@vger.kernel.org
X-Gm-Message-State: AOJu0YxbABIgi0SNYFYRSDE0cDTGzyQ2eo4tH5tVyxcPSwBuJVFa/tiU
	RTbzhpQYvVmuut5zYHRnzdwQQUehSw96UZSd0ThJun1OxXUNJ6j/nIOW
X-Gm-Gg: AZuq6aLMJlj19eBErdkiYaOjKT1o0pBTbQt0TWV6HP6mlofLKEf+N2cJgk2e47or90L
	uEunhm+kxOXYT1lKl9E0no6AKVK1ds2fUdTW3gcJEwGpcP8FMLwyn0wDTN/VrIvBCXHCWuUci+b
	7PbgLomW2VGQMrErUTFfuSjYeZSlmeMdcOiTSF/3oB9bFwa+CSHfCV8UyzifCxOmCjEeeoMM9lA
	Y/3t1ptU6Z8uycL5WU7fEAQt8Cfr4nl/acqhAtm+xGBA/MF/5bPyXgs7lABgLWWhaNZaCieFDMw
	N7LUF4wIH0A/7ad8PhNQ652tg14Z7ibsGV7gXhD7JfuaYwUo/f/bRoUa9g1FanYyg1pUUC6ffkH
	nlaXkv6UIDvYqQ+6yiO7xyhpYTAEMFLxfd1nwbBftiVIkyStg0vg73Nl5KlJrY2LVpIUH2+gEnL
	Hvkytlslv7/AFroRjoi5Xrt3vjQWeTXjMfYtyccwdEx1C+8RzlyFjXPQMZSN88SXRn
X-Received: by 2002:a05:7022:1602:b0:123:2c98:f65d with SMTP id a92af1059eb24-1276acbc65cmr4160327c88.13.1771884177083;
        Mon, 23 Feb 2026 14:02:57 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:1b48:5d6e:ab6e:5287])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af20fc8sm9623904c88.6.2026.02.23.14.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:02:56 -0800 (PST)
Date: Mon, 23 Feb 2026 14:02:53 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Svyatoslav Ryhel <clamor95@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, linux-input@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org, 
	Liam Girdwood <lgirdwood@gmail.com>, linux-leds@vger.kernel.org
Subject: Re: [PATCH v3 5/9] dt-bindings: input: cpcap-pwrbutton: convert to
 DT schema
Message-ID: <aZzObk7Ripr0Uh6Z@google.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
 <20260223063858.12208-6-clamor95@gmail.com>
 <177186521369.3975744.16898258990517269078.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177186521369.3975744.16898258990517269078.robh@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267656-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,baylibre.com,atomide.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6BB7F17E038
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:46:54AM -0600, Rob Herring (Arm) wrote:
> 
> On Mon, 23 Feb 2026 08:38:54 +0200, Svyatoslav Ryhel wrote:
> > Convert power button devicetree bindings for the Motorola CPCAP MFD from
> > TXT to YAML format. This patch does not change any functionality; the
> > bindings remain the same.
> > 
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
> >  .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
> >  2 files changed, 32 insertions(+), 20 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> >  create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
> > 
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Please merge with the rest of the series.

Thanks.

-- 
Dmitry

