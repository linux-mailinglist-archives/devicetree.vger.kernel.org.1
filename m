Return-Path: <devicetree+bounces-13263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EBA7DD28D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 518F2281391
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 16:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33DC1DDC8;
	Tue, 31 Oct 2023 16:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="jAk6krK1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE7E13AE3
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 16:46:56 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F4591A8
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:46:53 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4SKbdQ0pBlz9sv4;
	Tue, 31 Oct 2023 17:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1698770810;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yihRMXS9Xj/0hzDgGosoo7nHHoo+fzWfdjHSJ7McyWg=;
	b=jAk6krK1etp6CL4GPKbxQLQkldqsCwSaSKVB7vqAvz/nGxdbhdt9VC4BFGdFPS1/Kg00xU
	VUurTftgmufw7pt8ly2KqaFFgXmlkmQ3QBOBpGWLFfb3eeL+lOtx5X6NsX/fjpZQzAijHO
	vTDxu7S+BSIa1n1fVkQh7krQ12WGCnFsgXTPtu7+YVmqlMetNDKVXovoeH05WUazpSP366
	pIMGanE9/Hx1GCiVfjwtqUPFD8O1BWRlcwBxcb3jimsp/4LpTkIviUYTpLJKJxEpYFHbLW
	mp2DhqQeK20dGDKd5UaxjbRa51Xcw9GgRWK0eQ4ELljWQTPvDj2bDfDZEk4Qxg==
Date: Tue, 31 Oct 2023 17:46:46 +0100
From: Erhard Furtner <erhard_f@mailbox.org>
To: Rob Herring <robh@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: Re: Several kmemleak reports + "refcount_t: underflow;
 use-after-free" at boot when OF_UNITTEST + OF_OVERLAY is set (Kernel
 v6.6-rc6, PowerMac G5 11,2)
Message-ID: <20231031174646.3d4e1447@yea>
In-Reply-To: <CAL_Jsq+qcc7ERmGAywp=7oGT=XGoBsMO839_jtzxeNcCN-dS_A@mail.gmail.com>
References: <20231018233815.34a0417f@yea>
	<CAL_Jsq+qcc7ERmGAywp=7oGT=XGoBsMO839_jtzxeNcCN-dS_A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MBO-RS-META: rdurhbjwzek9i9igtcoy6nd9d711ztgu
X-MBO-RS-ID: ebe9b306ae8c2338259

On Mon, 30 Oct 2023 11:26:48 -0500
Rob Herring <robh@kernel.org> wrote:

> The test tells you to expect a use-after-free...
> 
> > ---[ end trace <<int>> ]--- ### dt-test ### pass of_unittest_lifecycle():3209
> > ------------[ cut here ]------------
> > refcount_t: underflow; use-after-free.  
> 
> Then you get a use-after-free. Looks like it is working as designed.
> 
> I believe it's the same with kmemleak.
> 
> Note that running DT unittests also taints the kernel. That's because
> they are not meant to be run on a production system.
> 
> Rob

My bad, did not realize this is actually intended behaviour... Sorry for the noise!

Regards,
Erhard

