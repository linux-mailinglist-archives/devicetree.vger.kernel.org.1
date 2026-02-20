Return-Path: <devicetree+bounces-266919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wvHBMQVDmGm0EgMAu9opvQ
	(envelope-from <devicetree+bounces-266919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:18:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 362B6167356
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE2073012CB1
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C0A2D8375;
	Fri, 20 Feb 2026 11:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CxrBwIJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE25332ED5C
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586305; cv=pass; b=NqbQrJrUfVVxnrxXgAD4bA4phMZur++9y9vWMc1/TZ+1tVQSQ5m1wSszv7zrnGJ+wLqg5cW72lgCQ/WaF0QBafv7mZ7YDWJi+NUNkdZTmnbjo9NlguC+3Pm0Ae+OrKmwWnRcsNlQGR2lVhKi54Qcg7+y8xZjjJto590POkBJZlY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586305; c=relaxed/simple;
	bh=4ZYsIbWRd3672L7CH/XwqnwaaGplIX+GYHJVYMKyVj4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJFQwWDeMfPTBt0dlvXOwm0Vtvzw4ZLAAHoCJLUsuCwOpBuy6oI1HS838M1gFbS2/3lxa5p9/nJU6BoE3HRpePiGa95kLUWFbM/nps3JrTW5hhekuEec3FWzMMfPJDh1TbAGRY0D8vuHfUnYoSMHthqdeDq6MRrPrIiR3u1e1Q4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CxrBwIJ8; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59e5bfa4f33so1790591e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:18:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771586302; cv=none;
        d=google.com; s=arc-20240605;
        b=llx6PlVXDj8igIdTAlU3kspuxUj2GQaIYzhkV9SYqVIHtGFPu22LGubrCtQmvC9gfh
         /aDp1uIBdQHAsU2KyZka7/V+6zNBjiNE3nqkDfEp7cCeYmLM95XEEDr7HZvFFr84C5Dn
         OooN1QCyWM5xKwOwM2+lvzlEHJZ3yQj8x63SEOzU9W67ReOhbuWjhmpHbrbe0zRq3vyD
         7NBhrkSWJLmtgnJvkEE7/Vu7hXc3bY+BJA5eqJM1wyNRxejnpRwDKNQb6l/vQdvyV1im
         EnQF5Ihwt5fT/0AdKAN5rzq3sWnVc/q9mS4LVOb2ArCZb7fAFP0XP38zdWmz5aH3EyMr
         4R/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4ZYsIbWRd3672L7CH/XwqnwaaGplIX+GYHJVYMKyVj4=;
        fh=NXWGJwO/OfMojoRFD3ZvIXKYQ4amQtIJ+joo9p3/m5s=;
        b=WpW5VKt8ROS820dMarW5dIahuuYUibVW4BXPmpJ1r7isqicWL/gYy/72j72wN6f9ay
         OGAVflgOZVGPi6OIjEjoq743XmrYVgiErsl6tdknmTQ797kroORukxGz7vDroJtIlmf4
         LlSzHt3PF3WFXmvZ+0vkOwJzxG+nmY0PJ0sbXtWsunud1AL5lTnts7dys+mWz87qCwV1
         h/xbPelUbbr6RnWiIqYiq2rneOqOU8wDz1vCS7grsywkDq+ONQWBpSK3OUmU5QVD00Iv
         FUVJEHa2s8+1xQF7LYLH5RboZqJaCNTsYrSMrOSOEBZv3YN3XFBriDGPw93rRAFXqAof
         0NCg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771586302; x=1772191102; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZYsIbWRd3672L7CH/XwqnwaaGplIX+GYHJVYMKyVj4=;
        b=CxrBwIJ8UvwqJO52ABJpKr+FlBJxZQ8ggDlxOEhH3dV59yFUZkm9PPywzFZMyWsqYU
         8AUjJEOba1bq8WdCMSKT8OCnW1QXMD8JVVek7fHpU1wXYuNAyoGUbnA0Zi/p2+jDmu4f
         PrGXJV2cno0MSUw88eGEZ9d8+2cDyG8dOvPgP2P9zWY8Z2FVDvr1okb6WsG6NOOgBgE9
         YzGiWEGCiWsr2na1OGyNCQofC93QOa+qlBbyjDefKoBN4YtR7cKjvA1YpAE1JgKKcrpu
         KLLz6Agu5p7OVjY+tIRsIVK07C3Iyl8DZFw3amE4vN9veXskHCWpHGTWoZ7netTcftVh
         V3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771586302; x=1772191102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4ZYsIbWRd3672L7CH/XwqnwaaGplIX+GYHJVYMKyVj4=;
        b=ix8lrtsPfbiBbyn0kDVVJHfsVbIlFkq0gUTZ8Dsjt7ce6GF2Sz6bQ8+aZ3J0Ukca80
         jlHvpUXRdifMzkSB7QsOiiivuAvqGasWVHD3uI8Ichq4ZfAR1N6Yu08WVxRHmNCrU5Gf
         /XhetGOZmrVjh1fJgKUAiMNjY0WuvFGqUUAwNqRcRMW0gmNL6O1du2JKct9ln113DFt7
         VoXgRM/KpL7a2y4FlcawMK0D6ib/alE8cqsAfnsq1S2OzY14Ovy88NVdjnU3mx/sFeLd
         IFCOyWXLFC8fKWrxE+YFBP+v6COWoi4a1tIkc/rcjiJdz2yCklTlt34RTnYbv9soSg6m
         EI7g==
X-Gm-Message-State: AOJu0Yz0CRmerd6gVylmf41v8S/6ZJlYaQBD65tvW4bUyPxoZ+oi3v6w
	tTkuyMLrT0LAM0J+doYJxG7rAbI/Kg2/zCHxQFPb2Z4lSg6gx54KeaJ1FQtZ6UeRFEpgvhJrslt
	vxxDaBPvf2TSoNr8HdD3iu2/iHswMLd0=
X-Gm-Gg: AZuq6aKgJbyeeU3XcQV9cQZtT3LJp+O5wUzYXsWCk2StEuLTAFlAvQSSbJSKhDRLCGL
	9li0fCDe+4kKt4zg8ufM6vkiv6SP3AIXHHM8Qjgs6A3USKTe4WI5YTK25BpMmqVRweTmZ6R8QnT
	/3lR2W3OFRrcvXFZRTqTnHdf1LFcRRE4e0HtBE0QBN9ni/HUihRYI+K6Rt2ZxlnjhtLrGcN717U
	kOVJ+Gve+6DrLILkZdg2LT1/m/ye/WtJI4onVkhlMmnoQenI7zXcFBC7PsMEoIFyVdLAMPJdqGn
	kVS79HQ2myQ9wWPDZxPfklWaEoInzXCcPHNYww==
X-Received: by 2002:a05:6512:1595:b0:59e:3041:8a2b with SMTP id
 2adb3069b0e04-59f6d3856e7mr6396638e87.46.1771586301677; Fri, 20 Feb 2026
 03:18:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com> <20260220021353.40554-4-rosenp@gmail.com>
In-Reply-To: <20260220021353.40554-4-rosenp@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 Feb 2026 12:18:10 +0100
X-Gm-Features: AaiRm53BY2p_oyPXpQmuTbk1xnduoYmd-HBAIjHbep9Ukyhp1dBwRalmjaOrg9Q
Message-ID: <CACna6ry+K6q_JY84j7OjRWALsUDU87mpAiikF7cpUGDUUYhZJQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: bcm4709-asus-rt-ac87u: specify switch
To: Rosen Penev <rosenp@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.01 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266919-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zajec5@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 362B6167356
X-Rspamd-Action: no action

pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> bcm-ns.dtsi specifies a default layout that is not correct for the
> RT-AC87U. Also allows setting the WAN MAC address properly.

How the basic ports info from bcm-ns.dtsi is not correct for RT-AC87U?
I don't see you doing any overwriting or /delete-node/. It seems like
a standard NS device with BCM53011 and 8 ports (0, 1, 2, 3, 4, 5, 7,
8), three of them connected to no-SoC Ethernet interfaces.

Except for this unclear commit description, your changes look good, thanks!

--=20
Rafa=C5=82

