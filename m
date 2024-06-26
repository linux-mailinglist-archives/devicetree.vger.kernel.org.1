Return-Path: <devicetree+bounces-80164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF102917F12
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A42D21F21ACB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FAF017C7AD;
	Wed, 26 Jun 2024 11:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="y+hbQi6f";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="bTj1t/Rl"
X-Original-To: devicetree@vger.kernel.org
Received: from fout7-smtp.messagingengine.com (fout7-smtp.messagingengine.com [103.168.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D2C178CEA
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719399679; cv=none; b=qtAAw5iizV8P0X7mey589auz/EKS5suFZiPe86RinCy830QJFt8EinDZlpFXPCbrEFJ8LgkXoln/HdaSy4fFlgoyLrVD00VdEZ37NgdxQpaG2mNlTMWE0HwNAEU4kKkuEJo/2mxXEo0SvOcpovHSOVvX25uIIumSGd4zbZYzk/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719399679; c=relaxed/simple;
	bh=tHQZv3LwOlOQfPEOkudQ4Xb8DXXM6jz+6vSjfUu24is=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=DG2Y8yAL2q4oCMYW3/sPR6sdOHNZ0tUhh4FE86Yt//jCetmIyZRQ2eR1HPwFXC/Zg75quERSTmdFYhoh4tbsmOby4ywBEN4Gjfe676hOe2EwPqgFt0L5wL40bL3FRdFGtzU4oQHp6ylDxlNwyLVVSIKNuD7X8P1TV3qeStMTL4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=y+hbQi6f; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=bTj1t/Rl; arc=none smtp.client-ip=103.168.172.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id C36871380616;
	Wed, 26 Jun 2024 07:01:16 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Wed, 26 Jun 2024 07:01:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1719399676; x=
	1719486076; bh=7LLzzLKumALaPFP/IGgEr7VN/xdA8f8Ws+em32VpKG0=; b=y
	+hbQi6fy20SLHZLMqmFxy02tmoERLXEwCsNehwfEA4r7UpBzqp0jDn3mARwYsFoF
	XB6jGt0g1O0Q9CGTdYLIl5b6nsn35V9DFZ/JG/pFjNmOE9PAItdTn45kBTawWR38
	t/LRN47/xSlRzscP5rkt02KYhuO0AWBAPLWXQ90k1xvE+VQQ/qCDI8gZIPQf2w16
	yOZvYTSbyRZObUsKitQSUJ1WK6pW5tYIH7ABnDMgNCautf++dGMHeaAMOGFFR14L
	rKZ7lbFagaWf0hRdeNMaR+7iIof29B6lpbl+cm2htRVVwOyyNmxduUO2pJW4jxpv
	1y48vMEYocxslHCI0vFCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719399676; x=1719486076; bh=7LLzzLKumALaPFP/IGgEr7VN/xdA
	8f8Ws+em32VpKG0=; b=bTj1t/RlO6BrH5+pHDkSk4EVacpvGe15LaWuovt//DnH
	JXVy+KtF0Yo6DpxYGgyBgaQVFlEaameJ3FLD0HJhlhRilIkgcSEF8xQIPnKTLSVx
	t34iDPj3+ftIWqsx0GTbsFoZxxZXlnJbZo4YkzwHGa1teyungXH4spih4etnPgyp
	X3zw7jeWbKeGbcRrwCl3FcNoFqI72zdM6Ndx72QOUUtd7QvvLldNxTUvuPePLybe
	7DLVzhohMO4h5VEATyND2zo7aOygux7SenC8k3NKBnCMP0GnyGn/+ffTyrKjpRA5
	j7OhlZsMylNwlC7q1/Z5y2gaDhey6znMT48uyyUePA==
X-ME-Sender: <xms:-_R7ZpXsNBq6g0bVBgnU4dlNz7QWTy9KEQQ4jPeS5QbovCVpdwLDdA>
    <xme:-_R7Zpm1aEwZzHPuRhb2NaMOOBUISA4zwlQL60ZfVB4CTFqGYPtQ-QDwf_JhIPq6Y
    RWmIs0VNtoqVL1oKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrtddvgdefhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfthigr
    nhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtf
    frrghtthgvrhhnpeejvddugeeijeehtedujeekffeiieeghfevieetkeejkefgveekvdei
    tdetvdetudenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshht
    rdgtohhm
X-ME-Proxy: <xmx:-_R7ZlYgKapHe2zoCY-7vhmsA1yhxlQW2bw3ZPk0MmxIFQOJDwKl8w>
    <xmx:-_R7ZsV0uw7PYzicxOibg0yGUFG0quaGkibUyPNUhKPCEem3jv8OBQ>
    <xmx:-_R7Zjl6mWgMOj0zjX1vHXupoaNCdAEzv4KddXI5ACQ9X4OhyViozw>
    <xmx:-_R7ZpfcmgiGRUvRth2J1x-yKsUDHYoQ9xAcKPt-d8RkGT4b6Fxd9g>
    <xmx:_PR7Zmr9a66z9LYgEz8mvfS3TebovftlffJVmSj5vQdeEb8Ar0LwiaN->
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 7B2A4A6007A; Wed, 26 Jun 2024 07:01:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-538-g1508afaa2-fm-20240616.001-g1508afaa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <e1f21076-4562-42db-a621-e81ab309a52e@app.fastmail.com>
In-Reply-To: <0c03b9ff-a1e7-495e-a294-198d9a6878ca@linaro.org>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
 <20240606-authentic-mongoose-9485904a91a1@spud>
 <20240618-silky-holistic-oyster-bf59fe@houat>
 <20240618-reverse-kinship-7f8df8c8e111@wendy>
 <eb50b8d3-b56d-42b2-a277-02a255b2d6c0@linaro.org>
 <20240626-agate-ibex-of-effort-c72ebc@houat>
 <5f989c7d-fb70-4e13-a1e9-86fc6326d633@app.fastmail.com>
 <0c03b9ff-a1e7-495e-a294-198d9a6878ca@linaro.org>
Date: Wed, 26 Jun 2024 23:00:55 +1200
From: "Ryan Walklin" <ryan@testtoast.com>
To: "Maxime Ripard" <mripard@kernel.org>
Cc: "Conor Dooley" <conor.dooley@microchip.com>,
 "Conor Dooley" <conor@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, "Jessica Zhang" <quic_jesszhan@quicinc.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>,
 "Daniel Vetter" <daniel@ffwll.ch>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Hironori KIKUCHI" <kikuchan98@gmail.com>,
 "Chris Morgan" <macroalpha82@gmail.com>,
 "Andre Przywara" <andre.przywara@arm.com>, "John Watts" <contact@jookia.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Content-Type: text/plain

On Wed, 26 Jun 2024, at 9:16 PM, Neil Armstrong wrote:
> Well anbernic is not the wl-355608-a8 panel manufaturer, so as Maxime 
> is suggesting to use the
> name of the device where the panel is found like 
> anbernic,rg353v-panel-v2 as submitted
> in 
> https://lore.kernel.org/all/20230426143213.4178586-2-macroalpha82@gmail.com/
Show quoted text

Understood thanks. I have no strong feelings either, using the device name is sensible. Will prepare a patch.

Regards,

Ryan 

(apologies, replying-all this time)

