Return-Path: <devicetree+bounces-238561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E69BC5C526
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 85BA735CEFA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5AAB309F17;
	Fri, 14 Nov 2025 09:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1hM7L/cT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B83081DE
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112680; cv=none; b=aq1Jw/XS3R/XggLOCpHzhA0M8ohOefZoG2BxVYdd93j1yrNEsAMr5WIuO6wlert+9Ee1oCZSS8Y/W4yNoTbOtbTs/AIqrjEJWlziH03TFU+NVp6QBwVuQ+sjf9q0EkZvIQ0bexgroBwfk43jOkXGpiyMdPO/T4TaaxGazwsDxYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112680; c=relaxed/simple;
	bh=Fokp6DI3ZgvMfeV4tDWIu8AT5pAwNorUHQtwcVcIzSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TCRZ/ojxXh/homZzlwuEa/vlgiVaWVR/kc35kncdqIqlf6b2ivPbJdk18nNFFGCeyxvFqiAPMa4EHwfhaJqNCdiCtsEs+W8pFocehz7mSfbdC3fPFweXuY5ZOHfJYoyK9HduvOGgriKCXabfiUYF1rIxfFFvBOsW6YxIevCckuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1hM7L/cT; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b7277324054so232057766b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1763112676; x=1763717476; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2lie/xa7qc7Ek8fm8wHatiECh3EUIgF2lTTajZ10Sa0=;
        b=1hM7L/cTDFahu47ciwkvt0/0DiBw7z+u4kFQeo/IjznMF0SKT5OodGjl+6IP0sthnv
         RidrO9i6rip7ReUFH+O0wz93v2PreHlgKlBUPqIkFuFvGbMHCSSQXYM5TAMk63wm7GK2
         2CQOlJtR62K0E2zlhDfk2S8RTWPa92bt1z0MSF9KiP2/8aYS/acRKqXk+a/06NZCM7jZ
         9pjIJltlu7Q0nNIF+ViNNlG4JW6o9q03Z2w9GcSpVqyMC4jI0+BLmgXkM+Yb2ef8crRI
         3//xepRH8g8qpriND/MEpPG+0Zsrf3l9B5kS5A/l7RP5uMErAf7toNXAj/BBYvWWY82H
         bGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763112676; x=1763717476;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2lie/xa7qc7Ek8fm8wHatiECh3EUIgF2lTTajZ10Sa0=;
        b=BLFz4EApaJTOgQ558FPoP4wsYQ3h1acso4QO/V0YEDJrolfrkChh3fAlLyw3MZN76C
         jFq8s2jFs2jPrPgs5hkHQ35VllY76JrtWotD5yHEr43HslQj/vazwk7AIVBPUl24vxmJ
         QAJA4UFnvd3clsx9GQuK7mXg+RWb/o+iW0Xo9rqeLivjJGU3ZI8daY/zMjUjtXf9b199
         yCKx3+lgbw0blj8Y4DDnjoLqHVDA9cINbMoC4m5jhhAUugKWOKSRLZTD3b5KD1GAkxlm
         YqQFwUpKSR/0UIw7DtKCWvwgaPxx6TH7sMyBkOzlenbhbKOZ+nqDI57qY9kbaD+SsWGp
         VyxA==
X-Forwarded-Encrypted: i=1; AJvYcCULb5QOnvM7eduoBsOHBvKuUN4ZMKLDbT4Hw+z5IgHV4t59rVTHWSxHt7v02u+qi6kyQRlMlVWyhAy+@vger.kernel.org
X-Gm-Message-State: AOJu0YzsDNCHteiE7O245QM38PXHOg+Sbexf1E5BJrTUsv6trsNIkfXJ
	FXR7ItzCpSZANxLFIStGJkai44s/582/+ShitgBmanL5fPf0nEn+3wzZIlel7F9iJkY=
X-Gm-Gg: ASbGncvjUOC8tSOLiLrB7YtH1A1FRdbTgIJiiWZG6EGMn0BHrnLohVONwhYNkH9XvXz
	sXEGpJ+SZoQXaTdu9foWEvAo0rNGNydTchUIwdgFVQ2O35geAMwPTe5N3YqXQIsepbTYrN8pJid
	fXpOJw2smSIxUoGxuzYN7r1gpkrBBnBORrG7juKxVQ3dKr71n4zqXvNKQYvSr3LwTPkwKvULwEh
	pLD76Jk8L3ORrKuhR3kIAtnAXBNnNIN4BTqZzVYyfzCE7fY/hIYNGMNnh4g847/zowTKNP17cWl
	yhhwcCZIPo9KTz/pIYgt1CCOfl7Qoc3cH41Pk/pyuFeHa42eRBxa4GhxuYHtrtNjKJpSQuQhW6W
	Q+veoeQnoV0vhPEYSjekWrR8OF2Kkvos5EphdBhWo9GG0Q1R8F6poa1nP+DgJRKwFJ2YyxoSL6e
	BXRIywpJgXX/MpvXZB2xneldv7dNPHX429E3fa5MBWb4AvX45/YtlfrCiIivhsoEDpilkFNidEf
	J1473rP+uDf9T0xMH0NwcFPMU112yMIk4w6cs2t7EAW
X-Google-Smtp-Source: AGHT+IGv7NzlJ8vcISP1RXt6QWGiueuxhZk8jTm6UtlmVL0nCoXWqv7iPPstalaD6MWfX/FUBpuUMA==
X-Received: by 2002:a17:907:98a:b0:b6d:67b0:ca0b with SMTP id a640c23a62f3a-b736796b4c9mr211603066b.61.1763112676330;
        Fri, 14 Nov 2025 01:31:16 -0800 (PST)
Received: from [192.168.101.179] (2001-1c04-0509-ec01-156d-fa6e-7f19-0b67.cable.dynamic.v6.ziggo.nl. [2001:1c04:509:ec01:156d:fa6e:7f19:b67])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80841sm352104366b.41.2025.11.14.01.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 01:31:15 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Nov 2025 10:31:11 +0100
Subject: [PATCH v2 3/5] interconnect: qcom: sm6350: Remove empty BCM arrays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-sm6350-icc-qos-v2-3-6af348cb9c69@fairphone.com>
References: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
In-Reply-To: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763112672; l=1834;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Fokp6DI3ZgvMfeV4tDWIu8AT5pAwNorUHQtwcVcIzSE=;
 b=Zi/RaiK5Rfu1T6AZfcvzDgwPKqVZcrP/SBZ0CWT/bpweCDnz9ti/5N7ygoCFGj0V7Q52oSIhD
 btR+yiyAVF4A23j2WQl7J5dsfrpEoucXUuG5xGZyWAh1oKCvcmxpg3E
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Clean up the code by removing empty BCM arrays to save some lines.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/interconnect/qcom/sm6350.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/interconnect/qcom/sm6350.c b/drivers/interconnect/qcom/sm6350.c
index 99c435a5968f..246549cb761e 100644
--- a/drivers/interconnect/qcom/sm6350.c
+++ b/drivers/interconnect/qcom/sm6350.c
@@ -1526,9 +1526,6 @@ static const struct qcom_icc_desc sm6350_config_noc = {
 	.num_bcms = ARRAY_SIZE(config_noc_bcms),
 };
 
-static struct qcom_icc_bcm * const dc_noc_bcms[] = {
-};
-
 static struct qcom_icc_node * const dc_noc_nodes[] = {
 	[MASTER_CNOC_DC_NOC] = &qhm_cnoc_dc_noc,
 	[SLAVE_GEM_NOC_CFG] = &qhs_gemnoc,
@@ -1538,8 +1535,6 @@ static struct qcom_icc_node * const dc_noc_nodes[] = {
 static const struct qcom_icc_desc sm6350_dc_noc = {
 	.nodes = dc_noc_nodes,
 	.num_nodes = ARRAY_SIZE(dc_noc_nodes),
-	.bcms = dc_noc_bcms,
-	.num_bcms = ARRAY_SIZE(dc_noc_bcms),
 };
 
 static struct qcom_icc_bcm * const gem_noc_bcms[] = {
@@ -1600,9 +1595,6 @@ static const struct qcom_icc_desc sm6350_mmss_noc = {
 	.num_bcms = ARRAY_SIZE(mmss_noc_bcms),
 };
 
-static struct qcom_icc_bcm * const npu_noc_bcms[] = {
-};
-
 static struct qcom_icc_node * const npu_noc_nodes[] = {
 	[MASTER_NPU_SYS] = &amm_npu_sys,
 	[MASTER_NPU_NOC_CFG] = &qhm_npu_cfg,
@@ -1620,8 +1612,6 @@ static struct qcom_icc_node * const npu_noc_nodes[] = {
 static const struct qcom_icc_desc sm6350_npu_noc = {
 	.nodes = npu_noc_nodes,
 	.num_nodes = ARRAY_SIZE(npu_noc_nodes),
-	.bcms = npu_noc_bcms,
-	.num_bcms = ARRAY_SIZE(npu_noc_bcms),
 };
 
 static struct qcom_icc_bcm * const system_noc_bcms[] = {

-- 
2.51.2


