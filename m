Return-Path: <devicetree+bounces-81681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F02C591D08A
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 10:26:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98B641F21860
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 08:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F4912C475;
	Sun, 30 Jun 2024 08:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="gVN/sQtx";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="vz/CQ8ja"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh4-smtp.messagingengine.com (fhigh4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F48512C473
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 08:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719735959; cv=none; b=osbAjgnYf9xyX7Ugm60nQFvgL3GFtYP3LTVMOUFXXJBOwMSjWmA1IEkYOmvkrLt9YPwlClGjKaU1C8MkCC6O108LUWwzwLBFzDBO993Fn1AN24q2tVTGh9jZ+eihZCNQIMPKdMmkZk6WUOZP6+OCO0bHkTQc2iBk9JbC0+Z9lFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719735959; c=relaxed/simple;
	bh=qj9uKYkme4UoB2bIR2exjcUlA7O5YSX5QEXWNpW0gDU=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=vEDypfSCWtyAhqNUzJLmyowBTrGcilk1ntuX9YpTGzppgqpDdrrRGE6Nb42yGy1gaJb5q2Nl+oArv114+LFTD3wcJX1DkNQlvRuT49YPLXFDUCquMDX8p2tQFUdZJs2p6krWD3oLcNXf9YIO52w1UU8YTiOIUkx3U661hPKdcS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=gVN/sQtx; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=vz/CQ8ja; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 715DB1140242;
	Sun, 30 Jun 2024 04:25:56 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Sun, 30 Jun 2024 04:25:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1719735956; x=
	1719822356; bh=pW9Aa+3i2zPjyFu4FQQGq4TbYskCox/E7WIXJmfW14w=; b=g
	VN/sQtxkabG/J+nJvwejiU5XFWveu4yr2MKixDkd+SHKu9jKV7wjtZL2mM0uzeY9
	TSAPFohTTB2MF4EWtp6m2xy61669DL7XZr9FFhcbBnDfPYa4BVQPHFL0sWVToBrv
	29vR/d2+3poZy4MpY71bCMpfyTP5SeDmPIIu7a8Qxy5y1evRAjcfRfC4q7BzYAxn
	Ec2WWi19o7ljc+KltA1sJTEsaWwaXA2RJhaGBkm5UBQhd6/kQ3FGGAeGACadinNR
	Uf1ukm0DhIE3Lv48u+HXCIO9F9rSGgejr8UXEBzYclGfhCf4ZZM8rYjOKQrbd7F5
	Qnja72bHo7CLlrEC0Dfmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719735956; x=1719822356; bh=pW9Aa+3i2zPjyFu4FQQGq4TbYskC
	ox/E7WIXJmfW14w=; b=vz/CQ8jaSGmEQ1RRzZYc+sZJwzn2Eq/nhuBhV5IsMn67
	JSC1XYeOS+IkrJrtjQL6E+Rez43DuXd5EZXxFn50B/ZjnnOXpANLebWHeZl3EjRD
	6ZMenI3X4UIHd2hIMnLQm4IVVyW1iFY3qV3mu+Gi40MbUvAswSuVYiSs9zMLoj08
	2vhu5sxGjV8LTwc3MZptEDHgCAr9wRmgvMT4MKJv4fJ+/IPlmiHG+2s/YagVaUSs
	i+T0xDcj+nLr+3Fv2NwMTOfwJimoXLbEpnfDqFeSsbvD4WqwxT3CWmNrUaOz302M
	bivfCQ5mWgTIeKIKE5Erpzf9sFfEWA+VmfUVHEAiDg==
X-ME-Sender: <xms:lBaBZtndEik-5h1rt6LBZwIBWf36IZQMbyPfDcZHE7c1FCKgCxX-Dg>
    <xme:lBaBZo2HW2rwpCVPtmZLcIC7Erpj5ghhatoCvEDgVFMjiqBK8IZ4J-v_EWw-STAqw
    rKwoX1BZqoppuL9HQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfthigr
    nhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtf
    frrghtthgvrhhnpeekledvtdffudejfeefvdeuudeugeeitdejheevveehgeektdelteek
    tddukeehveenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrghnsehtvghsthht
    ohgrshhtrdgtohhm
X-ME-Proxy: <xmx:lBaBZjq9HbiMQzQ2ry6-ByKPFQOp74hjAOQPcORtpVmuLohBe19s2A>
    <xmx:lBaBZtkZBx8oFJ0-7TnTu_-F9TC_OsQ1UIg8Zcf_ej7cJy5dz8YfYA>
    <xmx:lBaBZr27jtX3tPnLCUMlptxvTCCbT54y6oS6W4XdELt7sV6igQ5D2A>
    <xmx:lBaBZstZlKPQWlRF-hh9gCkm8TUP-B_B97asI7tQ-E9ssVogOyoysw>
    <xmx:lBaBZi2TXUTTvIY4-obFb6trojRQeI2JMyzCvIMLpMxSvqFgdNqcBuRN>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id EDD6CA60078; Sun, 30 Jun 2024 04:25:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-538-g1508afaa2-fm-20240616.001-g1508afaa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <16c6f72a-fe41-4975-9c57-8c0953397171@app.fastmail.com>
In-Reply-To: <20240626-duo-outage-1601a51239b9@spud>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-4-ryan@testtoast.com>
 <20240626-duo-outage-1601a51239b9@spud>
Date: Sun, 30 Jun 2024 20:25:26 +1200
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
 "Chris Morgan" <macroalpha82@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: display: panel: correct Anbernic RG35XX panel
 example
Content-Type: text/plain

Hi Conor,

On Thu, 27 Jun 2024, at 3:38 AM, Conor Dooley wrote:
> On Wed, Jun 26, 2024 at 11:17:50PM +1200, Ryan Walklin wrote:
>> make dt_bindings_check reports that sck-gpios and num-chipselects are
>> required for spi nodes, therefore add these to the example.


> huh, are you sure it does? It doesn't for me...

With:
make dt_binding_check -j32 -s -W 2

I get the following output:

/home/ryan/Projects/Develop/RG35XX+/kernel/linux/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.example.dtb: spi: 'num-chipselects' is a required property
	from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml#
/home/ryan/Projects/Develop/RG35XX+/kernel/linux/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.example.dtb: spi: 'sck-gpios' is a required property
	from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml#

The relevant section from spi-gpio.yaml seems to be:

required:
  - compatible
  - num-chipselects
  - sck-gpios

I am happy to leave this out if a simpler example is desired, but alternately if the chipselects/sck-gpios should stay then I would suggest a better example would include the mosi/miso/cs GPIOs as well which would make the example functional.

Regards,

Ryan

