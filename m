Return-Path: <devicetree+bounces-267946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPVyOFC8nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:57:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 088EE188BCD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3724A3017780
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08113A0E82;
	Tue, 24 Feb 2026 14:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NLilhQZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922303A0B39
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771945035; cv=none; b=gxTmPlFplsBKMgr9SKOo4MtSWBRRoTRgIO0NQa/7m6fSZhsiP1XOuru4dn6l6EX/A8ZlTWPsLYVFXO3Ap4Myi4Y4nRnBLJb5tIL1q2h6veEpny61v1qYcZt9vNzxYk4D20KJUvEcposx/HFdL/IjFmtyqqBfCpXcahqzv3Yw+IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771945035; c=relaxed/simple;
	bh=SmcFYV/qj7UP3TQzOKySjVXD+r5cVR7LQGNmNUdtKn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AIinJesuv2NjkagT/7zZlA7Oh6Cq2W0Elj1L8wWr1f5pwj8QPRjOrHpGFYFHdKrkHXpgWE1oHK1xEIvF5QSKXPiHVFhkylvQfZIEchu6rj4n+m1Mus7+cP55I1bhvS1ZB3V5rqLA9ETtXfaSCzLcYwBqgVxZuNJ8Az6ro2SYoxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NLilhQZE; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-483770e0b25so50719845e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771945033; x=1772549833; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IKZebIKg4zGvAmOtTA5PkRD7pA7GxWbSjVAl6yAokyw=;
        b=NLilhQZEAHZgdDiUP5mxmXu2uF/Yvy2XAqaFLqPkgI/FiDznFqVuEWI6zdGElJ7teL
         ryqNjM9CpQ0o8hl31bAu6vjfiKbpQ/GOMwMaH0TI+lJFIiMzFj22RlOX2bDJJr/NCqxh
         QlE0uiWTY+LzSFsZxGn0BglNppusDXUz3qG+tyHkWMCkZoNGTn+2J+Aqsk9tIMwMDkeZ
         zV06jYZGeDnyzdLw0e9FeImBAd/0JyVMCUHhbQOWZHQOOT0pvljMNEEM6mDo3RTk5lmp
         TU1G/NY81YxXz+5rcX7l4SC+GohNzCIbVys0HwEKoNJPycIR7CYtCZt3M3GOiPc4WXDt
         UMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771945033; x=1772549833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IKZebIKg4zGvAmOtTA5PkRD7pA7GxWbSjVAl6yAokyw=;
        b=bYQWe+Yxw0HHDAK68SAGemTOMa1DSfuMy1D4B6SN0DEVFuIr+M23uoyGMjEMjxKImC
         jj8U/EgEjKPN3G1gNFjbuY1m7N+S7C4K458sTlY/tQuQNkyTxRi84BOUhFaOFR1BQF/g
         rJuO73F5V/+272T/MQFhQIqzfFb4ToK9bBGdHsY7Lj5wACl7BLKUEiPZB9epf9ZT/nbm
         q3ZuFfNryppP9zupANCF/cbSMHYdeJOY0zBrGFG3EEA/FVoWbd2vXtmkqnvsGkDgFTx7
         Fb98VHSsbYEKe+eOHu/FZq4V+YEheeruy5BSRFF/2IKQQrZEvjBuC5bz7fpUgiHmn739
         e6/g==
X-Forwarded-Encrypted: i=1; AJvYcCXAVMm9L9K1/RP4rVKUyiBE63Enauu3jHSgPtE/CibUUi7d9Oce4U60X+jHd14IhfUJAC1WuIOZudFb@vger.kernel.org
X-Gm-Message-State: AOJu0YxPKN4t48xXkuhyEBKi5Xky+E2CVV09kXERhCGSE+1ozH7CliNV
	UMtoskL+WbXB2mfFUGP7QMRQ0DrMCEI+ZHOmXFtBsi33PAZkCVLwae/B
X-Gm-Gg: AZuq6aLR5jmCzYS81qGKvfxrMTqqR/YpWYlMJKoA8aZZX2XkRdPHu+RActhmQUc4iYj
	KzPTerr87H62dpNri6eB9J4RhzRe8OZxapuW/e3neGRzppZI1P40wxXb9E2XFcJDmfPP0Ok0Gyc
	7rVEdauJaWClpy55yvRJz0YlSEorGwBUckJNFOljhddj5xzpewjp9tMgQh67Ch8FT2LFmr04cjT
	/G4VgTmei52G+xL4chnbhpanxEBLxYpVefJBLXJA2+dqtrefy226+cwGOrGU1h8K/mFGfzDcpZn
	/ZU3f43dokwTGhDLpGi0tMmLcwx4r0KVKcE2TJvw+w2EAiDWQV76n+VAXCKSEjrjIPeIolk7IEp
	CYwNy+MLyKq/TmHn3F8rKUd2QgyLAKERlJqWEs4wWi5nFuR0s8Sf9FMjnErOdpjDQ2EDzpccM7o
	vhdYMo3mwRdLu2hqlzkTC1W/ds7hFNpyAW+cW0ybMpwF3OTSvUZTDIZBqwR1PeOn+7xpV794aEW
	3R/GAfMzEtS5MhQLJdTrRx7sVfFLmVRHfvsyKpC6PDUiYQ=
X-Received: by 2002:a05:600c:6217:b0:471:14af:c715 with SMTP id 5b1f17b1804b1-483a95eb550mr188993945e9.3.1771945032693;
        Tue, 24 Feb 2026 06:57:12 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b820def3sm50829565e9.2.2026.02.24.06.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:57:12 -0800 (PST)
Date: Tue, 24 Feb 2026 15:57:10 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT configuration
Message-ID: <aZ28RtuAWcatyVAf@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
 <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
 <aZTEm8nUUVcKZH0v@Lord-Beerus.station>
 <aZXqSz_OsCC64P7i@lizhi-Precision-Tower-5810>
 <aZX0WB_6qPoCYVvC@Lord-Beerus.station>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZX0WB_6qPoCYVvC@Lord-Beerus.station>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267946-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 088EE188BCD
X-Rspamd-Action: no action

Hello everyone,

On Wed, Feb 18, 2026 at 06:18:16PM +0100, Stefano Radaelli wrote:
> Hi Frank,
> 
> On Wed, Feb 18, 2026 at 11:35:23AM -0500, Frank Li wrote:
> > On Tue, Feb 17, 2026 at 08:42:19PM +0100, Stefano Radaelli wrote:
> > > Hi Fabio!
> > >
> > > On Tue, Feb 17, 2026 at 03:59:33PM -0300, Fabio Estevam wrote:
> > > >
> > > > What about users who still have boards with the Broadcom Wi-Fi chip?
> > > >
> > > > Will Wifi on the old boards stop working?
> > >
> > > The Broadcom-based WiFi module was used on earlier revisions of the
> > > VAR-SOM-MX8MM. That hardware revision is no longer in production and
> > > is not available for new orders. All currently manufactured and shipped
> > > VAR-SOM-MX8MM modules integrate the NXP IW61x instead.
> > 
> > This common problem, we met similar case. After replace new compenent, it
> > should be new boards, or new revision.
> > 
> > I don't suggest directly replace it to broken old one. You can create dt
> > overlay files for new boards.
> > 
> > Krzysztof Kozlowski:
> > 	how about other vendor handle similar case? Any guide line for
> > that?
> > 
> > Frank
> > 
> 
> Thanks for the feedback!
> 
> We understand the concern about potential regressions on older SOM
> revisions. However, since the wireless module is soldered on the SOM
> and not configurable, we are aligning the upstream device tree with
> the hardware revision that is currently in production.
> 
> This change also aligns the i.MX8MM VAR-SOM with other VAR-SOM
> platforms already present in mainline (e.g. i.MX8MP, i.MX93), which
> use the IW61x wireless module as well. The intention is to keep the
> VAR-SOM family consistent in mainline with the hardware that is
> actively produced.
> 
> If there is a strong requirement to preserve an explicit description
> of the older Broadcom-based revision in mainline, we can evaluate
> adding a separate description.
> 
> Best regards,
> Stefano

Do you have any update about this topic?

Thank you a lot,
Best Regards,
Stefano

