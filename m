Return-Path: <devicetree+bounces-140675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF1FA1AF2E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 04:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D308F7A5168
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 03:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9631D63E3;
	Fri, 24 Jan 2025 03:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ioERmeCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F361D63DA
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737690865; cv=none; b=COOfUnU+b52CKXMQf1QQqCg9sSxlIavpjpdMBHjBQnXz8HSlSUDCiKJckFghZfykOBmiSVef1AFl2tDylu39rYzl1RZ1U/9ZxrRdN7g5uhoqcTXjeFMdn1813bGHXKem5Hvi4EF77jMh+myNWveY1frkK43auU1wM9LarPsD9Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737690865; c=relaxed/simple;
	bh=7SJYfNaQixDgAN2Y+cvoyflisp9x9nwhGNxUCEmIS5U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nLdWGcgngt/hFdAW1R6rOBGd5ndDpQlYMsV1pwthuEjQNre6MvJQBmbfBiYB6guPp+Li00OmD1K90fNgthf6N+ZEXpehE5AglrvlT593Nr+q2qjVn3DbdLGSKdt7cI2PynrngyHJ7T+hKbj9yFFkjJUDoCruHY9uKs5I3DFShsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ioERmeCe; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-5da135d3162so2712571a12.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 19:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1737690862; x=1738295662; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SJYfNaQixDgAN2Y+cvoyflisp9x9nwhGNxUCEmIS5U=;
        b=ioERmeCejf0tZA/DQexNiam15wJqW0wTC+xDf+tbrgqWa2s++JhGoWpzHpygK7EmS6
         NHG+MWjWZFU7TJ9TTVRjHkuLZZJ8Q0c7rDZzpCAm9l+y84rFjFIc2cZYLPrloHMFBuFS
         AncrcoT9pkO8rz4zZYJYwcX++XnLnmh/fX45d+5uy/lxEgaKDVD4fyEUFfUoEexbhy/h
         uxpQuX0bBTVnTvJi5yrNw86n8FP6KhjWNf9a7b7PTYiaqkFKzrOHHw2nfBetyPOlV5tV
         ZDwhMPUcsohirPg7kfE2VozwU9Q5n5v4RY3I514CwKcRbAgAQ5W0u4/W2/dG/sAHU8LL
         zKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737690862; x=1738295662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7SJYfNaQixDgAN2Y+cvoyflisp9x9nwhGNxUCEmIS5U=;
        b=SheG8jy+rCyYyHRdEj3kid/EbhILPIblkvq2kJCtNHa0GH4TBhktXnMCsFJkmivLtv
         p/P4RUYObyA472UWFQAdA+GdIuGxc7f6e7CUfc4yshRmF8Abkg2jPx4bAz/ZC7C/iH1O
         Ko2gC6oU6juwemXLPGr31BgrZi0Sig4L10h6M2EyvaMS3S3o+FHuatthhSamnMspiXSN
         UhEFTZwSzcojMs56g+4ktB6Gp2wAth+i4RBERp0rAZc4RfNGzoxQqvBRPNEJuvff7Cny
         UEl2iY3LUX9laX1Sq5z8gWQ3kyT7zD+ucGEp5O8wCO7lh3G/JqvF6zV7fFfWt5DDGMux
         JDdA==
X-Forwarded-Encrypted: i=1; AJvYcCUdvoBcBKKnzlfFmqjZ4KbgtvNAxJxuuq06TIbMCUP6sqJbvPXyHtLd4FRc5kArwCb4tKny2gt69nWp@vger.kernel.org
X-Gm-Message-State: AOJu0YzZQIWSl3jPahRA9ypi/j4kpKmw26vUkL5S6f5n80MFU3ussTSO
	yc3T5z72aOF2lRfRrUG4glRLTjunuGub396RraysYHMgbyC5g/fAtb+ldyYENcB2lLFFpmkILID
	lHZ4kshD7xs0ZxnEuBKGSfI/LZZCUy7DtIQbCZw==
X-Gm-Gg: ASbGncvAgU8Xna4LVCdpmlkrCOhe5DxNRAkGgSnnsaNaZyOteNjLo8qeMLBSGBHViEO
	8s3YHworV+KKUpYbfkHf231f8sgfwtFpJ3I5+3E/5jsNY8cH/tXmkQTqORUif3ASxUd2jfLHSEA
	==
X-Google-Smtp-Source: AGHT+IF8bVXy7iYErZ8SedJ5V/in/H73YbvG7t1RAexKW9SaCUsQjnP2VH6byiDyREO6wZOTw/C2zCUAkuuSCRZMhhs=
X-Received: by 2002:a05:6402:849:b0:5d4:75b:8ced with SMTP id
 4fb4d7f45d1cf-5db7db2c371mr25393812a12.32.1737690861691; Thu, 23 Jan 2025
 19:54:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
 <20250123064758.743798-2-yelangyan@huaqin.corp-partner.google.com> <CAD=FV=Vr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6vW_azMARZQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Vr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6vW_azMARZQ@mail.gmail.com>
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Date: Fri, 24 Jan 2025 11:54:10 +0800
X-Gm-Features: AWEUYZlvVzjDKdhtKmsHEYmOfyIMPbtjP2fRkgFUgH8QBR-mYVhMfVRyQ_imAuE
Message-ID: <CA++9cvpBHN-i82mMwd_WZZrDGEQog2DmUSWcE9hDxsREyhNdrg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: panel: Add compatible for
 KD110N11-51IE and 2082109QFH040022-50E
To: Doug Anderson <dianders@chromium.org>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Doug,
Your suggestion is very helpful to me, thank you.

I confirmed the controller chips of these two panels, and it turned
out that they use the HX83102 IC, so the correct approach is that I
should add these two MIPI panels to the binding file/driver of the
MIPI controller of HX83102.I would like to ask if I need to release a
v5 version or resend a new email if I do this?

Thank you again for taking the time out of your busy schedule to guide me.


Doug Anderson <dianders@chromium.org> =E4=BA=8E2025=E5=B9=B41=E6=9C=8824=E6=
=97=A5=E5=91=A8=E4=BA=94 01:46=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> On Wed, Jan 22, 2025 at 10:48=E2=80=AFPM Langyan Ye
> <yelangyan@huaqin.corp-partner.google.com> wrote:
> >
> > KINGDISPLAY KD110N11-51IE and STARRY 2082109QFH040022-50E are
> > 10.95-inch WUXGA TFT LCD panels, which fits in nicely with the
> > existing panel-boe-tv101wum-nl6 driver. Hence, we add a new
> > compatible with panel specific config.
>
> FWIW, this is still missing acting on a request that Krzysztof made.
> Specifically, instead of the above wordy patch description, he
> suggested a much simpler patch description that was just one sentence.
> I could believe his suggestion may be difficult to understand if your
> English isn't strong. He said [1]:
>
> > "Add a new compatible for foo bar panel ....". One sentence. Could be
> > also one patch, not two patches
>
> Putting that more concretely, you'd want to change your patch
> description in this case to:
>
> Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
> STARRY 2082109QFH040022-50E.
>
> ...and that's it.
>
> Personally I wouldn't send a V5 just for this, but if Krzysztof
> requests it strongly then I wouldn't object.
>
> That all being said, the part of the CL description that Krzysztof
> wants you to trim is actually somewhat relevant to me if I am to give
> a Reviewed-By tag. The agreement from DRM folks seemed to be that we
> don't want to jam all MIPI panels into one bindings file and one
> driver. The idea is that they should be organized by the controller
> chip. For some history here, see [2] and all of the discussion in
> response to a previous patch [3].
>
> So the question is: do the new panels you're adding actually share the
> same onboard MIPI controller as the other ones in this file? If not
> then you _do_ need to spin your patch. If there's already some other
> bindings file / driver for the MIPI controller in these panels then
> you can add to that. If not then you'd need to add a new bindings file
> and a new driver.
>
> [1] https://lore.kernel.org/r/9cf4efd5-cc4b-492c-a1f3-18a19ba7afeb@kernel=
.org
> [2] https://patchwork.freedesktop.org/patch/msgid/20240516072039.1287065-=
3-yangcong5@huaqin.corp-partner.google.com
> [3] https://lore.kernel.org/all/20240410071439.2152588-1-yangcong5@huaqin=
.corp-partner.google.com/

