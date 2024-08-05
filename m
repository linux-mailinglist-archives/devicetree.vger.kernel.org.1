Return-Path: <devicetree+bounces-91141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F591948003
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 19:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 625491C22090
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 17:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B6315F3F3;
	Mon,  5 Aug 2024 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="n7n4PK8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7623315F3F6
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 17:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722877703; cv=none; b=YwyRWyAiqvryKL+QgBwReDp94wovo1xx+VWkFnnmaO45gmSAIdNi1ZKwAo3hoU03jcs7MYA5YZEjdrllaKCjv436dbZHhz0Fvd2fibuysjMEluZwsJ6dtqOKwQabldH7mh/ushVOMd7sp5RndN1ya3JeDWqUdM6y0mvpastWUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722877703; c=relaxed/simple;
	bh=cJ5sbUksDJthcusJo7RLTNPiAn2bVW72d4F6NDHZWEY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M4Ar+tlIyIPiKGEXSrF7Wj3sotSL0gjgJ76+odgbqjdYjcn1BzHyVwZxrvzwDhZcmr74rCqtj/Uv6D77Z7MHWhx5CR+BvzORBTebzrUkVcX8Hc7vIcMUn9KlrAqYqhDTZDaoQkw6czeLaEvno++1UdMB65lnw79Hqv9mJfz3BFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=n7n4PK8a; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-428f5c0833bso8426315e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 10:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1722877700; x=1723482500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EmiEhoS6BgYdmW1ox9MD/8B00pSFSdxMx9lwzx2VbII=;
        b=n7n4PK8aOkFrLZxofJDOV8Yh4HTpuG4dOKoSB4fGKdN7m/eE7YAK+VRv+SdNjpbNsk
         PlmutHFywju90gFhR2SXKIvcD91QbaLhOTS/jSORVWcIeTJbSotDTiadUznajZ38KmwS
         mlSpMVFOvZxOhIZQoq4uaNAiGBgphuunc/T3NGNTA/rngrgZY1SK9PxUQ7WKM42mh+N/
         iHHB3mmyhQKL4TyxHD9bmO5mgvqGHV8M/Re4mCD47qOCJjPZI/qvrXW7+O0Yo6oaNjDx
         0G/dR0G6J0xUjbSvtR1BpbxgM3B/vKats0KSTCZHozEEpd5GhNX7EvS8aAgz8hr9kTdy
         2aAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722877700; x=1723482500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EmiEhoS6BgYdmW1ox9MD/8B00pSFSdxMx9lwzx2VbII=;
        b=PfoDzYCIyLmd602TA/iBcTlsBBrxndb3EMvTL1rAsEoj9k7M1feSSd0LVOe9KaSmiS
         uyyGVp96vmN/C2rs7HYAmUw925Y6UEiSYN4zUA5bS5h1YbYRNP0i4+M5nhBiG7CsopjF
         eFdE+u7md27hwBB3GZYyvxuDFaASIr6DBLG3mlEUNxJylqeP9fHyXB3zf4a4A2uV1mOD
         ART11pFD2Fortw123Lsr9vCnfZKk55zkan8UWzovemdD9Yj3ikSCDzce42xNioQzT1ml
         tQSbZOPZo+8onkeyDW40qvR07Y0kL3Gwd1JLz1isC3zFt1px3Ii2KBB2Tlk+0bwXn4yN
         1r5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDCBQR/k6M8FDcCaicWn38rFwxPdsnS/ldo5zLNHt2sUhk/ubxzQzUqlMnXno20/l7040Wr8iPVh/PzdukgcJ3fSeqY7EmKkkhig==
X-Gm-Message-State: AOJu0YyqUoUnswOnAMuFQbkdz0/W4gTRGpB31Yu9ROCqOrjbTPU+xr6L
	DQIOFX+74KsP/CKNKPGstMnhHo80cfPiZ2oDdkxZ8BImwLfJ8WDFkf2MXKmVyJk=
X-Google-Smtp-Source: AGHT+IHLa6OMuCX4j0DNyE0gPuB42Fu0JyAzr6x+/y2e7m5rbQe6YTRrgFmyb3RKRnKeM6Z+gugKNg==
X-Received: by 2002:a5d:63c6:0:b0:367:8fee:4434 with SMTP id ffacd0b85a97d-36bbbe58c9amr8643179f8f.16.1722877699771;
        Mon, 05 Aug 2024 10:08:19 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:1068:b792:523c:3f73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbcf1e97esm10356486f8f.37.2024.08.05.10.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 10:08:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 05 Aug 2024 19:08:05 +0200
Subject: [PATCH v4 4/6] misc: fastrpc: Add support for cdsp1 remoteproc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240805-topic-sa8775p-iot-remoteproc-v4-4-86affdc72c04@linaro.org>
References: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
In-Reply-To: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Ling Xu <quic_lxu5@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2201;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=NlK6VGdZihNVv+SIfwfvMzqrGtF1lODmEAtLAfz+SWo=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmsQb8DWMHVDLnK8twR3IQVFxqQhEG7VPHptopI
 b4+AK1o1/uJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZrEG/AAKCRARpy6gFHHX
 cuk3D/9G85vhLg6qshc2VEGhoV2sqvQZsgaUpu/zgGu6VPjgM12MQyB4hcsIeNj0ntRnAzuPyXB
 gdqD5bK5t1XNiL2pQ3Abfz87wa5220/olx8E6a1XMoblikPVxnXj6NbOfOQMBrXV2O9JQ3l2t6M
 z35zBgMgnCI1p3BoscRNdgWqYh60Kls7QM+UfEfCRn27gRNTu6xppP+9gEAhVjONE386vzx57Kp
 CESFr4YoesfZJCSYu8MwkqpvS8dWrYiD58O7J9KPurhbpR1nVb3WgNEbXJDGlzxb8SqgfX+ARpy
 x8irSCRvqKEhzG9GlzFR4VxDvqQF5jZNVIyohDqZyZ6qUV7y3z1yvfEh2RsnEjuMrjGmVlaRQdf
 UhETa8wT4acdBTPLewfBR6ryr8mnEEI1KV0Be9JprH2lhMWjHCF0gXJ9d9uZT3CXQ/nF77gcu/A
 alJ6uraOT2SHxirwJwE5S+pNVJuBbgYSSl8U9glARy3DO9Avu+vhb3JMIMJ2L3JeV5E5fmglfu1
 GZfYXz8RKkpDX8unZKfCsAnKPOeBeJEiFygQG1DezF22O4SV+qG+aPN+XXQ7LIyWzvlIb+d+63d
 MVYmfTZMOR2If3IuQbj7NDm1bedS2AxJicEtNVGgK4A7c49Wsw8KvRbdGwYqHjXfstMkn06gOI5
 nPsIWLcyo1hjEFA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Ling Xu <quic_lxu5@quicinc.com>

The fastrpc supports 4 remoteproc. There are some products which
support cdsp1 remoteproc. Add changes to support cdsp1 remoteproc.

Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
[Bartosz: ported to mainline]
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/misc/fastrpc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 5204fda51da3..07bf8532557e 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -27,7 +27,8 @@
 #define MDSP_DOMAIN_ID (1)
 #define SDSP_DOMAIN_ID (2)
 #define CDSP_DOMAIN_ID (3)
-#define FASTRPC_DEV_MAX		4 /* adsp, mdsp, slpi, cdsp*/
+#define CDSP1_DOMAIN_ID (4)
+#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
 #define FASTRPC_MAX_SESSIONS	14
 #define FASTRPC_MAX_VMIDS	16
 #define FASTRPC_ALIGN		128
@@ -106,7 +107,7 @@
 #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
 
 static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
-						"sdsp", "cdsp"};
+						"sdsp", "cdsp", "cdsp1" };
 struct fastrpc_phy_page {
 	u64 addr;		/* physical address */
 	u64 size;		/* size of contiguous region */
@@ -2286,7 +2287,7 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 		return err;
 	}
 
-	for (i = 0; i <= CDSP_DOMAIN_ID; i++) {
+	for (i = 0; i < FASTRPC_DEV_MAX; i++) {
 		if (!strcmp(domains[i], domain)) {
 			domain_id = i;
 			break;
@@ -2344,13 +2345,14 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	case ADSP_DOMAIN_ID:
 	case MDSP_DOMAIN_ID:
 	case SDSP_DOMAIN_ID:
-		/* Unsigned PD offloading is only supported on CDSP*/
+		/* Unsigned PD offloading is only supported on CDSP and CDSP1 */
 		data->unsigned_support = false;
 		err = fastrpc_device_register(rdev, data, secure_dsp, domains[domain_id]);
 		if (err)
 			goto fdev_error;
 		break;
 	case CDSP_DOMAIN_ID:
+	case CDSP1_DOMAIN_ID:
 		data->unsigned_support = true;
 		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
 		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);

-- 
2.43.0


