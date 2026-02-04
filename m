Return-Path: <devicetree+bounces-262538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEmyN9j5gmlNgAMAu9opvQ
	(envelope-from <devicetree+bounces-262538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 08:48:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D3BE2CFD
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 08:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9F1C530091FF
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 07:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D172038E5FE;
	Wed,  4 Feb 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Shkmpq2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880DD38E126
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770191314; cv=none; b=RBg8ripz2ENPp11QcRWslVtp9JYKdlnrkVZVHGAtEb98j3BaZ20KvttmaIxll+FhMRbpLwKjaRPkcFEUplTQ/5RKvSYMSTE3njnfTWalwbiJjis9i5CkPm9RfWlBFDllbxYiHkSv5blpmE8qqLJIM5RReH/A4Eb30mAjav3yNzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770191314; c=relaxed/simple;
	bh=wD5KQf4PNdjpQpaRREtiHsDRqlXZZrXVKaVHX2VHgdE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uw5I36fkU1+dlYfxIdRKFaJelQ7HxFDO8yE9W0AEYEF0SXATEN+LjVHTV5pC1qsU+XddAyd7esuqlczY/nG3485JEExeZZlR7e8vQsGU5MwmOLA21DKI8J2v18Xof+9oKatJCsbzOn3mq1i+JhSvphA5SCyaFJMx0OE+/2mhSNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Shkmpq2L; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8c5384ee23fso731415785a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 23:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770191313; x=1770796113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vFAyxlb4iCSkPw1pLsAtumnvdjzuriOCYM9dwXAoQ/M=;
        b=Shkmpq2LuKv8IL8xqTHIK5egDegoF4FBsBROO5JGUq7OKaOWNXAmb38RmX3EGk28cO
         basY3JEi34lrf4LFB+aAhiuzaAV4ns/U1pZfa6dDN8+pHNBRxOqt3fPirrDTkGIrIDv3
         sMAWKnZZdnDhwcbBGCqPgrWdZFYzAn0ET2Q4KXI/YsCLPc71tQCtg5mgOz+QG4Uo33YP
         9OojW3PVTmi+ZtHqjKYcRNvAwfBcUyZROxw8wqpheBML9DwSM6fMbpXDc8qhj3YOk82l
         l82cDjvlPXgN6zbGQtNnKqgbiayGPw2j+4dH244aHnR8RRh6cBWycMhJ6v3OfFamfvRJ
         8SJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770191313; x=1770796113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vFAyxlb4iCSkPw1pLsAtumnvdjzuriOCYM9dwXAoQ/M=;
        b=OyzTBa7sFHVqs5C17ZnUmk6Z5yl3gbm24po2TKMGo3pEibne7U3DBmtyQLIBSegN3Y
         F9aySSjXwl56JFiV2Ht00iIeNZQS0GunwwNH2M4smbelYzub0b98TA8ScbwG2apzEQok
         1SH/glW2ngD+XP9fLO+uUWmb9LX5hHvbJc3INUiAL0hfAhqLpKjVjq+gvjH+UVcef6gi
         u7lzgUIktOhW9WrI7v7JBjjFjMNgwmQaNeSVOuVG2FwWmIw4+tTaAl+pa/BgfN/GJHqu
         iLnlmB4T1lVlkstb71C+8G8ZpHsVCljbjOM1TR/5R01fR5VEzbSY0Qmc153gvFhVpeJn
         ek+A==
X-Forwarded-Encrypted: i=1; AJvYcCWFFhRxm2V7Rs7AzqxGl9dP5gydG3CmLI1Raz0orVBV0FEmEANHxA1XHJD6+e+rVQIp4wEzvc5M1JYm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7aRUPra/RWMzdqhpObWlDTB+uR9GAHTdl2W1yFLDvRbKPrHRS
	ICcihx8MiDYq3NN2j7JgEccZmnE7gwppRGS+nkgS0Wxg4ZS+GTJ8K39aQpi1wm4F
X-Gm-Gg: AZuq6aInSzWplLcps3rM+KHf91OHIt23l9FmeiQC/2yhQ46e3AuGzIUfgNLC8j8yjky
	OoFGZdn/5woRhNst4fh8OFmLEhJfp//PpMnBgJOrbonOLtjhjPfN/PtlIboDP5LWXSiqI7xjDyI
	ub870X18MUlNT0HZt+wnlQzPEEv8vVWqsEyBcCONKsy0nNFVaGWAo1dm5S4Gzvg24ODJASDecbH
	wfwh9Ge3Qx1jHWYPt/Ph3PZfCM2I8xwU1GuUh9FSSDxLHeDZnKXI7mHQoeG6qIaH4GhjuYYORXi
	ErQgVJQzcLG4AUITh1gfHULoimxdnOwAyK828dPIX+ULC4g3kgmASMMTNwz4MQGmP5reMKTbj/0
	Zfae/7dy+6A1mKBs3+Z7ncwO9mXq3FBHYNd4cqS+yXgJGccTuhvadVUeNwQiSNVOvrQzPfTvhQl
	NdDdAvWSPVz/uUuWZMS90QsgE5vwzQD46oyvkEYR196o7I1A+yAo8l70kCeu4al3xEhMS8UuE=
X-Received: by 2002:a05:620a:f15:b0:8c6:a539:55d7 with SMTP id af79cd13be357-8ca2f9cea3dmr248741785a.55.1770191313409;
        Tue, 03 Feb 2026 23:48:33 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89521c19923sm14215576d6.23.2026.02.03.23.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 23:48:33 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: andreas@kemnade.info
Cc: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	bavishimithil@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de
Subject: Re: [PATCH v5 5/8] ARM: dts: ti: omap: espresso-common: Add common device tree for Samsung Galaxy Tab 2 series
Date: Wed,  4 Feb 2026 02:48:31 -0500
Message-ID: <20260204074831.300311-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260202090408.4c3757cb@kemnade.info>
References: <20260202090408.4c3757cb@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,kernel.org,vger.kernel.org,lists.freedesktop.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,atomide.com,suse.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262538-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 17D3BE2CFD
X-Rspamd-Action: no action

> We had the discussion. This should be done via pinctrl irq if possible instead of
> specifying WAKEUP_EN here, You had some trouble to understand how it can be done,
> and we agreed to add the wakeup functionality as a follow-up concentrating just
> on that detail and for now just remove WAKEUP_EN.

I think I may have understood what is to be done.
For example we have 
pinctrl-single,pins = <
	OMAP4_IOPAD(0x0bc, WAKEUP_EN | PIN_INPUT | MUX_MODE3)
>;

for wlan_host_wake, so the change needed to be done is from
interrupt-parent = <&gpio3>;
interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
interrupt-names = "host-wake";
pinctrl-names = "default";
pinctrl-0 = <&wlan_host_wake>;

to

interrupts-extended = <&gpio3 17 IRQ_TYPE_LEVEL_HIGH>, 
			<&omap4_pmx_core 0x0bc>;
interrupt-names = "host-wake", "wakeup";

and remove the pinctrl?
Similarly for all in the omap4_pmx_core domain (wifi, bt, i2c as the
drivers support it)
No chnages for &omap4_pmx_wkup domain

