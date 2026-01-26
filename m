Return-Path: <devicetree+bounces-259653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGMJFmPWd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F38D740
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4031B30292FA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6762DEA6E;
	Mon, 26 Jan 2026 21:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kSnjMggr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAF92DCF67
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 21:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461337; cv=none; b=M2gyHWoei5taHqm9f+C25MDbVhUpPU+OjUGWKEeMVMpb874KP5i72oKjtiCWFWGONuEjfzhDP/JXu4MgJ70ZBKMWWnpudTD1XSRC4/IjwA/7FlP+XnX+6NsL9QQFBduVgFtS0HPnadrZpY2E9vi8lF7eTPakdpDjEqHiy32bf0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461337; c=relaxed/simple;
	bh=WqSXMgwN1bj6WlKNWD0giAIg11OWSEsUWJe5KbkBJ/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RFFI1tKfkYn1TV5JgZ+D1gF9lWR8fPlsB1oEbdeFtiMWM2juHOQ0gd566FXZb2wuwFUVXJy6W1dogVy0/M58O3b4rgkQvhCfnscHlgyNIG8GtN5uUhembtDcmZeMvieIZFKIttazNb6ZWMuzbKlQ+SBCDMam61OVdz0+4wbuq8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kSnjMggr; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-944168e8c5fso3353740241.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769461334; x=1770066134; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iCW3LI0lwZJMRrEDS+3kqbUxY3kv4Hh4/Y+P85JSc/0=;
        b=kSnjMggrPbSIYpPMCGAgCSd3P6ZKwTKVJ7Gllmkp3Y13h+M0iQ1UqIrVhjb/huCwic
         T4IevL2fmQMaukLIq4EDpc1Bq3jq3upjgd04f7UecP8ErhkRfFCZEmdimeeBOuxUVKbx
         TUkKypBm5MiTO1shflR4EPkQXvV/hMbn+YlNbM7TZFeUIMyPK1+f/Bo0KeYaorHo13cG
         UfJqcayqToBN1gDrkHK+iaTLUZ6J3RrVtl7ET1k4c8+pVDT56to7LUQ7dV2pZN2jjfUX
         XbV+ESl/bHqTKrCylsI3hktNJGd5a8ejVpoS9wiOfZyMCCeXFeArmehbeCrENfNt3vzC
         S0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461334; x=1770066134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCW3LI0lwZJMRrEDS+3kqbUxY3kv4Hh4/Y+P85JSc/0=;
        b=VQN2Thf3NI796SIdWmOdkxZGlpSRJ2PyL7IGC9VATaKx5c8KjbnpxTmljrUHZZH+lh
         KBzUhLPZ72CE0cAJBUhxrZRXmh9RfVzPCqqjSsRmKXUvZbuJdiFZRtcJ9k6qhi+rUX6d
         jrgF+TSxFHE1YcxduWF5B7gwMl+e/GtseLhnzgw4nNh5ymS8q57XS4NKaC3cw68mjbWA
         POUWgmw0RkCgUqhTzEMyMDsX1WrVHnvH+gbPBOLjelmHTKYWS5scgCb+lfFqMRgqCawq
         zpXnHnrNVHWEcF6N8dnK1FPA2ZprEgAsrg+bEgq5Marg/0qPmC0yQJbC9rf0oV8OXvHH
         iKtg==
X-Forwarded-Encrypted: i=1; AJvYcCXsbrzusifW8si0fXYnEtqdZYV0KyVVdnWgUkotL+IdmQ01/XqrwCIp+hk7BfLbYCHvBUNT1c24HcUM@vger.kernel.org
X-Gm-Message-State: AOJu0YzE5GO7MnVEmmbYnXT+Da9ArMR2loFcv1KIVOHKs1GeTnYitEW1
	FJsVDgNSWYWOG186Er7G1BBrMz/X0I9LIOCMh/ghsmGbhR+U4TkXCtfl
X-Gm-Gg: AZuq6aIeS1or8ZdY3/rP3bf2+kcOTayZk8S7m8wDNkJ7g4nom9Dg5SQdWXwMAzASwEc
	4EpCJA2TJTSfQoxHqhXGDBMBMhr+/x3yhi7+G2f5w23ZOx83wPcAQ8K5QR/wLOwnEZX3uO0PvrI
	Fqk4GijZcCyxzZwJmxNQUblREJMdHEDuekQbsheyyPY2qIHrMkS/uB/3yWTUB11/fpf3N/YpKkG
	RqJ8iD/CNh5c0ngTw2uWi5hVzKbhlhnqjTiqYLOep58IetxI8wLo9cuLfyOTT6hs5nb3xiBvWCe
	TjxUk2yUqf7iQqDM/MZLIgjCrTGb+5zeHkXAwkyz4zNM0pZKYMsml8cwbbBKCy4+ZHlu5X88E39
	xSfHgECzHBkR6LGgzWAiDnKJiaKvpCRRIPclp6GHg7TvLm5nw7PRSkh0w5Afhnm2BX1o3+F1+KF
	DUqEkDAsaPmqLfMJWAeTydXbjVYDl19RB1mK2wI/CAjf4XV6YbFXsy
X-Received: by 2002:a05:7301:1003:b0:2b0:5028:bafd with SMTP id 5a478bee46e88-2b7642198c5mr2076868eec.8.1769454774472;
        Mon, 26 Jan 2026 11:12:54 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:cb35:17f5:7e82:90c4])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b749e301f0sm13452476eec.35.2026.01.26.11.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:12:53 -0800 (PST)
Date: Mon, 26 Jan 2026 11:12:49 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Christopher Ruehl <chris.ruehl@gtsys.com.hk>, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, Vincent Huang <vincent.huang@tw.synaptics.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Frank Li <Frank.Li@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Fix emails with spaces or missing brackets
Message-ID: <m5ckxhpvhtjcc6fzlsz7y5sjxvzlbx6n7vel264hbw47joivi6@iwchebcbyjod>
References: <20260126164724.2832009-1-robh@kernel.org>
 <9a3d4ae8-b57e-450e-971b-d09fc923eee1@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a3d4ae8-b57e-450e-971b-d09fc923eee1@roeck-us.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259653-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[synaptics.com:email,devicetree.org:url,tq-group.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,samsung.com:email,gtsys.com.hk:email,nxp.com:email,zx2c4.com:email,roeck-us.net:email]
X-Rspamd-Queue-Id: C73F38D740
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 09:21:15AM -0800, Guenter Roeck wrote:
> On 1/26/26 08:47, Rob Herring (Arm) wrote:
> > Fix email addresses with spaces or missing brackets. A pending
> > dtschema meta-schema change will check for these.
> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> 
> For hwmon:
> 
> Acked-by: Guenter Roeck <linux@roeck-us.net>

For input:

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

> 
> > ---
> >   Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml    | 2 +-
> >   Documentation/devicetree/bindings/input/syna,rmi4.yaml          | 2 +-
> >   .../devicetree/bindings/media/samsung,exynos5250-gsc.yaml       | 2 +-
> >   Documentation/devicetree/bindings/pci/mbvl,gpex40-pcie.yaml     | 2 +-
> >   4 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
> > index 3d14d5fc96c5..7b38f2182ffa 100644
> > --- a/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
> > +++ b/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
> > @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >   title: Sensirion SHTC1 Humidity and Temperature Sensor IC
> >   maintainers:
> > -  - Christopher Ruehl chris.ruehl@gtsys.com.hk
> > +  - Christopher Ruehl <chris.ruehl@gtsys.com.hk>
> >   description: |
> >     The SHTC1, SHTW1 and SHTC3 are digital humidity and temperature sensors
> > diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> > index f369385ffaf0..8685ef4481f4 100644
> > --- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> > +++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> > @@ -8,7 +8,7 @@ title: Synaptics RMI4 compliant devices
> >   maintainers:
> >     - Jason A. Donenfeld <Jason@zx2c4.com>
> > -  - Matthias Schiffer <matthias.schiffer@ew.tq-group.com
> > +  - Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> >     - Vincent Huang <vincent.huang@tw.synaptics.com>
> >   description: |
> > diff --git a/Documentation/devicetree/bindings/media/samsung,exynos5250-gsc.yaml b/Documentation/devicetree/bindings/media/samsung,exynos5250-gsc.yaml
> > index 878397830a4d..9196cf5dac0f 100644
> > --- a/Documentation/devicetree/bindings/media/samsung,exynos5250-gsc.yaml
> > +++ b/Documentation/devicetree/bindings/media/samsung,exynos5250-gsc.yaml
> > @@ -9,7 +9,7 @@ title: Samsung Exynos SoC G-Scaler
> >   maintainers:
> >     - Inki Dae <inki.dae@samsung.com>
> >     - Krzysztof Kozlowski <krzk@kernel.org>
> > -  - Seung-Woo Kim <sw0312.kim@samsung.com
> > +  - Seung-Woo Kim <sw0312.kim@samsung.com>
> >   description:
> >     G-Scaler is used for scaling and color space conversion on Samsung Exynos
> > diff --git a/Documentation/devicetree/bindings/pci/mbvl,gpex40-pcie.yaml b/Documentation/devicetree/bindings/pci/mbvl,gpex40-pcie.yaml
> > index d286b77921e0..8f5d33050348 100644
> > --- a/Documentation/devicetree/bindings/pci/mbvl,gpex40-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/mbvl,gpex40-pcie.yaml
> > @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >   title: Mobiveil AXI PCIe Host Bridge
> >   maintainers:
> > -  - Frank Li <Frank Li@nxp.com>
> > +  - Frank Li <Frank.Li@nxp.com>
> >   description:
> >     Mobiveil's GPEX 4.0 is a PCIe Gen4 host bridge IP. This configurable IP

Thanks.

-- 
Dmitry

