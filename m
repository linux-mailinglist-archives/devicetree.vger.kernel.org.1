Return-Path: <devicetree+bounces-76600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDDD90B507
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 17:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC98A1C22475
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 15:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A38B15A4A2;
	Mon, 17 Jun 2024 15:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="ToOaERND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A5315A48B
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718637747; cv=none; b=POOqPpy8R/Zh4HYP3uRWVRK94Wo+TmimMGl13AxdR90PA74OknmgRs1tUHac/leEoANlUMQ86tzOniUCciGvjKJ02XS8byWE2Z798Cg6qrIOlMVYn5DBji5AWLskSy7r0go/v1BFDrCey1It1FsD2i9AOnsbf2yFHZc055zjSPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718637747; c=relaxed/simple;
	bh=1WCrd5faPn+mYTZ7JSuYSySdH178zAkO2xerg6qhj+8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FMe0AD/gaG7a2LBamOF06uAgFWBDy+T1WvOtF9f4okfrDkVB5uGMcGW+MCBT6TfMua+vn/TWcYzNvMQ2Vklge9tAykBu4hDsCjcWkQGhiOuzwkPIYVaHE/oclStfN9tr4+omFkLd8/Mtm9catrMOZ/4CNt2bZFxRdfqx1HzT3T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=ToOaERND; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7955841fddaso370716785a.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 08:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718637744; x=1719242544; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3/FM3QUCn6Oly1MyDk1CjKXwx7qpQYJAZGU3cke12jM=;
        b=ToOaERNDsXqd2Sk4KlJMhm63hFk8y2QYxTHyMdnsHV9RG7IDLR3gtqtUDM0PS99S5k
         MmoliEWoP+vtbeiGKAjXPk4n2Jz0H8BFY6JpMg/WtbF5f0KEXsgEHiyd30kqa21vVx7L
         3P+ApA1OZGupXqFZxwPDFLmE2E+VwKKA710KlshmDT4PnJ36CqHfe/QgUSvpBqsfzk+a
         tGq7a+W3NFCPXJ+OoQBYEADr0ovdFS8EJvI+iRts6mzpqrRw/H6QKCy5bMOYdRUHM0tv
         qY3cF+gfA9ilUNkSeO0FX40C2J9OWznfqthSintkxbYuqK+WuZs0gVjzDyXO4OeQnWbI
         QKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718637744; x=1719242544;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3/FM3QUCn6Oly1MyDk1CjKXwx7qpQYJAZGU3cke12jM=;
        b=nD0KZ31nQHSVrXQVIS5xav8HMdleXkSl9aP5vGyx6Uu/J0GjeI60iNXOwoZ7yC0X/I
         B5PSXWE8e6/j6qISJkeVl+rXxwGIjuxjJkTLbVeZqx/kSTmQG16RXIk4qZjxD6oQTohV
         9OuTQNmjA6EcTGka3Gl3EEGTlhnmz04lPTjEUkQxvMAG8MAQcO8neeGjyb1IjNCQZw6l
         aJEUApweb0WR1UJ/Puiajn264SRBJHaQIbyHs8/I8/BWEuuYR7kdZh6Ty3ay8dO4Cp4B
         coXy3IcqCup/lto8gkRpx6pyisLIm4o5gXckQkGXixqLgyZ/ApthYNn+qQoQxtMUBlp8
         2vlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDyJI/q/noro8yuOWmiNX64y4jgo1EQvq7p8XxSgX1LZIv9AWRsMtbHBSTWSE91xlbk8VcXsCVlQM2mAjvWEHrjemg9g/8BSo/tQ==
X-Gm-Message-State: AOJu0Ywo7ZfU1c+T6ykxDSVabh+omOZl2UTDP6QA3Io5qUY1SgmekW0j
	hW9ptsG1h6HkatfZu1rb7UuVaxNP8JBH8TuPeFDKvb1Qka1rMh0nibHtRX9ZSHw=
X-Google-Smtp-Source: AGHT+IGgbfn+7mAk/1/X8Q8iM0sSSXawlAQZ4Cyo4qH0flu14E16sBQYKctBfM4ogrts8SmywVEXoA==
X-Received: by 2002:a05:620a:1710:b0:795:5750:cef7 with SMTP id af79cd13be357-798d03e6830mr1608790385a.36.1718637744495;
        Mon, 17 Jun 2024 08:22:24 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:57da::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798aaee575fsm438671285a.40.2024.06.17.08.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 08:22:24 -0700 (PDT)
Message-ID: <e5d2f6d735bb4c997393e6d3ace53953b062ecd8.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, Jianfeng Liu
	 <liujianfeng1994@gmail.com>
Cc: alchark@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org, 
	cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org, 
	didi.debian@cknow.org, dsimic@manjaro.org, gregkh@linuxfoundation.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	mchehab@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com
Date: Mon, 17 Jun 2024 11:22:23 -0400
In-Reply-To: <4116468.VLH7GnMWUR@arisu>
References: <20240615015734.1612108-2-detlev.casanova@collabora.com>
	 <20240617094735.27928-1-liujianfeng1994@gmail.com>
	 <f295f41ef1c9ee920ac3ac8e70ccf672ba7c9648.camel@ndufresne.ca>
	 <4116468.VLH7GnMWUR@arisu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Le lundi 17 juin 2024 =C3=A0 10:20 -0400, Detlev Casanova a =C3=A9crit=C2=
=A0:
> On Monday, June 17, 2024 10:04:59 A.M. EDT Nicolas Dufresne wrote:
> > Hi,
> >=20
> > Le lundi 17 juin 2024 =C3=A0 17:47 +0800, Jianfeng Liu a =C3=A9crit :
> > > Hi Detlev,
> > >=20
> > > Thanks a lot for your work! I try to use rkvdec2 with chromium but it
> > > can't play h264 video. Here is the log of chromium:
> > >=20
> > > [5799:5873:0617/171224.850061:VERBOSE2:video_decoder_pipeline.cc(473)=
]
> > > Initialize(): config: codec: h264, profile: h264 high, level: not
> > > available, alpha_mode: is_opaque, coded size: [1920,1080], visible re=
ct:
> > > [0,0,1920,1080], natural size: [1920,1080], has extra data: true,
> > > encryption scheme: Unencrypted, rotation: 0=C2=B0, flipped: 0, color =
space:
> > > {primaries:BT709, transfer:BT709, matrix:BT709, range:LIMITED}
> > > [5799:5886:0617/171224.850915:VERBOSE2:v4l2_video_decoder.cc(182)]
> > > V4L2VideoDecoder():
> > > [5799:5886:0617/171224.851218:VERBOSE1:v4l2_device.cc(128)] Open(): N=
o
> > > devices supporting H264 for type: 0
> > > [5799:5886:0617/171224.851346:VERBOSE4:v4l2_queue.cc(1069)] This queu=
e
> > > does  support requests.: No such file or directory (2)
> > This one indicates that V4L2_BUF_CAP_SUPPORTS_REQUESTS might be missing=
 in
> > the REQBUFS implementation. I suspect GStreamer simply assumes this tod=
ay
> > for driver exposing stateless formats (which is fair, its not a complia=
nce
> > test, and we don't have a codec compliance yet).
>=20
> There is a src_vq->supports_requests =3D true; Do I also need to set a fl=
ag on=20
> the device caps ?

I don't know, but you can check very easily what flags you have out of REQB=
UFS
with the dev_debug output or using v4l2-tracer.

regards,
Nicolas

>=20
> > I'd suggest to check and fix this one, and retry, might only be noise, =
might
> > be the main cause, we cannot tell.
> >=20
> > > [5799:5886:0617/171224.851426:VERBOSE1:v4l2_video_decoder.cc(476)]
> > > InitializeBackend(): Using a stateless API for profile: h264 high and
> > > fourcc: S264
> > > [5799:5886:0617/171224.851687:VERBOSE1:v4l2_video_decoder.cc(598)]
> > > SetupInputFormat(): Input (OUTPUT queue) Fourcc: S264
> > > [5799:5886:0617/171224.851797:VERBOSE1:v4l2_video_decoder.cc(636)]
> > > AllocateInputBuffers(): Requesting: 17 OUTPUT buffers of type
> > > V4L2_MEMORY_MMAP
> > > [5799:5886:0617/171224.867687:VERBOSE1:v4l2_queue.cc(1511)] Streamon(=
):
> > > (OUTPUT_MPLANE) VIDIOC_STREAMON failed: Invalid argument (22)
> > > [5799:5886:0617/171224.867902:VERBOSE1:v4l2_video_decoder.cc(937)]
> > > StartStreamV4L2Queue(): Failed to streamon V4L2 queue.
> > > [5799:5886:0617/171224.868009:VERBOSE1:v4l2_video_decoder.cc(1377)]
> > > SetState(): Error occurred, stopping queues.
> > > [5799:5886:0617/171224.868105:ERROR:v4l2_video_decoder.cc(120)]
> > > StartStreamV4L2Queue failed at
> > > Decode@media/gpu/v4l2/v4l2_video_decoder.cc:915
> > > [5799:5886:0617/171224.871898:WARNING:v4l2_video_decoder_backend_stat=
eles
> > > s.cc(126)] There is/are 0 pending CAPTURE queue buffers pending deque=
uing.
> > > This might be fine or a problem depending on the destruction semantic=
s
> > > (of theclient code.
> > >=20
> > > Here is the chromium code failed when calling VIDIOC_STREAMON:
> > > https://github.com/chromium/chromium/blob/125.0.6422.60/media/gpu/v4l=
2/v4l
> > > 2_queue.cc#L1508
> > >=20
> > > I'm running chromium v125.0.6422.60 and I can decode 1080p h264 with
> > > hantro g1 decoder on rk3588.
> >=20
> > Are you using minigbm ? Because if you do, we don't have minigbm code f=
or
> > this driver (and have no plan to do so, since we don't aim for ChromeOS
> > support).
> >=20
> > Nicolas
> >=20
> > > Best regards,
> > > Jianfeng
>=20


