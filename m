Return-Path: <devicetree+bounces-301553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mP56AhfzD2o2RwYAu9opvQ
	(envelope-from <devicetree+bounces-301553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:09:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE105AF614
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29D5F301BCC5
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 06:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08233A48F4;
	Fri, 22 May 2026 06:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bYPwAef4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54C3603DA
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 06:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779430037; cv=none; b=tHDXwohl5Tri1nJ7jrA0tlKmV26LhYITseMqcxFpOShCgRx8B3rIIXRuJbw5qUA/kQrlCFFOWxaE23yfQAXjjcdYVBEsAQvuFiNFDQj8jW/m2yoxEWvoXPESidqJEjlRliKZy1Uy/SvZLBfnSBtVlip5cD8dYF+pu0wRxJ/lpuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779430037; c=relaxed/simple;
	bh=/ew0ue031WYpDsaevXnTSZrIhbBeG5akyBwpldODkdE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q5pQdNzU4USWtKDHHKNdG4oz7C3DyryEa3bpEO5/4gb+PzzySAjf+qSx0/fRoRJO9NX5AeR8sMYNjQKJYTwXPOcEAMG0XehZBgwhhvRHpdwZlR4hsmXEeq27hGNuVFpPN7bdlnT1QOF4HgqibwjLaVuM11AtF0ac36jNgdBzygs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bYPwAef4; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-367c26471f5so4404730a91.1
        for <devicetree@vger.kernel.org>; Thu, 21 May 2026 23:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779430035; x=1780034835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyiX7MahC/TLGYvEVYll4nFlnUYS5AzNMKFJNf8jQZw=;
        b=bYPwAef4rahhBRKw+zntmEBECIBLCvbERpWI4kNFgFck84VvfdPABk6WB5JJRNlpSl
         bTmvFOmF95L3dq7bh4h1mZeBfV9zBafQFDmzW741h0/duQJqrZ6s7edd4M00cwKLdZME
         j1xh51vtC06+i7GZUvXB9I0fOnAYxwXgCon4Mm5SM3zhhkNE9YejB2veHrh2+vIumiF9
         9gZryLr9a3D1oYWFRiNpraKLUOqicX0j4Oa8kAjvH1mwHk/HW8PXyO3juHpGyVH+TCw7
         dnDqc7sCPGpnG1o9J0XrHpaoNnpoX86H6WK1lLSV3tVGrWfPkPp01h68EkKRUqKiKLJ0
         v+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779430035; x=1780034835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yyiX7MahC/TLGYvEVYll4nFlnUYS5AzNMKFJNf8jQZw=;
        b=cZo4ypbEZ8px5hY9xBB7+IdAuSUiHWrk+BRgxrET/Mecol9H9xnQCKc9hFJ/e/x3LY
         7L1OYSddMUUdNkWLUNHuoVdI4yo7n9p07Y8d/mWfwRmTgC67MHa2yPt15MYE09NgT7rq
         p7IbKMGhrFeks8fyNzoM/ktXazfnlZRoK821PqB9x4TLkC8U8zPwoLsge1AOVfcbT0lQ
         +PfLIk6511JvYM1pbr2e8xLH9sR0QTjC6RZktbGlLZAQUo9XaHynENDj6bXYKhhGWLWx
         4/P/egOgQ7Qtw6cshWGbaSCF4Jatr/EKqRIPsDV78av7V6on13tFsToUsg0vv/yz+0P1
         Z7VQ==
X-Forwarded-Encrypted: i=1; AFNElJ98J/mFxrCYiSAs52quYL9Xmm9t0hIdEY9mbppiktB+g84oi/0ZYfvSmHTcYRhCMtD8FQLhrULakkn3@vger.kernel.org
X-Gm-Message-State: AOJu0YxfSHaRnypPF3EEYSkuZFjuCE1CZufdojnr7twIerBAOFN4iRqD
	ZC0Skq7I0Egf9iPUDQ4HSDj7R5C/hCnOcmX0AuLgbInpOJ63zGvCO1Fe
X-Gm-Gg: Acq92OEC1TIxjitThq7T/BI6hB97PtQfQOid2eLddTNc2J6vzoR2r7kDosojHNPJZln
	T8PpcvJ6uI9Id3RWjdERjPGnPv7/iIBzm6uQnhiJ9uUv9E3P9SaIkOVk9dqIBknE0H9LagrtYzv
	wvm3UekFJlEJpjlmU4/a1fWQsIhRUjAUZZDCt3mDXl9Bs2oE16o40aw0kSn0OmO3iTOnV39TD20
	tAkhfWK54FcWdhaOoqlXf/hKHnKmWjDXOREBJYX9//U5GC3g3rDNyUTaPUvfmxqCqTLEqtY8rjr
	4zCrLLOI9ptJigeurUlRJAqUF05azf3VbG7XaVyZhhwmvXojnPGBZaQ51NxgU9nTUvxy0esG2Nk
	KgMSus6yycxxJ5sdsA9WZT7HzP31xzHPCKhehdPMbgDGfO6iaBu1087EvD3GNW370ovr9BCuXa6
	lwpBUmtBcQYoVABbkQwyAP/cnbDLWDx11mS4PfdJ8x0ggcZLeoNNGzFGo=
X-Received: by 2002:a17:90a:d885:b0:369:e4d4:79c6 with SMTP id 98e67ed59e1d1-36a6782a785mr2028386a91.20.1779430035353;
        Thu, 21 May 2026 23:07:15 -0700 (PDT)
Received: from radxa (122-58-25-162-adsl.sparkbb.co.nz. [122.58.25.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a7212aa06sm428572a91.3.2026.05.21.23.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 23:07:14 -0700 (PDT)
From: Graham O'Connor <graham.oconnor@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	robin.clark@oss.qualcomm.com,
	lumag@kernel.org,
	abhinav.kumar@linux.dev,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Graham O'Connor <graham.oconnor@gmail.com>
Subject: [PATCH 1/6] soc: qcom: rpmh-rsc: Skip TCS init when RSC is managed by firmware
Date: Fri, 22 May 2026 18:06:40 +1200
Message-ID: <20260522060645.4399-2-graham.oconnor@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522060645.4399-1-graham.oconnor@gmail.com>
References: <20260522060645.4399-1-graham.oconnor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linux.dev,lists.freedesktop.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301553-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grahamoconnor@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5CE105AF614
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On QCS6490-based platforms booting via UEFI, the RSC hardware solver
is already active when the kernel takes over from the firmware. Calling
rpmh_probe_tcs_config() in this state reinitializes the controller
while the firmware is actively managing it, causing a security
violation and system reset.

Check whether the hardware solver is already enabled via the
DRV_SOLVER_CONFIG register before calling rpmh_probe_tcs_config().
If the solver is active, skip TCS initialization and return early
after setting the driver data, allowing other drivers to find the
controller without disrupting the firmware-managed state.

Tested on Radxa Dragon Q6A (QCS6490)

Signed-off-by: Graham O'Connor <graham.oconnor@gmail.com>
---
 drivers/soc/qcom/rpmh-rsc.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/soc/qcom/rpmh-rsc.c b/drivers/soc/qcom/rpmh-rsc.c
index c6f7d5c9c..7915f12de 100644
--- a/drivers/soc/qcom/rpmh-rsc.c
+++ b/drivers/soc/qcom/rpmh-rsc.c
@@ -1074,6 +1074,20 @@ static int rpmh_rsc_probe(struct platform_device *pdev)
 	else
 		drv->regs = rpmh_rsc_reg_offset_ver_2_7;
 
+	/*
+	 * On some platforms the RSC is already managed by the firmware
+	 * when the kernel boots. Calling rpmh_probe_tcs_config() in this
+	 * state would reinitialize the controller and cause a security
+	 * violation. Skip TCS initialization if the hardware solver is
+	 * already active.
+	 */
+	if (readl_relaxed(drv->base + drv->regs[DRV_SOLVER_CONFIG]) &
+	    (DRV_HW_SOLVER_MASK << DRV_HW_SOLVER_SHIFT)) {
+		dev_dbg(&pdev->dev, "RSC already managed by firmware, skipping TCS init\n");
+		platform_set_drvdata(pdev, drv);
+		return 0;
+	}
+
 	ret = rpmh_probe_tcs_config(pdev, drv);
 	if (ret)
 		return ret;
-- 
2.53.0


