Return-Path: <devicetree+bounces-230717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCF5C0521A
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:45:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1DC575678B6
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA9D3093BA;
	Fri, 24 Oct 2025 08:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OG2O/Cbd"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D56F3054D8
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295029; cv=none; b=EzO7NeXMZjmee+LMO3OF2ChtnnX4QDHGS7/FcNIj54p+ljbL6Hmwm2fHG1HvaAEY8BjZWQYLOR5Wv2RSF71HkcQlluMwHzipbQ9mqLRMUu4yTS6b9DgE+8bB9vEzMrrrKC25qsQ3Te1LQVMegeEXv9wS7hfEhT6tY2PwX4/TxGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295029; c=relaxed/simple;
	bh=7nF+zX1/zT0vgaP6R4vsmssJvlMwk6TNzjt/SjKQqOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pGCdiB1mssHdN/Yqxw0AKP1b1vFpjNmZC5wv61v+fmvjaHAlB79r+UodXYZBALt4VNa/t16+eIFQQ0H/JqxuLO5aQMzt595+v/QUVKxcLtJadAKZKrNuelecIpN6Pjcg4RJA/5U60YM3IV6vrcTA3b//Nbq9xDaV4XitbaEHmSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OG2O/Cbd; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761295026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
	b=OG2O/Cbd3Vwp4Qjv6xHLoAMYdg1IayqNC9Zo+fiBT/fWUKGcxtUmnG6wymyQxYI8pY9PA2
	ivly1FlpFaYfls5ZMXIC9WhtmuuJWZEI9EpKqNztN9hSPJI9Q5f/aygc4qbnZvxAMLr3zD
	H6wj5B54E3Oe9G4gxJakO9I0sEEiutc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-290-yJl4RazjOPudTzhWQ5_fGg-1; Fri, 24 Oct 2025 04:37:05 -0400
X-MC-Unique: yJl4RazjOPudTzhWQ5_fGg-1
X-Mimecast-MFC-AGG-ID: yJl4RazjOPudTzhWQ5_fGg_1761295024
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-42851b6a659so1435766f8f.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295024; x=1761899824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
        b=pm05az9x0beB+Yc4ppAZqiyu0kQGHm0yclq8r8BCFCSrVZx8rqJH0UqQiS3pZkENiV
         wuHyxBju5e34gKkzxSuXg+zzwUe31nRjZ5Dq0jZ90/KGa1TKbTdiLrcoxuDxesbhtXSK
         tE3V3sYpDQGuuOGEcF8DLBlWy+rtfOgyXEibgOPYZOTye2HXZfciBZDSFSHj0PHc8ux7
         yWLBU8Vr2hnJQTMvNJx5we63rp0Zcq0mU1ByhFbS7fXqWu+y8d+2hlpqyZFoOWMZtNcM
         FU1X5MTeb66x0ypRxNJEGiiAijYGFGcd4eWl1eSKiXK/y1nnlhIfxMNgdVfbz97hRyNN
         aCjA==
X-Forwarded-Encrypted: i=1; AJvYcCVJTW4rOraPVrHNi9datl+8rb1en04B1iMyDuD/CtUcyy4hM/U6QPIpWhIspqBj/jQdjFwUwcelkvBw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw85yY+r2K54XgZ29pGXaYg6ZG4cCSdjx1r8cxxbXsVCpvJgZiX
	fviUE5jYSUQMGTXdklJlnZAgcWQNNecqHgbVYMDAR7uxn1wcKeymi7vhx2dZb9ZMl6B62Qs1+1v
	7uyRzkWuL+gOvCOqxpJsustqKFE9SY8UuzuqGSJt0kYV2A8bfbuJkKLwg0JkbIWg=
X-Gm-Gg: ASbGnctA37KQCs91dXkGIeeeP3R6rnRlZBuevjUEPAHxksoXCddNbM4oRwmlXRDUjO/
	86gJIfjConu/URKYXoxRUmzXl0WEARyZVBqF/f6+0LzJrHHJZVEmElxMoupvM6pE7L6tGpOTgRd
	/ycM5hVD8l63sAXZ+2XqnMXaPyqieKKTQwXuhZ5/wZgiPQOF32kkvV9D9YZl5Rg1EyzsAz9i9ii
	/asbuswFs46Gv9mo0a//8Crj2k+dBSfGN8Kcbrziq/52M2dTETGKAwCXPgUGkD9UI7I2dAv6FDH
	AjDn8yIQf5xQY7q+pAq37Kv4MwATYKQRgd4biacNmceq461MTbPxrg/+ZoisTA/b7c9vRXQCHwX
	q6Kk8xMK9
X-Received: by 2002:a05:6000:2303:b0:427:6c4:f165 with SMTP id ffacd0b85a97d-42706c4f1b6mr19064115f8f.35.1761295024118;
        Fri, 24 Oct 2025 01:37:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEY0EKEnZ5GAWosdAx/QCF15elBSoXEsoSC6Xm4LJMLlOxu9Uh/8Q5/RbZxyR8bBwU0Ijlrsg==
X-Received: by 2002:a05:6000:2303:b0:427:6c4:f165 with SMTP id ffacd0b85a97d-42706c4f1b6mr19064075f8f.35.1761295023651;
        Fri, 24 Oct 2025 01:37:03 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e77dasm8111636f8f.2.2025.10.24.01.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 01:37:03 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Charles Mirabile <cmirabil@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Vivian Wang <dramforever@live.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v6 2/4] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Fri, 24 Oct 2025 09:36:41 +0100
Message-ID: <20251024083647.475239-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251024083647.475239-1-lzampier@redhat.com>
References: <20251024083647.475239-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Charles Mirabile <cmirabil@redhat.com>

Add compatible strings for the PLIC found in UltraRISC DP1000 SoC.

The PLIC is part of the UR-CP100 core and has a hardware bug requiring
a workaround.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 5b827bc24301..34591d64cca3 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -74,6 +74,9 @@ properties:
               - sophgo,sg2044-plic
               - thead,th1520-plic
           - const: thead,c900-plic
+      - items:
+          - const: ultrarisc,dp1000-plic
+          - const: ultrarisc,cp100-plic
       - items:
           - const: sifive,plic-1.0.0
           - const: riscv,plic0
-- 
2.51.0


