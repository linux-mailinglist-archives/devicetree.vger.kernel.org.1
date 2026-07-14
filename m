Return-Path: <devicetree+bounces-325969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fHbxGLboVWoBvgAAu9opvQ
	(envelope-from <devicetree+bounces-325969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:43:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8823752052
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:43:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jGGXDoA5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325969-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325969-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB7B9306943D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C82D3EEAE1;
	Tue, 14 Jul 2026 07:39:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B7C3EE1C0
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 07:39:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784014775; cv=none; b=XrBsWSVJkJncRjZjsKYprgVyCqiMPABuME2EOLJKjp9Rl2d63seGHmk9sQZZuIFreIU1iLfu8gULJVGfLrVADixbwdjEMemi1h+1ZOECx0c2ffZDIhO8oXwUKvbMjICcksqxVtrRRrMyeHtup5nen02TDO5hksl52nerrkPpQ3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784014775; c=relaxed/simple;
	bh=HP8NszntUvaj3+qxiCdJLJTnx2Jkkkvi+dlA3wAqBzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYeKjvtmW75yAduUn78OAdU9A1u+u1chIBEmTm7o/kFCh16tilDrCNH6/po7cjgDkmBmew3jFU92Z3PyXRrMmC5jJeOTnSWgZ6r53XizvlOM5ytV5P98Mv+u9AiQBfY7UjSmVl02PPSIlUaTIucsn7LWCllHtuEJrEOd71Ra3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jGGXDoA5; arc=none smtp.client-ip=209.85.128.49
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-493e8d4f4dcso30914265e9.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 00:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784014772; x=1784619572; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KOdC1YcpFjxEHlAYMoJx2bj5+Wiwc2x+b7apAFR4ueU=;
        b=jGGXDoA598tg0FafpbHF8l4NhjBJqppr/anLISmMQMt2ZQELSgxAfzOvOtkrUH7zPZ
         tSawZhmpgvA3nx0mo7JQWjPBCyoOlVsJgVCNG4UOUZm9Io1/hXVnOUxa9MAgSfW5KubD
         m7kv4RSrslgIuKc80dkDmJH49+xc8HySbJupT5f2DbXpIaMmGgs44L+raaJNlXQHcfBV
         E1Q4yw2eVLPY53/6Bsyyz3Rrmm+J+CEVfwvk0OozvlpSTjgNoOoyc4Fc+07aqtdPAPQ/
         S66SRZVbWALe/xmi4wK4XPxDh8+Z6f9C1WgbPwP9RLguBgZbiuZOwQ5LGmdGxc+U/Py2
         JIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784014772; x=1784619572;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KOdC1YcpFjxEHlAYMoJx2bj5+Wiwc2x+b7apAFR4ueU=;
        b=RqyrE75oBnS7KOdJl9r4iHyLksmiaeWIMaLIZPL7KIP7ZS2P7qtwES8GF9apcdh2of
         q+GdWeIn1o2XqMEsFKmjFI40gQdh6MUBFSRm4336Hk0f8O2rVIKwph36OvsqOmCzmIZr
         9dJArCab2ONP/yvfvMIGgNWbnpSOBuIVueXKUnMuq7lO7X1+f89EWq+e7gp8zMFM2EVI
         r3M4q4oLNZXnGXbJPG6n8SyrJw8Lp0suneKHCH4CaX+ue++DtdmZZ9nLOmyJwKJ1XAkP
         TDJ53TeMqxxnqDLghmH+88vOnczZ75m1dDwiIQC7rP7FkShWYGGNHZO247LiQpNf09nH
         C93A==
X-Forwarded-Encrypted: i=1; AHgh+RrNPi3sVpLc1LzLEUk6AqdviDSUeRXINfhLcdJy+cRsDJ8Rit4Yr+fMqp8vaOlY5/LCSYvUDvnYji7M@vger.kernel.org
X-Gm-Message-State: AOJu0YzUFahN7Qa2jFOoI2O7kUgwABMjsMrzenSgR42UkBcOldAub/xc
	+ChO5cDpFSWaOTVnMjWctCnIdNb7W4EestXFb4Xk+PFrkrD5yDvgO2Fn
X-Gm-Gg: AfdE7clxpokiHOhx9y/DMjr7PJn39AmlSxA2eEt2NfYZGm924m9IvGWZKKs3sszpgA6
	GGHwEXi2iLd1sGZSKreXul95VK66xIrTuwqFvx/E5LLOlo3wsVpAp8MEgz84FU0aRjdmxo5WIKh
	bG3+EmoyhfrwKpg5m50Fw/2ApCe503rDwX+zotZ/z2ybDpypJ9mPdqdoFr9e/sbIoUm7V9iXIVm
	QJy0nZkYtFASmizjp9SPf0mupWtlc4ahOhHhIeyQ3wTRm22NVDYQ1512ivSJsLmA5yNj/3nCkPq
	K79dO4bDXuRp85TtE0CZqKVkS7TcQGe//KG+ss49vhsge3nIPQBqVRPE3Huw2Vp8G3h8tjDiqUF
	ED1yX3gsy4MUxVK9W4eIDOoSStlmT4eeLGDbCrlY7dqeGq3DKvZqMl1Ubsbr2vanqrUtRYZpmBL
	yFxB6r9sYNt4vc3UEseHPwMId/mRESuGplESFPferSILX9CcSRmPMNL6w2UNkmN9Wjs6a5KdjGm
	PlO/Z2ndNBqExJhoWk3Wl2fPdh1K0hr
X-Received: by 2002:a05:600c:310f:b0:493:bacb:1341 with SMTP id 5b1f17b1804b1-493f87dc3e8mr119017205e9.4.1784014772003;
        Tue, 14 Jul 2026 00:39:32 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49510c8e220sm45791165e9.15.2026.07.14.00.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 00:39:31 -0700 (PDT)
Date: Tue, 14 Jul 2026 09:39:29 +0200
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/4] arm64: dts: ti: var-som-am62p: fix Ethernet PHY
 configuration
Message-ID: <alXnsYCluZiY0sYd@Lord-Beerus.station>
References: <cover.1782680023.git.stefano.r@variscite.com>
 <4d1ba0d1b9bd4957224213cf17dca93392788e03.1782680023.git.stefano.r@variscite.com>
 <531d7396-c581-4b5d-8008-db5e9ee5e7d6@ti.com>
 <alTo0KGWAixkK0i8@Lord-Beerus.station>
 <178400918994.3109814.1083731005888044586.b4-reply@b4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <178400918994.3109814.1083731005888044586.b4-reply@b4>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325969-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:vigneshr@ti.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,Lord-Beerus.station:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8823752052

On Tue, Jul 14, 2026 at 11:36:29AM +0530, Vignesh Raghavendra wrote:
> On 2026-07-13 15:32:00+02:00, Stefano Radaelli wrote:
> > On Mon, Jul 13, 2026 at 04:02:34PM +0530, Vignesh Raghavendra wrote:
> > 
> > > >  
> > > 
> > > So are the reset delays no longer required? Or they taken care of
> > > somewhere else?
> > > 
> > > 
> > 
> > Hi Vignesh,
> > 
> > No, because this GPIO actually is not used as a PHY reset.
> > 
> > After reviewing the hardware, it turned out that this signal is a
> > board-level enable signal required for the PHY to operate, rather than
> > a reset line.
> > The previous reset-assert-us and reset-deassert-us values were
> > associated with the incorrect modelling of this GPIO as a reset, and
> > are not longer needed.
> > 
> 
> Along the same lines does [0] need update to how the cpsw3g_phy0 is
> described then as its seems very similar to what this patch is addressing?
> 
> [0] https://lore.kernel.org/linux-arm-kernel/0a7bdfda80309eaa207b5b369d72f4bcb16e0604.1783864932.git.stefano.r@variscite.com/
> 
> > 
> > Best Regards,
> > Stefano
> 

Hi Vignesh,

No, the AM62 DTS referenced in [0] does not need the same update.

The VAR-SOM-AM62 uses a different Ethernet PHY and has separate signals
for the PHY supply enable and PHY reset. In that design, GPIO0_45
controls the PHY 3.3 V supply, while GPIO0_46 is connected to the PHY
reset input, so the existing reset-gpios description is correct.

The issue addressed by this patch is specific to the VAR-SOM-AM62P.

Thank you for your review,
Best Regards,
Stefano

