Return-Path: <devicetree+bounces-231916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E475AC12F7F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:35:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 27CEC4FB82F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA582BE043;
	Tue, 28 Oct 2025 05:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ly77EvW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56452BE02A
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761629583; cv=none; b=MpRTnXyTeRUCsKEs4vuC0V0aR1P7Yjo3smOEMn5mIF3UTMdSW4j5pxsUGrGcQlK42kVtcpXAc9yQIaUBP1zSLib6RXhL1vikCi78RD98P4O5Jo61F0VWkgkheCFp0MVl0sU3s29PwqamiRCG76irIHk5fWE9o7nSbVX7fyCi/p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761629583; c=relaxed/simple;
	bh=vN3JGKYOBAUDmMzE1usOMoD0mbol+a85CNP/t1Oi0OM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=luVUeyUg2RDTteORdawZMulIzpK2dTwFvpxqHz+Mu8DGPp64ySqeOLMB95Abi+nmU6MdO1G0V8xeSEEF4ZGI7LzM9r7oqMY2taRxW8aridpluWG7I9zjeVbsuupPV4SHu4tfUKfXAZLyJ9VCqnUgGfgEUCxn8bGqf68+UBYvbAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ly77EvW+; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-34029cd0cbdso633394a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761629581; x=1762234381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HAmaHM3BDp1VZW/oTEWfvvrOlAs/2vEDtfi5E2o6+gg=;
        b=ly77EvW+3mNfln0nUkEsYcgiR/hhfyRexMgN9GBlGFzwyENBl2VBKnmJ/Hjmk2460o
         VvyYm/qKoyE6VwxMxYDup8+Ni/OqWBmogfD6A4LUx1JnGcuV7Au38mo8XuOO0E/hm6zB
         0Z7QnQHiZeN/v9nLjnhAbOIzpB9TZ/0LtB+NKiqXdQT5MynMe4sCS0T747+7En5Cqk/q
         yERwFpikI9fXoTKW9tFGd+bt9wxgg2M014QRkH91IsrICglrDHMrMuNOy82vnMrxAEpR
         SdlBEM2Ex8ujLePrcSfU7ZmBAWni1jgYi1XScIyrOsUluYr7LQovpaE1vwucMsF5ik4I
         m/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761629581; x=1762234381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAmaHM3BDp1VZW/oTEWfvvrOlAs/2vEDtfi5E2o6+gg=;
        b=qo9yQPIcTcSq9OL0OGqQoiTqv8uWe1SZHQzt1K/i8t11USNhBpEkyYChtbRbO/1f2B
         PaccRuTp1A5YjmMINdpT0bfWeUoKAFDgyalZR0h4l4K4FBlkY1UEs1VTXr71fiKpx5y8
         /z7CZoCQmHAGpsQDKoZimxMdBaa191XqSlv0pYjjQ/0JXGOMlLo93F1nUsK0oZL+euVf
         8KJgrSiB/JDb0GLAtldhzkBd3pVTyeiBOpsW1sU1Y6e58OWqaI8bo0Mwo9GSBBluXQuz
         B6Gf3LmMLU6pmeJLsjtzls0I2jPlDVtwt2puPIWQav/rDaIxzyMivjL3iCKO9OOhYCsW
         /Zag==
X-Forwarded-Encrypted: i=1; AJvYcCVaEJ5B4LxdGMpBsS7q+OEFahxlkNk2pU19k/H304aUkfcq/oHou8vwYS5SgRNa4wvxZ+AQar8lRnpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/OUYE4creKPa11lcnMiwMuRNIOppGVPAccg04ed1xRY0aXCHw
	aBnwYvRPm4QdUMqZyyfTevfpwMqQl/cskEuvo23SrMDyLjH8+0cHr7sP
X-Gm-Gg: ASbGnctN+W4VeUsd/mvDL76Jn52HU62cU2f59N5maakCLb7ArZ9gEMYbEH4XJQEnmda
	Ui01U4xP7cnd4/JEJMJ3eYQNE87CRprjOx0RNh30MFamtGz8rmODsVaNlY0gR1xb5I8vlwgX+dz
	wj+PcfBcQNI0/2mRaV4biafuCXOgWGSvOmaS82g6Wk+VJGyEQ+bcVqOAQJtF2DBqEiOTp5zghi/
	VPnghQzeK/vyYM4/wkuFbe9i33c6NSbdGhvhVxn139h7TxZsLLgmco6KPuyrMCEEdHi/iduXCDX
	42svny989BXEpLxcvU1u0Pj0exSu2COOX3Q1E6MTquSUuCpTSNBbHPp9aAZ/hAuF/zwzwL7ca6g
	+V41stGAgZFPihkrEh4W4fPsc48KurzCNIADBMbX7hLoyST3j+sQ4clpnQPL9PxwC7EqEMVHSro
	S/e1/Cjps+qW/I8s8BS6lNTN3gDs7qIATcryVF
X-Google-Smtp-Source: AGHT+IGtv3T6xzLRoc/T17G1G0UenDY4n08TE7oRtZCD01YO+/5ysGsK1isMOVRSEjqhKLtYZl35Vg==
X-Received: by 2002:a17:90b:2402:b0:340:29cf:2390 with SMTP id 98e67ed59e1d1-34029cf25d1mr1438708a91.35.1761629580917;
        Mon, 27 Oct 2025 22:33:00 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed70645fsm10649477a91.3.2025.10.27.22.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 22:33:00 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Tue, 28 Oct 2025 11:02:47 +0530
Message-Id: <20251028053248.723560-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251028053248.723560-1-tessolveupstream@gmail.com>
References: <20251028053248.723560-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


