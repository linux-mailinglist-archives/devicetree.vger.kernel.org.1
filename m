Return-Path: <devicetree+bounces-118432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA9E9BA3CF
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 04:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 811B31C2108C
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 03:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0329B13AA2F;
	Sun,  3 Nov 2024 03:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="IRvEtCSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B116A7081C
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 03:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730605607; cv=none; b=mPgdUVQwqEkIyVWOTybrzFRpreJHNE97UuHgoIp41ffboiVbhKBxkdraTEvlveuxuWeELiGeCVHVeY6YIFqFqAolIZa9PT6AxmqF72oQ+eg7veNjmYah9GnAbuJ8KjVq+A9cigESuG0AtiL1sLIJAW4mEdLcFKhkjd/GgBKsTxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730605607; c=relaxed/simple;
	bh=UD37Q3kv+0zSTiaCDIGf4tHsYG947h5UUXOysx/iLUs=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=o9pLffuHpGE16wa54iZMLtwfIx/LQehfQyRlcd0VEpgVS10mzTEIG3u7H3shHu55RbiMQUsrCYk+TIJ2aEQRT9VUkmlEdkJeXtIVXl3EU75zPnIFFIQmgF2j1gcW6zpENg6cv5AF1ysTFjIkxJ9x0hTTbumGfgjxO9ogTVaL398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=IRvEtCSZ; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e29205f6063so5574926276.1
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 20:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730605604; x=1731210404; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=V3/D4cNuA+god4pAH3Cm6vq8553sgmtxzLl09CBk8Y8=;
        b=IRvEtCSZlyKmRP8Q70/LVVeaQBCbNANOqVbM1CqPi2ssRr4HkB6bl7q0sTWJmR5+5x
         yHAA4ybC7RLtL5W79YCVe4Ehx7x7YZU2JUBD1eVybuyeio4+X+1JisAohwmz1BQvagjG
         52s822bAgO0k/XNZgyQp9hzDRHRrVmoAxHoksFMpfSdT+HH28jyS2rPRjaj1LWTYD5aN
         ktUcp/NYTEjIivcVeIV04J4sAqG+zPD2aC6V4poAX+92qpMlkqAc+SOocz4wFw7zS674
         kfY4TMghiE94F6wK72cFAPiBlr2vm/o65FObN9cwd0bQUNvXDrNppq7YVCpKURknRYys
         77hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730605604; x=1731210404;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V3/D4cNuA+god4pAH3Cm6vq8553sgmtxzLl09CBk8Y8=;
        b=YGw777p/FdbEktCfA8HH5F6jDi7vWkzP478eWW1ODr96eaG2GbIgb9dcqn4O4BFAQI
         j0nBl/ZhvdgaZzVrU2l2R7cZLfiEMbJjnvY/zyWUa6esPO0u1YG0Kk3JbpD7HAaP3MH8
         BaGVGwdAdu/Zw6/79O47O5k8iR+0FttgDwj67HKes506b3rS8WNOF5wcsUN4/t/xtRCa
         OKf1sr0xFQMqcUW9DJFitaqzFpq6uKBW3sQVtvKXmjZPz0cmCFB2nac10+RSjO4aPREP
         t2DN39fZcygyXPTsKEEZyI/nLfFLek2kakEXaaybO1QmFfpXWyI3C+TabEB02GC9hFlV
         Ei9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUloCHgvSJt8HdfYHgY9IMJ5y7+I7Ma4uCxj6AJje4rGRQH9VZhwXCKsNmx4YQFFk2DBedEyl4EkWOr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Zd1pINzFYzbCMPE0JTVYDxTkGu9FblbhgwISErJNK/Z3cHFW
	fFk0V8wVZturkHjDfXxI1oSP4Itsr8F+6EtDJ+6j9J43j7j6gtdfcFCnW8rERqEdUdsOvhmidMk
	29A==
X-Google-Smtp-Source: AGHT+IHzb0iRIstFF5hN4PGd2zA1+ThWNXNbtoz4ikdltRmzRF3u92SdPOFeBkTUGKp0h2hZRT1/GG15QsI=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a25:a045:0:b0:e30:da65:7240 with SMTP id
 3f1490d57ef6-e33025536damr8488276.3.1730605603649; Sat, 02 Nov 2024 20:46:43
 -0700 (PDT)
Date: Sat,  2 Nov 2024 20:43:28 -0700
In-Reply-To: <20241103034402.2460252-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241103034402.2460252-1-amitsd@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Message-ID: <20241103034402.2460252-2-amitsd@google.com>
Subject: [PATCH v2 1/3] dt-bindings: connector: Add time property for Sink
 BC12 detection completion
From: Amit Sunil Dhamne <amitsd@google.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, heikki.krogerus@linux.intel.com
Cc: dmitry.baryshkov@linaro.org, kyletso@google.com, rdbabiera@google.com, 
	badhri@google.com, linux@roeck-us.net, xu.yang_2@nxp.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amit Sunil Dhamne <amitsd@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

This commit adds a new time property for Battery charger (BC1.2) type
detection completion process (based on BCv1.2 detection spec) when
typec port connects in a potential sink role. BC1.2 detection is used
by some Type C port controllers implementations (such as
"maxim,max33359") to detect the type of charger port.

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/connector/usb-connector.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 21a0c58c65cd..67700440e23b 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -283,6 +283,16 @@ properties:
     maximum: 200
     default: 200
 
+  sink-bc12-completion-time-ms:
+    description: Represents the max time in ms that a port in sink role takes
+      to complete Battery Charger (BC1.2) Detection. BC1.2 detection is a
+      hardware mechanism, which in some TCPC implementations, can run in
+      parallel once the Type-C connection state machine reaches the "potential
+      connect as sink" state. In TCPCs where this causes delays to respond to
+      the incoming PD messages, sink-bc12-completion-time-ms is used to delay
+      PD negotiation till BC1.2 detection completes.
+    default: 0
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -426,6 +436,7 @@ examples:
             sink-wait-cap-time-ms = <465>;
             ps-source-off-time-ms = <835>;
             cc-debounce-time-ms = <101>;
+            sink-bc12-completion-time-ms = <500>;
         };
     };
 
-- 
2.47.0.199.ga7371fff76-goog


