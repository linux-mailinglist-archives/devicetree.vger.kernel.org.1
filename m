Return-Path: <devicetree+bounces-263361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKM4E73qhWk0IQQAu9opvQ
	(envelope-from <devicetree+bounces-263361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:21:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4FFE034
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1572D301112D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D12F378D7E;
	Fri,  6 Feb 2026 13:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UP3QpeMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88FB367F49
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384056; cv=none; b=Ecev/SbY/t/RPp98HhR16+7xH9maFjU4x8s5kqUix+9qr+hkxmm2bvMrVfPFFLJ3zy+MP62lCqDtDHU7HlgkS1Z2fQdJgALL/svK2R7MvOChmuEjADil6+CKSgXAj9dKmsfUBgFAjMZSsWZKMGFOlpmE8y6EieR5wggLO7UQHKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384056; c=relaxed/simple;
	bh=MFL2JcUT6XBkbvTvf0RTxu+0ljLyVw0pbemjp715oXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IU5Uq5udfpzllAXNEiZ89K+NJi9DTdYSAtRb3p848dmKtRE7jY/gA3bokFDp1fpYhbIw6NUi8+5D6Jfi6BFXoEPn68KizC+LD8gnc+fnXJxooIaiPITm6DfZaA+WrXSGg/5YZq/FoN1hC//6+NP6NigjZFOAkM+dnyNQAX1GPgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UP3QpeMd; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64acd19e1dfso486656d50.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770384055; x=1770988855; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zrTQt5CBH47S3XXW4HJj9QjzQOye6OspfLxjidxB16A=;
        b=UP3QpeMdJF1zw4n5yXKEaktjRbG7Rb2vodtQN2/C/Jf2o20aX5eQQagBKtnvDIv44S
         LWh4CpQFln6C0NwHfkMYRu22KViwjXWRDhJshAfMiuYLp8wFE0Z8kEYmopKBFrqipRIs
         390A+i9cjsKZdauuZRieBDvW8ifvRMXQTPFrK0B6eUMyhF4wo9KjaRr+B89xGoRIHxN+
         NHesOKrcqvhSvZ77cCFa5A5duzlc68H9hdPMI7O8nrlZziM5NWuWg6nGa2PdgosWSLvb
         oVorPIEMrvvpDr/Gh2apTlknjdYtJa6Ht5yidc2ElriD4uN7NSxiMTkyKd8Kso8iOm45
         ZhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770384055; x=1770988855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zrTQt5CBH47S3XXW4HJj9QjzQOye6OspfLxjidxB16A=;
        b=LZid9vRZ8haLzcHgXuRUguwCR+wueZ01TpZpBHIQZGX3xYm9mp7VRZSIk7BCgcjlNw
         SHT2B0Rzgewhz1lmQmvkwsmyRb6W9fZudRiFBZUGNlQz8s1/XZ7hBbxxIAm5eptXuzlq
         a/t5+DvR0uV9UzvDwXugX+HjLxenisWg2SMDkA9Nc/RX3eGVJS/RaQSZ8XuvS+Qxkc0B
         MT6xb38lC37gceqYZaG8AJeSqWCV51cL2g3YcN1SMjPFAuuUYFC3+PRkSbPrK+jdOyKF
         g2GABrDWskqUQcDCxCSLA01SaZPB6f/Hkbxij4G3t9PNqQVQpWLuflqZbl4F6mVc4H3N
         theA==
X-Forwarded-Encrypted: i=1; AJvYcCUqg20yIE5huqP/cPigWB9FPKeMNHxVLNm0I33vBNcoy2NnKWzx97UzTFB0SpBkCdGxSM9yU5hEATHq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd7dCfMW8ZAZ2qNU7jjrBD1BPzj0ucDN/4uaVdHjRsxXMzXVsZ
	VLKCQCdYxDx0Mhf8L6mepcUtF/4wkOcSdtxEfwR2nS47fb+8K20KJLsW
X-Gm-Gg: AZuq6aIZD3XyPNE8/yEQl6ER+WLji5qZ4oKSYDGlDwP3z6PvNm3WKViTX5EbBOp/L/D
	ick/LWtvy4UYi/xSwMZ2RioiHCHQJaZQm2AEC/+LSft3UaVf43wuqnFL/Lsq613pY8zfqXPwAEq
	1lopgoEIEytOKiJtDbSkLBtrl8FebgFRlnea7GTHO51d5WrJjfy82lyPVCwXU4RIvSYCvj0E60I
	iIuw43Z8EwJOHp9ySrA86yTEIYE9nthHiJVWEm4cX3EM50tRL0G+L7llbRqXiH+8qV1RlgriCyv
	PdtoLOu6vrhrhiv6mqbSwOOa8kuDtuS8gibLBjvtunx7YPx1nw6umw5fe3zSHjPDW6j4Z8uTY4Z
	uUCqkwb3hyuhvMWZuO1q+yFZvkkJR3EEc+3/EN+/YpIuqoH7wf8JHemqCzB3t8E2i6ov0dVnTia
	Bz/byUSqBCIt90DZ+0cQ==
X-Received: by 2002:a05:690e:1505:b0:649:97ee:f469 with SMTP id 956f58d0204a3-64a1c2ac060mr1591405d50.95.1770384054908;
        Fri, 06 Feb 2026 05:20:54 -0800 (PST)
Received: from localhost ([2804:30c:945:ff00:3e6b:164:acca:cc55])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f229d5bcsm2229957d50.0.2026.02.06.05.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:20:53 -0800 (PST)
Date: Fri, 6 Feb 2026 10:21:21 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v7 6/8] dt-bindings: iio: adc: adi,ad4030: Add ADAQ4216
 and ADAQ4224
Message-ID: <aYXq0ZSRSa_dBwWs@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1770309522.git.marcelo.schmitt@analog.com>
 <4b879f53450e87739afc0dbd832dab5a3f83efb1.1770309522.git.marcelo.schmitt@analog.com>
 <20260206130559.GA30712-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206130559.GA30712-robh@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263361-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.976];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4D4FFE034
X-Rspamd-Action: no action

On 02/06, Rob Herring wrote:
> On Thu, Feb 05, 2026 at 01:48:55PM -0300, Marcelo Schmitt wrote:
> > ADAQ4216 and ADAQ4224 are similar to AD4030 except that ADAQ devices have a
> > PGA (programmable gain amplifier) that scales the input signal prior to it
> > reaching the ADC inputs. The PGA is controlled through a couple of pins (A0
> > and A1) that set one of four possible signal gain configurations.
> > 
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > ---
...
> >  
> > -oneOf:
> > -  - required:
> > -      - ref-supply
> > -  - required:
> > -      - refin-supply
> > +allOf:
> > +  - oneOf:
> > +      - required:
> > +          - ref-supply
> > +      - required:
> > +          - refin-supply
> 
> Why is this moved under the allOf?

I missed the immutable branch with spi-multi-lane change set provided by Mark.
Am rebasing on top of that for v8 and will solve the this and other
issues reported by dt_binding_check.

Thanks

