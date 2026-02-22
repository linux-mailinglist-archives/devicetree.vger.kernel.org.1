Return-Path: <devicetree+bounces-267151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GepMkffmmkRlwMAu9opvQ
	(envelope-from <devicetree+bounces-267151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:49:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB5D16EE8F
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BED653011F2A
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB0822D78A;
	Sun, 22 Feb 2026 10:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S/02ciuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920732253FC
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757380; cv=none; b=AerE8S5pZKi/+L8rX9MNiltWq0mRVRmtpLUsQTRx0oXTHfOO6z9d0jBqt0eSjiMURYaYXqL1B8tLBWpiBJldn5sgzbrUiq6oJOMbY8nCnyAp27mYzmRmsgGyKJD5jRgBORf4Q648mB/BUnybQlJM1DFBSyRgey5M0Q1O7s8sVnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757380; c=relaxed/simple;
	bh=aFid0Q9EAFG8hgo9XzVxXgpSmcdWSf2NQEiUDjszoAc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DFahrpjgC/1XPXcztkOQctG0J5vT/tlBjqnyJ/gdd4apDjfxMr+lbbN3ngtk7udKLFzrQTu3DcncqYnjusiWiOg3nKdQP5EiPzlPMuscOzeeez6GW2aB8xOWxDsFKpeYyGjux13y6KKMfmaWpXcEVyij1rTpfUrscyd6gJN6D6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S/02ciuY; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4362507f396so3393713f8f.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771757378; x=1772362178; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4iOYzXXu7pNppZDAAr/5PifrRwxVT1ZlY3UB8ntS2Ws=;
        b=S/02ciuYq+ZJKJVaxnoRHfCnEpFLE2pMOaTxWifVhI7J7tljr/UL35Iirnl7PuLDke
         PhVCplGlwFUKMrNwJepPptmO4pelpuGPU5glOEs1kLQIloezQf11wuCpvk7idrwpfVUq
         UDQkpTESPrAcY2NJ/kvHljkU6jdXP0m85zLE6zIaguBdiSMvbRedAYmUb+IjS/shpJn3
         Fs29AfrkKXAYAF66LPXjaccBU6lcMb0cmc/V6aF2deocd/6L8c/CmJ0NkqWT9d9W+c0T
         m4nTujZVe9aJ84IDtncwpkY8bkqOijyKTJqniuL7+PFGCFlBM65BMHGJUEOm220riuS9
         LrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771757378; x=1772362178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4iOYzXXu7pNppZDAAr/5PifrRwxVT1ZlY3UB8ntS2Ws=;
        b=MnV8j+uHKLGln+OIbEw5inOqDexcmX07X2ZZPlzK5ZFCiPSnjycyXMAIftkAXuc5iS
         EQ0TyspdCbTE62bsSuuBLE/clyaevkb7Hw6Huyf03ePV/ft7jRwm9d727Rid2R/Zswem
         x8tqmVOd+E2fgAVk1zNQ0+2X2Z9K7bZxL8JrnNpSU2YnPRWuEMZxEg92StDNoANHxNde
         mRVZXVNvXgBkU3hwraIocaaTBWWxRFqZn34MqEXGaUles1eneVeIv/53Brc4SyhfK8eR
         1icQ5aIisKanDKzGfbyLX4HTmOXbbnfs5EB37yayicZeX6R4xyl391SerhTKEJQij1t9
         6KRg==
X-Forwarded-Encrypted: i=1; AJvYcCVWxyVvStwS5nit0ItvuUjn3b/VHECL/XFdtIGOypT19F97qhdSA4haIKEBpo5oNGk6zFqdFnu9Q684@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2yxiTU0Lh+d/DDLQw7VD0f0Cr5kDLU6hHzI//wwysP9gHfvM4
	knForSlxKHvpepC3mgf5M4d4s1zTSLk72aSj/g3Bt8lUCXb3kFIxPPJc
X-Gm-Gg: AZuq6aI3CGMq1pY6gfgutDYIci72xdSBI6CActOTU+SWKe65D6QJ1l0i88SleybT+SX
	2S7UJhIatan4RYIKtgpP5HbjwAAmSOBDrts8RRDqmzfCOnLJ08ae3U3Jj+OD0aYIih7VU13WqG3
	81TJFktMd0P2r1O6Rw0WtITCN/tt4LxfSXo7xS4mq3FOmQAkGNc6YZAuNd6o4Ubc4E5S/NBIaH/
	bzNkTyorAfsgNew9dngjvfyYknt4ryxq7doYG9WFn13+NJP4P+P1GE2bDHj2e6dv8Zvttf0bjK2
	WcBh9tHnBm9g11NkGEil41iD2GWcWrNFqTRRSjeAX18tkzh4r7c42O8GeKfHg00p9srx6a7Tj+Z
	ac1kZWvgTI4tii896lEktl74K+3jKn22GhGYdD5idiRgUDDYiVEWrY/2jcmke7HQAp2u1JS8yM5
	aYHc4MrByGzolrtQFwo+nE4lfTv5Ts5KhEGei9f752HhG7ZhkbVHJclehvg5dKMu8qodHQ6Y1/x
	bD2JkjZgpgf1XglNPlAP8RwPBketQqdcbZ+dxzjylaSB2uiZ7g=
X-Received: by 2002:a05:600c:314a:b0:483:a361:41a5 with SMTP id 5b1f17b1804b1-483a9603aeamr76521485e9.30.1771757377708;
        Sun, 22 Feb 2026 02:49:37 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00485sm12453138f8f.9.2026.02.22.02.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:49:37 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Sun, 22 Feb 2026 10:49:35 +0000
To: Conor Dooley <conor@kernel.org>, David Lechner <dlechner@baylibre.com>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 1/8] dt-bindings: iio: frequency: add ad9910
Message-ID: <rvsygiakolyb6gtinpwojn3atj6i627zmpxecbs4b2z6urllp4@iaxemesawckd>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
 <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
 <20260221-batting-amiable-fc01ae386789@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260221-batting-amiable-fc01ae386789@spud>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267151-lists,devicetree=lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[24.206.116.131:received,100.90.174.1:received,209.85.221.45:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5CB5D16EE8F
X-Rspamd-Action: no action

On 26/02/21 10:43PM, Conor Dooley wrote:
> On Sat, Feb 21, 2026 at 02:43:02PM -0600, David Lechner wrote:
> > On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
> 
> > > +dependentSchemas:
> > > +  resets:
> > > +    properties:
> > > +      reset-gpios: false
> > > +  reset-gpios:
> > > +    properties:
> > > +      resets: false
> > 
> > This seems too strict. Couldn't we have some resets from a reset
> > controller and others from gpios?
> > 
> > Or maybe the reset bindings are enough and we don't need the gpio
> > bindings for the same pin?
> 
> Actually, I'd be interested in seeing evidence for the resets property
> ever being used with this device. I think every single reset-controller
> that's currently documented is an on-chip device for resetting
> peripherals.

As mentioned, an FPGA IP as an IIO backend (MMIO platform_device) will
implement the reset controller interface.

-- 
Kind regards,

Rodrigo Alencar

