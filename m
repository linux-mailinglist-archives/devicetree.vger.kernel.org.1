Return-Path: <devicetree+bounces-270874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FB+JJjgp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D41FBA3E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CC5E3025298
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B06D36AB75;
	Wed,  4 Mar 2026 07:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TkQEBlph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425053101A0
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609685; cv=none; b=Q2tWAeJZvg026yEzoPl6bFDOmww/XrYKOxjv3II3WWCp8RczdSfuUIykcXyy0yrqforzqTtclzvR8MlBsjOT+6fNjtihH3x4UoNaJJaoZk8v57feMcuk3dh60m+jvvDCettbheIH1NRG9oa6yyasXj7cGt10Wsg339U7lFqP7JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609685; c=relaxed/simple;
	bh=XdTfbdlFopslMwOZRNBOxZKx7xvKU+sQAg/JqNo3kh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fhcgPfGDoQmztRxaO3QARF2B0E8zYQQYZlWwZ71LUkH17ttAjjGUs6hGNX+vY+bTFJG/XWVusitxsEZhISr8axRHA/l5iwRp9NnuAZZHt05S+O+4nS0ss0zcXHtAtjNJ2yn56F9mmVoQSOlieNvkb2mUGsLz0gCGaa6GTkkOg3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TkQEBlph; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2ba895adfeaso5759448eec.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772609683; x=1773214483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uA7ZHCoOg+iN91Yh0fD8Ot2D5G2O/zSpqiwS7NE95K0=;
        b=TkQEBlphKiK8NTgrF84ZuZwGDSubx1/IJo0Z/OOR9I6myCHQcstelQUn85kjqsd2QD
         Oe89FNLP+CHWaKXczXBVnJ6p3+N7dlhraJh8ZEZa3YpzeTs0XPM587Uuk+sbLKYrY+H2
         kOAMuklNaV+f8w2yexHJtQSgBfp7jnGixPIyPqg5sxj0vnv7/Me7i4nNA48rLQYnAQ8z
         7V1tbHWqXdFmx2qLdvBRUt8+exjyn5wf90FXlS5kBUw0BwkRVnEycjzbKUXWyr5dDVOe
         GnY/vTeWLkYGAKL/Y/xNTmj8bq4iX89kcePPd+o9Tz1sE2a64WdZUTcKND0iL220vZa1
         Jjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772609683; x=1773214483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uA7ZHCoOg+iN91Yh0fD8Ot2D5G2O/zSpqiwS7NE95K0=;
        b=H7YXXpGPp+OtpvrjdjNOVyE0soS7ZfqDOeu/n16rdetFx6M9XZ7LgVWa5jkfsncjSl
         G/wZzqYrquo5q43GqpIUMEMk1KgzDtkexHDkV5idhOJ5Fnixlyrr7lPrmCie8IKARQsO
         AgBnIh0h9K1c6NfRwae07tNc93Sl7m+77avot3zD83Zn+6NTSbridJ3V2e/a1i9USmcD
         J+EcGFGQrmmvxfRnEZULV/3zzo/QnRdAUfRR1ICppYYT4vJM3v9eX5x5Q3hNrSl+usnH
         19L9VbSexQH69Kzw8acZ3gWOuNpO08w6odXiqBZ5RblqopjOp5kbjQfiAMUfwGrbNNAp
         nYnQ==
X-Gm-Message-State: AOJu0YzdlrQNU34CeAMg5jA7woUjeixp3uSGMEeec4J6OVhaiC03Y/3u
	38WZ21rZYRlQ6K5ZdCpZlj6iBdtrr7XyUOrUo82dhZZ5/zArdeu2lDgAwsflBRfH
X-Gm-Gg: ATEYQzzLMF/wh4ClRNYIT1+c7+2tdRKnWa8yW6NfQGHBacsnm29fSZOELE4g/SbGjIK
	WVI8BX8VR1x9N2tHu6y27dAsAHKT/GqhR2Wh3vEGZUAmUiKGe6q85ce90Dqiyxnzl01sNqaIuOh
	UVvZCqX624hbK3MeQzUFpeH0NgPcvU035BySl/lig4NimKYYe1+mGauE07+z4b518nBW9JeQijV
	8WK2SS2F/jAKwMsvlpJVOue40pX+PnJNEKeZhd3OW0D/srZIw1kiMlGBWG3FraGfVo8bjThaAQZ
	KDy0td/+lHjdmGMe9QXJClRy972G7ACsZHVk9WQNe95BTGBNPSjcXiJPMOIKycZ+JW91kL0N4WM
	Z9LZRF79rVJqJHniGt7XhWwo3MbRh7Kx1WGi0cHHIlmd0vbDln5lhGxYl6Jn4tfQwUubJPV8mj/
	/mqWJlkCCUt4hBSrz8NlG6
X-Received: by 2002:a05:7300:ed13:b0:2be:2043:614b with SMTP id 5a478bee46e88-2be3105fe96mr348505eec.18.1772609683103;
        Tue, 03 Mar 2026 23:34:43 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2056acd1sm3457123eec.22.2026.03.03.23.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:34:42 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co., Ltd.
Date: Wed,  4 Mar 2026 15:34:28 +0800
Message-ID: <20260304073430.438835-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304073430.438835-1-jerrysteve1101@gmail.com>
References: <20260304073430.438835-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E44D41FBA3E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270874-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,archive.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ultrapower.com.cn:url]
X-Rspamd-Action: no action

Beijing Ultrapower Software Co., Ltd. is a company focusing on global
mobile games, ICT services, cloud computing, and artificial intelligence
solutions.

TaiqiCat A01 is a blockchain-based terminal product launched by UQSoft
(Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
subsidiary of Ultrapower. Its dedicated product homepage[1] was once
hosted on Ultrapower’s official website[2].

It should be noted that UQSoft's official website[3] is no longer
operational, and the company appears to have been discontinued.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn
[3] http://www.uqsoft.com

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..bb16ae90a4f6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1731,6 +1731,8 @@ patternProperties:
     description: Ufi Space Co., Ltd.
   "^ugoos,.*":
     description: Ugoos Industrial Co., Ltd.
+  "^ultrapower,.*":
+    description: Beijing Ultrapower Software Co., Ltd.
   "^uni-t,.*":
     description: Uni-Trend Technology (China) Co., Ltd.
   "^uniwest,.*":
-- 
2.53.0


