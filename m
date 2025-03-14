Return-Path: <devicetree+bounces-157559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF21FA61234
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DDA41B619BC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 13:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7356A1FF7B8;
	Fri, 14 Mar 2025 13:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VJ7erpiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBE11FF602
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 13:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958054; cv=none; b=qnosRVEiBtyiTOqmSslWwuf8fwOEtjdESf6dLBaGsOulO+V4wF43vvjn0UWxKVDNfF5iUi47ZMuR4mhgYuT+MCxTqEs4xVCpy//OPcMRUepS4CaesiXAaWU50Sy7jcKKs8T/mk67skfaO1JPD4JhaPe/NtNRrED2kUM08eugT9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958054; c=relaxed/simple;
	bh=cE3ZDLHMVCtIotuS81Y5prDseawFiAkM5c5zR5rn+Q0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WwxU9vDh2zr3YG+L3JG4Tg5942AUswjYdsH/uRcaIfVUHu8XUGRlBbzzuYToI8Tr+PwQSFNxJqeqVoaqWMNVTVlsDiQTAUSryPczv82lqd5wySEgjN8SGEiZ/LBNJbpmspTE7+xHkRN1jB9oyEWn2ajOgWaSEMzfqlcoGtr6Bzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VJ7erpiM; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ac28e66c0e1so314891566b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741958051; x=1742562851; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOgk5pHedNikU/L/p9FY9VlPsm+Vrvspw3iFuqU2V3I=;
        b=VJ7erpiMMJvhlswqK+g4DJFRLxeLyd5ulWnhuKVsREflXBDAZzcqzHfvMWC1J6Kw/b
         XDsAfaygDdQ+mMNXHktVOE4DjH0R/0rUfoc/2RHaRvuBF/waV+WfxbK3wpdF+iQVEP+J
         orpGNiP58h8hRioFc1RDaEMOTrLGp6dIYG+4Hce8wjbe4xeZaoaaVfPED0DZTUMYp8gq
         EIruhZ8zKNtDqFsPC9Z4A958tIUsUAqPePPV/GOz4lw3ctGlp0MWXzUhTsx10ZdPtH4d
         FGPqLhDV/zZvTDxiO0yOoGdJPc5+302Txsa5yfXjizXTNsVlM7FrQAI5gYzIJzPgnYxa
         7Sug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741958051; x=1742562851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOgk5pHedNikU/L/p9FY9VlPsm+Vrvspw3iFuqU2V3I=;
        b=KUZ18CZFaZuDe7WNUhfejDahOCKXJmK4HuBbuwRCIvRRXwp6HzY3p9TpCVkLb5Kb/v
         jfXfKif0nEQAQooO9SUvxXQKcSalQLs0pEmwqr5N0zmud1jx1PRimmEgeZ59jZxjiY4m
         Rv5JpdfGhASfiKgjswP9op8zTdXhTgO6h46XltReQKP5tdJ5gjf7Fdli8N5e4hi1YB5l
         YTiAluu3aU/1KV4/6oyVqH75tXClq0OmrZMQGSpoZZate2taaB15mmqS52rM3qxF/u5Y
         xRcbuZS0FUAh/ROwyhBsXdrLGTqfv4Hjb8cOKDzERHgwysQSon2FWKS7+ePQ9p1Y2WzD
         2uAg==
X-Forwarded-Encrypted: i=1; AJvYcCXG4Yh/+W5nboY62Lbb+5RCFj8V1rvvAm97JiUDD+X7s9z5Mw6lMkEVOclgmBuaOCKfO8VzRZsEe2c0@vger.kernel.org
X-Gm-Message-State: AOJu0YxagiSASRBos9o18n8lU2506OfW5p93yvCRmPmZg1sT7cGEE1Lo
	54Qon/GXYpetPk+V+SXE/zMwOuElzdqkr3Pp8yqcApQRfV2vW3PX3v0h8eD4LrU=
X-Gm-Gg: ASbGncvLDRfvzEcoduW1I0jdhLMasC8yqNMb0uw9aP53rHr4CFQjWbOgxIykdOyxbjp
	UtpcoazZ9kDH5O7wPlljsxv2uVz4Dn19NKSOtkj3YaZVxYHBuFGhClklHSsyPGn4Vtgl7Pn1Sgu
	T1lmRvoKIGScrIcl4K17pJ6es6aG09GLfsONNeLNR9zHBBNzPVWzAuEN9ufD03DJjxvhhpG8IqE
	YMUBF/G/VbySnMkl2ZAuTnDldTpVvQHwZpD7HzU9M97cyR9yg6RjPUdn/nwGeY4TvWoKDyj83Be
	MnQfKLYf0bygFxPQpNKcNF1x7Dqp35449LYb2GC5IrcfqkWxW8C5+gXkk2jcMKGCw+YEuQAZ8H9
	Jz6oN0ARYhns5nmYoi0U5t+QUmMIY0z4FzvqNcdYqquUv62opdFl22ImQp8Yb1JmvJRsN
X-Google-Smtp-Source: AGHT+IFICfx6s2ahDilrUKjMY2hoAKzdOXRDKZ+U8wu5DRcXfNxv0E0ZqY3VVzjA0AW/yZ6QM1OUuQ==
X-Received: by 2002:a17:906:4795:b0:ac1:ad15:4a8a with SMTP id a640c23a62f3a-ac3301e01b5mr325622866b.10.1741958050564;
        Fri, 14 Mar 2025 06:14:10 -0700 (PDT)
Received: from [192.168.178.107] (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a3fc0esm226008566b.137.2025.03.14.06.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 06:14:10 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 14 Mar 2025 13:13:59 +0000
Subject: [PATCH v6 1/5] dt-bindings: clock: qcom,x1e80100-camcc: Fix the
 list of required-opps
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-1-edcb2cfc3122@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
In-Reply-To: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.14.2

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

The switch to multiple power domains implies that the required-opps
property shall be updated accordingly, a record in one property
corresponds to a record in another one.

[bod] Adding the opp to the yaml is not an ABI break since we currently
have no upstream implementation of this yet.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
index 5bbbaa15a26090186e4ee4397ecba2f3c2541672..18136694d35977f51a332b9040fe61d0b18ac44d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
@@ -40,9 +40,9 @@ properties:
       - description: A phandle to the MMCX power-domain
 
   required-opps:
-    maxItems: 1
-    description:
-      A phandle to an OPP node describing MMCX performance points.
+    items:
+      - description: MXC performance points
+      - description: MMCX performance points
 
 required:
   - compatible
@@ -66,7 +66,8 @@ examples:
                <&sleep_clk>;
       power-domains = <&rpmhpd RPMHPD_MXC>,
                       <&rpmhpd RPMHPD_MMCX>;
-      required-opps = <&rpmhpd_opp_low_svs>;
+      required-opps = <&rpmhpd_opp_low_svs>,
+                      <&rpmhpd_opp_low_svs>;
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;

-- 
2.48.1


