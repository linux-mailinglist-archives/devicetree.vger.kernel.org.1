Return-Path: <devicetree+bounces-268882-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHIPGhRaoGlPigQAu9opvQ
	(envelope-from <devicetree+bounces-268882-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:35:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E53311A7A4D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE6EA30B5A2A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0BDC3D412A;
	Thu, 26 Feb 2026 14:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e9xm1AcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDCD3D4111
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772116134; cv=none; b=EDzKQxG1guEVQzUanVFH4NknvfS9PS1AAzL+2zDJs/qm8SK4mQhAXBkRDgYIGeHVXWFUM/2FygGFwzmNZ4tnOoaOej3yCiz6Jj5bsXObu0vzq+KnZflBfEvZ0pX6Fx4DIztS7hPWvc94rmUC0bADrwwNWMokshIqeWHh2yyliLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772116134; c=relaxed/simple;
	bh=WJDLlVX2Xzk+wCJnEgTtDLZA4OHjsU9S+VdRID0jrM0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kowbzmgPoFUhC8BQ7S+wu9NZJm0N/X8FznOUOvb+SyedqzfjGcPXBUgMB/geX1YRWO1mjKABhoAbdfV66PUV8Z4lrRSgaL20/r7YtOSxKsneg0cuWjCJpFdwxfVrQbO+4LKszES0e7rOcrGLrwo9fNGKxeVfru++RlLq9uzl9lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e9xm1AcH; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43992e3f9b8so943458f8f.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772116128; x=1772720928; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBils5t80gyOQ06en6vqctPVY+b40EmRNjQtdblnFBU=;
        b=e9xm1AcHlxMX1N43xyXA2PMfdPacnmLvorhVdKCLqdrvbuh+VevRENkseG4WLdVvj+
         Ynp5EsSLe/P1ZNtZyMlWzHYZoRAjnB9LSxWcd5POBelfzvCk8qDPyjbuvKPgqqYZ6wku
         kxDeaEZoq7jyPWpUkK7qu+8YuhbZzRwCCRZ+UWn7mpQUpc6URs9hXhCtoV4wpcPIdz1j
         yq+nwIwBvl4gDjeW5bscZTNLbMhNlebWPTm89cbwxnjNQWwScGzsNFDZHLFVYIJs6GI1
         m1Xx2Z2Orh0hQEuMoQ+wwRDsZWhFggpf6Us/nWFlMuRSr+93l7EPJXCstkb4NCM7Gdmw
         lQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772116128; x=1772720928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pBils5t80gyOQ06en6vqctPVY+b40EmRNjQtdblnFBU=;
        b=H+fvLb6k58xxnmThdnq4/D+HQK1McRSpmcvDdfhjYWC6J2+2r6r/v8OLE3edvSe9/b
         p+0ttUwz0FTMOoLXfXI/KdTz9Viy8zdT+q6e2MXBxjH+ZO9IoGiEVvypSea/1QHPgNGK
         yI7n5x+4je/41Lj5DLKjLITirjNnVzkqlTu4po/QYoZlOueV5a4eJ5SyZXW0Ew87ehPL
         L4TE7jiDWgbukoCpqXGvoy0H0CSgr5WbIXyReD6RWj1GmPC/OzJFhrLK6dfjJB0fPsag
         tfjznzm1lkLM10RSKeiyX2l7KFNmB77rCUXxVAL5g4naJ66EyzSXjNVRIbSfahmkn93O
         qGuA==
X-Forwarded-Encrypted: i=1; AJvYcCWkHJwv3PAJ9RBRW+m/PfnPtcEBuEK2whPGIejKjq6NflZh4osVavKg51jkQ6u14LTpDC10CNyi7QDA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4hWTdyeOWQ7Qif8GfTpHY2wI63r9Gz4ZZKNcSbTCtWPjU0Ig1
	zA8pFN154qzaaYwWWuVf/x4+2h5q+gnz770HaZDFv6OeKU3GEMJDmXc7PWzUPBUzv+o=
X-Gm-Gg: ATEYQzxhE0EJuY3P7g2iuxaCmHRklmqh6VftLpUM0amfWHGHq//wEV8GZ5A4s/S8n1Q
	LpmtlYXtrn97yvWEVz9AANR2+DqmV+a146aOJykXjqa0UqHsST6IBYcatH2v6l1bg0FhN1aplkX
	jKu3OoqiGPJp3pFeo2tqaWbX34tDOTvECPQ2HtNHkkhWh3LCl7W+jCa1L74Gm5D/81KAuumKf8l
	3vL+yEj1RBi0EfBYnByiRwIAkw7JzMJHSXesI15muO1e3O4+KGq9UbizkTDYCKs53QxN3K652Bi
	sLyK/a+W+c+tRNAkW6wQWq5NEpe8rGs1vgn9pxSXiwx4U9Q5Jzc17+5wSWcK3pzoN1HC1mbtUsP
	BM67WMcDKyyqGoVJQ1ZFi/rT3jZKL+E2QOlQfreQ040FXs4JXObZJGtOUQdyH2cVUSvjdvP8oNg
	GgRy5fMZ02xgVnwZeWi95nsQc1x+7LqSmcPA0WkVmVbER9YTirWuuc4U3kR91Q+YxT
X-Received: by 2002:a05:6000:4304:b0:435:add0:3d68 with SMTP id ffacd0b85a97d-4399430088amr8840100f8f.58.1772116127466;
        Thu, 26 Feb 2026 06:28:47 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4bf89sm39219897f8f.29.2026.02.26.06.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:28:46 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:28:44 +0000
Subject: [PATCH v9 3/7] dt-bindings: media: qcom,x1e80100-camss: Add iommus
 minItems: 5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-3-a59c3f037d0b@linaro.org>
References: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org>
In-Reply-To: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1331;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=WJDLlVX2Xzk+wCJnEgTtDLZA4OHjsU9S+VdRID0jrM0=;
 b=kA0DAAoBInE7s6GNyDoByyZiAGmgWJvI7Yftmj3tnq2NZsEYjkfrAv2WPd9BI/DTcJOV2ZZKo
 YkCMwQAAQoAHRYhBOaT+yqro23hF6tvtCJxO7Ohjcg6BQJpoFibAAoJECJxO7Ohjcg6RjIQAKSu
 pnlNPCH3LuCekIzc68sDIxfaU30BrwuGyg3baSla8/vw0tDXfdKOEoyop+TR/SzFNdMl1w2e2qu
 onPnhs9nJp9NjN8i0NIZFT3VjcxbupEwaiuDz9Kb8hDT68JQiCAihwCLfQk8PYUHvUxhrum1WzA
 aCV3TR2srBdbWo/b3+bIHMhHw5g/WKct4iJUoXyAl4zU+1b5fQybNoSCp9vFUUa89pCmA3nCUGi
 a4DBeh9wwzqBGfz5uzEdMmvPFJo8TvfI65HpYK8674pYpPFWnwDfYFEnr4B/EAsT1jNbHGH+j34
 fFtGq7Zsk6kep89GkLjDx39YgAO/UHmdo4FURk4nvgjzphZf9S5aLoeIbZzhoirUasgw46CJD4v
 hgxRWX1u88wPg7U4xwM45uXkc6d7hgDcQSh+m89o27N4w8ZQxn4oW83qS4kdXrPcpT0iMuYCqGq
 uYz/IsdMlkHK8Xolpvt+QIDn2oGv4OzY73m1CSMTBV9tZVlIaF5Wq43zXKnzkyjry2GOnoGIRPL
 4GlPsIJci1jb96UwCLeNpSzTugzWde6fsvnEVyPlZ0LiOHgnuYB2ryJJEneJMHhd0eA0JI3i4nQ
 OYBeoO8nSPvljxipyiQB6WrntjGd4Cwf5FfziYZV0Yw34eM+4r5jwO4xcI5qNUh74zdfy82JHy5
 sSm++
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268882-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: E53311A7A4D
X-Rspamd-Action: no action

Specify a minimum number of iommus entries. Currently the schema
requires exactly eight. Add minItems to allow fewer entries while
retaining the existing maximum.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 8dbaab16b11d4..f406cf6f8f9c1 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -104,6 +104,7 @@ properties:
       - const: sf_icp_mnoc
 
   iommus:
+    minItems: 5
     maxItems: 8
 
   power-domains:
@@ -404,11 +405,8 @@ examples:
 
             iommus = <&apps_smmu 0x800 0x60>,
                      <&apps_smmu 0x860 0x60>,
-                     <&apps_smmu 0x1800 0x60>,
                      <&apps_smmu 0x1860 0x60>,
                      <&apps_smmu 0x18e0 0x00>,
-                     <&apps_smmu 0x1980 0x20>,
-                     <&apps_smmu 0x1900 0x00>,
                      <&apps_smmu 0x19a0 0x20>;
 
             power-domains = <&camcc CAM_CC_IFE_0_GDSC>,

-- 
2.52.0


