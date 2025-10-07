Return-Path: <devicetree+bounces-224209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F54BC1A11
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 944D034F5FB
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050D22DFA27;
	Tue,  7 Oct 2025 14:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KwvfG/PR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f225.google.com (mail-yw1-f225.google.com [209.85.128.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663432DC783
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845894; cv=none; b=kgK7H69/2F2/DeDCi5HSTSFDiTUhD0OGc7rjI9HXz+xBfslcrlnw7y+uq7kEDOFk3c8hxfiW6NsoqX1ooEOkhJ7fKdJQN5xtBmQLVTUS6nlZaa1FuEfsRsAZhkAQgZLvtq2ec4RCl9dYAmtFtGK/aUEKwVGdGGRDWbJwPFSz9p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845894; c=relaxed/simple;
	bh=IeHBJkm43o7DbIgNrwfftBjDn16UM0EotoQTOZb6iXM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NuMngn8HiEynLD0yvb/SUo4sHMivPiXi8FEXc/8oSdgDo66SJGT2uCSSPdIzeFFXl81//mk2CKT2WiSjWUxuAKAV6srbvxPCX8A0ttqspttINkyFFW5u4FAOGdj4447lVLUZb3P9nNBI4YvPK/Tai57ZPMl8XrAGA9Kf0pueNf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KwvfG/PR; arc=none smtp.client-ip=209.85.128.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f225.google.com with SMTP id 00721157ae682-71d71bcab69so64731017b3.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845892; x=1760450692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Px5PBDWoNSxvQicSvlQGDgd/7ifZnaEp1y0M1jncvfs=;
        b=jol3lkhIySpIDIRbgaRpjo4bl+LvzpTZOIvNBbrO+rAKfyj3RAkNK5a8N0o/HzQaxB
         qLCaq4l0227UoqmDo16Nwt6r0dWOozTnBqkV0nvWMVxWUlhBZFwQEviwkWv1ZgoCxUSY
         K7u0V9Hu9ee2i7NTPmKDCzYe72Qw/srjZlELdaj14Eer+Ca/IgisQotZT9Fqze9HsoYE
         +ZKp/TlAJP47GTU9GQxNl6J2tk/3Z0hUUAKTY4pFaRE0hd5b9X7fm25T+4LEKi8XLRNc
         cDEbkXDdzkkDZxGue4Q70KSS81HoQbL9a2GMQGgvoNjdI2C020sKh/dI/6UmOWXDXIU1
         2wiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZk3EhYfBMuK4yNiUs7XfOeK979Oag6gOMzOap5D70Xf1BApEh8J28ZD6vqFha/Svq9qozu3oJOXvi@vger.kernel.org
X-Gm-Message-State: AOJu0YwdsKUe5JuDJtPbIXz/24Ai5/2V677sbwXwnmKRbVMw1Jz6F5zy
	5nDszNkcee6xSx4MezsVKhsHof9NX0B3KUJGtUNuoYZCrQPf9tHOJFrDCuyI1jBsdVzIxvSCwcW
	PWhV/vNpT9iN06yi0pR+Xtl7GENJSDOdbH9ic3ygDVLAAFp+MlxF+xJKeQcAs7SoUyNbyBJct1X
	uuFXOocom5QRfLsnSSgrr5pDpeusobmO37jDNRYhW7duxA5wx9cfOTiEcIepfNm6T5xeaJ68oE8
	i6/sWySLl2qVQ==
X-Gm-Gg: ASbGncsfsHBoib286ViY2syNM0OVw5zxlmaBGjXMnZ8UzhDctFWkNqUv08IwkivAT5h
	ycF4SpbvZaaPizWo4DFIBFiGJgaovlCXg+NjicIhMHMFNJGEQE8zL45Vt5DKPVkb57xTMPrn0KA
	Na16xd/m5+MHIDwsOk/NaFYLscTMvPGRfWKivGKA3N1sQi3wQ9wepRj8+Jo7mLjrltszMHnWZ1h
	Ows4MucdXsYWZM1n3VbnWlnKUX7849dFAjVlWh7bdnrgNNXub76ENjVJazLPf3p47SDcRqMsGRG
	YyV0+OcJm/dntnd37rckdqY4JtH02aA30jFAVtRyUdl6iFElEQZpi3hiEdLi5jLorQOCUTwhDE7
	OQNYiL/VD1Pygq1HAvEiwsgxCiNPr2gMqMYfzZFhUkkudQxJwwlAsBcudqqG4azASaQOzqDm2zP
	o0zTjV
X-Google-Smtp-Source: AGHT+IFtYYzk6nTKanXvkI6OMy7K3ZbyTIqtfTUhN4Zaj2920GkzJo6v0pumPGGyRF8CX6UgM+IYNU2YWKG8
X-Received: by 2002:a53:ca11:0:b0:62c:70de:7cba with SMTP id 956f58d0204a3-63b9a0a7345mr12595820d50.22.1759845891932;
        Tue, 07 Oct 2025 07:04:51 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
        by smtp-relay.gmail.com with ESMTPS id 956f58d0204a3-63b84699e54sm929152d50.16.2025.10.07.07.04.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:04:51 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e831e5a42so181056626d6.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845891; x=1760450691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Px5PBDWoNSxvQicSvlQGDgd/7ifZnaEp1y0M1jncvfs=;
        b=KwvfG/PR0ngd3PbHlS61WAjVgazkNsaKQHwp63pzFb30dB4aJMBCvcxcf15UYTrC8G
         NonoFNs8YUSPK4zDQrG2F3u4nlWOWTPF2vYwQNmAy/OWNT+w8ZMWWZHNTDv0wmY7WrIH
         yJDzxtN4eNH/kcDzw2U7edapQO9HTw2D1CG+U=
X-Forwarded-Encrypted: i=1; AJvYcCXPMhZFdqcjAeyCPB78g55mWhAG/Jv1z5JTEBUxpr6YEq9KR8MKOlmOE5i8YdtONCRSiYQpZBdoOFL9@vger.kernel.org
X-Received: by 2002:a05:6214:f6d:b0:792:61c0:beb0 with SMTP id 6a1803df08f44-879dc87f7c2mr226139036d6.67.1759845891167;
        Tue, 07 Oct 2025 07:04:51 -0700 (PDT)
X-Received: by 2002:a05:6214:f6d:b0:792:61c0:beb0 with SMTP id 6a1803df08f44-879dc87f7c2mr226137866d6.67.1759845890256;
        Tue, 07 Oct 2025 07:04:50 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:04:49 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/5] dt-bindings: mmc: Add support for BCM72116 and BCM74371 SD host controller
Date: Tue,  7 Oct 2025 10:04:29 -0400
Message-Id: <20251007140434.606051-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007140434.606051-1-kamal.dasu@broadcom.com>
References: <20251007140434.606051-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Updating compatibility to support BCM72116 and BCM74371 SD host controller
similar to other settop SoCs.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index eee6be7a7867..720d0762078f 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -21,9 +21,11 @@ properties:
       - items:
           - enum:
               - brcm,bcm2712-sdhci
+              - brcm,bcm72116-sdhci
               - brcm,bcm74165b0-sdhci
               - brcm,bcm7445-sdhci
               - brcm,bcm7425-sdhci
+              - brcm,bcm74371-sdhci
           - const: brcm,sdhci-brcmstb
 
   reg:
-- 
2.34.1


