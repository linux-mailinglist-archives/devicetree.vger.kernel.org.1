Return-Path: <devicetree+bounces-291038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLrHI9iX8GmrVQEAu9opvQ
	(envelope-from <devicetree+bounces-291038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 13:19:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF13483895
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 13:19:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6ABBC30AEC93
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 11:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667DF3E121A;
	Tue, 28 Apr 2026 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UN4IHCNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C913EB7F0
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 11:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777374593; cv=none; b=s2WRypmCJrct63Oiwuu7+QhVZgRrltVzD659jPWaEGixOg+JS+Z/sVgeQH+6mWU51c7mo16BbZB5yig+eYTglPgfM9FWXwQsWG1YGbqQTVVufTWVlStN8pAc3fzFrUoXdkJQwPwJB2xh4B+tlw4a9tfAIZEDYK8qRBKVKowfphU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777374593; c=relaxed/simple;
	bh=M8pM+GPIuGPy5U0CrCsD+rzuXxctkeEQCRG4ScSiarg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=CVCgvp+B+TwqiaNkmtejzwRBL3PT8RREj7YviD6HP+e6yYW1uwJ0F3VC2EGLsft5yqMslOba7XOOT5VftSuQSrGlDeFC1Mha2l246Sm38WkCuJdU0uHXLiGFKNYPKttHChIW0GKDvJr2G70cwPy3SK7qib/loF8VTMrKqLm+JDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UN4IHCNb; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c79467f11abso7579664a12.2
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 04:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777374591; x=1777979391; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=efhMbwARh0s/fyMoKyosJ1VtXtEFuu3Fxddl0+j9z2o=;
        b=UN4IHCNbaBrE/kEZXmqDlNJV0Sfn/RHzNs820Zdf9XKHKEpGITQmUD1U3PS7cH3nwK
         FEL+Q0HAPjUh0O4IeqO94/VS1afXNS/wjQJibH6yr6+1ep8ExNBsgPOxq8eU18DlbBNT
         DXYPsp5GpVtvO09SeIjiYggiWa9bZcRpSZkCShOpjF4N2QRiHCoMLhI3VZpga9/Azkro
         HSQLw9BmUpsTuCBcDHXc774ZcU07YiBtm0LqnX4UFr8Vgrkgo3KPUKbHPTKJ6uTyszcQ
         PYiBAL7brQlq5vl6d3DUkh/0FRQtG5FpfbaWV/qRBRUEXLEkItdDGBweqmQIK8QOTCn8
         Twkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777374591; x=1777979391;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=efhMbwARh0s/fyMoKyosJ1VtXtEFuu3Fxddl0+j9z2o=;
        b=KTdLXLKif1ZccevMm2ST8Yw/52ILRlIXMqt1RZDl4vX/WVe5HHOYxP7oeLbz2zyF4E
         9hVEgvm0QREFr7NZx56tt5bAoS4L0xIh9JarBVxo6K1ykiSGs4dRFoJ28GQuKS8OEM7Y
         IBfuAUFhaijsIva41rr8QcKZKLihTAJYLuhWlVX23AevRS8Yk5Rm86HHJTv8/iKk2ZdM
         e/FosbxK6Mp4Ewf8kJpa1o3Sb6Yx66fVr4sTd2EIIEJDNm0ibrBiSmMvT8/M1nisvfQd
         HzcUp+PyxCmI4EgZVveaiOx8+PSUwy31Nj1ZpOERYTWlprmKXIZiiDeokB20rnGzIv/Y
         gzgQ==
X-Forwarded-Encrypted: i=1; AFNElJ+MSJXVhDGHA0dl0n462GWAlNNL4NJBYONfIKzqcB0XjicMnfNDo0rrnn6TJYr+uMgYIgFVBSwyRHMM@vger.kernel.org
X-Gm-Message-State: AOJu0YzlC/zc0zrgBrxP+P6egrrW5dym+yn84Zjo2KKrS8J7ygE79LBC
	LyJhT5MhkcV0dNqqkFGzcoyRYmkOYRO/J45XvkwqVQ9W5d6p7nSmt7bv
X-Gm-Gg: AeBDietvM1RqAWKP3V3cSxUKQgK+rn6bo/GYnpIxCeOE2NzKKXuCfQ2zav9xoQSxA1/
	SKZFAySydiNl68vm3nqVbWvSbSElJwxHr5QP9JSeKFbCrEG8iFV5AqaZqygp9iZfSyWeOTenjpl
	D6xIMmwhIoMrITMAKIFMCu35oJKWpBsBaaqT8Hfpa2tw9e41Oub3gkjYR78YAQj2sJJ8c+vfaMr
	5nbogx5Oy7zcK+0bqY5omUpZehz1ITyzgFdb/pdOV7IuxDrP3Xxh7ycHE83FlEZAVYRTHqxjxLJ
	9BTLLSZC+fdtdoG+wwyd1sfndeMKgzThsBq4wUYz9FnxrkC0aJaIacnhn77IP4UPUI/ht1U6IsK
	FkBVTWsyFnRshTVnwdv/GQIABdLtrB5Ky/T/hkIS+YrUlELHkMkGFa+R2jyQrGu2rxNOAaA2j+w
	qJe5oyGKP0lBmEAz7KhTpYqMRbaltNzMTlLNhnLUGZW5Kok3TV4hO2ysvtjiFvCAeuWEy4cUCsx
	g==
X-Received: by 2002:a17:903:acc:b0:2b0:5b4e:370c with SMTP id d9443c01a7336-2b97c4d7e5emr28519055ad.32.1777374590930;
        Tue, 28 Apr 2026 04:09:50 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b97aa93bd4sm22828885ad.23.2026.04.28.04.09.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2026 04:09:50 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v6 1/4] dt-bindings: vendor-prefixes: Add GXCAS Technology
Date: Tue, 28 Apr 2026 19:09:26 +0800
Message-Id: <1777374569-59233-2-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1777374569-59233-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1777374569-59233-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EEF13483895
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-291038-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gxcas.com:url]

Add vendor prefix for Beijing Galaxy-CAS Technology Co., Ltd. (GXCAS).
The prefix was confirmed from the manufacturer's website:
https://www.gxcas.com/en/index.html

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..354836eb8e72 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -676,6 +676,8 @@ patternProperties:
     description: Gateworks Corporation
                  use "gateworks" vendor prefix
     deprecated: true
+  "^gxcas,.*":
+    description: Beijing Galaxy-CAS Technology Co., Ltd.
   "^hannstar,.*":
     description: HannStar Display Corporation
   "^haochuangyi,.*":
-- 
2.34.1


