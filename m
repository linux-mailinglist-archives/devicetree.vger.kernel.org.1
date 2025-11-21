Return-Path: <devicetree+bounces-241156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB50C7A58B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 709933A060B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E85334696;
	Fri, 21 Nov 2025 14:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I2tWCChj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1058A2C0F93
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737161; cv=none; b=cyhjWjSDNY3/981UC5JSB1zfhrvpsshKVkCzRzP3zmZzeiOf+NDUiiSZQjZ8RH1llMm1UMRlRmZce1i494ckZijNEdL/LlPyxiGrCgtickjR6pq+6Cde0XfD7fKRhKodSWlf3QjFr20Wr0ecVbvQBupB2ci8Bk/oMjIT0sECtNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737161; c=relaxed/simple;
	bh=Xw0nStpLYuZulMcP9HgJTo/LqtWsv+lpf6jHuGJrwzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GOPWN1gK0yadF/LewWR3LoRVMmc4byG7z4pJZMTMnstFYqyr0I+/nIf6+G1ZkV71dtc4GUnF4Y5fhzWac4a++nqOtiWbmGSguUEt9B+dox/JGGkG6rjtSJ2jcUoS9BvgYpJqKMo4bJ9mb0DByzX2a6kIRTeN/fy83P+4HzHAFaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I2tWCChj; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4ee1879e6d9so25028251cf.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763737156; x=1764341956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Q3lvOppbjkr07npv+SsBguvzh6HdJrUD4Vz5F4TU94=;
        b=I2tWCChjbuPROV77OMfy8YKgd766mJ40Ia/pLQWQ1jxRspd7oGQFBTCENKQ+DkxIqE
         ZKnGtmuShokrRYMGmXqp9H4YFMPeiERkiTcSVhen62VdTY5UK8j2F8pZ7PMgu66x4anE
         XqZHki6+IElugfnLTapwk3ZIpyfSoFTtTsxaNRGqgXR7Y7/2MCJki5MPZkNRmqBQ2yPl
         nuGrUN0e0Px6kgg9+/7b30ycaomDbXkf8bYoT+ft6whi/qJxjdLAKUpSOqe8yOoJaF4Y
         2PPRCwWbTRV0eiu/IZkmNMEQuB8+lNPChCtd/0di3xRYEQhqFJnkAVvtFSuGVbsas9Y1
         2mmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737156; x=1764341956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4Q3lvOppbjkr07npv+SsBguvzh6HdJrUD4Vz5F4TU94=;
        b=BmyeMvdYUO6PD/WRUT8DipNFxA7KlJ+FAtxBF/2LDK9HblJkUCVQImWxPnkRxwISpN
         fgKmGdN0tBp7rpK7oMLvj0SKMph+QzpsHmAKia//ngp6PDUjwD9srxRBeIq1P9xoRx6i
         qrMb5ytDtrYftu5unR8jRwbBd368gpWlBU0/pWmdGPV0DiCPwUKkXp3Leid6ESquHENf
         IfmVPe+zwZu7S6mh9/13iwJRsqdt5WEti9J1tYHeL2coEvW4JzCocqXUafO6ucQEJF2O
         oOfFvlY54/ED8oMKtO0tplp5MmpTdGXX+fb3ZopyZcu9fKCKGFxPQXYABMh7PA2uWss9
         PliA==
X-Forwarded-Encrypted: i=1; AJvYcCVYV0Fg5BNgaNxh+7fwM9QvMIq9BaeZWTtZpMHpG9L+IYdeFxBDC01xOKNsSpokfTw6z7mZDwMr09JP@vger.kernel.org
X-Gm-Message-State: AOJu0YxqHX2mU/byn75+KlX8YZ0nVBWS2IrUhBOCGzO/H+RbgFWS2JlG
	MRKT44yFqF92HcRa22dP/+51ANafruI3bOar/BuiepotlooX34T7/pXz
X-Gm-Gg: ASbGncsTHNPUyZnd3mDuibslebd40piSTGp8LGkWLzEktEL2r9YmG09Rl2p1uOITpjt
	uOxWFN9585NDCIrE7EDrmY2xkzJoOOzD6tXmZV4uX0HGay6+/GLbNZuSy+sRqwrqeVp+9srN6qa
	hWrSfoZ5/uMtYYEVcoqDVJfHDvfhItcGUMyPtF7YO5Bh60eGdtm+CUGyBIeK3m3i58HB0ABwRS9
	j1/Nq9pS1ZLtqnxLXPDxAwZHYqFQFpAT2W7gzLM69AxqQm4gvxYqzHxs/F4NxhR8cspgkjovQS7
	POtspTfBUKTQJhIGNjdGd7drPRtnWpm76XQ+VyjHvpBL9R8ex9UnIADuyccgnbNbxFjMq4N9g07
	WICL/n7HCaYvFggTyoljAYZPFw3bpv3Q6JWot+0pjNN0joL77B++/w3L4qmvbpqcq7Rr7yq1XuD
	Wf+oPZkagh+eCMbPK8hioJkXNkziT829hWGThq+guUwzofJJqqFpghg1ng
X-Google-Smtp-Source: AGHT+IHWPQD2okrwn9ev0vEcZ0xOBm/fG65jQn48GrsJOgu31kH078v2zB1OvF3Cn3sE+j2X44acTQ==
X-Received: by 2002:a05:622a:86:b0:4e8:b446:c01b with SMTP id d75a77b69052e-4ee58af12dbmr34796481cf.61.1763737155901;
        Fri, 21 Nov 2025 06:59:15 -0800 (PST)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48d5241esm36424261cf.11.2025.11.21.06.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:59:15 -0800 (PST)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	=?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH v6 1/7] dt-bindings: vendor-prefixes: Add fdhisi, titanmec, princeton, winrise, wxicore
Date: Fri, 21 Nov 2025 09:59:01 -0500
Message-ID: <20251121145911.176033-2-jefflessard3@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121145911.176033-1-jefflessard3@gmail.com>
References: <20251121145911.176033-1-jefflessard3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add vendor prefixes of chip manufacturers supported by the TM16xx 7-segment
LED matrix display controllers driver:
- fdhisi: Fuzhou Fuda Hisi Microelectronics Co., Ltd.
- titanmec: Shenzhen Titan Micro Electronics Co., Ltd.
- princeton: Princeton Technology Corp.
- winrise: Shenzhen Winrise Technology Co., Ltd.
- wxicore: Wuxi i-Core Electronics Co., Ltd.

The titanmec prefix is based on the company's domain name titanmec.com.
The remaining prefixes are based on company names, as these manufacturers
either lack active .com domains or their .com domains are occupied by
unrelated businesses.

The fdhisi and titanmec prefixes were originally identified by
Andreas Färber.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---
CC: Andreas Färber <afaerber@suse.de>

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..6dd77c9ef111 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -562,6 +562,8 @@ patternProperties:
     description: Fastrax Oy
   "^fcs,.*":
     description: Fairchild Semiconductor
+  "^fdhisi,.*":
+    description: Fuzhou Fuda Hisi Microelectronics Co., Ltd.
   "^feixin,.*":
     description: Shenzhen Feixin Photoelectic Co., Ltd
   "^feiyang,.*":
@@ -1279,6 +1281,8 @@ patternProperties:
     description: Prime View International (PVI)
   "^primux,.*":
     description: Primux Trading, S.L.
+  "^princeton,.*":
+    description: Princeton Technology Corp.
   "^probox2,.*":
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pri,.*":
@@ -1632,6 +1636,8 @@ patternProperties:
     description: Texas Instruments
   "^tianma,.*":
     description: Tianma Micro-electronics Co., Ltd.
+  "^titanmec,.*":
+    description: Shenzhen Titan Micro Electronics Co., Ltd.
   "^tlm,.*":
     description: Trusted Logic Mobility
   "^tmt,.*":
@@ -1791,6 +1797,8 @@ patternProperties:
     description: Wingtech Technology Co., Ltd.
   "^winlink,.*":
     description: WinLink Co., Ltd
+  "^winrise,.*":
+    description: Shenzhen Winrise Technology Co., Ltd.
   "^winsen,.*":
     description: Winsen Corp.
   "^winstar,.*":
@@ -1807,6 +1815,8 @@ patternProperties:
     description: Wobo
   "^wolfvision,.*":
     description: WolfVision GmbH
+  "^wxicore,.*":
+    description: Wuxi i-Core Electronics Co., Ltd.
   "^x-powers,.*":
     description: X-Powers
   "^xen,.*":
-- 
2.43.0


