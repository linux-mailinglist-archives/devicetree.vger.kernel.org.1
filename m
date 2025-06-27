Return-Path: <devicetree+bounces-190184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 178CAAEAF56
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 08:56:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A20B03A796F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 06:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D789220698;
	Fri, 27 Jun 2025 06:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="09SPKUks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8456B21C190
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751007359; cv=none; b=bSi0mP9ULL5nYaTwKOOxRdZi7zSvliiJKkVUA3sHuUhC2l0QwNb0UgrzVHXYMARTtbEp0rZih1k2LOjtfN73l5kTntPoJq//Z9VWqezpdha5BndwSI2t21YNbyeCT7Qqz4OArZQB9FL1CkHJ8QXRpSQdQlij/pxY2jHHTUCZkew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751007359; c=relaxed/simple;
	bh=oOIuTJMRb0YMubjUsJfR9YcWEnX+5aqOzDJkj3ZCXE8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j/e5QnJ2QecE/mVbU6c7N5Sbnf9pAWEDw0OJea0Cve2XyPp02SIaqpsBKBB4BIOA8mnxYg7jlv6IHcsPD9HIiEOO5iI+J7YzyaqXaKVkRcyZEIqbXWuzRWIzb4jBkYBjeM2Aak9S0gtVMeHxtNwCC7+FSFoohFtTrhBZ/dSChr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=09SPKUks; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6097d144923so3744659a12.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751007355; x=1751612155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KBOviIonU2lITgy652KdEgd8lTXgMBH5rkot3Hkt9aI=;
        b=09SPKUkspNXBT0/Qu78+/i1LGpGbBNPS56FiSeig9+6M/ONyN/CiBgkQmKG5aq1JkH
         soms0RA9LCPMmFqYUzB8XGv/dEjn24VQqBXZYpWsssNKst2zTWVndWH4zKQo4TzXxzic
         2idm58kNqXZwq6vA2SQE7C28lghJ1lnx3im0zXXwrmX0OaKgmkhJVrOUXQdB7amzvlf0
         Z9WbgyQIhLDPbGKPJW5+gJ0kkCQT0qDvkk0jpkTu7x940MmlmndWtuyYx2B/9e0ReAMT
         rs+b+RE7ib1fyjY7fjXWCg6tcIC12I7h6pNXzJ57wQWLDvvQkrrwu9sgrKqQhvz3w5tw
         x0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751007355; x=1751612155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KBOviIonU2lITgy652KdEgd8lTXgMBH5rkot3Hkt9aI=;
        b=LA8EwAGjpRa2mx/tonHautwClfiCG6ql0/GfV+cKeDfGKs6NjAFE2J3kWbbLoxV9qG
         MkkdZbR8p2keB8mFQEChRYVD4GEnb2ZTYbd92mFAcOWHi8a6yCXnC2HtA5DsfiTyoqwf
         rR7vJT+vpleL+OD2UDhFtpPMz9oekoDCf4/Ck7IJyPAonXL7GW0lymmzl4WO/r51c0+C
         nHrBFDKRZfbtjeDQHkTB0WsFpQqo17tkXzMaPOJP0o03dnxqxABGVlc26nMX7JPPSiY9
         9es+TARAqXpdlvuwZ3+uOMcQgjqbnEyHjKuMDfMC7YtPSA7B8TdTXCBF9n8hUP57mqgL
         D+Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVcvLCaHPXy30XrW4hlfoKEvepdkcdBrw3XnjHXhiFfe/3M4AwkSOYlaJ2IAZDGWIwT+3cSYHQr5T7A@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn67kzyMYhZs+F77MXMNaQulzyvrB/j7LmJYh6mh/CliX5LaN4
	fdzh2L+nMgGRdnL2v4mgdtDuKKyM260cSvpQE7eVW/msGl0bV10Oqi30qGagdNGpUO8=
X-Gm-Gg: ASbGnctyfmpCG8XJTSNgX7L/XM3SD+eHfHVGA+sh6RW1I+UE6ugKdVS4JI6lFUNlLLH
	YuhLyEAmVyUEvjtO0TxeEzHGShBkyNmwHhtxog2R9ErPCRLOl20PQmaHIq5TjyXYfJFt3PT9siU
	AUOTbT0xJqEeqP+pLg1s8RgrCIiWBjAq45H18qkdymqBVlgvuyNpoNaeBD2n8s8uxYfy8NCVjHj
	oFfj7YmL9oUgH2nnfprgxCyEv+mRo20HY2EYFofs47UFRwYr7XCADGrIXeg0Ho7ql3Slq723bY/
	OlNRfVrXJ56HBgpHGBbxqTn+Agh6iaEsKnsrWGceOvvdxZnF3g5voe4M98lB1bxXHB/gR0KGosR
	kReshEoUEBBGVrGbepdAkqS3Su3cUFSXU
X-Google-Smtp-Source: AGHT+IFGnLfo22ELjjcAK4w8b4ljk/CZho6pqmclzKrpjk42T/BhElY+hSsc+HlDNzqqsdjpUL7YVA==
X-Received: by 2002:a05:6402:1d51:b0:609:a4af:ae8 with SMTP id 4fb4d7f45d1cf-60c88f51293mr1316071a12.11.1751007354710;
        Thu, 26 Jun 2025 23:55:54 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290ffb4sm1019451a12.36.2025.06.26.23.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 23:55:54 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Jun 2025 08:55:44 +0200
Subject: [PATCH v2 3/3] remoteproc: qcom: pas: Add SM7635 remoteproc
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-sm7635-remoteprocs-v2-3-0fa518f8bf6d@fairphone.com>
References: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
In-Reply-To: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751007352; l=2007;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=oOIuTJMRb0YMubjUsJfR9YcWEnX+5aqOzDJkj3ZCXE8=;
 b=xVwwM8B9U8VVer6PUxh2O/3ppUY+AaXZX9FL/sF1FNF+infDsSrbmSgOSRVkLm/xf1p5As2i4
 edAa83UViWmALTxdeijebXhWBaSVYKdmdXpqvBu0cHkDH427lgk1qcX
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the different remoteprocs found on SM7635: ADSP, CDSP, MPSS and
WPSS.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index b306f223127c452f8f2d85aa0fc98db2d684feae..908a9c3d3a115dd1b561a899a36a15cc79616450 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1261,6 +1261,26 @@ static const struct adsp_data sdx55_mpss_resource = {
 	.ssctl_id = 0x22,
 };
 
+static const struct adsp_data sm7635_cdsp_resource = {
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
 static const struct adsp_data sm8450_mpss_resource = {
 	.crash_reason_smem = 421,
 	.firmware_name = "modem.mdt",
@@ -1478,6 +1498,10 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm6375-adsp-pas", .data = &sm6350_adsp_resource},
 	{ .compatible = "qcom,sm6375-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sm6375-mpss-pas", .data = &sm6375_mpss_resource},
+	{ .compatible = "qcom,sm7635-adsp-pas", .data = &sm8550_adsp_resource},
+	{ .compatible = "qcom,sm7635-cdsp-pas", .data = &sm7635_cdsp_resource},
+	{ .compatible = "qcom,sm7635-mpss-pas", .data = &sm8450_mpss_resource},
+	{ .compatible = "qcom,sm7635-wpss-pas", .data = &sc7280_wpss_resource},
 	{ .compatible = "qcom,sm8150-adsp-pas", .data = &sm8150_adsp_resource},
 	{ .compatible = "qcom,sm8150-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sm8150-mpss-pas", .data = &mpss_resource_init},

-- 
2.50.0


