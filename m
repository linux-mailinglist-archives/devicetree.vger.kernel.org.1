Return-Path: <devicetree+bounces-143699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FED3A2AFAF
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1FB5162C0C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B4019CC3E;
	Thu,  6 Feb 2025 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="iW9zT/X9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC23199254
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 18:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865013; cv=none; b=CWZfuKtlVwJ69tAIhtvYG819lvS98CPk2TMLUGPuJyqhkf4V64vSIXEnhr1/YZJG87E+583yDT8bi5gsiAOuWewQV/zosAYT4M3g08ROQ/T+iTMRfjnrWqchWEPFio/iKwIOcREy+fYsPngMn6+A2dLDuhahXOhLcl/VYfUdKJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865013; c=relaxed/simple;
	bh=VQCtCvsac16QKquJuGnbgwgTL32s+djawtsmmPVSIGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tn5d7Fd1ymsbtgUO0B8dbNFf7cZuUi2b1B6qSpXs34smrOM9Nkd5MBb3tLgfQP2oSmXV1Lisi9TRoZZQuxt/UxbQmEBB+9hy05EFnc2S3OUHaTtNdEmb3hnDKtAb8LvBJqT66n+42J1uGXnR6wgDl5EJeQ/qhQq/Snoc8OmI/WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=iW9zT/X9; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361c705434so8939265e9.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 10:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1738865009; x=1739469809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kR3OVycuCmoqTqRR5D0uJANjV33MoT0CPRB7lcsHjJo=;
        b=iW9zT/X9Wl24BwGF/orVoDcmUSk7kvKdtlNwPRmY+oeJSma9N/EcDczxfaT6mMptkO
         /kjwCIZhAHThBVx3WpVYdxr/HDc1V5TLdwqoG7ZPAk744p0Y0pOfLErMVEeO1JWa029w
         KQeA8INpFGHNRWWXOdh/hL4+K0fS/JzJNIlejbJAVdSXJpmN6gRnsRzWQNNfjdFnguDx
         7VDVlWO6u0aX+t28jaU/eaoyh2/JPgNZISszVZ4QQgO+M/nka1m+THtT8eV5SSSvOjqt
         xlS+Ps3AQKapubxOEt6NB8UXWLyh89bUZdtLjq49iK1PU4/oCPL3tYcxGVrBxYauAEf6
         yYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738865009; x=1739469809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kR3OVycuCmoqTqRR5D0uJANjV33MoT0CPRB7lcsHjJo=;
        b=kEcPSuCvyZ1gl/9PFYQC6O6bOo/4pbx7qx7jLhgiFpn0SlGxgPXiY6CsqdWVFx+c4O
         kT54rUMMsWEOi1LcH2PxvETIojfc2+b8UDevCZBIqX17KmOTSLBIVJSsTcCxklU1BEcB
         aermW3h6za5WzQ+L39PO0qkjSaNk2PgiteoTmbvgTh7fQX+fCQ1zIu0gx4sZGGhm/hcA
         DZ8FytBTnLK7qSCTGLayrCCfCeDDUWjkr0BkrxlNObeHqfvRp2STZp7T12QaJ2AUq6Pd
         QVf4blJWWRtk0+RN0NXlg6PhZlGhVtUWnH9ejBsZSP0JTMZ8zRb6WemzxXxTzHmYFk8s
         u/7A==
X-Forwarded-Encrypted: i=1; AJvYcCWMyXDbOT6myyC95NYJ9vxbLcnqdTvNxWP0XqKpy8+FRYMQ/00OhUTMx17Rym/YST03OuqcWBUzgkhm@vger.kernel.org
X-Gm-Message-State: AOJu0YyQTLK1FKQAkMQOCSWzcO33hlnAMDORK59CkSQ3IUPeKJd25lmM
	JHNwFzNsztfZA/xfgSwky1Y0vTR6UPbvL6oIF39dMtV4rftbCFNI1jlxQyDnvLS8EKYFHqVhSEw
	6
X-Gm-Gg: ASbGncu2NA4/v3+1F4uaOtZozsolQs7sFvaMULLP9MQpHjXa2lK39aWIFVJm0nv8Yz/
	mLahWgo/a013fC4WW+5pcNhNeEX0yMZO3yxddyz0ND0OYL7bvBGAh8PBxi0K3W0x1KTHLywq2Jn
	XzFAQ6tWoJUP8NmI1ON7olt7UddLagMEdvCM7vbt1ITyhoTF7W5vKQvAqLttAglEUIKq/S83pf/
	u1xeilL95BcsDfBj/9xocUdkvqpoZvQlirevtCQBOM4rmo/niB0fk8b54n2o80Jx7Dcx84MdmWw
	dL+xJIk=
X-Google-Smtp-Source: AGHT+IEoc/9XOwlp0DvnbUlLjy/NlRiR7j2XwPEULfDZEUfoxbrwXS8TYDaBV4uvHBf5o/4F0pxwsg==
X-Received: by 2002:a05:6000:1886:b0:38d:b2e4:6d98 with SMTP id ffacd0b85a97d-38db491f10cmr4937014f8f.42.1738865009088;
        Thu, 06 Feb 2025 10:03:29 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38dbdd3856fsm2278858f8f.28.2025.02.06.10.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 10:03:28 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 06 Feb 2025 18:02:35 +0000
Subject: [PATCH v2 2/5] media: ioctl: Add pixel formats NV12MT_COL128 and
 NV12MT_10_COL128
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250206-media-rpi-hevc-dec-v2-2-69353c8805b2@raspberrypi.com>
References: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
In-Reply-To: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
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
index 0304daa8471d..e510e375a871 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1377,7 +1377,9 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
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
index e7c4dce39007..ce07b242c1a0 100644
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


