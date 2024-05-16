Return-Path: <devicetree+bounces-67348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7818C7A86
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17AC71C21449
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA1279FE;
	Thu, 16 May 2024 16:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="oAHc1LLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBC74C63
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877732; cv=none; b=Yfg+We0Rg4yqOy1xYNFs/80DKgcDPdu76DDnVy/BbFX6aYq7XC6a3JiDEGehPdv6oSx0nzRq/0422I9CqllD2smuxrpBHyrzxQ9sKx8v1yH/wyg/V1YKA+5DfvwEWxgQti8Ecl5dc0TJ2ORsJ/Q4v5JHc//HlZZxCGDwITUH9fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877732; c=relaxed/simple;
	bh=Z2Up8NdNWpwOPvHkVPSkQzmGpXgQHnv35kuhg72/dno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CjLoXQnSANYgju8Ihy97RVE3moT3U07D7p6ZRmWhPUeV6lzBME+gYJyuoQ5SmXV+0+Whxcew7r2bVwEBZUxYu/v+ELbQ14LY+jz9uPmfHr8fKamSWFZpoZkEw1Ceq3byIfVGOYDkUqwXTK8uYbjsZGiI0bA+7TDTWVrx8PLi6/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=oAHc1LLS; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-56e1f3462caso3825703a12.3
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1715877730; x=1716482530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kd2BP40fUxe3iXqLrCdtO0arn/PW8G+mlzZObTv2eB8=;
        b=oAHc1LLSmoXSGD5Ws95cutBHMTTVgPgKGmoXobH1ifSi9TyDBruyoFMvsZ+rGDb3DW
         K3OJ2w6xWylpYEgjC9CsQPNWBIeqyhEyIyHzWPbbidKKEsU0WRHOtOJGLys1Zy0S5KBV
         qNkno5UX4T9XG5hIeRMe2m3cx4v5hBsfa/sKsobd7RnS+DroX4IjAbB/AqIyb/LSmZ3h
         pzMupe4hZk6ad9l2KYHmlogp8c4fhkBsmGZS3+aTGeNXKy68NSaWrTkiBAt6MwkPj51v
         KGswV+REzG48fs0YzaBXNqOB/zTQYcBx4xrKh1+UwMh8RblbsmUGtxq8ko6wJq0Zyotv
         fL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877730; x=1716482530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kd2BP40fUxe3iXqLrCdtO0arn/PW8G+mlzZObTv2eB8=;
        b=HhwrX9lfoWY+jEHZ0WtzZRF0DpkJCMtkVfzQCY85eKwWwW8cXAcTjZsYORHTu88mcV
         4L7Z0WgBdaB1Oe0U2UX5cOLfb5GsQRs51vVaDe6raSJps7SlmexxjCZ8DS8tUYUZkmpE
         zZqUcChXc6LhB60wmYAWDyJDrHnKVGXzyojClMUHZRQt2lxdYx7yUbwdSkBwLMn6XsYI
         e85VIAVDB/JZ6qtpO8yPXrk67xR5hp5uLBqvJQt4HHlXNwPm+Vi3UOp6rUyU8WIZmTZF
         J8g40O48XsU9GJ+5uYg774DDgwGVyrsvbhEUiIvebSyATzfRIGj08+R4cYYra4b0rFE/
         QrbA==
X-Forwarded-Encrypted: i=1; AJvYcCUFysP7xkfQFgeHCRjYjG4E74EXxhhYE8QPgTn6cKppvF3SEpfPDIh7VjaXl8jYNlWBprGmKzXJnU08FRYqh5f5mMZ64vG9sYYwig==
X-Gm-Message-State: AOJu0Yz22bSthaSOv2sCISHucXtnt6tCC4/jOlf9TxaJyulYetcJnCzJ
	Ms69C+ICutxLJltc2d3NtNHvDZygsJR7FyZWfY08wEG6eZP+ljKdiXnGFZZ/Cg==
X-Google-Smtp-Source: AGHT+IFoBv4qFB8tusulro970FDf32Yd7hCImB/40oyR/6oHGniRsD3ojCeaDfGVwFWuKqLReE2xIg==
X-Received: by 2002:a50:d791:0:b0:572:707f:1a99 with SMTP id 4fb4d7f45d1cf-5734d5d3747mr12697360a12.25.1715877729821;
        Thu, 16 May 2024 09:42:09 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733becfb83sm10694063a12.46.2024.05.16.09.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 09:42:09 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v6 03/10] media: uapi: ctrls: Add Time of Flight class controls
Date: Thu, 16 May 2024 19:41:48 +0300
Message-Id: <d5e9801c3b081123a06bf73b52336bf6f48e69cb.1715871189.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1715871189.git.vkh@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define Time of Flight class controls.
Also add most common TOF controls:
 - phase sequence
 - time integration
 - frequency modulation

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
Acked-by: Benjamin Mugnier <benjamin.mugnier@foss.st.com>
---
 include/uapi/linux/v4l2-controls.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 7901f40a1bd8..3ac204818bdf 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -30,6 +30,7 @@
 #define V4L2_CTRL_CLASS_DETECT		0x00a30000	/* Detection controls */
 #define V4L2_CTRL_CLASS_CODEC_STATELESS 0x00a40000	/* Stateless codecs controls */
 #define V4L2_CTRL_CLASS_COLORIMETRY	0x00a50000	/* Colorimetry controls */
+#define V4L2_CTRL_CLASS_TOF		0x00a60000	/* Time of flight camera controls */
 
 /* User-class control IDs */
 
@@ -3499,6 +3500,13 @@ struct v4l2_ctrl_av1_film_grain {
 	__u8 reserved[4];
 };
 
+#define V4L2_CID_TOF_CLASS_BASE		(V4L2_CTRL_CLASS_TOF | 0x900)
+#define V4L2_CID_TOF_CLASS		(V4L2_CTRL_CLASS_TOF | 1)
+
+#define V4L2_CID_TOF_PHASE_SEQ		(V4L2_CID_TOF_CLASS_BASE + 0)
+#define V4L2_CID_TOF_FREQ_MOD		(V4L2_CID_TOF_CLASS_BASE + 1)
+#define V4L2_CID_TOF_TIME_INTEGRATION	(V4L2_CID_TOF_CLASS_BASE + 2)
+
 /* MPEG-compression definitions kept for backwards compatibility */
 #ifndef __KERNEL__
 #define V4L2_CTRL_CLASS_MPEG            V4L2_CTRL_CLASS_CODEC
-- 
BR,
Volodymyr Kharuk


