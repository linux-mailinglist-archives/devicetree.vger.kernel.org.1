Return-Path: <devicetree+bounces-98250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 425839657FD
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE4842860AE
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10A1158A37;
	Fri, 30 Aug 2024 07:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gDof9Ww2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47411547D3
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725001482; cv=none; b=hFfMtlipH+8MSGr5XYz3WooUvdLk8W4aVb3ZlUJICto8VYmISFSMGzooG4ZeBEoI+fzDIjVVjKcHp6g3iBxcPTxfsObFvuoQxUZ5RdNdeUJZSEiGe0Ey8cIwmOvjoLu0meewCp9+eM+61mHX9uU0VdrIDPPxBizozZqfj6OxBME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725001482; c=relaxed/simple;
	bh=sdHO914mJmL/vCohA7rH7SRdiRfqxrsH0eWGZkLXKuM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nz/IhlGRkr1UoFpN4kYRhv3SY5BAdq+oGTQqKKGM2MTWNW1bLxSgtMQ3Ic3j/cVY3Hpe2dpZzWlOV5H9tK+uMOI3QWH151ihtpPxVD3sOj4I9lX1s0tPR1la0lYKdOdkO/EAu2tfoA7IMZQ8ODnux8B5BXfzjKI1T67Rkqg2J44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gDof9Ww2; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a86cc0d10aaso170939666b.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725001479; x=1725606279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MigNiY3nAEysWA6O5x9mAiSUTUO1Nsuzf8rQiFm5aoY=;
        b=gDof9Ww2W5ya7LsC5gGm8mfwg//1h43CSllDWhZidD0EBMkrWH7Oo+fEtfjNNiBa+P
         ojijaLsEaggYjAKI8RrSJyPWndKsD1vOT29vnVS/IuwKVd1Ez5DDCtsGIQDp/bUirE64
         iGcU+3PaBfehA3XciCYpgBWmDTi4s6jB/McZUyNKg7EJnrLGNlyXtiSUvV8MVruAmau/
         nrGieGvqF+Pcm5gSEOz2RaFqUCFqcO0Vx+bexbydjdApvAAl1sM5Q5l88BileEFJMhl2
         pjd3PssmESvNKJRrMYE9uzPpMBoaHK6C7RFlfv8iM/uo60pd3kEe+Dqz8Lz3tKNgAUEf
         BK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001479; x=1725606279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MigNiY3nAEysWA6O5x9mAiSUTUO1Nsuzf8rQiFm5aoY=;
        b=X7u9BaRZYzHrLrHU/tbw70qQKECdH+LcH+sH68tu3f+GFEymCuqu5j9xXzetFldT7Z
         B5zMgLmklpOPk5OGQ3PEYChCEqDKthbZonoJnlKuyEkd3R1H6b9ZrlA5mYMFs5QhxJPa
         l56dkTiHXntNFPPQZULh1dOYNeqo4t4YVg0zBNuxQKx1HuoBBsd1QFjAuVs674lSfb4z
         gXbN0ZVgW13bjshRFB6m8Q8fpAoUns/nM2PZxud5dit3SlRfYakJVrCFjQw8SUjAuZUj
         5GjgJWXXT/Meb0seQUR26Wm90fprpNGHV8MDGlyUGvN4vbhRlF/PD8AOEjiyYEktrfD2
         +HOw==
X-Forwarded-Encrypted: i=1; AJvYcCWrlJql4MKG87+9otvFYun8jln3oXQr0U2kE8Z46+MFRHG9O8OMfv5f3QXoUT35yVZ3/w/YUd9lSxgF@vger.kernel.org
X-Gm-Message-State: AOJu0YxhzeIzq88UMq0vS9QIj4QshNYqwPGFqfi9MCNub+DJ0A8pgOlx
	EJ9Q9m8sk7866S85U0zMuoiVoIV5gamLwV6bIppGBtBhHJKej7rn86aLVlPFyrY=
X-Google-Smtp-Source: AGHT+IHa15MThQUWcFo5cQgAfSgQXXEMc8ock3t72Zk7fyj0lHmG7aKtyRrMOK1DXy6KYqibWRGn7g==
X-Received: by 2002:a17:907:96a2:b0:a86:e9ab:f6c6 with SMTP id a640c23a62f3a-a897fad4ed5mr341069966b.68.1725001479150;
        Fri, 30 Aug 2024 00:04:39 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89892232c7sm178026866b.222.2024.08.30.00.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:04:38 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Olivier Masse <olivier.masse@nxp.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Yong Wu <yong.wu@mediatek.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Sumit Garg <sumit.garg@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Etienne Carriere <etienne.carriere@linaro.org>,
	Jens Wiklander <jens.wiklander@linaro.org>
Subject: [RFC PATCH 2/4] tee: new ioctl to a register tee_shm from a dmabuf file descriptor
Date: Fri, 30 Aug 2024 09:03:49 +0200
Message-Id: <20240830070351.2855919-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240830070351.2855919-1-jens.wiklander@linaro.org>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Etienne Carriere <etienne.carriere@linaro.org>

Enable userspace to create a tee_shm object that refers to a dmabuf
reference.

Userspace registers the dmabuf file descriptor as in a tee_shm object.
The registration is completed with a tee_shm file descriptor returned to
userspace.

Userspace is free to close the dmabuf file descriptor now since all the
resources are now held via the tee_shm object.

Closing the tee_shm file descriptor will release all resources used by the
tee_shm object.

This change only support dmabuf references that relates to physically
contiguous memory buffers.

New tee_shm flag to identify tee_shm objects built from a registered
dmabuf, TEE_SHM_DMA_BUF.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c   |  38 ++++++++++++++
 drivers/tee/tee_shm.c    | 104 +++++++++++++++++++++++++++++++++++++--
 include/linux/tee_drv.h  |  11 +++++
 include/uapi/linux/tee.h |  29 +++++++++++
 4 files changed, 179 insertions(+), 3 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index e59c20d74b36..3dfd5428d58c 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -356,6 +356,42 @@ tee_ioctl_shm_register(struct tee_context *ctx,
 	return ret;
 }
 
+static int tee_ioctl_shm_register_fd(struct tee_context *ctx,
+				     struct tee_ioctl_shm_register_fd_data __user *udata)
+{
+	struct tee_ioctl_shm_register_fd_data data;
+	struct tee_shm *shm;
+	long ret;
+
+	if (copy_from_user(&data, udata, sizeof(data)))
+		return -EFAULT;
+
+	/* Currently no input flags are supported */
+	if (data.flags)
+		return -EINVAL;
+
+	shm = tee_shm_register_fd(ctx, data.fd);
+	if (IS_ERR(shm))
+		return -EINVAL;
+
+	data.id = shm->id;
+	data.flags = shm->flags;
+	data.size = shm->size;
+
+	if (copy_to_user(udata, &data, sizeof(data)))
+		ret = -EFAULT;
+	else
+		ret = tee_shm_get_fd(shm);
+
+	/*
+	 * When user space closes the file descriptor the shared memory
+	 * should be freed or if tee_shm_get_fd() failed then it will
+	 * be freed immediately.
+	 */
+	tee_shm_put(shm);
+	return ret;
+}
+
 static int params_from_user(struct tee_context *ctx, struct tee_param *params,
 			    size_t num_params,
 			    struct tee_ioctl_param __user *uparams)
@@ -830,6 +866,8 @@ static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return tee_ioctl_shm_alloc(ctx, uarg);
 	case TEE_IOC_SHM_REGISTER:
 		return tee_ioctl_shm_register(ctx, uarg);
+	case TEE_IOC_SHM_REGISTER_FD:
+		return tee_ioctl_shm_register_fd(ctx, uarg);
 	case TEE_IOC_OPEN_SESSION:
 		return tee_ioctl_open_session(ctx, uarg);
 	case TEE_IOC_INVOKE:
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 731d9028b67f..a1cb3c8b6423 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -4,6 +4,7 @@
  */
 #include <linux/anon_inodes.h>
 #include <linux/device.h>
+#include <linux/dma-buf.h>
 #include <linux/idr.h>
 #include <linux/mm.h>
 #include <linux/sched.h>
@@ -14,6 +15,14 @@
 #include <linux/highmem.h>
 #include "tee_private.h"
 
+/* extra references appended to shm object for registered shared memory */
+struct tee_shm_dmabuf_ref {
+	struct tee_shm shm;
+	struct dma_buf *dmabuf;
+	struct dma_buf_attachment *attach;
+	struct sg_table *sgt;
+};
+
 static void shm_put_kernel_pages(struct page **pages, size_t page_count)
 {
 	size_t n;
@@ -44,7 +53,16 @@ static void release_registered_pages(struct tee_shm *shm)
 
 static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 {
-	if (shm->flags & TEE_SHM_POOL) {
+	if (shm->flags & TEE_SHM_DMA_BUF) {
+		struct tee_shm_dmabuf_ref *ref;
+
+		ref = container_of(shm, struct tee_shm_dmabuf_ref, shm);
+		dma_buf_unmap_attachment(ref->attach, ref->sgt,
+		DMA_BIDIRECTIONAL);
+
+		dma_buf_detach(ref->dmabuf, ref->attach);
+		dma_buf_put(ref->dmabuf);
+	} else if (shm->flags & TEE_SHM_POOL) {
 		teedev->pool->ops->free(teedev->pool, shm);
 	} else if (shm->flags & TEE_SHM_DYNAMIC) {
 		int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);
@@ -56,7 +74,8 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 		release_registered_pages(shm);
 	}
 
-	teedev_ctx_put(shm->ctx);
+	if (shm->ctx)
+		teedev_ctx_put(shm->ctx);
 
 	kfree(shm);
 
@@ -168,7 +187,7 @@ struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size)
  * tee_client_invoke_func(). The memory allocated is later freed with a
  * call to tee_shm_free().
  *
- * @returns a pointer to 'struct tee_shm'
+ * @returns a pointer to 'struct tee_shm' on success, and ERR_PTR on failure
  */
 struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size)
 {
@@ -178,6 +197,85 @@ struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size)
 }
 EXPORT_SYMBOL_GPL(tee_shm_alloc_kernel_buf);
 
+struct tee_shm *tee_shm_register_fd(struct tee_context *ctx, int fd)
+{
+	struct tee_shm_dmabuf_ref *ref;
+	int rc;
+
+	if (!tee_device_get(ctx->teedev))
+		return ERR_PTR(-EINVAL);
+
+	teedev_ctx_get(ctx);
+
+	ref = kzalloc(sizeof(*ref), GFP_KERNEL);
+	if (!ref) {
+		rc = -ENOMEM;
+		goto err_put_tee;
+	}
+
+	refcount_set(&ref->shm.refcount, 1);
+	ref->shm.ctx = ctx;
+	ref->shm.id = -1;
+
+	ref->dmabuf = dma_buf_get(fd);
+	if (IS_ERR(ref->dmabuf)) {
+		rc = PTR_ERR(ref->dmabuf);
+		goto err_put_dmabuf;
+	}
+
+	ref->attach = dma_buf_attach(ref->dmabuf, &ref->shm.ctx->teedev->dev);
+	if (IS_ERR(ref->attach)) {
+		rc = PTR_ERR(ref->attach);
+		goto err_detach;
+	}
+
+	ref->sgt = dma_buf_map_attachment(ref->attach, DMA_BIDIRECTIONAL);
+	if (IS_ERR(ref->sgt)) {
+		rc = PTR_ERR(ref->sgt);
+		goto err_unmap_attachement;
+	}
+
+	if (sg_nents(ref->sgt->sgl) != 1) {
+		rc = PTR_ERR(ref->sgt->sgl);
+		goto err_unmap_attachement;
+	}
+
+	ref->shm.paddr = page_to_phys(sg_page(ref->sgt->sgl));
+	ref->shm.size = ref->sgt->sgl->length;
+	ref->shm.flags = TEE_SHM_DMA_BUF;
+
+	mutex_lock(&ref->shm.ctx->teedev->mutex);
+	ref->shm.id = idr_alloc(&ref->shm.ctx->teedev->idr, &ref->shm,
+				1, 0, GFP_KERNEL);
+	mutex_unlock(&ref->shm.ctx->teedev->mutex);
+	if (ref->shm.id < 0) {
+		rc = ref->shm.id;
+		goto err_idr_remove;
+	}
+
+	return &ref->shm;
+
+err_idr_remove:
+	mutex_lock(&ctx->teedev->mutex);
+	idr_remove(&ctx->teedev->idr, ref->shm.id);
+	mutex_unlock(&ctx->teedev->mutex);
+err_unmap_attachement:
+	dma_buf_unmap_attachment(ref->attach, ref->sgt, DMA_BIDIRECTIONAL);
+err_detach:
+	dma_buf_detach(ref->dmabuf, ref->attach);
+err_put_dmabuf:
+	dma_buf_put(ref->dmabuf);
+	kfree(ref);
+err_put_tee:
+	teedev_ctx_put(ctx);
+	tee_device_put(ctx->teedev);
+
+	return ERR_PTR(rc);
+}
+EXPORT_SYMBOL_GPL(tee_shm_register_fd);
+
+
+
 /**
  * tee_shm_alloc_priv_buf() - Allocate shared memory for a privately shared
  *			      kernel buffer
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index 71632e3c5f18..6a1fee689007 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -25,6 +25,7 @@
 #define TEE_SHM_USER_MAPPED	BIT(1)  /* Memory mapped in user space */
 #define TEE_SHM_POOL		BIT(2)  /* Memory allocated from pool */
 #define TEE_SHM_PRIV		BIT(3)  /* Memory private to TEE driver */
+#define TEE_SHM_DMA_BUF		BIT(4)	/* Memory with dma-buf handle */
 
 struct device;
 struct tee_device;
@@ -275,6 +276,16 @@ void *tee_get_drvdata(struct tee_device *teedev);
 struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size);
 struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size);
 
+/**
+ * tee_shm_register_fd() - Register shared memory from file descriptor
+ *
+ * @ctx:	Context that allocates the shared memory
+ * @fd:		Shared memory file descriptor reference
+ *
+ * @returns a pointer to 'struct tee_shm' on success, and ERR_PTR on failure
+ */
+struct tee_shm *tee_shm_register_fd(struct tee_context *ctx, int fd);
+
 struct tee_shm *tee_shm_register_kernel_buf(struct tee_context *ctx,
 					    void *addr, size_t length);
 
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index 23e57164693c..77bc8ef24d3c 100644
--- a/include/uapi/linux/tee.h
+++ b/include/uapi/linux/tee.h
@@ -117,6 +117,35 @@ struct tee_ioctl_shm_alloc_data {
 #define TEE_IOC_SHM_ALLOC	_IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 1, \
 				     struct tee_ioctl_shm_alloc_data)
 
+/**
+ * struct tee_ioctl_shm_register_fd_data - Shared memory registering argument
+ * @fd:		[in] File descriptor identifying the shared memory
+ * @size:	[out] Size of shared memory to allocate
+ * @flags:	[in] Flags to/from allocation.
+ * @id:		[out] Identifier of the shared memory
+ *
+ * The flags field should currently be zero as input. Updated by the call
+ * with actual flags as defined by TEE_IOCTL_SHM_* above.
+ * This structure is used as argument for TEE_IOC_SHM_REGISTER_FD below.
+ */
+struct tee_ioctl_shm_register_fd_data {
+	__s64 fd;
+	__u64 size;
+	__u32 flags;
+	__s32 id;
+} __aligned(8);
+
+/**
+ * TEE_IOC_SHM_REGISTER_FD - register a shared memory from a file descriptor
+ *
+ * Returns a file descriptor on success or < 0 on failure
+ *
+ * The returned file descriptor refers to the shared memory object in kernel
+ * land. The shared memory is freed when the descriptor is closed.
+ */
+#define TEE_IOC_SHM_REGISTER_FD	_IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 8, \
+				     struct tee_ioctl_shm_register_fd_data)
+
 /**
  * struct tee_ioctl_buf_data - Variable sized buffer
  * @buf_ptr:	[in] A __user pointer to a buffer
-- 
2.34.1


