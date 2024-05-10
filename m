Return-Path: <devicetree+bounces-66329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 154668C26EC
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 16:35:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D1982866EB
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BECFE1708A7;
	Fri, 10 May 2024 14:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Ntflsule"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEEA16EC0B
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715351729; cv=none; b=KONZkeH212rEnkoa2VMk5KohfVeVa4YRBOw7Qr7oHoEODA+Yag+hT/P5Gu5y1mu5k4cVoX6f6o5Fs46yKr3TSAl1iAWQkvt316Ds5YhHqHn89IS8YmJRepKkuPThbIiLwEPfjbr/xXXwGJkY3I26Ae/F+xrgN7ZVD/mOM2QwYAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715351729; c=relaxed/simple;
	bh=kATQMNOhJrdbief3Fgl9OA3f1yYFHp3atah9Ebe5p/w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JSHWSNafo/KIWCUbJTp8BfFR2NvbePH0Kg9CePJpnvJjm6yLtV3qw9sxmPh64gUgFH+DiJE/lXkMaS7fLHKl0GikHg2AkBP+15kcmleh4pFZ1DXQjmmyXzcmI2i6r3w6Xq7dYJHLkMX4xAqJm0C8RoAFeQ9jB1SdAb+yy2kGtFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Ntflsule; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2db13ca0363so32126041fa.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1715351726; x=1715956526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhvBTKrIEHNw+3a6hb0Xwmt+4VWhx+P/N8uTLnP7/w0=;
        b=NtflsuleneyiSe8fyggklJJCyZrlNS+7h+NUOYbNLGh4/vwTPZgbtMd3BZFsbmNjje
         VYvWEWwBduIMmrhEwpmXXkFUl6JFDr+ZEtbkKQNKC8V9DySLTyHeuXQtOxCWepoSWz7e
         EniYE7vSwdJ8D9jXdLLN1Li1JMbnbs2+jrqviSzSQ2H5DJF65ONhQSfrF2yqoSXnDkr1
         C4asEYE0AYlkhj7LbXjNmRsr79sMEa5lcf+Lg/pV8SvNQWggoSnPHBq40D15pEJ3ePxi
         ZcZ1J5hRaM50gYV0yuCn6dbBeaUyH8VG6HIuyOhfsxAiJDvp53j06bC9fR5IQNOisQ4i
         iBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715351726; x=1715956526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhvBTKrIEHNw+3a6hb0Xwmt+4VWhx+P/N8uTLnP7/w0=;
        b=v7vOAjuHnUq/D5xTFIy3i70SooLPxsUnpMHFVlw67wrUmGff9Td+xQ1AcTj2HBcgYe
         AYDfAspqTezSWiaUsJA4VmeZJKS29pcoBiEKOfKhE+gjo4OJVAgNvV5l0uxLLpLz/FoN
         NI0SMw8sW4+XuJ++daOoZBQwuujBjqFyNRWtgSYB4ABYq5WRhPL4o/b0KncYNdkn5ImY
         ahuuxrEe6VsIUQ06GxP5ZpfRNO2Adpcx/edZ/wZkGeMSYhDyPrkvRtBOfAQFIQazowke
         cViGKLuzMq6TegFkGmlRBF7Q952Bct42m82it0+I4999thbEyMh4I4G2yUXydUpURSNi
         sFPg==
X-Forwarded-Encrypted: i=1; AJvYcCXAMTQUJR9fsP1YwlOhmCAOChy9vkQ0i6zfEIcARsikv7oX7zYPbs338Geb+PVFKdhT6jzNN8TxFI17F+1kQDg/0JeJqBXqbN9B2w==
X-Gm-Message-State: AOJu0YzGGXQP7vGdRRh9Njt2lah/Wy9gjWuT5ZY4KffoS5Mr6Tz0Fsxz
	3R3lI7Iw3CDVPekUMsf3RvqfMs5KW1lFX7O6cRSBcTnQXCaE+35SZxFYS5HehZg=
X-Google-Smtp-Source: AGHT+IEAC9dVjDMT1UPdVqARhjQhRcXJv3fsVQDnUMR3w47CcGcW+O53nF2+nRJEW7ujUyZvmdSP2g==
X-Received: by 2002:a2e:bc24:0:b0:2e0:83a9:e385 with SMTP id 38308e7fff4ca-2e51fc340a2mr28548151fa.6.1715351725643;
        Fri, 10 May 2024 07:35:25 -0700 (PDT)
Received: from localhost (host-95-235-217-160.retail.telecomitalia.it. [95.235.217.160])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7fc4sm191151166b.135.2024.05.10.07.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 07:35:25 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 1/4] dt-bindings: arm: bcm: Add BCM2712 SoC support
Date: Fri, 10 May 2024 16:35:27 +0200
Message-ID: <e60ee068f06cb2325e3d09c27b27002ba6db8572.1715332922.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1715332922.git.andrea.porta@suse.com>
References: <cover.1715332922.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 SoC is found on Raspberry Pi 5. Add compatible string to
acknowledge its new chipset.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 162a39dab218..e4ff71f006b8 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -23,6 +23,12 @@ properties:
               - raspberrypi,4-model-b
           - const: brcm,bcm2711
 
+      - description: BCM2712 based Boards
+        items:
+          - enum:
+              - raspberrypi,5-model-b
+          - const: brcm,bcm2712
+
       - description: BCM2835 based Boards
         items:
           - enum:
-- 
2.35.3


