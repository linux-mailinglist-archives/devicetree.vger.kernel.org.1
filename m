Return-Path: <devicetree+bounces-257732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PZLMepicGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:23:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE095177F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:23:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8983A429482
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAB934E751;
	Wed, 21 Jan 2026 05:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PEPjFqFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97E7363C7E
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768973018; cv=none; b=Yyljh4Rvvfb1Zus0TtoW7EHMdU63Zz0eadEsO6c3XtwkDtq+becL0AHzDZXoWyUdihrvDHEBCetf7RE5KgAcPkNFiruQ9sUVUoNAQ2/aVg8Ev7HN5MMfOw+l3NGvqcvDMabTp1K7WL51H3nRDO95vW9ihIrfAcD7GFNk83n4+GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768973018; c=relaxed/simple;
	bh=Dw9HsdmJOjzl+Kv7hLQdOCfLXTyunVYFcP72pCiv2D4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sljPrJr3N2RQk/4KozcZJ9WhIOQQxCHdRATT9NL4Zp/LZovYM9naT2lNhZXZAOMYoYP7aANsOtILJ+a1guiBY7aEuUvJNEF+UnK5blScz+j7VUf/6VQCOi91ki9wHoAIJivwiQrBPZocTk5QqMLSkSkaIUNanUL1Iu9Y+AdtsNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PEPjFqFR; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2ad70765db9so7158404eec.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 21:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768973016; x=1769577816; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7xHJElSAdSqvbGqx9RRBRVuePrz2/MCvNfCaMRCbPdA=;
        b=PEPjFqFRghO1tmToodI9M6hMlNh3UmQVP4M4XujxRrWcReM1xzsFqk+fhRNQeOXwyG
         qZeb6l4g44wSdY828zaMOqqV2sCt0iNAXw0xS9lK2eOFEpISnzxYRExmPPkefliqKifY
         HJoBbGELDC3fYpH26mAgSgXPjBh2mZh1KGXnjr5zmkWNHVdzQtKxUhT6BiualpPxCwWZ
         OLb6tjCFDC/JCWE6hEhzKfCU5hU5Ld9cOncB07LDxR1UYvVLFpdng8OeQ+mlhDXTcmuo
         xGB8/oq+Uz4q3uqVoKRQf0QiuPFlsM7h2Whc57r2UnuWIrPI0bOGuhB8FPtM57tUbo2A
         0F4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768973016; x=1769577816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7xHJElSAdSqvbGqx9RRBRVuePrz2/MCvNfCaMRCbPdA=;
        b=Cc33c7zoOJBIQFC9FLj4d5yBVhu4901gALgf9/t3B6WJWgJPN3ukn2wgra14GK5hQZ
         mM4LJG1Oy8bf1GTSCXF+VMEz40klZGyCNg7Vi+r7AO3bcxdZcq2Y++0stJy5em/giW3J
         cMh6VOFB1quNNRAcYYbEfyLuJttvXlJj5WpRIwHMs+fbuTGzzJd9Yd+6jq0qo7YUmvqb
         PU3iUz255BRogdefzyy6CMDnV4bH6aLqy9P4xYkYNapyAsJ5KGxWJwqL916g3nfYEU/Z
         z0z+9IEzyApXWxNp5uCw2LCp4xC2x7L0aa7g1R9fM8zn+5hSKbNXVeo5pnORK8pkp5Vi
         +daw==
X-Forwarded-Encrypted: i=1; AJvYcCVdJ5nhQjEwW1MibzQN+UISgsedBfRJoivnTDIP3ZfEF1CXm/jr/x4vIvmxmW8lMzVX/u+0FR/AzqLu@vger.kernel.org
X-Gm-Message-State: AOJu0YyxP/7wUxiLtcOqT31LhIaf107JiPJsr7FWNufnSdNpSpfo7duG
	aKmyD9H49k7UWXZIoSFnpPiqegumcajrDdgTa9Q5UJRuN3BcysJ4gbi8
X-Gm-Gg: AZuq6aKaLX/hOeBgojwikb0RkakscwycNZ7Uvz4kS5HTSl4VT2HC+VX6CQVSIloUlUC
	8OCxCsrsacF1AA5cGWgc5fcvawWuZvE96jgF3dCfOc+nVerylXnWp75MHkYmdowclK33sKyn1gd
	KiRFGHqChZvXF6RDu1cPIAE+m7vX4aUDeQn4GCLLAVWcdtVdiCy39BH9lN+7R+u6cVZQzrfOyDW
	GtSL4i4ufOCJNw+zL6q/+9gPYrgX4rdfBtfkv/e2yPCQA/E0WdZpXUQ420/en4wVoVEVWewy5Hh
	qZsxVIEBXsXTKKTcHY+qEEY3HjpfTqbxDyKVmM0EFBauqWNM7ze8v0iqbiXqqlrjYLazwTVUlUL
	MhtIhBKRvWJ9exDn7XIHQ8K9w93WaWOZtwwNGEatGR5ShFs0Aw31C50IBt6PkzotJGHygkLUvyR
	wSQP0kmfEQxYu4lSrlgYnZDTf9SA0b/uDUY+VKUHCAkA5G8n8cqbQTZwDv2KclE1Y=
X-Received: by 2002:a05:7022:4399:b0:123:3bc6:1ff7 with SMTP id a92af1059eb24-1244b3700a5mr10142956c88.27.1768973015688;
        Tue, 20 Jan 2026 21:23:35 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac57fd0sm22877361c88.3.2026.01.20.21.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 21:23:35 -0800 (PST)
Date: Tue, 20 Jan 2026 21:23:32 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Job Noorman <job@noorman.info>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 3/3] Input: ili210x - add support for polling mode
Message-ID: <nk5qn7ye44lbtppp2opa273ut7lxkcz7jsw6giagwngiwhg7rr@puexvdzd2ymq>
References: <20260117001215.59272-1-marek.vasut+renesas@mailbox.org>
 <20260117001215.59272-3-marek.vasut+renesas@mailbox.org>
 <wv3vil4b4lgfrqt4qnzxiffnniw422xjfdiz4svkklnfrslz3g@yzqc265pj5t5>
 <bbb7fb54-5b04-4c38-840b-8cab58eeec7b@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bbb7fb54-5b04-4c38-840b-8cab58eeec7b@mailbox.org>
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
	TAGGED_FROM(0.00)[bounces-257732-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 9FE095177F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:50:53PM +0100, Marek Vasut wrote:
> On 1/20/26 7:31 PM, Dmitry Torokhov wrote:
> > Hi Marek,
> > 
> > On Sat, Jan 17, 2026 at 01:12:04AM +0100, Marek Vasut wrote:
> > > @@ -860,16 +893,12 @@ static ssize_t ili210x_firmware_update_store(struct device *dev,
> > >   	 * the touch controller to disable the IRQs during update, so we have
> > >   	 * to do it this way here.
> > >   	 */
> > > -	scoped_guard(disable_irq, &client->irq) {
> > > -		dev_dbg(dev, "Firmware update started, firmware=%s\n", fwname);
> > > -
> > > -		ili210x_hardware_reset(priv->reset_gpio);
> > > -
> > > -		error = ili210x_do_firmware_update(priv, fwbuf, ac_end, df_end);
> > > -
> > > -		ili210x_hardware_reset(priv->reset_gpio);
> > > -
> > > -		dev_dbg(dev, "Firmware update ended, error=%i\n", error);
> > > +	if (client->irq > 0) {
> > > +		scoped_guard(disable_irq, &client->irq) {
> > > +			error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> > > +		}
> > 
> > You already have a scope here, no need to establish a new one:
> > 
> > 		guard(disable_irq)(&client->irq);
> > 		error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
> 
> This part ^ I do not understand. If there is no IRQ defined in DT, I need to
> call ili210x_firmware_update_noirq() without the guard because I cannot
> disable_irq() with client->irq < 0, else I need to call
> ili210x_firmware_update_noirq() within the scoped_guard() to disable IRQs to
> avoid spurious IRQs that would interfere with the firmware update ?

You do not need to use scoped_guard() because you already define a scope
in your if statement:

if (client->irq > 0) {
	guard(disable_irq)(&client->irq);
	error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
} else {
	error = ili210x_firmware_update_noirq(dev, fwbuf, ac_end, df_end);
}

This is sill a bit awkward. Maybe we could add to interrupt.h

void __disable_valid_irq(unsigned int irq)
{
	if (irq > 0)
		disable_irq(irq);
}

void __enable_valid_irq(unsigned int irq)
{
	if (irq > 0)
		enable_irq(irq);
}

DEFINE_LOCK_GUARD_1(disable_valid_irq, int,
		    disable_valid_irq(*_T->lock), enable_valid_irq(*_T->lock))

and then we'd be able to keep the driver as is (just adjust the type of
the original scoped_guard).

> 
> > BTW, not a fan of the "_noirq" suffix... Maybe drop it and add
> > lockdep_is_held() there?
> 
> This part I understand even less, how does lockdep play into this ? The
> scoped_guard() disables and enables IRQs if they are available.

Ah, sorry, brainfart on my part. I got confused by _noirq suffix.

Thanks.

-- 
Dmitry

