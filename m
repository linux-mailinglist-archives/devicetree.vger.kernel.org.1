Return-Path: <devicetree+bounces-6438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B47BB5DA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:04:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BF251C209B4
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6401BDF3;
	Fri,  6 Oct 2023 11:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="t9sDin+6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1152C1642F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:04:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E05BEC433C7;
	Fri,  6 Oct 2023 11:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696590275;
	bh=XLlwpGj1hGJ6zbiAJm0mczBltVK0XU1/GnjKB3xO8Kw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t9sDin+6Bx9KckpASK79eyQQDDBomfGeuU8KogasxXKv1d57Mtv6mAj2kIKRC3dLy
	 VBKwFd5ahyGAq9dVV30loulisE9s6e5uBc/iPD9mZ01kDzVB8/J1vvH6HbPHu+M7sx
	 6PD2ArRTwAJZmzeD6382ROVEM6iZjKSSbIo4/4ao=
Date: Fri, 6 Oct 2023 13:04:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Subject: Re: [PATCH v4 5/5] drivers/tty/serial: add ESP32S3 ACM device driver
Message-ID: <2023100640-isolating-privatize-7bf7@gregkh>
References: <20230928151631.149333-1-jcmvbkbc@gmail.com>
 <20230928151631.149333-6-jcmvbkbc@gmail.com>
 <2023100326-crushing-septic-4856@gregkh>
 <CAMo8BfJgpP-=tNEChcyR3z6i_QeJ9Ywq7EOjjC5i7Uq4OrgXNA@mail.gmail.com>
 <2023100544-rendering-identify-e0ad@gregkh>
 <CAMo8Bf+wS+qiX2mMZm0i8dt7xkDO8RvroP8RF=78zxgFj-zwaA@mail.gmail.com>
 <2023100625-water-molehill-4a8f@gregkh>
 <CAMo8BfLfBEQVTyBXw=K2wsgGF+ZUfJhffX4ax8kX+k_DPSOKYg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMo8BfLfBEQVTyBXw=K2wsgGF+ZUfJhffX4ax8kX+k_DPSOKYg@mail.gmail.com>

On Fri, Oct 06, 2023 at 03:27:37AM -0700, Max Filippov wrote:
> On Fri, Oct 6, 2023 at 2:34 AM Greg Kroah-Hartman
> > > > Yes, but not all do.  If you don't need to do anything special, it can
> > > > just claim to be a normal device, we've had threads about this on the
> > > > list before.  If you don't need to determine in userspace from the tty
> > > > connection what device it is, just use the default one instead.
> > >
> > > Ok, it looks like having
> > >
> > > #define PORT_ESP32ACM (-1)
> > >
> > > in the driver source should be ok? I've tested that it works.
> >
> > Hah, I like that hack.  But why not just use PORT_UNKNOWN?
> 
> A lot of functionality doesn't work with PORT_UNKNOWN, e.g.
> console or modem control.
> I've got the idea of using -1 from this email:
> https://lore.kernel.org/linux-serial/502240f7-2cac-4fe6-9e27-f9861db3666d@app.fastmail.com/

Ok, we should encode this as a "real" number, "PORT_ANY" and set it to
-1 and let all new devices use it.

thanks,

greg k-h

