Return-Path: <devicetree+bounces-238695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9503EC5D617
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E5EF034AA69
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7752E31A55F;
	Fri, 14 Nov 2025 13:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kynesim.co.uk header.i=@kynesim.co.uk header.b="1aJcIsXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7679D136358
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127238; cv=none; b=nyW+BDhPq04pVrzxOioGX0Ka13qvI8zDp5/qTw2fsy+2RWzj3Li/AqC6AVIDZb+6Zeyb8HoqcEFWNoj/Fc9Di8XymnfoCPrObJ9KBnOkFkXayca8vheCI3Y7y+9YoBM79WnH8FQa4hwSAbQLwXBXgWkM5t+qUq8yftAnijSSChA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127238; c=relaxed/simple;
	bh=6OPWkw88SLGOTV0S5cSAZm2veOCUr2frRtUVV9N68e0=;
	h=From:To:Cc:Subject:Date:Message-ID:References:In-Reply-To:
	 MIME-Version:Content-Type; b=lJXFX5hWYakHdQ9GoG6Czmn60GQmOz7HJJqcco84mi7/mypWvOg08W5OjeMudmgU90r0f8Qh+cYhd2pvrwjYYi4s1KpR3ix3eYyxQVoam58V0j/WvQ/nMJd4aYMfk+iVGVlHFIqVq/wVy/tNjbmUul6tyVtUtL3OtwGL87Tut4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kynesim.co.uk; spf=pass smtp.mailfrom=kynesim.co.uk; dkim=pass (2048-bit key) header.d=kynesim.co.uk header.i=@kynesim.co.uk header.b=1aJcIsXg; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kynesim.co.uk
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso14316015e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kynesim.co.uk; s=google; t=1763127234; x=1763732034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:user-agent:in-reply-to
         :references:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wpPC2wtFd4NLEl4Fex1g+49rhMvK8bEF1ED2igQKkxU=;
        b=1aJcIsXgHNGMStIs3tQO+xH3VZFW5xSomEHLaZQmGl9V5rZPQpfpeMCC4hI2FPNxKc
         Rb7koyuK7YKnQ8Cxr0aK1CQvD2HaMkzk+fv0wNnnzey5BmsMuCvIfBkGfmqMjZqSdhsS
         D3zibjy1XvPZwmdS9Q4BuR9WXnIUsvMA6y25aphiHbNHRFq0ebXxHTtjUGh4kJfRvxJZ
         d1GNnNPjw54XE4BwFERzZ/QU1OFfSGMGO0qhscQCGo8fSdbA/3KhB2OayPoarFCPkey+
         fqjhmOLm2UVqL8hNnEZpnauzu0Vjr6p2IEXGbJsDKDLNgQ9kZBzPY/em1F9Zrco+XHBg
         HZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127234; x=1763732034;
        h=content-transfer-encoding:mime-version:user-agent:in-reply-to
         :references:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wpPC2wtFd4NLEl4Fex1g+49rhMvK8bEF1ED2igQKkxU=;
        b=joMWV29jrzp8EwwV5zA4lLXONxh+k61VcVKvcM0wQfx9CxbTJVdU33aG9YCnB1RXqd
         Y1zeVUoXIHI4hyExhf1xccWcBjc0bvqA8UOdnVhTNBJeRF05/9FnaqfDXoJzF+vM1P+T
         liJKJM+7JAWhXdX2z7qfRt6tLiAX52EPChGxDGkfvCx3BEzmebUqpuxcRK9BSoHzNdvi
         ypuyP96GF7d2SEQ3Q8hrdaKcbr/I1V9LRb6HR8Kr4j7WpUT0faB182rXc80n8JvBmps2
         KDrtrgvkQdSigEpo/8vexjPSzqz5wG8njW3gia6OvqEFAyT/iR1xk21JwAIhgzyZdtHr
         l7eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzZPCfuiNMK7OEdAx1tlgiGYBvoFuGPyZoAIdD9Dc1ScvuZNPDqPNPMfBxr2fn8kyjzndmXTuuckUE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtc+MDTHHyxijk0iYgczwTaBhPB/tEJsgDruaXWiluAKFD8Mfr
	4/hCsJ3PoE6JzSliMv2mMufjfurFA6/hwPAPpgy5H4N1jog9Qwolf0UX8Kd/rcOYt3g=
X-Gm-Gg: ASbGncspag3BpxajfQiXOlLTmCXHeycB7jXOAcECxXWK/MuKYQUKPtjmOqPBSEmSEeA
	XE6KR9far5q8DTS6Of6pycqOsQGzNyRLKr81E6PbTHB+gG92Zg7oAj15+t46ghXd7f/f1Tcxgox
	3jvlum6yVmW6CABwvYwh4icwq4e6qJz68WqbPJFchZtwOQCP/T6VIww9ZOICCe6FrOUVPdwl3mz
	BpUITN2rjNJMYqyr5db6DW9SPGaB4ghO1nV6CcsVIkYYYg2DELo+Q9Tccy3cLjdYAyPJMzkEXwT
	Pz8OAujYRHs1yZnhKEfV73Y4jIbU5sp6zLx735K44bIVy5D4SqhbSVyl7QGaV6lg35M59JQpUun
	hOOx/Z7pR54M1fR7xuBvgpytSbm7Jcb6DM+UqJtqPkN8itlHfvEyVlJZi2SXWwm1Fqz+Tyg+Dxv
	YdxutPt+crocVNI5G7Qz99WPRCx/YFQ/BY9QACG75PEBfxEBUaDZ7nwQxxpn3osGGEKfYHftRDn
	waVHtlDjw==
X-Google-Smtp-Source: AGHT+IFSfYp+TEIQ0ghuAn77Ll5FRjYgRRifxjJaxX6xb5D05/JuUxVRrH0WsOS6QGKVmw+kLQGajg==
X-Received: by 2002:a05:600c:1d01:b0:477:54cd:200f with SMTP id 5b1f17b1804b1-4778fe69569mr30877955e9.9.1763127233520;
        Fri, 14 Nov 2025 05:33:53 -0800 (PST)
Received: from CTHALPA.outer.uphall.net (cpc92886-cmbg20-2-0-cust122.5-4.cable.virginm.net. [82.20.18.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bb34295sm44948895e9.2.2025.11.14.05.33.52
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 14 Nov 2025 05:33:53 -0800 (PST)
From: John Cox <jc@kynesim.co.uk>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>, Sakari Ailus	 <sakari.ailus@linux.intel.com>, Laurent Pinchart	 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, Broadcom internal kernel review list	 <bcm-kernel-feedback-list@broadcom.com>, John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, review list <kernel-list@raspberrypi.com>, Ezequiel Garcia	 <ezequiel@vanguardiasur.com.ar>, Stefan Wahren <wahrenst@gmx.net>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/5] media: ioctl: Add pixel formats NV12MT_COL128 and NV12MT_10_COL128
Date: Fri, 14 Nov 2025 13:33:53 +0000
Message-ID: <vnbehk9a1e1pn6qv2qj8tcaj5l62u0dul9@4ax.com>
References: <20250701-media-rpi-hevc-dec-v4-0-057cfa541177@raspberrypi.com> <20250701-media-rpi-hevc-dec-v4-2-057cfa541177@raspberrypi.com> <e99ff4f12d52eee03075f911e6b904290b47a961.camel@ndufresne.ca>
In-Reply-To: <e99ff4f12d52eee03075f911e6b904290b47a961.camel@ndufresne.ca>
User-Agent: ForteAgent/8.00.32.1272
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Nicolas

>Hi Dave,
>
>sorry for the long delay.
>
>Le mardi 01 juillet 2025 =C3=A0 17:01 +0100, Dave Stevenson a =
=C3=A9crit=C2=A0:
>> Add V4L2_PIXFMT_NV12MT_COL128 and V4L2_PIXFMT_NV12MT_10_COL128
>> to describe the Raspberry Pi HEVC decoder NV12 multiplanar formats.
>>=20
>> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
>> ---
>> =C2=A0drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
>> =C2=A0include/uapi/linux/videodev2.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | 4 ++++
>> =C2=A02 files changed, 6 insertions(+)
>>=20
>> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c =
b/drivers/media/v4l2-core/v4l2-ioctl.c
>> index 650dc1956f73..3bdcbb12bb30 100644
>> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
>> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
>> @@ -1381,7 +1381,9 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc=
 *fmt)
>> =C2=A0	case V4L2_PIX_FMT_NV16M:	descr =3D "Y/UV 4:2:2 (N-C)"; break;
>> =C2=A0	case V4L2_PIX_FMT_NV61M:	descr =3D "Y/VU 4:2:2 (N-C)"; break;
>> =C2=A0	case V4L2_PIX_FMT_NV12MT:	descr =3D "Y/UV 4:2:0 (64x32 MB, =
N-C)"; break;
>> +	case V4L2_PIX_FMT_NV12MT_COL128: descr =3D "Y/CbCr 4:2:0 (128b =
cols)"; break;
>> =C2=A0	case V4L2_PIX_FMT_NV12MT_16X16:	descr =3D "Y/UV 4:2:0 (16x16 =
MB, N-C)"; break;
>> +	case V4L2_PIX_FMT_NV12MT_10_COL128: descr =3D "10-bit Y/CbCr 4:2:0 =
(128b cols)"; break;
>> =C2=A0	case V4L2_PIX_FMT_P012M:	descr =3D "12-bit Y/UV 4:2:0 (N-C)"; =
break;
>> =C2=A0	case V4L2_PIX_FMT_YUV420M:	descr =3D "Planar YUV 4:2:0 (N-C)"; =
break;
>> =C2=A0	case V4L2_PIX_FMT_YVU420M:	descr =3D "Planar YVU 4:2:0 (N-C)"; =
break;
>> diff --git a/include/uapi/linux/videodev2.h =
b/include/uapi/linux/videodev2.h
>> index 9e3b366d5fc7..f0934d647d75 100644
>> --- a/include/uapi/linux/videodev2.h
>> +++ b/include/uapi/linux/videodev2.h
>> @@ -697,6 +697,10 @@ struct v4l2_pix_format {
>> =C2=A0#define V4L2_PIX_FMT_NV12MT_16X16 v4l2_fourcc('V', 'M', '1', =
'2') /* 12=C2=A0 Y/CbCr 4:2:0 16x16 tiles */
>> =C2=A0#define V4L2_PIX_FMT_NV12M_8L128=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
v4l2_fourcc('N', 'A', '1', '2') /* Y/CbCr 4:2:0 8x128 tiles */
>> =C2=A0#define V4L2_PIX_FMT_NV12M_10BE_8L128 v4l2_fourcc_be('N', 'T', =
'1', '2') /* Y/CbCr 4:2:0 10-bit 8x128 tiles */
>> +#define V4L2_PIX_FMT_NV12MT_COL128 v4l2_fourcc('N', 'c', '1', '2') /*=
 12=C2=A0 Y/CbCr 4:2:0 128 pixel wide column */
>> +#define V4L2_PIX_FMT_NV12MT_10_COL128 v4l2_fourcc('N', 'c', '3', '0')
>> +			/* Y/CbCr 4:2:0 10bpc, 3x10 packed as 4 bytes in a 128 bytes / 96 =
pixel wide column */
>> +
>
>Nothing to report here, it looks good. I can't remember, was there a =
reason not
>to add this format to ./drivers/media/v4l2-core/v4l2-common.c ?

I'll do that for the next patch. I think they can be described now.

John Cox

>Nicolas
>
>> =C2=A0
>> =C2=A0/* Bayer formats - see =
http://www.siliconimaging.com/RGB%20Bayer.htm=C2=A0*/
>> =C2=A0#define V4L2_PIX_FMT_SBGGR8=C2=A0 v4l2_fourcc('B', 'A', '8', =
'1') /*=C2=A0 8=C2=A0 BGBG.. GRGR.. */

