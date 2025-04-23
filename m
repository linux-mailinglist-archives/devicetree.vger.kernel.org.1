Return-Path: <devicetree+bounces-170024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99154A99660
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 19:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CB54188BB5B
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 17:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E8028BAA8;
	Wed, 23 Apr 2025 17:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="c8L33zSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B4B28B4F3
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 17:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428842; cv=none; b=WU0bc7qpfx8ChEsrf+5264fvWZsJtn0Q432FiNHNEuxc0gN1P5G6YY+0XmXgBpNwqEnJOCZamG19L3KkGxXgPDM52LrKlq19CcVLEyCuKM/DJ1Oq5WitLHRxpB3CdEStUjSxNFUa/9KsbrhCnUKwZpED+Pv8P5aOTkt3zs5cRF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428842; c=relaxed/simple;
	bh=wMlOFTd70RMJCXwC9bQyxic8c20g9i+LxAT9YJ/SitA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LFgJfY8SvKgePGQKywtTDEWzCBa/I8wkkezkCHrdDTHt19UWeStr2lBHmxOaIvXRQG1Dy1YFCBMkVS0AGTuctraNK+C+BUQVKnTPaYfCO5DmgAtxOpNO/wUXCrg3hkL92I9XipNXTyrk+eGGSYhDHrI644La2A+8fk2AamQSmkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=c8L33zSM; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43edb40f357so781765e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 10:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1745428839; x=1746033639; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4rqGU6lspHQHS3YtpHeS52QHTuXwrfXzLgazS3+iqpY=;
        b=c8L33zSMO7eBTCkikx0lf1XRNoJbXj03CtzDDctCMwcHc3gjFSli27MkySsPCTwO/G
         GdDN5t8RFhw7R2mT8qbZHB+Rm7q/1d9/3+zMSLd7Ty8907C2ceGVEQAR3JUKhZzRBXR1
         EoLsrgd27v6OWh4MOI/aY7PFpxDFdZmRsbA3IVhMoRlFDdPbaPvBd0qQCX2zEAn7m/7j
         xDzCPmVU+liM3qrOuNIpyndGW3Cz7VaL4LzgFyCYPuQMs+Rw7w3ixTm4Z8rRP+RO2xH+
         tdwtQuDU3u3Cp3a3eRtjH114oisIiOqGUG7FmZ89dT743bwSlA/iUSI7KOEaAcxCX+Ae
         b/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428839; x=1746033639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4rqGU6lspHQHS3YtpHeS52QHTuXwrfXzLgazS3+iqpY=;
        b=sIhacL8BxEB5an6JH5wrlYViIZffsJaixvBdadID4JFcIZNHLuynqdkYmswBCqnULB
         n/LvQojP/QT/Zf7vcpfoTWR1hcd0QSnvS/RjMWbe41kf4j8ObWNj1BPMZDWnKUePuTtR
         fK2IWqVlk//w+TSgg6iWwLnU/+p1sFc8P6rZ4jFM8/f4dS1HYLvr+0ug3bl64h7naM3W
         uWQTujqg1D0us+6qMVHl9m8POf5zgxAQnlwVCCCzxcthOeUfiVYmbeTpRmCxvmKiboaL
         o3mwmcn7uJ1oCMwmGGl9SAMkOMWdMZkFP0d2YOKX/R59PhCzYw34AYa1/HpVj4tzL9S5
         tfZA==
X-Forwarded-Encrypted: i=1; AJvYcCUq8In7dAE9UtKSOX0xCh5QDdKcGpdn+QvHNZStpniHOk222w9IKN1ImuAJ1PtLtNca7DolKBcutMsL@vger.kernel.org
X-Gm-Message-State: AOJu0YxHYrs5oy5g6g0lz0zSmrWq9hY4Fx7Rk0PF8MUD+dfXe7XCEJAy
	wKY+IOEl5ARf3K31VnVF1A3U8CpF4v1oBeD+0/YlBRyde5ebVt2/dqXV/hhxVOc=
X-Gm-Gg: ASbGncsdPtzm9POnqkRFEqmNuvaZ6xc7VwNn2VCbMDEeUlJlUZfqTyzPZD/JbJ6y75q
	qXk0hto3yOlvJAoFnUmrb4PbaBPGD4Rwxxv4GYkfdgDFz8LGNfC5sEA52olMQWvuzUsGAAQ3sq7
	AaSgNDrcCLU5cBckS4mMSR48ItZZyhJ0LZSdMpLL3gbwE9tIJWrNupOlUwXR4PiGIysWSIzMONn
	f5dnVbp8xIK6C9w1ZyK1qOKWeaYrMg9Zs5YEzXOHrP6ypgNhvLP+V7qa5yvvUjN7LnDESmmH/kM
	ybJhtj0ka2ML+ZBeHncKZt0FAdWhXMW/
X-Google-Smtp-Source: AGHT+IGrixIUdFwDqxJsP0Mh+PleUdGsoK+ZibZSwUPFmb7HHGdjv1z9p7Q1wXmc1rZnucAiLmqGBA==
X-Received: by 2002:a05:600c:34c6:b0:43d:209:21fd with SMTP id 5b1f17b1804b1-4409a1c4da7mr3750025e9.30.1745428839115;
        Wed, 23 Apr 2025 10:20:39 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-44092d18433sm32940945e9.1.2025.04.23.10.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 10:20:38 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Apr 2025 18:20:19 +0100
Subject: [PATCH v3 2/5] media: ioctl: Add pixel formats NV12MT_COL128 and
 NV12MT_10_COL128
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-media-rpi-hevc-dec-v3-2-8fd3fad1d6fb@raspberrypi.com>
References: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
In-Reply-To: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Add V4L2_PIXFMT_NV12MT_COL128 and V4L2_PIXFMT_NV12MT_10_COL128
to describe the Raspberry Pi HEVC decoder NV12 multiplanar formats.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
 include/uapi/linux/videodev2.h       | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index a16fb44c7246..9405e1391617 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1379,7 +1379,9 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_NV16M:	descr = "Y/UV 4:2:2 (N-C)"; break;
 	case V4L2_PIX_FMT_NV61M:	descr = "Y/VU 4:2:2 (N-C)"; break;
 	case V4L2_PIX_FMT_NV12MT:	descr = "Y/UV 4:2:0 (64x32 MB, N-C)"; break;
+	case V4L2_PIX_FMT_NV12MT_COL128: descr = "Y/CbCr 4:2:0 (128b cols)"; break;
 	case V4L2_PIX_FMT_NV12MT_16X16:	descr = "Y/UV 4:2:0 (16x16 MB, N-C)"; break;
+	case V4L2_PIX_FMT_NV12MT_10_COL128: descr = "10-bit Y/CbCr 4:2:0 (128b cols)"; break;
 	case V4L2_PIX_FMT_P012M:	descr = "12-bit Y/UV 4:2:0 (N-C)"; break;
 	case V4L2_PIX_FMT_YUV420M:	descr = "Planar YUV 4:2:0 (N-C)"; break;
 	case V4L2_PIX_FMT_YVU420M:	descr = "Planar YVU 4:2:0 (N-C)"; break;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index c8cb2796130f..fbccb471e3cb 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -687,6 +687,10 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_NV12MT_16X16 v4l2_fourcc('V', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 16x16 tiles */
 #define V4L2_PIX_FMT_NV12M_8L128      v4l2_fourcc('N', 'A', '1', '2') /* Y/CbCr 4:2:0 8x128 tiles */
 #define V4L2_PIX_FMT_NV12M_10BE_8L128 v4l2_fourcc_be('N', 'T', '1', '2') /* Y/CbCr 4:2:0 10-bit 8x128 tiles */
+#define V4L2_PIX_FMT_NV12MT_COL128 v4l2_fourcc('N', 'c', '1', '2') /* 12  Y/CbCr 4:2:0 128 pixel wide column */
+#define V4L2_PIX_FMT_NV12MT_10_COL128 v4l2_fourcc('N', 'c', '3', '0')
+			/* Y/CbCr 4:2:0 10bpc, 3x10 packed as 4 bytes in a 128 bytes / 96 pixel wide column */
+
 
 /* Bayer formats - see http://www.siliconimaging.com/RGB%20Bayer.htm */
 #define V4L2_PIX_FMT_SBGGR8  v4l2_fourcc('B', 'A', '8', '1') /*  8  BGBG.. GRGR.. */

-- 
2.34.1


