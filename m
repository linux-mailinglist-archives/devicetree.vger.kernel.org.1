Return-Path: <devicetree+bounces-275448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGJaEYI/tGlljgAAu9opvQ
	(envelope-from <devicetree+bounces-275448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:46:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B562875E1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 42C5E300138D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177603C9448;
	Fri, 13 Mar 2026 16:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Usds3qWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD88D3C3C1F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420413; cv=none; b=gd4/zGQuA5OF1sQ1frlB/F7vahss5aZ3Ov9N3r+6/tBPqHnUjeGsmmBFtO5Ek0V8zWXogiaBHUgqvZGkMt7pH8rKX8iPs4J/gG1IkuIkv0GiaZTGlEOYUcsDdJ7ljn6KaBkL450HkMRLQD5E/LNTdMK8i3Wn1kVFa/WNYGqgDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420413; c=relaxed/simple;
	bh=F4ZkVUOJAKUck0lnsuXdsP2LuYwnHclKSLue4Bt0/lI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C4LytSXkJJ9H+p+xD42SyOEdk4el7O3ha8PG6h0G7/nx+C8Bea1JJHxB3024l41TiF7eG9YjwdAoD0sh8x1O8feGCmozlUu6NZvu7DY20Kkd7ksbzWYJBXag53hFHrR+mOALBwVVtWVzRJF/PrI/9Qq8n4w4g9hnfvS9MrRXYdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Usds3qWU; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4855dbfc129so2759885e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773420410; x=1774025210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XyVi9ie4kjBemkSiAX2WnD6MGaPKy+GHNmKR/i8NVt4=;
        b=Usds3qWULwxG8dxntwdULKni6vePEzuzRt2F/bIOmib0uvzkC4bvXzoXZpMuYxqx2Z
         +g86W6zIg/9zBYgU1Ujk7NPTwNA9AWFceNdU0r78ETdaX1RGsSoJxy/M+Olyn17jC9Tf
         KYaxOAsS3oKi30tgduFaUguYRV1K/E2yZP5+jMLf/cvAFlQKW78m11DSc6fUj1ZI9+bs
         fqjXhpv4bWkj5NRX9kLRUtt4AeNrRB5g+MqktHx8L04V9REU5edhHo66kfETolZ7XeEC
         yoiI5JT2/QJ4RPaoH6nFBwPRQRHOsGp8wGzdqgtwxu98WBcRR8YEfGngXVodHqQjvrBi
         N//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773420410; x=1774025210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyVi9ie4kjBemkSiAX2WnD6MGaPKy+GHNmKR/i8NVt4=;
        b=f60f9ooafdpo9sOLZhOwh6L1tJmhPfGCjdaC6SyQWRNECsjncg+tbXWBBGJJIsYIx+
         IFfbcjW9/Nmfpv69ELhTEOJ4y+yBjDY6A/6KoVTNRri8iFfuywH0eHebn+eKpb4hj/s9
         hdX2yIgL9julY4YRLlG8O1AkfQiGKy3q6ru1MdRwEEeieROLgVbke/pmQce/sgHlQTVR
         y66QwJek7GIuvvJj35/K/ZBdzzVKQz22sxiv4A7DyE/CIcOTwjXGksH5JTENT0gI+K8Y
         lJG2HdOSPziXcRC98qH5jhHLZb00hAoyJT/53I9K9WnlRAPWk8xYbGEv4fv8VriLF09O
         Wb9Q==
X-Gm-Message-State: AOJu0YyNM9rp8eOMAL7UUBJueCGWBXakADp0DDGwUCA5mWai5A37YX6p
	QeQfXmIDduWoK4v0zV9qqyWd+N/3PVh/1pHnZYVk8KQ4cp3bIFpYCTINNROCmbYL
X-Gm-Gg: ATEYQzyV+Hu4FsdUm6t2S44g6XVKWYD2sI25WG1H3iOrSrDupJFucUZIRUISmZtQUVN
	a3mf/vStrHG66tY1db2znSjZEkNg+yDmHCAzbwAO5cJ4TesyPV8Sg7wMVt5T2u1+Zpjs0aJ8Pap
	mHSFoHznl+MXarwmfX/ilY/pEF4CgI+GaeaDL8Gzq3qP/GHgZvLxTB8iL/7lpuLmmT6QvhtkvD8
	PQ/VhtvkuRcQV74LPptUMU0LmOuR2MC7D0pm5z3wh6rr236mu9SKfOghCxNLFoO66Zjy3rczTAw
	jkftEXW/YOKm8vHubykSyyCGrIvPFsCsYrr+k2f8hASsYToB3lhaA1xicKtt/mVx9xJq25LjzbF
	4+KRn3cKNYvFuDM+jYw6YeB8D43LK8BdsAZuMA0Bld/odGOXfAwt2iMh+P1T2A9JtmfpctlokU/
	EZyaPi+yGrRbo2wanJgdrq2Oi+jf4gYSUQVDXy0ZJDbwQ131LLLMt1jY9DbjFFTHsSs9HPFqpc2
	sJZk19vIu5c4HJirS7xhYwwHHI79xqHrQ8kKJBwimqYFQ==
X-Received: by 2002:a05:600c:a4b:b0:485:3692:e8f7 with SMTP id 5b1f17b1804b1-48556707ddbmr67083435e9.25.1773420409865;
        Fri, 13 Mar 2026 09:46:49 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4855638cebcsm59182635e9.0.2026.03.13.09.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:46:49 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:46:47 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT with variants
Message-ID: <abQ_d9fGarNobYdo@Lord-Beerus.station>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
 <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275448-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
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
X-Rspamd-Queue-Id: 42B562875E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Fabio,

On Fri, Mar 13, 2026 at 01:41:02PM -0300, Fabio Estevam wrote:
> 
> One From line is enough.
> 

Yes, that was a mistake on my side. Something in my workflow ended up
adding the "From:" line twice. I will fix it in the next revision.

> 
>  imx8mm-var-som-wifi-brcm-legacy.dtsi is not included anywhere, right?

Correct. It is not included anywhere at the moment.
The Symphony evaluation board uses the IW61x configuration.
The imx8mm-var-som-wifi-brcm-legacy.dtsi file is kept as a separate include
so that carrier boards using the legacy Broadcom-based SOM revision can
include it if needed.

Best Regards,
Stefano

