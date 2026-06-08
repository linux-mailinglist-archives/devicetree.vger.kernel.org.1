Return-Path: <devicetree+bounces-308357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id syN/AmPTJmqvlAIAu9opvQ
	(envelope-from <devicetree+bounces-308357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:36:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A0657411
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:36:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=p30GFMuj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308357-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308357-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 239BC314E95C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E653D6692;
	Mon,  8 Jun 2026 14:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A379E3D0C12
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:22:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928552; cv=none; b=CKKrvNdXBh0xgyLD80iTZf1JCigMJbUEE70nHNWYpyH90mLzIO9SXHJ9PJpCm/uZ1GhxCavT8mI24/UEbwtv0ROPldjrC6TQZDjI6rdbqDcP/v42qwWR2sF26YP/f2qmQO94TXRZOBH93eGL2iCO4jwahiu/1byB9vcK2Fu7Tes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928552; c=relaxed/simple;
	bh=5Uzl29QTCrj5VKD83cW4UxcKrN9I1xXI5DXz829aub8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nJnIQPdzfoPEXZsdImNNBjCS+9iuwewctrKWmkd10Gcp8yWtrXibbVicAW6ioZmXIAO5BDanrAeAxcUz1bhLZEQSI8c6MH5GkSNgNYgZsyp/U/7NvZMCzK5W/evz0UW2AF91OGXuD5TuaF+fsYFsXw0vKb9ufxkmaVHCL/23zL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=p30GFMuj; arc=none smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-bed2195323cso634783266b.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780928548; x=1781533348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=p30GFMujNL8p1XGzYyowwWNbfB6c+mrEb8m0cTsYrQ4bKJVvYJ7UX8cxHdiAeR/eXh
         su431BjKQzxAGRFvKWh5WEJ7DerUbigdIE3uLBZcy6H5KUlycsoiEBH/gNWIAfaRjdWH
         wM11KYb4g0gWtodmZsFEoeY+tNE6Z3+ghTjjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928548; x=1781533348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=HNLhzHArWaTZ4uZIGPPet8bryUwdJ6rpEENhmzI+/Rkb5G+me5doDf1+jUWctPSnVr
         JeNiJhOjzEkebjQWveRbhn+DuPDuJ/6Z2fztJUXv0CuROfzEWrSTO7UCVMd6c7YWkxKI
         RKr2FUvyWLrwBDi2Sq2XTQ7y5kHuwTfQOn+HIISAD+LYsgn0brSmnxq6N6wzfWA5+3/n
         fdQ47xdcGUa+1AzjkP1qnHdBluEoNO235B0RMo/jwSQViLNf95qe9bg/jbmAbODJ1zUY
         xMXLe8lzln3M3RXPAFa/tsawmz6FSyMtlsMbEAxS79Afp0lCyCcW/BsrUiNXUJa6wwOb
         G7eg==
X-Forwarded-Encrypted: i=1; AFNElJ+RSXvEV51Jp3JwudpAp6c70kvnosyuI3d+M8qrtFSvXgKgnvwaY76oWVjjjnUDIfzWo0YfC3UEB3Si@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5l5CVolRznJmf3dkK2c+HM8OM+QgeRhZhWHN0fGhFL400/7Lr
	311jo4yShvWMtjF0BYvIXMIyXVGx9ET7LMrSCfp5OW3vKzn+uKqxANm1KuvsBrlZJ+4=
X-Gm-Gg: Acq92OF5Rl1Qq7etVo0SY568WO9RXXu4Jy6ICLTfK8pguywIFVHu/lY/H1AUz2ovnm4
	40l4dAc71t4wrd3RGGE9Bvf+M6bkb8KP9XnD6pF/wpYhnBcH8MtJ46ev+BbjvTqYt/gh8yW1XsW
	MFA/Nv+ztzP6yfYSsPCwcIxFWot2upBFQWpF8XjxpT3KK2Jr2oeBDpVRDXqnaPWErAq21MQyxQw
	y9A86Hj08C8wgp6I3D9l3xkziroJln/VFqpWNDah2gmiZKgP1i3buwYA0TLnsAIjuFMaoIl95bD
	N5bfAWWGpB4gm4b7UtFKSbUcpAeP2yBqRRuklaOx9U1mX71Gl3m35OFdKfeAq1sATUt94WuU+gx
	5YfdbHb2Kb5tnc2Xo6Dwoh83Wr3cbRh4TyQz7J9EE4RATgX/3cgENyqOV+vT1axcncN6SQnYpcf
	0iXHFTGcsf6pNmJxxB+BScekJHUUduBFJsgq6pOmKiDryhOqws45GiOLTQMhdOIPu5oxQHWPWfM
	gVfuP1WwEBYAcRoTB0jOnJpOdGXKGeW0SJR+jRv9tHJsjjUXv41RxeS6vbt5oxSpT0WFQ==
X-Received: by 2002:a17:907:75f2:b0:bec:2ad0:cba5 with SMTP id a640c23a62f3a-bf372159cbemr438523966b.29.1780928547685;
        Mon, 08 Jun 2026 07:22:27 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055307a35sm881847066b.52.2026.06.08.07.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:22:27 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	domenico.acri@engicam.com,
	michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Christophe Parant <c.parant@phytec.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v5 01/16] dt-bindings: arm: stm32: support Engicam MicroGEA-STM32MP257-RMM board
Date: Mon,  8 Jun 2026 16:20:18 +0200
Message-ID: <20260608142221.952245-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
References: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,microchip.com,foss.st.com,phytec.fr,kernel.org,siliconsignals.io,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-308357-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:domenico.acri@engicam.com,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:dario.binacchi@amarulasolutions.com,m:conor.dooley@microchip.com,m:alexandre.torgue@foss.st.com,m:amelie.delaunay@foss.st.com,m:c.parant@phytec.fr,m:conor+dt@kernel.org,m:himanshu.bhavani@siliconsignals.io,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F3A0657411

Add devicetree bindings for Engicam MicroGEA-STM32MP257-RMM board based
on the Engicam MicroGEA-STM32MP257 SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v2)

Changes in v2:
- Add Acked-by of Conor Dooley for patch 0/1 "dt-bindings: arm: stm32:
  support Engicam MicroGEA-STM32MP257-RMM board"

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index c6af3a46364f..c5ce81e3ce45 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -203,6 +203,13 @@ properties:
               - st,stm32mp257f-ev1
           - const: st,stm32mp257
 
+      - description: Engicam MicroGEA STM32MP257 SoM based Boards
+        items:
+          - enum:
+              - engicam,microgea-stm32mp257-rmm
+          - const: engicam,microgea-stm32mp257
+          - const: st,stm32mp257
+
       - description: ST STM32MP235 based Boards
         items:
           - enum:
-- 
2.43.0


