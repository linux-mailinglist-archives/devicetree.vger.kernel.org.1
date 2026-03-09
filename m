Return-Path: <devicetree+bounces-272685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH4zNGNermnrCgIAu9opvQ
	(envelope-from <devicetree+bounces-272685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:45:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96965233FB4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE133301C941
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 05:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46BFA33AD9B;
	Mon,  9 Mar 2026 05:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PH9kTvFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A0C33262F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773035095; cv=none; b=an29VkjKjdcwgdEttSkgLAl8Lk3gHIjO+HRK3DWOjQqTaCADM/N/dD1lR3q8OAM99EEOZDSsgg65AA6fQGCQXSruq+/3r+B94PUXfjqNGtuIN+fnLo3Zk46jpjygxDvZlzv9MSGhcIdqUjT1dSKGLj6voqPgnNn+YuntVy5Y3Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773035095; c=relaxed/simple;
	bh=hqi/Df1JPDp/BlPm0GTdyjJF+qjIicQyIWh3azQlrf8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QIIUmO3Fk/5sUIbCEbgRvc94gz1WUCrLQcZ5IQfw+EMiJclFyubrhBDuUCy7nxBzE6B8ZomymcGePP8fFBYeCeZwQ+6mkHv8+GTyfAmWr8kROq/wu5MkTCjsAuMUCvocA+MXpN3sayNapWdsIq2esomamDVcQ436OcfhIezy+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PH9kTvFY; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-12776bebe9fso4362593c88.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 22:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773035093; x=1773639893; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ug9w3Bfo3Ur8mbdFfczjnMxT2pbrXyiERJeMtAuIh8g=;
        b=PH9kTvFYazGcAHB330To/OeFzVVVoAetzeAqLqtqgO8FTevOSlJFg0vBVgSis1D2qx
         ei4tNvhFPmh9rlOXr2szTzSoqAD0b7HIcOIrEvL5+ngd6IVklpLZT6rHLnG7PimKZxJ9
         WNgr1m+pUKPVhXczgU5mbe5tNGgj5xXXBCyEvkqnAFWkvr0DnL5lcVxj8bcLuaBKAWQj
         nuRXFxAHJBYhnJ9oofghicqrvnLlnsy7xl+xR5W6CAGNw7Ab3S8+FdKBlMHTEgwLb98/
         MWsGRvDGo8vDBF/Va9cyyNDPmbCaaATQfCaHXHHlieVPDqYlbgqs+bSBorjqAbNtezJr
         wD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773035093; x=1773639893;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ug9w3Bfo3Ur8mbdFfczjnMxT2pbrXyiERJeMtAuIh8g=;
        b=ddWI/nVsR0P9vC6WFI5VGCqigx1VIeDncrUADpCQpg/DKYmooJGHzBNjj/dM+l0fWK
         pRNL6Izzx9ZU/kxaPmthKMv58l3QYCq0LAurm5qTduhohVX03747G27Lq7uWcT59WN5v
         XelObf1anfl7e3AN0uUA9Dn721eqvHLw9AAKKFiQTiEImyic927Jp69DAmuwMjb31pIt
         D6Y9fGDPAn6yHgTuHnR2iwGfEtVBZimgCVVXzEzCXhy6clki6X5lMNaLTWX/qbSDdgdK
         shYT0Ddme5I8sHJpRHrjigodUm9TE8luIknHsRbEmkk/xxFSFTFblOcRlgc+OzVbC3XH
         blXg==
X-Forwarded-Encrypted: i=1; AJvYcCWRqlcAgbXwplS0Y8HdYg2l6pN1INqhcvVB2+eSHj+L+XZvn2B84ABTfxjSXA0Cc1hPEdI6M7WThR/m@vger.kernel.org
X-Gm-Message-State: AOJu0YwCmNfktpWHUOJCAVY/fsDLP0+gkj6BviyP31OxRTLdQvD+lrfi
	wWOkNlrAFPNdE1BArz6lM7R/K+ck2XlAoOAp4aNHTNQpYAphqNvD1nD8
X-Gm-Gg: ATEYQzzmG0pHNEuhBYd5Abws3rNPaeQ/SFyJp4V4JaxV1ErtKdaM0pyzQHRKtoi6O/W
	ykq1Nc3ARpblKFwbLOnZojj6sAPZy8w5o7Ddd//0lhYY3kxwExniH8hM6jPj+i65ILw74zdIepc
	7xzbOSCB+vyQj7v9IfiQ/kpsddls7CaC6Y2za4T16HJmL2puY0cyn9SQ++WyZz+SKYL/ypnmK7f
	FAJdSkukGesriRNGnfUfH7dLrV61UHsjsf6dNOTjY6T3tS8Xyr4/g/GlzB5aq9yHgIMCXzg0Ag2
	eOfxTnc3ahBy+7DWSSFq6oWxjfpm5u+Mn9I/froapl6ukohz1S+ChAxUa6gI3KNuQV3tZC0wzcO
	P9g0DAq0I882bhzvwWpgxiL/xvZkg3yvq/zUG62WaF3Du48El+K6I8qeffyA11WEczaNrf4Hyc7
	NFrF4UD593lajEiRflbpf0lLk6jF0+xF8=
X-Received: by 2002:a05:7022:906:b0:127:5cfd:785 with SMTP id a92af1059eb24-128c2d8f553mr4232707c88.4.1773035092704;
        Sun, 08 Mar 2026 22:44:52 -0700 (PDT)
Received: from google.com ([2601:647:5e00:4acd:af9:a43b:9d9e:841c])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128c3f43593sm8122381c88.9.2026.03.08.22.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 22:44:52 -0700 (PDT)
Date: Mon, 9 Mar 2026 05:44:48 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Val Packett <val@packett.cool>
Cc: Jingyuan Liang <jingyliang@chromium.org>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-trace-kernel@vger.kernel.org, devicetree@vger.kernel.org, hbarnor@chromium.org, 
	Dmitry Antipov <dmanti@microsoft.com>, Jarrett Schultz <jaschultz@microsoft.com>
Subject: Re: [PATCH 09/12] dt-bindings: input: Document hid-over-spi DT schema
Message-ID: <aa5cxFcZrI89g-8s@google.com>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org>
 <1cc6de61-8b56-492e-ab78-e3aa448f58ad@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1cc6de61-8b56-492e-ab78-e3aa448f58ad@packett.cool>
X-Rspamd-Queue-Id: 96965233FB4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272685-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.940];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 04:25:44AM -0300, Val Packett wrote:
> 
> On 3/3/26 3:13 AM, Jingyuan Liang wrote:
> > Documentation describes the required and optional properties for
> > implementing Device Tree for a Microsoft G6 Touch Digitizer that
> > supports HID over SPI Protocol 1.0 specification.
> > […]
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - microsoft,g6-touch-digitizer
> > +          - const: hid-over-spi
> > +      - description: Just "hid-over-spi" alone is allowed, but not recommended.
> > […]
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - reset-gpios
> 
> Why is reset required? Is it so implausible on some device implementing the
> spec there wouldn't be a reset gpio?

No, because it is mandated by the spec:

"HID SPI peripheral must provide a dedicated reset line, driven by the
HOST, which, when toggled (pulled LOW for at least 10ms, normally HIGH),
will have the effect of resetting the device. If a HID SPI peripheral is
enumerated via ACPI, the device ASL configuration must expose an ACPI
FLDR (_RST) method to control this line."

The spec also states that the host must initiate reset during
initialization of the device.

> 
> > +  - vdd-supply
> Linux makes up a dummy regulator if DT doesn't provide one, so can
> regulators even be required?

There is still a supply line to the chip even if it is not exposed to
the OS control. So as far as chip is concerned the supply is required.

Thanks.

-- 
Dmitry

