Return-Path: <devicetree+bounces-98249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A84A9657F6
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D5741F249D9
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB031547F7;
	Fri, 30 Aug 2024 07:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IS1i2oeh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D49F380
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725001480; cv=none; b=PnEmeANTuAc3djq4jT3RBekZYg0V+JkpRVtjIlbWajvFPVW7ioKt5VnEoBJv+AsAr5h6CGkHFTKIG1Pjp8Iwk+zDiaq3P25V46iPrbFa3oGvCCZMuzQ8OkRqrqSC0jWPixZ55L4oQXb6lNvfDLvTj0ECTdAs585s19X05LRDCsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725001480; c=relaxed/simple;
	bh=mrYsgAuZfGUR8a8DXSlScOmgUWNB5y3kFvuvISaLR1g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Nto5CiM/j0p5lXxb9vhdSWG4+gggD+s7b+kmR5ebmU1Hgg6SNUKQTJ5HOhR3WXxEq8apikLYwT0ucloIPjIN2dOywM4ebldwN9wDwpoLr8CdMbHsr9hJkTMqqb5whE+NSgAh5L2V8CnbEZKxouhxI1cEx35licf9hzYkT71SdFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IS1i2oeh; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a83597ce5beso247183366b.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725001477; x=1725606277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJjNgUGJenoBaIKVAgwwwsHux2S25WdElfpi6ReEk9U=;
        b=IS1i2oeh7nx1IhLLzty3pFy84g1mP50uDp/ay0GlWXdfZRoJ/ei2hRnvOxFBW1vmy6
         fj+iD8nzzU2td1dtxsL/qpF0CKsifrshVUVYgWUobJTCwCD0GBOfci/CANsbFiEj1e2l
         /HOnriDbpGJaAx9RQ7WaEiIVzJD+jAHn8JqWaSmw3g9Q6OJppIvGcljwyGKPY04BFHDW
         OLM96OqXuxEU0miBhWkeMna8I0WDGnM5LDESHrmkRophogQ9CCdSUk90OhZ2hAxMcHyw
         LRiF6GhRO1LD6W76kcnj02rAhQsPNnPWZHRgmXho9AhJ4vBDialYrJWTDl4UMD++2dKI
         Q28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001477; x=1725606277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJjNgUGJenoBaIKVAgwwwsHux2S25WdElfpi6ReEk9U=;
        b=ubZSH3uWmZRHIP+GyfXJE12IdTADk8DJ48eokN4HhqMNp+ggfXOm2qOK8GIRqh6eG3
         KpxetwjyfwltUUBXbdRJv0ARRru82GyPQ8ebM42mPomnE+wsS3uZtsybil8dqnLvTIOV
         8S9NYWr2jZ8hyJbPIuLJziBQzyh0XI3IUDgjnL2uuCF9UcnS0QvkLpqvnbVivskRG7GG
         gG4zafIoUc0tcE/tZAoKkf9PvnV3XIaKRhxxbs1H0spIOoPDEKSfGrvC/qpzxXSiFkmJ
         KamvPZToL6Y9uclc3KSpnFRhGm7D8Ctjg6XpRaOoq1cZ9Qjsu5BXjRVl9ZQQIDLSOEqR
         vUHw==
X-Forwarded-Encrypted: i=1; AJvYcCU3WwhTbVLixrLYOm7PCc6fek0Dqfcnnpx5FIi/Tr8FC04GR6WiM7B8NpjAXFvXaqETeOIJ9vSi4mUF@vger.kernel.org
X-Gm-Message-State: AOJu0YzGSBnNgpMpzTuRUxRLR9ONwVz6vCHQuVDbVz6AHAS7UhpH9zCM
	vlPLKtHwA4F//FoiBkWYqBM+Yl6OvOMHNIPB5BPDHSj4ssU+rHjvcIsJD/d55NU=
X-Google-Smtp-Source: AGHT+IH87EkQZslfXd1cN/MuD1B1+tjpJHcDRiz/ebksiuYOXdKRtj8j5p8EyAgrD5jVzjEwQczjhA==
X-Received: by 2002:a17:906:4788:b0:a7d:89ac:9539 with SMTP id a640c23a62f3a-a898231fe8emr528271266b.7.1725001477275;
        Fri, 30 Aug 2024 00:04:37 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89892232c7sm178026866b.222.2024.08.30.00.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:04:36 -0700 (PDT)
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
	Jens Wiklander <jens.wiklander@linaro.org>
Subject: [RFC PATCH 1/4] dma-buf: heaps: restricted_heap: add no_map attribute
Date: Fri, 30 Aug 2024 09:03:48 +0200
Message-Id: <20240830070351.2855919-2-jens.wiklander@linaro.org>
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

Add a no_map attribute to struct restricted_heap_attachment and struct
restricted_heap to skip the call to dma_map_sgtable() if set. This
avoids trying to map a dma-buf that doens't refer to memory accessible
by the kernel.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/dma-buf/heaps/restricted_heap.c | 17 +++++++++++++----
 drivers/dma-buf/heaps/restricted_heap.h |  2 ++
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
index 8bc8a5e3f969..4bf28e3727ca 100644
--- a/drivers/dma-buf/heaps/restricted_heap.c
+++ b/drivers/dma-buf/heaps/restricted_heap.c
@@ -16,6 +16,7 @@
 struct restricted_heap_attachment {
 	struct sg_table			*table;
 	struct device			*dev;
+	bool no_map;
 };
 
 static int
@@ -54,6 +55,8 @@ restricted_heap_memory_free(struct restricted_heap *rheap, struct restricted_buf
 static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
 {
 	struct restricted_buffer *restricted_buf = dmabuf->priv;
+	struct dma_heap *heap = restricted_buf->heap;
+	struct restricted_heap *rheap = dma_heap_get_drvdata(heap);
 	struct restricted_heap_attachment *a;
 	struct sg_table *table;
 
@@ -70,6 +73,7 @@ static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachm
 	sg_dma_mark_restricted(table->sgl);
 	a->table = table;
 	a->dev = attachment->dev;
+	a->no_map = rheap->no_map;
 	attachment->priv = a;
 
 	return 0;
@@ -92,9 +96,12 @@ restricted_heap_map_dma_buf(struct dma_buf_attachment *attachment,
 	struct sg_table *table = a->table;
 	int ret;
 
-	ret = dma_map_sgtable(attachment->dev, table, direction, DMA_ATTR_SKIP_CPU_SYNC);
-	if (ret)
-		return ERR_PTR(ret);
+	if (!a->no_map) {
+		ret = dma_map_sgtable(attachment->dev, table, direction,
+				      DMA_ATTR_SKIP_CPU_SYNC);
+		if (ret)
+			return ERR_PTR(ret);
+	}
 	return table;
 }
 
@@ -106,7 +113,9 @@ restricted_heap_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_t
 
 	WARN_ON(a->table != table);
 
-	dma_unmap_sgtable(attachment->dev, table, direction, DMA_ATTR_SKIP_CPU_SYNC);
+	if (!a->no_map)
+		dma_unmap_sgtable(attachment->dev, table, direction,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 }
 
 static int
diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
index 7dec4b8a471b..94cc0842f70d 100644
--- a/drivers/dma-buf/heaps/restricted_heap.h
+++ b/drivers/dma-buf/heaps/restricted_heap.h
@@ -27,6 +27,8 @@ struct restricted_heap {
 	unsigned long		cma_paddr;
 	unsigned long		cma_size;
 
+	bool			no_map;
+
 	void			*priv_data;
 };
 
-- 
2.34.1


