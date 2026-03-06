Return-Path: <devicetree+bounces-271779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNuRIVgjqmkPMAEAu9opvQ
	(envelope-from <devicetree+bounces-271779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:44:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA27219E97
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C4F9302DF6C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF602E2DFB;
	Fri,  6 Mar 2026 00:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TgKM4Ee1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD6A2E6CB6
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 00:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772757840; cv=none; b=azNaHzkHbY43VYSn2i7bF80FIO3LW7QovcDudCt+6LoM6pWyn4pw1iL1Y7g99ojL/zstPZ28+zWedlMJEZruh2wuSan4sxD9jk64Vz5q2uAukKdI7XT2aXvm7/v7hI2sgRwVhsCBoEjdm+v7rQUcMGsjP5SryPSvlxZKoBuFcGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772757840; c=relaxed/simple;
	bh=SlxNkWeYG2jC8F4dtE1l8oVL/VcZqLqk8x6VI232W0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MIMuUMAO8EHcem2EfzuRZUPJHWheVHAF0ROG7qdDFkDkmtTdBXHtYMA2lYwnMQ1u7mzfkQvowTDjVCJ+kOdMk1fzLQMvlu3zsy2pHrg2Nr45WUKsfsjj/WzP1lSdU4CXMLG8xvLy4UQS6/sBYNzcGCiVJLCygakcn+N8Nt07fHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TgKM4Ee1; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45f015a3259so3504083b6e.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772757838; x=1773362638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQ8acXeUu2flgK+dNZrWf/T7XYkkUKe2qrxt7AXt0W8=;
        b=TgKM4Ee1shtqjFqAYX/Tvu24mMHzHYWDHwbcUrxByCXE9jIUgDEiA3Tgo6dYq+ifCc
         WDCcVvSagAULwIIo9hsBP0NVU0erG7BKNDwtloqo9r3vL3TZ2O/9lLAqEb/y7COLWUmi
         4GBwj02/d+o9dHsssatWS2WO18AWoxkwndEN/6R8W6r7G3YY925j9OwIeP8XKTdhAV1t
         D9SXQubmL5WElie9VbBc2GGiYtUvs8EyxLyH516nIDfgb7u0CkfVeLVd+HGGlmSW3jJT
         3lA+Kwn2jp3ZATM9bKtGTX0TMSqr0QYmTJo8LXDdmeRE+g3yLYMQQMqtWW6lAxRjfe6c
         GBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772757838; x=1773362638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MQ8acXeUu2flgK+dNZrWf/T7XYkkUKe2qrxt7AXt0W8=;
        b=faIVbZi9oU9fOApQgBKlolFOnYKQf7C6dKKppg9NOhsDrDRVkesiuwlh3EOQUnpTZu
         E1XnIvdGKakciJhuDOKAC5rI7fEuKSdjJcrDA9jOv41j1LgR019rJa+O1VGd98YOG1vA
         cq3EoNZnEoheLwY8H37M0tCreSzKi3B8OSI9KLk4g50gkdorTSneI5M0HrQM9u1S5aLv
         8GGpY0fJXQTsmYdQ0Q1KJzBT8AqhSmyc5Es5XfhfeNPzu3V2H7FBaYU7MljQbaON/lkS
         mHHKRmpw06g6sjOYYnDilvZbZUekaNFJSKer87zNr2RsU/9jQyxSXw00ZsN5OujNGdIu
         VZ8A==
X-Forwarded-Encrypted: i=1; AJvYcCWA3BMT1dlA3l9uBuVEYzLUbvd2df47RgjovGb6xSVY3eKo+YIpU8zomGt7e2ffO4M647G0mvKABDWB@vger.kernel.org
X-Gm-Message-State: AOJu0YyABed9vI4DZLaXkaedeeM9ZXmy1FJStFgTx5WqnMjzTHyzjaqR
	une+JXKDfNHDqxSx5miJvf36UygY5pnNft9UDiK85hZVE+gLCUcpfM50
X-Gm-Gg: ATEYQzwSxaz1hlHceowLm2JCM53HTcWOjPlfsm4Y5DCQTXcZhn9OwQBtnrzSNwIzQgK
	FbnzqrctEc2JKP9A9OAjPFfvHl4g6+SOt/mlN/seS7S4soStty8PDlJ7G1DhrOJ6BozyvsX0f/P
	3sJOrI1wY19QGLE1cycQeCEuHgJQJsHkYrs/X9rDWcIxdSnL+tFHJUJsp67Ie0Ldrv7IDhoEN+G
	435I5k0sUyIGilWMxp8IUg6eKYFCp7WwDbnM2Tlbm49fifKXXLo0aEBzkYOzvhW8PaTEDbIO8sR
	NCHYfGpY8TdyLZpjuSqciMn87ZNuQdWKS2qOuHHBTb4EDdEtTAbY71Es3MVGJGXCqqF1vrM1q0p
	npTv8HUrkSZogehSCOdGlRda50SHiPyMcKD4843CJXsfzuXfPYPyhQrUI8PM2LdDZIH1Tv0tJB/
	fFfFrB6diUbBCR3sIz8FD56U4TCQ78bPmL5jpbgiUw+mOJmfpUFfGqhd7xolc7rLLL/zSRnmQRF
	ZjT2mdUrgZERDG9WTZ9/OtRmdL43s5/A/Qm/XUYmg==
X-Received: by 2002:a05:6808:1a1b:b0:45f:1387:973b with SMTP id 5614622812f47-466dca7e5aamr210025b6e.6.1772757838015;
        Thu, 05 Mar 2026 16:43:58 -0800 (PST)
Received: from framework.misc.iastate.edu ([2610:130:110:25d:2aa4:4aff:fed7:9b19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-416e65b1c82sm69335fac.5.2026.03.05.16.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 16:43:57 -0800 (PST)
From: Kerigan Creighton <kerigancreighton@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com,
	wcn36xx@lists.infradead.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	linux-remoteproc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kerigan Creighton <kerigancreighton@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 2/3] remoteproc: qcom_wcnss_iris: Add support for WCN3610
Date: Thu,  5 Mar 2026 18:43:43 -0600
Message-ID: <20260306004344.10968-3-kerigancreighton@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306004344.10968-1-kerigancreighton@gmail.com>
References: <20260306004344.10968-1-kerigancreighton@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1CA27219E97
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-271779-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

WCN3610 has the same regulator requirements as
WCN3620, so in qcom_wcnss_iris, we can use wcn3620_data.

A separate compatible is needed for WCN3610 because the
wcn36xx driver uses it for chip-specific configuration.
Specifically, it sets BTC (Bluetooth Coexistence) CFGs,
disables ENABLE_DYNAMIC_RA_START_RATE, and disables
STA_POWERSAVE for this specific chip for stable
functionality.

Signed-off-by: Kerigan Creighton <kerigancreighton@gmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
 - Move remoteproc compatible string addition to the middle of
   the patch set.
 - Add Reviewed-by Dmitry (thanks!)

Changes in v3:
 - Describe why we need a new compatible in the remoteproc
   patch [Krzysztof].
---
 drivers/remoteproc/qcom_wcnss_iris.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/remoteproc/qcom_wcnss_iris.c b/drivers/remoteproc/qcom_wcnss_iris.c
index 2b89b4db6c..e58b59355f 100644
--- a/drivers/remoteproc/qcom_wcnss_iris.c
+++ b/drivers/remoteproc/qcom_wcnss_iris.c
@@ -95,6 +95,7 @@ void qcom_iris_disable(struct qcom_iris *iris)
 }
 
 static const struct of_device_id iris_of_match[] = {
+	{ .compatible = "qcom,wcn3610", .data = &wcn3620_data },
 	{ .compatible = "qcom,wcn3620", .data = &wcn3620_data },
 	{ .compatible = "qcom,wcn3660", .data = &wcn3660_data },
 	{ .compatible = "qcom,wcn3660b", .data = &wcn3680_data },
-- 
2.53.0


