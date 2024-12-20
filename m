Return-Path: <devicetree+bounces-133146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F098E9F964B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7E8718916DA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A362F21B908;
	Fri, 20 Dec 2024 16:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="dDwqENyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B070E219A99
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711698; cv=none; b=cLWbQyywOHtsm6lj6ciys+M0R715w2MJ3h2iXiR/WvM27R2q+rdm3K6lH0wOczAWIbXH3kzfqLnhqgODN8voK18E8dcqRUk3Kuxo2b1XHZNzKVp6npknaJumaCUvpHI2r5aFYs0rywmQq7CO9s/q1Yiuu79Djma5ZfQNFnuVTns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711698; c=relaxed/simple;
	bh=u7CN+LXBVFhvYjq1zTe9T89sN0vtVt41mpjiend2Zuw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m1Q3aCCfAZrTGFl5uvgbjMXGVpvGjlJHpjdxcP+Qs8/0X3hAQcIJFrpghljgmLa63QWzWqmGeySflIhCbc+e/TU+RUyQ3Qxs7EC5q0LmZ8xQEYSXXQaj601m68oUCBjW2MIIrolCvRliIlvUs+5HSk8qvbV6125epxUFDr/FCKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=dDwqENyV; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso15488395e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734711695; x=1735316495; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ehuxIelX8DO1vrFPZF560cKcYx8GrjFEJ42I4SDiRJw=;
        b=dDwqENyVoY87EyeCVKpeGbTPK/DA3S+4cyo45h+iLcNd4vpcMQyDGNG2OLKpqJdKpS
         5zKi4RyqnEg9fw5pp4Av7Us46p/GCgtdyCFMzmNgWveaJOKB4XUXNIbCuA/znV+x/AM+
         whvo3byMuSTZvTZf9ydiuE3NtUKLuOyiu1M94I3MYrV/SX12kaNkABj+3WeaL+nB7nJ5
         VdBT4DaZHMyfjMMzPlvVAEtjq7L/t6k2r/zJgfkvv+KS/ybD9IhZYMGocGx8d8AwHdwz
         1P0EcRDvGs7AV10otCFxFUK60kZPkELZuOp/tJfyo2N7aN5WGhFaT6JhhN5z7fKQ8s1J
         ievA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734711695; x=1735316495;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehuxIelX8DO1vrFPZF560cKcYx8GrjFEJ42I4SDiRJw=;
        b=tgU6Sant46Jc+GkNIITkLq5DL62NGQkh7Mcm2flxjWPfnlHbuc3ytJQQCDx6J/2UD9
         rc4wDmkXzxmWy+gBFmYnW8VYRV+yMmee3K1Lp4KhpH9g178GA/4TL/xHICtHfAfLGTvr
         i6DW4cggdif7vkavEumDve1W3HP/9rrAEY7lRcL1m6acxWazDff09sNDB4KJZDeJ5p6T
         I7dsD9VlTVlJ2nTGoiH8VZAtBsOhzdp3MEbW523AujeYcrQ5WBLA72ShJFYcvqtvDfsz
         Y6gaYsgOCypDtjw/cocNH36l+zVNbmWrRIRux4zHUq1sC2MMpQQbWBP5SUfLF8+hUcKP
         TVTA==
X-Forwarded-Encrypted: i=1; AJvYcCX8sXIasIgRPNXhk8adSYEl0fIbu/xJiDygEAVR2khLhCNbrxTjVUEsJl1H+ccQYxPBIqBtaV2p+Nu1@vger.kernel.org
X-Gm-Message-State: AOJu0YwE3YTbPzOv5WEkbYxpVWfv/VhcRecH4JlYJkJLXE2OC2/WglUK
	qne1fSunCEAtuLJqegnpAY9f2xMRq5SFQGY+NT9TIRWiEBatc7wy7D/odAZki/0=
X-Gm-Gg: ASbGncuXFCfDQRDmCScR/FYuipufU7eoyRWMGv5bd8/1DM/vMbthDXYIPGKLsykfaDM
	Lpe2rlETJd4f0P7QR6I3NkYQmApjypZipe/6cFL5aa53h2W7IBcmYu3XnutyvwzD2O0lAWy5p4r
	19L4yEl1TzXZTKRVQBrng1C8gUS4AHI2V9MyqxJelBRqXWlBWEgsrNWNnrbnmI/xbssbkYqfnj0
	AjeALc3JzBTW5PVx51J7jBYDAlW776jWZE+n3WDL3QCbb80
X-Google-Smtp-Source: AGHT+IFgSqb5b0E+v9TtN0vGwY/ilsvnvmz9GDFQcbPASO0ILJQEFvVgGISRslh9RDK/uoVDtsQUvg==
X-Received: by 2002:a05:600c:450f:b0:434:fb65:ebbb with SMTP id 5b1f17b1804b1-436686461cbmr32737635e9.17.1734711695038;
        Fri, 20 Dec 2024 08:21:35 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43656b013e1sm82824045e9.12.2024.12.20.08.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:21:34 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 16:21:12 +0000
Subject: [PATCH 1/7] RFC: media: Add media_request_{pin,unpin} API
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-media-rpi-hevc-dec-v1-1-0ebcc04ed42e@raspberrypi.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
In-Reply-To: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 John Cox <john.cox@raspberypi.com>
X-Mailer: b4 0.14.1

From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This is probably not the API we will want to add, but it
should show what semantics are needed by drivers.

The goal is to allow the OUTPUT (aka source) buffer and the
controls associated to a request to be released from the request,
and in particular return the OUTPUT buffer back to userspace,
without signalling the media request fd.

This is useful for devices that are able to pre-process
the OUTPUT buffer, therefore able to release it before
the decoding is finished. These drivers should signal
the media request fd only after the CAPTURE buffer is done.

Tested-by: John Cox <john.cox@raspberypi.com>
Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/mc/mc-request.c | 35 +++++++++++++++++++++++++++++++++++
 include/media/media-request.h | 12 ++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/media/mc/mc-request.c b/drivers/media/mc/mc-request.c
index 5edfc2791ce7..b5334389d846 100644
--- a/drivers/media/mc/mc-request.c
+++ b/drivers/media/mc/mc-request.c
@@ -499,3 +499,38 @@ void media_request_object_complete(struct media_request_object *obj)
 		media_request_put(req);
 }
 EXPORT_SYMBOL_GPL(media_request_object_complete);
+
+void media_request_pin(struct media_request *req)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&req->lock, flags);
+	if (WARN_ON(req->state != MEDIA_REQUEST_STATE_QUEUED))
+		goto unlock;
+	req->num_incomplete_objects++;
+unlock:
+	spin_unlock_irqrestore(&req->lock, flags);
+}
+EXPORT_SYMBOL_GPL(media_request_pin);
+
+void media_request_unpin(struct media_request *req)
+{
+	unsigned long flags;
+	bool completed = false;
+
+	spin_lock_irqsave(&req->lock, flags);
+	if (WARN_ON(!req->num_incomplete_objects) ||
+	    WARN_ON(req->state != MEDIA_REQUEST_STATE_QUEUED))
+		goto unlock;
+
+	if (!--req->num_incomplete_objects) {
+		req->state = MEDIA_REQUEST_STATE_COMPLETE;
+		wake_up_interruptible_all(&req->poll_wait);
+		completed = true;
+	}
+unlock:
+	spin_unlock_irqrestore(&req->lock, flags);
+	if (completed)
+		media_request_put(req);
+}
+EXPORT_SYMBOL_GPL(media_request_unpin);
diff --git a/include/media/media-request.h b/include/media/media-request.h
index d4ac557678a7..c48cfb710959 100644
--- a/include/media/media-request.h
+++ b/include/media/media-request.h
@@ -189,6 +189,10 @@ static inline void media_request_get(struct media_request *req)
  */
 void media_request_put(struct media_request *req);
 
+void media_request_pin(struct media_request *req);
+
+void media_request_unpin(struct media_request *req);
+
 /**
  * media_request_get_by_fd - Get a media request by fd
  *
@@ -228,6 +232,14 @@ static inline void media_request_put(struct media_request *req)
 {
 }
 
+static inline void media_request_pin(struct media_request *req)
+{
+}
+
+static inline void media_request_unpin(struct media_request *req)
+{
+}
+
 static inline struct media_request *
 media_request_get_by_fd(struct media_device *mdev, int request_fd)
 {

-- 
2.34.1


