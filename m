Return-Path: <devicetree+bounces-235820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E579C3D2BC
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A1073AE569
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217D1357729;
	Thu,  6 Nov 2025 19:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aQqMdFnZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE68E3570D5
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762456108; cv=none; b=Yh1ECEn43Hzo4pF9lg92G+tvNwaob0jas+tOc60SxaCrRWxRNlzlPhZvjKIeF0Ck7+hZYa3CMlEJ/y5WBu7Iewd3WAPTa6M+ihB1Y28gZC7J2vQDcxu4pj/7rFQh0UbeVuOw+FMKZOLqUmX+ILOfPZh07wojShJAAWynUVKV218=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762456108; c=relaxed/simple;
	bh=mMs+/htGtXYGsIA71gg7FmYxj0Ux55LRPjq4c7c7iAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n/JYZpm9klxUAIVaBOslaDmOwRfOKErcm/0/zrYEeMOQi/75GKp5DglD6BFpZzLtr9NUfKCpGfXxSf8v0XL0+kJpH6YMwG5iO9OO8JONNiLZ0h945gwjBvPVZQHcq9PXTmDbpgC31miUxNdLdBIMnpRBTamolzU+t84LPIfY4Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aQqMdFnZ; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-633b4861b79so268863a12.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762456104; x=1763060904; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PBDauKoKfPD4CnZZWtWcSb53n04sjO6bQK2uW89yUaA=;
        b=aQqMdFnZ/EDbn5WdteambA+Xc3GQlyI8b7m8ylszwSPejK+NiQFn7rcT+7F24nrY/H
         5fzrZKogx9kbUl6gwFkr5vQZzq66EfoB82318oCRTbWOmt7gQu8Wii70ZcEfOfn7krES
         XM8j7l0WEa2tACzmLoeDIKMWSu2bUaRaz3RB/h7cS2vAkgQ3dK3H6e3RFnXSYBfDR3lS
         OYtBw4QHPF7r5yCyXY56UTk37K4UiC+rYNqMHhHmyRJYhXBZ6N3tMAjS7DE+ShBBZs7V
         nnDiGh4m+bC5D5Wa9UrSeQpKVgIPu3HRDGJywX6an6ET8UQg43BnhDIYIhAtDFsdx9a5
         7IQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762456104; x=1763060904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PBDauKoKfPD4CnZZWtWcSb53n04sjO6bQK2uW89yUaA=;
        b=qAlDOQhtA4Yt/D5d5Op81vW0zV0mRz30uTEn6iAlpOCoRRDKQAuhFf2lv4HbQZWLLi
         VwgIVt8EpOBPwIJkLTQT6j0aOJaSxh8TVy0SrUpOj6txnnHFP7Qjhc6VZjMO45G0Ck8N
         yFlXtn8E5/zJpDzPS+mEty7OmhOiFZMObkg7YEenrBhhiKA8jnCvwOLZMDXbO5F+LSg8
         oJ1FFdaA+67fFpwIG7TeAf5lB712dB3uMuwKUa9bMPJGUVeXV4FD96yzOUFaVKNM+pJn
         pOGmvD+TKzYirVvYUT0ArHB+zvB6Bz2T2i9JW/PHZVdnC7A0oEUVcx8RagdsAOXFI3eu
         Y9Zw==
X-Gm-Message-State: AOJu0Yw+ch3tcI+jBppSqFZj73Xo6JuEJpc0aOm7QsN88OkEvEjRpJbZ
	s7JL0vXIot8yOqNa9n/dlZ18W7z9XUL9Lu+64lunqAvr7Oo2A1BTbqM6V2CEYuAgkrM=
X-Gm-Gg: ASbGnctNX77gL+cM/fR7g8j+IMR6c6a3pkx7yCvQD695YZ/FfjOB0mBlGE6qaYJT6MS
	a+GIwbJMPc/nKQPxEtIWg7sexY+Evr6i5SgX7iN1D9On9YK+Z+p8QZ0cTWVYXtUGcTMwmTBlSiw
	fh8RhxD9mvLkIqIGdLbeVuFdvs2eKCf+fFqUmsbZZieqA1wrVEZDeBkiDMZI3B4NHaL0WGhYOCK
	4XUN+BuzbTSRk6UZmkmlb96A02JUfZFWtlEerJ/lG8Uu73PiJ9b02D/otIicMSmjL5N96EU4ji1
	0B7gOd09S9PQst8/scK0M8/Br5Pv3GW9sQLmvilA+uqUwRaBJSGeDGJ/1sbXB20spD6+dQGWSFO
	Brt1y0NFu/WbjgMvssWXE2C2YZbV2ZWyJtCI2h0ypdAlfA+sZe1Z8Zq86DeojeCnp/jikgK6iBo
	NczYMThORLCuIlZcsFJcnr3SZztGI=
X-Google-Smtp-Source: AGHT+IG+hyJMTcEGj5iy777lLiyM71Dn2jw/AE3Pf8p7sH3RSp5ANpEt8SWqIzbEh+pnzhio1EyGSQ==
X-Received: by 2002:a17:907:6ea0:b0:b70:bb39:6f34 with SMTP id a640c23a62f3a-b72c085cb83mr16365766b.1.1762456104130;
        Thu, 06 Nov 2025 11:08:24 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa2510esm26739566b.72.2025.11.06.11.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 11:08:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 06 Nov 2025 20:07:14 +0100
Subject: [PATCH 07/13] firmware: qcom: scm: Simplify with
 of_machine_device_match()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-b4-of-match-matchine-data-v1-7-d780ea1780c2@linaro.org>
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-tegra@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1409;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=mMs+/htGtXYGsIA71gg7FmYxj0Ux55LRPjq4c7c7iAM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpDPIPnieH16c8d60rwZIiX6haowTgQtMDdTNgc
 Nt9m3EGIpqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQzyDwAKCRDBN2bmhouD
 15MND/9iEN4qP+PowaIfKdmRXiKRnNXohM8G8jgJAet6APPR2LlkfxfOSySgRZDLKCKTj6THV0b
 7S1uNUEDLipfAfqOyb2ES/O3p5hOdH+NaiNLbJNFfvKNEVsn1979VTOkhpl0yR8E/eLVMk6Rb4v
 3BjFCTTZSlOxYovGcx2SaB8PFO7Mb0UJEj9+6dJqeF+WyC1jWN89UziF9Aa9kShSX7nhipdwh3e
 ZvzDbpiCfcqIJ1oAWBlOLSkYTWAVyHAxnH07HvL+u3MaiynTgwewgye1+rFCFDZXCord4VxYgJi
 r/pAXsBB7P8GdbQ/0tzWWixP0N5XIW+p1fW23ZI7sp7IeSI/y8IOHHtzb3RfzN5z0cL89NB31Ld
 ZMzeoYy4VMqJsWvzxzO5H04KoDvuG8++JeHBB7TFbaBpwfMXXF/fhWawgvSGfvGlQVMHPkvwQzT
 pm/KFaHtPyRmeKO7mf/wyxYMOHlJWUFo5HgpPwzSKC/wTylBSMjmlVio4ZGFJeLMvA1hFqKE1md
 ncgtRPz3+HXM4i3pKZ1yCq3ECTajGjpZ/G0S8kFfY7AEKZlPseRRXMisGjDhnEibdRTOVnsmjBs
 vG5FsRPbRPg/s0BYkgUIUEREnc9tP+jJ3rCqmA4Bd4DOr284xpS3Rd+NkltT1CfIkfO1IRPgHtH
 WEqN666U3/TfL2Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Replace open-coded getting root OF node and matching against it with
new of_machine_device_match() helper.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on the first OF patch.
---
 drivers/firmware/qcom/qcom_scm.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index e777b7cb9b12..1a6f85e463e0 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2018,21 +2018,6 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ }
 };
 
-static bool qcom_scm_qseecom_machine_is_allowed(void)
-{
-	struct device_node *np;
-	bool match;
-
-	np = of_find_node_by_path("/");
-	if (!np)
-		return false;
-
-	match = of_match_node(qcom_scm_qseecom_allowlist, np);
-	of_node_put(np);
-
-	return match;
-}
-
 static void qcom_scm_qseecom_free(void *data)
 {
 	struct platform_device *qseecom_dev = data;
@@ -2064,7 +2049,7 @@ static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 
 	dev_info(scm->dev, "qseecom: found qseecom with version 0x%x\n", version);
 
-	if (!qcom_scm_qseecom_machine_is_allowed()) {
+	if (!of_machine_device_match(qcom_scm_qseecom_allowlist)) {
 		dev_info(scm->dev, "qseecom: untested machine, skipping\n");
 		return 0;
 	}

-- 
2.48.1


