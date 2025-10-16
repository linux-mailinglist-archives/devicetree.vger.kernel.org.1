Return-Path: <devicetree+bounces-227514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 626C2BE2346
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B2A044EF2E5
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA50530BB99;
	Thu, 16 Oct 2025 08:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YMkM2Gui"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144C83081B8
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604206; cv=none; b=JG1iDqcLh8Tbm9z+gqv/HKkFNGSLzjwbvbt99urE+jmWnIM0jgFx1vmQTeBqPRjFHFe+adk2HaSs6cSmav0rEBgXAYZkCvT0IrWcqDZ0fa9xIu2Mk/Nri+ZOi0NRIzFTZNsnZpidyMN6yNMGFkxPQvgMce3fxGoH0vd9/MPA+QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604206; c=relaxed/simple;
	bh=7nF+zX1/zT0vgaP6R4vsmssJvlMwk6TNzjt/SjKQqOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=criqrXEL6010pVrzXRcTmd6AuIgHgntcI5K/YgswGVIp2abr45WxawJdNcjZ28vU7TX/1RmP98SC7HrJI64uydqUQMViRCR3C09PARRb6sKkhVdC75kEQW2JhR6/dNn7YCWfphHgfLPN/NW/UD2G0dlnl64gaQfYxzvW5E0qgxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YMkM2Gui; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760604203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
	b=YMkM2GuiW8SMWJcjfM1Ekgd7BE5e+NgF4nuo3VUWK7CBCQnsWxd4kY1T/fPc5Iw2cFmIER
	urImuCINXBNS0x3N/hjVY9MwQz2kaPCDcKOlQs7i4ivu2JLRCfkv9OUQmgQUD/admPPWJi
	3cQMZbg81RkvtyZB+60cMcd9b3veIdY=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-ThQjt1HOM_2bVgIjS7FkEw-1; Thu, 16 Oct 2025 04:43:22 -0400
X-MC-Unique: ThQjt1HOM_2bVgIjS7FkEw-1
X-Mimecast-MFC-AGG-ID: ThQjt1HOM_2bVgIjS7FkEw_1760604201
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-427013eb71dso562887f8f.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:43:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604201; x=1761209001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSXzVZNzjEJV0QCm7fFsQIpGaaXg5MfSXavQS0cQlLY=;
        b=U0vxoTmwaS71Dkm2U8ocsA0eL0WsftT4fU2eO3DtOwTOqbYGN+SB7YCOG3X7ffnOPx
         fmNAZKNqHog8xFl0JD2opQBiwWey0N7tb7g6VrnxDOUKfuSeYvN0ZcuiRiT1t3tx3ZHb
         X6qzmYXTWQo3QDcua1/oMSQNn3ArWMRt68nw6v57VXbeEKFicyz0pWhCMk3WfC5tSde/
         QbhqR7ba5UKR1OUkMgtTQFeewcOn33LlzepwHcRz+HjjmGlXk5Kxd478koEeFAVTB8OK
         /JnbfuDVLQDk2sevRdkXkwuSdvTTgAsl+JkH4Wn0jtZh980plfdPHv/qKbbKmRY97YUX
         SpvA==
X-Forwarded-Encrypted: i=1; AJvYcCVN9q/2+pOMK/hs0UPodLcUORlLnqJ40Jf6dO+fKBE5kzgzsSf74AFdm8bpY+CxfoWBiVtzZbwUxBro@vger.kernel.org
X-Gm-Message-State: AOJu0YzwZXFrciRN9F0EfKy4d7/rcVPKDIq+lBy/nvmKDKo9DnE+pg1I
	CNRQQc3fhLVw4TEc2MXadoDhOS6RFQW8+CPrJmfYGK/fBL3xb5s2kTrBQ5ugbPxyhEoI878Za6F
	ftLHvOWpW5Lel4tHZ/AZrEO+f60d+0MC881h/OLM/bbn2V2QQvAgBrFzsW/myMRw=
X-Gm-Gg: ASbGncvZMoFcCHNDBSNVVqvPqfzFO15e1Aeb7NPxUaXBGTucuqPTClrWwCTq47r60p9
	0j8dpkI4LvdXSPcwmj9CGsYO9ck8VzR/KrerePz4SV5SVDkIqodoUylz+KbNpEJUhzxxpW30AZ1
	0SCJ/dG/VJt0vUswC0NPQVQkl+tQ3xUL7vgjQ2MWyBpLtGYlPt9WUMHFonYOis8tjXm2hyfZ5fU
	z2vN+NSnItR2LQTnIRNXLXFyt5yz4MUSGgMn40BR4/BT3BxpT/E7F+D3u8ADQYeEPt+AFXSyoER
	gQ1BABccxYU2nf+T3ZoqX/Rhk5lUIyLHTsMp6i95uRgchPkXIwvik0uz8KNjrKoElN5gCV5g17M
	GYBhvlXHs
X-Received: by 2002:a05:6000:2305:b0:3e9:b7a5:5dc9 with SMTP id ffacd0b85a97d-4266e7d6bb2mr19688099f8f.23.1760604200719;
        Thu, 16 Oct 2025 01:43:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0ACtQECJERtveJFYTBKv8miWePlEgMHtUGK9YWdSNjEdnlQmSq4i4uyB7IbXH7bxLy1h6Ow==
X-Received: by 2002:a05:6000:2305:b0:3e9:b7a5:5dc9 with SMTP id ffacd0b85a97d-4266e7d6bb2mr19688070f8f.23.1760604200312;
        Thu, 16 Oct 2025 01:43:20 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1284sm33047565f8f.45.2025.10.16.01.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 01:43:19 -0700 (PDT)
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
Subject: [PATCH v5 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Thu, 16 Oct 2025 09:42:55 +0100
Message-ID: <20251016084301.27670-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251016084301.27670-1-lzampier@redhat.com>
References: <20251016084301.27670-1-lzampier@redhat.com>
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


