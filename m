Return-Path: <devicetree+bounces-67411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC458C8100
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 08:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 404A42825D2
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 06:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A111D1427B;
	Fri, 17 May 2024 06:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b="vJtot80U";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="cYQzvJUx"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh8-smtp.messagingengine.com (fhigh8-smtp.messagingengine.com [103.168.172.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372471118A;
	Fri, 17 May 2024 06:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715928104; cv=none; b=EBGeGegRtl8UO5vzzcrecXEieJjSAB0GF1u5hHeN5mFx6K7fue4xKjWH4lJUKC3PfMEIU151dnmJYyVzvrUI5ORxmL/GrPjbWImtq8PskqVmkJUB/05sA+2CoNOttBzcqy44S9rT4fdact3WnE6BiOtmLwe3svW44OQz7ekJhM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715928104; c=relaxed/simple;
	bh=kXXN/aTx3k3ZypXowdLpxDPWR/Jfgdf02xxcdWguIjQ=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=HIStb3QROF8YG+8TvXWFRgVBV0elG6TASh0X2UbXmWNI3Hue/bSXrcpkxNPrhHsc2GP6fw6kTeNOuXWltC/exWeKEkxJVUoNeDkGq7j8pOY8GlHbEbQqbq5r3i6IYH4CyrJqasiDdvUEVfTucpmp4Y55Q/MenX6Fd0V5G8LY5Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=vJtot80U; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=cYQzvJUx; arc=none smtp.client-ip=103.168.172.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arndb.de
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 3D2E411400B2;
	Fri, 17 May 2024 02:41:41 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute5.internal (MEProxy); Fri, 17 May 2024 02:41:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1715928101;
	 x=1716014501; bh=IXSF04BpNNiHimS2MUOTJTPECp7w5ZrYeZxP+k3YYl8=; b=
	vJtot80UARFs1ibMZr7mzwiD7xd2lzmi5PXwXYGFo1GfY1KtjcOJLKODQy8pH7Pn
	N9n7OQbryir42YXJW335XyRGJnNSAD/HMmw9NKveBlyF6JNMDUhoRTx9Wld/i/WJ
	Pf+MqdXowxTPWJ+ZkUD6OVaNf4JTeIwOKSCI0radKfmZuyH5g4bUXhCQbGlIZTxf
	yH73fXnook6D6ok0Nqt2tg+H11tBDKSjtCCDiFO6Mx6C4XqRh0bFfV9Oe19iKehY
	tW/7xWtG+AgKnMjvlTzR9H3xhl2Md5rcg/cUwgPE/YGWBWj07eok8Ztq0ng6hw7d
	Iq56lT5wVbC/WxroIGTlSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1715928101; x=
	1716014501; bh=IXSF04BpNNiHimS2MUOTJTPECp7w5ZrYeZxP+k3YYl8=; b=c
	YQzvJUxRo+9dcOmu6NMsRtHf7j6N1s+vo6bSCMcPYRS1WEoQFlpuS3ICfAIFEf1w
	d9OkV7R9lGg+CUiGDvCFGqKE3RUcF5x6zcvRHn1DZmeKWeQOn1nVoNvaU7nP4xMF
	6gMrNyhLR6fZsHFrBsiwkUiw7ypxRqSHb+2He3WuD+c31pd6vsEKnuPMbEHGRkxH
	7udIIx3fjJDkQBGDkX3OZSXUIDpFoyy2zwfQo8i0x1Do/zMPXWeMcclBZQ/bWwKd
	oCWpmZ6pv6xQIeMvLYJfCUIt9OPtIpD8Jp3TkLAyf1GNzT3KUYxBkyiVVnRnh47m
	KafDtqApo/P2AASCzSADg==
X-ME-Sender: <xms:JPxGZmf3jE2Oj-B8KHvHwSfftQUNwkFkkDErIkE7aIH_eRvmeIZ4BQ>
    <xme:JPxGZgP9NVifkymnlfoEKwsxVxLakluHxtnHZ_Ve6B7THNptMPmOnwz7UoqsLsDzJ
    TU2XyPWVfZ-DYOMEhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdehfedggeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:JPxGZnjEceD2N0wBCxDTsli6aNdYvj6v_vRZPUkDsCPV7n2DB6Fxdw>
    <xmx:JPxGZj_jdzrFI7bpKDne796LuU2qyO4BP9gUMESRNQmm1gsCBTLfWQ>
    <xmx:JPxGZisgjvf2tDQ9NwGZvdbIWW19E8dWhnp1rxKKoPKuRbyGH18SsA>
    <xmx:JPxGZqHw9Ip2ugpgOuvwfN5ntbouoMBwhiUdoXAXlTvIZsjqefrqng>
    <xmx:JfxGZiER68OBjCi1sT5K9LFim_wp1bCTa0MegLy1aqdhayMGOUOCvgbm>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 87017B6008D; Fri, 17 May 2024 02:41:40 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-456-gcd147058c-fm-hotfix-20240509.001-g0aad06e4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <361d50be-1e28-4f18-b7b3-74d65afab260@app.fastmail.com>
In-Reply-To: 
 <CAD=FV=W0Gq8mkdbF_94=H=G9k6UwjUa43eaxCjU-vZwMxSg+8g@mail.gmail.com>
References: 
 <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-4-yangcong5@huaqin.corp-partner.google.com>
 <0fcdb0ac-2e4a-44b2-a5d6-a67a1d747df8@linaro.org>
 <CAD=FV=XkBkQUN-93eQDKZcw_66uSeNBBhbiq2hRLcFN+Ck71RQ@mail.gmail.com>
 <CAHwB_N+foZpCjqUy0dJdS2wBbUjHVRQQP0p7S_eTG1Yrh0bgPw@mail.gmail.com>
 <7b488473-7fd1-4f4f-8c32-72e84420b478@linaro.org>
 <CAD=FV=W6mkTwAp6qMVYbPFDYBroAW19-qgvct1dw11ksaW3cYw@mail.gmail.com>
 <CAD=FV=W0Gq8mkdbF_94=H=G9k6UwjUa43eaxCjU-vZwMxSg+8g@mail.gmail.com>
Date: Fri, 17 May 2024 06:41:14 +0000
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Doug Anderson" <dianders@chromium.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: "cong yang" <yangcong5@huaqin.corp-partner.google.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "Daniel Vetter" <daniel@ffwll.ch>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org, "Rob Herring" <robh+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Dave Airlie" <airlied@gmail.com>,
 "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Subject: Re: [v7 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 16, 2024, at 14:09, Doug Anderson wrote:
> On Thu, May 16, 2024 at 6:43=E2=80=AFAM Doug Anderson <dianders@chromi=
um.org> wrote:
>> On Wed, May 15, 2024 at 11:55=E2=80=AFPM <neil.armstrong@linaro.org> =
wrote:
>> > On 16/05/2024 08:43, cong yang wrote:
>> >
>> > Yeah we usually don't mess with arch specific defconfig from drm tr=
ee
>>
>> In general I agree that makes sense. In this case, though, the new
>> config symbol was introduced in the previous patch and split off an
>> existing symbol. Updating "all" of the configs (AKA just arm64) that
>> had the old symbol to also have the new symbol seems like the nice
>> thing to do and it feels like it makes sense to land in the same tree
>> that did the "split" just to cause the least confusion to anyone
>> affected.
>>
>> In any case, if it's going to land in some other tree then I guess the
>> question is whether it needs to wait a few revisions to land there or
>> if it should land right away. Nobody would get a compile error if it
>> landed in a different tree right away since unknown config symbols are
>> silently ignored, but it feels a little weird to me.
>>
>> ...of course, I'm also OK just dropping the config patch. I personally
>> don't use the upstream "defconfig". It just seemed courteous to update
>> it for those who do.
>
> Hmmm, probably should have put Arnd on this thread. Added now in case
> he has any opinions. I also did manage to find when this last came up
> where I was involved. At that time Will Deacon (who get_maintainer.pl
> reports is the official maintainer of this file) said [1]:
>
>> But yes, although there are a few things I really care about
>> in defconfig (e.g. things like page size!), generally speaking we don=
't
>> need to Ack everything that changes in there.
>

My preferred way of getting arm/arm64 defconfig updates is to have
them picked up by the platform maintainer, the same way we handle
updates to dts files. The platform maintainers are familiar with the
process and will send the patches on to me for integration through
the soc tree.

If a change is not specific to any particular platform, I recommend
to send it to:soc@kernel.org, cc:lakml. This makes it show up in
my patchwork, so I will eventually get around to picking it up.

When you do this, it's helpful to me if you include an explanation
(after the --- line) why this patch does not get picked up by
a platform maintainer, and it also helps me to include whether
I should include it in the current (6.10) fixes or queue it for
the next merge window.

     Arnd

