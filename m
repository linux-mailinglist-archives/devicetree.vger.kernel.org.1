Return-Path: <devicetree+bounces-189404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9981AE7C50
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9088A1C219EB
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CDD2DAFB8;
	Wed, 25 Jun 2025 09:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2f20f7lh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D52D662E
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842821; cv=none; b=ogKHgFOX5wgsmUoMAMV+JEUPIsor0lYbEqUtSW47hFuMnXKlPm+IV4zy6Gm1/kkQUhp+3sWdMCgl0/LXlX7zbTsK7zxLtY+zEwvVPn0JkZ5lmYP0B6yB62WpZmukBCGrUNWpI0HbFrzfSWb9JWrkf7FKa1nVjaP7er0o9BQ4ZVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842821; c=relaxed/simple;
	bh=r0M6S+8sborTozQR+msrdhkLnPY94JjF8rfiMkhWlk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eX1lWV6Vy+I+hLXgMT86/rlGW1IqEuYsJ3fM6v+E9jMfumaz18z66O63oTpUCR+QIDWyYOME9zmw9O2BGpxAD0ZfdIf7y58tLFb/ZLOdRqXjFDHyOP0bNF+rYsPCnortwZKfwUe08Ns2QITd0xIuBKO4TrRbKVh98DM4D/HrPV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2f20f7lh; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad8a8da2376so1039139366b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842814; x=1751447614; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17G3N7jRvQMr98ZDvseO6MuQGAn4fzRuTBF5coR9VHU=;
        b=2f20f7lhssQVmnbq+2YohGa3lU5ehMPDrVI3yhArGEllQDcnhB8kV2A6Pi8GHRq+oM
         kRw5Q04Ad0Y6behcVuuzVUcIPSNH6+TaTH75vqN5a1pV7N1utuhahFCi3x6RhZRil1Et
         4cHgdIdh1XFQoXoHkD7Q9GdeqVUjhxwT4yXP0di3KdS9NnISgqjOaDWuMG5dItEeinc1
         mcW5A8w5dUn/zigC/UESt0oox1BuXJs4r+hUoQn4wQG0ukkS8AWD1UV+VFoI6cEmm0M2
         1y9pCQySVONevuEkc/X/Djs0awVrrEyZFQS/o9REFGPSY+IBSZVXTsU3iv5jhFPtNTYT
         ifrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842814; x=1751447614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17G3N7jRvQMr98ZDvseO6MuQGAn4fzRuTBF5coR9VHU=;
        b=B7iJpGTyxYMSCJ6ny/Fr9DfcWPWTomy00ZX4xGDvjPItslHxG+f7b4bvmqGu+5GEXW
         R0z92MoIw4/1lY2WLhAbtx60s37PrEFMN726XRBifw7fnOSuvZZxbbTiMOehA4j21kiC
         PYN4uZPfyDEkQC904BAuZoexXgNLSuxJohkOF2YvF1wVQFudyogDmiT1x8K6pFgmJV+7
         COrAXxBxf144DTfS5qCtNnjMTXhzDVYeFVBpDKylpbCVQljfFVRLQ9/F9PLD+lBzOuqW
         QRSxixlyf0HNRfEk9L7IbEEBvgpArgbqN88mFA63gQyiLZy5Mifea5zkw0uqhAaDCS/K
         0HiA==
X-Forwarded-Encrypted: i=1; AJvYcCXZZoird23CVsA8cMKCHDFV/oIIxP/I8N89yZPHuZiI5lpSkTDNr3rNGqvANA7MVeN62dwWuMIf/XDa@vger.kernel.org
X-Gm-Message-State: AOJu0YwuCq+JJ1vPIfsmEOzZA7N1pmbcqMvXuqdI0zmqzdqbfsaBS66l
	Qb+lE774ZsJnsLYsH9gj75G+ebPVoT0sjs+q1/1AOWJK7BuVeCQad35TqrztAKuq4UVaJVaQmGC
	orb7e
X-Gm-Gg: ASbGnctTGPs8EoMbfdMfq+FhXGxKo7IcAFVcfjz135bti4N9cHzAdyhgaX5+vJHkpKB
	gjm4HS5AjvF9ub081RWH7mdIKxuHBco1v+ErEuGwwksMEI/U0obcL+PecC80a9rUt9Oz+RgMMrm
	AH4doUjkyy/pn9xgfgcZ1IKYPoi3JIC1soz8Psdip91MC77zriFboDOhSIuyp+f7YNSW4p/LS+r
	FK6hcMIEGtmG6VMNhBY3TUCnEFVCt/2KGj68kZqfEjJQ420ncx69jIBgrGLaQDO6lL4Bf+tviDj
	eoZgVOUQw6B8akUl/kZ8koiTIwGKbwfvpeuYn1ZIV6h1iv6fAcgJvk49ZRGNxCMn1039C5wsH1u
	SEONfw4N7BhrFFRPTbprXAztyyiUJ84KF
X-Google-Smtp-Source: AGHT+IHtN8rF9jT36FGFeY24lEgEDKLCBuJ72j4a8PMP55mZ2eMQzN36PcTHorCZJo8JzcTmKrJ8fQ==
X-Received: by 2002:a17:906:1343:b0:ade:8720:70a0 with SMTP id a640c23a62f3a-ae0bed1b20fmr173874866b.20.1750842814425;
        Wed, 25 Jun 2025 02:13:34 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b719fsm1002786366b.128.2025.06.25.02.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:34 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:13:23 +0200
Subject: [PATCH 1/2] dt-bindings: power: qcom,rpmpd: document the SM7635
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-rpmhpd-v1-1-92d3cb32dd7e@fairphone.com>
References: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
In-Reply-To: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842812; l=844;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=r0M6S+8sborTozQR+msrdhkLnPY94JjF8rfiMkhWlk0=;
 b=JV85IXCu5LtlvDSqrWSOtV6SHyeq8t6FfsfSBOEDVLp/36Lns7YV3pcMTaXDgEdRKDDTH/syf
 ao5dIEG2k1ODU0PvHFJhUxGtE4GJnPg8SEVxPypJ6v8SaE2FwXCYhPN
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the RPMh Power Domains on the SM7635 Platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 1bf65f2a583ab70ac313309f917aaabb75dc3f85..5a698392c657330d7d188c33c0bda46be5aae690 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -56,6 +56,7 @@ properties:
           - qcom,sm6350-rpmhpd
           - qcom,sm6375-rpmpd
           - qcom,sm7150-rpmhpd
+          - qcom,sm7635-rpmhpd
           - qcom,sm8150-rpmhpd
           - qcom,sm8250-rpmhpd
           - qcom,sm8350-rpmhpd

-- 
2.50.0


