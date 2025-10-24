Return-Path: <devicetree+bounces-230962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AD429C07E62
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 21:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 814193561C3
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A2F29617D;
	Fri, 24 Oct 2025 19:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="kuF80KZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9DF293B5F
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333945; cv=none; b=CdFiT9S18NYumN0o3EYTM7EBMVCn1BUwifwI69qDwuS7YcWZyc/lEeKXkpUMxXVe8zmEhKq8XJTLjqEbVBC4IARsPk/v2yw+vyUVxmMhIqjgf0O66bKWNvSF/o7eh79AkM8/lEyMM0R5wxBtYSlGyzGozevmBkkZ8k+hhclggSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333945; c=relaxed/simple;
	bh=Muc95G7rlUhzAehbq1czj3Swd9R7pZyWx6CCa2Vo4TA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UbPWb5qeA2K/qsGItBGmkSLuQR3LWzgMrrkT3HixI8Bdotej6uGvdx22Xdj+J9uMxWOhSM2IgkNYWoOiS9EOf6W8bP2Qj35KJVcT6Gca3MrouUQ8moPHsZ0EOFAz3VVTCiBinFFLSTdc68jrNAztrsJ+djtPNT28aJDg3Ba7P8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=kuF80KZG; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-856701dc22aso257763085a.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1761333942; x=1761938742; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fgizs1HCq1WLCAQQTUkutHFP75+yUyTVrTdsaQGAtYg=;
        b=kuF80KZGo/bfsNuslKnW6+cqCdX/nF8yGZb8lS4ZPFbRxL55n9sZpPZrVpRASX/8Zt
         KwA0xcsUWWtIILC8Mf/fCcjPe0FgYdj2vW5FDQUKulQJbypDWavIzw839WwOVWdDJwZ2
         PYbQMoGc0UMOA3fhTuwedy8KmrfXk5IDokRz3SD7DQDI883wxHYVjIDd1TZ/5EWbfNTy
         JDGFeaGfInVACMtQuQCqznv3Fu7l8OupSY7LHlObCvxdSBg6j3pSFy2ELyZYE3UNIlgk
         mwnCp6jIVPgwjOBsKjtIKEm5nYfVt4bXjYyaMJZb3+3SLeigTLjy4X9bvdTmEOS2xjWp
         A6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761333942; x=1761938742;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fgizs1HCq1WLCAQQTUkutHFP75+yUyTVrTdsaQGAtYg=;
        b=oty+dTAUNSWQQ8YXeX8wgVmS8eLvU9SmNjoYzuyXm4mwARCARJhHx6qp0xoV4tCJxd
         fYuV56TkIuS+ja0705P6zVPCjAsB9fhuiuygRUNPrfIuF6WUbgDdZ4a1xHK8DJmzLfxZ
         5UvOzmlNTUpjft1AHBbsAn1116FBCJo/ehYf1rCKJvdNnhSPBuxYdV1Cv7VMhqW24hTz
         WhJM0XJmkjmH6aB02G3qnkH6gCalS6KvAjfuc/1jsjxL5quQ9I4ZdgafZ6WzeEs2O75K
         CivvWOMZk0WQpDaS5ryPWn6ZExWLwCnOULgdARI+ws2pTm1efij859wZpLuXcNbzfMlG
         c8XQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQBokAwggIiwreuqikXdq0TvaSMV16QNkWYGAnL5PLOhy3cVW9avwB4ROmQMwGgaXIvPYjXziw/18q@vger.kernel.org
X-Gm-Message-State: AOJu0YxCYwxEz+waTTNoFs2My8CLB5G21gcOdaQkfIyfHbNWgyvwGXX+
	o9QXy+FDKFMJEtiGn7nhYmL7Fa2iYcnU5yvIu7GXUcIyf7qX+J3gNlRhBvXXO/FRQhs=
X-Gm-Gg: ASbGnctzhV9XTvLy2cq0H2zsR5K9fJgU/7u1Kti5amUxKP507k4XQAJCtNEuqYARasZ
	wT9WtNu+XTazYKif5fA/WRXZa6SyWPaRisMbAWgazpHGJNfoUWyYcObL/+d4Q8jOJPx+C9ovJi9
	eTZ8sOVkksfveVvcf2evs2LFutOlHPIIoh200REfa8I2RT1nNSHNeX+1hrjYHh7T5s/gILmMC7d
	Non6xSoNeFw83DAVQIX5XMLkyiFIroh6WyiqtyWmh6po3/DGkLwJ+A2vtNm3KDudGbeybB7Y9Vm
	hPWbdGyhPxFS3BhudVHMD3Y/1AB112MiQUaFzPWp0LcYxTkoL4pG6wY+xnVDrVk0jeuItOivmjQ
	lVT1qerHTAa0BiACZdD0wL30iQcZt5vTH8FJ4dcTQ+kHSyEPF13O7T/xdoKyhERzderCgN9ddCq
	nldP9uPlnCjztCAt0l
X-Google-Smtp-Source: AGHT+IF+oLH6KhhyIS0OoqXEqbmUvHsRs1xEAC59weOn98ckZYRgBioEPZO/kln7GkQOamvkKza+uQ==
X-Received: by 2002:a05:620a:700b:b0:892:5c9d:edce with SMTP id af79cd13be357-8925cad32d3mr2952964285a.62.1761333942534;
        Fri, 24 Oct 2025 12:25:42 -0700 (PDT)
Received: from fedora (dh207-15-125.xnet.hr. [88.207.15.125])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-89c0e97efa6sm438239185a.24.2025.10.24.12.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 12:25:42 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	horatiu.vultur@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] dt-bindings: nvmem: lan9662-otpc: Add LAN969x series
Date: Fri, 24 Oct 2025 21:24:52 +0200
Message-ID: <20251024192532.637563-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x series also has the same HW block, its just 16KB instead of 8KB
like on LAN966x series.

So, document compatibles for the LAN969x series.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
index f97c6beb4766..f8c68cf22c1c 100644
--- a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
+++ b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
@@ -23,8 +23,15 @@ properties:
       - items:
           - const: microchip,lan9668-otpc
           - const: microchip,lan9662-otpc
+          - const: microchip,lan9691-otpc
+          - const: microchip,lan9692-otpc
+          - const: microchip,lan9693-otpc
+          - const: microchip,lan9694-otpc
+          - const: microchip,lan9696-otpc
+          - const: microchip,lan9698-otpc
       - enum:
           - microchip,lan9662-otpc
+          - microchip,lan9691-otpc
 
   reg:
     maxItems: 1
-- 
2.51.0


