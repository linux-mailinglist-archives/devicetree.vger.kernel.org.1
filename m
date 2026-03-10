Return-Path: <devicetree+bounces-273171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGkgJBJlr2koXAIAu9opvQ
	(envelope-from <devicetree+bounces-273171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:25:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C5F24300F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DDAE73008C9A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5281F91E3;
	Tue, 10 Mar 2026 00:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NWj2Odie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFCC18DB1A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102348; cv=none; b=p7mPNH4hJZ38IIbYb9jIHR48gbWC90kjqfC+GVSLj6QR6sNDLL+Lssju8MCKn7j2y3YwvVfkCmDFZDVj4t9xENZvYfV6A3orJ6P/4vBpBeGaTzAsCzfj5IXASQTvgNzcvuOqTApJbLfrwAyAN24Fp6x/mLeFJoFx7eB2KR3h4uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102348; c=relaxed/simple;
	bh=8BBLTBSwAIEYdRXvp5NbCSOVYFS4vaGU807554Kprsk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WJC0J3w6ro/kz/3ImERclDnVDKfF1IRONxRnmMZ0d4g2BljQw08g4Tw5FTh5nHn5pwNktHpDYgu4MHL5WXJl84OuigVTXiCnaCvISo2SIQXJ175wNLzkQ60aDMYOLARY810vzCjZlexI8KPDFPAYR561+AN9Nhaw3kiVBKDADdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NWj2Odie; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-899eabc5292so89710666d6.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102346; x=1773707146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7dUTQHe3pH1gAAHNL9YpLzRZx+MsgrrTaWx3Kb4WqM=;
        b=NWj2OdieAHpPyHpnAagSr/20yk44rkmA0Wa2EwsfMHE1SSLnXDam74HhO9oZhbZl1k
         PDY17lxa3vOMsdGuBlqcrEE99GFqPKBxQ6tDkFZ9svy4OjgkYWRgQnyEJOpckhJCpS9b
         hzRsOgsv3XkQM7NpX2x8ZZUEWuD9oJy1zItae72SkgxRTudP2rBRvAajy+r9DLRgWdME
         1VCTTOAfqphB+z8CXF0Nc5YAfHy83/osvV/qMcL4R5ZvE2b9Qt3Md/uq5H3NzMGnphH6
         4Ya7295Cr72UvCjhIOjI2lN5SCUaifRrDSqh1/WAvs84JpU2P9WF/S7GeB7Ou3xeUg8x
         52KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102346; x=1773707146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+7dUTQHe3pH1gAAHNL9YpLzRZx+MsgrrTaWx3Kb4WqM=;
        b=AJZqUZJUJ30cpuu5T/9+ghFX0c4jl6buR+GXW4LKNG2OgNRgIImfosicWDTsOOFYZR
         RSvrvrqxcalUrT+/x+MOfF3ZCE/6RcI4IOZrwfEma9W8sxnOPbuS1qAbNlTsJWEQSFso
         2WwhWMq9JGbIos2wno92UWdRYUiFEa0pGCHbmzZl9g+z2smLiVgeQZbvCZT1NeEUn1Z8
         V2+BAiO8nvofeHZRRz6VYRjRQNGjGhjQFfPzIF4U4ilmSubp+XFd8tWIhARlkWY6OYN4
         NWY13guqZ+YRuCBntlmZFdC9fm1bsK8ab7fk+XddglQpsKQgGiCMgLwQEESThz4eVRkm
         gt0w==
X-Forwarded-Encrypted: i=1; AJvYcCVf4WfCCdxCVAC5zEBLVVioLncUV7ER/C+y1KBY6gFrgD4bcpGSU6RU7F7kEjpAlcwEj0kUtuUt+7SN@vger.kernel.org
X-Gm-Message-State: AOJu0YwmZd8VcBOuIK9F7urMVQ1nClscclYKDLlsj31GQOO+Mge6TgqE
	Tj5O9r760vDQJVOQQ8OZBk72THLct4kVcy8GlavcmJbakwWv0Lhmj7YV
X-Gm-Gg: ATEYQzwbJdMCKqf3FUBkCdt/R0yp8KDl/Z8prY/0hHZR5Mxer/YcJL23C61YWPI782w
	/pGwHvm8lFhCzXUn7N1LULbjMSGuTIXwe0EuBbbw3tzTce/hhPaZuvM/WouXnnDpmdyS+n5zFWk
	j1XaP3Dq9hwQJaF+Q4rSy1Sq5JuMQBWWo/+lzvH/mwy4r6YTHSlF1CCvbPICJV7bI7xqTpsrfKm
	xsKdi68hn4skcqfgib+Ab7nw5D3c83RhT0sFUAgHfDIJFj2Fc7mCv7xrm6/qy7mBcl+54XaWZGP
	sQX+8NGyKhskWhCJxGjGvoAMzqPQAmcVeHXn+hELncVIx+VHCUbYqUN7xOdIGOT8t+O465qfo5G
	xWkbmIjZxZ1Bjb74Nf68M75CbdnUHylgbcLmA5gwLoqvo52mXSRqQ1IQgDMxbeZs+5DRRR9R/oE
	iuN5axgV/sFRXtLQFRifTdGD24Fw==
X-Received: by 2002:a05:6214:2b08:b0:89a:64d:4b10 with SMTP id 6a1803df08f44-89a30a6988fmr191228136d6.26.1773102346217;
        Mon, 09 Mar 2026 17:25:46 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57c298e4sm8271156d6.40.2026.03.09.17.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:25:45 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: Yifei Zhan <yifei@zhan.science>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 1/5] dt-bindings: arm: qcom: document google,bonito-tianma board
Date: Mon,  9 Mar 2026 20:26:02 -0400
Message-ID: <20260310002606.16413-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002606.16413-1-mailingradian@gmail.com>
References: <20260310002606.16413-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B9C5F24300F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273171-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

The Pixel 3a XL is code-named by Google as "bonito". The
google,bonito-tianma compatible represents a variant of the Pixel 3a XL
board with a Tianma/Novatek NT37700F panel. Document the google,bonito
board compatible and the google,bonito-tianma variant in the bindings.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..1a955d1b14bf 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -844,6 +844,12 @@ properties:
               - google,sargo
           - const: qcom,sdm670
 
+      - items:
+          - enum:
+              - google,bonito-tianma
+          - const: google,bonito
+          - const: qcom,sdm670
+
       - items:
           - enum:
               - qcom,sdx55-mtp
-- 
2.53.0


