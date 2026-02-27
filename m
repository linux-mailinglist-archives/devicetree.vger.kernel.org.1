Return-Path: <devicetree+bounces-269371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJnFJo/SoWlGwgQAu9opvQ
	(envelope-from <devicetree+bounces-269371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:21:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C232D1BB5F1
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B3C2300F2BA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2399344B66D;
	Fri, 27 Feb 2026 17:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="j6DK8+Tf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0834943E9D0
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212850; cv=none; b=DFHshkEhz1twjgxahk0OZuAfnSHRpPg6fiN+nAkQBimxcOyR2z6Y8IAwEvIFMSr478CXxetY22PwlqpvjO3lNWQkQDc4DnEtzwvK3qu9OImGET0TVHGEgKhDzSDV0t5CEDzzSzDxXcxn8dqdPBL4GJr8RuvYC/23I1wl3ZGDxd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212850; c=relaxed/simple;
	bh=Yw+jJSG+gjftaI890ltLw9XWLxe0BcSmmB7/KW90xkc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qSUAmfnuvAVid3KuMJVwaJs0z6dznpenLTtWLaurPgo2of3BdcMg+VchJs8LR+hucoEHa1VZmVtGlljb28cfKnxEb9OY/jt+bbh5SaQj3faWsn/kYzjh6ra4oadci5CLQVBvZWL/NLA+6wIZ146QCW2Ux7T88bVkHY4o+7EuT5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=j6DK8+Tf; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-480706554beso27095985e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772212845; x=1772817645; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D22wsJVQwr9074cfNWay5oaTG2nKsW+DfTWeOhL5zHU=;
        b=j6DK8+Tffzq2UmABcPW73rl8iQpHUyLm2AVReHjjHDZsS7+IyhiXhtIk7oOpCbusZr
         IxpjQODQGdO2dt5ZIaMwENQBPB/FnzCpLmNmGljFmzLsWx/Br9v8qNrpkaIE0PHpaCCv
         zCGsevUpeis6Hd7o51av7zqQ5223agX0bFySWgbkLSMnU+u69rmXrmF0krYrcVLYkPSc
         CmDXOmNnToSV/YbsE3M01h1dxms8YuGkg3msceBNQV7jfjS+RuqDUPTCcPrPgc6qROPT
         fyhJOLOkxvy4zxmApMWfRFgEKOiPgOChaGKQBJYMZzh8wFUx4qHaUd5lzzsKiSEuveYF
         eZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212845; x=1772817645;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D22wsJVQwr9074cfNWay5oaTG2nKsW+DfTWeOhL5zHU=;
        b=U2VqzRK3NOIoUSNkIo3+ZgdpxmQM2dXbnKmv7XoOEQWwbvfc99/8HzZGNrkDa7rndF
         yPjdXHMDqAnLy9ay6JE9WyA8GnEUufCsxXQHUjB60j09zOOl4lDRU6V60RRsGIXy/tx7
         sr7ixF7O6MEDOC1mMpj/iskgg+YY7Tq8+v9pPMtjRPzI5pBPP3YbZyBKb7/PiBtOC/z+
         p4muGToMXakei4jDX3uSzRD9qf7xzsc6Ob1Lv/9c2RMcBfGZ9ZktJ7OE/4KHZylb87fe
         3dUD5R2GLDiVk5KTLnayDwYGwmSZG6cGOKvHNDGU+V6syl40Y1WAhyyHv4oGsZXU05om
         FiJQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8TcdLD3iDpHBsSDIQhba83XffeJhv8Dn/bDQ1ZMalcs066HbwAspAWuNOyE66m0aF4z/Pc7wU8grF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4IU2K7Dd23UyW/kZ86yzLV9BdOPD4yMn9Ry5EFN1bVzCL/tLo
	hXoQYuzcu6Lyb7NJIL9H/hct0xdTQmtiI7x3NRDV9/N0TXty7C/b3MumrrNgMPfigLI=
X-Gm-Gg: ATEYQzyoLvq+PWsHQrKl6HUhx6gsRLVctiaKwcXV6WowRWPeLkAsO1Zn7fexnd4V4sL
	RnDkzl7geGRuImt2tnopbC8Iftx1UjAiqKqmMv6YgcEo0FOMLPrNFS3PTDo2oGHVAiBOrc4oD2s
	FtOvjmr2xz1GXglSxkHoI40/Ljt4Vr1RVDmnWEGFv1ooi37gR9RE9oy3dt4ODdmXQiTmWq+eSH2
	jQEOisKEGPWdRFvvHql2ZUihHqsWjltcndUYer+7bQYHPGH/W2S5PI3UzqX0r/1cFHA9X81Ctka
	pfdQ2syTmXcrRVCZ6WeeftXtqZYmgtwYmagjotaiLIRPQicP6PlPtVPNZszBOZdesAHS1gjdEnt
	fdoJML49NfDrfRQClYMky741o4Kl/M0Bffu6JNWLHQ9y+YMBSt0y+3WaFcJmdnJitIX1Cmc+4ih
	pgxMKf9UwKhdFu+g==
X-Received: by 2002:a05:600c:6309:b0:47e:e87f:4bba with SMTP id 5b1f17b1804b1-483c9bc6164mr55009605e9.29.1772212845194;
        Fri, 27 Feb 2026 09:20:45 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfeb932bsm60828075e9.28.2026.02.27.09.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:20:44 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 27 Feb 2026 17:19:08 +0000
Subject: [PATCH v5 3/6] media: ioctl: Add pixel formats NV12MT_COL128 and
 NV12MT_10_COL128
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-media-rpi-hevc-dec-v5-3-9bb3fc1816de@raspberrypi.com>
References: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
In-Reply-To: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-269371-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,raspberrypi.com:mid,raspberrypi.com:dkim,raspberrypi.com:email,siliconimaging.com:url]
X-Rspamd-Queue-Id: C232D1BB5F1
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


