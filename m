Return-Path: <devicetree+bounces-260147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLdIEE07eWkmwAEAu9opvQ
	(envelope-from <devicetree+bounces-260147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:25:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B969B003
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BBCB300C01A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF64735E54F;
	Tue, 27 Jan 2026 22:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TigyRkkx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCD63570C8
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 22:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769552714; cv=none; b=jdQ5R0srrufIy8kFRyQk6wUTwvwy9Md7WkP+ZylX8QOvibhUHBZ6V6koU3uLnqU4KySNEJJYgKzcORC37ee03Fcekk1r6Pa5AqUfRjjXhc6OSJXWmaE7rjk5VT/SSZOevhardhqhz4KXTcITxRpo8E1mt2KOXG7L69cVJ1fUZg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769552714; c=relaxed/simple;
	bh=KRUwvuwF/PM7ITLfpmVaWQqykACx8OV/i8XDHgots7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R3HB0nXAz8+oFL8NicweQxht2qmhl3jtr8ktDUhCyngPtGdJbDuQffhsMfiCf9MPXYyznZFzIR05EkPQjYcJpCN4ICay7GF0jrk/9nwWeqzew/3R7uXylGRwjZmX0n9XSNN5TfsKit/0i0i/gajUiOyFsVV/4UqqkCMrgsSICTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TigyRkkx; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-43595901036so13767f8f.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769552712; x=1770157512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZsTo4cAUvZp8jxGLFOJ3NaCEJaN65doECV0+BSV0gis=;
        b=TigyRkkxMV3hdbFSEVgbTG2m4CeA9EDIHe4O1galSIl+PfkDy9P1zcFB4jGVY0E0vI
         1SOY2WKbiaTb+7nFYxAbmko5C+6JIybI9BgZDQOCBaExYnI3a/NzfeXIinzZI65+mXwj
         MQ2V17zFKNuIVaVuc/M+KD8lG8tpeyY6dNklAqO8c9FvIcGt0EyXLVEUALeGaPVKTIBg
         5QouJyOQJ8EARqyFlMnm1CVXCweeTyBakakAaHdU3pktIwTlyAoKsLGNI2SMm/02Yd/q
         YFIv17oHcCvIa0Sfu3VoRviFNFF8e04VYDjpIXXLdtvvS3UvyMRQegNrO2o7oz89QKby
         UtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769552712; x=1770157512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZsTo4cAUvZp8jxGLFOJ3NaCEJaN65doECV0+BSV0gis=;
        b=NrsmUcAGmKeBlZAymZ9GuBZMjAXMu+U4drH2uN/6wM3KuxtMnVYXJQmag7aR/qE17r
         DwWA0vfqYEW+3Fp22/MC+IWHv1e4y19dgG5dP3XL5Im3ST+t1+YatSiehWlwauxhh94b
         xay3ceniPRhWwVq/Ar7p4ZvEa+8orZ6MyqKN16Ij1F13BnXo1EeyVuHKHrVApdAD3Yc8
         NzGyXPKSRNs9gLPbhV1cet4fSKVBzBrV85glKLxRM9gA2d27+GWlVvK+/i41FxcNfxIB
         ka8SDUZ4Xlgqm2vkcNWzQZm3ZUuxbdGoTq8mojVIrczU4H+iJT70z57So48rsGoOTlhR
         IHoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHCJ+Sii3dBfAx8+EEX3RtLBMy27+6phD2iik20ejm1NjRVCnQOO3rJLPzvr/biVSYlIj0amn6i03O@vger.kernel.org
X-Gm-Message-State: AOJu0YzKnvYSTU5DQtzrR7smscpeY0Um7/W8ErOzFXQlFrLe+wEG4NDw
	LxfCz64/pB1lgrZxTmg/K9wzG0890blGHy41m2ahzpBMMid3kctMgWcZ
X-Gm-Gg: AZuq6aKkOpeWLQ1nasASYqqvV0hGBCQ7VZ6LQIXCkt5hlnwsN3Zf739y/2mmXNTcN6S
	sIsbDQWrDMjPB5hAiiEY0Lk4fm3cmm0ffoRNbdrqS0lI2Tf3BW0wNr9D5piqhDkHAfkn3AxsMjc
	m1NTs4jUe9Zz4zSSEUycTwnpZIYk6UFUAaueqFT07Uiqh8vAHwoh/9N7YCJXMvvPXRhhfUpKu7z
	b1dqTdua+hab4YqcZEzGAd1LXAbMZQ5X5pSFp4rcpbEYSVmLxUwfcYJzRp1/uQAkTWnZECVw+d9
	kvPeoaTfAd3IqXN66G9l5B+hP7MhJizDAMQ+vr16PEooYO0Ff8xKiLI81rXVbkKA94kEGLnWUGl
	lQduwS5YuYfGm7nH1ChPo9oOoNA+ia8wLbbTSZGw/gdmmaoVeG5ctOMHlZUa+eylpxL/ZlfTJV9
	P3eQ==
X-Received: by 2002:a05:600c:458c:b0:47e:e20e:bbc0 with SMTP id 5b1f17b1804b1-4806e51e61cmr2197605e9.2.1769552711328;
        Tue, 27 Jan 2026 14:25:11 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:6c51:3f46:e918:f0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cdebf86sm18712645e9.8.2026.01.27.14.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 14:25:10 -0800 (PST)
Date: Wed, 28 Jan 2026 00:25:08 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: dsa: lantiq,gswip:
 reference common PHY properties
Message-ID: <20260127222508.gvky6smlrmnj3uix@skbuf>
References: <cover.1769519758.git.daniel@makrotopia.org>
 <d9b6212ad5137feeb58b28e9b0784f1084c813df.1769519758.git.daniel@makrotopia.org>
 <20260127132919.xsvapgqc65f44iah@skbuf>
 <aXjGh1nzeAz8TQzH@makrotopia.org>
 <20260127150747.lzlfzhusywluuxhs@skbuf>
 <aXk38o39i62SIq_K@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXk38o39i62SIq_K@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260147-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D7B969B003
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:10:58PM +0000, Daniel Golle wrote:
> Taking a step back I noticed that we need to decide this also for
> mt7530.
> 
> commit bde1ae2d52ab ("net: pcs: pcs-mtk-lynxi: pass SGMIISYS OF node to PCS")
> currently doesn't pass any fwnode when creating the LynxI PCS.
> > +               pcs = mtk_pcs_lynxi_create(priv->dev, NULL, regmap,
> > +                                          MT7531_PHYA_CTRL_SIGNAL3);
> 
> However, each PCS does belong to a specific switch port, and it would be
> advantegous and imho consistent to also assign the ports OF node to the
> PCS, this would allow to configure the polarities also on the MT7530
> SerDes ports.

mt753x_phylink_mac_select_pcs() returns either &priv->pcs[dp->index].pcs
for TRGMII or priv->ports[dp->index].sgmii_pcs for the rest.

How would one know (generally speaking) if properties placed in the
ethernet-port node are for the SGMII PCS or for the other one?

