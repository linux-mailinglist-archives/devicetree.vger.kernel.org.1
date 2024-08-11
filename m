Return-Path: <devicetree+bounces-92740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E1694E2A3
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 20:19:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 928E128156B
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 18:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC5B16D329;
	Sun, 11 Aug 2024 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CdEnF589"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B1416BE2C
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 18:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723400253; cv=none; b=KiHtYL9H+o89eemkIMC54jwkDkj83nIIz2YYInXee7lWmY79m4DbJwafX7KZiTr6CIuoAwlhQktwr0w/cxsmDegSk/ux9csMTxSKF9yJcEjD181gjGhSM6Z6pcXMxedSHF6s52KOi8FK7rclpZ5Ext1bXQQEGZXCm5RvciDUfUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723400253; c=relaxed/simple;
	bh=i+lTvqxiMRXFw4pW4fXIUgAA4bXjhigtS13EAIn2h9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JRHgF1tYZNE8dfpOEQhWWtZ5Iv1/uDwdqoVVITpHLe3TCcYAnGHBA3pTo7Af7H42UN2y/OkTh+MCE3t+NiReXvyS6yEKjA6cCMpdvHQSe95X7sL22mi0Xha9VqIMrnf9QkQyCtSVxy/UIJd57vgAGnwj4B6yB4bj2QAOBb15Q/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CdEnF589; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5b391c8abd7so4229078a12.2
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 11:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723400250; x=1724005050; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JvbZ+8SyXPbkfWIxq8fFFxIwmoC4vttG1Fog7o3RX+I=;
        b=CdEnF589n0JAAIAH4FERLOqOO51a1AKViW45tAa+pSmCCxJCxAkiT0tjGHDSKw//LC
         9wdaCf9pKzlR+nvEyggzqxq4wt0KbEZfvxqC9ogCaAVaj/SRrTjvFhbRnlX9u02avHAw
         1on6ndsMpiCADolJ9sgSq9CI5UXB0M5CQN/FNmHHofNCGTk5Ar9nb/2WWeTxmR1lHmgT
         dw4AZ777rvsJ2ALtjNdMMCMHZbbkVxt0CipQeYSSyJ2hKLVddQEaTcXv08CNC+HHhpts
         EMYKQUimIy36ASi9FFMpYgKgi99whST1BGvyssVc6G/KBddRZWvUWYwOglqd72viNbmn
         cwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723400250; x=1724005050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvbZ+8SyXPbkfWIxq8fFFxIwmoC4vttG1Fog7o3RX+I=;
        b=VYQJ4ctZcfdwraCy5exWEeUzGuS3cOCV+kY1Udi19lrh+KSNBs+m5GuvKA67GbEbFO
         zmL/XfjSoSkJi18o17k0xxxLOEPVLvhRXlReC0trONxl1dyHhsZyWjf4s2ccI7zBS3pP
         NO1sx8WS6nc5k5FFMqHb7fPRoRuni9x3m4N4r+0ruWIzhtxSxt630mZ27mB+pYEUAdE5
         cb2tZOKbpo2fmwCmtoR4bSV0HnwSj+/AN01lHme9/WHjieIU3EQg1NrEMOkb5tnmUl+m
         YguflNotmvvrxI+TTYHeN3/P9zdKF+8SebiHVhmjY8Qpdex9AmQ6g1JrDJrILd0H+uNL
         0yQw==
X-Forwarded-Encrypted: i=1; AJvYcCUs41Zloh8OFj7IayAcxZjVJO6FF7qGFtr3Xmt6ZVS6KsZv8aWEk1SwMCe5NEBwbBY06UWwrF7ojRQ4IbowSBGW6DdsqxG37R9h1Q==
X-Gm-Message-State: AOJu0Yw6NJznnGEKBkFNptCgw8NpnFhw2n/pSP+SW3+hVDdSJqD5egO9
	V9I2iJ5varXhmPlrPjT2Wa4DrpP0SzgH688h2s8pT/uQ9h8JEB3nXwr7dp/GjQfxjAS4X9q63dB
	L
X-Google-Smtp-Source: AGHT+IF845o0XSP5n/BwrlmriZw7Zb6P6jQ3BpfatLkLOENLMyaMOLi7UlDJBP7b5+N/eNUzZ5p81w==
X-Received: by 2002:a05:6402:458f:b0:5a1:c40a:3a81 with SMTP id 4fb4d7f45d1cf-5bd0a6603a2mr3481173a12.35.1723400249713;
        Sun, 11 Aug 2024 11:17:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd1a6032c1sm1610593a12.92.2024.08.11.11.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 11:17:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 11 Aug 2024 20:17:09 +0200
Subject: [PATCH 6/6] ASoC: dt-bindings: serial-midi: reference
 serial-peripheral-props.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240811-dt-bindings-serial-peripheral-props-v1-6-1dba258b7492@linaro.org>
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Daniel Kaehn <kaehndan@gmail.com>
Cc: linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-sound@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1136;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=i+lTvqxiMRXFw4pW4fXIUgAA4bXjhigtS13EAIn2h9I=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmuQArOhpNatW52wzJpXmws0fDjOokzOoUe8LaC
 lsqDe/iqmyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZrkAKwAKCRDBN2bmhouD
 10kpD/9SOhRnOR0/feUFtJ3/1bim82Fw4+7IumOZPA7eiWKJANvWp2lMdImnWInzmSwBhyQreJX
 CcZOcbd29+X1YgRQFNNxf6PkQ444aPBNpCmUggJxXS1hYJZF6HWHMIQtlr3FelO4SHIF4QJdMEh
 exRB43qX03biWL0S+zQcNW9/WOmyfmOqJkzjrW3yohC2VGvgqpMw98+8+wpX4EIE34vvu3Hk9ta
 Dgh9Ho9WU79eqWzdn7C8aawEviq3Hbn7o7SRJX43kVaAy0KHVYOLTrWQQrVd22AVwBxm2JFtEB0
 752kvhWQRzIlOL5PEvcbg0sxnIMtixrhBPw/JZfOrnzdSJ3R5BCn1D5p1GCTPzCjBY+xJBFUDjQ
 SaTdfn+xLdc6HYz1XPQgRyypy5RTUxaqAYe9Nd5dGGgKmm1ihWw5W4W8o/C7Ko3cTAR/GJsBxOI
 PDixnjajQVDH9z6sgoDoifPyYwrLxfvWMhzWjZATVFw7x3f03Z6SIjKq/+6ScEuYaVp6qfMbKpb
 Rgo0ayBhAXShHODYAWm3U8uXrSTWMY+b1EaCNxbxB/ZSk1pmOkbcxl50h7/CfqDMq8Mrv4xMobm
 t3YbsVbWF6YCTxKpBDShzvOXWpp5ULhSQ/Y2dLnrqsQStlcfK/ZVJaPQyinHcyCcJG0LUhlfuxN
 b7/go1JyGYOp9xA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common serial properties schema (for children of UART
controllers) to bring common definition of "current-speed" and
"max-speed" properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This patch should probably go via Rob's Devicetree tree.  It depends on
the serial patch adding serial-peripheral-props.yaml.
---
 Documentation/devicetree/bindings/sound/serial-midi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/serial-midi.yaml b/Documentation/devicetree/bindings/sound/serial-midi.yaml
index f6a807329a5a..3b2f6dd5bffa 100644
--- a/Documentation/devicetree/bindings/sound/serial-midi.yaml
+++ b/Documentation/devicetree/bindings/sound/serial-midi.yaml
@@ -22,6 +22,9 @@ description:
   configure the clocks of the parent serial device so that a requested baud of 38.4 kBaud
   results in the standard MIDI baud rate, and set the 'current-speed' property to 38400 (default)
 
+allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
 properties:
   compatible:
     const: serial-midi

-- 
2.43.0


