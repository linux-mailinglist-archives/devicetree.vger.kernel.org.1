Return-Path: <devicetree+bounces-213360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1984B45353
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 11:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D17827A8B89
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A8728137C;
	Fri,  5 Sep 2025 09:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hMXja/y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6A92749F2
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757065035; cv=none; b=POB6OxO3dJinVZUchb9NkSvAfuL7X4gA7hRkQYPf4AUHWIbKauuBAFVth2YSlzjc8wTdWU27xfiPtaIoq/oMSwz6MUWB2sdISZaz9MUJvZ0rHNJjYKfXHcLULHZFab5DPeCD53O8VwCHkESBwBFrNWewokyzpInFlxBZB5SwTvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757065035; c=relaxed/simple;
	bh=w6GDFIJ+X63yvl142zHgW4KfFmPUnPR8J/fwB+G5Rgc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rKbxqkgaZycWCcwj8ZCsXB6KojMzZvfof+bEf+C8GXcVh1WF0zXSQj9cdwpa5y+JD3u/P7XC6nO7lHK7Erg/rn4Xc0TuKvuLi6jygzQmoRJ5qQsvKG0nfGb84ws5kzPU2FvYOtg9RTwMNMYSBJrPxVxU74ZSf0x2iprjKi2Kmoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hMXja/y7; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b0472bd218bso341786266b.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1757065032; x=1757669832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SI/TqVlWRD+p2wdRTf7lXSCZ6jSplSGXljjBzdG21/U=;
        b=hMXja/y7jm5PvKmTPqesLC2fOa67KslJLaBebwBHFi7IMrX+FhZfuIkCnCzC9M/QDK
         1irkN54D5MFhFbYNNvMVHq8UeG0D5Pl8dPEX13srjehmziX4rtKcpEgz8IBZyAcASWXa
         tFnPSmExokB6QdZHThIZhv4a+pPmxN03DtfjgVJcJk8nYCotINM/am2KRiHycXEOo/FX
         7yYv2SeOzbT4jt3bmbYD3AZq7TBMlBzuJbG0K+sm8wUVQJ1Xy39g50j+JmjdZww89nD8
         5AzFYsl8qElwHWebiWNYfV1lf16234p3VsPp3iIS+NuFLFDRkxWQMGtgInHO5Asvq5vY
         X4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757065032; x=1757669832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SI/TqVlWRD+p2wdRTf7lXSCZ6jSplSGXljjBzdG21/U=;
        b=M+9LAIpN1oA7ojniauEQf7AMtztGWT8KlZLGnlcHDGsa8K8WOYiFQYvnHDdH+KGrj9
         OZJJWCPwpf6BhhTMatEd+cwnIG8gOMlNtMWcovOMeAACo2yS+TwEi8JdHf/kAk1OJY9d
         7GhTmej7dbsMcsW1SkBacyuvddUx2PY+UQispO+JFBKYKejbVpCjoETFZxgURz55LLgY
         F2ZZIeTuI12RYfJWdTvjsby7LOWv8Il4gLDu4CpcqPRGpUOd6iT/Juq3raPOSct/TDJ5
         2OeYazGxtgiqQTKsP6GoBmP/qcVKfRYKxh895AT5vTUUP7sPN8IPBNyUZhS89wQfF0X5
         I4TQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3H2lIZ+YWA4oWdO6p3zmQCaO9/86WzFgsVcYNMTtS9txCXiO0u0ydy4h0tHiWNEvfsgLrqJrrR2n2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1m84vHIoRAr2zWr+O0SACPCudKjo7cD4OCcCKIZLZAgng4ycT
	vk1EBUb/6HsfEGm5Gb0sQUkMzgH8pQDvPuPWp72uqqA5Ordd+munnbTKf9oGcHtfCcE=
X-Gm-Gg: ASbGncuYI43m3d+5uVNG/CxG/OflvHVqnOaCSf0OTB44UViupw7NQB+GHUjDF7aez3X
	hV8kBlC0V7sRNM418ZfRywQoPO9NuuoWnG2UkE+qNhQkfrmCpusWtUtdpajGSUZW0O3Ag8BBuIt
	QRmt2ej/IHQMxpd4l1178Uz1BMXJniRu3do8XISzz6H6vL1kzbbSCogW+JBSlcPjWuRu4Bz2wHQ
	p206d5jowvfY/JB9HAVMVLVEmr+F6KjMEEKEBMc1GTKnAmQoQ6+7twyazg/+djAOOYgA0Lq6DGT
	MdGI95mJZFi2uJdw7M2SEl/fR8IXKfD06Mz3ZumpS1U+TiWt2lewC2IXIf0hI75UIJyz2gVMzWJ
	Qs8EM88xo1NY+AwMXOzDdPoH8BErv/a5/5Tzvwmqk5S+FqOLyrKe1FwHcsdKaxnHXHP0qWWq/4i
	hBNc+0S/YZdeeuWkL5VOe33n8frT18XA==
X-Google-Smtp-Source: AGHT+IGWzvz7Jd4OjcFPWdH5oL6V/J6WBtEASHEF1I5b9fS5dO04CE1hh46ZiWnFvbAOp5lSYlOmsA==
X-Received: by 2002:a17:907:1c0f:b0:afe:9880:8a9b with SMTP id a640c23a62f3a-b01d8a30e2bmr2250841966b.2.1757065032263;
        Fri, 05 Sep 2025 02:37:12 -0700 (PDT)
Received: from [172.18.170.139] (ip-185-104-138-158.ptr.icomera.net. [185.104.138.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0416842ffasm1361597866b.38.2025.09.05.02.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 02:37:12 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Sep 2025 11:37:05 +0200
Subject: [PATCH v4 2/2] remoteproc: qcom: pas: Add Milos remoteproc support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250905-sm7635-remoteprocs-v4-2-9e24febcb246@fairphone.com>
References: <20250905-sm7635-remoteprocs-v4-0-9e24febcb246@fairphone.com>
In-Reply-To: <20250905-sm7635-remoteprocs-v4-0-9e24febcb246@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757065028; l=1934;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=w6GDFIJ+X63yvl142zHgW4KfFmPUnPR8J/fwB+G5Rgc=;
 b=0B8vnxm1AvzPVVeUgAQf02vyF1lJ/7BCN8e1OLXPuvneDRXLt2hKLZh0rYQLIiQjv9b4ySsH1
 mG3q+u1RqC7D8G0AoKe+f0cx1Tj6jej7gUFhxAQnBsqKO3/8nnFmvzi
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the different remoteprocs found on the Milos SoC: ADSP, CDSP, MPSS
and WPSS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 55a7da801183d54569452dbb48041fdc52bf9234..be4edd0c3eeefb80d3b25a48f6dfe0b7590bc624 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1255,6 +1255,26 @@ static const struct qcom_pas_data sdx55_mpss_resource = {
 	.ssctl_id = 0x22,
 };
 
+static const struct qcom_pas_data milos_cdsp_resource = {
+	.crash_reason_smem = 601,
+	.firmware_name = "cdsp.mbn",
+	.dtb_firmware_name = "cdsp_dtb.mbn",
+	.pas_id = 18,
+	.dtb_pas_id = 0x25,
+	.minidump_id = 7,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mx",
+		NULL
+	},
+	.load_state = "cdsp",
+	.ssr_name = "cdsp",
+	.sysmon_name = "cdsp",
+	.ssctl_id = 0x17,
+	.smem_host_id = 5,
+};
+
 static const struct qcom_pas_data sm8450_mpss_resource = {
 	.crash_reason_smem = 421,
 	.firmware_name = "modem.mdt",
@@ -1429,6 +1449,10 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
 };
 
 static const struct of_device_id qcom_pas_of_match[] = {
+	{ .compatible = "qcom,milos-adsp-pas", .data = &sm8550_adsp_resource},
+	{ .compatible = "qcom,milos-cdsp-pas", .data = &milos_cdsp_resource},
+	{ .compatible = "qcom,milos-mpss-pas", .data = &sm8450_mpss_resource},
+	{ .compatible = "qcom,milos-wpss-pas", .data = &sc7280_wpss_resource},
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &msm8996_adsp_resource},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
 	{ .compatible = "qcom,msm8974-adsp-pil", .data = &adsp_resource_init},

-- 
2.51.0


