Return-Path: <devicetree+bounces-275398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIN2Dv4ztGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:57:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4186B28676D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8539D3001CD5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DC835DA4A;
	Fri, 13 Mar 2026 15:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G3JPm6fm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFB835F613
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417290; cv=none; b=fSYDRxVqkQmhl03wpwpGKaN8gHFBq/GiC9I3lWtk502nEfLmlrzzAHoepS+FebwQZe8D7TY7Xv7hk3reCNCInlRMEI5EwirXI5x4Vyv/+us0hA5bFcIMNALgQ/MFV6I/RjXEqD/eUaIZPLyEXWzkeVEPwMRKAu+IMB4+uXrPfC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417290; c=relaxed/simple;
	bh=QU0COKVBZgcQvC7snPKzffi0EyDjoeKXuLaFakEaPio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VDDPpcF9dWdb2sjA6RWz5DJsL58YtQh9DsKrtVTC2PsNekp2JPTB4mdFw33xTYJ/638aVDDa+xixsK+hgHc278ge5keDzqpdTEwQplZ+luZyz88yxZ2o3fR1z5PQfX/fIwnvupB1xmXU6pLvKRGYJ0Nk6HMEfNhZ5nsBxv5ISeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G3JPm6fm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48532925a4bso12509305e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773417286; x=1774022086; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vGPit1GISWqr5Tp7ZscfP1p3dWxXhNTpfxNr4BRLST4=;
        b=G3JPm6fm1UYgrdMjrEV+fvDOuswnb2P7nNuHOwKx2dXVVMMHZ7czEYsxNaosHvyxrm
         jiYkiVNl5r19beVjawROnZlBQTzTs3GOZJgoo5zI6EqeDxjvaVoT4EF23B90mfv33aYH
         uxd0q+3ND/4Pej5ALUOOQxWx37YQNEsbY1k8tBu+rt5gg8hSphUomUOY1iv5gMvYrU6l
         jPPFb5uYkQScOK5EWcn8rjjjvJFdJ0TlfqXEISbR+asxxUO4iKF+E15jz/xJNZWpsTfp
         MDEhRU6lVH5BacSDOmJ5rr19hWoYaqLbPZRYOxVk9hQvqMCJ9oZbZwOBb/+6pdYRL0Sf
         LgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417286; x=1774022086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGPit1GISWqr5Tp7ZscfP1p3dWxXhNTpfxNr4BRLST4=;
        b=OnEKCUNJ+809R1f6q48pp5Z2q09w1U7Z7WLp246mesc8rR3d2juzSY6Ojd+QOl8uiK
         HQ/kSFAV3jzk8+w1bCskYCB3HuModYU0UGr91PAp4zSyfn2bj8k4elVsxDvSAQOxCc3b
         fXmf8GAH4S0aEOdytGUzArgrlvmnvEKITWm8OpKSVAJCIaidDCmKv8mq0iXDCVCWFjdt
         SQUJ6lByBQ1WXzEmdNAFrKA6FSSfKxJ7sTrY1PvdC7Y6WXAww5pWvceMYup9pLPThASz
         yS1kml55PH11HO+VMsqiVagZqxdP1G4K8S1y8geMUrsvB6ruKvtunvYvAsAmNSozRcVh
         S+Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXYDdSkLg0NKNTPLIZvl9J36PmhZFphJV8GkUTwFJnDfcWwBvG6KkcGKk2G+RbpQJ5HiDE9Xjtq5iiK@vger.kernel.org
X-Gm-Message-State: AOJu0YzD24t6lSJ5gwYEp3Fw6FVVgJcmxeOiAANEB4sK/8eKd6FXRxaG
	nVe7liCnyuaRgU0lBUwVwkK1Fb5jFtt+EIPdAKK73PCx1DwFcHkbXTkw
X-Gm-Gg: ATEYQzzQpwCbeKNlGOZgrWZx2twPMK147A4Qd6yvi+Y9BTFuHZLtCQU99LMO56KKj8o
	KCYHhkUXfH8MXBSf8SUS1FTdBIm2Snba3fDQlju4E5uDWyNma9MI10W5WGNMlMnEFYxhj8g5WPb
	dNFMcPwM+OlKUGJ1Gp0xFf72O5ee/olaJC/c5zxKJMODFtvjzgOKvrCpHCG0Es23TGNISc/ujb9
	XkAYNjXVBW/GfTfkPtD91Yj7gdPjfz/jBJ2grAb5S7lWmP+XT5DWC8vPB3nRegPtILN628rR7q7
	+sV+wjZ24QETKHS3+fMhST9IF7Y0CIUnSQ2RqWWHLlBcQ2TxNjUdGyesfnrgDT84tgFRwE9XPnh
	LCAU/Ay+gAku84kvd62LRs0nX3Ffk/FKNFr4QRN7sVxkRRfUH7/S6QXMjb0020coBZliHqUQnGm
	YW8pwsRkknnP7VN6/OIxmpoLAb+m6x+gUImtYVawmZin9ZM8lK2ScazWzRR5/74QtrXccRwHOMK
	uWksfuvkx036+5tWJsYOQX9Q3Jj0IPZ2S1du4Yd2CBNgw==
X-Received: by 2002:a05:600c:c162:b0:485:35ee:f836 with SMTP id 5b1f17b1804b1-485566c94a6mr62238805e9.2.1773417285577;
        Fri, 13 Mar 2026 08:54:45 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4855725572csm52482715e9.2.2026.03.13.08.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:54:45 -0700 (PDT)
Date: Fri, 13 Mar 2026 16:54:42 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/3] Add support for Variscite DART-MX91 and Sonata
 board
Message-ID: <abQzQnmG0Xh7wXjt@Lord-Beerus.station>
References: <cover.1772642881.git.stefano.r@variscite.com>
 <abQpn9whz_o4n86u@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abQpn9whz_o4n86u@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275398-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,norik.com,toradex.com,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 4186B28676D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Frank,

On Fri, Mar 13, 2026 at 11:13:35AM -0400, Frank Li wrote:
> 
> Can you rebase to my for-next tree
> https://git.kernel.org/pub/scm/linux/kernel/git/frank.li/linux.git/log/?h=for-next
> 
> And new file, run https://github.com/lznuaa/dt-format to keep node nice
> ordered.
> 

Sure, I will rebase the series on top of your for-next branch and send an
updated version.
If possible, it would be great if the series could be merged as soon as
possible, to avoid having to rebase it again on newer changes.

Regarding dt-format, I can run it, but in my experience it is a bit buggy.
It sometimes moves comments to completely unrelated locations and does not
always keep a logical ordering of nodes. For example, I saw cases where
usdhc3_wlan was moved before usdhc3_sleep, and pinctrl nodes were not kept
at the end of the file.

Best regards,
Stefano

