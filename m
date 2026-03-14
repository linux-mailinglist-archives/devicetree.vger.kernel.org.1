Return-Path: <devicetree+bounces-275728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKYDO6GHtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:06:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C7228DC83
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E97D302E876
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F72377EB2;
	Sat, 14 Mar 2026 16:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iW3Jcuom"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6733933C52E
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504401; cv=none; b=eFZGFIs9r6QxaIPh4JEQqYa0+OwJkyviCvjXNUeDKWo5HKq4Ewwp7PRcd3ljtcskZD+GfwwAsxrt++oCPQzlvIqPCUaKnPrty9X9bihuWjEFkSmXHtKy0fpSpdX9iMk5ahCdMTFe61sKYB1t05WRhcJ8MySrEuwtiSNPCUQ4LHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504401; c=relaxed/simple;
	bh=lHEF6gffcSJSnQo4z2EbBuNrPboTiVaWCanIyhfeSeE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QWxt/DLD8wMes4QQOZQBlaN4EEiiQ+J2gq4BF63FlKc2kYuMdTJm27Faldnr71q1Cj1EMFgnCXi1KC1q1qaGIAu99Kvb73m6w3bh8zJ+kbFwZ8v5jvKIN74+yTV8tq2HikKthD33dtmSBJBN78JsrwKB0Zy5QH83KP/Apg2/bAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iW3Jcuom; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b9773abf811so245097066b.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504399; x=1774109199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+I3WG1paH1NyUuAIPAj7t3lCASphrEGmzEIZovUf74=;
        b=iW3JcuomsN5uwmuYAgh8XnBNYkOXoV3luzhQ99V+l6Bwv9qacQzW3RN3a7QjIyj8Z7
         //Lic3exO5wkJneyPI+S8GhXCw4QL9DBj3FtVDphK4BhybgDFUKLJvxOGmD57hbqnx+r
         AwyKTAEjeEoJQKkqIlk3JjHiyfZPcBtzU8rFgAjNXIJ3lJCy312oquV3M/x6X4yr1Ioj
         EgqqPO/MEoeFbg6FGahv3uU5wO+YK5fTmJtKrfavIuyM/wxeFuxmk4IZ4BQcCXWoO3CD
         oqoJAiY4WY2X7TMsLvZyEgpTYXfSyhx8YLdbRX3j+SUEXKrIqPwO8lKnylTdoGkVgnOa
         kT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504399; x=1774109199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A+I3WG1paH1NyUuAIPAj7t3lCASphrEGmzEIZovUf74=;
        b=SLMbBpsBMOiNQVP1I3Lflm4TRIc2XG5KeTDbLruP5zQ4fTICVE5E1g43YSwPRj2BvS
         xsFzngqzb4Hs/jTO+hjpVsrK2I5rC5+qnZRJ+z/Gfrv4M/I5eXX6tJ191Wx2kPFDZzU1
         /9F4dlT3IPmwnL8e9BDKHvd0WYCbrVfu7A6po5Ky96WCaVIwO3kF/kO/+SxoHSkxJ08Y
         xibI2qyf5NtoNORRFHVMLfUnb5vzDSETNnM8v4QweToxpII+V4GotQqGK46dWWY98++d
         QtQczXG8E+UAtH66z8HJNbZqmztzulfwZxnmG+rwUQjFlZBrho09GNBMTxXLZZxiMTfY
         6Q8g==
X-Forwarded-Encrypted: i=1; AJvYcCUXfog+8AYaL6qMvePn2eQ6bLgoGEMz6dWSKqr9wBQMD3Vx5xj6I7puPAH62TGZwURZd1V+E5Ea90aZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ47wCVBmafW66L2EdZ4Ui+fJyu6fH3WQCXQYWTyp31oEQ9PCI
	9piUvTjbzvYsuPe1a/vi2QlxpvNuCbFJrcvEIMbJIPL4SlilKTfUqIyj
X-Gm-Gg: ATEYQzxOpTCTP01e5AdUE2HgFr0jCXFQ1chRj3fXrxLyp0Pyaq+QMl96EcYBI6Gz7MK
	78JQ0zjUx8oLECsGD9aHgbn46p+DW4UYMR4uoMBQ6xaTPtmrp7GFHApRUqKQU/FESBAUD9DUMaV
	IOXTqjnBdeIsL+3KCeMDeoQ00IRa81VNGtmbSu0oOVsDZaWW3zgrgrFobz6lOc09Z4q/jYIZDle
	XOVrSpgMoyGkc0C0jUpebeQKfYSDP9iCbG3PG7q1/mDSklJiYKq3R7ajlCfEs/+NTxr5/wjhNQw
	JizRQT2Pqa/qkTvb2Js78ceo2SL7wl+X9fCFLjs9iFphZhVw0rBr3PPx2rXlYHY+TanKi3534mg
	iAAbhdE3dBfIMR3Y0omVmbIxGiC2sTH64XGp2bz1utrDGrO+6nPXI/SRKFbdEPu6Y5l4A8LYlrO
	eVpYSouumv9OSRssvi/78fY/jBjg==
X-Received: by 2002:a17:906:3419:b0:b8e:8874:8384 with SMTP id a640c23a62f3a-b9764f8b1fbmr330896066b.4.1773504398404;
        Sat, 14 Mar 2026 09:06:38 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:38 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:30 +0200
Subject: [PATCH v3 1/6] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-1-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275728-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vishay.com:url]
X-Rspamd-Queue-Id: 76C7228DC83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This commit adds supply properties for the sensor, I2C bus and IR LED
anode supplies [1], which can be found in vcnl4000 ambient light and
proximity sensors, to ensure the sensor is powered on before proceeding
with setup.

[1] https://www.vishay.com/docs/84274/vcnl4040.pdf

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 2ba4d5de4ec4..a1b4c02db246 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -33,6 +33,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+  vddio-supply: true
+  vled-supply: true
+
   reg:
     maxItems: 1
 
@@ -54,6 +58,9 @@ examples:
             compatible = "vishay,vcnl4200";
             reg = <0x51>;
             proximity-near-level = <220>;
+            vdd-supply = <&reg_vdd>;
+            vddio-supply = <&reg_vddio>;
+            vled-supply = <&reg_vled>;
         };
     };
 ...

-- 
2.53.0


