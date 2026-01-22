Return-Path: <devicetree+bounces-258274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBofMQHycWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:46:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C23464C15
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 842EA62243B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E05346A15;
	Thu, 22 Jan 2026 09:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="WMmVf+cD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5461B30ACE3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074550; cv=pass; b=dVuesGfyNkch1vgdb1+5tepw7+1Qc5lEYJ4ZaRXEi8N+oHmoKyMmuHkvdvU4KBChlk4cIJKHm25mld49H/TInGuu0K3g42gWVKYQzBPKbvmkudatM84AdK26VidNmdRLrmTWn8wjNpYDKJYXSBpLCpcJmeS0RJDzZwNGcYujwNs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074550; c=relaxed/simple;
	bh=CpowxPIs9WsIvTj4/MuMW1Y5/GmzHzBIUQWzh9qqtsQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j9zYBsULlqoxZ2l8qZkQv4GgxrInsfEsgzARU043cZMePY5uSuKAzGQsxdwI8ZcVBmh6qkHK8bhqnERLRuSEaA6wQzC3LQykczYQYhYI1zCmHDud3QCqFme5KRlaU6jPrbHVBpFO9XvM+4XDx5A2RVHIpZ/ThTdKqTmoDj2IxvY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=WMmVf+cD; arc=pass smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65807298140so1141735a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:35:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769074545; cv=none;
        d=google.com; s=arc-20240605;
        b=RmvQdhw/vYYLZP08ESxeyDVi6sr8aDt0El3aXCJTGKUIlXnOgJGrSe8ax34yV1871p
         ABwP0GVxJ66CulzLnPeriRSGFbcHzBc5he8/z22VHgB69uVx3SHg2NJBzx+JbOckE+eD
         DVSKl141lFmKxdwiDqEIbEXaWdiaOcsO0dhc9qT9XUJhvrFI8wR0NtuQtZD+7EmWhQqk
         ZHaN0k/trOEOlmSngT70SAiDWbv2KFZJbZxEIMoQoavFctrdGcTzc5LLyUafDUBC14ac
         e1XznhEiVbJeaDGDvigf7RfQh7pEfIRJ/FpoKeOUXeakLE1pt2dRchZ8336dJ195pPk0
         ddxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CpowxPIs9WsIvTj4/MuMW1Y5/GmzHzBIUQWzh9qqtsQ=;
        fh=bRrOauWXgOCQNMlm+mVkm01Uz6kH8OPRLfDRrcc2rjY=;
        b=dhZOkgXVGmVpuAzBh0FKx5DP+fGcGs0IHP25IiMOjsyK4opYDKMzToakB0I4AH8J7C
         aA9Q2s0YfYKZ4O6p62WFv7gU4fSUXess5ncosXMkjevZKHlDHz0zKpC7c2j6cnlC14Aa
         9DLQzFwa+QzpaTVfQy+jkUQj/vjDrMvKhS8Utak2pzdSQ8cuEs/L7L/vuyYYtT1AHvnE
         z38M/b0FqCZ5hc9As6uFXbnHdtQll1ltmZ3fGWKe6EA375i1ukHDOofg5dE/SvBarrVk
         ytVBkr3Jlg0OC1fjGlqlFPiOaq0rC7LV7H4KNlED5UhUBY+znjJ6WcggaWNtd1qhYZqr
         DVJA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1769074545; x=1769679345; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CpowxPIs9WsIvTj4/MuMW1Y5/GmzHzBIUQWzh9qqtsQ=;
        b=WMmVf+cDPVXyzKm73nlXhVqX/GgwBPysyw+V8fdoMVElEaKbT5iIB+JX6bg1SMgNHp
         BZ/xpZLXmDtL49wkbLH6Qe5t/c1FlVbMBwB35Yj2bfbomiTfVmmlbRHxUoEZR/oQWck+
         Be74nd4grwTHoU8lZrxh7rK5Z11b36UuyBJ2+hjYl8aOJ18c08LpQdSkzjpNZL7dXtFS
         T9v9pdYZUJX2F6R2ZKeQUFJ7x2iA+DdPl0QupDzrrWAwUT1dVBgpkasAEVxZ/M05ccks
         CyBCrEYEw1asEPFNKbUBuBO1ZPFruijEtPlo7DqxHXrUhxmMxMlp5rmrVyWYwRFOfOVs
         sNLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769074545; x=1769679345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CpowxPIs9WsIvTj4/MuMW1Y5/GmzHzBIUQWzh9qqtsQ=;
        b=cBWlXlGuzGa/WLnkd3p9JoC1L518a4qGUONu1nnrQJC2E5jReEM9ZVtyvyIdRPsjg2
         bGx4dfYjrJE/UKzBJi8V9ZyweuPxQGteLRxCUaxr7K3OPcvkGOFy4S2Ga34p5jTM7lvq
         pey+o/9twzOuQALAmfZMjx+hJzOxrmKt7RHCtcwjbzve70n60w0KX0xx+jhwkt3wjVwm
         Ho7jabFo1/owYJW0F4+IyUxHvJP/jH5MHNH3cq8lE1/Y/SVnSVuuftxO7S9Dq88jPL37
         mp/XrfFDF8nEQZ6ui5/B3FMnAnGwjCqRGcWx5oLNz7eJrZGxMmZIXkwtki5siD1zrXIt
         QhUw==
X-Forwarded-Encrypted: i=1; AJvYcCWiSxgv+96YL5RTIIIUiFSX8oVdUDKFZ6RT6DRYYq7cWEN29UeCcjGmUliTV/a/vIgtxSyRQALYswau@vger.kernel.org
X-Gm-Message-State: AOJu0YxbyiN5qhnpAepUnGjqcShVxazU8n6xehwhV75KjThow2SjkzQ3
	gXOA8/7ADTzet77lDhiMxtdaB3yFRXZ8OJnOd4RUBzqokDzkgCealUPCNal7mm/7NilKR1T1fg+
	QcK3wOSft46P2h66uBnmRFQYW7Cy16mOoa5VsApIBZQ==
X-Gm-Gg: AZuq6aK8DrfVHftKGjYAaBfmcojOM4RTZ2ZUsp4AcoRnD2RE1/G8/EOxyvxo+zFeH10
	iquDY7KZMdEPvdyfAmLnHpDpMelzpXQ0q/knBsYTOSY26OxvoU6c/U3c9UPeGpaufAI9FHLfm6l
	xk0iPov88g+wKJ6IqQh+imM10DOSWa3MpP5Bqeds7h0b0UYPqi3fG8JEMlFvFUaIlBm5JnVYmIf
	beilMe+w5PiHKktVB/aODGaVWetT7WGhADaOU2AcZ18pm7Byexd8AP/Jfq9os9ouS2zmQrUAZ1Z
	IAdI1SE2dFRAMDscRXIQnte59TFQIv7NWfHj/pihr3kAqPunao9HpeDwO3MyjQ==
X-Received: by 2002:a05:6402:f02:b0:658:1304:b68b with SMTP id
 4fb4d7f45d1cf-6581304b771mr3388171a12.15.1769074544348; Thu, 22 Jan 2026
 01:35:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115114021.111324-1-robert.marko@sartura.hr>
 <20260115114021.111324-7-robert.marko@sartura.hr> <CAD++jLmitNVhWmUf9BBqLR2_WsAR7V-+ykVJsLK3MuOSUKQF0A@mail.gmail.com>
In-Reply-To: <CAD++jLmitNVhWmUf9BBqLR2_WsAR7V-+ykVJsLK3MuOSUKQF0A@mail.gmail.com>
From: Robert Marko <robert.marko@sartura.hr>
Date: Thu, 22 Jan 2026 10:35:33 +0100
X-Gm-Features: AZwV_QgGcZewelkI3QjoxNf_Rdp39oV_bH_54mEjrqvn-sBMKJLuqze3gq5di5o
Message-ID: <CA+HBbNEw_9FNOFxx8Mo63Aq49MxWvvuQ4Sc75mXFYpwtMmETiw@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] dt-bindings: pinctrl: pinctrl-microchip-sgpio:
 add LAN969x
To: Linus Walleij <linusw@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, herbert@gondor.apana.org.au, davem@davemloft.net, 
	lee@kernel.org, andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org, 
	pabeni@redhat.com, Steen.Hegelund@microchip.com, daniel.machon@microchip.com, 
	UNGLinuxDriver@microchip.com, olivia@selenic.com, richard.genoud@bootlin.com, 
	radu_nicolae.pirea@upb.ro, gregkh@linuxfoundation.org, 
	richardcochran@gmail.com, horatiu.vultur@microchip.com, 
	Ryan.Wanner@microchip.com, tudor.ambarus@linaro.org, 
	kavyasree.kotagiri@microchip.com, lars.povlsen@microchip.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, 
	netdev@vger.kernel.org, linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-serial@vger.kernel.org, luka.perkov@sartura.hr, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258274-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FREEMAIL_CC(0.00)[kernel.org,microchip.com,bootlin.com,tuxon.dev,gondor.apana.org.au,davemloft.net,lunn.ch,google.com,redhat.com,selenic.com,upb.ro,linuxfoundation.org,gmail.com,linaro.org,vger.kernel.org,lists.infradead.org,sartura.hr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[sartura.hr,reject];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,microchip.com:email,mail.gmail.com:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,sartura.hr:email,sartura.hr:url,sartura.hr:dkim]
X-Rspamd-Queue-Id: 6C23464C15
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 1:44=E2=80=AFPM Linus Walleij <linusw@kernel.org> w=
rote:
>
> Hi Robert,
>
> On Thu, Jan 15, 2026 at 12:41=E2=80=AFPM Robert Marko <robert.marko@sartu=
ra.hr> wrote:
>
> > Document LAN969x compatibles for SGPIO.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>
> Should I just merge this one patch to the pinctrl tree?

That would be great as other bindings are slowly being picked into
their respective trees.

Regards,
Robert
> Looks good to me.
>
> Yours,
> Linus Walleij



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

