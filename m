Return-Path: <devicetree+bounces-167687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABCA8B5CC
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5805D176916
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 582E2237705;
	Wed, 16 Apr 2025 09:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="ExzKGTYq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2676236421
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796572; cv=none; b=rYaAYpvyYt2EMHu7Sr8DVopH+PQE98XtEsXIyTbj01sd5MWjZp6zp9ZfimHrS/dIaJ2u6Nc0eXWzOF/Y+45SWS61zFhpZx11SPPaD9rBQweoHHEhsvFEWY+0Qdh8sdbn3ADA5fOEDf+tJ5//AzjHsaCRvtSjS/Qgxb0x90PS0Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796572; c=relaxed/simple;
	bh=mLJ4Tf1nLPctiytSz/i6Dp2hGBk3jLHIc3ugqrFs2rU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uLgaqe/mQst2Et5vMlc50oXrcRZaRjsSfZ/J2HM1AiNlPEKz1zxniVd87SfnETza6l2HDerakQax4OpkdwX3NF3JsnTNCnenaTZsTF6yzq59nG1kybvA6UbYJVCTe7IASPU2JZcqTszW9jxqkQD7TwM1YXQYEYa6xiudtOg4buQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=ExzKGTYq; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DE7DE3FE23
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744796563;
	bh=plG9gaqHpdJn3czPW5GlQNQARcLIZhVLphsTOud7Vpg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=ExzKGTYqAhRCIZQg5EuNaasr96aZ1ewP46zLEhtks3EuJ8V1aPWxtyKBsj53qljOP
	 1XJVZXGGO561b0BfHL6wmqppiktxjJI08jVWnd49HRTem/qSG4/wQLjnzOXbLf0ylF
	 kAhPERpM1s3hcTsp0VO/hABbQ2tnB+TpduMQuWkb2AfX2tQm1rUQxFbub85rsZTrnx
	 AUM3OcTVKl9dF5pab2bprnJAzdr/RMu0+lIUpSNu5SWBwSaBa+zQ4QLeVah+5KmbKZ
	 BwubaimaPO89sRqDqmL8IgdG8TUTw192IS5C549GtlqVXVMxSAjwUP41nmNiAxDYHX
	 cxlyzfq7EwVOg==
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-ac6b047c0dcso546604466b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 02:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744796561; x=1745401361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=plG9gaqHpdJn3czPW5GlQNQARcLIZhVLphsTOud7Vpg=;
        b=QXdCIA4hhGl6gkUYSR81uevu0t3gavJ1z+BkfM188WKHtkU3jjlA041u9/mxPLME9k
         6FhUqECG3KgUj9DW4RfdVr4a9l/h+N1iO//OtYtiTJSxGR7kh8YWPu5CY4lh0XVW+YNq
         1smzXDr8e4/4weLMFNtrn1G/ynAI1xDTwAeiiCAL5hncjdttg64KkrXPA3wGMRg8ARyd
         KX1J0R8GYkCeT0/JrEAejNe7JSweX8/+3d0D9AbnlP1TRhtkUplzm7Hqo4lvlCiIaiqH
         CF6S72m5UiIj97PDyemTlgKKagcNsVCThmJG+swF1lIxy1zk+wBDdzaVDgRs0AMVLQ+P
         yfDw==
X-Forwarded-Encrypted: i=1; AJvYcCWRzTOaAmF/AUcCsW+iS1IES+7ysER6FB3amBmxpCSzEOgN68/isrYGDyNTt4U8xqULEDOUaZmk06tv@vger.kernel.org
X-Gm-Message-State: AOJu0YyaTPinAxGTEn0axVQyfSKlF7uMxFQSHSIv5ONXwtOgRZEBxNd0
	aFNRFJ/amd0NmDFN8ByB0TvQG9xJSoEjtrXIE2M4I+7WjF+ZmAvKLhctkq4Kiz3/XJkPp5DXXx9
	4ojHkwQSeMa3mnX6xa0NZkJ76UCB0aJIpp/PKPm6X7LgCNByHncL7VA+c7biROR5HjleA/0yP4F
	c=
X-Gm-Gg: ASbGncvhwpZ74B48J9mUS4RCvj3tGm1X6msM1D85NK1tqOuLfETEeMoutZmAkdIZyAp
	KuUuFR5RJ9TbRYLiHuyQrmPAy/WZHvAFjyFT/GgaRHSYAShC6hc5UKVq29+N/f296G3hRAolrJf
	abKkjBV4x/4XMqIyeWJ+ihDvNCN63sQnapsh2USZHyvjnjHfn/cRf9fO/buil849ESoZNKlOaoD
	kKykavzqLFbRmQJ9xSuOquutBJvylWOOjsMc7CjhM2DWWLFtY9lBOUDDe0Z5dNjWfyopc9m2Gb4
	Efbsp7nvAPazS9K5c1NuezjRVcwQl1E9uLqEPZClb2REHAHgiIIl8SMa
X-Received: by 2002:a17:907:3d0b:b0:ac7:16eb:8499 with SMTP id a640c23a62f3a-acb428748c4mr105923266b.5.1744796561542;
        Wed, 16 Apr 2025 02:42:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9eIbYj6AhANLL1nV9484szDS+uCNlV5sHee5tSc3JZlwU/uZvqyMAHl3VAItGwPHQOkHUEA==
X-Received: by 2002:a17:907:3d0b:b0:ac7:16eb:8499 with SMTP id a640c23a62f3a-acb428748c4mr105920466b.5.1744796561124;
        Wed, 16 Apr 2025 02:42:41 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cd62256sm96378666b.11.2025.04.16.02.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 02:42:40 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
Date: Wed, 16 Apr 2025 11:42:35 +0200
Message-ID: <20250416094236.312079-3-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416094236.312079-1-juerg.haefliger@canonical.com>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for the HP EliteBook Ultra G1q 14 inch Notebook AI PC.
The laptop is based on the Snapdragon X Elite (x1e80100) SoC.

PDF link: http://www8.hp.com/h20195/v2/GetDocument.aspx?docname=c08996392

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 618a87693ac1..67900d455ea7 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1131,6 +1131,7 @@ properties:
           - enum:
               - asus,vivobook-s15
               - dell,xps13-9345
+              - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
               - lenovo,yoga-slim7x
               - microsoft,romulus13
-- 
2.43.0


