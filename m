Return-Path: <devicetree+bounces-291998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAYzCf2V82nO5AEAu9opvQ
	(envelope-from <devicetree+bounces-291998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 19:48:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A93974A694D
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 19:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6459A3047E6F
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 17:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECED47AF49;
	Thu, 30 Apr 2026 17:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b="Wd1Aj/ro"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2775644D688
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 17:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777571267; cv=none; b=beZVbm/GpH2k6FJjtvXK3IH92LY/M7ilE3/VnYzKOuoAkfkgesZIOIblS2TJcxxrYhmDeU94JoYOx1STMQkymyQlC1AkWw37w98jd6ktNGJ5M1yvkirK7t+a6JTGhCzMIxx4zOziw7tAtyA9Isp4x03hj2ury1JeneZk8Q8tHzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777571267; c=relaxed/simple;
	bh=eWyFo6wtcwjcGn72c1H93Yp+EkyaoRZ7SE6IqiBOBuE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hB/Np48dcI7BeRnNnXlrWw3N+Q4bkiYNI231rUz8d21GqHIZJHvcIPjEYAq7Nng1f99+fWF8s9rulzUQDt94UEPW5Z0F6Xi4h2SY68JGDR/MDrA1NhGbA19pOi1Qh3hB1rxoVoK1BF+oVmzQn0sTiM5sRDDNNbhcayRDXPCH83A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com; spf=pass smtp.mailfrom=imd-tec.com; dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b=Wd1Aj/ro; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imd-tec.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-488ff90d6c7so11728475e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 10:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=imd-tec.com; s=google; t=1777571264; x=1778176064; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5gbkbiFxStV52q4s9W7vmjcqc2PkrySXx7kVEFbo+QI=;
        b=Wd1Aj/roBKasuMdcYbPquAiufq5cWkzAf6ieBw/SkL+4FBaDfukP13+FifJ5aRfyOe
         out9ZiDm4i3UIfh/AqeCKTAWesoc94b/DyTbijsI3X9WjQRzXqyS94O0QTrLKtT5E1D0
         6HXwid76Hre6hFBzONViXTHcyZovEiNcwJp0Ei85J5W+lhH5k/PRyxc1wjKrm84q+kso
         aAoNAKuRVnDggqc22Kmlh3FNuIdaxlWBbS1ZqNn15MXaE2YXQdBoIv+uVD5MAwDC8kLu
         1m47jpzVJ2Yh9LjrF9COuHME0QXuSSiTbCY+CPVMvfWUMp7ktevwtkY2iNEetiYR3wpw
         0RUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777571264; x=1778176064;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5gbkbiFxStV52q4s9W7vmjcqc2PkrySXx7kVEFbo+QI=;
        b=osZr7TdM/oGZH3pldeUcZN7nUsaeSZCiLHG1+1wUkwrVL6qd16bgn1xzNA2PU81yUK
         MtFAh/ionATmh1qCGiJMv2JFP0cA8bXVVlce1faEJxS2GqcUraC2mzq8xaAStb9dk/xE
         6JncdFJ9LGT5qWSFibAOZwGYEGkTn/k6qVdEA+C9BgVgNUNAqB8mhJvOD1mgZM7wqP41
         sw5OpFzaWJvinyxXmchkfIfxxZ0jsocJVfeT/jNlAdTlk/62CEF+A5hY0BUOQ9Go05WF
         qBxeUaHs8hDwxl2otD6Rx6tUHXhRF39Rio87v2G/ugKbIeYiJZCzlIy7CFabRRxJEFUX
         5qMQ==
X-Gm-Message-State: AOJu0YwY4/VUuJwAu0ICX7QY16Dc01wx8roRak9Vc8Z8mdZw9E1LtPWR
	SWrLY4WtLmfReZ7wa481PJKr3/ZFo2IV8zM2uaZBXBCloCddEhpuZ5A0VN40yWfBqb8=
X-Gm-Gg: AeBDieulIa4qHViyMhDkLxi6305+QjCINnhvKpvM/be80xE3syK9gedl2eKy+xqUPOG
	vUiepYpm75iaf1Uxb9oR1J+C0Gy0rwoaKnKPAkrlRdycK+Or/8Z1UVxk+PqhP7OpcG6Or8H6kLs
	/Cc8PwkTG2b5wJwe3C45JB839bw2Om/c2NeUvZTh5eUf8lNKeInFH1sF3ToY/2z4lOgf9XNyX2w
	N46YYuZdfsEJzIpTNxOtX/wtPqDzHjRjKjUhmAJNhfLtUtysHIAs/plOwYxBShrcRsVyYUVcao/
	SP7ag4HCRv8P/mFQJ92S0aFi3BPd5ics0qk9KyIw07r7PYrAtYiHlrkb6EwOXgwHwkzZ4Ka/tWH
	hwx0HioRzYPYt6QPe8K7o0uDAt6q8rwE7AcBpTD10o7Hf6Ik/miyHudn5XlcA3h/9vWqoC1iYQj
	FnYjRk9QB+Y6o7zdlyIbMLlJ2pjflvhxUPvuXKmKHeLcszG39gid93fNXGWnitItgfoinkhMSrR
	tgXBj4zRIjtwvsQXyEA8kKOFdu7sWIgFok=
X-Received: by 2002:a05:600c:8b84:b0:480:69b6:dfed with SMTP id 5b1f17b1804b1-48a84460ab3mr68015285e9.24.1777571263279;
        Thu, 30 Apr 2026 10:47:43 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c6:2736:8e01:fd90:2598:5764:5f01])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a7c1d0228sm174449435e9.2.2026.04.30.10.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 10:47:42 -0700 (PDT)
From: William Bright <william.bright@imd-tec.com>
Date: Thu, 30 Apr 2026 18:47:01 +0100
Subject: [PATCH RFC 1/3] dt-bindings: vendor-prefixes: Add IMDT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260430-imdt-qcs8550-sbc-rfc-v1-1-4d2b6675eaa3@imd-tec.com>
References: <20260430-imdt-qcs8550-sbc-rfc-v1-0-4d2b6675eaa3@imd-tec.com>
In-Reply-To: <20260430-imdt-qcs8550-sbc-rfc-v1-0-4d2b6675eaa3@imd-tec.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, William Bright <william.bright@imd-tec.com>
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: A93974A694D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[imd-tec.com,none];
	R_DKIM_ALLOW(-0.20)[imd-tec.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[imd-tec.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291998-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imd-tec.com:email,imd-tec.com:dkim,imd-tec.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Add IMDT (IMD Technologies Ltd) to the vendor prefixes
list.

Signed-off-by: William Bright <william.bright@imd-tec.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..2db12a1cb6e1 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -769,6 +769,8 @@ patternProperties:
     description: ILI Technology Corporation (ILITEK)
   "^imagis,.*":
     description: Imagis Technologies Co., Ltd.
+  "^imdt,.*":
+    description: IMD Technologies Ltd.
   "^img,.*":
     description: Imagination Technologies Ltd.
   "^imi,.*":

-- 
2.43.0


