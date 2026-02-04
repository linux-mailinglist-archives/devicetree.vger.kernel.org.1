Return-Path: <devicetree+bounces-262436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFNeK1qOgmkMWQMAu9opvQ
	(envelope-from <devicetree+bounces-262436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:10:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 491CADFE6E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9AB92301C569
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 00:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560AF182D0;
	Wed,  4 Feb 2026 00:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L6KBxrWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1DF849C
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 00:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770163798; cv=none; b=G8ILI39gyUD0MgKK7pFyZYxQnvuwq4tYb5KDfHOnNF416xKGhJ839KN4qpNw9nUmbOqK2FtiWVGounRHOJ8LzOsObwzAlp2i7SlDDc89MB8ByV4pWRn+LM7lcf1/Q8sTmO4HcS8QVuhZfcbO96iHRx0MKhYnasClukuDnRJ0AmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770163798; c=relaxed/simple;
	bh=r7f2YJ7miQLMROmcW15Cnr/tWaxkZgZRaVrAYVnvYQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bWVvEZr9ldqLyUUm1eh/3Gp5b44ycGIJrP8gVBSOXXoWE2O/AOYUpc9VrAq+CeAbKfBBlPwhNPSt945JbuHRDmssOjrD2SbkZyaXWoIzf8wDrvEXp+kiUFCjqi498hOqXAUJPQqgjXkRx+J1CFst+WVQ2wu10o/D2+BeDlvZ588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L6KBxrWq; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8c6f21c2d81so625637685a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 16:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770163796; x=1770768596; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7f2YJ7miQLMROmcW15Cnr/tWaxkZgZRaVrAYVnvYQ8=;
        b=L6KBxrWqNg6VdrFH3oLMOwDA8MmO3ZQTDo0FU9Zfr82iiqbsMOxzTmNZ1097aQX7Q6
         4iTLX+VwwrNSeUPC1RFQf/fyguwW9oKEjp1q8QT8greEpF2LsLbtVWasobBDHHFkztvS
         ZXlfV6pL9Am7ALKG11L3BGTykyE975ygDjZ7yDN4vAiuLWmVlnGPpgmZ36WRKK//TUKu
         seGbanMvDbuagTdh+lxvfjMbTUDhmlFgBno/cT4qQIH9gulUQnefUfTOYuob1IN2PqWG
         2jNFry3udIrGYOUQOj8HfJh/6uhnjzACciAAxnJ9HzjuALnF24LVqUE2c/+xjTlvNknb
         PfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770163796; x=1770768596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r7f2YJ7miQLMROmcW15Cnr/tWaxkZgZRaVrAYVnvYQ8=;
        b=TBU2woZ+gIQEdjaY/eKLQ5fO+cxhrgPjEj8a5jhP8WEwPx9fwAx67zhJ5gD3weDbGS
         A8hyETQTNSLbqcFgnw5Uier3rCA0A71rNxK8Ey2c5pKbUlN9girWGUFNvqoh72MKRIbt
         43XXbeAESEw8UsCV7tL9FPunzJaF61b/+7vTYng4NtFor+nRez1ViTXQcwmIBdzZ4FtL
         GyLyV8t1tMTMWSKKDZTaBEWPMV+W9+Azv4/estBBKVjYZjIc2jdTSxesXkOoOroxMbzK
         rgfAs6YfeufTHF1ezRNSdJXdQBjgSlhwBZYxuk/RAWYCgrcijfW1XzkQ7NNNM6pCGDAn
         Impg==
X-Forwarded-Encrypted: i=1; AJvYcCXnL3yP8UCQfMSSSj8VcPBe6SLUFBoELI/dGYCfkJNR157Ca0vtiOnAEZpAwt84Qb29nhdYKu95NgHj@vger.kernel.org
X-Gm-Message-State: AOJu0Yza4ZQIMnoLMT2WNgL5CLGN/4He9Kv34Z8IfBqQ/5C/4hlo/RsO
	Y9MGVhYPy+Uzy/6tJjva6nC7/5Vx6PEE1Bx9Z0xNusm6ZxJ8ivd9Q+7Z
X-Gm-Gg: AZuq6aKlTke19eTlzO4CbYUhxh7Gqhzc9BT1KB3Ft0xD2OgJHH2LkzapP/7Xt61XWvJ
	wT0uga9KQLDlNjZW88yjb7FFGOm9FHUqRmKgaioELZeJiojxMLLnADwJcUY9/GvMVH40lribPNc
	7VUcVtiaruWehMNljU0uvOxyfDLvuqa+2kKgZuDdQjcc85LkU7/TeHM5a3cyqUV7qm3jzAU1VBd
	pUMvwU9rfD1a2eJ7/L4eRIngxlNe/A0ARGrBer6T7RaV9aiLVawst2hlT+hRUgH8RUXj0ammY1J
	ZvXd1EXaYXUgtRaVrs/V8aKwJo+9CVC9WFFN/SwTNxPa0r/sfAncasJKTeL4UhybXnlpTbSVIgm
	EErflYCxJbbKPC8kSoHSKfU2Ltqi2i2TUhQ8COR+2/geUQ+fOtcqc31h5nzS2GN4SiNda3mYnBK
	YqvZ/b1f6kZaKCVYmSaWLvDmSMt7mgfbdODF0HOCGFHut7pBw2HIjQWlHNwTW/wKnKit/4a+w=
X-Received: by 2002:a05:620a:4084:b0:8c6:a82e:16ba with SMTP id af79cd13be357-8ca2fa94d53mr165063385a.84.1770163795867;
        Tue, 03 Feb 2026 16:09:55 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd5382csm70897485a.50.2026.02.03.16.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 16:09:55 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: andreas@kemnade.info
Cc: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jernej.skrabec@gmail.com,
	jesszhan0024@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de
Subject: Re: [PATCH v5 5/8] ARM: dts: ti: omap: espresso-common: Add common device tree for Samsung Galaxy Tab 2 series
Date: Tue,  3 Feb 2026 19:09:53 -0500
Message-ID: <20260204000953.299628-1-bavishimithil@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,intel.com,kernel.org,vger.kernel.org,lists.freedesktop.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262436-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 491CADFE6E
X-Rspamd-Action: no action

> We had the discussion. This should be done via pinctrl irq if possible instead of
> specifying WAKEUP_EN here, You had some trouble to understand how it can be done,
> and we agreed to add the wakeup functionality as a follow-up concentrating just
> on that detail and for now just remove WAKEUP_EN.

Alright, I misunderstood as keeping it and chaning it next time. I'll
remove it.

> still this strange matrix. This is no rotation matrix. Determinant is -1.
> Something is strange here, so also the idea in our earlier discussion was to
> also postpone it and maybe separately discuss it with iio.

Similarly, will remove it for v6.

Best,
Mithil

