Return-Path: <devicetree+bounces-271751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCYHNX8WqmnFKgEAu9opvQ
	(envelope-from <devicetree+bounces-271751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:49:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 236612197DD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 284F2304019D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 23:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D399F369216;
	Thu,  5 Mar 2026 23:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WQNy1YGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DE7310763
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 23:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772754457; cv=none; b=Jcu+p52LXjwdJXSeOhSmlJR/54/HTqDm6M/YfGlFv7G0lDrRykDT3uFRMFLVeY4KNydTW7AQXtt023G+bxdoDeDrPOXSrTCO3pgIw31vaVwKC/ImHvr+KsqTPgWTk1IcNWdsr212e5y90bR7nW8Ay8UxkAkWsDqxYO8IqUpsI7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772754457; c=relaxed/simple;
	bh=7uHrOrdZ5KHepAEYUTDsM0EnVX+c6J7LoR0QeJ1n0N4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cFaECSn1tYdQyIBtEH0UnaH+t2gtvumIAGYKpOd2KBmB8VBFZ7JTscrHWisjc4mP0D4YUSWG/h3RYGskz4SD1OQI+9FcSjsWKW9+/FSZTK7QFaf1v0n9SuWUTX/QNdYMzY+UEmqqn5e8wC3vWHqjOeWUfY8jArdYeNEe42d6TqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WQNy1YGO; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2ae41544dcfso62737655ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 15:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772754456; x=1773359256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zcZpnrWcDjcweOn1Um75L9TOaVFcEi5KqxXQxmAOFC8=;
        b=WQNy1YGOZogMaXCJmBEPmcvwSIdkXLG2Mx7a3hYD2+Gi8GfaRX6oSJTgUuqXayq1ys
         nfiXzXou4XlK3aIHtscd7mqEQZWERSrRuKD+o+1/uw6VsyxpdjlnvXh/ESsgpsHSQOcw
         pqxocZ1xqfuT1+fslhtUnTwGZBk//K8DlKjeB2I+yZRkFuCPLlyRcHAQqCeRvm3IBolX
         Zy4hu8Tu2m4HYWqc19X8mDbiibXjL76Q3lEpL8V0Vj6XOAtDndpNi2wV0dOIA+sSd2QJ
         hyJxWEQCU2GcKP9B1TT9fw0HErklhuOuxbEYQ3RDetwv1WZBjGZurJrOKJumVC2ZroCc
         Qj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772754456; x=1773359256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcZpnrWcDjcweOn1Um75L9TOaVFcEi5KqxXQxmAOFC8=;
        b=rXfbDUgac+JEPSk8YcXYfaqzf5nDfpAwr4xyor4NQZWmYZA/bIRd19BiCi6hUpGMNg
         umSHr57VSfvVZTojbmNpUKiyb3z8OWTcUGFnZkNOISmgqcAbZCw/su3T6wMUTkncIxVd
         WeTyG15X11uasMHB62GI1r5vF+fA+GMS2r8Us5okIuhTdMJw6N8R1h9Rcvlu8kNI2mg6
         bi5+ZO57WZZypSvUPdwM7grd7ygHUnAIuXJSikBHRwtCmE2/00bCHPsKk4Fu0XFiNq63
         VsjWnFRdIYW97u0hBVRLumLRF+pxxsRmP4/15TOkJncvFGzz0SqwlsidqONuSPnasi21
         7sKw==
X-Forwarded-Encrypted: i=1; AJvYcCU8qMfT06LzkGvNp/7a0ktOxB3uyr8Q8JqwGWPh9GVdFKDWl103DH/dqpA6RmcOIMRzUFPsoelOXP9U@vger.kernel.org
X-Gm-Message-State: AOJu0YwpRHAgo4ehrWOUaDCZ2GTyyjPR6973UlhGNi+1SMo61gYHgTdC
	qpidv3T1/Snns2JxXDn6Y2SbPBGbzb7PKmh5tfjNqUUsZYou6tEMA+gY
X-Gm-Gg: ATEYQzy4RSvaNzsBVtuEjU4x0NfniojMZ3PwYv8CsCr/TMKt13MMDDHbRn+LWqo2ahz
	1fiv+nCnRonMS0ob53+3N1dGl+oqgAnMui6oxHW8xkOz0I5IcZzeDsWO03cuGyovSRWiVUNxqjr
	VzRh4c5v25oxS6GG7uZwS8X7nGFo5GFl/ZCEmeId4PKyFnt3Hhdm5aENT9z1XRzXXp6D6DjKt5v
	mLP9aMW6K2MRpFXUYV6R9gAxa9ZMovml3QAA3Cyz7XGhAiJOA85x01atWdCZ8cKmbE36keXd7k6
	lqV0qy0xKh8KhldrekY5lxlSJNV/OgFyZZSOzZOgqtbw8P/9YVqfbtdc48Oa6l0+DdpZiIYxjOp
	knpC+IUdTweAYO15smPplT59kLf5lPEpOnPEGIaKLtJgzwOEOq1J7bUlnHVu2BeKQ+1WgjWvlXX
	1vAGbvwBi8Ia+CMCdL93/bdgWATjNn
X-Received: by 2002:a17:903:1986:b0:2ae:4847:cace with SMTP id d9443c01a7336-2ae8242cf7dmr3033205ad.28.1772754456050;
        Thu, 05 Mar 2026 15:47:36 -0800 (PST)
Received: from localhost.localdomain ([1.212.70.3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73917b4000sm2515316a12.15.2026.03.05.15.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 15:47:35 -0800 (PST)
From: Lee Yongjun <jun85566@gmail.com>
To: ulf.hansson@linaro.org,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	nsaenz@kernel.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lee Yongjun <jun85566@gmail.com>
Subject: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent property
Date: Fri,  6 Mar 2026 08:47:03 +0900
Message-Id: <20260305234703.38490-1-jun85566@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 236612197DD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271751-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jun85566@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,3.245.125.32:email,3.245.164.48:email]
X-Rspamd-Action: no action

The Broadcom iProc SDHCI controller supports DMA, but its binding
schema does not allow the 'dma-coherent' property.

As a result, dtbs_check reports the following validation errors
on the Northstar2 SoC:

  mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
  are not allowed ('dma-coherent' was unexpected)
  mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
  are not allowed ('dma-coherent' was unexpected)

Allow the 'dma-coherent' property in the schema to fix the validation
errors and accurately reflect the hardware capability.

Signed-off-by: Lee Yongjun <jun85566@gmail.com>
---
 Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
index 2f63f2cdeb71..579e44843404 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
@@ -38,6 +38,8 @@ properties:
     type: boolean
     description: Specifies that controller should use auto CMD12
 
+  dma-coherent: true
+
 required:
   - compatible
   - reg
-- 
2.34.1


