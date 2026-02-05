Return-Path: <devicetree+bounces-263078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAukHULChGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:16:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5DF5189
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7EB063021D29
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 16:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BE3423143;
	Thu,  5 Feb 2026 16:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OQc1Cji/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFE135DCFE
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 16:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770308076; cv=pass; b=j01IqytGLiHZvfpLvntK/eH6mJq3KPluco4L2Mntw2IUhOpHc6vYoKIftt7orbubrHf6HP2tyHLvFg4RVDIi7TQxur8CrtBP6QLHCUsBbP10GVFThlE1bhx4KR8jhqNbfZJ2yZfFu8LHMXBPI5oYbrN3+E8SBpOeae4obOlz7W0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770308076; c=relaxed/simple;
	bh=G0AtHxYqGgkr9atHYusGCj4EPeFpWCf6+pfxHUVm8uU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GhJeyr6E2gBJIQM6FEnWFPqOb/VWkFqevNmcufpaOV/Dm86ZY+4VbSs8G/Xn74lO0CgRwjX/olmvbbrta9HQ4bI8K7Ok4m72zJiSKg5dhyZrjVFGNgH+FzC/+R3XqFONM/ADPXbZxBndnTbAfHodjlEk1lzsOZk16uIYK58K08E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OQc1Cji/; arc=pass smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43624d7256bso532917f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770308075; cv=none;
        d=google.com; s=arc-20240605;
        b=AbgtwjmwBKPYvnMvXjCNmTc9P+3nQR9KLfKP0lkFoBgv0oTwqiMI3l67eTc9zgiSMb
         A3G/MVxzUJE54Cl3NMYTMNGPJWTsK/95URGF9mOFm3TIlBQ6y33VCFu0bQxJJOJTztmV
         hc423vW/zw2u/gh9CIcyAeau6pJ0qLjEmBcOYYu+zxWbNW+cxpQBWIFKjvJmBE6O3cK5
         mZGXHryDtVseWsfVZsafl1rj7ZNEJ/uZexiRCMUDtzoubJTzjPDFKaoSj38spzPv+coC
         BhdnYoHuD83DChfT5oEmLusWEtl5K6VUXmp6JSTibneEwi4lAYHk/k5jmTplHPX/spIy
         1ycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TT2eQRvfgO/3XBRFae0T/CpdFBfoJ3maco9Ak5Gp/OY=;
        fh=EX4xRquJEnI1JczXOZLt5uQ+dqDAvqUYEvTyE1u0oMM=;
        b=NAlXaN6GkxlMSJfEgeY4gYWDl+RaoXRugkvzZNa18SqHJxEWBxuD+XzHMmmXf6gn8Z
         8m1Jt5y1Ya//sS7GGO2i+EDGHuuYFUhepinTYluvRTX/tfIcWUTppFOZIKTTtMUv5ufP
         spsBQ1A3csNgrykUx3d6k8JNxNEslCQStO07r4WONr6LDckxZXB4JV9uqbFDRoVjrjbK
         085N/P4xyvMxtpUkTgcWWy7S4fbMhFoMN1q47ROHvE2IH8//Dbqvkwb8D/5V+jIiubmM
         5GDIX9+++tqeDlFa9k5Xh91wjhOYQXyPfbVRpShY7HdIIhW4ATF1egaBam9LKcybpf1k
         CO5Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770308075; x=1770912875; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TT2eQRvfgO/3XBRFae0T/CpdFBfoJ3maco9Ak5Gp/OY=;
        b=OQc1Cji/1a/tV/U/QtrGQovLBYg065Sg8myWDiT4WWGo6KZ0nfn5s0xJNdISnk3TEU
         BkSmc0kpP6WUjMWlPgtFnUWowAZFnaF59SBfKsYGCw9QW65fY3AV9nPg/oLaSWtOh98i
         CHBbcG3/+MoIUQcRjNIwmVDTSj5l+G124MbQIC6c4WP4Ici0dM7c8nUODtgeMYEQTv3W
         4nXUCAmdeEuYg26wvXg+oNQ7YSaKDbxGPpZ3tzHoXY1aF8RdpXjC5uZFOMCa469Omndc
         64FxZ6+xDXkdePCg1Xk+iAQxK0dFyvWKBmYQxvGgQaVLuJpSWcY/WTykF0kzBH2bQ+Gf
         o02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770308075; x=1770912875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TT2eQRvfgO/3XBRFae0T/CpdFBfoJ3maco9Ak5Gp/OY=;
        b=U60t28xKkuQSokM0oJwl/U4YmrRL9UegOcRGN9/7rZ19w/6SfT0p1qnpGYa7KvC6li
         jwhw9zPT4ZPAPYk7biVIZEkbh9wcnIlxdLR2/4rFxVdaH9OKV+YMgxfk/wAVecRaHVI7
         9AOld6unU1eZhBhQBaFHMXC8T9z1yDFAOnzS+H5AwTqRsnOuAAhHd3laWIwKYuE50RjK
         N9v/MDen1HCgBnh2AA6uzQHEGJjHHm3wtEIAeeKk+iSH+ZMN52+MoMclfICnZNUdeITH
         X6iqIT6ofLgd3BDib7FqijDMiBexh70ERX9l11xArDqnUq0EqmdeCSRaS6bT7h45jhOl
         AjWg==
X-Forwarded-Encrypted: i=1; AJvYcCXgFWkfRynuC7ruvI6E505pI3Ipo3loQVDAfKU4V2wouaGYDs4WbtYd4DEKJ2F6rn2dnPczUf2oIvhQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+8Tusn+JFNQzyTG7gnR3BA6XmsiJPKGE5qwb0nGzA2hOYCVvE
	Yq69Pg11A07uqsu5xCTHAXo8LB4NelsftRj5JJZLEAGtVtFfKlWa4N/V60H1FeVbk7E9lPYKhfB
	IO4saX4c0IArztfAj+hrMu6vVh1mUDDw=
X-Gm-Gg: AZuq6aJ7ulJxVcj5HQ69bSHFDikYQmTn1pRlGnDHZd0NNDrOxqtZbIszTEbLR4akgAV
	vZrvr0TpUAxfjM0fpNNto34GmmnUg2qml8e35SKk4/mOnWBJ4YYxTziqZwLbWxZYhoRUoIXMaUo
	16o1Je2dEHgz0tYhWRkuqk8UlJ5qI+Vbkt23hfaiQt9lO2VRFIIPwQbtlgEjDv7fBFk5hjv+u7x
	QVyG111B72PTxud0icApT0k2lrtLmSPxh5N1+gohDSGlSc9kOHEk5RbIQoSfgatq03+AKDE
X-Received: by 2002:a05:6000:4008:b0:435:e436:7fb with SMTP id
 ffacd0b85a97d-43618059612mr11097375f8f.50.1770308074748; Thu, 05 Feb 2026
 08:14:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129022910.3942028-1-onlywig@gmail.com> <20260129022910.3942028-2-onlywig@gmail.com>
 <aXsdyzZEUaVzC34W@shlinux89>
In-Reply-To: <aXsdyzZEUaVzC34W@shlinux89>
From: Wig Cheng <onlywig@gmail.com>
Date: Fri, 6 Feb 2026 00:14:21 +0800
X-Gm-Features: AZwV_QhAb-x2AIC9FZ_A0KiIYxUwdfCa-Lm4hiLKANWs8oWf_rB0v7ryvoRkqvg
Message-ID: <CAPStFe7ASmYxJdDorJ0KAerfTH51ioZ=89F8fRcs6fBVqqhdUw@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: dts: freescale: add pixpaper display
 overlay for i.MX93 FRDM
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263078-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: E1F5DF5189
X-Rspamd-Action: no action

>
> On Thu, Jan 29, 2026 at 10:29:10AM +0800, Wig Cheng wrote:
> >Add device tree overlay to support the MayQueen PixPaper e-paper display
> >on the NXP i.MX93 FRDM board. The display is connected via LPSPI3
> >interface and uses GPIO pins for reset, busy and DC control.
> >
> >The overlay configures:
> >    - LPSPI3 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
> >    - PixPaper display device with proper GPIO assignments
> >    - SPI frequency set to 5MHz for stable operation
> >
> >Enable Open-EP Community pixpaper-213-c support on NXP i.MX93.
> >
> >Signed-off-by: Wig Cheng <onlywig@gmail.com>
>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Hi reviewers,

Thanks to Peng for the review.

Just a gentle ping on this patch.
Please let me know if any further reviews or changes are needed.

Thanks,
Wig

