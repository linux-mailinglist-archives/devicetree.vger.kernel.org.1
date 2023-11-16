Return-Path: <devicetree+bounces-16417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 308E47EE8E9
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 22:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 343C4B20A4F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F53031A60;
	Thu, 16 Nov 2023 21:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=permerror (0-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="T1s5p2df";
	dkim=pass (2048-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="eH1lZxn8"
X-Original-To: devicetree@vger.kernel.org
Received: from gagc1.tesaguri.club (gagc1.tesaguri.club [172.93.166.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94DA1182
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 13:46:48 -0800 (PST)
Date: Thu, 16 Nov 2023 21:46:36 +0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=ed25519; t=1700171207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yjP9sDU5f5/dZ8io+kkN4OYnTkS467HtkWGM5NHNPuo=;
	b=T1s5p2dfhyLKUSoa7dnFj1RXp5QCjxZeeo2tg5iy2B/3yGF1cYoKB4Ez8xBkdF2ELxMTAh
	1cmW3HiIOSWZ8dDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=rsa; t=1700171207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yjP9sDU5f5/dZ8io+kkN4OYnTkS467HtkWGM5NHNPuo=;
	b=eH1lZxn83nAk16KbWgEheHaOrJhoQXv2Pckq+V58lcw2XMizrzARqLNJfxNSSOWKq+E0Gd
	ibyNZpdf75QDC9JdyBdbSHkJ0G1gwU0IW9egwRDETlRBghX/0qQRPUl/h3mdAudzHQ63tk
	3oYYx7e/5kat7GwMOU6WMpEa8i299bEBW0KZASor8exIVbM7elo+Z6esy0qwUMk3PGUod4
	aVvV0ngJFrrP4HHMzp8I12BAZ9Ap6nnrUv5G/FW+x44Z7OIHL/ePsMEHL30dNsXQ5SMX9/
	sODS+HTidF9XL4Q4GWj1HEWqxVPo3J5vDD3KEO8p5lTTmHO8obSNGB1UpyOpPw==
From: shironeko <shironeko@tesaguri.club>
To: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add missing tx/rx-fifo-depth
In-Reply-To: <10369814.nUPlyArG6x@phil>
References: <20231115210417.144134-1-shironeko@tesaguri.club> <10369814.nUPlyArG6x@phil>
Message-ID: <657C64A8-12AE-4CAC-8525-5DC3B29FA99A@tesaguri.club>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

>just if you need to resend, the patch subject could please
>mention both the gmac and rk3328 :-)

will do

>hmm, what about the other gmac-interface (gmac2phy)=2E
>Does the TRM provide depth information for that too?

the manual doesn't say it's specific to gmac2io, I just don't have a board=
 to test gmac2phy=2E Will include it in v2

shironeko

