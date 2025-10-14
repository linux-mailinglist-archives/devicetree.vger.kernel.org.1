Return-Path: <devicetree+bounces-226358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A612BD75F8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7AC5406354
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E53025C80D;
	Tue, 14 Oct 2025 05:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e6CzBUtq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87FA286415
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760418804; cv=none; b=Wjz3BJtArUQDw7Uki9Ks2eZuj/6/Wgh4UvjUZAXNpsgD3TvJs5lhWwS/pcm7it4YJrErm+NEzettl3w0myCZWOHsyPzzpzkg7oV74kb+9ENKlSM4zjQZl1KpRdR2PXNOuqaCR9ptsUR4tdov2umBVDsmh8u7iyrntfrUCDprFAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760418804; c=relaxed/simple;
	bh=fxxAVmPJGca8589Kqpk9mJo76fAFnptROiZXxjqZbz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r1W/ulZfj/4SlBdKYSK/P+7MD8gWhErkv8ltXUw7Mu11OlC/j8F92aoyDGDBEMFXagEpK/jjm+DfTFq0+iEHsEeHlZwxje98gBZzOkNJ9cWfEYzt1UPUkYXHJ3Pu85kzPBahZHOMpxGogSCLjTeMC3pLm1jQjT0/+B4R8S3OxRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e6CzBUtq; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso4690714b3a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760418802; x=1761023602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=e6CzBUtqbFs+wcpLtINU2mCXFaLTw3jzT6sGaM3S0ORuINNKBbvX/OedlANLVg365C
         1zEZBPE+tyqYxnaqoXXf7bnJj9n+ZL+4b0gvTcEbmlHMIE3y4eEcbqqWM/qJ93k/pxcl
         JvjF6C36KRR0zUUqat4CkVW6EJjbtD9bnPNsIM584s3JQF28g3IHcMRdbdJwaaZyyoli
         V+HR0G2Yi+OSu/QUS9NllfsD1R4hkNm6ncDIlRACvKHm8UY5D3M1wMvddLLUAYCzaxcc
         CugzNvEEv0DYMk/z9CzJ1uZuUCskbdpd6mKm3FV9lfLfTQdpiME0AiEhUOSbMLhD919r
         EU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418802; x=1761023602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=KtEhBPVqIoLWt3QQb1zLRj5g2tcSIUjPeatLFtPaXlGjf40bZOGJMTmd0siwlr/TeT
         Xprvo73DLuuzCoyU0GifA0ib+XizDiBryiTUbuU07mJx0A2AY5GJStyJvxoAAoSfCbtt
         ynqRa6T8LpcbgIcpk9wfXsm5VlIevpOE+p9vh59fHS1OLCLrVmvbGhUx23FzQUApUWBA
         2XNRei88m6aaLga0Aey+u8ccqUiuKoI0zz8oszFWvf95zmUPZF62HAKJPU9iaWIdK43U
         bmZoz557qOI+wn+V3PC5hAOHpnBThbvgO3C5HIi+p2OPhRi9dWhO6yc4uJPayWS+GO7Z
         ZrIA==
X-Gm-Message-State: AOJu0Yy+2R0Pm+/YS11ZBjhV2mm44Ku42GR207WfMmjf0+dS3MKG8GeB
	tptuZACyJBcYvdUgakL/jx0K6nU5v3VMlCWDzplldG9dvYBWtYkO3dhc
X-Gm-Gg: ASbGncuU8ZZLTtjT6VhjGO1guqtecVn99qbMhIISfpaviPMbP7bRn1vJRpTfD2KkHMZ
	slfXfB9jLksJDAOe8mjbByuEL4lU7rIv15V9TERL24VTlMkX4pX66dN2pe4GqBmXFjrmB74EGB3
	pc4iWLKMlnxUvABJxYoUXjh2Ol0WLfRSUjrVC0yS+qaKP7MqwAniMx+lKxkcTwWIrCS9mGdghOt
	bV/YuTisO8X5Fr4xnAASIYLmfMfwmNMGru9tUlttQz3GTp/oEsbcxk8xYVtFAgzBr3ch2AUZwFn
	i8V0PGxloOmSjrYt7u2HO7b2M4B1TuU7+5X9S/6JbhuXODZag810qQbeyXAx0eXllPshV/PfAwR
	JVZ7CO+f2wE4Qm53jk2B7SCkC5mnV57qB8jPXWfQjPwbliXycNl1+yiAvaG7GImAm06QYv+F01f
	fsJUS4+QzJI3I=
X-Google-Smtp-Source: AGHT+IFdGEyJI+FP+jgDwvUb1DBtqjAdgYlnNf0O+uLevyNOD0Ahuubh0DHStrxuGa26n0WttHzXtw==
X-Received: by 2002:a05:6a20:12d6:b0:2e4:9004:52fb with SMTP id adf61e73a8af0-32da813449fmr28943523637.4.1760418801797;
        Mon, 13 Oct 2025 22:13:21 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.51])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddce4b6sm10902353a12.13.2025.10.13.22.13.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 13 Oct 2025 22:13:21 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Tue, 14 Oct 2025 13:12:25 +0800
Message-ID: <20251014051226.64255-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014051226.64255-1-jjm2473@gmail.com>
References: <20251014051226.64255-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


