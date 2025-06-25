Return-Path: <devicetree+bounces-189399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D660AE7C10
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE1FF3B49CB
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117C52D6617;
	Wed, 25 Jun 2025 09:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="w55maAI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AF29B239
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842798; cv=none; b=Qm5h4xRHfTq03RsLPcf64tt4gZJRZlfyBmn18lZ17eQiABvEDlzXhMC+MO0AZ/bJcOCc1btWLCy4JfjrYn/sRoU52D9nGLsy7Bu5WS9wN7HleqgE7vbmLhrChjU/gIyTat7/bgK8lp3inyT6I/QR4LGWVG+frVg8s9vmV9F+AYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842798; c=relaxed/simple;
	bh=Gwv86YaLq4nMyYuk8Ga+pLFqTHUG/EjtEAyeU2iFtZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fx4tF4pdbPq2LNP8FSIzciuiIcprIcpRXuT3zofwKjkjfm1ztotiFATMPR+bKOU0S9TZI8sG70UtmeCuQ6uexkOZxoG+mldT/SdeyD8L9/zUGFN/fzmp0yc56FhUELNZSxBCt+Hi4OTivMGGQ6VnUHkb4O6Pq2H7Pd7CQmHMwBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=w55maAI2; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-adb2bb25105so1002830166b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842793; x=1751447593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QIonQPzr0yW+9KIT56dpfw0JEE8zh3WfbxaXN1wXE2A=;
        b=w55maAI2ViAGgCOVeC0bOEilvnyX84oSsNpmx4XY9AGM1IiE/Iu44HnvawufvNk9UP
         stlQ21LmVzeSpgmjsc5rHL1P0Q+VOdZvDMWMNi4Crs9+4xZzV02o6KpTO5VLU6wmD3cj
         dMbqX2xmjeFp5ukWbjn9armAmkORYRJWKnifczORnNiarvXblkkzydlFt8gTlYsPFBIe
         6jf7KImXkNG/HmF0xka4Ks5AjTSm1mRu12muq8Isdu2lLhbOL7X5hxtGQh7Z6iAkAnob
         WwOsaHtSoBoGnGvRItx4Mr1kHmSWm76lWPiBiPkR5G991S/DERb/CKYppEB9MvoozwWE
         uNvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842793; x=1751447593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QIonQPzr0yW+9KIT56dpfw0JEE8zh3WfbxaXN1wXE2A=;
        b=qqM5NbTM7OrWqbYtYuSWoSTcELtiFEPMilBmzCvOiAfh74Deg+cMwUk+BnOndyd/H+
         TkrQe9Ip3W6VwMbUcY2NP2xYiM4/DzsWJd7NDlbHLf51KjWkE88l1ADX1Lv2+cuTe8Ao
         sxJ33Ma+I6qfQBtsaVTsUJvFJI2f8kNRa0bX8YnZUHqtI/SnxFbxKUPf/tnAmKzrv+rI
         Bw65t29aieKpDSI2M7nyPmQrGKV/1tOrIYF1c8cJct60vZX/AUCVB/6yOymMyDr0CczM
         nb/m9kuwSlu4l0dRPc+/UEu+Hi0tCx+E/ij9cgF7hDtMl1j0vlurAEsFRlsKwf/zWzBF
         YyIw==
X-Forwarded-Encrypted: i=1; AJvYcCXBXghqNKshMvtabhkQfvE/YNWSiwfLNFYgt0qfBv7jrWUrYS1BsZSu4kiBoZlWjBlavOtvvWuvfQq+@vger.kernel.org
X-Gm-Message-State: AOJu0YzpRwqGNap1oBVrfkPWZKCL4Qpgquy+AGX/e6ksak5h2iknYbpb
	1pi8bwc6A1Y8vN5M3U8w+mpIMBaDO4pO1WcSiqxWvGRNNdjdvB2+iOiX4H083DZwojc=
X-Gm-Gg: ASbGncu0C95K4yGxi+V9XfzJixorJTXnG8eUAe2SkZ0nEltqgs/0b4/qzZqylwBJRDH
	94A/PlwS5V/BA9xCEByqVk4HSErR8BRxzWVXsCRXXcn0EmfCUONgAAnOGg0MIdaq9B0EZj37Gyr
	f14yGZF8+QPUbEKO4i1dH/lVTkjDgmYAH5RJSy6jLKf6SrumMEqQBOPR2GAiCsJuNp1uCAtswHs
	CeGVl8L0SZZNRpp22Kqv+Fv96CbIC31izv7DoDWyR2ePKMuGQjmhzoVNQ3mtRl8WOJ8Os5xpah6
	k8VaOKOKSR9/FoPEJOgVum+I5KX1dqTiLrvT+aFS6jejLPCBvIkZHRcN65UxqYxnxiS9UIdfEln
	+pIwKmX+vKnGR+SaU44y2wo9iQtaUi22N
X-Google-Smtp-Source: AGHT+IERi2KHtQmQ4ho4DAkM8LuxU28cCOfHg6BLub6/yIICgropn78NU/dR0TfXuDcxZ6KxmKngVg==
X-Received: by 2002:a17:906:4914:b0:ad8:8efe:31fb with SMTP id a640c23a62f3a-ae0beb3d1b8mr209242166b.54.1750842793405;
        Wed, 25 Jun 2025 02:13:13 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a93f5e96sm272499466b.74.2025.06.25.02.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:13 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:12:47 +0200
Subject: [PATCH 1/4] dt-bindings: clock: qcom: Document the SM7635 RPMH
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-clocks-misc-v1-1-45fea645d39b@fairphone.com>
References: <20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com>
In-Reply-To: <20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842791; l=844;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Gwv86YaLq4nMyYuk8Ga+pLFqTHUG/EjtEAyeU2iFtZE=;
 b=dykpNwSjr0QLGEvzyK2lLZvCnvMi6GOSDRyxweW5VB0Oy8wkfDV3gYnxPAlaPGhVjMQEC9I8M
 gVc59G4W7/IB05nJrDZCgmK3yGnOuYo7iM0Us/OIXDZgypH5MsSxULX
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add bindings documentation for the SM7635 RPMH Clock Controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index dcb872b9cf3e01f87d4fc546311eb758ee63af9a..340dc2613c9d8c6d1c5ca4fc74801ee6d4d197d8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sdx75-rpmh-clk
       - qcom,sm4450-rpmh-clk
       - qcom,sm6350-rpmh-clk
+      - qcom,sm7635-rpmh-clk
       - qcom,sm8150-rpmh-clk
       - qcom,sm8250-rpmh-clk
       - qcom,sm8350-rpmh-clk

-- 
2.50.0


