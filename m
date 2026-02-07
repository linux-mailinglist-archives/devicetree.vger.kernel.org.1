Return-Path: <devicetree+bounces-263607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK0cH985h2kuVQQAu9opvQ
	(envelope-from <devicetree+bounces-263607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:10:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AF1105EFE
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B83D3019BB1
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCEE34106D;
	Sat,  7 Feb 2026 13:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S0mua3Gk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CB333EAED
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770469852; cv=none; b=MEM06rGDG+L8e+rjf76aocUR+6fLuvRhXyJ4nUOgRcPunI/r6MqfJP/No34O1x01+AKG3D+CGORwAYIS0mGSUJ5HFlAFOP5gjeqOiQ5pcvlM4HrPXMMpR1VnWVhUyOV8rjmMRZ6Bt2BCTJm1Y5V1aJ2O+Vhk+67PJ2VbZL65sP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770469852; c=relaxed/simple;
	bh=jLCHrWJGkSWkMAK7LAwWvERw2Dyi2yOrDrbXle9T1hc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RSs40lr0ZihOveu7omcb/zY+AADeupRciGe6o1WXIkmEDVfLTVdttg+OiFqTQjx18/6L5/k0xPBOgNJdgjawqsWA5jSagWjgMoUbeQZy/gM1SShZZogC+y4XsqV2VGcWDhJltN9lOs+FaUfD9ruCevdXsSeMMkpHggZ7w6geOvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S0mua3Gk; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-649b1ca87ddso3131069d50.3
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469852; x=1771074652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QBpsIzCCQeoZZ/GNnpHx2ANdVkIKBFfRNNmEzWBceUc=;
        b=S0mua3GkeNe0ewq6wLcSDw3QwhhlNHcXD/LRlSHWBXz5FtxgK8SsVmKTorbmcBykY0
         Zt/I6hYxpC3cMvVd9xRD0jJ4VRTUwxIj9L5KzqK6+c/swmoLi+DCowylOyXFkKz5Ae3v
         Fzfp11XY/kONjxo3PL8EczTunjhWKoWGjSfyzDV4/NPudjY/LfPvAsAd3+J7JrriEt+1
         f0qFRYu1uYS7vChcWMeXoMAMeQswWCL7WA63rlWj1BVHysrQlWLQ76rAbTMjqrdjmAD9
         3mVvGJKo3vyLHp9FgBRMOOfFmkWb3VMpghnaK43Z4hpFqdeywi/mHIoI1qXLAoInmNnT
         2cyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469852; x=1771074652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBpsIzCCQeoZZ/GNnpHx2ANdVkIKBFfRNNmEzWBceUc=;
        b=utw3kN1Y62kU3/S8IqqH6kBL56OOvyIvW79bUSSh8NnOkD0DDaaqgriaKmHJpKBdX8
         wlQ/4831p6l4JhvwLnHEY9gK7HdgE9FdLzJmpIZOplhkA9PCjjxARw4AfLwuT65bgM1d
         raWD+pOUt99n529jB2Oi6gd0pPQjY/Vdd8azkpVfZiYCZI97ZLRPrBZqJctjt6fuyEQ9
         Q4J5NswiisuNkKfPjJmalRzGX4biur/KW24Zs1TU1xnZil7OqB7gGg/wxeYt+8s4yY68
         aToc5Xha55aXR+WkHo3zb7V85vRDAbnGUI1kXAU9Ekrr1ZQsRtDEqmIcgvHoBUnpV129
         HcGA==
X-Forwarded-Encrypted: i=1; AJvYcCWgvLsEgw7KYVzIzvqyD3V3o+Epcja8fh9Dc8Xm7fPf9P1xFr2ASvNf9YUwRn6ziDCJ1hA0dDoAisGf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz06Vt5a0B4uW+ljDKgYJpMjf/gYthw/4jSJB6AbE+b6msmREnC
	7oW3Odyzs9rjkgo3QyoqBcy4EvCrQHQ8W3tnXGSw04J69o/scPbEKXne
X-Gm-Gg: AZuq6aKRoDeuKQZSHliqrsHOAr96HU7npFqewkGz5E6qeaIINP9Wbf8uBqcz1+gRkty
	5+fsE1Kc+3GsfIp+6YJwkdqpnqvLU3IZU4bmhailXQQ49pnUfEA6ub8cTT6X7jhtxAOq4uhI5tc
	630LrUFiDzssnoJKE3M8v0tmVf4TDDDon4mvbp6YJKCZ8htm2iONFnqwLq3agfQdh5bhQmCpP+4
	HQsLBqIgtFR/xzXaU2If6WyB7VdTYY7OlIODnk0O6nqR4aHFgJ/ITPFUbj95PeeBr/PFm24GcS+
	ic2f7IGVDoVqCvxRNmzBXyZupWt9jvb3w3+PP+4O9P2xNAyHErbY4N3J4jq6a6UpQaeBvSbpi95
	bL1C9MTiCf869szPxPpOF6StsfKUSJe84LIXiR+z3BLrBiC9d6omI3vCn6Vr3JgDC0lr9L/pk1W
	8q8Yw0ziEdJcSw2mpIqsWIJPKe
X-Received: by 2002:a05:690e:418b:b0:649:b851:4ad with SMTP id 956f58d0204a3-649f1ee4aa4mr5307230d50.42.1770469851708;
        Sat, 07 Feb 2026 05:10:51 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f255ea25sm4965466d50.17.2026.02.07.05.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:10:51 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible
Date: Sat,  7 Feb 2026 10:10:41 -0300
Message-Id: <20260207131041.2833840-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263607-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: D9AF1105EFE
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The RV1103B uses the DesignWare MSHC controller compatible with the
existing Rockchip RK3288 variant. Add the rockchip,rv1103b-dw-mshc
compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Make commit log more concise.

 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..a75209bd2710 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,7 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
+              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
-- 
2.34.1


