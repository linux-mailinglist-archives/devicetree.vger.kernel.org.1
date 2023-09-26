Return-Path: <devicetree+bounces-3423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A697AECDA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AF592281675
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2542212B9B;
	Tue, 26 Sep 2023 12:30:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE2527EE4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:22 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C765BFC
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:20 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c5cc63ce27so12850785ad.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731420; x=1696336220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4fLh+3nsSA95dQZzCP3tBH0i5WUKxPyv+nwAqrtu2+w=;
        b=W7n+jK+0ujdBlinSZaX1boNQ9odeaKdxUQ+adZ+53WgficYKMebdDUE0obzybn+A1K
         4qm4GXigVhtgtE4ILnPxEORvlFdDW94BV0OU1KmJeP+KLLLGjBCDB8fTPElw46hnwSfS
         Y4ysiXAU/qsel03vXUGVn0N8XTsIW4r/3jCXiE4xzuZXelffW7iMrupGCEmRJlx8vK3+
         FBT44i8Q0Gw8SxizZPjTD9EsGJsjhd1/ypqJtfq34YAFLDrheAaCdbMAvYZVSVcN3apX
         e1kI+xd265PRo/L/POkMBCSAfZDn+wfjbto+Lu1cA7aAReCq/rNNjFOCNJK0GwjqdorG
         PFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731420; x=1696336220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4fLh+3nsSA95dQZzCP3tBH0i5WUKxPyv+nwAqrtu2+w=;
        b=ex5ovDbohk9okAwh7GE1I9lKIi6UeOYUjR/RWdGngsPeq54EwKEhprm2vGkOz7RS9i
         xHTqL1nSYuy9B4Fhox7waianbCHLwhMuQY2Yn52qUBMq/c4PbK783kyAZ8DgXQLBReDw
         oI5pjprK/nSiQAviEWgki8NaPPQ+reIf9gIiWA2DRAqXtWbnggaJX+7HSGRLj6+KGfYE
         QqXnYp4WoUXlS6Bf2EpizBipbeljHeFcZgKFk7YYfNe2ZKb78pWZ0K1wA74AVV32nqvD
         nZte9urbVCu1Yf5UQFKo3Wfey3z6/byBsvxoCnmB/rU+phP7ao9ewUJ4zILHH+dEf7XZ
         o0jw==
X-Gm-Message-State: AOJu0YxaG5BTYYDHYe9DVkFpZsei9N5QdoNvKQv1UUJm22zh0ExFFYOL
	DSf+I4PhpRZeZDGprnJB4cHIsDJkQpw=
X-Google-Smtp-Source: AGHT+IGaKyt2ofQFgqn/PG3eK29FpYFMpWvSASWjsGgDW0Is2EmVah1ROXg/sEgnyq/FrbZuqoVC6g==
X-Received: by 2002:a17:903:32cb:b0:1b3:d8ac:8db3 with SMTP id i11-20020a17090332cb00b001b3d8ac8db3mr10791954plr.6.1695731420234;
        Tue, 26 Sep 2023 05:30:20 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:19 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/8] dt-bindings: power: fsl,scu-pd: Document imx8dl
Date: Tue, 26 Sep 2023 09:29:51 -0300
Message-Id: <20230926122957.341094-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>
References: <20230926122957.341094-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

imx8dxl also contains the SCU PD block.

Add an entry for 'fsl,imx8dl-scu-pd'.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/power/fsl,scu-pd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml b/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
index 407b7cfec783..7a0f1a400868 100644
--- a/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     items:
       - enum:
+          - fsl,imx8dl-scu-pd
           - fsl,imx8qm-scu-pd
           - fsl,imx8qxp-scu-pd
       - const: fsl,scu-pd
-- 
2.34.1


