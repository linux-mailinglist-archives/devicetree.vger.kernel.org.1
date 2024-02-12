Return-Path: <devicetree+bounces-40715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB5A8514BE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2A931C227AC
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2E23FB15;
	Mon, 12 Feb 2024 13:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WrFfZpJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D453FE22
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707743662; cv=none; b=urS0n6hI0YK9D94vCBu+wU2H3dsov4CFFbSfpVVh2yVwtSlTMYMHFGbf6f48TB1WKz3V6iGrIPwkg6bUnclrDilvqVeBz5JK0AwqExT7GBTbdWXJU1JgA/4zFEcjAsNaMdDmiRfVZoK3yy2yq7faCDyt4QSJwLZVigrsCUFkouI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707743662; c=relaxed/simple;
	bh=44gbYdkUjK/VyqM35SbTTnBnkkPFnzVy/nqzzk4zJBQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=n0CcTGTeYE6LguQfbgo4oh55LX1V75ixaijY69DCI8pZWLq2QjFPtIXd6aeK/2mfp28klKAKCEan3IUC9egKp08nl0yGeNpieqBa48d8MOEKMi9DOmI4h/ZjGvDWxwTahhjcEWwdeqv48V6ni7EP7eWMlYHbdlCEhUjlGmV4uig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WrFfZpJG; arc=none smtp.client-ip=209.85.128.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-410422e8cd1so19338315e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707743659; x=1708348459; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9j4Lx9tyhvatf/UB1EXBEYAcw6HSL3npB5akS3xX/6Q=;
        b=WrFfZpJGl2UP9WRLyFy5TzfKZJQL/Iinb1N4BS/Akwt0WaMIn9bj4BOC8du7cIqMlT
         /roF1YB2ohNNL4JfD+IXbkvPSm50oE9zizW5z0NybVK2zBtW60FMpAvTxaHTsyB3IYm4
         UNjteobMKQz6vxVAk9u4qALqgy0lBR9p6az1ZxfBXRbjIR3J5wdVutk+j1ILTcx5HyzT
         fAIA6ozzI6f5ok7wN130WSefrP8vmqHClp+A/s31VzK7BQk8cW8E6rgWFtAqBhbeenEY
         BTe8nk8TfQ70LIh8xOAsoxYhu06JEbXrZ1NOp5VEkHJPqIifeBNBiwatQmYt5FMoA4n8
         Kruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707743659; x=1708348459;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9j4Lx9tyhvatf/UB1EXBEYAcw6HSL3npB5akS3xX/6Q=;
        b=u71OkatpHuYRMbbPR/KcbtgQgJXHpid57kUkO7y2Gw9MKzzvKiT2wmhIldRFIm1NNW
         01cLMkBGmQ3qyY7JFI1L+R90dPRDW3hWPKT+z2rreFgofKZ3OYJFXNkkMGJK/oboya5r
         4SoFu6UHJo+n/9Oz5n3sldnMkwhQHOrCV4/lor4hAzzZ9oz0Cd+KLzmD7v2W45Tdzyzv
         uXqkt8ITS4bK61aH4tmCKmeufvdMtyCIwSoGiF7RNYgHFihr6F9+JR452FrQtNxbRDv7
         D0wRIMl96D4MeDji02sQH6J8uEFgPlKPCvbdnhihv8Ak8zGbSaPZpPqXIUt/iv7vpe2k
         HvdA==
X-Gm-Message-State: AOJu0Yw92YsPfPg0iQHK55BJURPjOrOohuDFDEFiaGqBQyv0xFHSnhio
	+ei2yN9qa1ZEOgwJj26P88RGDiclphqqeuP+miR2SJpXcVVNziuGginPfJh0dEtaJeRcUSOHPbn
	7n4NVb1dUhg==
X-Google-Smtp-Source: AGHT+IHdGf1zsqlIjaw5dRK/aSKf1uPqY+pJGSDB6Zn96kKbNMcrq4+wzpwRbGGHfIXhRNnKW33OovqNk+ntOg==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:a7b:c2b2:0:b0:410:c0e6:c975 with SMTP id
 c18-20020a7bc2b2000000b00410c0e6c975mr12370wmk.4.1707743658932; Mon, 12 Feb
 2024 05:14:18 -0800 (PST)
Date: Mon, 12 Feb 2024 13:13:15 +0000
In-Reply-To: <20240212131323.2162161-1-panikiel@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240212131323.2162161-1-panikiel@google.com>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Message-ID: <20240212131323.2162161-2-panikiel@google.com>
Subject: [PATCH 1/9] media: v4l2-subdev: Add a pad variant of .query_dv_timings()
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, ribalda@chromium.org, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Currently, .query_dv_timings() is defined as a video callback without
a pad argument. This is a problem if the subdevice can have different
dv timings for each pad (e.g. a DisplayPort receiver with multiple
virtual channels).

To solve this, add a pad variant of this callback which includes
the pad number as an argument.

Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
---
 drivers/media/v4l2-core/v4l2-subdev.c | 11 +++++++++++
 include/media/v4l2-subdev.h           |  5 +++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-cor=
e/v4l2-subdev.c
index 4c6198c48dd6..11f865dd19b4 100644
--- a/drivers/media/v4l2-core/v4l2-subdev.c
+++ b/drivers/media/v4l2-core/v4l2-subdev.c
@@ -389,6 +389,16 @@ static int call_enum_dv_timings(struct v4l2_subdev *sd=
,
 	       sd->ops->pad->enum_dv_timings(sd, dvt);
 }
=20
+static int call_query_dv_timings(struct v4l2_subdev *sd, unsigned int pad,
+				 struct v4l2_dv_timings *timings)
+{
+	if (!timings)
+		return -EINVAL;
+
+	return check_pad(sd, pad) ? :
+	       sd->ops->pad->query_dv_timings(sd, pad, timings);
+}
+
 static int call_get_mbus_config(struct v4l2_subdev *sd, unsigned int pad,
 				struct v4l2_mbus_config *config)
 {
@@ -489,6 +499,7 @@ static const struct v4l2_subdev_pad_ops v4l2_subdev_cal=
l_pad_wrappers =3D {
 	.set_edid		=3D call_set_edid,
 	.dv_timings_cap		=3D call_dv_timings_cap,
 	.enum_dv_timings	=3D call_enum_dv_timings,
+	.query_dv_timings	=3D call_query_dv_timings,
 	.get_frame_desc		=3D call_get_frame_desc,
 	.get_mbus_config	=3D call_get_mbus_config,
 };
diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
index a9e6b8146279..dc8963fa5a06 100644
--- a/include/media/v4l2-subdev.h
+++ b/include/media/v4l2-subdev.h
@@ -797,6 +797,9 @@ struct v4l2_subdev_state {
  * @enum_dv_timings: callback for VIDIOC_SUBDEV_ENUM_DV_TIMINGS() ioctl ha=
ndler
  *		     code.
  *
+ * @query_dv_timings: same as query_dv_timings() from v4l2_subdev_video_op=
s,
+ *		      but with additional pad argument.
+ *
  * @link_validate: used by the media controller code to check if the links
  *		   that belongs to a pipeline can be used for stream.
  *
@@ -868,6 +871,8 @@ struct v4l2_subdev_pad_ops {
 			      struct v4l2_dv_timings_cap *cap);
 	int (*enum_dv_timings)(struct v4l2_subdev *sd,
 			       struct v4l2_enum_dv_timings *timings);
+	int (*query_dv_timings)(struct v4l2_subdev *sd, unsigned int pad,
+				struct v4l2_dv_timings *timings);
 #ifdef CONFIG_MEDIA_CONTROLLER
 	int (*link_validate)(struct v4l2_subdev *sd, struct media_link *link,
 			     struct v4l2_subdev_format *source_fmt,
--=20
2.43.0.687.g38aa6559b0-goog


