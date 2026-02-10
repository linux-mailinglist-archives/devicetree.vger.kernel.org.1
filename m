Return-Path: <devicetree+bounces-264180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WqRTIMmNimm6LwAAu9opvQ
	(envelope-from <devicetree+bounces-264180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:45:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A071160BA
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FB9F3007232
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A2728314E;
	Tue, 10 Feb 2026 01:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lXJUmduc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F40B35898
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770687941; cv=none; b=XxnDplSwkfKGLujiCag9wlWTlz5+AbVkl5SiC30n/sAP9VCZWp5nXSOO9JauA0E+CFKQaV0iU98dKAO4GwpNW1UUuUBvmzhf72WF5MNfd8ppjchHQoI8O3Di1GzyQntfhf2uL8kC62Ce49ofiBU+VBqR8CoNNx5RJMf/oeKT684=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770687941; c=relaxed/simple;
	bh=pp+Ua6cMWDlekpgxD5YUJxTFrWxLxije2lleE5h3ptk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XI1sx/WEXpS6RJTed9cmnCfegZW4UIsoqIZQr94raHUeunQX33KwR7cf55YgM3ZH1C+xZHB3Vr3MsFhso5Lpdoulx+dzTLaM3LzpaA9rUTOW9x5rjiekiFgvsf2zaypIjB1TT4TvGWeB+mmdiszeOFobORMIUPPJbjGcclzWd6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lXJUmduc; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c6a50c17fdso368972585a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 17:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770687939; x=1771292739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qZS6xma+Zqre7AlmNOzN/FqfjaONWCLXqsAywPf9Rk=;
        b=lXJUmducuoBahaCMu2pyzmevJDgsyDZJjWaFgtyJ64ghAKu/fjf49Gh+VtuS8GkMRX
         KdG4c8mbHk0AVeKbh4E6Bl0qbQ2SolkLJ5FvCIjKE+OJw1YlYDs9YZOKuTVBI0SoSCdc
         xO8S2fcC9U7rWVATpAXjaNFP3IghvlYjBwOcR1Cd4MXPxwg9/pjS37UDN9LzPN+2Z62i
         kw0w11Fywdsp/zPJ2eTFFsuk+ygg0Hdt4hSChrf7jQ25Cxo5NH3rST5lrO78XQdkLwAB
         SljeNADNSh8SBasrNBonUm2czjvxXIztArpim71i4hWN/QVQvQFd2QU/3mluuWEW1zE/
         hBjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770687939; x=1771292739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/qZS6xma+Zqre7AlmNOzN/FqfjaONWCLXqsAywPf9Rk=;
        b=QdonXlCOIMprf9ENjoutzbBgvgaGaKnuLJQin6AZJPQfr0AVLXI8cWF38AP29cUxvU
         T36eicd6Zbzq3VhHhyhjlFEUzG3wSCYuvE6vq/DCItDz90ObIGRC004mLpsZ8oxAkSwN
         KPvwH4heuL3YD0sJemQZq+J36JiKsNzW1huzYFn/bvohPjEU+M9JeZWysIxQxhvKlUTJ
         trF4h8dLVxSO23ob3PMc/OhIw6rrCHIYrqRzFKJRp+pb1xmIT+ANJFMEb+d0HvD0S6zv
         +NsfGYzTg22tjliYthToc72vwXYOpuxA3FVhYM4owjvUEPDe4s79OxU0hCmCs0XMwDyT
         Oemg==
X-Forwarded-Encrypted: i=1; AJvYcCUbbCVhj090VeKPOff3h+6jkGUNp9/5V49E/GngY7CHsafAzmmq6fSklKCVxXcoh2bqEPbi44BGi5ui@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk6x7gyVM4Zsbif6yVLcEwAeA1VTWMHrq/R5i9JwkofWhv+mtb
	j9ngeehGB7FuiocStfudvJF/13+UFSYA1RTsf7Udt18xBGNLgIHzlBal
X-Gm-Gg: AZuq6aLbyiwZpw9j52iFeK0pukbPsKxJXfKSgugoBInNGfu5g48DZsCvYZ+PD3/16wg
	kZKUKPCK/c4yzFPUfrzwmCb5PZyWAUQ9F1mm7qty/X+uoSWwaSBbmsApfHcMQVuoxVCAz+n0Jal
	aFV9pKmLXzfeq7RAufSQmr4m0YZT6SLSUMkE94fY2HN1CT9yS20xRtoULPaJl/KCYB3+ie9orjF
	WLJ4oFVQ8Cp1bcER5zvBUoscIquwF4XmpJmexkViz8qltbnRzSx2O1wcxUODS/CAdUFHWYS0cIp
	/9UeFIpIgWCC7AFgEIXI6NOj8BYIk3kYvS7JJLxyMQzTTm6U+bnW6BhGE5quqO1vF5GC+/+gzpI
	FMOb0LY2o4RxhEreKOFxU7KnzKQKTNxouKYdM04xe1Ir/ft7Sed/xVOwxIWsRUNa3r9ZIlG5MQu
	qYn/jxH7BzIu8tyPHK5ta4zhlgmjLjPdU2CaDudh9rgKPRHl15wpPMgeai3NB23+ZCpXPUSCcAm
	hcFr/3l3YCwdps=
X-Received: by 2002:a05:620a:1902:b0:8c6:db3a:3735 with SMTP id af79cd13be357-8caeeb4e8a4mr1816696985a.5.1770687939183;
        Mon, 09 Feb 2026 17:45:39 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7aefbc5sm915309685a.17.2026.02.09.17.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 17:45:38 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 1/1] dt-bindings: display/msm/gmu: Add SDM670 compatible
Date: Mon,  9 Feb 2026 20:46:03 -0500
Message-ID: <20260210014603.1372-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210014603.1372-1-mailingradian@gmail.com>
References: <20260210014603.1372-1-mailingradian@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264180-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3A071160BA
X-Rspamd-Action: no action

The Snapdragon 670 has a GMU. Add its compatible.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index e32056ae0f5d..93e5e6e19754 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -91,6 +91,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,adreno-gmu-615.0
               - qcom,adreno-gmu-618.0
               - qcom,adreno-gmu-630.2
     then:
-- 
2.53.0


