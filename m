Return-Path: <devicetree+bounces-7482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C177C4755
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 03:34:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 664AE1C20C78
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 01:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098BE80D;
	Wed, 11 Oct 2023 01:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=maslowski.xyz header.i=@maslowski.xyz header.b="Xjbi52/v"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BED20E0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:34:37 +0000 (UTC)
X-Greylist: delayed 19968 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 10 Oct 2023 18:34:35 PDT
Received: from mail.maslowski.xyz (mail.maslowski.xyz [IPv6:2001:19f0:5:5b98:5400:3ff:fe59:951d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F2CC93;
	Tue, 10 Oct 2023 18:34:35 -0700 (PDT)
Received: from localhost (ett70.neoplus.adsl.tpnet.pl [83.20.165.70])
	by mail.maslowski.xyz (Postfix) with ESMTPSA id 12A7C7DCBC;
	Wed, 11 Oct 2023 01:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=maslowski.xyz;
	s=mail; t=1696988071;
	bh=NnfFpwUX9CGJeaS2KmvWkwSGRdoXuydK9QlAfgDJ3Yk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xjbi52/vD13NDSbJSQIRBk7ZVbVGxQCaa91wwiTsnt2n7CrxtkS2ySt2OGjMp8DTQ
	 PI+SOcNz2NCXVb89prO9tekNjSZLXYJB5v6z45sDXaqf3AVwRlog5WwQRGTYHpOWwr
	 LmV16P/DPjUuONSKm7WupOjniA4dHVBzLpmgJvko0Abi6MfVGdoh+HU+r3NhDYTbUR
	 fQdWOD4zySb5APuu8M/eGbLMc03Kx1dctII/mOt9GL4I+eYgXf8vvT7DiGML9swBrk
	 Djdpw3ZQqurHfk6c+xQM7NgKvXabxS41PAEF2hZxZP/YTkmVQyW+zyBxctsF1qHqyL
	 EcPHlotITQWZg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 11 Oct 2023 03:34:26 +0200
Message-Id: <CW582BCPP7D9.323NL89SO8H7N@andrad>
From: =?utf-8?q?Piotr_Mas=C5=82owski?= <piotr@maslowski.xyz>
To: "Caleb Connolly" <caleb.connolly@linaro.org>
Cc: "Neil Armstrong" <neil.armstrong@linaro.org>, "Sam Ravnborg"
 <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>, "Daniel Vetter"
 <daniel@ffwll.ch>, "Rob Herring" <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Thierry Reding" <thierry.reding@gmail.com>,
 "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>, "Robert
 Mader" <robert.mader@posteo.de>, "Guido Gunther" <agx@sigxcpu.org>,
 <dri-devel@lists.freedesktop.org>, "Hector Martin" <marcan@marcan.st>,
 <devicetree@vger.kernel.org>, <phone-devel@vger.kernel.org>,
 <asahi@lists.linux.dev>, <~postmarketos/upstreaming@lists.sr.ht>
Subject: Re: [PATCH RFC] dt-bindings: display: document display panel
 occlusions
X-Mailer: aerc 0.15.2
References: <20231009-caleb-notch-example-v1-1-9e0a43ae233c@linaro.org>
 <CW4UT45DZ5C6.3NIT2IFNSKD4O@andrad>
 <4ce2c3a6-6f66-4fe7-8616-a787a88dd250@linaro.org>
 <CW54GWXGYWEA.ER1Z3DVG83M0@andrad>
 <47bd1c5d-4bac-4772-bf05-509d516e201e@linaro.org>
In-Reply-To: <47bd1c5d-4bac-4772-bf05-509d516e201e@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed Oct 11, 2023 at 1:35 AM CEST, Caleb Connolly wrote:
> On 10/10/2023 23:53, Piotr Mas=C5=82owski wrote:

> They don't need to be correct, you don't need to complicate it, you just
> need a value that plays nice. When it comes down to it you're much more
> likely to be constrained by UI layout limitations by not being able to
> model the precise corner curves of your device. The difference between a
> circular and elliptical arc is negligible in all real world use cases.

Well, with a large, weirdly-shaped display the curve will have to pass
through more-or-less the right pixels for things like a-couple-px-thick
frame to look right. I would expect e.g. a smartwatch UI to sometimes
want to draw a constant-width frame along the screen border. Using a
significantly different curve there will break that, so you would need
to let them be similarly arbitrary to notches.


>> That being said, imperfection isn't my main issue with curves. It's all
>> the non-discreteness they bring to the table. As in, you now need to car=
e
>> about approximations, rounding, imprecise measurements and so on.
>
> My point is that actually you don't. Other than for animated visual
> effects (where an undersized curve would absolutely be acceptable) I
> can't conceive of a situation where plain triangles wouldn't be
> suitable, again slightly undersized of course.

Well, what I meant is not that you "have to care or it won't look good",
but rather "that's an unnecessary degree of freedom" and I'm sure pepole
will spend non-insignificant amounts of time caring about it. Both while
gathering the data and while processing it.

But you're right that it won't matter for typical corners =E2=80=93 they ar=
e
simply too small to make any difference here.


>> Frankly, I don't see any significant cost here. It's very easy to gather
>> and rather easy to process.
>
> Unless I'm mistaken, it would mean that for "odd" shapes like rounded
> corners, the number of values you need to record would be directly
> proportional to the number of rows. You can do some optimisations, but
> that worst case is really not great. Especially when the arc
> approximation requires a single value and covers all the same usecases
> as well or better.

You mean the devicetrees getting bloated? The blobs are already dozens
of KiB in size. As for the sources, I don't have any real experience
with them so I'm not sure what would be the best way of representing
masks. Worst-case, they can be treated as raw bitmaps. But since the
features will consist of typically one (or just a few) contiguous blobs
they can be efficiently represented using for example chain codes.


> You'd probably want your status bar icons to be equi-distant from the
> top and side, at least that's what my Android phone does. But hey, maybe
> you don't, we can't bikeshed UX design all day but I'd think a simple
> radius is gonna be easier to deal with than a pixel mask in most cases
> (especially considering that most UI frameworks don't work in the pixel
> space anyway because of scaling).

Good point!
(Though don't they need to still align stuff to the pixel grid to avoid
needless antialiasing?)

Hmm, but known radius only helps you with the corners. For the notch,
you would need a complex (and shape-shifting) equation, so you might as
well figure out the constant-distance based on a mask I guess.


> GNOME doesn't even use real pixels, macOS doesn't use real pixels. When
> scaling comes into play the advantage is lost either way.

Fractional scaling is a worthwile cause, but I don't think my argument
really changes much when you're working with scaled pixels instead of
real ones.

>>
>> Is there actually any use case that instead of ending up with pixels
>> either way, would be better served by a (possibly inaccurate) curve?
>> (future me here: that spline-along-the-border from earlier I guess)
>
> I feel like the burden of proof still lies with you here. I feel much
> more comfortable with a handful of easy to reason about and explain
> values (that can be easily reviewed by maintainers) over a blob of data
> that grows with the resolution of your display.

How are these reviewable without testing them on a device though? True
that with corners a maintainer can make sure the values make some sense.
But for notches they can only try visualizing the data to see if it more
or less looks right. And that's equally true for pixel masks. Drawing
the shape by hand would be less tedious for a curve I guess.


Thanks for going over these things with me. It has definitely clarified
many points and gave me a better understanding overall. I guess we won't
convince each other that easily, so maybe let's see what others think.
(but if you want to discuss it further, I'm all ears)


And now that I think about it, maybe it's chain codes that could be the
best of both worlds? They operate on pixels and so remain exact, but
also are basically curves =E2=80=93 just very simple ones. I'll have to thi=
nk
this through.

--
Cheers,
Piotr Mas=C5=82owski

