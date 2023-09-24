Return-Path: <devicetree+bounces-2847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 736227ACB86
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id B9B851F23FF2
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC27DDD7;
	Sun, 24 Sep 2023 19:02:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D12DDD3
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:23 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B9FAFC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:22 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-401187f8071so35134135e9.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582141; x=1696186941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SWFO82OJRYgOOb4Wcic+eTuDC/ArVTubTGTDywYSbzc=;
        b=EQTvLB4/KPMaNDnSHZOBXt6alw8iLa1iSxGyVnRDvsIPP/3mke9g15fmL4yYsZLb2x
         KujetD6l0jtCSj6YfdaQGGslHfUFsDQyxb/lp+BqmlWsYp/7fSlIGQ6AE+7mZ+9WZcPu
         W7r9U+RLRziR0AS0LjqDKq81CzIjAf0a3KsR9GDx35cIubnXJV/lVZ3zC6hsaeDdXagk
         hY2KClfCL8hyrAvYlS+Ja+b6iXwVjYwy+exrP/ra6o4LIdzu3/akxijAUeTtw9SLzCp9
         nvUj7ZuGg64yMhKhe1rZ5K/kPSaCKosaF+UkOcNwpU/raKHVKEYCqOCijZLgLR64bctY
         cpXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582141; x=1696186941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SWFO82OJRYgOOb4Wcic+eTuDC/ArVTubTGTDywYSbzc=;
        b=NVdkBgSOSGjsHphxWboRxZJ0gRCJgNbikXlHBV3Vlnp+j4/F5U3vxC+rGIpxl6L1i0
         AWylCP2k9NbDkHld/aP/TcYnp56e1dyjCZ2mzn8gXGuTr85hXa382q89Yn+w+6rB2JTL
         TiHDDvQUcRGkzvHlOzGzZOL61gtcaQVPSD70uZLS3UmQQKZJyZKyZGQ8vAdyY+LQqeVb
         GQ0C01Wx4nLZr+MCRIRgh8XdtaCOI3oc6QF40+3IJSOIwGFus8kw7NyO7B/5mXR+mHLw
         FTyFkAfJJMQ+v/XBmlGXjC4hRDqyb9ma9zeSM0ZCcJtcKtNDr62pbdRDVera4ZJBcZeO
         /BDg==
X-Gm-Message-State: AOJu0Yw2VrchmxStVmU4J2WRadXOnFxyxXEdZqUgBeIC9cLdkNJCAXSh
	o4pR4H5L4xTevOLwkLES28MISOTPGD0LX2Q5iSg=
X-Google-Smtp-Source: AGHT+IGvIpya5xYZx8UP+clOr5taqAlEPDk6qq95Fp3D28P19k6rc0DjSP2/4NtsuZPojlLQeISVcA==
X-Received: by 2002:a7b:ca4e:0:b0:405:3924:3cad with SMTP id m14-20020a7bca4e000000b0040539243cadmr4096134wml.15.1695582140804;
        Sun, 24 Sep 2023 12:02:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: omap3-devkit8000: correct ethernet reg addresses (split)
Date: Sun, 24 Sep 2023 21:02:06 +0200
Message-Id: <169558197844.54884.5866852884871225928.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230713152913.82846-1-krzysztof.kozlowski@linaro.org>
References: <20230713152913.82846-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Thu, 13 Jul 2023 17:29:13 +0200, Krzysztof Kozlowski wrote:
> The davicom,dm9000 Ethernet Controller accepts two reg addresses.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/1] ARM: dts: omap3-devkit8000: correct ethernet reg addresses (split)
      https://git.kernel.org/krzk/linux-dt/c/33d6227fcd1a8b68bf8d5e68f69a931dc87eac81

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

