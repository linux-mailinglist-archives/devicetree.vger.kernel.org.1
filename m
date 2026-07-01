Return-Path: <devicetree+bounces-318109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H1/bEvKARGrNvwoAu9opvQ
	(envelope-from <devicetree+bounces-318109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:52:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D61C6E950E
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:52:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=G7fkYCtB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318109-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318109-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58006301AF41
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 02:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4D7364EAF;
	Wed,  1 Jul 2026 02:52:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88517361DDC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 02:52:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782874351; cv=none; b=Kbm80AQpqOH+keoPZsavs8YxmW7MO2CCciCOtjrVhPiw5NqAkHJD0qp6IPIHP+l2w0obS65ieWHkCL/wYzZdt00beRGq5MCYOjmYdAtFPdJTAPW0VK/17FY9/HgBx9cNbWI1OMDWF6UdSF2iajKF95ljkuP34H3EhLLaTXhExX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782874351; c=relaxed/simple;
	bh=44fzqAqAQmZd82SGPw6u9V6YlwHz0Bp/+M2HOF6SWEw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pkELf16m9KXap7bzvb37uaS3gAUdIAXk9yrCW32PqSud09vBgMJT7PxiNbkhTLNx3I8zs7mwOpheSgLr8pvxPDwdv8Z0e5WEtvwAzauGzUWsqJTpRluMumiA9k2BO9JlDigbzfW9h4CSdT8EqdSiIWNP9X7KOvzB8705/kCJlaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G7fkYCtB; arc=none smtp.client-ip=209.85.214.169
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2c9b1edf2bdso986055ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 19:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782874350; x=1783479150; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JeV9JaadQ+vcl6bqJUQYCDM0J8gadbyefPmolbV0kvs=;
        b=G7fkYCtBmsyFfbrh4Lf3JgEuZwHnLXrNgrjI9rOFlRAiU72l3bTNytFfL1JkZZSs3l
         mpmU+ErGzHzCVTYkrvWBiCC+SReFyF+WY6VB6RUYML3YWBtI2TwLbVjKGEQRYEtf3ex6
         G9aHM7uZP+WyqOuOlHMxSrMMyNDSUYccYif1QIO/InPMbGVx8xAlH5aAjFzJhKod+uIV
         o7kusXCuth5su7NRATn957eA4hFYRn/jjFGi2zvVxC5pscQZ8AfziKRCd/0Eqw1iePv6
         iHi5WWK0RfeRoq3F4H1IwE6/hehdmzcBpM2c1+IXtyOeHa4bEcNr6foz0Q+mNGlnrQtD
         gm1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782874350; x=1783479150;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JeV9JaadQ+vcl6bqJUQYCDM0J8gadbyefPmolbV0kvs=;
        b=VPOo+eAe6ir/REwY0L8XRS1/cJ1W097fbbMfbpqpMcHIhasOPnPZG5hhb2pI0c+PVQ
         cByKonZcOG77iBzFn57OQXqDh72vLH7Ck2c15GrpwcPip+rVfQKhSpJC6qty1JlV9ZhL
         +jJcXAow9YUmmUJpmybYGTCQylgVp9hncckWYgSBb7y527LFc7sJYLCXdrWwN8nN1zRA
         Uc1mq6jwydQSIPRV/7ZR96igIwzjqPH8U8KwUUEUdKeRy+BCiIw7yHqkg8dYEEAbGiAd
         7fSZ4THmHf73qqqmIzUzX/rPjwGNiuSdKTEVV7BgoWAkMrF9ucDaM7eW4zhwXY6tvLE8
         6C9A==
X-Forwarded-Encrypted: i=1; AFNElJ/08AOfinDa2buDaATJw6xPMHUJvFe/qfcJSh7zQZSb7mJ7PVUCLNUljm9KsyX8EncKkAV4W2PH1vPa@vger.kernel.org
X-Gm-Message-State: AOJu0YzKbgcTVmKGMvAM5MMi0sflu23tNp1v1LhvIbS0QGYcSEfFBOXq
	H45U5o3AzprA5nGMUpoLZ/2TKLDUY/seSk7Pn6OpgRth1p3W4HRjYzNG
X-Gm-Gg: AfdE7cleXdvro4Onq48igRPkWkpax2lgcJBC8pKuQ3qLfQ/RCmJBg+XHKUMuK3siZJl
	7G1ZGYnaxFwpkuzcNPpU8ZBsBxb1gsmNsvGly4xQ9Y6y3xfT2PN/mWXfdEReE0oycnu8VyxQOES
	kqHhyjsjc0pz1Tt+t8QC71dKxxR3P7UYJX68mwLNGGfXe4Vc0sEcAVccuul2Sh7gam3u+8K5Czu
	f4e/AE3tdIZh3VgDl1ivElJBv7ZU0QshBi3FBDtHvB/tvLdtIlyw9SMOvNVF99DXPnPScXAb25P
	BceOejgnW0EYzumj+09RiaG4X0ae7PLVubPbfLw2qKqd9S+wiuoK2ErFBsXhtlgC/BFg1l62gVJ
	xLUQX/XF8/4Gn0XSz/3nAR+wz1XMkmlG7lglpXa65o1Y4iQtKwiGc9UYG30v0IdH1+5RTvJECgl
	90Au4jTtyY4TzKsyzrAbrYouMzBA==
X-Received: by 2002:a17:903:1c1:b0:2c9:97a7:328c with SMTP id d9443c01a7336-2ca2ee8e0d5mr49499495ad.46.1782874349751;
        Tue, 30 Jun 2026 19:52:29 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca382abefdsm24200385ad.59.2026.06.30.19.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 19:52:29 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 30 Jun 2026 19:52:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: dongxuyang@eswincomputing.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, luyulin@eswincomputing.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: hwmon: Add Eswin EIC7700 PVT sensor
Message-ID: <1c055984-0ed3-4cd7-bd70-a333f7a9e353@roeck-us.net>
References: <20260630091040.1407-1-dongxuyang@eswincomputing.com>
 <20260630091122.1462-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630091122.1462-1-dongxuyang@eswincomputing.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318109-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dongxuyang@eswincomputing.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:p.zabel@pengutronix.de,m:ningyu@eswincomputing.com,m:linmin@eswincomputing.com,m:pinkesh.vaghela@einfochips.com,m:luyulin@eswincomputing.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,eswincomputing.com:email,roeck-us.net:mid,roeck-us.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D61C6E950E

On Tue, Jun 30, 2026 at 05:11:22PM +0800, dongxuyang@eswincomputing.com wrote:
> From: Huan He <hehuan1@eswincomputing.com>
> 
> Add device tree binding documentation for ESWIN EIC7700 Voltage and
> Temperature sensor.
> 
> The EIC7700 SoC integrates two PVT instances for monitoring SoC and DDR
> power domains respectively.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> Signed-off-by: Huan He <hehuan1@eswincomputing.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>

Applied.

Thanks,
Guenter

