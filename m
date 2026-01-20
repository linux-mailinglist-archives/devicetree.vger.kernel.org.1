Return-Path: <devicetree+bounces-257473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOe/BtLGb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:17:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 664D9494A5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AA0282CEBE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40AD247887F;
	Tue, 20 Jan 2026 15:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BTb0yYc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DA944D021
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768921487; cv=none; b=rn9jILytDXPcMqhMiZDcjDfKYQH7OvY5biQ5Yjt1gnrv1vszpKdG1Z07bn/+neiK/5NFn8UIH7KRpnx6TdNme52uQ/QWyvw2k4fDyexkCl01tf/4OPaKaNRpTWfU/w03/uttPJb98/vOvV/QFg7OKqnQeIRhKiJMXy20pY2kZ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768921487; c=relaxed/simple;
	bh=BRbaKg0j1YGfSmfS2ryN0Aw2oduKrLhHck+5ZVdAPis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BOnzVNNZVCqOAWDoGvbI1fQA5qOwGp+sXCgHk5+Jq501LY3nYQAAlukp9cFfbv2vpRgRVrG7n+ou2cd24kJOsl0rIeafhYzsnwBqveHzKdhiimQmwZmNTqmQuhRsJVg59VBefto/vXgPWVIBFa0MrZaolnH9AOSrD4y2zqx6Mxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BTb0yYc1; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-65807a2012fso808029a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768921484; x=1769526284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFAMYMKzgnEnW6TLRC0+6joDsFGQeQJB21ZVnbyiHcQ=;
        b=BTb0yYc1cl5hEB0C5a1KI7pxhQsPhGbY2W0eWvdxMTsg90i1vNumHjFO9q1czZZLjs
         v6gOhNLuYqn1YrZQjziZyG2Vxd2tJ4bF/E2bU8o69tnYvcNn//+IzLknSRXE4gsXedtw
         KFiLDgfogbL6Xd4fl8908Va5ly56jZE0R6v95Y1KHQ1XBWJ2kwgyKnP3FoFfrTmB2Kdt
         D9IlTUvRwRIdP74aOfEoQY89QpFacHauMkmZgF4WSNfDiJFScmK2lEWpmq1O0Q0/zDH8
         wc+j/y/LjCI5hLcjkPEyMLgTzj/AjN4YoPqioySJViMKF9MZ7ee45TaGehFMCpMXrVvU
         FJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768921484; x=1769526284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VFAMYMKzgnEnW6TLRC0+6joDsFGQeQJB21ZVnbyiHcQ=;
        b=Ly3675wrpVcZn0L1/DfHf6aQnD9GgWmOjcyocU97WpUwA0FUieA2r6nXhkzj78HySV
         F21Vf+ZeRXks5Kz8uTHr7GyU2relZMwG00mF/Cp6+aIvF3FKhS3TfracVixwGONjk48H
         yL68pKdHrSVSna3sgPty8V+hlPed29lFebAA8myvGmHkYcM13iYzl64PQIXEjo6jbr0w
         I/vnoHsj0lctBQCOJ7W5K5S8fhxCKTxYHEz9kSHBi3h2wAJdSbaOCUK6aJwv87oObraR
         tzmy1QWZCQX26GL2KZWJ/T+URaFmYOLANnJ0AUmSzMA/CbMy8F2ugVQmy/5FkaC0VzJa
         sC4A==
X-Forwarded-Encrypted: i=1; AJvYcCVoy6jLvaWFw57BACYV0cvXlljyVEKvy/fM8Kw3T2eS6kUXUWdaygFHYbUsWJp4rZXqfuUoFZdqHS/P@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6o6zJ22dBxP2d61xHtNgw55XVf5l/1Vovf3Bcgr6XDLniiiCR
	kl+6DZPwEGmcYLJq/9AOym1ojP4POViyBWevjTKlUT2XLvrsl1mvbRrn
X-Gm-Gg: AZuq6aJZaU6r0sWTwya3/Z6FbCpKWaykcmJ9EaBlhuSF2Sq8sgrLB6NzXKVMV2/8xt0
	xkKopVcwHmfF4Y/142MDQhffXQ1zYyWmxelrN0phqwLlYhiRjIbYm4qHZVu5bDQXIbUz8Mk9Zsv
	+kUm/uVLcF+u6byhYP1v071V3xKJzrC4BzgCLj+gsh+/3UpPQxi5AsWj69EI/HLedC5vpldrl9W
	7u2hE7Ssw1y4Fb8FzzByqbsCK2aYFhlpxqF0+L0ZZoAVyz/99oQtX11ja03GnCokAvLnIF7XiKx
	+FAic4jLt/ZPSnpZrXM9P4fHDfl6F45CEiN8W1fhOOlrcLhTq3VC1C5HJc8w5ku8i5wzjQIKPuG
	cx/lhWlq+HuMiqs+9m4F+TShohUneACDDo217iYAmHQeYhNNuE6AEcP0PcTwk4Am9x8CDi7OMkA
	y/3U4F6GFkYijxFW8jviLRhQTmsS/ofVybdQJEUjF4JJuTNK0=
X-Received: by 2002:a17:907:8692:b0:b73:6d78:9b79 with SMTP id a640c23a62f3a-b8800261c34mr210659966b.20.1768921483413;
        Tue, 20 Jan 2026 07:04:43 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a214e8sm1427045966b.60.2026.01.20.07.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 07:04:43 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH 1/2] ASoC: dt-bindings: fsl,mqs: make gpr optional for SM-based SoCs
Date: Tue, 20 Jan 2026 07:03:28 -0800
Message-ID: <20260120150329.1486-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120150329.1486-1-laurentiumihalcea111@gmail.com>
References: <20260120150329.1486-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257473-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: 664D9494A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

For SM-based SoCs (i.e. MX95, MX943), GPR configuration is performed by
the SM coprocessor. Thus, the programming model needs no handle to the
GPR node. Make it optional.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 Documentation/devicetree/bindings/sound/fsl,mqs.yaml | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
index 1415247c92c8..bcc265a742c7 100644
--- a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
@@ -63,6 +63,16 @@ required:
 
 allOf:
   - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6sx-mqs
+              - fsl,imx93-mqs
+    then:
+      required:
+        - gpr
   - if:
       properties:
         compatible:
@@ -91,8 +101,6 @@ allOf:
         clock-names:
           items:
             - const: mclk
-      required:
-        - gpr
 
 unevaluatedProperties: false
 
-- 
2.43.0


