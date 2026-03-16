Return-Path: <devicetree+bounces-276331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEjwCCk9uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:26:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E16E29E256
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CC0230A0044
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1363D0933;
	Mon, 16 Mar 2026 17:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z5QHY4EM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975C53CF69D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681593; cv=none; b=sZFnIMsoCwxbeu0v5PPtPiL2fU8EJAQQMsgdvqQ1KPTbVHHl1wwb8iXFl5NZUX6VQ4+4EqMz4J+peSHRmNjj9s/nsxUPUB2mI3GMPThxT1uj7c76q7okYLCwKFKBXzhccHpqgPBMq5wMGpa7jnEcsVYilCXY0I83dA6f/EcTb64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681593; c=relaxed/simple;
	bh=CZ1jj/eiHUYjGjlvolJhpPQIMl/aN3JFj+jg+nCFVEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=clOPi6+XTLgz+tluu4OmYc9/gyac+71egllW32bVRS/LKgyk2MfD/usFUOmStX70RGhjGs4CbgL0jOHNQi7TDAJBqb4jLZDbWZoEDO26Llt4sRs9NH7Frk4cc8q/8Qp6RS3oa/0fdt5h8ZjlPgEkXgajq74GZpsXRj/opCG8OdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z5QHY4EM; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b97b7e0368eso192218666b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681591; x=1774286391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hrOVP7ftGVSwzsjwgJO9DIOtGTWA2U/htQxTfqCFeYU=;
        b=Z5QHY4EMw7pa4wLUPbEWBfKlCivNMR+CiRr4ZckwZ53Atfavbyan9qta8SUB99FSTq
         ORO4a1HiTFiWQKaptg0di8cKeTODsWTTQ28tHa/Nk0pXdznLByXb6UbBw5X78MVINb4S
         izwnl667pGlIYfnNlEscJMs8oY33uUzH3oDdFCWiXLWcACEUKP7/yebPwyVKbPXIs57e
         jUauZxsE9EddMUBbSuECgQEu/eEhRMO1qUIFEsGWRXOoQmVROorNGgdvk8f6/QrZckyE
         IyO0Kv3aRmQhIoN59SlXHjeRHWenX1fRAXNucp4F4g0Pe3CyWXa4Ak3pIKwA1LyXe7Hd
         xonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681591; x=1774286391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hrOVP7ftGVSwzsjwgJO9DIOtGTWA2U/htQxTfqCFeYU=;
        b=k2L2fqp9QvFJwwIb/GjJKLhG7KzF4sAQ4xBCPY8bV++RgPwpY/jr9PdmIO40Rs0wPl
         QndWnx0iQBh+flXMw+Jfir9AIWhBQ12BYbA/pD59AnNarF56+PEFmYKWIt8xnk+SKg+p
         M+B5nmE7c8wiruxbPSnQPTQ1x+q7MPhPFWGDRguKgd7xkkVnpvakEqIYhvt1XT9aTdiI
         8EHlbhfucauf2rcoBTN1tqP+XMzTVEJtJwbjmaGe9h6NKiaq1Zq18YAxqrSVuOy/Z5Vr
         PS8pleac94l06WVotJt+ynct2pSFc0C7Ecw7W3JQWNXfR9TpchVXhiScayOlYJcFaeYu
         GAdA==
X-Forwarded-Encrypted: i=1; AJvYcCW+jW7H4DRhoD4Z39qlESf9eKRBJ6Ud4hRJXr1FR/zARAYrhlqDuQ0WdfjVoxVdMTlZMKYUAe7sujkG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy32D2LoZaY7BilvxgMdNTnJuP0ynrQEcOfj3AXL6igoldSM0Ms
	wZww5ie2eHYm1nh0OXGQ3sTqw4nhE5iEytt/+Dh3+L4EI8ptPrE91q/O
X-Gm-Gg: ATEYQzw2MFfb65t9OllF9E1rp5dVdyvcxvaLua+gkni/xNcSlJ+NXchbn9sT5hnksFw
	2Z6LkeGRB/34z6VZ5E6EjtBJnypa9Dcs2Iqz1cZM/k7vPw0cyBm4qVri+8V0gbd8Rc9Tk3yhO8r
	kr2SzX/q1UAe3bNwgtq+nkE1i2FyBYoMd3QWmUlmYHoFrtnLXuTELNmE1Vuo+Aoj9/8dorVPKx9
	voVm4wuLME5qEYayZ/udYo8G/cPjM36Suj1cP7UVdmYqpFZu/0Vy/qACfTZJNQKAgWTwo3CGBRe
	HTLUkNUaXO6I8NhCWiTTOjVv9yv/WTR8dSVHzDeGNxAkz4q1h4CF8o7f1GreczwrXB7d+wAw6oH
	1cDod/51k0WGdpJWdUrenzKTw8hbOc3nyG1Ldy+O2yrBzk4lOO4NiBTs7V7BMg7ry+WbrEufzg8
	13NpIv7MJS8Tq0CaKScgQUj4AvzQ==
X-Received: by 2002:a17:906:7953:b0:b97:73ae:e1f with SMTP id a640c23a62f3a-b9773ae1114mr769934166b.34.1773681590773;
        Mon, 16 Mar 2026 10:19:50 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:50 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:45 +0200
Subject: [PATCH v4 1/7] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-1-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TAGGED_FROM(0.00)[bounces-276331-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7E16E29E256
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These sensors can accept 2 supplies - one for the sensor and one for IR
LED [1]. Add supply properties for the sensor - 2 for the sensors and
one external, for their I2C bus, to ensure the sensor is powered on
before proceeding with setup.

[1] https://www.vishay.com/docs/84274/vcnl4040.pdf

Reviewed-by: David Lechner <dlechner@baylibre.com>
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


