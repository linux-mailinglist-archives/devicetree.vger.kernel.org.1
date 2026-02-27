Return-Path: <devicetree+bounces-269370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBnpOrDToWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:26:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FBE1BB706
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25F9C30A5710
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C21444A721;
	Fri, 27 Feb 2026 17:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="dUJs5k0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D704743D4EA
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212850; cv=none; b=mQHnogvbgkI4RlHxG+qiIIlvlu4nCtspk3zWpa8qc34Vfx+zblpag3p8pjFUz4tsZCpLXkM2gw1ZK+rJ8o94wZoT6rSZN5TAu30GLuVgK9pvP3W2jcoh3zbjTSc1wviXLeotTj69/d2iqXt4qHHFkgysM+JFPkBFifkEHh7bylA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212850; c=relaxed/simple;
	bh=Qi+4Z2dWtRTIyItgexgTfkuMEbxlrCjpu1oIkL86EJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mr6uyrScmomKkzoqO4+HyRII0L3Dj3c2+a3dDTTbqyxuyASWxrOvxa8/HhcW+y87Q494mMEbPnUwXIbPBpPFTD7mwT3Gvp3TcOB6aFJ2vQhHfIGotNHG7oyP7zmZZ/v2ZK/yzXL1X7BGp82t56Rk2sJa7nRvCFna8pNQad8IXHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=dUJs5k0x; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4837634de51so10386055e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772212844; x=1772817644; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ljANxlu8ndrw3XskAAbixI7/YE21Bcmq1KmY/q5I1k=;
        b=dUJs5k0x2ykRRt4rIqGc8IcLtzFXV3aTrDKi9K829+LWqibew+ddsUle4xxTSoT6ev
         y36gujp84vngJ5x5dLOP3TV8MNt/m+kes966WCitm14+Pg0VYCkURaIBJ/RyvxL7g+BK
         DMLSyh/4ufbhDLqebWyy5nA14dGQ04ZieV8xR9F3Tv5j0e3YmT3Jy8s/gldxEQ+eFyXR
         o3vuXeLDhFNTAm6Dyao2EQg4l5hZHQpwUyTIdyXACyx5tsdUjrvpl7TvHXNPvGRS6w7w
         B5nv/x5Sa4hRkdE8MYdYN/nMzLnYbCLMrq5YMVbffzCyaBP0If1mQwwl9VleyNJ3lQRp
         S1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212844; x=1772817644;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7ljANxlu8ndrw3XskAAbixI7/YE21Bcmq1KmY/q5I1k=;
        b=KvI7M1sexvYnTm04AJ469xEqecHGv7VqzdUK/pGYwSHEf3tZL8sxJAKiza+mJWK2ND
         kY97FuTudl41Pyzi641Pyr5OHjGUTQ+holSrfq5+hL4lRX4N+sjrM6VnYUDXdKHBz1v1
         NhVeh5OE8uyIPx/DsQYXkKP6I7CvO0RSJ11e+VtGDtXC9T9PmFJs2b0MOcAp5fu0saca
         85jdcZh13ktMbg/HbiS+3ykkrtigye19wmmgvTCQKg+djKlCg65S9Ipvp59fiAMsFhgd
         W0N9zLvLm5F2TaNohcT7wMcJ1d65oom1AhRoq9UDULt4JP8FKtAyqS1gQ1a29FA6UFAI
         1LXw==
X-Forwarded-Encrypted: i=1; AJvYcCVcavAShalGJ8g6e8r1yJ5mFMJzHMmYp3se2BzTi3PivjA74hcN7k8mwlKgWesKfygLK5C6gdXC3pRA@vger.kernel.org
X-Gm-Message-State: AOJu0YxRMdJ7WPxSpfv5FAArLQno/mELJVEoyjkWvszLkWtYvL7VC4DX
	wg1IVX9dxgFH4xuOzUsCJKEWyJIRCysu6JvOhLITsliDvR2oQoib3q+Y7H8kVTPYhBw=
X-Gm-Gg: ATEYQzz1uSSFH9kheg5EY6r0MZThvHZ4d7iQso4Nwx6xUQvuyg/5fjgPsZNmyu5hBrw
	lBrFfzdP69/UWE9htnfF34i3G1tjSFlt5r5xdVcWwbyXAZ4b+nEmm8H7Bi8YahntvrZ6AjYlTty
	JkYhF4UXLezm6n9S0rsCQHylt8lkzYekoKctWn0klusx2VruFGeiUE10MEYuHQDaOi1QrNizT0g
	NDZDZpSeE+FiIipP8T26PBXXvSaDoz3EQWtDWkauij7z93nPH3w8j2odS0XeGMWQVqSOMCHMCZQ
	4PfBW99rN48xs9qkbpbnlsZAJ9ZLnQTqeoi5ZPyu+DUj7RqKKwdA9p4u/wLbDpsz+jm5FdzYSaC
	ETTq5BG7GHMsf9Oe3VNhAqXisTy+be5X0BZPjswCAUYicuxy9KBTa+RvY/QU3o2WX4OayAmcO/r
	6dl5kz7J7gdersuQ==
X-Received: by 2002:a05:600c:630d:b0:477:a1a2:d829 with SMTP id 5b1f17b1804b1-483c9bdb68emr61023005e9.13.1772212844085;
        Fri, 27 Feb 2026 09:20:44 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfeb932bsm60828075e9.28.2026.02.27.09.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:20:43 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 27 Feb 2026 17:19:07 +0000
Subject: [PATCH v5 2/6] docs: uapi: media: Document Raspberry Pi NV12
 column format
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-media-rpi-hevc-dec-v5-2-9bb3fc1816de@raspberrypi.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-269370-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,raspberrypi.com:mid,raspberrypi.com:dkim,raspberrypi.com:email]
X-Rspamd-Queue-Id: 35FBE1BB706
X-Rspamd-Action: no action

The Raspberry Pi HEVC decoder uses a tiled format based on
columns for 8 and 10 bit YUV images, so document them as
NV12MT_COL128 and NV12MT_10_COL128.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
index 0631919bd667..1e7146230f09 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
@@ -956,6 +956,48 @@ Data in the 12 high bits, zeros in the 4 low bits, arranged in little endian ord
       - Cb\ :sub:`11`
       - Cr\ :sub:`11`
 
+V4L2_PIX_FMT_NV12MT_COL128 and V4L2_PIX_FMT_NV12MT_10_COL128
+------------------------------------------------------------
+
+``V4L2_PIX_FMT_NV12MT_COL128`` is a tiled version of
+``V4L2_PIX_FMT_NV12M`` where the two planes are split into 128 byte wide columns
+of Y or interleaved CbCr. The height is always aligned to a multiple of 8 lines.
+
+V4L2_PIX_FMT_NV12MT_10_COL128 expands that as a 10 bit format where 3 10 bit
+values are packed into a 32bit word. A 128 byte wide column therefore holds 96
+samples (either Y or interleaved CrCb). That effectively makes it 6 values in a
+64 bit word for the CbCr plane, as the values always go in pairs.
+
+Bit-packed representation.
+
+.. tabularcolumns:: |p{1.2cm}||p{1.2cm}||p{1.2cm}||p{1.2cm}|p{3.2cm}|p{3.2cm}|
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths: 8 8 8 8
+
+    * - Y'\ :sub:`00[7:0]`
+      - Y'\ :sub:`01[5:0] (bits 7--2)` Y'\ :sub:`00[9:8]`\ (bits 1--0)
+      - Y'\ :sub:`02[3:0] (bits 7--4)` Y'\ :sub:`01[9:6]`\ (bits 3--0)
+      - unused (bits 7--6)` Y'\ :sub:`02[9:4]`\ (bits 5--0)
+
+.. tabularcolumns:: |p{1.2cm}||p{1.2cm}||p{1.2cm}||p{1.2cm}|p{3.2cm}|p{3.2cm}|
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths: 12 12 12 12 12 12 12 12
+
+    * - Cb\ :sub:`00[7:0]`
+      - Cr\ :sub:`00[5:0]`\ (bits 7--2) Cb\ :sub:`00[9:8]`\ (bits 1--0)
+      - Cb\ :sub:`01[3:0]`\ (bits 7--4) Cr\ :sub:`00[9:6]`\ (bits 3--0)
+      - unused (bits 7--6) Cb\ :sub:`02[9:4]`\ (bits 5--0)
+      - Cr\ :sub:`01[7:0]`
+      - Cb\ :sub:`02[5:0]`\ (bits 7--2) Cr\ :sub:`01[9:8]`\ (bits 1--0)
+      - Cr\ :sub:`02[3:0]`\ (bits 7--4) Cb\ :sub:`02[9:6]`\ (bits 3--0)
+      - unused (bits 7--6) Cr\ :sub:`02[9:4]`\ (bits 5--0)
+
 
 Fully Planar YUV Formats
 ========================

-- 
2.34.1


