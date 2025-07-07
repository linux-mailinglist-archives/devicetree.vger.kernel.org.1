Return-Path: <devicetree+bounces-193619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C701CAFB081
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 905EE1898375
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8641288CAC;
	Mon,  7 Jul 2025 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="skWIQ5h7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C52292B3D
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882228; cv=none; b=fM+/7skSJ5dOTzeZ8YErqbJGb11yk958Gl2In5/OPJ8NVKDT2KM7+Mg+Oak5QwV/R6bsALZbtImqv/n72heCmHp+o+EXmhzJkw9x6IgJc/E1oPPnYg4yB+4l7SAG8MI6Uk8ScqpcdM2K9Jr3XeRmYQ6etwHgmpWpEPZm+cTrfv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882228; c=relaxed/simple;
	bh=Bhxra1GQ/bIjTbpqCLvfnTZHG2lw2VBVW6y2QbdTyP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aWQvnqds0+OgSCiy/11GiwyQ4WkQ6HbA+RxAFbJEUjvcr8gTh0gFVUr5lcZ0x0656FODpAqYb+1d5wyv8ysiK9GSMnPxFNwfln2sO2gIbs4bAXPLSf+fAtWaz77jGXZUuMdR6M1SjsQFrAWydPhLHG2Rfd7VmdQmUI1zVE31oe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=skWIQ5h7; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so5119753a12.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751882225; x=1752487025; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=txj8WLQcO0NfnvP5FHSsYizAuFG5K7CDWtWvif6Fr8Y=;
        b=skWIQ5h74oO2xJPf/Crf1bI9apwt13P0mL0fXL1TaqYnA7k9Dlmexmr9jbU1GHUtda
         FoP0k8Fj+1H2pzBtyAE/KSNHbgEdHv7D8upNqOKs0S5dAD9ERjl0Kaba2WaVVtxCkQ+8
         zmGY2cBhSC9leULjWgvx/MsZgTRA7Vp1Nj5yDUjeTpuT13Su2GB30YnB2QrR0iy8mDM7
         3K7Nh02jxyusTIt2zRexax9DUkGIlcHkCAYBi9nonqKBIx0UMfW185bTnCVbNNFiPB5Y
         JN0pl6HUUPDRDnc3IDkLedPO6HbRMxIjnR/+D2Sw+rtKK1PobvT+c5eu7ZU6BH7S+3T5
         N26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882225; x=1752487025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=txj8WLQcO0NfnvP5FHSsYizAuFG5K7CDWtWvif6Fr8Y=;
        b=pVS2HJMr1yQ1Yqb3Fjx4wJqZRV2wNo4YImH/mdCBQTtWMQbnnsioMnpwzj0hKsPNYp
         lOvD2/jJeIG2VB1xxipZdfkgI0PetGTSu42p9fEH9ZGhzg34DZnD2S2TInkquWk2v6v0
         C0bd4eo0D3llVF8+v9D3kt1RdCEfmU3LexeQs9I8qCpYvoAZ86cS5Mo5UkWCclr7gAlk
         H4WfHPWFtT5McZx739MdBb1pz7s/nczALvvKs6x9yVy+d+wrM7DOm68Njq8L+7Wxbmzc
         8x/W1reH3KwUmCMnTe67yfXTZfS7s0vshwnjvrYFPkEn/kb/v1QM9m06ecuij+8JzWQz
         qKDg==
X-Forwarded-Encrypted: i=1; AJvYcCWvrPQFJdoRRkEYJkB7u68a4u7j71o03thda+PP5eavp8Fy4/tULQuDsll7LHmJXh8cbgVXEWchAsk6@vger.kernel.org
X-Gm-Message-State: AOJu0YwXzpXJCm/90OCnpQhYBy1t3BZljcQHf65172wqs6EGDLraHcDH
	d7DtSm43b/qqlYH7NSsTm9zGAEbjK/FJ1BtZToNUi8TQGMJ3fVHAMGrVfloGWloWVdU=
X-Gm-Gg: ASbGncvvpubsfskUY8cHy2xU/oJ9jqS5kwdS28bvs47vjc6LRgOkSAz+n9OX7GBV9iv
	L5i7UwnVr3CWtS6h04EuUfts8Vf1btuGmNdX99pDjAp2+IlnXLGtSzxKbrpzBHq8XVQF6wi+1cF
	kA8AevfENlhQXBP8Eh1nQysFI+FPSK92sBl6V3c719l/QXAAGpxkKcR6t9U/xMX8exWGig8eJMJ
	n1ACWEYsFY1OsK7dZaZihjyGAQwht4HlsGFgzG7Mes/3GdRMj7a8oFGg0dDXPblKjaLcv2QY5QH
	JzUUA0jbpTuR0/+k98inHIjStDhWqxRXWCOWKeWJ/fAQZ27MHuMbqeuRcsC07I0jMXSi2UVWqcv
	2e+uzfe3nFzWHy7H8klpSaah6g15M9R2A
X-Google-Smtp-Source: AGHT+IFvEBpZnYhghsTZAjBdDt8s8o37jDWwd+waPZynO8DTGho/r/xxfF/6cA2ywOE34hiVEpZY9Q==
X-Received: by 2002:a05:6402:1ece:b0:608:64ff:c9b5 with SMTP id 4fb4d7f45d1cf-60ff38651e5mr6750368a12.8.1751882224550;
        Mon, 07 Jul 2025 02:57:04 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6641fbsm5235815a12.3.2025.07.07.02.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:57:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 07 Jul 2025 11:56:39 +0200
Subject: [PATCH v2 3/4] dt-bindings: clock: qcom: document the Milos TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-sm7635-clocks-misc-v2-3-b49f19055768@fairphone.com>
References: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
In-Reply-To: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751882221; l=837;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Bhxra1GQ/bIjTbpqCLvfnTZHG2lw2VBVW6y2QbdTyP8=;
 b=qpkObGBLGIfyMOIJf1lDpa+W56Qq9d80/uttCqYeIvoXhRn0DVPLVUU/cPCh+u38GaLqmFsAq
 IdKFj5NjVlICuER1pEltGRDULc2QN6YqLKQIEjbnOy0/5arL+fZcqLE
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add bindings documentation for the Milos (e.g. SM7635) TCSR Clock
Controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index f3afbb25e8682de83fb16acaa35448545f77ce77..2ed7d59722fc7e1e8ccc3adbef16e26fc44bf156 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -22,6 +22,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,milos-tcsr
           - qcom,sar2130p-tcsr
           - qcom,sm8550-tcsr
           - qcom,sm8650-tcsr

-- 
2.50.0


