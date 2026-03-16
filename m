Return-Path: <devicetree+bounces-275864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DguMqJWt2lsQAEAu9opvQ
	(envelope-from <devicetree+bounces-275864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:02:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF529335B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 27A5D3007292
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CD4239099;
	Mon, 16 Mar 2026 01:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kMDspcoJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B45D221DB3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773622924; cv=none; b=qm9Srrph+HdnRCzHjkCQI18E4GjxTdprRDCb91YTxH59nNdekkPNREX4c2MOD7F8KxDpJGxQv9jBLvR0ZyFgsTW4yOUwC/gONzatJ4AvAxnsY4rpo+l7dMe1H8gOej/wHzw+jCN7BpOxBn7ea+HjvT3As4hDDM3B22VgVf2A5Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773622924; c=relaxed/simple;
	bh=oAZeYp7NfN4Ch40Jvo2x/a/56aus/5DjsiPO86eV1KA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FnIfWQD0Wt5LxowWbiEodzZuiQN9OTG2lTNEXilh8j7m0o3J0Dbh08Q2foIOyDQYDjfDqRT/adr5wAxEjsfufrV+PMBym+2jRmxHnKkNkKWS+fiOwAfseoKOpHL1WjnuuXeMVoe7+7QV9BuPeCp18fDjwEbz4WfbpDjkSYqcTY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kMDspcoJ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48541edecf9so43332745e9.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773622921; x=1774227721; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d4EnNcwv+9HLoV1oCcE9hg7Uth97xpmXg0NPNWImA9A=;
        b=kMDspcoJmTnoSXy/ekmFJb1wCA5uawOKEIDIb2j27H7XIZ/ZyxBx9Y7AJV+FHN13hg
         bH6R9YW7GQtKhS78yga0LBtbtiXZdFFpc1/04JFcM5lbP8tdnbJlwHFQeuSuHvNzhuNO
         EoFmc1i15XZ59rDMd71ayHZQG6RZMgcExQm26lGG3SXxYMnGjRr7X44ja16RLmrtHhsw
         /l4X8ar+V/q3xYkb0xOsACjGb3+WOU8eUMNi3rlUXLPb0dDNdnhCDBwRCPuPmG6hxDjA
         dOZATfap6sakpCbHmv/MMM5WEztG3znqt61qS/sl4Hu/WcmPn4EBYH4av3AH2GJ3fHLO
         cvUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773622921; x=1774227721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d4EnNcwv+9HLoV1oCcE9hg7Uth97xpmXg0NPNWImA9A=;
        b=ppF1FWjJ2ARh7WrUM1cVcLDdMyx4LS8bL2MP9HrHiFnJX+YIJ26tpNjahaozF5eGF6
         guYOF/h0wSCUHoWyO4OZgh2E650mcJjJJGdfUywE6EkNKKw5E3CENOmh2iO6G+ZAVS5z
         hFkirbMwC740Yx7m8mpJCTcUsY7AOqeoptVCwV/z3OT+fw4Wz07riC8y+Q9YN5xRbUVw
         KRuNy/d9W9XCOf3d+WlvLjiKPh7DiGh+f+rhSaXn1Y+nD8cQWKC6KJlYvTAu74iNgFxD
         Myl0+I96zqwRTAUEEIs45b0Rp5cLVl+GYlbbOLXQnXAmEERuCCn8Vi+AknFi6m91NZev
         HHKg==
X-Forwarded-Encrypted: i=1; AJvYcCU+uZ6vgmBKMY+YY3hZLYThLtJgvMFlrDjyRx01F07hAk7HV2kfImoA/cqPoYJHgN0Rymqi1qfezuG6@vger.kernel.org
X-Gm-Message-State: AOJu0YxBaXDFWdThGcV1FSuhaYFPd2OWt8yeR6JDVszRVkEd12mjOdko
	3MHV0oDuumA3pYnUaGUpJ7HbBeZYj6JHt0hzgCM3DHvTOHm/pN/CWyWaDE77zyhMwpo=
X-Gm-Gg: ATEYQzwyFTsMTWtPmX2PKUde2TivCJq1fOI7UOcItU8CD+5y7Jt6OULoHF/meVlxoia
	o0kuD2sbrdR4yWAQfoIXAz7R+o43Xfg444gnRMdW6RnEP7olR+BPZC88JIiGOWlt430Bkhecoyt
	Jn42zC4c+uEYHpWZdIZVepvsC/wBp/O3qOrSTX/uaQgUmosiFjJpsS97MWfiFSiXnsOKSKrTOqU
	sz0dKLMvfbymoXeNg3y4Ew7QnhwnJwTbtE3KAPvABympR4K+TORaBamLEVUuehYZzsK3FWUCrKT
	Jvdvrb+cR6m+c5OfdZ5UqmdHk13Fmz5PM/MmbLRoheqgLOMhi1eN8hGLLhA3umO+KTZWHSM291r
	+cEXkc3fWvgI43etRmOeK8S8RQAx0/KxNaQcRZeeL2rU5oKrEsm59Kk0xDzg/xrUZssnrXcI/q6
	/FEnba/x5zr6ng3NjfC4eDdmx1tiR82wrZArQ=
X-Received: by 2002:a05:6000:4014:b0:439:5c75:dc08 with SMTP id ffacd0b85a97d-43a04d83f48mr19743351f8f.10.1773622920856;
        Sun, 15 Mar 2026 18:02:00 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe228986sm34729700f8f.35.2026.03.15.18.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:01:59 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:02:01 +0000
Subject: [PATCH v10 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 simple-mfd compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-1-fdfe984fe941@linaro.org>
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
In-Reply-To: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1254;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=oAZeYp7NfN4Ch40Jvo2x/a/56aus/5DjsiPO86eV1KA=;
 b=kA0DAAoBInE7s6GNyDoByyZiAGm3VoyiZNseu9UYoYC6eu33PYlElYW9JtR6Z9+S+cofJeDRy
 IkCMwQAAQoAHRYhBOaT+yqro23hF6tvtCJxO7Ohjcg6BQJpt1aMAAoJECJxO7Ohjcg6qWsP/RgS
 BHzfWTj1wcBuU+6PV3S0jVOIvoI86H6pdK+pjyAky1grBTPY26KE3LPamd3au9EZGClSU7SCuAI
 VcSaNrxpPGBbO2vZPWUZHgAsTd/DyHvkjUAKajPx4/SBy5gtbAzOapGesptckgbfdv5hLv/nFir
 CNIQlbH3UJnxbZUjVyRC08fn1HNlL+5Aqtbh0wYJTqo+mX85OgIyZL/qSSWqYej5P1fQvMtZNIU
 BR1gycYTalGd7hZp3toIe+UEsNexPfdF5h7RfC6MthoONUIDKbribA25cJFrFsieJAmlARWfiGh
 fAqsDlvgoM7Jdrkgt30UfP244qrOvON5N9VfBMoc2xi0EGkzKlBCJzaUHAhsN7OxLyf/zjLLimy
 ukbYdDQv0TQyC32y195OjR9pO5s7oIIuw0df2vKVSkrs+zS/5AxkG74hxRAvw6X+S2boht11wbT
 YNSFibbBS0IiMS0li/8tdwN0nngNmbnODico41Ls/GN5VpsD0Ad0j3GbqXrzp7gibQsEhEJnheK
 bxkSZxEioXkdEdCrvBfaLkAun4KhEMHP47SWOFqHGy1AjB93OHhBv7dHOUaMwIWA6mcbOqJnytp
 FXQ/csnLAM7c5JamgRhkWAEvJsOQUXN7tGZXiV6PY/3dbntLJiT6NmLjzKjUUozIH3xHy83f2a+
 KjRQP
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275864-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,acb7000:email]
X-Rspamd-Queue-Id: C0FF529335B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add "simple-mfd" as a second compatible string to allow child nodes
within the CAMSS block to probe as individual platform devices.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 2d1662ef522b7..b5654ef71bd89 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -14,7 +14,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-camss
+    oneOf:
+      - const: qcom,x1e80100-camss
+      - items:
+          - const: qcom,x1e80100-camss
+          - const: simple-mfd
 
   reg:
     maxItems: 17
@@ -191,7 +195,7 @@ examples:
         #size-cells = <2>;
 
         camss: isp@acb7000 {
-            compatible = "qcom,x1e80100-camss";
+            compatible = "qcom,x1e80100-camss", "simple-mfd";
 
             reg = <0 0x0acb7000 0 0x2000>,
                   <0 0x0acb9000 0 0x2000>,

-- 
2.52.0


