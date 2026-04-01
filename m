Return-Path: <devicetree+bounces-283590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFW4NYNFzWkkbAYAu9opvQ
	(envelope-from <devicetree+bounces-283590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 18:19:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5928037DD03
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 18:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E43E3055558
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 16:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B318045BD78;
	Wed,  1 Apr 2026 16:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rspx1OdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3B3CAE6A
	for <devicetree@vger.kernel.org>; Wed,  1 Apr 2026 16:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775059907; cv=none; b=GWqclw0tep1/0U04KfE5yr/NuMHGh0joUJKw0A9Y1q1xnLW4FmuH2y3sv3aIzbkQZJ6KPH2/mJLPbAHNIVrcfj1/RdONA/6UruOb+VZVg7ZJaB7pVl0TcO4BVxIFaTaXqSObMEApxcjP9UnoUUJLm3aaqLEnI+vDkj7IqbdaKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775059907; c=relaxed/simple;
	bh=Lll5oR6Qy//fClu5g8F3P8kwsGrz/Ee9mZz01vlvygw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2i+C08vysYzddYKVRzsyQUZco013WbVR0PFMoJdxmM8zEin1pVzN3KBShMtNpgGlMIO2hV0lekProRERivNglc8Xr3y07n8U33E8I32sudR0lpEo0ca+b9YmZeX5uaiq3DKcr3smifNfqgDMZCWUO7z5pm9W3P5gzwKciA+IaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rspx1OdJ; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b4520f6b32so7990337eec.0
        for <devicetree@vger.kernel.org>; Wed, 01 Apr 2026 09:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775059905; x=1775664705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iMl5RIQBcoAsWtIwo/RmJcT3IoyJkv4pCoZnoXhZT0k=;
        b=rspx1OdJ+amBWmL2aOWQ1W9dz6725GF83pw51m3+pzjzfvH+HUxL46SoQDZfJJxN/U
         8ieQcdLJJBAtxYRXRBVqYjd/F7BFl8wTxzYP/9Vz2UGcZMja0pOIqtXcaYqVVaIKlIfK
         hQ//9nMFzjEo54iq6BiilD4n220MOXLxkOL4k20ZErkD6/aA/xv846yE26v7fdBg6t4b
         3xMXv7WGT8+G0OtH3CS0hypuQla1Wg8wniUXWx+qQrWgO1NeWrcZjrxSRTucx5Yd7X2q
         XCsVTWxbk4FhudxUawZjRgtkfcYUIlyWyUzbQeReKfaXDa+AL9gy9aQRiyiuIHNWye6a
         1yJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775059905; x=1775664705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMl5RIQBcoAsWtIwo/RmJcT3IoyJkv4pCoZnoXhZT0k=;
        b=pAmW7HQaNw5Opm9iylBAQlz3CNinHG0yZQrHM19CkLdGZKNCkTNouHxHrYdnSmSCpq
         E/vk6Zjx3EjfsDTFIwPIw7FoahkEEB0R3TVmezHpunwB5t3HKC14pW8bMVQ8DAfgtOD4
         rZUGOPOt9zlY+VgDIzq/alDKSdUoh3fwEzu8CkQHQNNL2gJiJKnt2ZfXVv4bAfFmqEId
         Whtp5COtg4hbtnOfBELntn3kUkgIxOVYfSfonMy/Xl51DOAQ2mYCDD+Kqm7Z+8TAsdoj
         ju2oykCMjgT1po0nrAHfL7ieACKpP0k0P4RColHcUei3YsAHdgpbDTYy3/lVudqdfkTd
         h/8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWh60OL37YGnHpBQ/Bs6kwLQ8yzPWweId/OGUNUAUR4OBrYaX1vbyOtgOhVuP0ztq3FIEbbESt9Ron2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw59F7mU3RsfhuFujqA/zEpQs5EF4uMCFcOyoeURZJ0r9CSFjG+
	nJDGoI3953qrRXmPFUPJlBRxY7qNIZb/VvTADMY6OCLFrhT1HTb7kq9M
X-Gm-Gg: ATEYQzzTza0OVnQkiwj16ElK/6xAd//TYMHnMoWq/WFpTijWKFMPbWmm4cnxp/4Vrwj
	CNjBbq3r86o7osLg0WHTDLQr37vb7CbMs/5i3qex94X5isI+iz3wMXiij/4KDNdEOc083siBTwl
	gMWxRySU4DIMxhOvt8Y2W3gRnFVDEZK0zfrp7PnRuVj7Gza23paZ8/92dqsQlsSW905tugoZDsh
	RXRI2yiIGAUt/Jwv5QNPVGo7IeCl5ZdVFXLf1FQSiTwToJlW3QGdowoONzBYuq1geodRD8dnuHV
	y3fYhtb2w/s7TeFLWiUP0grLCN3xQBXitFT1P+ADp9l7XqpcYR8Rdqkg3EGY8f1jPkuE/V9Hdzs
	8XASOHH8qPuSnST2OmvKpUctVv2jM9SJz2YqMLeMLsiYLcd33A3xY6cOf2ZYxbEH1aDE+imTmT/
	G0OJs+HWh/xdYy3lxVkwXFYGx8ksz82VEAmbD5wOTDL8QiWK6/LXOa3GMKVU2qWJ7pZI7GnzeBh
	24=
X-Received: by 2002:a05:7300:ed0e:b0:2c3:d51b:91c4 with SMTP id 5a478bee46e88-2c930e6b8b1mr2353682eec.7.1775059905279;
        Wed, 01 Apr 2026 09:11:45 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5f38:4c97:ec41:caa0])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ca7cf1271asm139156eec.26.2026.04.01.09.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2026 09:11:44 -0700 (PDT)
Date: Wed, 1 Apr 2026 09:11:41 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 3/4] Input: aw86938 - add driver for Awinic AW86938
Message-ID: <ac1DclNOl3ZA5bUg@google.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
 <20260302-aw86938-driver-v4-3-92c865df9cca@fairphone.com>
 <aae7fRYaoDHMptyu@google.com>
 <DHHWDE7QEOTO.1AQ85UBLO8IQG@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DHHWDE7QEOTO.1AQ85UBLO8IQG@fairphone.com>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283590-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5928037DD03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 04:44:47PM +0200, Luca Weiss wrote:
> Hi Dmitry,
> 
> On Wed Mar 4, 2026 at 5:56 AM CET, Dmitry Torokhov wrote:
> > On Mon, Mar 02, 2026 at 11:50:27AM +0100, Griffin Kroah-Hartman wrote:
> >> Add support for the I2C-connected Awinic AW86938 LRA haptic driver.
> >> 
> >> The AW86938 has a similar but slightly different register layout. In
> >> particular, the boost mode register values.
> >> The AW86938 also has some extra features that aren't implemented
> >> in this driver yet.
> >> 
> >> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> >
> > Applied, thank you.
> 
> I'm curious, where did you apply these patches? linux-next doesn't have
> it and I don't see it in your kernel.org repo either.
> https://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git/
> 
> Did this slip through the cracks or will these patches still appear
> there?

My bad, I think there was a conflict with Dan Carpenter's patch and as a
result the series got stuck in my internal queue. My apologies.

Should be out in 'next' branch now.

Thanks.

-- 
Dmitry

