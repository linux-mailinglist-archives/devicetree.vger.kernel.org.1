Return-Path: <devicetree+bounces-248662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F13DFCD4E3E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 533C130050B6
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C851C84AB;
	Mon, 22 Dec 2025 07:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GG6L+hcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3B21F5846
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766389568; cv=none; b=p4mEeBpcm0JweMY4Tph4rXhv5qwitcbR9lEN+5nwgb3IlTn6tfQ9iBrWCLc+yFWb25lqytLlrqCg/KEUqmS5cjhJFgfMMjmNf2NIU10Op9L+42L5WadduzMZ+HTlI2OC70HvyNvr2Vq3EoV7vjsqqMvlwrJsxYX3/tZ16LpVssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766389568; c=relaxed/simple;
	bh=6cfmAXzuvyWCriW+9K5ER4DTlYWIvpG7m38YclJ5GzI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i5lV1PQbqIRNNk8Uwca1tdtfy+w4InyTNQRJcD4fg0O94ZXXun9WFGKYQ3uvil8JPzuP5kOmUAzfBVAOxjXqt7BH0Rx0dJAYhH/SEo4KJog0OC6Y15tuDjykpQ6DT2asdVMdebz1JmdgRP/VTaYBWBmFHtoUOjif9pldfINxJWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GG6L+hcl; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0833b5aeeso50778775ad.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 23:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766389565; x=1766994365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhSoLSk0toWUxTDlJMgUw8U4nRCTEhSOzea+DI4TDjA=;
        b=GG6L+hcl4VoC4hbII5oPpck0AjGYXESfIq0K287iMyk9lGuskcJrFeGdWvqeS0c7iD
         ZZRqXaWAKtlV+Dsk70CslKVCQy0k1+EhilSKSSnm7uXHT1uqhoqWV/mtaD2L2TjjeFux
         pNHAyTMuArzMZk4/10ptaM7hsxp/1JJgS56BRvf8FMhdTAsrYw5oEQj8hoTr1K4XW9Va
         QAt78pPv03ZdUc+rDNGP8Mg+ompa5cl4Z3BphZlVlvziS/evK0Ik6pbBfqIRqClzkXHZ
         TT3pwl1mXvoSBlCam+ga753Iofo3grrm5YwS918xjenj3hMJ/MU1XzeX2aK0Zy2wAaIB
         yusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766389565; x=1766994365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FhSoLSk0toWUxTDlJMgUw8U4nRCTEhSOzea+DI4TDjA=;
        b=TYo953DElk1mCUJdyvYFR8fb+NPlEjI8mAyTxF520DReYa4KYma63MoCuc7+ROzexv
         ZbwFo+gPXy0T9nECJpXR9cOMq5r/VchdN6QxHFc+C156Un3AxE5t7cLnPxcMbNJt5sXj
         mWUNpqJTYX65smEuk0GOW3lm7HhuMmhRt4nF10y77ubnlVlOvCXXbwBUjyHqXERYOyJF
         0ztt3hquwlTDDtMr+T2JTIf7KHccKjFiVAeywqo/jEmISbZnSpVfveQk43Zrw7d21xcc
         mR0hIgqY4RdUROWdSMT4rf/3ZOzK/tjsLJpYoD/UGyv/S80gGvJR4ynr24NmLPwh+ToY
         zDxg==
X-Gm-Message-State: AOJu0Yxw7l8jpU9lNdyjy/POUGAt/apeZTuVHeXiup/DoxCirWuhJ7xA
	VRbn7VsfieZ2CPN9PWRecycXjWVLZpsInbtLtLicmfNlG0b+RCvbwKveGwMN4Q==
X-Gm-Gg: AY/fxX7nQ+meRt8q2Mv5a1c1iQXFrwN7VU6YU7MNBJEZJ3SsLIzGaXSDLsb4sHmAagT
	9Ai5I5ibQBwmPDph+1ihwqC2wnJww7mI/yVp7IdinHoLIsnadjqFdOT1DfTmBXRXLVn3GJ8yR41
	EBbIbbpkBUQ1JU8RKp3OTCRXsomE7JfC7x5HuNRobducE6OkyUuSPoBkwa+OYZYXyXEbvs9I+yG
	275AMhvszPv/XAh0b+zXGrBsyOVA2aDmSr6yZqI8frK6OY6IXVlF/M1VSVfhOXOSQmnYrUWvacd
	CEBnYHnojPOp68tggICnVqH+55xPwRuS9hYby0IaGkJmJ6YqqXGgAUX8GF1D4qGFGmSzYtBF8eB
	UAETwngr1fLwJhs5d1APQDUoTVEf6MEORV/Q43Dko/hYP3kTWF1Z+lm025v9t1dmpqG2+N0+xNG
	T6qrCUC+F9kZtKZVFlrUnjMP3p5ghrJluWw/6G/uvzS2Ted4cpNxvX1VvbrIDwK0ofVTGFQd23S
	ZZvjlsjZ5hKDZA9
X-Google-Smtp-Source: AGHT+IGhqnlFI6apowaKrJQSUtx5Uo4lIBRTl0LtnZmF1bt+yilUxHMwYLSA8kTDgE5JJmMxhl6Q8Q==
X-Received: by 2002:a17:903:32c3:b0:298:616a:ba93 with SMTP id d9443c01a7336-2a2f220cc86mr83489825ad.9.1766389564695;
        Sun, 21 Dec 2025 23:46:04 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e3a0-2ead-fb96-4f50-681a-bce4.emome-ip6.hinet.net. [2001:b400:e3a0:2ead:fb96:4f50:681a:bce4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbb7sm89605105ad.59.2025.12.21.23.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 23:46:04 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Mon, 22 Dec 2025 15:45:43 +0800
Subject: [PATCH 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-ventura2_initial_dts-v1-1-1f06166c78a3@gmail.com>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
In-Reply-To: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=839;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=6cfmAXzuvyWCriW+9K5ER4DTlYWIvpG7m38YclJ5GzI=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpSPc25eqwxQH4wWyUJKBjJILcziSHssSo8q/H+
 3afSzty0vuJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaUj3NgAKCRClg0K3CVbE
 gUTcB/9THA8dYDR325r29fI/xAe4YjAOYulMOMSzWKqhT8wmQoP3GO2VZ1yoyPxLUg4w3f5YSpW
 9T4pKSUq7CoInDyDV23/BZ6z/27l/O358C4Q4Vnz4xIOTOqhXETyLAxAViA9OKDC26T39y3fYKL
 XI827vGlVlVwZkVWypMOQSUpx2HTUAgTKpt7cwcAHHs/oYaIgc543Qn7dX/UvOFVzcB/nTDQADw
 PLdVHv8ySkrc6x5IlC+romxV+9DWyclGtiSz6SxZR9+JnAK/gLzP+1O2PGqCzVqk06GViCnrhhj
 7PTd9vbIeyyur7sw2e0MlNrA5nIHc6rHQUzY9ttNMKLlNIhK
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Document the new compatibles used on Facebook ventura2.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..24e19b8d108a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
+              - facebook,ventura2-bmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc
               - ibm,balcones-bmc

-- 
2.34.1


