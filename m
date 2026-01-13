Return-Path: <devicetree+bounces-254673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03319D1AB74
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6C72F3041F7A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507F6394469;
	Tue, 13 Jan 2026 17:45:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEED393DEC
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326302; cv=none; b=q1eWDNPWpjliS4Z0TLfNCX8I5cax2MRxZlvs7hatSLwTG0oO/I9+DS3hR2eP6c5rr6rEYf6kpdJpRypRNhOhXwwHghT/BhPaRpziRa+TTCINcM0bYyX7ycRhnY30spowhASg6IwKPVsjhVurqlpt+76aW32xY+Z91DDvZPdzLN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326302; c=relaxed/simple;
	bh=gru4oOn5Z4uZPsJ0ld3fd8SL8rSg/YQgIjZocoovrQc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K/U6ZECw5qYoqzpOd5y/J2jeNrxun8haPlQWYpM8ps++pEOS2QGi+oVl/4l3LzFSxYZ9YRQk9bd+dJjDP4nM/O3M37duJzDkCbTPqRlugRwjKdXk6eJxFDFLbZjiaqlx+3VLn/zJbjyvdkVRnHLPzPVyXeh8U3RXmWxlM5Ee/mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso12895859a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:45:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326299; x=1768931099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eavvu1t15qKvDTI2jSsLTlj8ivnyPIJR0TkymEC1eF0=;
        b=reeKe0JArZXg0iz8MJcJsBC7medEocaUzxak/S+ZZQB/cJGd3SsrIfI9F7Yh3eCEgH
         uzR7UvnXyYXgE55RVpxx+mV3Hom9O7heBZGjDSnPm6cggtsNUpCQOTAoBEdUxMlogarJ
         9jQt/QH1pZdbT1PycFwu8K41/xsl1lTWI6mETBGp6jB/MDrqhULO8RpOG+/z0/3JU/KM
         LVvnr9K0jRrxrpCHigTfkuJ3RgUl+ao18xyVX7Ejni8ploBo+I92wlX0R9Yr9xQXbOb1
         iyfLeW66UiAjXRlkD3IXZVeaoVVj2N8GbCgimZiNkLCi7GAMCf7GX/RpmwgtD9G8tC9k
         jO9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXz+GyfoG+6g7MO3V4K2fC+2SUc/9sGxzTuHUMM2v6s1BQHGjYMkOA8rMUaxEpUsKsUUpdX52kzw7uR@vger.kernel.org
X-Gm-Message-State: AOJu0YwcfWxYFhlkpxQ/Pj1lI5apZMm9ZdApgWerySrCUfUVHX1CiTWj
	jYrLbHvlKTNiQKazrdBq20JNTjfjhmqCAMKzK19DpWVEXxr3eMVprEbsMyCe4w==
X-Gm-Gg: AY/fxX6D+LkxXLGmANZNr8Dng/YX5REDRsWakAZlBZhoOxAhXe/1OfrKC3w2m09tXD4
	20I6zxU9zzS3Tl/Rk/VGHzmRh3naAa7H9W1U9S/J3R6PajMOdAEIHuUpDgHmloMwOeV0uoiJ36B
	2ZI4n+6onf1gzlu+Iz6MphpzacAZAqSd/F+3PNEk9FsZNLE0+o0ITnka+eC+zYkHppuQAiAlnRU
	UMT7eOhh904SGW2mCzR2YTIdFNYNGeFnfz81aZQ6j+h35JSbGQA97YKUHyZOVF9mDl3x9fCtUqw
	EI0RAXXWFBndzFmSx7maHLa2I6Q7rgvF6VqF7/JISwIxBhBoSFksQksXgd/1DGcAq27tymv6sJq
	IF0fHvrsjymFlT26p4XAz6lEUhY85tfTisOTJrHRVUtCi1A/v+3ThoQBAyqrRU1R20vpZ4ZNaB7
	U8aEQBCMXeWdmBCw+3j4iHnekOGaa3MW2/HOPj6Mtvy02pCQ==
X-Google-Smtp-Source: AGHT+IHjwdSSN4mTRKXDjSC9xCBKsqwskTn4GwaR+B+tRXZTp9WDKqbrL/GHsxrwpYwUo4qku7MY+g==
X-Received: by 2002:a17:907:7742:b0:b87:1eaf:377c with SMTP id a640c23a62f3a-b871eaf3facmr466107266b.38.1768326298728;
        Tue, 13 Jan 2026 09:44:58 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm20873259a12.17.2026.01.13.09.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:44:57 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 13 Jan 2026 18:44:39 +0100
Subject: [PATCH 5/5] accel/thames: Add IOCTL for memory synchronization
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-thames-v1-5-99390026937c@tomeuvizoso.net>
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, 
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>, 
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, linux-media@vger.kernel.org, 
 linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2

The DSP cores have their own access to the memory bus, and it isn't
cache coherent with the CPUs.

Add IOCTLs so userspace can mark when the caches need to be flushed, and
also when a writer job needs to be waited for before the buffer can be
accessed from the CPU.

Initially based on the same IOCTLs from the Etnaviv driver.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/accel/thames/thames_drv.c |  2 ++
 drivers/accel/thames/thames_gem.c | 52 +++++++++++++++++++++++++++++++++++++++
 drivers/accel/thames/thames_gem.h |  4 +++
 3 files changed, 58 insertions(+)

diff --git a/drivers/accel/thames/thames_drv.c b/drivers/accel/thames/thames_drv.c
index bf7355832241d5a671e196f465d891effaa4a8fb..9b72db433fbb8f9239a16a047a52520f0a01d125 100644
--- a/drivers/accel/thames/thames_drv.c
+++ b/drivers/accel/thames/thames_drv.c
@@ -76,6 +76,8 @@ static const struct drm_ioctl_desc thames_drm_driver_ioctls[] = {
 	THAMES_IOCTL(BO_CREATE, bo_create),
 	THAMES_IOCTL(BO_MMAP_OFFSET, bo_mmap_offset),
 	THAMES_IOCTL(SUBMIT, submit),
+	THAMES_IOCTL(BO_PREP, bo_prep),
+	THAMES_IOCTL(BO_FINI, bo_fini),
 };
 
 DEFINE_DRM_ACCEL_FOPS(thames_accel_driver_fops);
diff --git a/drivers/accel/thames/thames_gem.c b/drivers/accel/thames/thames_gem.c
index a153e73a15253e0f955d74020b4765a1fa833fc4..2ad5a62bea275eb38a96b9d9bea804ed94ffb011 100644
--- a/drivers/accel/thames/thames_gem.c
+++ b/drivers/accel/thames/thames_gem.c
@@ -353,3 +353,55 @@ int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_
 
 	return 0;
 }
+
+int thames_ioctl_bo_prep(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct drm_thames_bo_prep *args = data;
+	struct drm_gem_object *gem_obj;
+	struct drm_gem_shmem_object *shmem_obj;
+	unsigned long timeout = drm_timeout_abs_to_jiffies(args->timeout_ns);
+	long ret = 0;
+
+	if (args->reserved != 0)
+		return -EINVAL;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	ret = dma_resv_wait_timeout(gem_obj->resv, DMA_RESV_USAGE_WRITE, true, timeout);
+	if (!ret)
+		ret = timeout ? -ETIMEDOUT : -EBUSY;
+
+	shmem_obj = &to_thames_bo(gem_obj)->base;
+
+	dma_sync_sgtable_for_cpu(ddev->dev, shmem_obj->sgt, DMA_FROM_DEVICE);
+
+	drm_gem_object_put(gem_obj);
+
+	return ret;
+}
+
+int thames_ioctl_bo_fini(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct drm_thames_bo_fini *args = data;
+	struct drm_gem_shmem_object *shmem_obj;
+	struct thames_gem_object *thames_obj;
+	struct drm_gem_object *gem_obj;
+
+	if (args->reserved != 0)
+		return -EINVAL;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	thames_obj = to_thames_bo(gem_obj);
+	shmem_obj = &thames_obj->base;
+
+	dma_sync_sgtable_for_device(ddev->dev, shmem_obj->sgt, DMA_TO_DEVICE);
+
+	drm_gem_object_put(gem_obj);
+
+	return 0;
+}
diff --git a/drivers/accel/thames/thames_gem.h b/drivers/accel/thames/thames_gem.h
index 785843c40a89a9e84ab634aad77e9ec46111693e..e5a8278e98c578c2903cf23aea1bf887be0389e8 100644
--- a/drivers/accel/thames/thames_gem.h
+++ b/drivers/accel/thames/thames_gem.h
@@ -29,6 +29,10 @@ int thames_ioctl_bo_create(struct drm_device *ddev, void *data, struct drm_file
 
 int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_file *file);
 
+int thames_ioctl_bo_prep(struct drm_device *ddev, void *data, struct drm_file *file);
+
+int thames_ioctl_bo_fini(struct drm_device *ddev, void *data, struct drm_file *file);
+
 int thames_context_create(struct thames_file_priv *priv);
 
 void thames_context_destroy(struct thames_file_priv *priv);

-- 
2.52.0


