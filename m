Return-Path: <devicetree+bounces-258149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAkYJA9ZcWkNEwAAu9opvQ
	(envelope-from <devicetree+bounces-258149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EC69A5F1BA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 822024E97EC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B589F441028;
	Wed, 21 Jan 2026 22:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IXzI3I3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A02D2493
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 22:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769036039; cv=none; b=Vf79QfuQ2ztO1YTkS5E+iYqgnsF3CyQR59NAJtyC3b07p5dKriUJvjbNRWpBCii8/cL6TpIlhq151w2i1TRYo6BoV25DMtJq0U0WUSpQwiSAlWmtFBXAqu2NX8mOXQWcAztQ+YTog51TKsoyxyjdNFe+7i0Ud7PqxSu7HhqfTfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769036039; c=relaxed/simple;
	bh=tW6BQQWLK6LD5clxNFXzE8v4o9oRX1JWcPOvo/Jp5Lw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HgdkUDY6yUAHO5Cx7KnMXV+kzplxQf4987PGviDgNd1sDQpxq4Ug8XGWpUL1yYHe1PSOIy9uTKpYcPWIgcZXu6yW7zQuyiARygeXgVQkEFlj7Xi6pIz53WHTBs1yirabi54FZ/Ze6Uh7dGQ22WpIuQgze7tnHQxNAtOU01+U2SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IXzI3I3r; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2b6f85470b6so677104eec.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 14:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769036033; x=1769640833; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cp39T9yhEDWCKMoI7qosF72z7yBKmmlkDNy5bRjSKFM=;
        b=IXzI3I3rSDvxoa9XS2qqBcrgBmKQINLb+OhGgJA7GE158nev7WZW8U91vcZmM6HR5n
         hCsHfEjk4D6RjcLifvzTiNezebMWV1TTQA1Hzz54CLp8lU+DKSFeNWp56ITsWneghP/M
         F+mhleyb3042tUyqR70liXnFWIeHW56ilbm40Ddn5c6DPNUauGOsFTFvF3DySqlxKBXM
         sYhbdHhKyDsxjzoWVtmHo10AR4npaXT1DCeFsJQ6BU7XgAYp1cp6Wj8gJx0tbOxF6htJ
         M1bjfod8ZO4OjtjciaXO4R5KldicaGIHqUoz14HFIcaML6yFvMCGVGfWciFsVuYYTfNr
         1hVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769036033; x=1769640833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cp39T9yhEDWCKMoI7qosF72z7yBKmmlkDNy5bRjSKFM=;
        b=u23YyPeW6fJrUDsYSoKDboKlaKE6b9ivrUsAxUxE/PYXKppgY4SE0lKFz6RlcrScMQ
         DDPAzDpe3Kms0UveHaCyMtiek7Ugv/cNRr7qIZPbiA4mgQJvWeSpqFECjf8iIuwYgaYm
         JxJIEcw04zIpIO/YoHbc78b3mUHloFfYvE3bUkj0vrbxyplWs48Ys/2QFqkP1IGEyUnf
         Mwl2FBbvuWSZYNQQKiTQXQgC4JqvelJADnYziQZFXVwBQrcEnGbfAizX7A2Ri6Cw5kGM
         CfUjz3J8FDXGF2RJpoEkuduMFJhmUV0KfcDRB4a4qpf9fG9fOljDoBzMDZJQSJccmyVM
         wcTw==
X-Forwarded-Encrypted: i=1; AJvYcCUvPHz9FeYeerXvvfuhTEwNZnIIkhimrg/Tq+/B6XWsgs3AgD3dmYyL9kqnwhJBw6Xy31hmA5PDlvqL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+2LPg3IkV4H5G98+cW/eZTu95HCJP3x+MCqLBoHDX0gZ+L+E/
	AQvIGMuE/M11g4qDLToJIc+dlpp4u85wBYqXmsOswnv7BnPDyfcED+bR
X-Gm-Gg: AZuq6aK93XtdPyhkEW+d51DgqrS39sp6cYeQm+yosqUBv8GnVNGqXAELnRN8TRaOpda
	v/n3OyGxLh/+zs1lciQ4vlU1xwTChY2lEvVxv3pLlVE/7gASwnxFqHn2O8QVOKAE6zRksF0Itg9
	cVUn9T+9UGUFrZME5WM82m+2B7Ltiu9ARSDIoPREt1Bl7LJWtSbd+wpDLMYSFrYgp0FbA1SXdIS
	CIoIjm/sqtdZiLNzFNWJ04P9oCzEwSZPmpx0lJQA4IRY8ziMHXJio69MA/jgiLw35c3E2JxPlj7
	UGJ6dZemfscc4ivvjCb01ibPvEQWIKwCr4LyA7OOl8o4FHwtXzjojG0sQpRk1sx06bBJ2c7txhj
	AJ7wljEMLxuf+sDkHFFadRpvXr320iJQ8gtlsufxwq5XYA5PdYtIUdR4kWqRufwqKPX/uaQeEsv
	g+Uc3yeYls/i0YtItEVjrYR6zsGZJCRjWYjtZVWRBofI/fgoTjP6/0pHVyOs1pZcE=
X-Received: by 2002:a05:7300:a498:b0:2ae:5b01:bfa5 with SMTP id 5a478bee46e88-2b6fdc9c839mr4812625eec.32.1769036032553;
        Wed, 21 Jan 2026 14:53:52 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36550dfsm23464605eec.25.2026.01.21.14.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 14:53:52 -0800 (PST)
Date: Wed, 21 Jan 2026 14:53:49 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Job Noorman <job@noorman.info>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 3/3] Input: ili210x - add support for polling mode
Message-ID: <tuvidadi4sezm5b3ydvuie6pcxpf7pw2jrysafwdhpmtz6vjxl@o4zqdnjxkaed>
References: <20260117001215.59272-1-marek.vasut+renesas@mailbox.org>
 <20260117001215.59272-3-marek.vasut+renesas@mailbox.org>
 <wv3vil4b4lgfrqt4qnzxiffnniw422xjfdiz4svkklnfrslz3g@yzqc265pj5t5>
 <bbb7fb54-5b04-4c38-840b-8cab58eeec7b@mailbox.org>
 <nk5qn7ye44lbtppp2opa273ut7lxkcz7jsw6giagwngiwhg7rr@puexvdzd2ymq>
 <cd8f71db-c2d1-4c85-8148-83822762a916@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd8f71db-c2d1-4c85-8148-83822762a916@mailbox.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_FROM(0.00)[bounces-258149-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: EC69A5F1BA
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 11:42:55PM +0100, Marek Vasut wrote:
> On 1/21/26 6:23 AM, Dmitry Torokhov wrote:
> > On Tue, Jan 20, 2026 at 11:50:53PM +0100, Marek Vasut wrote:
> > > On 1/20/26 7:31 PM, Dmitry Torokhov wrote:
> > > > Hi Marek,
> > > > 
> > > > On Sat, Jan 17, 2026 at 01:12:04AM +0100, Marek Vasut wrote:
> > > > > @@ -860,16 +893,12 @@ static ssize_t ili210x_firmware_update_store(struct device *dev,
> > > > >    	 * the touch controller to disable the IRQs during update, so we have
> > > > >    	 * to do it this way here.
> > > > >    	 */
> > > > > -	scoped_guard(disable_irq, &client->irq) {
> > > > > -		dev_dbg(dev, "Firmware update started, firmware=%s\n", fwname);
> > > > > -
> > > > > -		ili210x_hardware_reset(priv->reset_gpio);
> > > > > -
> > > > > -		error = ili210x_do_firmware_update(priv, fwbuf, ac_end, df_end);
> > > > > -
> > > > > -		ili210x_hardware_reset(priv->reset_gpio);
> > > > > -
> > > > > -		dev_dbg(dev, "Firmware update ended, error=%i\n", error);
> > > > > +	if (client->irq > 0) {
> > > > > +		scoped_guard(disable_irq, &client->irq) {
> > > > > +			error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> > > > > +		}
> > > > 
> > > > You already have a scope here, no need to establish a new one:
> > > > 
> > > > 		guard(disable_irq)(&client->irq);
> > > > 		error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> > > 
> > > This part ^ I do not understand. If there is no IRQ defined in DT, I need to
> > > call ili210x_firmware_update_noirq() without the guard because I cannot
> > > disable_irq() with client->irq < 0, else I need to call
> > > ili210x_firmware_update_noirq() within the scoped_guard() to disable IRQs to
> > > avoid spurious IRQs that would interfere with the firmware update ?
> > 
> > You do not need to use scoped_guard() because you already define a scope
> > in your if statement:
> > 
> > if (client->irq > 0) {
> > 	guard(disable_irq)(&client->irq);
> > 	error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> > } else {
> > 	error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> > }
> > 
> > This is sill a bit awkward. Maybe we could add to interrupt.h
> 
> Let me do the part above in V5 , and then the part below as a separate
> follow up patch/series. I already added the later in tree so it won't be
> lost. Does that work for you ?

It does, thanks.

-- 
Dmitry

