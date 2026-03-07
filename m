Return-Path: <devicetree+bounces-272402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIVXFO3/q2neiwEAu9opvQ
	(envelope-from <devicetree+bounces-272402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:37:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C851422B181
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC0903011061
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D011A3876DB;
	Sat,  7 Mar 2026 10:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dxnMXs27"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5CC36A02B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 10:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879850; cv=none; b=ZzAniWOKyK6a1EtTMtAVwoqS8HhLa0Z14dbHNNX+7LfTt0lL9xa2Ewuhhk6JkJ0KO2rkNWoq/EAPYSVz2X/lmaVln4/8wEFvUqIZJ3cuqJ60SnQ8mEql2CEiVtDLNfZJzu71X3DrNNe4dOUwiEGAjgBHOizoRjfoXtsNYxTHeH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879850; c=relaxed/simple;
	bh=6KqKy/Dd60nk2QrYoe3ZsdhugKxz6bXkdh0cmEC7594=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EAbwNeO46GMXKUETDEsyetytPAml45iP86JXMdbIzQXU6cZLOvI3DAwZoR/2Ji3Rs6m7CNgPZHE9ctGuRNXUhyqFsmpvvJ8g14tXgCiSx3IzqacLGFf3+vMJjgPsD6ggMjcuaTQWxBgPN1Njflw3qciTsp20uTdEFZw91qBU2ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dxnMXs27; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-483487335c2so84385835e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 02:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772879848; x=1773484648; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=f5dRvU5hSjZG/d9NEVJAuQDH8Oh+ysj/HM9E+z96h0A=;
        b=dxnMXs27+cJiLSkIIQpyQglmgzTN5pKyM/TS7X51h6v0hVmGGQvgtB0J8M4ZQXSOTi
         dPkWrCx56zurdI22bqOovgrkn6EF9YY2WVyAHK/pF2FVxfCz235RIcVf1o8VIb0VxJRM
         d1vHWsB5d0AZCfGGxFDRki19Bl6lVOXRu3SrpobJe1muLs/IQUS9KGgMWBZI0x6YxSnE
         KQO/GAabxJApMFdHgL0XMYRfy6/1AZ1E0kH+sxLltAZm+Ht/jQSMA5zJEqRNEnr6FPpp
         hZVpRAbEw8PTMfPrhBp6IQqdqZXOkzvaZq7B+pKTuqmvsRq41ZE++7aEXqJQ1mdKVJrD
         IXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772879848; x=1773484648;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5dRvU5hSjZG/d9NEVJAuQDH8Oh+ysj/HM9E+z96h0A=;
        b=uYxG+V/IAkKljZPz0mUs/B8Eiaox7MiDl7VuFUkDAAHhtMLZrc41VnvJeQ6SpMjLjh
         tz1MXYZYt1QeO5qK16tm4MyGQehoUoWRoBJNzQxKxjad7Jxmz741qquIisG5noPXxdu7
         YDVGCTKKFZjH7yCJt9rsabIr+Dun9qVkSYJQnLDC3hgcjZDDvY9dFqJH2c2T0aDvW4JE
         Sd+IxgmDDE/Ahe/ROmdull41fVN9RdsPDt0l4a9joU0vP2n7FMUVdKaN59+KkI9rnqHO
         B5E1e7dUDq9yiQJ1L6M8by9jzbmKfkPFFwRRlgEPxLLFurkLZr30SxdezFYtVtfpwn26
         jKBA==
X-Forwarded-Encrypted: i=1; AJvYcCVYo9tiDVxVP0UFvBVR6IABCsAqtb/njCucReSPHOJrs789A7glpa98zxqe5u0HMP8Lb7DjX8YSMa7u@vger.kernel.org
X-Gm-Message-State: AOJu0YxDSkLWqBkEnUE6je3zmItG8dpDH3tMCbTqe++tMHr/aRQ9aQlz
	URhndd0IjhJbWz9qbk5mrLejleAD/x/A/FgJ2DM1qVPuLARfQSoYJ7Ou
X-Gm-Gg: ATEYQzyZRRI0xFaL+MpkMORdSf3wOw6j2YSqzaVvKHCmT0UB/+xt7VD/e0W6yha9wW5
	QeXIqXNw8x4QIub76zXJ+l0HAUW48RUoOSDnbUh0K1d0J3hG8g6DSAdzorSVhD9lHnUiYApKfEl
	KCxkyRS5yGj9qB+WXXHF8ecNCS0uP09PKjkYA7iU3nzHqN8nawGimiH14cD4p6DgBv8DOW/hPda
	l7j67VEXinIkCjxgE7zwdP2B0+ddDuOKoV8ghuundg69cAmCz/ialLsjqbI0g9jkB0YrzTuEj8o
	dDHt/wdXjPwBB0jZrdwgFAedrqRUV0L8W917hnoItlU3wnhei+NTwCBEt0ud0SsKmkoXRumffd3
	JX3hQWj4cYBDFnc47usCv5UN3aTvxqxfhO8/h93tBL68VBxXnLNYXqOHnTO6Msoorh4VaCR7Fhq
	it7YpKCk9arhvJzWkhoadtn8sbXHA1NDPJlqELDDBnZYFjmUncO+7bXw==
X-Received: by 2002:a05:600c:1d04:b0:47e:e7e5:ff32 with SMTP id 5b1f17b1804b1-48526983292mr76044105e9.34.1772879847564;
        Sat, 07 Mar 2026 02:37:27 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ece8bsm55380715e9.4.2026.03.07.02.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:37:26 -0800 (PST)
Message-ID: <69abffe6.050a0220.18164c.58d6@mx.google.com>
X-Google-Original-Message-ID: <aav_47Qtdnpncdll@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:37:23 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
 <20260307-otter-of-imminent-merriment-d3475d@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307-otter-of-imminent-merriment-d3475d@quoll>
X-Rspamd-Queue-Id: C851422B181
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272402-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.849];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mx.google.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 11:32:57AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 08:01:53PM +0100, Christian Marangi wrote:
> > +	for (index = 0; index < AIROHA_PHY_USB_MAX; index++) {
> > +		enum an7581_usb_phy_instance_type phy_type;
> > +		struct an7581_usb_phy_instance *instance;
> > +
> > +		switch (index) {
> > +		case AIROHA_PHY_USB2:
> > +			phy_type = PHY_TYPE_USB2;
> > +			break;
> > +		case AIROHA_PHY_USB3:
> > +			phy_type = PHY_TYPE_USB3;
> > +			break;
> > +		}
> > +
> > +		if (phy_type == PHY_TYPE_USB3) {
> > +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> > +						   &priv->serdes_port);
> > +			if (ret)
> > +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> > +
> > +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> 
> Nope, you need phandle to express proper device links.
> 
> Don't sprinkle compatible lookups for new code which does not need to
> keep things backwards compatible. How do you manage device links
> without phandle? How do you manage device probe ordering?
>

Hi,

the phandle to SCU was present in old implementation but later dropped as it was
said that it wouldn't describe the HW.

I will readd as airoha,scu. Is it ok for you?

(I actually prefer phandle than hardcoding compatible as it makes things more
descriptive and prevent all kind of problem in the future, so I'm more than
happy than using that)

-- 
	Ansuel

