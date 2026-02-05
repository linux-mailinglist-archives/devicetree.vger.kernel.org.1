Return-Path: <devicetree+bounces-263123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNIBFS/ahGna5wMAu9opvQ
	(envelope-from <devicetree+bounces-263123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:58:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B39F63D5
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FBB030214E8
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412653033C8;
	Thu,  5 Feb 2026 17:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXJh2vDl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7D630146C
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770314259; cv=none; b=KmbnAzhgBEBKBRu4R+vKI+zEX5NngSE2wUXV0Hh0PNbTp5Izcl/+7VusdaMR2U13Yx72Xgrso0RtBLkAJdlRrHL60adLkKx+B976akmtCTIGv7iG7kys15NnexivUNrz+P3vDTeB6aV+j/GESwOfh048CsISQiCaxVCAmjGQ7Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770314259; c=relaxed/simple;
	bh=xG9GlTsOUqrpT1eW0/Cm5JB4EuHVIQb7eAFjTP9/Ne0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZjiCa59unh069hFqZDY/uYZ3pulwpDJLcJejGd1QagB6btaNHur9YGy5Vy0Hwp+hpKbRHYXbgOB64BhLDs3CZL2rqgKsUIxqA88UaACTPs1cTNDmTsErYBNT5Lgn9+K26HhJK92hCqvY6wMj6mI4jN6jOrojd0+ND/sWzfG7y7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXJh2vDl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so12180735e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770314257; x=1770919057; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xG9GlTsOUqrpT1eW0/Cm5JB4EuHVIQb7eAFjTP9/Ne0=;
        b=jXJh2vDlAAerdXTHwIp3BPfZTLZbEIOMFiC586B+hiFE6waKX7J5wOz7/bSaibrHCd
         xI3RYXwWWGoHt5Ats11CdwSj265bwFLtW2hOHTxkxVI7Nrp5iuE+OHFPBiMsPApqF+c+
         QZUh851Xq8kf08eZg4ABW8+Uu2z11RyJCKFgwNpUP5kIvIh3rLHYeQxLUF85FsSRXSbN
         M54OJGwo89drBvGm3K3ZXQej15BwwOmMcBwZuapeXjxJolLKMLtsFWF1ogR6J9wHGxA+
         FYLt4hbwk73HsG82TR7/ikyNlH53BbeYhQaLFZBP63decyvX2hUNiqmxlGIXiUqjjvvs
         27Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770314257; x=1770919057;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xG9GlTsOUqrpT1eW0/Cm5JB4EuHVIQb7eAFjTP9/Ne0=;
        b=E8dUNDHm8eFIjSw4ZM/F3lNk+5PNPpz/yCqfLxEra3t3UYzvZ1iqLQRUgZOd/VAt2C
         XhXvGByLgejkw9TwoDsnvbVo6zt0OCjadA3DYZSnvypAoDGeQACYPS4jS7G4mtUA4ucI
         jjTlCQMyxYbH6bdHWkV7XSik1kkIU0EsE6RNa19EwKjz/QtV2QSDtoFFwKTgIlZHjqKX
         dCTBWfYpXg0tJeqz+CQaTZ2+r2eP1rXMXBcPK4rgzlEv5nFI5uG9UMd5ucuRAAL+AF3J
         qSq7Y7GerB2quhINhhh1WwPRlfuLFJkTiNC5kKoDRVrz2sxMCY9eXWTHdT9FqFjMkqa2
         Hmew==
X-Forwarded-Encrypted: i=1; AJvYcCUskAEG6uFVEYbmcYK2ItwNI/ti1c+uBVwRiYAbj22TwpoIsp6PoX/l7YpWEnPCIwlSMLDEAT0Zklq1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsto1xaMxIPb/1+5Ukh4+3DHTAmHBhnvvhUw6+CtlD83bKmKtQ
	WJgvYCvaetcSSssWZXDZ4iMPOjZ3YmLBRzTkzT/R5FmwrrJY80vqBYKY
X-Gm-Gg: AZuq6aL05KljM8P7GobQlqsGYkjOEczp29futa9jjcUkiwseKCcq3NDIUqhZlye20Lm
	pIeoLrapgx+KsKp3QORb5emMn8zilRdFSBN1JQrlFu4+Thvtxj/GRimRfEGd2RDTkMXRjeaZSjQ
	je50uomvWnx3/FaP7UG65BaNtsdGVNkN8WpClldUKP0S4f2/7MT4eMuNN6wIxqJ9joZbOgl73Mq
	Ud2UEbnJviqYiFa4LwONALr0OvLZ8c9Ojb/XlxEu5ORaz0ao+mPGSSLWjrieYHRZlJvGx1Oj+x2
	EdOOdj+huDwmUQTMIRHv38UqFL6VmfOKi/mj50mckZ8pwtSuB1sOPie7lFg5S7UtHcNnZOKlC1S
	gg7EIbYBbjGsZ0QCMVzG+xVz5EizOUPndkFiaMS6sF+FLvHObi+KhoY2KOThtYnz2DP6W1f+ep/
	5UI32og96zqd86dlFt2XHyPFBtY7Ro3zyRM/wPBAt5sayya5IbC2m/2QWh2i0Na/9Aiwg=
X-Received: by 2002:a05:600c:ad7:b0:47d:52ef:c572 with SMTP id 5b1f17b1804b1-483178e303emr35887875e9.1.1770314256958;
        Thu, 05 Feb 2026 09:57:36 -0800 (PST)
Received: from giga-mm.home (12.89.194.178.dynamic.cust.swisscom.net. [178.194.89.12])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d345c2sm94337185e9.6.2026.02.05.09.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:57:36 -0800 (PST)
Message-ID: <abb8fa81c3fc7caec0b232e204af4bce71a7a667.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Judith Mendez <jm@ti.com>, Francesco Dolcini <francesco@dolcini.it>, 
 Vitor Soares <ivitro@gmail.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>, Vishal Mahaveer	
 <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, Dhruva Gole
 <d-gole@ti.com>,  Sebin Francis <sebin.francis@ti.com>, Kendall Willis
 <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra	 <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
	alexander.sverdlin@siemens.com
Date: Thu, 05 Feb 2026 18:57:28 +0100
In-Reply-To: <fcfcd3fb-2eac-4865-98f3-ef2ae24381bb@ti.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
	 <c47697b4-6ebb-4af9-be96-c964d990835d@ti.com>
	 <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
	 <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
	 <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
	 <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
	 <20260205072439.GA4548@francesco-nb>
	 <fcfcd3fb-2eac-4865-98f3-ef2ae24381bb@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263123-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ti.com,dolcini.it,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0B39F63D5
X-Rspamd-Action: no action

Hi Judith,

On Thu, 2026-02-05 at 11:07 -0600, Judith Mendez wrote:
> > Verdin is now booting fine. The boot failure was related to other U-Boo=
t
> > bugs (as Nishanth mentioned) that are now fixed.
>=20
> Good to know, that isolates the issue to only one board.

not really, as I mentioned, I had observed some issues with one of our
internal development boards, but I can only provide the data after couple o=
f
weeks, after my vacation.

--=20
Alexander Sverdlin.

