Return-Path: <devicetree+bounces-197713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 299BCB0A6FE
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0F0E3B89D1
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8F32D9EC4;
	Fri, 18 Jul 2025 15:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLnx3t66"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE741D6AA
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852066; cv=none; b=f3HZ3iPaLQlAwKvRLdPIPVOTY2p7GPOS3+429mEPOC3/TUgYjt4iZw1gCZMC7thyMNSCf9v6HqI39dH/t+kHvlS+8xjRQdsm8MFuummIaWrQY7zS4YwuhWy6VV1tCqK3sDvglV34ZyD4EWZTIxiRxoZzb/kMCQ/4nDynllHKwRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852066; c=relaxed/simple;
	bh=E3zelDCTh/t8II8UuBRX1FtcJbTydx6/K8VxkByBAQM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fRIzlKLlhrhKglUnK5bqSBgBzIo4Ox2fzanhZhFVXyoUFHLFhJXPo0w49dbpSeW/Xv+TDfZB58DDHEqgo+xDShPvhp8sn29V+l7GYhv9ujS1WoOPhS6O/qmTDJTagI6Y0iiQABDYLs3xWvz0vcpKkMyRXFRLHr/UQ5zjNyrUCgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLnx3t66; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-40a4de175a3so1261490b6e.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752852064; x=1753456864; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qYuxKIpCYIcO+gJn+7H1gBQp96uaiFhZpQnHXL5+kYE=;
        b=XLnx3t66zFzuUFX/hWxVEh+Py2eJ+N7dKWeMWAdPaQ6OJ9SsJViCjIoT71lZPd1L9D
         N3q12WI7ixpjRSSfhIXZMM5AfrLP/T4Ap+Du7yJEG13vw3hYu1hHH6qulJqK2XiILaoh
         XUo0FcXmfdHMK3ATHeayEZKYlsOqMaPFqcqYlgKhRs57scrPyL1j8SiURaJNBSDrchjW
         WzlKsOeVZl9GvbjkkzC43MmZAzDTs3KNFo+yzQZbFDNJgbXBdksLS58mYgTNLVD3D8N1
         1lZzEqyXNOfaex1kaj1bcFni9vUvwZOvY38tIFLiPc/U4s2VQ9oe0jYnH6trRXgIOdZK
         GfnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852064; x=1753456864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYuxKIpCYIcO+gJn+7H1gBQp96uaiFhZpQnHXL5+kYE=;
        b=BPuoBiRf9I3U2h0s14Dp0cPwlw27HU7AWepgiF/cDEeXWfjlB0BYWs2dIDS6UiZA4B
         vN/Xp0WI1NWoJGl48eAfA5L5oNOvFaMkYpIQxpPi1i0GnASjC5P9BykW5EkwbDSGaYRn
         J7a2zdESflCFWhw8hXbopB3/1Iwf2XXDU8UnKMUJ5kSnKylzLI0YQ6KS0YTZEKvTljbN
         Cou8GzDkPoHGd2Yzc8DfJS++gmeE4XtC/mPijMzEpsPcNBwewMScBGeXq/D1ZRDCz8IM
         mWGbHm3uFwFWCb7sUBnB1N8ZffZduhyndFIlwv+cDlccI7NAlhmpQSDoVv69yd6uzzwf
         nFBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwgcErY/Ez0Bkcnu5LGifTawYL7JsXV9P1U76YwMzNpP5G/d8coQlPOa6k/wtGbpjupwlnzhLHRMKt@vger.kernel.org
X-Gm-Message-State: AOJu0YyVbW0i5RhQ1tpS1LwEE+eZ11R4/VYb714pjVoatwwSwcGxGdJJ
	nbDlAeSCqPl095z6X5iNqz1Lb1oZ3L680RGrYqkxqKE8HSk2wXb/QMdlWGOkCLeXdeU=
X-Gm-Gg: ASbGncvLO6k8Tr5Di63hfUNrB9wb33VnnbB8ZzCYXDtY+deoEb5HXV0i+EaW8uTRVlE
	2z+luSQLbBl8jRe6WdjwbPpSMDN9UpN3N28qZLD25VhpC2Xenbub0EAzbZXpUGss1+gij5IfCJj
	Bb6u6CjiwAe6sM2bi+9HTRMBFRn80hqaOQ9kO+Cy7yMlcW5qF2lyycKkzxYsMCNU+W4rtIKzHMe
	u+JRbzcgEk6zCixrDcBCGS2tSOwsyvuGGNgacVpy5M0fvfu1FK3H+foynaiouNit7Y/6N/QDacu
	BfWKpUIc06uEgF+vw7LBdeEEhRxlthQo5LH8HWD8ObJxs+v1KUo2wXPsNn5/NvITEMbu0cHJI7e
	4TWsejKsEZQtBEH20ONNGr4ZNJ5/Keg==
X-Google-Smtp-Source: AGHT+IFHYUOrLnCL26v1j/YOSaFa73FuGV6iSj194qbCo/8B+uaKvogFvTM462nA+ygYaDPEodMSug==
X-Received: by 2002:a05:6808:1301:b0:406:7704:b2e9 with SMTP id 5614622812f47-41d036ec35amr7991928b6e.9.1752852063904;
        Fri, 18 Jul 2025 08:21:03 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:e5d3:a824:1a57:fcaf])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-41fd5951f20sm458273b6e.44.2025.07.18.08.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:21:03 -0700 (PDT)
Date: Fri, 18 Jul 2025 18:21:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Xu Yang <xu.yang_2@nxp.com>, Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: s32g3: Fix whitespace issue in device
 tree
Message-ID: <e4c5fe15-87c8-42d5-b4d7-09e3d1f7e712@suswa.mountain>
References: <cover.1752703107.git.dan.carpenter@linaro.org>
 <52960eb1-4432-436b-89aa-d50fc7da2c3a@sabinyo.mountain>
 <95b3a17e-a5a2-4d84-960c-2539af9d5450@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95b3a17e-a5a2-4d84-960c-2539af9d5450@kernel.org>

On Fri, Jul 18, 2025 at 08:58:19AM +0200, Krzysztof Kozlowski wrote:
> On 17/07/2025 00:46, Dan Carpenter wrote:
> > Checkpatch points out that this should use spaces instead of tabs.
> > "ERROR: code indent should use tabs where possible".
> > 
> > Reported-by: Xu Yang <xu.yang_2@nxp.com>
> > Closes: https://lore.kernel.org/all/u7glt7mn33lbdeskbr4ily6tjjifvffy64llwpi5b2rrhx5tnv@y2h2y3oz3xc4/
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> 
> Patches were not merged, so this should be squashed there... or you
> meant they went with Greg USB? Then no, that's dissapointing, you are
> not supposed to send DTS patches to Greg's subsystem.

I worry that I have accidentally stepped into politics...

Yes, it went through Greg's tree.  I'm just using get_maintainer.pl.
Looking at it now, Greg and linux-usb weren't even on the Cc list for
the DTS patches.  There was probably some b4 magic which let him apply
the whole series.

How was this supposed to have worked?

regards,
dan carpenter

