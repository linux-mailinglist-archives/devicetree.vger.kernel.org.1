Return-Path: <devicetree+bounces-156624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A8DA5CD8B
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:14:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 120047ACF61
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B74263883;
	Tue, 11 Mar 2025 18:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="XuITvY7s"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD5A26389C
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716874; cv=none; b=s15g5G94V7mRc+GjQVn0ATGx5YAGORZU09JyrGtQfGs2zwqyxmFHxYSpPOpgExO4v1CYdVaTVERTgghNVps/+uPjiTjRvzc/N7JfWlei+y7+NCi8X19eELcrr0pRpLvZMvmruTFgL+QySFOlSseLFVA5AA4T3gHG2WPN2JY+KUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716874; c=relaxed/simple;
	bh=rseNujO8UsyKs/oHYgAXBvqaoSwHFpy7vMnbmHRQuZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WYMaA9nuJfbxduJbBlPPTR6UflqYL5u/7+0J5K4Z5rRoka/kCGakj6CJ6FR1SkcOPVSp6qDkMoR4rJNPSA0FwlQBS8p6NLzFXLG6Vs9FmJczRCraOo0HLIhVkogU/BX8CFTRB6R+Vkkw5nG7vamcIE1YqFfFZ067Hp1RwvHchyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=XuITvY7s; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Glfxkk93kLTkDL1Uqox9uWKHfSjCb00r31qIcpMQ4Bo=; b=XuITvY7sAUTJbhC8CR+inRL7+x
	kfQBnPo+oV6sTAa5D2FHLENPU5cOvSxDxTXVtDzdL4M8lU78fu70tLOzO8M+kCc7EedjHbMKs49ar
	9JyNZW4t5/WJYoDs/Cby25aO213Z4xbpnEZ13P09ibeo6lmWRPA9VZBSEXAJmSPBl8rqmwon3NVM/
	qtOyPc98R8AFRohJ5gKTmKOonGjZo+3Wxz0JNqvxO4hIhfsTFiKQYOIQgY2ebr2euZh17Gv9yvAQ9
	cHfGI1/cgZgwOdFnZbXR7/xictpYiLZnc2yjJ6NIJrFzuvcD/zooivRrdonYej2umMvAgas3ny5SK
	1KEVdE0A==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ts47Q-007Dal-9z; Tue, 11 Mar 2025 19:14:26 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Tue, 11 Mar 2025 15:13:44 -0300
Subject: [PATCH v3 2/7] drm/v3d: Set job pointer to NULL when the job's
 fence has an error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-v3d-gpu-reset-fixes-v3-2-64f7a4247ec0@igalia.com>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2839; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=rseNujO8UsyKs/oHYgAXBvqaoSwHFpy7vMnbmHRQuZY=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0H110uw/+B8Y0Bilj5K3Co/BoS2co3x9bj4gr
 hrA9cpbsPCJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9B9dQAKCRA/8w6Kdoj6
 qvqOCADOL8EEtdkGZQSy5SlMbxskwDeTprSxmXj0Zoeua2GIWmx9nBEEBvP5ECCZxYstnsPQWgF
 O5JAAHXKOb8Ja21wrZIod4yBiOmAuTUOZVpiXjRg67UM9T5VGtsUE6iOnM9n5cGHGtQLjPyg8W2
 BKjEktTPg1jd60Jvw7tQ7Z6yeqZESuWrTORUpV7Bs6dLrx4OcjqAuqtB3N3lVE1ys/xhcQCDj7y
 HEwI9ZR6ysCShI25cnABurAt1d4Ks8+qNnrRxNLxpEmbEPMoJdypLSs0izD1QuLI9Innk6NPNmV
 YEBko9LZiHxTbJjdukV40JWC+9iKRXmYalBtgS15xxauR+VP
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

Similar to commit e4b5ccd392b9 ("drm/v3d: Ensure job pointer is set to
NULL after job completion"), ensure the job pointer is set to `NULL` when
a job's fence has an error. Failing to do so can trigger kernel warnings
in specific scenarios, such as:

1. v3d_csd_job_run() assigns `v3d->csd_job = job`
2. CSD job exceeds hang limit, causing a timeout → v3d_gpu_reset_for_timeout()
3. GPU reset
4. drm_sched_resubmit_jobs() sets the job's fence to `-ECANCELED`.
5. v3d_csd_job_run() detects the fence error and returns NULL, not
   submitting the job to the GPU
6. User-space runs `modprobe -r v3d`
7. v3d_gem_destroy()

v3d_gem_destroy() triggers a warning indicating that the CSD job never
ended, as we didn't set `v3d->csd_job` to NULL after the timeout. The same
can also happen to BIN, RENDER, and TFU jobs.

Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 drivers/gpu/drm/v3d/v3d_sched.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index c2010ecdb08f4ba3b54f7783ed33901552d0eba1..34c42d6e12cde656d3b51a18be324976199eceae 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -226,8 +226,12 @@ static struct dma_fence *v3d_bin_job_run(struct drm_sched_job *sched_job)
 	struct dma_fence *fence;
 	unsigned long irqflags;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		spin_lock_irqsave(&v3d->job_lock, irqflags);
+		v3d->bin_job = NULL;
+		spin_unlock_irqrestore(&v3d->job_lock, irqflags);
 		return NULL;
+	}
 
 	/* Lock required around bin_job update vs
 	 * v3d_overflow_mem_work().
@@ -281,8 +285,10 @@ static struct dma_fence *v3d_render_job_run(struct drm_sched_job *sched_job)
 	struct drm_device *dev = &v3d->drm;
 	struct dma_fence *fence;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->render_job = NULL;
 		return NULL;
+	}
 
 	v3d->render_job = job;
 
@@ -327,8 +333,10 @@ v3d_tfu_job_run(struct drm_sched_job *sched_job)
 	struct drm_device *dev = &v3d->drm;
 	struct dma_fence *fence;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->tfu_job = NULL;
 		return NULL;
+	}
 
 	v3d->tfu_job = job;
 
@@ -373,8 +381,10 @@ v3d_csd_job_run(struct drm_sched_job *sched_job)
 	struct dma_fence *fence;
 	int i, csd_cfg0_reg;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->csd_job = NULL;
 		return NULL;
+	}
 
 	v3d->csd_job = job;
 

-- 
Git-154)


