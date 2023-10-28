Return-Path: <devicetree+bounces-12593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8E27DA688
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 12:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 151BD282053
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 10:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE4B6126;
	Sat, 28 Oct 2023 10:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.b="VQAjXRm+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973B94422
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 10:40:18 +0000 (UTC)
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCA6A126;
	Sat, 28 Oct 2023 03:40:12 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 3DB291C007C; Sat, 28 Oct 2023 12:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1698489611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PSth4Mdhtx4iGpZmumOOpeS2KofR5ROVqUGGwL8j3rs=;
	b=VQAjXRm+ivsQlkb0qwiEdNlYeo1hguL8j1ZPUEr5hECd5OdSTeMHxVx4cKexVWfyU/HfB2
	bSUm9jZRMyeybPwY2NCLaME1lHhzg0uvKrkiAqZTayOpXK7zMDuQQ6V6OcCtRR7Q3K83Xc
	/Hu5955njfX7rwy/xju5+FgJlnz7IRM=
Date: Sat, 28 Oct 2023 12:40:10 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Vincent Huang <vincent.huang@tw.synaptics.com>,
	methanal <baclofen@tuta.io>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/7] Input: synaptics-rmi4 - f12: use hardcoded values
 for aftermarket touch ICs
Message-ID: <ZTzlChOS0OR95Ykp@localhost>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
 <20230929-caleb-rmi4-quirks-v1-3-cc3c703f022d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-3-cc3c703f022d@linaro.org>

Hi!

> Some replacement displays include third-party touch ICs which are
> devoid of register descriptors. Create a fake data register descriptor
> for such ICs and provide hardcoded default values.
> 
> It isn't possible to reliably determine if the touch IC is original or
> not, so these fallback values are offered as an alternative to the error
> path when register descriptors aren't available.
> 
> Signed-off-by: methanal <baclofen@tuta.io>

I guess we should have full/real name here.

Best regards,
							Pavel
							
-- 

