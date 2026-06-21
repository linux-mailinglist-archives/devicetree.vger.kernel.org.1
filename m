Return-Path: <devicetree+bounces-314060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kZvHOP2YN2qvPAcAu9opvQ
	(envelope-from <devicetree+bounces-314060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 09:55:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBC66AA5EE
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 09:55:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GWEeaYI4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314060-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314060-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 225C8300AECA
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 07:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD165270ED7;
	Sun, 21 Jun 2026 07:55:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01491BBBFC
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 07:55:36 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782028537; cv=pass; b=DEUAMaRS04WUS5+g2TA+Vla0vckEiiLOwYCP504JZZh8FQte9F4aacn0qfJCO3y0Qo82etIGrHk0uS8DoULoPzZ51rcLQYTfQWkesm7SAYZNC/13N/S3oNqLDIPO/6OAQGaEIC04uMhgDGoqm858rVJxTr5mB9h8op3mRe2KOUs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782028537; c=relaxed/simple;
	bh=bT+kSAr+cktWWhCVIYao26NUUMqDDZx8mDGFg9kSW1U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IcUsJqKno3h3E1dbAqCulr4+j3Zf2l7GHKAUZAlKneyDe9xm3QTHq/fluo2yosP4UlCX83S6FyaZOFc9nR7vJgbaUpnuIL934f+rf6J8izH5gUHnZ8jrtNUjI2XsVD2WJV+6MxkCCKb9CC56QR46eg3m/aPVqMvQSypwU5uxm84=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWEeaYI4; arc=pass smtp.client-ip=209.85.218.45
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-c0c15bd6b8fso154484766b.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 00:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782028535; cv=none;
        d=google.com; s=arc-20240605;
        b=ihoRRQOHp+uT9RoZl+R9VFSg7zv+rlaf1hnsa7oQYO2QmDmzIkNoTCOeizPsuncWZi
         JF/DOFNOFKErXMLAnGBKa9tzNTUziH9kw2xUibCOlzo0gAZWe3kjgLU6MQomWGwEvbUm
         Xt3hCv/yDCPNS3iyfLCPl49Wo0GJ4WsRcmVKgsOcT9nCu5t7T8uavqTPD0nGlSM+rEZJ
         PoAUrosk8Tp1i7My/yEIZcra10t3xoirK6QUYyPmfKFc/No/pLFYR0iXURi5xRM6V34U
         Y1Sy4+6F7amZfFI6wq9CYUDb6XqseHMzRFYcwwdoA/8r/6ev/dFHMrEP/oM44xWZx2tD
         JLCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hMvYItPyzRe1gzBuo0wIhzY+wWucW3fQKtqTXdUcD40=;
        fh=u2wuEW/DK5J0lp1QZUB8+VYk1XwHyv+hGav5Z8BDBdM=;
        b=VkPjKn77OuAVQOP0CSFBt9SJngGtXYuc8T1027cgwj/tr1xz+exSvYaVBnUwifvrGe
         XMyd2vVIF40cczl0yHbjj/LL+KTUFoVQS1st/Q+BLV8UdsTOQZLfzfQEKaBzf3ajysxn
         XPnXiUn+e43eas0kX59hvziy9cCqcggZR0uwz7mrtdG2T1/w5XKd0YKVj5atu82YCyP4
         w7RsfmlGlOxBJ/RaS+osC2w6TCOgEUn+RO4hjn/KmSgZpjikpXMqLym0h7EXYRq+lNbW
         ERBhOzCm2xf1B2TQiF68ZGI65n73EVrv8ePw12qoTPqHKcPjtIz9OH1sghc8d1kk9sYh
         Fevw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782028535; x=1782633335; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hMvYItPyzRe1gzBuo0wIhzY+wWucW3fQKtqTXdUcD40=;
        b=GWEeaYI4Aj8KgcCRXTTzwq52W1u6Pqo7eXhek1TWd9OFtwcLeoVDQayNGJqN1PTZ5o
         LmbGGOnxQFPOyKSL0A2kQWfrYRbx65JLmx0GZVLkPR3NLR9t4XmNcLXA2OeiU987zTlq
         L6Uwgxp/Q6g+Ob/bTBC6w+efIZok3c8gFKvzCFCbHeRX66C9Sz0CVDuDSi8lHDyHf1rt
         xS9z08vI8/ga+FEruWmiR0byDj3mrKFyTJU+SeHGI8/snB3x+Exsvcbh1HIsraw+a+5W
         OhGpQoCTIwCq/Jcfx0vVQwRerIdMdapgWPId1O2cmI6ffshz/etILyYmZcbUGobNkvfW
         6ZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782028535; x=1782633335;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hMvYItPyzRe1gzBuo0wIhzY+wWucW3fQKtqTXdUcD40=;
        b=XnrCxBONM1dbQUOKSBFo2kNmxOfkh5LOOd72eqi1kVUOGDSaGDhPVC3B2jDQkayJko
         dhjF6wxRoRmNcS75yEiyogCwcrI+fdwSj5Oq8iHDGjqQCB5I5Mg8SOAlA9drKSHtF75L
         gj6ko1akso04EpmHShkDC35TuYB4Fl3PhXahmliZ1e0f1DoD5fVfeuzRp5Ij875I2oxG
         xLwSCsY6JPpgPTdkgMg4wavESY0lv1WEvoTUuj6MZJcfmZiYVfOcs6KOOPlllu3ohIZt
         7OAVyhho9GDiOXEmEmxPRATc896TqR/VB1VHR8Cl4dnaVqlr3wO68MXnbhhGY206GMrl
         vfjw==
X-Forwarded-Encrypted: i=1; AFNElJ9YP1QeUlqq02ouo595tE5VR3qsKS4gp918aHsk0gBZwxwhyFwKIaUCN2nLYwFYML052qhGEM1/V3yf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6L6cKlXYyogFZmxdcRPSZ7DNDj8Dr3Mx1akvck3b4n74WeARf
	Ad2aK/GuaK8xuJi8Cm1WzfVMqXw9HiE8bkI8tT1p9GApnUoqo8lMeonOpREtOHtHf1GyC3NDoiv
	WoEUOZenXGpLdj8kIXo491rrWtjIN+eY=
X-Gm-Gg: AfdE7clQeuZr7wZRNdED4eeqqBJ8KAW/9TdZzXiOGxhFK3Odu7kWQjQi+lxC8BvP1oe
	BNV3VAzj8S2o+gp02R8LD8XJftXwBwm1qtjp4+J+Jxl1293BD7jUfLhB0vwraNjQcmaF4auT7ya
	kDCt8TMdB/zzavKpZG8Mxj6dnJ/c1u6CClE9sWK2ToWa07Q07Og1dRzAx7WT8alvQFuD117zsOK
	cn/v5vSG1zfkNAHgwfkjqoOxDf4IcW0dHsIGdkU0Te5Md1Fo24PfwmWCt9pL+GQt1TgYyNpk7zk
	XTAJz8hnQrDCga39cfyU4sj45wA7
X-Received: by 2002:a17:907:6d27:b0:bdf:8e2a:1092 with SMTP id
 a640c23a62f3a-c097adb13f9mr573581866b.3.1782028534767; Sun, 21 Jun 2026
 00:55:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260620200032.334192-1-l.scorcia@gmail.com>
In-Reply-To: <20260620200032.334192-1-l.scorcia@gmail.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Sun, 21 Jun 2026 09:55:23 +0200
X-Gm-Features: AVVi8CfSZq6Enj-XJKx5vjhFc4xd-jMn2ZAzgLd4cUoBxN01IhUJaqR7lto47H4
Message-ID: <CAORyz2KB3jaRc5EFhDSuPox794UUeDgT5kRFe=jFg_rXuR9eSQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] Add support for MT6392 PMIC
To: linux-mediatek@lists.infradead.org
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	Val Packett <val@packett.cool>, Julien Massot <julien.massot@collabora.com>, 
	Fabien Parent <parent.f@gmail.com>, Akari Tsuyukusa <akkun11.open@gmail.com>, 
	Chen Zhong <chen.zhong@mediatek.com>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-mediatek@lists.infradead.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linusw@kernel.org,m:louisalexis.eyraud@collabora.com,m:val@packett.cool,m:julien.massot@collabora.com,m:parent.f@gmail.com,m:akkun11.open@gmail.com,m:chen.zhong@mediatek.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-gpio@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:parentf@gmail.com,m:akkun11open@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314060-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,mediatek.com,collabora.com,packett.cool,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FBC66AA5EE

Sashiko review of v8 pointed out some easy-to-fix but real issues.
Please ignore this series as I have fixed them and I will send out v9.
-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

