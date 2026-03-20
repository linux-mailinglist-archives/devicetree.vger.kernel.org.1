Return-Path: <devicetree+bounces-278237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DReBbMuvWmI7QIAu9opvQ
	(envelope-from <devicetree+bounces-278237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:25:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F902D980F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B54930C6EE5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45313A3E92;
	Fri, 20 Mar 2026 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ftubBwgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21EB372EFB
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 11:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005714; cv=none; b=hgNnNti6D4qYyYoEQNXP/nu4GN9VKdbP1tCMODpgds8mTyegtwButVp1Q3lqiSg8tEazZoCeSOVWbnFiX18U6hnyA3GWarWbFi6halh0XQR+YsKi1T3iNtX7D2lo88YDNhCnRwN65haYlLuC2rtxfHljrnfMwmULu1fLsb9NId0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005714; c=relaxed/simple;
	bh=Kap1NF8qAwfz1jNFb4It5HyW+OIdruVv+i8Ry9pr2sE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kezHXiGVUwrVGfrVYu+3VufQx9TsSHkuA/EGobdAdBlpKkMLRn5Vr5bzcZzcGj6qJ75qvYZ7lqCkZhVHpd+4r9SY2k98f1B3vl7wIktiN+xImtbpHIagpuhcW7mRb16gljTw5B4eHFhV547UeY8H0f+25a2pssaGuli6wcIj5rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ftubBwgO; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-82a62714fe6so926950b3a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774005713; x=1774610513; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SERTDDOETwbnm5ZBLxTdhDL1QG1xN74dj065fjHNw4Q=;
        b=ftubBwgOlOvPTOD5rXOwU03Pym/MvP6Q+NRhDnbJzjOmMRuzkt3EqbDB8EcGg+fUz/
         D6VJAzhHEIEP6W31jCtBd380YedyJb9c6X9LOEYsfGnL7arXoDotLzhGeAaBGJErJWc/
         ykucukgM/DDHmTw4fDTFmZe2RhrF3PZgIIjQ56WKk04xcfyIQWcyQqmcjz3nuzwwzilI
         2kADyuL9iMN1r7K+J2KSX2VOUV4vx0Adm+nHHI1velzqZl6WU/5fWphySMYayYyd+Vp3
         2aiCBjEQapuhkBuq7Iqf708W+R9NZ7oaEPk7igu48gg2XesuodFn7f+RZtaIMlSNUSq5
         119Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774005713; x=1774610513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SERTDDOETwbnm5ZBLxTdhDL1QG1xN74dj065fjHNw4Q=;
        b=AbGBfmtciQDIHeo1f/yFUVaqeCXwgVmh/TAInhZopdSDWxiFAUS1qRx5IY/eCEnPeJ
         QyumqtGMUj4s0lrCcwekkc04eXt9+fDEMpVAVgt8gigoJqdC33irajy7K52DPukPbBqm
         ewAdSCSaU8rc+zqaJ/1YFFy3XfMtwbM8k4+jQqCNrBDej5jse2hwWeWpSGEQ4WRPisBv
         KgFVPCOvd02M03mUkn6mBU15qREQZ+/ukUwRqYZyUcXQhznGtxB8h96n96jZ0Vxh3RZP
         VOt4anA5YJTeoTjxSC2xzhtR02sG1lz+kdHgEoWxF2JbiH6A0/NqdYeb7UNgajaTTxT+
         N3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVu6ah+v1ZoYsYxtTOD4fnV4qxzLLoHYSO+Al+6Uz0umK7SRA1bfL1pUQwNyadQqdMTcn2IgCnKp/FE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy06WyQgVEKz4QU5XQmL8GGwksVGEwdV3G9QaPKXNT8AWogYbyd
	xOMkSJ2eEmSwQUHJir83sHiE9/OmkQAQ4F3PT6ZPlFGONjzxwUcwBtFS
X-Gm-Gg: ATEYQzwvKtVefTZvXt9LisFZNvZ7mavVR4VPTeSPEzXEojpNWN3UDX9k6lXZ8fcGOTt
	N+jJtNmvaHptiBWEgwAxFEAqj8YYAcWA8J8HX4XU9tjrVPY35ubZwhFUrGmcHmSVP3c+7GV2jv0
	jLeRlz0NLan2ezBVzwtKb85p8DrqjtceM2asFuK1ijDRc9uj9ymzzEkPtSJVgr39f3z7NAsB7vk
	WJg8mBpGXFSZIE/lkxqNT0qVZftXxiAXk5kb30vxd0pgnwE+zzP75vEdaicH0cQO0AEKE/yCvfG
	5P0JvBJU99f+V+hayQEFdDJ6JM3rzIXzdDH4a41LhtiYYWZQ36x1zT60NcaoLjrPkh92bcbkDlp
	U37aOWOrFM4zrUju+NsoUBu2A5Uv4g9pyF9XNlnBa9vsHhzqxClrKLsnnwUNri0z4Y2tRSzTTdA
	qYpmeALCDeFuBYCj6H918Kzvv56GcZtrDWt+5ItXJDnKJ+ZMUZGNS3gfzgr2iVJnPTulpXQ+kIK
	nz0FhlsgfNmGGzyu9+ims9QNvwx1HL2Np5hw8hFothEAvYYhAo=
X-Received: by 2002:a05:6a00:3a18:b0:824:b304:2d1e with SMTP id d2e1a72fcca58-82a8c2a1df5mr2016480b3a.8.1774005713032;
        Fri, 20 Mar 2026 04:21:53 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b0409f582sm1790118b3a.33.2026.03.20.04.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 04:21:52 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 20 Mar 2026 11:21:37 +0000
To: Conor Dooley <conor@kernel.org>, rodrigo.alencar@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH RFC v2 1/9] dt-bindings: iio: frequency: add ad9910
Message-ID: <zi7ifl45h5fu76rlbdubkeq7wa7gtve5wsdruo574gzj5qbfu6@fl6rh3soaj74>
References: <20260318-ad9910-iio-driver-v2-0-e79f93becf11@analog.com>
 <20260318-ad9910-iio-driver-v2-1-e79f93becf11@analog.com>
 <20260319-annex-varying-afbddcb825b7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-annex-varying-afbddcb825b7@spud>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278237-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.822];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 33F902D980F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/03/19 05:25PM, Conor Dooley wrote:
> On Wed, Mar 18, 2026 at 05:56:01PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > DT-bindings for AD9910, a 1 GSPS DDS with 14-bit DAC. It includes
> > configurations for clocks, DAC current, reset and basic GPIO control.
> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>

...

> > +
> > +  clock-names:
> > +    oneOf:
> > +      - items:
> > +          - const: ref_clk
> 
> s/_clk//, not like it can be anything else!
> 
> > +      - items:
> > +          - const: ref_clk
> > +          - const: sync_in
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    minItems: 1
> > +    maxItems: 3
> > +    items:
> > +      enum: [ sync_clk, pdclk, sync_out ]
> 
> I'd say same here, but then you've got some issues with differentiation,
> so idk.

so I've got the names as they are referred in the device pins in the datasheet

...

> > +dependencies:
> > +  adi,charge-pump-current-microamp: [ 'adi,pll-enable' ]
> > +  adi,refclk-out-drive-strength: [ 'adi,pll-enable' ]
> > +  interrupts: [ interrupt-names ]
> > +  clocks: [ clock-names ]
> > +  '#clock-cells': [ clock-output-names ]
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> 
> Worth pointing out, you haven't made either clock-names or
> interrupt-names (when interrupts are used) mandatory, so the properties
> cannot be used by a driver. I suggest you make clock-names mandatory and
> interrupts depend on interrupt-names.

the dependecies is not enought make them required then? understood!
 
-- 
Kind regards,

Rodrigo Alencar

