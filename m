Return-Path: <devicetree+bounces-219216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D972DB88A14
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5FF3188B81C
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8816B306D3E;
	Fri, 19 Sep 2025 09:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OF3RaxlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17667306B3B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275089; cv=none; b=BtnvGcEyulT6L/Vt5ZVQKydcl3ZNoMEijeUUD8OuQ9J+B3Hz9+H+JvoIc/L1Uui5xzWFfqonlLvn9qiSxraa8/ZdJM5tn+jWlue+DsgKnkdCctR66RRVZlLGzCVTwwR4uJahOBrM1xTRVJ2bblb/GlFrhuUMXrhV6ezQArRXQkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275089; c=relaxed/simple;
	bh=SAyUnJhCwMKSbhb7U5p01vudm4sy13VmR4oxIBmj0nM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KrM0BDE4bIo1Mjjux8FOEpWDz8AvfT34AxxJHoSyUcgxsbJcV44hYYrL9e1kqOC7tkQkMfYQRJdKFHFdBC2qcJvHzqfCR04e4/BcVJ+EDr7gPpG8ftMtck+E4EbK9V/PGCA+RpqbbSVUojjEAtZJ7Vi1PRLIm7rbUgmwYsYS2uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OF3RaxlN; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3304a57d842so1334726a91.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758275087; x=1758879887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2cvRp1weqffRPvbmfOkQaVMZbMjAj/UHkPXTSQ25jI=;
        b=OF3RaxlNYhdEdilZvebjfRJ740SjX9RIh5eOhTwgLeEvUXmtI6ny+PZRnhfisxdPE0
         cn6/6+KpG7rE77nPsNF2MEeasA4YBliZ4yuK4a6tAKW5y48bu6680HMpu7GLpnkHnfDm
         OtueOhIDVhbZLGQ/sZ8RFy29TW1P/zmnQJpAz3scyd+f/hbEVA1LITcMijC+1PHynNhT
         anre/f9AaVx1iA0e6LBUic9l8jc9s1Eb1uQdrxe9yvud08ubknvHOPE+6AIiFeylOVf/
         t9uVIQQyw6NvGKa6LeIyNzHRRKbOdNsOdnn4nmC96AJ4B6ckNtrKkT1MyhpnIsQuJpCh
         fOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275087; x=1758879887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2cvRp1weqffRPvbmfOkQaVMZbMjAj/UHkPXTSQ25jI=;
        b=v9+0Gq4nGsuD+fSYL+0Lsycfr1mStfRK6fgSgkisCdESoKmbKwVC/QwncgpBZCZ7TR
         tGmiJK3onEqEtKWufr+6iLuvu/fCZeZUePCtwhgjYdsWNzU4YOtLzhLroNAERaA8knl1
         IiiJXqrRtiCEqZwgGLpsmSSOxuOTIt6EdNGUUDOjU20zvNylTpZbnTMU8NWS0YX3IRhd
         LI5glk7H2G5qmsIvnsJ3eqsiRzZtWdrY6hSp6fIuWVVpStKuiHQvfUzPifPIUZW1xAkf
         2Dx8f/jzXbHXuGTZTVHcQixpoq76jKijsZiexOmSw9piHohmrbiAOWDG4Mq13A6JiMVr
         iZRA==
X-Forwarded-Encrypted: i=1; AJvYcCWWWZBl39J78z/1rHWcqfAUjAdTUtA7C4WLuI6jtNfa3z+kVJd/4ULd8i+SrD1BQ8nCNe2rBrpfoD3H@vger.kernel.org
X-Gm-Message-State: AOJu0YxkSnee7dZ8R51uRmX6dRJcD5tCEhnalzjcvqx5+WH24KQVRQhI
	r85iosWC1wnBb0SPyo1t5B0ThknHgOqCLlzG1hQTy41yw2chBqYAptbv
X-Gm-Gg: ASbGnctRS2NLXD7ThPCeOY3r+xQnHHl6dr1ZB5avMwqS0AE1lblfudYcVbHiXmY+fh7
	TSFwUSPbqfKcZEWezFFqbtf1DU4zkZYtgn9DUwQmRPnBuz0UmOoLx1ymI+B2kjz+psf5U78Mz5H
	4ndwk1oLvMgv+3td/IeEdK2oqgbw3MZ5b//ovH83HEt120VcKURLgzQUSseu5NRvUOaH66AFify
	qMDgFAdzfYYyTqDU92KLQ0YKhkHpeIGoKAgnFjzqvK9s6amsnd3JdsOlFBfc7SCLwMjmeJb1BwJ
	jQGVpMZikXdb6EEbLoIi5hEOBXrsMqVgamX0aaoSDl1SNl/+GS8Gpr9Y85l+bkRl2hh2Eeuwvyo
	PVl0dGEno6RbzH8d5iBOHNd/+BFUyqw==
X-Google-Smtp-Source: AGHT+IF81ZCACHBm2iK8/kjiA+RR2MY+a6mu/h4nqyIa9OcgzApIqnCmwflrvu2zcpOjmU3UceR01A==
X-Received: by 2002:a17:90b:5107:b0:32e:9f1e:4ee4 with SMTP id 98e67ed59e1d1-3309834bf38mr3988965a91.17.1758275087266;
        Fri, 19 Sep 2025 02:44:47 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3304a1d22cfsm6221873a91.7.2025.09.19.02.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 02:44:46 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v10 1/5] dt-bindings: ethernet-phy: add reverse SGMII phy interface type
Date: Fri, 19 Sep 2025 17:42:26 +0800
Message-ID: <20250919094234.1491638-2-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919094234.1491638-1-mmyangfl@gmail.com>
References: <20250919094234.1491638-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "reverse SGMII" protocol name is a personal invention, derived from
"reverse MII" and "reverse RMII", this means: "behave like an SGMII
PHY".

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 2c924d296a8f..8f190fe2208a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -42,6 +42,7 @@ properties:
       - mii-lite
       - gmii
       - sgmii
+      - rev-sgmii
       - psgmii
       - qsgmii
       - qusgmii
-- 
2.51.0


