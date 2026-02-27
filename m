Return-Path: <devicetree+bounces-269282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJNBJ5yqoWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:30:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0029D1B8F91
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 099023012E8F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EF027B4FB;
	Fri, 27 Feb 2026 14:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AWrHQyLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA99F2472A6
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201779; cv=none; b=fS630c/PXu4MTzRfirZF8byY+tuQsVwrq+4QdOHxNJ+aFFf1fkLb2acc31iGGCG/2kKDrnZ/C//4Ui/+vKzA8yygxzUT25aJZpiA7Emn9cwJnB/siiWdMek4Bg25DuX+47TFrh5E06xvZfO5BWtdvQNSNJ5wnIC/Ql+El98guZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201779; c=relaxed/simple;
	bh=heMywz+NZuo0faU9QgJgxlL7cA1s8uzmx8vmz10hwl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XI3FMQRZvU6ue12ymxWXsz186icfBhAU9Jl6JVYXNcW4FiTMbE7BA3lySBVB//9QIUgxouNVKZkRdGtF5RuEroxKv6nIjD26VfKU4+ffAUq6LzXdoUPT7EskYeZhQWklEbBf/KP49e24cZHifnNutaD4GXrWpEHKGu09Od4yN3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AWrHQyLj; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-436317c80f7so2087491f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772201776; x=1772806576; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+rLsrw3ubV2kNdM73F5QrzKGVLuRmUa0KmVONDyY8Mw=;
        b=AWrHQyLjI7QKw3hXFMdVfUNlDsSSDpS3+x3UeuIDtNhtiV7mvsJDuBpnu/Q+OE3/IJ
         5Blqqr4f2wmK6ZY8lfbEPf4rGzT33sRqx3Uox+sat7puw8jjvH0aig6H6wCEHV5J8OU/
         YyIN8t5eC+Eat+fGUxmOTBUEKRjz+r0iOL5B+g/5Hrj5dKbfv8LLfr0N2h+tuTsbLtGU
         ztCRwlhlc+HoXI2wZcg7+jufeITqVK/mnvAge2wryeW706p1SCfO+IgMDFIjCQ4dRLsW
         kgPRyErswL+APYwa1hOMWU/aE80j3kA6DpU0ECtODPOVE9lgOHTinXEqrKZXqa9t4NOI
         KAOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772201776; x=1772806576;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rLsrw3ubV2kNdM73F5QrzKGVLuRmUa0KmVONDyY8Mw=;
        b=biDGgq9vu2MVvyno8Ni8csELuI5SPUWP6/bRqOst2BX3DzUfKhGUBjQ0zj2PMr9HC+
         tidzYQkVQRZDa5cCcLkH4T58cikiROCofm7K1yLHmEzsfURJHfxtuH7nBlCZY4z7N6BB
         5y9xyeuTd7RsWJ/wxGFkNbMfjKxz9vQ9YBakUm6ECcIFjdSsvBAOWjtHChPhp2/SQ+PJ
         5EGrmd7QNJBpMvSTnPLPevUk0l4quAQSTgjWvJWCfiuEANJHqhQ7VtcVNuZh+fBfFJAr
         iGMV+Wr/rNwOf0A5M5K4mCjsJQz3dOd2mUQvZb6zJoxJfuZ5WiKa/G785qywsC/kovdW
         bflg==
X-Forwarded-Encrypted: i=1; AJvYcCW7sx1ndXIy71fnzL6NJYolbY9ednpzqs0lGh4fMTNGN8Vk3ilxJPZtxnhw59FIKw0azK3QGdcGACy/@vger.kernel.org
X-Gm-Message-State: AOJu0YyAu8eLdjQ6oTmMMTYYWzTEz8JtliTQsYW8XL763bsvzujummsO
	SkrIhQpSsAiBU4ejuGgCYBJkgDUDmGisNl38rn1Pk4FnHsgdUprwoYb2
X-Gm-Gg: ATEYQzymtEQ/T4aDw854QBAxqoTeo4Luii8liJ+e1iQDn6aeq+0InrLjubudmoZnAMU
	Kfywn3X73h08OOodA1TwfiZ9HgeXWvVhQP91uQCTeohooeTuH0m/WMr/lfEi4bOQBypgQ8oD8DZ
	7BCGoRJREtd6pEwkQ+mduQRZDJqX2GXTZJj49FDdIKCeho+4eOIZao0Snaa9QP+c2guU9baoBML
	XvRAopS0JZOEhlxLqirut1hPYLgfmAIOGJZJH54IYh8u+R3q9ihgxzEABHtVNbQm1gPC8aGMXM2
	yq2yHmtiyF+RfidSYFVmB+LlGzWRDk0eOkQxhILfYVrlveTlxV3u8y5sdzqyWWvU6Gmw504A3J7
	GR6SnSC4qXzfBH89ED9Tq4ROfieZDQWgJxgjoOLxFxFN2jUjvw5JGh91YrmDXAOUp7lD5/svs1B
	aUZikQRsEPeV54wY+qM99f9QvmesP9ifXuG7hjTmZyNGTIOoDuJUvqlw==
X-Received: by 2002:a05:600c:1503:b0:477:a71c:d200 with SMTP id 5b1f17b1804b1-483c33e4e47mr72293415e9.11.1772201776006;
        Fri, 27 Feb 2026 06:16:16 -0800 (PST)
Received: from [192.168.20.124] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfcb9b97sm102379055e9.7.2026.02.27.06.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:16:15 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Fri, 27 Feb 2026 15:15:54 +0100
Subject: [PATCH] dt-bindings: pinctrl: marvell,armada3710-xb-pinctrl: add
 missing items keyword
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-a3720-pinctlr-missing-items-v1-1-e476e4df1ad6@gmail.com>
X-B4-Tracking: v=1; b=H4sIABmnoWkC/x3MQQqDMBAF0KvIrDsQRzTSq0gXIY76QVPJSCmId
 ze4fJt3kmmGGr2rk7L+YPimgvpVUVxCmpUxFpM46ZyI59B4cbwjxWPNvMEMaWYcuhm3ru2k6aM
 Pk6cy7Fkn/J99+FzXDRcBwettAAAA
X-Change-ID: 20260227-a3720-pinctlr-missing-items-5056238c7af7
To: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269282-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,bootlin.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.53.232:email]
X-Rspamd-Queue-Id: 0029D1B8F91
X-Rspamd-Action: no action

Even though the type of the 'groups' property of a pinmux node is
specified as string-array in pinmux-node.yaml, but trying to use
multiple strings causes dtbs_check warnings.

For example, checking the following dts ...

  $ cat arch/arm64/boot/dts/marvell/armada-3720-test.dts
  /dts-v1/;

  #include "armada-372x.dtsi"

  &pinctrl_nb {
          pwm-gpio-pins {
                  groups = "pwm0", "pwm1", "pwm2", "pwm3";
                  function = "gpio";
          };
  };

... results in this warning:

  arch/arm64/boot/dts/marvell/armada-3720-test.dtb: pinctrl@13800 (marvell,armada3710-nb-pinctrl): pwm-gpio-pins:groups: ['pwm0', 'pwm1', 'pwm2', 'pwm3'] is too long
	  from schema $id: http://devicetree.org/schemas/pinctrl/marvell,armada3710-xb-pinctrl.yaml

Add the missing 'items' keyword to the schema to allow using multiple
strings without such warnings. Also adjust the indentation of the next
statements accordingly.

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 .../bindings/pinctrl/marvell,armada3710-xb-pinctrl.yaml       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,armada3710-xb-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,armada3710-xb-pinctrl.yaml
index 4f9013d36874997d208e1d07e35ab4e1e4bdef91..727da7fb490cef44959ccf5da9d42c4b2577e391 100644
--- a/Documentation/devicetree/bindings/pinctrl/marvell,armada3710-xb-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,armada3710-xb-pinctrl.yaml
@@ -84,11 +84,12 @@ patternProperties:
 
     properties:
       groups:
-        enum: [ emmc_nb, i2c1, i2c2, jtag, mii_col, onewire, pcie1,
-                pcie1_clkreq, pcie1_wakeup, pmic0, pmic1, ptp, ptp_clk,
-                ptp_trig, pwm0, pwm1, pwm2, pwm3, rgmii, sdio0, sdio_sb, smi,
-                spi_cs1, spi_cs2, spi_cs3, spi_quad, uart1, uart2,
-                usb2_drvvbus1, usb32_drvvbus0 ]
+        items:
+          enum: [ emmc_nb, i2c1, i2c2, jtag, mii_col, onewire, pcie1,
+                  pcie1_clkreq, pcie1_wakeup, pmic0, pmic1, ptp, ptp_clk,
+                  ptp_trig, pwm0, pwm1, pwm2, pwm3, rgmii, sdio0, sdio_sb,
+                  smi, spi_cs1, spi_cs2, spi_cs3, spi_quad, uart1, uart2,
+                  usb2_drvvbus1, usb32_drvvbus0 ]
 
       function:
         enum: [ drvbus, emmc, gpio, i2c, jtag, led, mii, mii_err, onewire,

---
base-commit: a901e8705f89f3616fad3bb6aeddba33be86b08a
change-id: 20260227-a3720-pinctlr-missing-items-5056238c7af7

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


