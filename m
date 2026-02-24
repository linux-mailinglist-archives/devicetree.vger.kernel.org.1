Return-Path: <devicetree+bounces-268092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFcFM3cqnmn5TgQAu9opvQ
	(envelope-from <devicetree+bounces-268092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:47:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 414AE18DA38
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C43D300DCDB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C5A34DB4E;
	Tue, 24 Feb 2026 22:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IcGQhEp9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDEE34D382
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771973237; cv=pass; b=IJOamqp1qXoMCJP0dUTxzrbD8XU2Mr/eKQXKXGuqDWEsf04z6iJsuMBdrcRE4anCeWh6ZWTlpLaUL3Je0ch69i7O8Gl9dmVlx/to1EpOA0o4tRq9XFGRHL0nTkW/O3vTr66vttFPs+YUw139qRImy0QybanrWjL+7sy1Lo9pnF4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771973237; c=relaxed/simple;
	bh=mR2DxBgw13ANLVUMK5/jjvVRnqlmqJqFCSdBmr/gbTc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X+fZkEiMXRHZ9+8mnFgX/eCmQMjjJrrsjCND249/rP7kPd89vJC594jOsTUdJ0Qjw4AztmYYGcHRvUxGuryr7tmxapyC/It6oUeULU4MlGGVxJMUG2xIuPyanweIwrCM1thn40TnrW0pYsma3+4q4oZ7QWLssZd58zmx284tKVg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IcGQhEp9; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65a40f3f048so11232584a12.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771973234; cv=none;
        d=google.com; s=arc-20240605;
        b=B5rUW9npqvXNQokxtpaOy5eBmGveL1rLAgmqk/KeSeVURJWlAJEO2II4A6yiB2Hsgu
         y/lSbg1qiL50HV8e0KoMB9HJ1bYjPI0luvWDT6R1InxyxSUp9oY3tkDDD11YUlj4HeWx
         ikn8YWeFqIYkihiTWDQwE6sfehojd8uGzVXCXo52Wc6eAzO0SH80Hj6I+3VhYux38gN6
         2J3LBZ3KsCxxH7sQKv/85lXi+ABdEYRkuh9BOBRLKbPfv+NZPxn5P68mbenTWcqCm8s/
         rL7+3syzWA3ghX34QMRwieC+ndMGClHJ5RxgGUNudE3cu25kNLeGU5T3R2oyZ2KtLbnZ
         EfHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zBtpA9uIN0gITjPuBpG1lTav8ApyzBRQxBUsMgkMm8c=;
        fh=kzeFn5wknkANRs/yJkCgac5B75zaM1TZ9VPHwRLLixc=;
        b=Nz1qKRlDiuRQXbpKGhCAUnVHJ8DwFdTh/K+Sw892oI/PlRYjTPcqnDSQK4wBncbI/m
         9/nljCu0vZZq5cyxq1pIWI7WFCPX41NcG5nCf2QBKFQKG5ogYXGkD9zDhxgWov+GM9j4
         xsju9ELUmf9cA7o6+5xd/49WSTAUlWdg4yYUmFZy/cyczmbnAs0Al2EFSnGeQiXt8dYq
         28TLUC8+FpToRsKyBKCeqYZBy4kzCFsKg6sne1Q7h9qD0YKxxXwzoovSaxS5n1hZZzL1
         6qf/sj89M5xsESJDj8bE6MD4kJn/zYycRz7A/XtzY/evoQLVk6IumwLWGZeDFaHrzXm5
         UUXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771973234; x=1772578034; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zBtpA9uIN0gITjPuBpG1lTav8ApyzBRQxBUsMgkMm8c=;
        b=IcGQhEp9hL6greYM2+2maoVHPZjWvdvDsAC086EqeqlFB0YHUO5Y3ztMzQzJKEi0ob
         Lt+ri+Gkh0UL8uCsGGOSWdplUDKskV1TTMTA7FbR61NQC9e+C+LYIqJEJbZ/Y9KgIIMv
         aYzZWR+0JarEqlnA0WiJEEtQcZ922DZ2U7CphKYeThvRJntrFunwA7FBWBq8hA26gbSH
         tVp4Zcok6dI0IPYKDzCk7xzhStEC8M6mtCMBiWm96Gf9Ti9L8zBcA/xQ8bvzu2aDIfh6
         yUN3ms3f56iLbCN7ALNTSSRYvD+BBWM26dk6BDHalYarc7BJ9HuZzjS2eBjye0ghsGh8
         CbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771973234; x=1772578034;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zBtpA9uIN0gITjPuBpG1lTav8ApyzBRQxBUsMgkMm8c=;
        b=D7ZqinmrvTAXqxFfnqBza55JW3+VjQhxKtDWXhIZCYL2t94Umcis8I95IDXWl/5OqR
         5SizZ6d9CsDHnP2UTBjV4VmM1qAf7gdmQwpSj/U+vvJCGQgYK0gdzaeJwUV5JviA2Mlv
         TS/pUpvLw6Pu+xGLYkMtuZ+rY7yzOMO28kjUowi0RGMsAN1N8S/vG/+HRUXeqBMcDRwj
         KS4kGW3/gJLUm5pShRF7M6zqUyOobXPFKMniTc0S9vhJ8Nfql0Pec+cPoEFuY4nzMLlK
         DOwMreOq3jUitx2FdgqgCbnUzQ6NJF5G5Lh680FM2ReJas4VJMEoJqsidEETNE71cHbU
         PV0w==
X-Forwarded-Encrypted: i=1; AJvYcCURR/oqOX4kfmF3h/tZ8saAaXJSTKBpctwLu8z5SAU3nj9TNHKjTmFZ1rZjs/uvk39S/VK7eQ7HWvSw@vger.kernel.org
X-Gm-Message-State: AOJu0YyaW+EQLk/q1oKJ3emPsUTCdG5DNqxoINQZ/3pROdhT0uj0K4gv
	0R8ENL2ak1qY1VsynOincidbL+/Ss3ryhBCCZr9Kj58Y+v3yBAwgSxpAS0X6gJJ1zOSfa76ShEQ
	sNYYaigmzzrVhPAoFp33eYO4s6lkd+1kmr19Ri4G+aA==
X-Gm-Gg: ATEYQzwXr1w/i4jxZmuFSFoTtn8gu219wZEm8IIHdbPLqxFKbduzMB7bTwvKYlwvSDd
	Fim8SLl88Veryd3EKAL4hlYrJfJTyYJDN4vmMuXWoZt0bquMQW7HCQ1mtoSg7NZ6DJMThvIBwzw
	1wEpwgU+9J0CdHRfkeoLY3wvIQF2JvkWGMeJED4IlZJAtnm8MW6IrkWhNsE0M0eBmcbDQ3fy4dN
	xzRiOrSFw3uu9LiAozjyXDQpdkpMEkkgn4zwqQYmN0tEQW4+KvKvJp7+1aolxF79g9rZly1SVe3
	mglZPA9SuUyqmmJesGlYP6+FImXkccmhzbvXFakq7A==
X-Received: by 2002:a05:6402:430c:b0:64b:3225:b771 with SMTP id
 4fb4d7f45d1cf-65ea4ec02efmr8235378a12.6.1771973233960; Tue, 24 Feb 2026
 14:47:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b4c422ce-3538-40aa-8bfa-b70f02774b5d@foss.st.com>
 <PAXPR04MB91859B642802813F908B03DA8977A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <64ef5dbf-6264-4758-a5d8-d8c52c359fcc@foss.st.com> <PAXPR04MB9185934EB640E8B21905FF878974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <79eb8bb8-83cb-4b24-8e56-42a53c710055@lunn.ch> <PAXPR04MB9185F1A67384E4886282227A8974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <91701822-df30-4feb-9e9a-4ee82e2a5d23@lunn.ch> <PAXPR04MB9185FD3EEC313CC2408E157F8974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <0b42e303-a2ed-4983-bee5-a4eafd6c7f36@lunn.ch> <PAXPR04MB918509F265757E6028B45DDC8974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <8fbb4ded-8914-4e11-aad6-038c78f2d31d@lunn.ch> <PAXPR04MB9185C388591EC3C9053C262D8974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB9185C388591EC3C9053C262D8974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 24 Feb 2026 15:47:02 -0700
X-Gm-Features: AaiRm53YSUao7_rhr1i52add55pdbzLxtSc_huet_gFbRkQV2slyqwkA4zQhORI
Message-ID: <CANLsYkzzkvSHVWt_DOw8q7DvD3mic12zcNR1wuxrG-_vG+H+JQ@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Frank Li <frank.li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shuah Khan <skhan@linuxfoundation.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268092-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,foss.st.com,kernel.org,lwn.net,nxp.com,pengutronix.de,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,bgdev.pl];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 414AE18DA38
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 15:32, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Andrew Lunn <andrew@lunn.ch>
> > Sent: Tuesday, February 24, 2026 4:23 PM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>; Linus Walleij
> > <linusw@kernel.org>; Bartosz Golaszewski <brgl@kernel.org>; Jonathan Corbet
> > <corbet@lwn.net>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Bjorn Andersson
> > <andersson@kernel.org>; Mathieu Poirier <mathieu.poirier@linaro.org>; Frank Li
> > <frank.li@nxp.com>; Sascha Hauer <s.hauer@pengutronix.de>; Shuah Khan
> > <skhan@linuxfoundation.org>; linux-gpio@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; Pengutronix Kernel Team
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; Peng Fan
> > <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-
> > remoteproc@vger.kernel.org; imx@lists.linux.dev; linux-arm-
> > kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>; Bartosz
> > Golaszewski <brgl@bgdev.pl>
> > Subject: Re: [EXT] Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg GPIO driver
> >
> > Caution: This is an external email. Please take care when clicking links or opening
> > attachments. When in doubt, report the message using the 'Report this email'
> > button
> >
> >
> > > > > + remote_cm33{
> > > > > +     rpmsg {
> > > > > +        rpmsg-io-channel {
> > > > > +          #address-cells = <1>;
> > > > > +          #size-cells = <0>;
> > > > > +
> > > > > +          gpio@0 {
> > > > > +            compatible = "rpmsg-gpio";
> > > > > +            reg = <0>;
> > > > > +            gpio-controller;
> > > > > +            #gpio-cells = <2>;
> > > > > +            #interrupt-cells = <2>;
> > > > > +            interrupt-controller;
> > > > > +          };
> > > > > +          gpio@1 {
> > > > > +            compatible = "rpmsg-gpio";
> > > > > +            reg = <1>;
> > > > > +            gpio-controller;
> > > > > +            #gpio-cells = <2>;
> > > > > +            #interrupt-cells = <2>;
> > > > > +            interrupt-controller;
> > > > > +          };
> >
> > > Then how would you distinguish gpio@0 from gpio@1 on the CM33 RPMSG bus
> > in the example above?
> > > They are running on the same transport.
> >
> > Doesn't reg indicate the channel number? gpio@0 is on rpmsg channel 0. gpio@1
> > is on channel 1? The reg value gets filled into struct rpmsg_channel_info when
> > the endpoints are created?
>
> There is only a single RPMSG channel for the CM33 remoteproc in this example-its name
> is "rpmsg-io-channel". As I mentioned above, both gpio@0 and gpio@1 run over this same transport.
> The transport here is the RPMSG channel, so multiple GPIO controllers share that channel.
>

That is one of my main problem with this proposal - multiplexing
several GPIO controllers over the same RPMSG channel adds complexity.
RPMSG can already handle multiplexing via channels, use one RPMSG
channel per GPIO controller.

> Thanks,
> Shenwei
>
> >
> >    Andrew
>

