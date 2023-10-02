Return-Path: <devicetree+bounces-5017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEE57B4BF9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:00:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E3F082817AB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E31F9CA50;
	Mon,  2 Oct 2023 07:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BAC17F0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:00:23 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4065BC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:00:18 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-532c81b9adbso21877825a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696230017; x=1696834817; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b4mI7wPjfIFJjRgS4m9j0vBzf0bhNyvH1PWkrNn+YUw=;
        b=KNhAsxmL87TmGWjswS8Q41/DmigVAE4iZak/ipzI/ysf6WxNXOLgZ0txZLG9x6Mke+
         SjvQMv3FjAsZGfWP5J4L6bZyHHJSlhsdELtr2OcEaJUbi8+fyCHDZD7v/t2vOHH4Qlm6
         tQLWabA7cOcYK/sSz69VcHWkh+GkignjqbuyIhp+ZwXscx+iGEomGn68DYqIV9Mp/7N7
         vYZSXrzEqGyERtvdZIZgsipgSMV0Q1Fkez5q9hD48xJbrMuf0Gjzk5XprmzhrtuBLjs3
         HHHh+Rf72qoV3Vl1duKMhnoStvYCU3RGL/+vdFAr9TC5uFOG27NMxutOqhQoN0AgySsc
         AqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230017; x=1696834817;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b4mI7wPjfIFJjRgS4m9j0vBzf0bhNyvH1PWkrNn+YUw=;
        b=aLpiGvakzqPUMTiOOJuzyOmZUujOLfs8GuXlj+ZPmh+v0xLTJvnPvaPQdK+bmeb9be
         zTTCi5X9VIQREeB4rmmm2LtbHw084SaE/QMgBx9Yo/EK5z66KhgMrxaTTUHVDNN9B+XR
         iI8FmVWYb9YAlxl089X//MvLQzAyEXNoePBvMibtSKiGEO3UDZwx4SmpZJbg8d4zDYSb
         4SGBSS/phl7p5YSRicXx/zSR+5KCaKZeNREgjAyiaoiYm8WDeJ9lrlYYqorzp8ZX3iQj
         eStq2/dFbOe17GBpIQDUcNFyWhKebGoQ06UiEqti4f4flWRyXUHIu6VhaphhwO+Yz2Cy
         g3Cw==
X-Gm-Message-State: AOJu0YyVtQWB5GEl0JrHFF09w7rrz57BEjxHhvtOYYz8KVCHBlMS1G5V
	yx568Fpx5CTFrIyxFfTNMSCW2w==
X-Google-Smtp-Source: AGHT+IGHstSSOjwQORJoy/Ro5XBc08vqCnp7VSvvKVm9VrTRh96OXqE6aYHnx6tEAm9+uPnY2S3fOA==
X-Received: by 2002:a17:906:3116:b0:9a2:16e2:353 with SMTP id 22-20020a170906311600b009a216e20353mr9427422ejx.6.1696230017331;
        Mon, 02 Oct 2023 00:00:17 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z10-20020a170906714a00b0098ce63e36e9sm16692013ejj.16.2023.10.02.00.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:00:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Small updates / fixups for PMIC spmi-gpio
Date: Mon, 02 Oct 2023 09:00:10 +0200
Message-Id: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHpqGmUC/32NOw6DMBBEr4K2zkbGmPCpco+IAswabwG27MRKh
 Lh7HA6Q8s1o3uwQKTBF6IsdAiWO7LYM8lKAtuO2EPKcGaSQlehkh35tZC0mXDw7NPx+eTRKNER
 dq2Q9Qh76QLk4pY8hs+X4dOFzfqTyl/7VpRIFkrm1tap0OVfT3YwcvHUbXbVbYTiO4wvnuraNu
 AAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Update the schema to use plural _gpios label in the example. And fix a
dtbs_check warning in pm7250b.dtsi.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Remove labels instead of updating them in documentation patch
- Link to v1: https://lore.kernel.org/r/20230929-pm7250b-gpio-fixup-v1-0-ef68543c1d3b@fairphone.com

---
Luca Weiss (2):
      dt-bindings: mfd: qcom,spmi-pmic: Drop unused labels from examples
      arm64: dts: qcom: pm7250b: Use correct node name for gpios

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi                     | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)
---
base-commit: df964ce9ef9fea10cf131bf6bad8658fde7956f6
change-id: 20230929-pm7250b-gpio-fixup-f407ee98425a

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


