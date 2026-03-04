Return-Path: <devicetree+bounces-271071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLo6D40+qGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:15:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E66B201269
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44D063079FF7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D16E3BED2F;
	Wed,  4 Mar 2026 14:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="GWpZA/A9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C603BD64C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633127; cv=none; b=bjEXjtkdoNbZTucY32OFDPg3ju8Tsgr1Mszmew78kl0w9djW4eRbMfcB0Ytimkh0Z/Nq3pxrRTYEdLb1a+itPpNFmfxYSb2pyD7nJx4Pvqz/4pxbJaS9gtK2ocwcUoP8Ud6JzMjVATBLSke2WkAoO4OwV0GbLH92MFMQJplegHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633127; c=relaxed/simple;
	bh=Yw+jJSG+gjftaI890ltLw9XWLxe0BcSmmB7/KW90xkc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cGlmr2qtEWT8hzRfRFIg0jwC1zK3IZjlCpWfmZ3MkeUm77KR0b7An0ppOAc7jflwVZ8nOirWUHJlfF2d66EivB1QpZjXwpVvHIZlLxe519UJROeFcZe1TqGpJvCaffut+WPW26r6We06QOwjYwzIFwE8tmrsugkQhkjQxc/JwVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=GWpZA/A9; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48374014a77so83672525e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772633122; x=1773237922; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D22wsJVQwr9074cfNWay5oaTG2nKsW+DfTWeOhL5zHU=;
        b=GWpZA/A9ZBOjDe/lxFHHx67vsr0ZEtb0LOiCo0L8ocbuIqgoxaLKGgv93DGjClJJd6
         Ba82ssrBcSjoKtolGKwuXseZlSptHAR30RLaTO/y+1tKO3iHr3jRksWLcRDjUNGLK5yk
         bp/DR4+OLfr6CbK+1r/MpMTUvfzQNlJxMd68nPNRzCgebj5Jqkp2TUk4wZ2hDmw+10BM
         JvWAKKIn1F8nw8+XGdgU1gPKsRcB8PsEFjpIPCH2gSiQJQ2IcpnqbSPX6lF7mlybk2hf
         ZLIS7G+evw1lRlXQ4YggRSTpB+0pJsgPOpzZgVBx4PNNck1vXCRs/3vD0RNm+kKhn4yG
         K1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772633122; x=1773237922;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D22wsJVQwr9074cfNWay5oaTG2nKsW+DfTWeOhL5zHU=;
        b=IWpxQfGHmd9LmuoAxpfoWKZ6we+a0nwm+KN+U+vt8rX6wcIxaaO/GXb50Dl0syPYRS
         C7fUuZNxU3abMMBTnnronzLgM6dY0UpME91gaesZQTKd4as3e3ffi7PPcgWX6SCPLz3c
         PFg87Lu9NWfpO/T8WM4hhRx1HxJHqPYIRYXJALS2iJbE3NRQxSncOVA47j/Zhtxv/URb
         iG1bPo3iYiDV5hRjVnblvaqCC8ZyKCgKVC9Ww8c6OzdjQSOgyJBZWiY+iC2loPsEaIh7
         2XkJcvh7BFXlpJRB7tRQWjS0JIvOF4PWUyHyXZa7UCmO1MXrBj4F4CzpCly+SKUN+jc1
         kl9w==
X-Forwarded-Encrypted: i=1; AJvYcCWkP6afoCPjfVIk7ECYW9VulQUvBbJg34YVyBtc8GaObzF3AxRMqULNVRAUFwaaEpQG/HLn7etyxTSm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0G3O4FhhFGa3qyeHvUoyy4mZ0OYKnXblzX5uyAwDU4IJtpgoW
	epUF2UBjk97bz2ImiuLJVzepeOMNgSZJwSL7rMwefurmxOtf0efjksLj54FhY5HnPMo=
X-Gm-Gg: ATEYQzzgHcojskM+NX0j4jzDP/0f/5X5eeqzDxipI9bpqSGz3BLw+VPTQxpGZM9O42b
	hf05SLE5K4bpXCCSawCVnH6rbi2Rkg2DCC6x/MUWbQUW1DxE7YXBdxRHf6q/fMJ5nVmt6wdu6Bl
	dJNBgoOHeN6dflCfWnMXjXexD8WhE8m7mw/dsC/xQ362JzJIidgRpuc1DotcpU2eR14q4B7fymU
	8I4Xe87ZGNhLg5VXN0jREfRwMAVxTKaRTb8XD7kQc09+URQLXDk57SlhpzIIHusmASDWxoNlhBS
	Fdku1cVDmV8sj6Mkjhxl4gBlvfJZYJQ5xjU/vDijPsa5wfyK9NLQ7BV6L8UiJD3OxNye/DhsZWM
	W6G8nyPitaB9Yy7lCLr7uJ4jTmJeKkb+CbPQtuwDufzaX9+LWTrgYLQfljlSZ+bxtTEjSz8d0Yl
	W04cOwmcA3PvUFQw==
X-Received: by 2002:a05:600c:1d26:b0:47d:5e02:14e5 with SMTP id 5b1f17b1804b1-485198310e2mr38068595e9.5.1772633122287;
        Wed, 04 Mar 2026 06:05:22 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-485187b6ffbsm59296165e9.2.2026.03.04.06.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:05:21 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 04 Mar 2026 14:05:16 +0000
Subject: [PATCH v6 3/6] media: ioctl: Add pixel formats NV12MT_COL128 and
 NV12MT_10_COL128
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-media-rpi-hevc-dec-v6-3-93868ae6dff8@raspberrypi.com>
References: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
In-Reply-To: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 John Cox <jc@kynesim.co.uk>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1
X-Rspamd-Queue-Id: 9E66B201269
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-271071-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,raspberrypi.com:dkim,raspberrypi.com:email,raspberrypi.com:mid,siliconimaging.com:url]
X-Rspamd-Action: no action

Add V4L2_PIXFMT_NV12MT_COL128 and V4L2_PIXFMT_NV12MT_10_COL128
to describe the Raspberry Pi HEVC decoder NV12 multiplanar formats.

NV12MT_COL128 has been added to v4l2_format_info.
NV12MT_10_COL128 has not as the block width is not a power of 2,
but the framework uses ALIGN with the value.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/v4l2-core/v4l2-common.c | 2 ++
 drivers/media/v4l2-core/v4l2-ioctl.c  | 2 ++
 include/uapi/linux/videodev2.h        | 4 ++++
 3 files changed, 8 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 554c591e1113..20a7066df570 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -311,6 +311,8 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
 		{ .format = V4L2_PIX_FMT_NV15_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 5, 10, 0, 0 }, .bpp_div = { 4, 4, 1, 1 }, .hdiv = 2, .vdiv = 2,
 		  .block_w = { 4, 2, 0, 0 }, .block_h = { 1, 1, 0, 0 }},
 		{ .format = V4L2_PIX_FMT_P010_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .bpp_div = { 1, 1, 1, 1 }, .hdiv = 2, .vdiv = 2 },
+		{ .format = V4L2_PIX_FMT_NV12MT_COL128, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 2, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .bpp_div = { 1, 1, 1, 1 }, .hdiv = 2, .vdiv = 2 },
+		/* V4L2_PIX_FMT_NV12MT_10_COL128 can not be described within the current constraints of v4l2_format_info as 96 pixels is not a power of 2 */
 
 		/* YUV planar formats, non contiguous variant */
 		{ .format = V4L2_PIX_FMT_YUV420M, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 3, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .bpp_div = { 1, 1, 1, 1 }, .hdiv = 2, .vdiv = 2 },
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 37d33d4a363d..2fe8f591cdb3 100644
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
index eda4492e40dc..e466c816ff2f 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -697,6 +697,10 @@ struct v4l2_pix_format {
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


