Return-Path: <devicetree+bounces-172014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C28AA0F8E
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D14BC1B678BC
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E612B219302;
	Tue, 29 Apr 2025 14:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="epsaKCHf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20E21B9E5
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938221; cv=none; b=eU7hb8w6TYLXDq1Y29/zjOglL6qVNmjKIBxp3xla25rdx4oMxo3GFM3axbmdVlj5Rz5c5UyaIT9SQKIlsJMZIP4hvY/zyMV0G2N+n5QtJcGOOUlq5AoMm1w9HdlL9XtDkQlc+3M3/CZRaPzZM6J+ntttKbBipSjXp16tjXs5Hm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938221; c=relaxed/simple;
	bh=mLJ4Tf1nLPctiytSz/i6Dp2hGBk3jLHIc3ugqrFs2rU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p8X3EGdJXD2a2LunInt7f0xc/VgkZO9JZPj3eSdCrJLh5ZLrFJcG/nXR8zFT988O7VQGM+USeJLzMeQX01eJ1XC3+/c30bU5jUqQU8OPotGQwCdhOHprLCuSEmJnZJOnH+Jg0Ea040xluNKYmsrkbQzDvie04mkqn4fVjJZDuDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=epsaKCHf; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 30FE93F754
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1745938213;
	bh=plG9gaqHpdJn3czPW5GlQNQARcLIZhVLphsTOud7Vpg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=epsaKCHf3RclHQ/ic8JLWw57V+eS/0BlQJpyT6WSxSSEHfifKeqMmR+ZpHdHmsW4E
	 7sJZHEs8WiFce82wb1NstGCcicTP+7osEEPk3ED8YV1kbjZgNVgFEtT+tzrfgOtsrb
	 5vIaFwPRfihmwQnj99KoB9Xu3n54pYlCwQiypd6GSWbRG7ZU/WSZxDQCHfgPXPSd2/
	 34U0aMPPhkB0mvoCg6VPAJHVz2zMN65CDh832ptUKFkwZ7DtnLhc/wjqZX0PywcUxD
	 fJ3/SESxwMW/z6oWG7PqeZ2cNCoKrxmAFTCuKjYzyBhUOQa/gDSi+d0U62pGihiELU
	 JUhp7yuwrr5/g==
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39123912ff0so1511418f8f.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745938203; x=1746543003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=plG9gaqHpdJn3czPW5GlQNQARcLIZhVLphsTOud7Vpg=;
        b=jlOeKX34GR7doadYeiQtsxMMOixqWZ95x23Yy0HmNSVFtLSK3s2x6zwfN9zIbZVGiS
         7nMbBDR7zUgl0RymtskB+tF+3n8j8TxVW7OoZs2d2DsDnc9gWfP9KQac34xHBPnt2R53
         JkT2T4NNKCte8UBMfJu6wlh+6iDNRXUI0iLQhmyY3mG9aLY8hodLHfCbYEKVtUQcAYWV
         2xqg1Ng2WKvZe9fFQBntfP6xVlRfKmbCj4PV554ksOAh3kpVM1nohOiODHwOSMGZ73w5
         CBilLcDxRLRWJw4xpxva09A34YNBK4dM/zNmedAlQXhzSdgZjeqCeBE00Z1KBAcn6COU
         b8Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVMa/oAjl08uRiGY/YhXR8qIkDVaPygw/14bTmqf5qYqVAeAhwIF4MTaODBQS3E4N311f0kDTd5V9WI@vger.kernel.org
X-Gm-Message-State: AOJu0YyOqG3EbdIIwJkogNRwkorvNGpvQcJVUFQQ061DDCX2TUlDDhsk
	JNPtfKnHSlx6AkOVRryu/ZfgZcpZUs1GgiU435TAhiSyCdDX48eyO3e70ZIbDMDCYJDpwS2rTjY
	lvJXCD6pjO/l9PFDdX4f3eOLeQV78jafjjGVt7AC4bUx2yJDVO/PoQdj6jw+6EMs2NWBGiCSE6G
	I=
X-Gm-Gg: ASbGncvvFHNAE66/fWzDd7YS/dYegu5CrOR1Y3elC7lrEx0SGvpls763gRjPeK+8qIp
	+uRDY142/xsHTn8M75A1Q9yGctM/hHs8CVX4icZtyX67xL0kPOwk5UBYzmzpG+KF/f/FbWmzu86
	61i9uSg2PEqanLNwbvXTYvq05/XlbwIiOfxRkXk/ipn+cV2Kv4yRDXrLQECr5ykER77Q3nASCyM
	irD+sA5p15OAL6fzfEbhL+DG3SBD+wBNQX9iTRTs2CcU9d1v9tiEOGDv59EOhyJQ41nhv16ibAt
	bhLh75KldnbYQrSNomcx49jdA1Wb1hMQ0mBiGfFAAnfA70IvI5gpg6ye
X-Received: by 2002:a05:6000:144b:b0:39c:1257:dba8 with SMTP id ffacd0b85a97d-3a0894a3d6fmr4260260f8f.56.1745938203198;
        Tue, 29 Apr 2025 07:50:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIgTZQXJNjcX76o91WQ3FEfXYAM88484X0I0w8saIfw95UbvI+Ec9HtfLO9iHMOealrvPvnQ==
X-Received: by 2002:a05:6000:144b:b0:39c:1257:dba8 with SMTP id ffacd0b85a97d-3a0894a3d6fmr4260235f8f.56.1745938202873;
        Tue, 29 Apr 2025 07:50:02 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e5c7d1sm14026852f8f.83.2025.04.29.07.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:50:02 -0700 (PDT)
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
Subject: [PATCH v4 2/4] dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
Date: Tue, 29 Apr 2025 16:49:55 +0200
Message-ID: <20250429144957.2088284-3-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429144957.2088284-1-juerg.haefliger@canonical.com>
References: <20250416094236.312079-1-juerg.haefliger@canonical.com>
 <20250429144957.2088284-1-juerg.haefliger@canonical.com>
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


