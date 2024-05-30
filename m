Return-Path: <devicetree+bounces-70987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D125A8D5428
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 706841F24743
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A6556F30B;
	Thu, 30 May 2024 21:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="x03j2JuE";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="nOW58Ffh"
X-Original-To: devicetree@vger.kernel.org
Received: from fout3-smtp.messagingengine.com (fout3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E5A6F303
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717103167; cv=none; b=h9P4Yrk4fohMCsiYud+71vLTmGlZbVCFZKpYNnPpsB3IFmKjH083H9Saaoi9fky4fU5iyx5u4+1Z0o3tLQeGfxq47QI8IzTZNn/HxLqehvgoQJnEyi7bB5BeaMS+lKg825KPRD4oA87P2IvFoohbQEgsNe4qdlWenLrAVxig9PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717103167; c=relaxed/simple;
	bh=RD1YMacDAqVnpj3n4EZ4LCUv4OPDhVOHY5gNGfpkSw8=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=Gv4vd8Nkg9pCn3JoiBO17oKrAeCgmCkkK2CxibzMTyIiu7majsQ1Hv6swjbSGSoMhLkUMawvY2sS9Rv2X6iuaUFHnja7/ubPNZim336AASJTn+p4PsnfvP8Ler9B7gq/sjAQzn4dU1YiLPtRQF3fudb94wM0GqNZnTXb7Y9gstk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=x03j2JuE; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=nOW58Ffh; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id C6416138012B;
	Thu, 30 May 2024 17:06:00 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Thu, 30 May 2024 17:06:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1717103160; x=
	1717189560; bh=cdEZZtyEVNawpjLdktDowv4ZgJhZACCtSCiNIQbi1uI=; b=x
	03j2JuExSsk0Pu7QgfUIZVcZxk6TDiS9mZOkDfiMXlAoFpkABpQxGSbGY+UJZjZQ
	F5oF92n84Rb3RdQfh07Qm5J2RTftkxQOIO9Eac9Y/WVA1dBhM2VxbvGkkoSiKd2H
	yMlpiZ2uA4ypR7e4TMsjJ/1UyQ7faFwZUakfvHddA15LnW1MTU/ZnfvgGpLM6yQa
	Tcm1WIyblpFOX7vUa+oT2wA4sLOdsXGYjkuwukdg4n/tk3KEShgW9hFb0ow+rqmS
	3JHaQ6hbWfqp4IOSbz7d4zUXLerYDZFXTpMNN7yB2R8xQ+q/8HFIoTmZMTWBwiSH
	rxZSxGeq0f4oYjxwPbHJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1717103160; x=1717189560; bh=cdEZZtyEVNawpjLdktDowv4ZgJhZ
	ACCtSCiNIQbi1uI=; b=nOW58Ffht0TQbxboOr3+gpiZCmmC5MGyOjg3pG8jfkDc
	aygU9shAll7i75Rjd5moxO52bfQuwweZIq2YiBeZY9vN+VwUT3SH3ydbFyA95ZiR
	DLAyljsn4boKrrr1a+CsKqFCHexPlnNj8AVviFf40mMj2wlgYlKEwsSBcTZIKQj2
	iQag+WH/GJ9nsCO64Qo4knAYaGqHu19+XnnQKqZmEO1KC6mCe04qtjRD1H0XGtoe
	N/k0TLJxaAJVkSeR+X0N7BiuDqwZ7KV3aTGyGywWMSp1QassB2zBrM+gtNXMUKHy
	67YKe8loqeTY+VXbeV1ADVZKet9h1Tby50sU2txSpw==
X-ME-Sender: <xms:OOpYZnYkcWxjYWn1RY6XgXa87YWg8b_H6W6fDdL_2Hpd2PSGL0Oqpw>
    <xme:OOpYZmamrAsgNg5WN9VIQYUCFHcY2wxBBUPmUkArcgbGbEM7wTkSzIxgS7xIpDF1n
    TBCzLoObDhk3VQX9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekgedgudehgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdft
    higrnhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehvdevieegudejueefgeffhefhffevudfhieejgfdtffetlefg
    teeuveeiudeijeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:OOpYZp_VaufiQdDsemuIzs6nzCJVWhwdgBiccNe8C9l9tKTTE2fD_Q>
    <xmx:OOpYZto64Zm9P8Qx4PeyNFATw4Kdv1_zX_6P8-flEhu6HcepyZfV0g>
    <xmx:OOpYZiqvAWnSMrg-guSJIt7MwcxgyHk8ZXB_TQje2sEMKFMJfYjXUg>
    <xmx:OOpYZjTttaBhjIPlrD2lc1PgtUOlYmKDUy5kf-ng6y9WXdsDIwfzPw>
    <xmx:OOpYZl_oKufJYXzK-Dp2dAEp09dvaL9ZBdYrpkELfunho_isEMHnV4UP>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E76F1A60078; Thu, 30 May 2024 17:05:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-491-g033e30d24-fm-20240520.001-g033e30d2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <7a7fac3f-47a0-4911-902d-1ea7a8520fe2@app.fastmail.com>
In-Reply-To: <20240530-kinship-lucid-71610ff9cd93@spud>
References: <20240530082318.40516-1-ryan@testtoast.com>
 <20240530082318.40516-3-ryan@testtoast.com>
 <20240530-kinship-lucid-71610ff9cd93@spud>
Date: Fri, 31 May 2024 09:05:38 +1200
From: "Ryan Walklin" <ryan@testtoast.com>
To: "Conor Dooley" <conor@kernel.org>
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
 "Chris Morgan" <macroalpha82@gmail.com>,
 "Andre Przywara" <andre.przywara@arm.com>, "John Watts" <contact@jookia.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Content-Type: text/plain

On Fri, 31 May 2024, at 4:03 AM, Conor Dooley wrote:
> You accidentally added a tab here:
>             	endpoint {

Apologies, will fix along with the other redundant label for v3. Thanks for the review!

Ryan

