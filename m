Return-Path: <devicetree+bounces-275082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qizZNt3cs2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:46:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87549280B4D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB0DC312240A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7581386562;
	Fri, 13 Mar 2026 09:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CVJB0EpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99AF37D13E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773395054; cv=pass; b=CZOKArdG20UYxGJAjLqZL5rbxm/3rUN/sQ913chPNnp3nzK+ELSGKFs+7ftgLsXY32Gz46PPWbTBJe0KUWsw9gJqJR3Z+1JIk103UJC2KIPSsdAyJnZfqMXxLlGwWG3MVFvr1x80pIqgwbWuzEveK8CfaAYXotk+bFKxr/TrTqo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773395054; c=relaxed/simple;
	bh=a4PkyDJIX7KyCPscZwhkhXLXTwGONJMI97/AnswuOLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJwRIsodF7yAI3IQW36KAecCVC0jwdbp02uEtSJdZshuqLIcxsE9JMiMgRuynCayi1JYW8EjMCuFZsj2znWc+kOai6Nhg/ahx6MLzLkfEo/ku9pvK9rnBneIg82zMJcomLnc8qA0VEd9d2tVc2SfPnKJ2cUsnNHFMJiVZrV34R4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CVJB0EpM; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5a13f6bcbf4so3002615e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773395051; cv=none;
        d=google.com; s=arc-20240605;
        b=BhemyLkYubrK60peTfG0pe0BhlNRyp5o/ySBzWnhDKyH5DpW8Bn/m/ySDuiEy1OIXA
         IEC4hDeeVpUbrL4y0iQoHN+uEsrjFYOgAVVjCnPdemBzgF+j9BeTRZymeM6NSR9zDMT+
         9k+DLcrR2O8KNHJ1DqokSlwTQ5oc5wR88bZXoOXlX+pqdpm7Zr1eyqeDfKS15rAx19Gs
         uwmSM/sluby8Jgjn4shS5BFHPLdAslha/gV5UvMdrzou2GfbMRRpQFf0Psg9Fx5f/BJf
         B/8k7Ft4A9ds57k4qDNcUx7K8FO1dHzetpgh8vRgBRHJEKhE5gxBXrCx10ckvf8Jug9Z
         uYOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zhNoTkJIeGg7k6SX7++UNulbkoe8PKd3t4WsYSulIm0=;
        fh=hP2hwS+oNMKDZnwJiL4sevZnxI1dxP6BtWgG778hi2s=;
        b=WZmhw01vUn1OAq+VcGfOJE0I5H7MDyiMsv4YsmtY1veh1MzIYoSsrHPwaqsH/MHChS
         l7V1tmHR6f0I15mn4BgAHlFYl5PmNMBHJujP9VRYQ9hMCn2pqRK4udjUm1jrmrlJXFch
         c+q9CHVXzdaqyKxBF3lScsmOIMZB5hENEJzbgPKEKamkGlenM1SHfmDJFOxS3qi6hOI7
         F1bZ9+WhgwYAg78MRV2QuZsRREfc7/D9pQx0LpRvZu2pjU8R4mI0XGCRqaZVoOxTcVJR
         JjlJkZ+YSaQkla718gV1BB+pXfqwioqXF26DmbvfBuaCgarKGMbuhulgwhTX+jApleHG
         fVNw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773395051; x=1773999851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhNoTkJIeGg7k6SX7++UNulbkoe8PKd3t4WsYSulIm0=;
        b=CVJB0EpMEVa6sLzbpbpZgC6oxzg2jOtTdosOr5xZNtsl8bsqrxagaYbJB1fdwaFsDi
         MU38WYuy9AWHvdgCpCuHaIpr0k74xYGQOeELdWDSwcfyzs8cqYkIXiRIRrqyxiibpEVP
         wMrz3HxyzbyPSSjmSzWbKbBJgizyZo+BgjwH4r+2CXA44MTS6E41EE0YnfUJRp2yUitr
         rl9LQ9jslbZWwEoeHXtCnBIpFBQl7bMUoyyvJJ1DVrzW8G12l73vTupZQjGfuJkAAf20
         jQIIgy05OQGFnn5ib4SoM+EKD7qPNjwSuIvoucoWtcAxJOQaShYcNfKbcoRIEG60ZMKr
         agpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773395051; x=1773999851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zhNoTkJIeGg7k6SX7++UNulbkoe8PKd3t4WsYSulIm0=;
        b=eZYdfDOvLQFgTvRilRMEQQm14KbsTcIS/soVPVY2+vEN9DgKEqfafsjsxsde5+BTVw
         g0Jq5iCLryX8LKFtt+FYVlJ0tAq2vve75TDWiAtkqfqFohMQCdbSF5J9EiD5lFZR5a4u
         wwE9lHoWESpdXoBgyKZNuFISFkAjIXg2viRBTSrV+RB1H5b1zRmAD3QGn7fqwtuKVubz
         ifJ+XUqea+ic/g0K/ORulYuQgy2Axjmhy5M3iNTuRs4ydNdvZ3yDDJYiN/UJJNMu5OmH
         Y4Tx1wZqxbgQOAfSx6dujuoFVIHP+jvG8uZ4RSIW7fTRkLJRgVuTAk+vcfjlGO2O/ToU
         mYng==
X-Forwarded-Encrypted: i=1; AJvYcCWSk8q/MlrDt4ZGdAnzQcLWFUIKMaeqDeNoZPiu3CfaEtzO+1/JJtmmh2TtwA4xIDvB/3miawaTBR1X@vger.kernel.org
X-Gm-Message-State: AOJu0YyUy92bYkp8IIJPKft332IDW6rrlnYdSKg2oZCO8qH8g284XE0z
	9pXTFLU56ckjVFoJbWjmwUMHM7pGYcUxNuIX+5cdRepcO400jigHjmOhSXCjIJ+ppsOMaj6fJm4
	wG5ptJQHUJb02iZOr++ysY5keEUnvrC7SEhz8Tb9/fg==
X-Gm-Gg: ATEYQzyF+UGMIVdaqJJj3yOA/TzLTiwZAamqEOBcLj4AIgOSQF3n2llT6EVWMq+7+jI
	8mz2QO0n5qoEDS+9maHf+uJscMgERY4j6jUGzBNMnRhV71pCf5+95Q34vxk3UhJZ4LkiRjJJl/3
	sdhxEBdahHl5Uj++up4N4dDd/itgc2QY585MS8Pom5coLbNY8NvD2uP/4QjzjsF5KLdBwvbHhR1
	ApQYN/lDOKXTnjglGRqzfmzxhTLI4vQVGtjrAebFHe4twgdxifdBMem8A9E885aJXADtMcpkH+U
	ZtU6bk4k
X-Received: by 2002:a05:6512:1589:b0:5a1:381b:fae2 with SMTP id
 2adb3069b0e04-5a162b0d32fmr863539e87.33.1773395050576; Fri, 13 Mar 2026
 02:44:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227135428.783983-1-herve.codina@bootlin.com>
 <20260227135428.783983-3-herve.codina@bootlin.com> <CAMuHMdVVsEB-xb8Jz4ujBam2NxtxAOb7byYa3VR_eHsbTD5rXw@mail.gmail.com>
 <2026031242-debug-aviation-19b8@gregkh>
In-Reply-To: <2026031242-debug-aviation-19b8@gregkh>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Mar 2026 10:43:33 +0100
X-Gm-Features: AaiRm535RzzFrlMRqNsLHd1XM8yzn674dd-38MKB2CsmserIvJfHsK0fUYGtRYw
Message-ID: <CAPDyKFpX3A3r4s72PNjBz5QaZUsq1xaGhn5vXwegue7Tyh_Zew@mail.gmail.com>
Subject: Re: [PATCH v5 02/28] driver core: Rename get_dev_from_fwnode()
 wrapper to get_device_from_fwnode()
To: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Niemi <kaleposti@gmail.com>, Matti Vaittinen <mazziesaccount@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Peter Rosin <peda@axentia.se>, 
	Arnd Bergmann <arnd@arndb.de>, Saravana Kannan <saravanak@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, David Rhodes <david.rhodes@cirrus.com>, 
	Linus Walleij <linusw@kernel.org>, Mark Brown <broonie@kernel.org>, Len Brown <lenb@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Davidlohr Bueso <dave@stgolabs.net>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Dave Jiang <dave.jiang@intel.com>, 
	Alison Schofield <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Shawn Guo <shawnguo@kernel.org>, Wolfram Sang <wsa@kernel.org>, linux-kernel@vger.kernel.org, 
	driver-core@lists.linux.dev, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-sound@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-cxl@vger.kernel.org, 
	Allan Nielsen <allan.nielsen@microchip.com>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Saravana Kannan <saravanak@google.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux-m68k.org,lunn.ch,kernel.org,gmail.com,nxp.com,pengutronix.de,baylibre.com,sang-engineering.com,axentia.se,arndb.de,google.com,opensource.cirrus.com,cirrus.com,linux.intel.com,stgolabs.net,huawei.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com,bootlin.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-275082-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[64];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linuxfoundation.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,linaro.org:dkim,linaro.org:email,intel.com:email]
X-Rspamd-Queue-Id: 87549280B4D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 at 16:27, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Mar 10, 2026 at 04:03:42PM +0100, Geert Uytterhoeven wrote:
> > Hi Herv=C3=A9,
> >
> > On Fri, 27 Feb 2026 at 14:55, Herve Codina <herve.codina@bootlin.com> w=
rote:
> > > get_dev_from_fwnode() calls get_device() and so it acquires a referen=
ce
> > > on the device returned.
> > >
> > > In order to be more obvious that this wrapper is a get_device() varia=
nt,
> > > rename it to get_device_from_fwnode().
> > >
> > > Suggested-by: Mark Brown <broonie@kernel.org>
> > > Link: https://lore.kernel.org/lkml/CAGETcx97QjnjVR8Z5g0ndLHpK96hLd4aY=
SV=3DiEkKPNbNOccYmA@mail.gmail.com/
> > > Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > Reviewed-by: Saravana Kannan <saravanak@google.com>
> > > Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > > Acked-by: Ulf Hansson <ulf.hansson@linaro.org>
> >
> > FTR, one more user of get_dev_from_fwnode() appeared in commit
> > 9035073d0ef1de81 ("reset: convert reset core to using firmware nodes")
> > in reset/next.
>
> Ick, that's going to make this hard to land anywhere.  This is a rough
> series, perhaps it should be split up to make it easier somehow?
>
> thanks,
>
> greg k-h

I fully agree with the above. Renaming the function isn't necessary
for the $subject series.

I suggest we simply drop this patch from the series - and if the
renaming really makes sense in the end, we can deal with that
separately later on.

So withdrawing my ack from this one.

Kind regards
Uffe

