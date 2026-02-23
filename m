Return-Path: <devicetree+bounces-267398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIboBnRFnGk7CgQAu9opvQ
	(envelope-from <devicetree+bounces-267398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:17:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B8C176016
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A777304DE94
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477FA34EEFB;
	Mon, 23 Feb 2026 12:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dji4vIBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B4A344D98
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771848965; cv=none; b=LbBrlm4ck/HZnuGioZc8ssWB2d/JIk3jvEtQ9ct225TSRHbPq8d3Zd6GRbNuPpb854+CnSmidhm0Qn7ix0VECqL5ANcMxFjZexW9DvZ7LZqt0feZ9OzwyDlbKDXiuNhGczD2Q3pCQvqGCmgN3SZyWSpiKzhxd2ZzfIiWCBeJsf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771848965; c=relaxed/simple;
	bh=1PBTJcbxdrzYQvPiFSi53oe6XZEeWPFTEREfJJP/dlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g/4aO5ZkpU6nDXrCrTr80mrGvu6/jMTdE5Q+xfc8/32zeVeZDzIunCTXup4BmGagrv1Oj6CmCTnHLKcsiygQ01YmOJ3QudrE20BhQBv3W2BW7xRjpive8AcJawWm/pMhwdp0WfhiLeEgBdZveoYb7jR3RCeZH/H8Mi4UTUwgWAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dji4vIBl; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-483a233819aso40722115e9.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771848962; x=1772453762; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=277rMcw8kS5ArMiSvCyfzkh6h/qmIKxeYvWi7CCtUrU=;
        b=Dji4vIBlz0B52Jhx0T+82/D7AyCU+A74ATyVCFrSxLZOHuefIkZFqYdiFtfFX55BS2
         1UqeB/E6oCv2vUwEZMSRRDtrlQimW4zdVasuJJreDg5EOpd6KctpJCc8rRQEp6uC2QFz
         OMo66hrmc96gmn+szmHMO5MfbEICv3zaVYOaNiLOP4Nt/xkdIznfcqb04qWIBXP+WKqs
         7hRGzNBVioST3yCAlZIrFwnkCAlwqnHMU9huTGf/KcGBLgeZMSswxfoWR4QTKoPVjRqd
         jYKhHcNeiuy2QbLe1NDgOzDIyh2wht3QeFoUx51mPyYbtLiBlAvXxUAoxGu4qs3EGGch
         kuQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771848962; x=1772453762;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=277rMcw8kS5ArMiSvCyfzkh6h/qmIKxeYvWi7CCtUrU=;
        b=i3K/qSHcGpDDt/YHesuYoto2rzZq3qJzM/dGjB9uFouyv0rxDnhjAKxIkAFQuG5MHz
         Aus1Ara76buFDOY0gWDzFb6oSht8NZVU+2AATM/0ba1341oN97gcEZEpnzyCEPBIoSug
         Ewl1AVyfGSfJ5HOb2PU+nAV7qo8zYo2bOhhnB3s1Cf+DCG2oMo7JZc4HVbA7CVmYl8Nr
         ihX7/kQFjZY3jNwvSogYEdZ1Uyn+6FcewQfHhmYyE6LAObJIh+B07bXFzF11z5PUAwGp
         jdb+haqqbMi9Rf7nrsY+sf3O+BzXwyqhG+a0c5f5Y7ycVFibWurvf4PNLA4RuBXKW9lS
         Lh0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWeFzaAw7lORx8laRrnQMphz/SQWm4tyv0f/NcilCXzlNnL1t4N9T3k6t/wjEhr2sXsU//km4R6XIx@vger.kernel.org
X-Gm-Message-State: AOJu0YwqztUp1yDr+OsIE9PKlhUow9LZgDQKJ1kzEIvTPNQ0UN9HWueO
	SW9LReVd7PXSuUSD3lpRydWTNtfe4z3UCSSpLhPPBg8Lt+C/WjtOV80sox19bQ==
X-Gm-Gg: AZuq6aIsFYAoAXycHz6EQLSqRNCqxpDfujaMsuAeOgAqOE4J7kpo68MjdoGqAuNQHbu
	CvTJd+i30lifmWMHXP192gcQ9OeXHnHaW4wqTcA2qdYnI4cawvuNy6B4pT529dmPSflifzE2aVm
	CrUEkOGcIGewXuEm/xwmxix78ApddEhBrL1z2XKBJXpnCeJ8ehryVToN2Z4m1RlWWXsjCBHuOgu
	Fliro5z50XxWSaFXx8gGXleQUfYPMVwsFS8+Yvn3hqItCy8Oydux8VM6Jl7bGu0/LpCrL3W5gy3
	4cGYrdS6Aix2ij+hlbjetDh/vMD4VkLSz7AlW56Wa9b8CNbwt2pnn2PSJIEK5Y+ZJGiq71VRpKI
	bqFRosfhOMeJy7uRchRWNmfaHth0xkzbVhAjzk+UMAchXoft5SgMZeT55L01+NwFOjahrHxSJDJ
	VPS31YYlIeJYKmQ63xLcgHg/9D7z8nhz4JcyZMKldXi2dlz0U8bCYzrEhCpwftYhk5X3H00XDOL
	DGgqVX5wVUGbiDvKSVrn91N+qrl1BJkZwUdZVJAm3ZCHEo=
X-Received: by 2002:a05:600c:1f8f:b0:47e:e57d:404 with SMTP id 5b1f17b1804b1-483a962e459mr162439725e9.16.1771848962174;
        Mon, 23 Feb 2026 04:16:02 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31bc0e3sm242454895e9.5.2026.02.23.04.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 04:16:01 -0800 (PST)
Date: Mon, 23 Feb 2026 13:15:59 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org, pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: net: bluetooth: ti: Add property for
 enhanced SCO setup erratum
Message-ID: <aZxE__Ybg5p2DaFM@Lord-Beerus.station>
References: <cover.1771847350.git.stefano.r@variscite.com>
 <db4c7eab9d0c2f71eb61baff240957596f099401.1771847350.git.stefano.r@variscite.com>
 <a5d4ebf0-9d99-494c-b46b-a6140610c9e2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a5d4ebf0-9d99-494c-b46b-a6140610c9e2@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267398-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,variscite.com,holtmann.org,gmail.com,kernel.org,lechnology.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email]
X-Rspamd-Queue-Id: 88B8C176016
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 01:03:27PM +0100, Krzysztof Kozlowski wrote:
> On 23/02/2026 12:52, Stefano Radaelli wrote:
> > From: Stefano Radaelli <stefano.r@variscite.com>
> > 
> > Some Bluetooth controller/firmware combinations advertise support for the
> 
> Which ones?
> 
> 
> This looks a lot like controller issue, thus deducible from the
> compatible. And even if particular firmware has problem, how do you see
> changing static DTS on linux-firmware update?
> 
> Best regards,
> Krzysztof

Hi Krzysztof,

thank you for your review!

We have observed this behaviour specifically on TI WL1831 modules.

When using the HCI Enhanced Setup Synchronous Connection command,
SCO setup fails even though the controller reports the command as
supported. The only working path for this controller is to fall back
to the legacy HCI Setup Synchronous Connection (0x0028).
The behaviour matches the scenario described in commit 05abad857277,
which introduced HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN for that
reason.

We are using the latest firmware available from TI for the wl18xx
family (from the official TI repository), so this is not related to
an outdated firmware version.

The reason for proposing a DT property was to keep the workaround
flexible and avoid forcing the quirk on all TI controllers handled
by hci_ll without confirmation.

However, since this may be considered deducible from the compatible,
would you prefer enabling
HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN automatically for
"ti,wl1831-st" instead of using a DT property?

Thanks for the feedback.

Best regards,
Stefano

