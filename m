Return-Path: <devicetree+bounces-195600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E46B023B5
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EA8C5C3F3F
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD132F364E;
	Fri, 11 Jul 2025 18:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="kje644ut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A732F19A5
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258809; cv=none; b=hYYPVhNKN33/4F73wHAKJLZpF37ZjnlQTkNZ56VvhrCnzMRqpyRP+b1XSEC/Z6JfTNixIZcjWOznUJRzOP7SjRafvq6VR3HF565z4A2hFb2Oa1+xcSoD6zfUCmTEkHR2agFg6ig/p11p/Keh7NOlJWdG493tbuHbgyFByf6ETxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258809; c=relaxed/simple;
	bh=c4G0nLEkAkq5XZ+dS0OGLjwmFuBAtU1HZ1+fl7Ai0jI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fvJO8N8xpcvAa+Fs+beYHFKjyr225D2gf3KIv/yvWDxKkLEllaBvWcsZtzy0O+UftDv7q0v7y7QcBVedGQRIAWllHIjo4p/sgIGxXoHILQe5wA5Brnos5jpJJNHul49e8zo2+C+SXSFyvccgG120X0gkV6nxZYBjbyHS+WS4bm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=kje644ut; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-451d54214adso17580805e9.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752258805; x=1752863605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZ/08yx9KdEYvED/sNtpfI8PHIlJl7VHvIaa+wkBHBM=;
        b=kje644utvO0IIhH4K1TwZzolPWg9FsEjWzHorNPXziExAyAQiqcDiFXooQrvQlE/Vo
         +8OhW5HP7ARFOwEspnukmftgjAV72nC/Lf978IceqS5NsDU6SaQ4PErqZ7BH4gyuSaau
         4zZ6JmKwqAc1eqzg1xNW9eqMylYiMLiRaawMY4rLUaDMsskP/06Q9TEIP20uHvlCOodg
         O/seSafzJK6XNVOXILRqoAObx30WD3TKBhCUiYjpdybZuhhuyN1raYRp/4zl1mUxyDgv
         5LbspVYkcXAfTgaED6RNs/sesY/+n5C99JYJrKD312B56o+YSNTI9QvveKSE9TU+/1m/
         PI5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752258805; x=1752863605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZ/08yx9KdEYvED/sNtpfI8PHIlJl7VHvIaa+wkBHBM=;
        b=NQQmk6vB8oBLg6lynkDEtO5T9fJdnyavUKci34+TtDV7R72aN1zPMLsS/zWsYOhxMP
         9WuB7kw1kIDW78KXqb7mPGzQlvVDO6gmVwEczzYXBS9QKStY5m4+4fxsSPAF74GwJZeR
         CD2Zw3U3Q0irN6lmCBZE9lPCsRhyHb2VmoIRAyw3ZToUFdcCZQbgo+UNzmOr+RLNiAf2
         i86LBASFktJPeBerWIhExuTNB0bg+S4wERKvSfjukOft42yAEh0Mf10zSP9J6xKG7ye4
         pJBnhb1FON7TCd6doaONkpjwFVLae6w/x0m4kxDSJ7WdLhKxkJ1rzCgHCRNaHzJ6b3GO
         +wSA==
X-Forwarded-Encrypted: i=1; AJvYcCVF1AuBjBldzcHxVG5cRWLJr4/4J2zaGNaij/KfbTINf9BUdqyMlRQeIidGdQEpk+P5ORS5QCyV700y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+ADNf2KSq127QSJoqWi9jrttLkZIfPIAvf+RdLreQ/suhyG5W
	hgofds3p7huVjQlTmsrWuL7Os1QSJzjjbgRJJMAQmrL8UN6srpiGLEA9mFwUizKF4yU=
X-Gm-Gg: ASbGncsLU3H9QAlQPE/lXQn9wWcfQWvACyvweSHhEf5/RqlDU/M1OVoW6UkcHsm1lbB
	BArWPwQnU9lUp49m8EH0z4dAJ6YCEmUwisFllM0I86kCBPcY707wcfGnIgiOnwQ8L+cWrwjF9RH
	A+K9DcP51vZhPebcRhu7szaIgmkvdSXouXADA16JipV/B7n+tDEMn1gsc2yioHZ8kJwH3jw1dDn
	caikyC/HTIFhCb0ndKF7gU8unXfRJQ8OQJH6K+pWnfMuYn+3nYDuJjohrmUA7XiTPWEnX3hHrwj
	V7fH7vtV/p++rE+51mVrqfNGz/MT8rbmf6I10JjuOoG2m9fgQu6kPhLyOx7v89YJB+vbwGHhAPY
	RJhgM9Es5z17/s13Eru/9FqLjua0uRPVX84rV2aEvrFJ42qcM/aw/P0ClzCNK
X-Google-Smtp-Source: AGHT+IEvPbYDu3buwmTl0D0zspg4iHm2lPmeDh4bhM2691VW8eqw0kaZFk/7vW1I7JEp69ktUPgeng==
X-Received: by 2002:a05:600c:8b26:b0:442:ccf9:e6f2 with SMTP id 5b1f17b1804b1-454fe0f93d6mr45409645e9.16.1752258805054;
        Fri, 11 Jul 2025 11:33:25 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:bed2:2848:b66c:32d3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45601053020sm705205e9.36.2025.07.11.11.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 11:33:24 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH 1/2] dt-bindings: riscv: spacemit: Add OrangePi RV2 board
Date: Fri, 11 Jul 2025 20:32:44 +0200
Message-ID: <20250711183245.256683-2-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
References: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible string for the OrangePi RV2 board [1], which
is marketed as using the Ky X1 SoC but is in fact identical to
the SpacemiT K1 SoC [2].

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 077b94f10dca..c56b62a6299a 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - bananapi,bpi-f3
               - milkv,jupiter
+              - xunlong,orangepi-rv2
           - const: spacemit,k1
 
 additionalProperties: true
-- 
2.43.0


