Return-Path: <devicetree+bounces-69084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F348CEBCB
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 23:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B18D1C20B9C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 21:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B535FDD2;
	Fri, 24 May 2024 21:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="JK7n9fkO";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Y8qVUtd9"
X-Original-To: devicetree@vger.kernel.org
Received: from fout3-smtp.messagingengine.com (fout3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA463745D6
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 21:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716586032; cv=none; b=fSX79a+T+ASIR0KOFw7QVZKl2HFfwBpcMYJZD7mEa1yBkmQ1PiiLXuzwNuwMSEYVA5DmWGGV49byasdiQOu4i3jXB2GB/8+MXfdAKRCTrrAaretFgfqilxldh/n8aTupa+9q5Q8Gx39FKkP4JAwZE7cmwRbPa3PGZnrMVkLTZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716586032; c=relaxed/simple;
	bh=q18x2/ghEDQxRgttvtjlBdSmEhFM5JNm+4kgqArajnU=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=Vvvb4kTPGaR5bWFzC+kDLsDjnrS8Lx0j5VkK9JFEVXt+jnxeynT4f+SOYR0uzLVH5GaCyG0mRHKQxXx/UlxMeYnvqiF46MSIgueD3BbWjKNnJXmyEAdZ+rdlrooGxahqBnUPTAc4EgKDcBQgRuj3Z3OYgGFy6bll9ZiZwXnbsqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=JK7n9fkO; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Y8qVUtd9; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id AC440138008B;
	Fri, 24 May 2024 17:27:09 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Fri, 24 May 2024 17:27:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1716586029; x=
	1716672429; bh=L5Cz52RVph7F6Rz/UoF8bzO6tfbd8rJHqTcSj+Y/Hdk=; b=J
	K7n9fkOJQqW0CvA9oqEQysJO3dzub1T3KNSlXMO/svItlhEKhpjn8rXccYZ/XKfI
	MbMxH3w/qMF4ZZVQ14N4OU+AI6BKsRAejqI5FqnMSSWkqhN+ZiaKGUxeGwDWDJso
	F2TzZDoomjt0rizRcnXeeAKyQvud1eAvqc/X1RU2OAoZrFXwlxZc2NnMuxJQ8k/d
	0WlBv4V64Up3aMGE6NOcp39vAD2EIhhP2uksOtwkcYQLSk7tKQH6lRhgUFxBXs5i
	phq9tXXeFRlwkxbVh/uhTfhmJ1UMGb1oNxctn5tgXdXE9jHJR/ipKxdxdQT+/HwM
	dVr2y6BtPqvDm/k2gmdng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1716586029; x=1716672429; bh=L5Cz52RVph7F6Rz/UoF8bzO6tfbd
	8rJHqTcSj+Y/Hdk=; b=Y8qVUtd96Y9KYvvliGFxvtLhWxeINyr0UMAGXd+fZm+m
	r8Tg41Mni8SQSHXKQn1e1sScWojUHRQhy0ImCNeoiMRb9ssAz9OWUygXbavNzAHC
	K7fOfo+u1PSYdVoWHxvXP253+S3F2DfOo0hwvBmEk6poAFGsAcmzv10t7ui3CTwx
	vKOiXkQCgm2qzybdOYMZktFLIqmLabjHs25L7V8aTacUUpYgkzOHMOSOHeYuv/wL
	ebOgIIUfBwvB77mq5aBPC0OPYewnPot3lokEHC+z8+gCO89gRxU0VRGPWByV0h3E
	XlQiSUFWCgkqo37slwyJR6uuqxYWd0HNULHbg/fexw==
X-ME-Sender: <xms:LAZRZjjZxfZdsptbZlhWw6zctDkRsjPSVenvDbUtWKaxF3gl3Rx07g>
    <xme:LAZRZgDp--qW-z-9E2BgISt-GPO5J5bsCunY5Cjyf_V5XF18zvXuTbKEydrWpNc8J
    OVGAD9_vK_sFKsQpA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeikedgudehjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdft
    higrnhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehvdevieegudejueefgeffhefhffevudfhieejgfdtffetlefg
    teeuveeiudeijeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:LAZRZjGN-COkrZpZyoODpRFVx5y3M8L48pHgnMPRfj3YnxeoDGENQw>
    <xmx:LAZRZgSQvYuSGl4SVAMauHWN6ScvgF2wWMl4Y4sQ-KBTdBNuwgKh_A>
    <xmx:LAZRZgyuDUcCs7IYMhGxuXrs1b8mFJDTe6swL9yqtmX8k0-M_xKMLg>
    <xmx:LAZRZm5_KOcd0KPnUopDULYeHSSDB8IoHRayzdIoy9sxhwFlmEGSmQ>
    <xmx:LQZRZsBqRECEEWrs2HLNsKJ7BnpCILTfcQZZGDGFIjzVpwSXYxEtg7jk>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id AF44BA60078; Fri, 24 May 2024 17:27:08 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-480-g515a2f54a-fm-20240515.001-g515a2f54
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <a7363cd2-4e2e-4894-8a16-f1913927e332@app.fastmail.com>
In-Reply-To: <20240524-purveyor-outlying-5201f700a56e@spud>
References: <20240524103506.187277-1-ryan@testtoast.com>
 <20240524103506.187277-2-ryan@testtoast.com>
 <20240524-purveyor-outlying-5201f700a56e@spud>
Date: Sat, 25 May 2024 09:26:48 +1200
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
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Content-Type: text/plain

On Sat, 25 May 2024, at 7:10 AM, Conor Dooley wrote:

Thanks for the review!

>> +
>> +properties:
>> +  compatible:
>> +    const: wl-355608-a8
>
> You're missing a vendor prefix here. And when you add it, update the
> filename to match.

Thanks, I don't actually know the vendor, would it be acceptable to just use "wl"?

>> +
>> +        sck-gpios = <&pio 8 9 GPIO_ACTIVE_HIGH>; // PI9
>> +        mosi-gpios = <&pio 8 10 GPIO_ACTIVE_HIGH>; // PI10
>> +        cs-gpios = <&pio 8 8 GPIO_ACTIVE_HIGH>; // PI8
>> +        num-chipselects = <1>;
>
> All of this is not needed in the example, all you need to have here is:
>
> spi {
>     #address-cells = <1>;
>     #size-cells = <0>;
>
Thanks, will clean it up.
>> +
>> +        panel: panel@0 {
>
> This "panel" label is not used, you should drop it.
>
Noted, ta.
>> +            compatible = "wl_355608_a8";
>
> This doesn't match what you documented, be sure to run dt_binding_check.

Thanks, changed underscore to dash mid-patch and neglected to fix all the examples (and the subsequent code patch it seems. Will correct. Is there a preference one way or another? 

>
>> +            reg = <0>;
>> +
>> +            spi-3wire;
>> +            spi-max-frequency = <3125000>;
>> +
>> +            reset-gpios = <&pio 8 14 GPIO_ACTIVE_LOW>; // PI14
>> +
>> +            backlight = <&backlight>;
>> +            power-supply = <&reg_lcd>;
>> +            pinctrl-0 = <&lcd0_rgb888_pins>;
>> +            pinctrl-names = "default";
>> +
>> +            port {
>> +            	panel_in_rgb: endpoint {
>
> Neither is this label afaict.
>
> Thanks,
> Conor.


Regards,

Ryan

