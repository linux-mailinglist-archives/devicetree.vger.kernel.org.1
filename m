Return-Path: <devicetree+bounces-264765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMXQBah0jGk6ogAAu9opvQ
	(envelope-from <devicetree+bounces-264765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:23:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C541242A5
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CE5430143DB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C8B33A6FB;
	Wed, 11 Feb 2026 12:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LMxsmxcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971A932B989
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 12:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770812580; cv=none; b=o+gCkF7MLI9TpH/cceBOdDoxjjM1Ip606ciqJNnXz5JsBoTI4MHCBew60BaUYelcr5pyV/dAiMm4wlA2vbD+Z8oREgDbFF0KxKBzJt07O7SLVqsU7PcpuuKdZBSffPt0Bv6oSV1xeIPxgi/15Lv+p+nyEC5hah2O2DhDC+eWUN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770812580; c=relaxed/simple;
	bh=PNl2W09PXS2cIEGgx6m7OnG6l1CiCnM8wXGyRyqATVc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A1ndxx25zv0FtJUxEGEe1VmotfqLMyWG4Yk/i3LlWF/fko4bn+5A0ltd4B2v35z5tJa3LEv/FhxmvTBiRA6+weLo4I92lqaOAl80bxOcBHpBIMEYliD3+hpL3YVug1dhTnNpMJsNpSThsi/wnAqhmNJYy4WY7urR7c7smfIQnb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LMxsmxcr; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso11650375e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770812578; x=1771417378; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vJVzdkrFxuD+RMS2UJUYgd6O4St7LRSdDuy0occZDfE=;
        b=LMxsmxcr7E8+HOhvrYkJMuk9wplWMkIN7TS7wAN57tE9UWiSBOOJyvidMSHtBhTjlg
         6z0S5amjlTkLuK/HuitSfOX/9u8Er5t+nNpmwJfxlU/tGpUtsq6/v1kOOYMUZW0Zxn+1
         plORaBIz07U8yO2VdvyiDZ1SORawjLvTAsybSBsNqOWCsVCRBTmb41UOhh/O4FPEvUra
         AxMgAJ7UYO7hQZHfKGhzv4jTnGSmiiQ8hWcdHjzf7Rf5Y+dwj5u4gP3mH3sE163Wkpii
         2HD31P83R5hNWizIXS0/xErPATOUrNmpHHui1/uVD4J5xG5hiVqNMj/jN4fQmnMPK3Lw
         v66w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770812578; x=1771417378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vJVzdkrFxuD+RMS2UJUYgd6O4St7LRSdDuy0occZDfE=;
        b=SgPEnIPJ5pm6usahJk6eE3n/5bcNdxARXz5h4g5QfamKHvtYWAcTdWrrj+uC+iz+qv
         4H90NwvGf9jKMK0a7ptbafNdwhBLaiR567e2aci49T37xdHUyL1JZwKiuVaJIM1VjrB6
         JuFiEGRwMBbJgxBvOMTjP0riIfzDwxHOGBGf8eVMiUdhJBS52QubECqh7vP3VXM4eLEL
         TsVBZsC9idyJkkr6qTDroZu9yaSsArlb9u1xp1RBVzGWd7lIO4YH3we9m1Se0UwkpMZY
         tFme2Bt/CR7YXl/eZtJG+SP6EJhHl6xA5rpP+BFdxOTzyGn7cmn4OZgQS1FI/hSv6EqL
         dkpw==
X-Forwarded-Encrypted: i=1; AJvYcCVbpus4f0PVAZMAv++8BGlBvT8+o20Sfy6V0btiL41F2JynoRVOlaoVJmvhCSdqy6Jj9SWYTv0JT7Lz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb7qBInk9nc8ianEH9BoPGYY1PQQauwYP/YgGBxcKsRpz4LFHg
	rItaTPSQ90h4LkV29t94bZL5Vwa+i/Llq80AMaaYDpeKeSMveq/r7bMx
X-Gm-Gg: AZuq6aJ3NG6grrirutT6+ykqMUQXceG77Ks4X+ONe0QUVynjWpVplCZFWQHoq0rY2p+
	EeIeJ7r8Gp4ha6SrgaJ2R7NZyPw6YYgGSce8gZA4uH1bGy2IoSpI3WLeHoWvajgd7LhU7t1mG5L
	BQL8DmSm9KqifYUlDgBowe1xNSecRcDZMJZb2oFD9jyx16AKJabZ8CNzhLW3NZO+mI/n4EwLc1L
	4e+Od0soT9odVJfLJUj8d04VmnpGdqal7DZC7JMFXqE+kn671FtvqzS1IGF2kLETQfiDEn3/wwM
	Zm6JGJ3Gx58an9JrihgEBekyYY1N1RjYTNsH1ua0lcAfNfLMufGoaKy5R7rOaFoN1nLI/1q3hbw
	KaKu+ATK4oUbA8oZfJVKDJmhA8EwHtNfeGjehvJbus9D1nl4OESUw8v8ySXb2Ya3H5kqST9+lcl
	mgmfiwcaJu/OYIRxfTtS0=
X-Received: by 2002:a05:600c:1990:b0:483:ca4:c8ab with SMTP id 5b1f17b1804b1-4835e2ce42cmr16954935e9.6.1770812577765;
        Wed, 11 Feb 2026 04:22:57 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783d4785fsm4100412f8f.11.2026.02.11.04.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 04:22:57 -0800 (PST)
Date: Wed, 11 Feb 2026 14:22:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20260211122254.4mwzmi5auxddsm5k@skbuf>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
 <20251119192326.4bflaqkh4zvz2rib@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251119192326.4bflaqkh4zvz2rib@skbuf>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264765-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87C541242A5
X-Rspamd-Action: no action

Hi Horatiu,

On Wed, Nov 19, 2025 at 09:23:26PM +0200, Vladimir Oltean wrote:
> > Anyway I can wait with this patch series until you get your changes in.
> 
> I will keep you copied to the patch set which I hope to send later today.

The generic description I was talking about has been merged as commit
e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()").
This set should be dropped from Patchwork. You can send a new version
after the merge window closes, or an RFC at any time.

