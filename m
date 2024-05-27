Return-Path: <devicetree+bounces-69665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C91CC8D1038
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 00:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 060811C219FB
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 22:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B73E167D93;
	Mon, 27 May 2024 22:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="D4dZKY/m";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="GP+hsWTR"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh6-smtp.messagingengine.com (fhigh6-smtp.messagingengine.com [103.168.172.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E121667E4
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 22:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716848636; cv=none; b=NoxLFlMNqrh04U+5e8WBzbgAvKNbq38SJyslgTR+d78Z71JRsN4xd+LK5GSyPO+RCe2SCG1/uGlYJMwa932YoHB3d1Aw4O+OznMAZIeRjF6EIb/C+embMuGlgK9H4B0ayY4/jrxxTAkvYlNxcbA32i2x6OY5isvnBOU2+Azt2yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716848636; c=relaxed/simple;
	bh=DUOZu0UGShFWgVguBazhgGtegaOl661c55YH05FpAYg=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=LSKPdb9M3kDurRFdwfEcxZfYpqBiwVF8FFqn5Nr9EtsWlO6/mgiLuo0m5bdnK5tYcwU+pa6FTNzKh79+bUp88PXnwBfEF3T8uzkRqOmpcxzpJ4NXnMr/Fd4XyUz+FWnaCB3ba2wmoWLY92zgZ6Fw2M5bcKFBfZaei7nb6HFGlHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=D4dZKY/m; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=GP+hsWTR; arc=none smtp.client-ip=103.168.172.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id F147E11400A9;
	Mon, 27 May 2024 18:23:49 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Mon, 27 May 2024 18:23:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1716848629; x=
	1716935029; bh=DUOZu0UGShFWgVguBazhgGtegaOl661c55YH05FpAYg=; b=D
	4dZKY/mgNFKJfIRxfFQinE9P3nz06VoiPzDKoXxO8DMF05HvJiQ+niDWeJljfB4O
	BMlAAAycO7wympnvw64FqiWlh2Hf0X1mA8zNASl2h7a5pTLiX2Bj+s+Mv6HDXJ5l
	pLzJIU0ButvP5EmQcyiSDUl+9CGXnL/Crw2GYfw8wgZTqzoUm/3BjqB89elVBHLy
	j+IcXq5R9lEjhUsLNhN0I4yxG2vtNMjrsJmiMRMSFV0ZGMKBQVCmkA3X3mksbPX5
	GfPW2OkrQbSYsQrOtTcowAVn8Nebiwd6FYuFirj1jLMN3CbzkQI2CkhVRWXvJxFr
	E1nRLGzt1v6T9/N6T4Obg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1716848629; x=1716935029; bh=DUOZu0UGShFWgVguBazhgGtegaOl
	661c55YH05FpAYg=; b=GP+hsWTRGAaIq7GJiUukQhbqq09NcqJj94aIgbj9G5Ck
	LwehYnFf7/19YP00lYgogotw6hX80NqVecQYzvL4so/db6fbj70zWCrkme/5ohmF
	lU1C1UWHTdVX3Xl5xSqHuAIJVCOD6SW95exsl95ZmtPJIE0QoqyzCXiY9X7lDm6H
	C0VUjcNLThcydTCVM26CVDRWe/wUMzG2nqQRq+lmYleXX6nks8KO1GNcEJoyHtN9
	jsuqePAPYbyxK7iQhK4028IFU04Sph1upI+uLIrPkdNqRe391OYvm1X9H2BWzOl/
	eNqSatLzOkAldg3/1IBfW+UT0zhZZfrxEtMsFKeXow==
X-ME-Sender: <xms:9QdVZk0Xz23OXcvK2q9SBV3m3_-IkAIbrJe7NFquCzR1zbtXHVzq2g>
    <xme:9QdVZvE1Dlk734YUssSGCDLa4jFXCHjMdSMMdKTUFg9uRvWEgXrmGmPFLm6E-Ml6C
    ZVL1DRaiuonaWY5Fw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdejhedgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftfih
    rghnucghrghlkhhlihhnfdcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecugg
    ftrfgrthhtvghrnhephedvveeigedujeeufeegffehhfffveduhfeijefgtdffteelgfet
    ueevieduieejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheprhihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:9QdVZs7VD1-_HP9QOlhUq7zlqJ2lSusWMWV6FZLuf7pxaYKM2KM4pQ>
    <xmx:9QdVZt2IoLaqmQ_rMIkroY_yuhJF4SOJyxeGMqzZ4n_QOn7bWKxUig>
    <xmx:9QdVZnGYUAsP_mXTpPQHIf7lh5Ap-pcvZI6a8ctXbwHWCXqE3Jomag>
    <xmx:9QdVZm8KWUH0ZvBnxhhsvQKTqpmvZIjbEQDAnqyLBr9-1_3cbnkAPQ>
    <xmx:9QdVZhGrzb_2L-bER7VXJJPu-KTwZuLp-rx0YQ3OkatrbnPFzq3qhVYc>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 62940A60078; Mon, 27 May 2024 18:23:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-491-g033e30d24-fm-20240520.001-g033e30d2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <6ae18669-7ca9-4e5d-82a5-4821a2ec4236@app.fastmail.com>
In-Reply-To: <ZlUGWSdbvZqQirrt@titan>
References: <20240524103506.187277-1-ryan@testtoast.com>
 <20240524103506.187277-3-ryan@testtoast.com> <ZlUGWSdbvZqQirrt@titan>
Date: Tue, 28 May 2024 10:23:28 +1200
From: "Ryan Walklin" <ryan@testtoast.com>
To: "John Watts" <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Jessica Zhang" <quic_jesszhan@quicinc.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>,
 "Daniel Vetter" <daniel@ffwll.ch>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
 "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Hironori KIKUCHI" <kikuchan98@gmail.com>,
 "Chris Morgan" <macroalpha82@gmail.com>
Subject: Re: [PATCH 2/2] drm: panel: nv3052c: Add WL-355608-A8 panel
Content-Type: text/plain

On Tue, 28 May 2024, at 10:16 AM, John Watts wrote:

> This all looks good to me, though I understand you may need to change the
> compatible. Please CC me if this happens so I can re-review.

I think the consensus is to accept an absent vendor-prefix rather than use the device manufacturer, so I will submit a v2 with the documentation changes presently.

> Reviewed-by: John Watts <contact@jookia.org>

Thanks!

Regards,

Ryan

