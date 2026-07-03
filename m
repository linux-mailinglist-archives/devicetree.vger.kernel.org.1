Return-Path: <devicetree+bounces-319881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8mv4CuhwR2oqYQAAu9opvQ
	(envelope-from <devicetree+bounces-319881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:20:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 930C26FFFE9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:20:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OhPQopWK;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319881-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319881-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB6E731281AE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32907373BF8;
	Fri,  3 Jul 2026 08:00:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF68F37267B
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:00:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783065626; cv=none; b=i/vDbGyzwo2iL8U9fNtWsihEVeClds5EdRvnz12yt97tXeDXtDUl4sQT/iL9K2alh8jeZQybzD0WxAGXjOhfPylBEi133LLl4UcsAm/IZGFHi2WlOhLc0y0ngQtMpZpVAJnx1LTHRPYzPU1kxybQvwc5KxjytoXESDWMRheoKVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783065626; c=relaxed/simple;
	bh=34nDGORWSQqcLgVsQP4EEN2mXvHlBSSBG3ZDW0Oheak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RQEcVmdyWYJrv11s710mb9wVKN8EigIM9/U/W+rvxzUuENL+i5xSWHWfqo9Dr9CBh96BHMHPGli+0SzFRrvRFM1LOErl0XkxQ1qOIfLZeCWljXDxTXBMfkXjCJucKX+GGMMbY18UqFxHFlimfpauIKcH0UPzjqjNDEyFzthm+uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OhPQopWK; arc=none smtp.client-ip=209.85.221.46
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4758bd3731bso195597f8f.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783065623; x=1783670423; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E8F7QCm3oCmhZ0k8ChJtucjmxHtKA72tkWkJA20N+D8=;
        b=OhPQopWKSiTFyhwUpcf39j8U3d3st5FVF3wxlBTtwB84CxS2wszPYf8dstSSFX9nvi
         0lXJVbocdXVVbt9pjtpfsqMhNMER0npDjH9eiS9SnLJQTjZuFld689aG++Jm46j9hPdx
         40hcLN3oJP2G4Nr6rvqrw4fe2cCPSoH4OIGoN9GN694iUqfCGf1eEj4fvp9Til8Ie4zo
         r9TODeO3SYGYuLtIBt6V5YHrXxSoUvA1/IY3P6oEdu+ep41AxCONj48LzbUtTaqP3+jZ
         Z6DWp+dcKl1XsTnCOGWlf3cy/bvoDCVnivzZjEgAtTEUa4UEbany/k0bKpxRHsva0lUW
         sEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783065623; x=1783670423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E8F7QCm3oCmhZ0k8ChJtucjmxHtKA72tkWkJA20N+D8=;
        b=jPnyK/jyQonCHrQo58VtDCgpIfqCVkNp8iazP4UDZLvJctQBXgnHR/EgAGWFBYN+3v
         cGNRXWO6fx7Km0btDHN+YN39MIteKVa9xolEP3p5EFCZbVEjahO+r2Y4IGdtXcg2RDXn
         uhRzluL1w0jxqpZD8FImN2xb+1AiGf/gJbj6FHlWFD/c72AjhT0PvL5dwwoQGtx9mtKx
         u3WTd37+kPWXfcuyAKTqTj6AU0ZUCRIriIAIrVosVSqYrJzTdr9/oR+Ru8aDazB476Cy
         4s2er50viQ1NgtHJeC+V0in6MQHep/oJf4G/D31ULpok5qz3bj3gHkOzXIMREvV1gNQ4
         4gcA==
X-Forwarded-Encrypted: i=1; AHgh+RqTGEpn0K67+QlzP6iZ1MUGe79ne8Kk0FOrh+cJYIYqj2aAHaUOahL3ZzcJoeHXT5IGBwGgLNaygXda@vger.kernel.org
X-Gm-Message-State: AOJu0YyJqeVRJbiT9/3gtVQdza9qpy4XlZl2Hf6YkjR3bb5kbcsJHKn1
	4HZKESgAR/WK5sl3OZqpo+voQHUl8kdHq7k5gdGXNpblsG5AszfvFTKx
X-Gm-Gg: AfdE7ck9nxJES6uu33/6wOq2bsw31AcnKNJyy2zTDOMauOQONCyaPNeDW1aWaqvsUyM
	BlkXR3g1KVrVJfknutLCBon9+LdnEqUDMpR9vJ+koK4kaaINAj89Dj3ek1Vo3Sfs/7LBmVqnhzP
	sr/Kl+OJDpBFhkfkZUKzZkF6S9JcpO0g13cE3Nko0xrXrW52qFCJEnFlJqQT7g/HuczrD0hsBOj
	iEweYJpvYl8oWTbcLjV2L5PNB8gALQXofdsOUj/bnD/cCDlNjLPUIef+eGGKRPPZ/8n9fnMXAo1
	eNQI3jKuM4C6PZUQUZSZCdjcpiiJDUBBMwo0YE1BuhqDUxx6copbW/mGY7D/7PZK2ftq+OcenH5
	D78tjVKhSxDP470wlLsCqydnIRz70TQkC9oP+tMrt5Hgw4h1Yk7MmzIujiqS0U/CVx/09+6onRj
	67FT4K8BAMqQ/ZpR2bBA==
X-Received: by 2002:adf:e88c:0:b0:475:f0c2:75b2 with SMTP id ffacd0b85a97d-47936c371cdmr3000082f8f.29.1783065623068;
        Fri, 03 Jul 2026 01:00:23 -0700 (PDT)
Received: from [192.168.8.79] ([2a00:f502:160:cb6f:2cd6:80ba:ca9:891c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477d766e0b4sm15116051f8f.0.2026.07.03.01.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:00:22 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 03 Jul 2026 10:59:39 +0300
Subject: [PATCH 2/3] firmware: qcom: tzmem: disable SHM bridge for SM7125
 platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-sm7125-samsung-v1-2-3e5f752048c1@gmail.com>
References: <20260703-sm7125-samsung-v1-0-3e5f752048c1@gmail.com>
In-Reply-To: <20260703-sm7125-samsung-v1-0-3e5f752048c1@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Stefan Hansson <newbyte@postmarketos.org>, 
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Erikas Bitovtas <xerikasxx@gmail.com>, Vitalii Skorkin <nikroksm@mail.ru>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319881-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:newbyte@postmarketos.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:xerikasxx@gmail.com,m:nikroksm@mail.ru,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,postmarketos.org,lists.sr.ht,gmail.com,mail.ru];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 930C26FFFE9

From: Vitalii Skorkin <nikroksm@mail.ru>

Currently SHM bridge causes RCU stalls when booting. Disable it for
SM7125 until a fix is available.

Signed-off-by: Vitalii Skorkin <nikroksm@mail.ru>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/firmware/qcom/qcom_tzmem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_tzmem.c b/drivers/firmware/qcom/qcom_tzmem.c
index 0635cbeacfc8..50f500834758 100644
--- a/drivers/firmware/qcom/qcom_tzmem.c
+++ b/drivers/firmware/qcom/qcom_tzmem.c
@@ -81,6 +81,7 @@ static const char *const qcom_tzmem_blacklist[] = {
 	"qcom,sc8180x",
 	"qcom,sdm670", /* failure in GPU firmware loading */
 	"qcom,sdm845", /* reset in rmtfs memory assignment */
+	"qcom,sm7125", /* hang in rmtfs memory assignment */
 	"qcom,sm7150", /* reset in rmtfs memory assignment */
 	"qcom,sm8150", /* reset in rmtfs memory assignment */
 	NULL

-- 
2.55.0


