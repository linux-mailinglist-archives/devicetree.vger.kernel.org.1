Return-Path: <devicetree+bounces-314213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CDhjJ9LXOGrGiwcAu9opvQ
	(envelope-from <devicetree+bounces-314213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:36:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E756ACF7E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:36:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314213-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314213-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63BFF3012250
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEBAD35A925;
	Mon, 22 Jun 2026 06:35:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-73.sinamail.sina.com.cn (r3-73.sinamail.sina.com.cn [202.108.3.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CC534E766
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:35:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110159; cv=none; b=pkAcKY5wk5QceQ1SxHbBNsM5zPl9W6XC43hzxkQmoNl20jYVXu1JkZGvNfBIxYYwdqMLJA6xVTblkBFik1OOTI4xTNs5ukzlEVSeiW8Xd1MATIOcTgTPFJPZ0oSEZL3C34C1s5uZGut0QEIYYZ6+3xgM7GBHDQ+/vj4nHLJQTcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110159; c=relaxed/simple;
	bh=OSIM+mQzdD+LjxxJ/dkr8bmxb9uhBqOeLzksxlzF1b4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=rEPHp+FoJyw5UJC3RAasJegWuiQrZfrE7+geypNw57U7hB8u0ZiEbU0cyCpOXwKsgFq7KAnlXPpYbj5BKZUT0voMgdbliTTDtS/5PQXKXxpGrwO3JCNaX2gjKmRROHBK4xiUrfLcNaVYxQ2jTcYMjj7gcmkCkKOmHdrHb5eLsfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.73
Received: from unknown (HELO localhost.localdomain)([58.38.107.94])
	by sina.net (10.54.253.39) with ESMTP
	id 6A38D737000017EB; Mon, 22 Jun 2026 14:33:27 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: A9CF0BEF27FD4FAEA2D832EEA1C72C85
X-SMAIL-UIID: A9CF0BEF27FD4FAEA2D832EEA1C72C85-20260622-143327
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-sound@vger.kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	zhangyi@everest-semi.com
Subject: RE: [PATCH v2 1/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Mon, 22 Jun 2026 14:33:18 +0800
Message-Id: <20260622063318.3535-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <a619312f-55b8-41f4-b288-d7c343f5f9e9@sirena.org.uk>
References: <a619312f-55b8-41f4-b288-d7c343f5f9e9@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314213-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[everest-semi.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6E756ACF7E

> > +  everest,mclk-src:
> > +    $ref: /schemas/types.yaml#/definitions/uint8
> > +    description:
> > +      Indicates that SCLK is used as the internal clock.
> > +    minimum: 0
> > +    maximum: 0x01
> > +    default: 0x00
> 
> Could this be done by having a clock API property for the MCLK source
> and then falling back to using SCLK if that's absent?  That would feel
> more natural for DT, and you'll probably want the MCLK property at some
> point.  It's also a bit more of a neutral description of the hardware,
> future versions might switch dynamically between MCLK or SCLK based on
> some criteria or something.

I'm not quite sure what you mean.
Does the implementation below match what you described?
clocks:
    items:
      - description: clock for master clock (MCLK)

  clock-names:
    items:
      - const: mclk

es8389->mclk = devm_clk_get_optional(component->dev, "mclk");
	if (IS_ERR(es8389->mclk))
		es8389->mclk_src = ES8389_SCLK_PIN;

> > +  everest,hpf-frq:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The frequency of HPF in Hz.
> > +    maximum: 1020
> > +    default: 16
> 
> Why configure this with a fixed value in the DT - it's the sort of thing
> I'd expect to turn up as an ALSA control so the user can vary it at
> runtime if they want to?

I don't want users to be able to change the HPF value at any time,
as this would affect the codec's startup.
Or I can use SOC_SINGLE_EXT to define HPF-related controls
and write the modified values to cache when writing to the hardware is not permitted.

