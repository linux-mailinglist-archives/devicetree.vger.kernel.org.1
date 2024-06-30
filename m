Return-Path: <devicetree+bounces-81680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D592591D07D
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 10:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84CD4281BFA
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 08:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BE63D388;
	Sun, 30 Jun 2024 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="hBAAlkwj";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hCjwWtkc"
X-Original-To: devicetree@vger.kernel.org
Received: from fout8-smtp.messagingengine.com (fout8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E0E39FD8
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 08:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719735409; cv=none; b=rz9oFDy2OD8TYflIXJyn2+lK3pSL9RebWyu/GNBMNrTlyNmhUsGHWX2mv3eCXDIm2LciF3g+xFINapaEBDEQCbJ36mrtXmdLCdNpGIHWyK3TipcVYU38dkF/DF0r4qvhEfrxh3p4Pwp5jAmaDau2WHb+1B5w3HDUNenHNSnvG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719735409; c=relaxed/simple;
	bh=3rks19BU69J660UUpP8UicwKVhl2DNmUnOUPCS2SooQ=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=q6e+UFqC+brQoxzI0Q2MPpdWIvZXPCb5t/LNwPUv2xqrTu2OlzhOfZzHv40pww27ro/Cif+w21ohbReRiXAhfGJfpjHn/krHZQqprqDxD3eKqSSFrmNjH+H1o3dXMf6ZgfO5ZpK1J81/BCHIMF/jUAnRtI+hNSrh/H3xY0Hu42A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=hBAAlkwj; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=hCjwWtkc; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id B1027138029E;
	Sun, 30 Jun 2024 04:16:46 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Sun, 30 Jun 2024 04:16:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1719735406; x=
	1719821806; bh=Zj5cTqAbQXZZPzHkl1b0qvz5sB+DToZiKbYJ/h2vOHg=; b=h
	BAAlkwj14rJH+n2JlouQI1BNdEO0QNgS4rXrvz7Rx13BF6DWmndtuk5mtmQU7ULP
	kkmmbWNqidlDVuUpczeLNEy0bQSytOjIwNNyi6quU6+byXX8MVEFmjMybRwlu9Jg
	yCN/cvL2EiHK/qB5Ui/5Hi9chOGxGoziD9Jae3QESqHlk//Q3gqSzd1CO0YUk/Jl
	5V4AB6rZv9cXT+lqIN3FQ1l+rGhbfEj9Fax0ZIJCnTSYFu37MU98r/mynkHecUg/
	W7IR+JaZoVA+qMwege1B+ejSBOoK40y2CLFqn83lFdcAxnjhFPhd7X0Qw9t/HVrT
	bnOuuZ+XrHS2JsalyxsMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719735406; x=1719821806; bh=Zj5cTqAbQXZZPzHkl1b0qvz5sB+D
	ToZiKbYJ/h2vOHg=; b=hCjwWtkcYSmYkKwNxdU+KnA5EkV84adgDT+1IJp/YswI
	OQd1gjIUBfQLI/bA3fhj9p6GYKnAjrC7UchhDZUbcGTNT3Mu9NvIaHXmXr6+N3tU
	zTcU25+ViKCpwOYe6DBOfKJH7IsPcxZ1HzNzRHS/Dsx002fUiwEBKfAMMzKrmbC3
	9PO/DVlMMpJmmvceQH0hXJLbSDa9rV9DcmtZC7+FkkNpNtPHsrWZjhEYBFjEHLvr
	nX/ehpwOZx5Drk6BO0sVanFOtNKC/Mg6sVJeurqVQvfLNSZy+CWUxw6/3WHj6ZKR
	Hkye0L1vcn66NE1HWHXAcNfAFAXOlnEuwoPQjM474g==
X-ME-Sender: <xms:bRSBZghvsU3kQPPizHirhYDTw-P7s-K1_Y57jJv7w8g0IXxnrciybQ>
    <xme:bRSBZpCSoxETrIuZk3w0HweNxBisfP_3DM2splNM25XuUIrwolfkgDAoGHRh4Ak_P
    Ihqb-VvvJeLr6UA-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugddtudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfthigr
    nhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtf
    frrghtthgvrhhnpeehvdevieegudejueefgeffhefhffevudfhieejgfdtffetlefgteeu
    veeiudeijeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:bRSBZoEfc2xQutyxfMMvbnOaJE-1JRhNfyynYkvNTpjvf4nLsYlcJA>
    <xmx:bRSBZhS8IcnyTpDdRxbLAu2Jga-wG9dn5_ChXqG6Z_nQ-YKZZQM3VQ>
    <xmx:bRSBZtzQCukG2pYCJMp8PtxHkDeq86m-psvjlUCwbMmX6POXiYvzHg>
    <xmx:bRSBZv4x98S6jnupxGZhunlY1A8KEFNQgWqS4EmqYh9h1VWfyPVfrw>
    <xmx:bhSBZlC6K_fSil5Y6Ub-5GdwA5ytPTvpm1F5MmxFQoUS63I1BRBM4Sqn>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A81D2A60078; Sun, 30 Jun 2024 04:16:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-538-g1508afaa2-fm-20240616.001-g1508afaa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com>
In-Reply-To: <20240627-muskox-of-nonconcrete-art-e4bcfd@houat>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
 <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
 <20240626-loyal-squirrel-of-charisma-4e784f@houat>
 <20240626-procreate-goldmine-800179f909e9@spud>
 <20240627-muskox-of-nonconcrete-art-e4bcfd@houat>
Date: Sun, 30 Jun 2024 20:16:24 +1200
From: "Ryan Walklin" <ryan@testtoast.com>
To: "Maxime Ripard" <mripard@kernel.org>, "Conor Dooley" <conor@kernel.org>
Cc: "Neil Armstrong" <neil.armstrong@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 "Jessica Zhang" <quic_jesszhan@quicinc.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>,
 "Daniel Vetter" <daniel@ffwll.ch>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Hironori KIKUCHI" <kikuchan98@gmail.com>,
 "Chris Morgan" <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8 panel
Content-Type: text/plain

On Fri, 28 Jun 2024, at 5:59 AM, Maxime Ripard wrote:
> On Wed, Jun 26, 2024 at 04:34:11PM GMT, Conor Dooley wrote:
>> On Wed, Jun 26, 2024 at 05:04:19PM +0200, Maxime Ripard wrote:
>> > On Wed, Jun 26, 2024 at 02:25:54PM GMT, Neil Armstrong wrote:
>> > > Can it be more specific ? because there's a lot of rg35xx defined in bindings:
>> > >  anbernic,rg351m
>> > >  anbernic,rg351v
>> > >  anbernic,rg353p
>> > >  anbernic,rg353ps
>> > >  anbernic,rg353v
>> > >  anbernic,rg353vs
>> > >  anbernic,rg35xx-2024
>> > >  anbernic,rg35xx-plus
>> > >  anbernic,rg35xx-h

Just to note only the three rg35xx-* devices use this particular panel.

>> > 
>> > Yeah, if we have an identified model name, we should probably use that,
>> > with a comment that we couldn't figure out what the vendor was and thus
>> > went for anbernic.
>> 
>> What's wrong with using the wl name that already exists as the model?
>> Using rg<whatever>-panel is total invention on our part, especially
>> seeing as the commit message says that multiple models can use it.
>
> Yeah, that makes sense, sorry for the noise
>
Thanks both for the further feedback, agreed logical to use the device vendor and panel serial number, ie "anbernic,wl-355608-a8". Will post a V2 with a comment to that effect.

Regards,

Ryan

