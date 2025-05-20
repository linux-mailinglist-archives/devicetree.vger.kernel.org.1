Return-Path: <devicetree+bounces-179008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11420ABE59D
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 081C11BC34DB
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF7D253F1B;
	Tue, 20 May 2025 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uEzqWk6h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79421E0DCB
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774881; cv=none; b=iens0DCGUQYXIw7ABMzf8iXB/qDfXb9qMXTYIa1dRD2YAHVRKVLsFQZu3VBa5KL84xcfEjxUEeF1u2SpDkXompuJtZu3h8K+Uh2v4A2EGa/eyMetZFO9JTdfWvLhCm8TPNnOTz6ZYWHQZSqnTNmo67nmq0Ae1DFzAOrBPeT9p8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774881; c=relaxed/simple;
	bh=Afxwdef0Jf2HSBiCXGtNVmL7wJWM8CS0UaEkxk3+CTk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TO5Ja12DxXZYhNAI8J8x+VvOvOvy70bHFG7om1jmlfRBCHv03Ee2pFhcjNcKGzruygWBQpvlnaplPvWt3KOOn94+iKp2ZbHFhovyO6LG/CrzH/gnS3j4ltWQZoDmArhgZVGdlT7XJJX2kjWwfmMNXeICySG+Mr7DK+ykoCwzgik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uEzqWk6h; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2da73155e91so1637035fac.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747774878; x=1748379678; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fp00wL1Y5X4So9ecfuqEeP+KnSz3366qtgJ3q9p0wb0=;
        b=uEzqWk6hLoYOG1/xsTIxSHbE6ApHxSubjdnzOVIGG7wG/ZAWxO4zLvY6Qkn8bpWxdx
         0ysPPIyfgXHNIjT8SAdDPzDAjZWEGjtH11nJBUJ8f0gAghREC3WWmPUGMkvZwiAYHxyz
         rBET8CwJW+4fx1pBt+cvFWlSblh/48eovAOJfvPARDeMyhW/fogTysDpvHs/WjDOAQlX
         R19pG1zqfLu6FAohpMb1VmvahtM2P+Y7rGEyfuZLWjXs2gepFE9+4ANS/yuuz2uj1eD9
         2z8fsBVSAIuczSmfCFHlTaOxftjIfLHmcgEidw3vAjf/oowIImXccxbA/uIf0eJZMLVz
         Zv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747774878; x=1748379678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fp00wL1Y5X4So9ecfuqEeP+KnSz3366qtgJ3q9p0wb0=;
        b=i1Q7ChzMVl9WWwL39Ra677ZFEXQnTa0PnhBeVM9awsvWPmsLQEgsSDWuiVX4cWU0Y2
         sDbXSSJUlIpZOqeyA7nsGOZovIUjmWLMpHGtVM/eqtMZEg0yJP3XFn6/FVqRvCIEQ2qg
         F+2so024KvfLnbkhQi3zgj2r5ywsoRUEZ9Q3bL9jwx5k4FjsQpn3HA9B+nu81OVYnD68
         4wnqjYDa1f2ohIYMd+6ssGI3RfuyOQ2fjmhLLdOOY4xNE+z4Jfx4Fb8VeBzelEXaUCXp
         vKNEvn+URlHzN+gYcaKzARmvfR4q8Ik++Sw5tKsFPmJQ5VCQRKhYnJhVgizOPgHS0jH7
         rQdA==
X-Forwarded-Encrypted: i=1; AJvYcCUeryIc7l4HvJaeP07sy5zrQmzo0qEYYZOkvxd+PSbHtoezhlH33WBEJ3t/in/SInxMMCRBmjWeV10H@vger.kernel.org
X-Gm-Message-State: AOJu0YzSycLjAFx+CU7kHTR1UD2hJfDH3/YV6ctv+cNvfQI6LfdRGqJS
	9tZGMKuZrSpossWO2jjKwytkBbyE9W1eWCUvhONLLu87Ku9RmRCMj1+VP1SijepJpdk=
X-Gm-Gg: ASbGncvdIL89So6HLBEZtaN/wR1Lyr/i8IC74wzx2WYR81zyZ8K3kTeyjF00U/dUYA2
	xG3bmkR1OsYFa6QE7Icawjfu+m5ULFOs/IoSxR6rihxxKdP1I9udHLt1TYTuCAIfvpIkrMgZmDl
	Ulj0IfAatL+xThoU+TGnhLmph93sL6ek8l2ouxj/OXTYcbUgnJ26Y5LQQjvxTm65BPyokLhEMf8
	8/C6iXC5u/lsPjJKmZVe0IJ3WBSzInV7mDriPVtzvthVzwdoPg3arHZenAQx2BQUoeqbbbBzA3M
	ibffIX8zOMtcZDsPJbvy1KGYIsytOhColPheCjomhfckZ0+ioOHSkI+H
X-Google-Smtp-Source: AGHT+IGSTahwpAX7LljmxRMHFEq8h6BDIh7NR6hXlQMHRupeFNvQ3f4OkyspW4HnfY3R6YHMmE2VdQ==
X-Received: by 2002:a05:6870:9f0b:b0:2d5:c61f:c2db with SMTP id 586e51a60fabf-2e3c856789dmr10978508fac.34.1747774877841;
        Tue, 20 May 2025 14:01:17 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b2e1a7sm2348470fac.48.2025.05.20.14.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:01:17 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 20 May 2025 16:00:44 -0500
Subject: [PATCH 1/3] dt-bindings: pwm: adi,axi-pwmgen: update documentation
 link
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250520-pwm-axi-pwmgen-add-external-clock-v1-1-6cd63cc001c8@baylibre.com>
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
In-Reply-To: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=958; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=Afxwdef0Jf2HSBiCXGtNVmL7wJWM8CS0UaEkxk3+CTk=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoLO2IrLVVgQ3h8rSSHUUEyxF54KwLtl/rLRTCT
 OAEf9luY5KJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaCztiAAKCRDCzCAB/wGP
 wE6EB/94O78sxYgWzSctw9RteUH86F2DfXA1xiszLyiQGRtJk7SeXtAjGkqO+26/tXVytEcCz6i
 GHvXeDef+Mbe7TT5SAzSnQJtNQO/LuPK7SUW+fbuZ0IDn0q0/0nxhiq980u7kywwCgrkifV6F07
 GeecSV69FuPrW/oBynvN8VCo9OLvJZ+tGoUEcHr/kNC9UU2BqMibSrI0sORevRZeUnaCr7hs2xK
 V9eJSNjoVt4wCGXwmO+7H8mPahMUy1gYJ4lhWihhyBJjienA41y6eIO9rcBOSGaF/vD2Hbd3mD9
 zaI3VD1PmSaDClwS+T8yZYeMEcnDlKtIUJdR3OPVgyxU1guU
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Change the documentation link to point to the location with the most
up-to-date information.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
index 45e112d0efb4663bc7fbb3a25a12d66aa8b7492d..bc44381692054f647a160a6573dae4cff2ee3f31 100644
--- a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
+++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
@@ -14,7 +14,7 @@ description:
   The Analog Devices AXI PWM generator can generate PWM signals
   with variable pulse width and period.
 
-  https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
+  https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html
 
 allOf:
   - $ref: pwm.yaml#

-- 
2.43.0


