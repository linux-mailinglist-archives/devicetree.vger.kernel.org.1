Return-Path: <devicetree+bounces-260087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE63DQMNeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:07:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFD399A0B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E576306838E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740A132ABC7;
	Tue, 27 Jan 2026 19:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K1BYROVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4732A3FE
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540546; cv=none; b=oI6a8/I3TsnaX4/jjfX4Jwu94t58MUBMSSVCr9xkBCJDvpc7SoZGCgsmpIY96DPB8J7TryHuaojBjCG/uo7uoo4N/jIXCCiePj6WIR1hXV+if88koks8qIeKuiZ28zzksiHbjmCP6gSLjr4R3lvL3+SpwZdGN0WcUThg5EWjPag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540546; c=relaxed/simple;
	bh=4od2Zsrw8MKqAx0Tj0P4A1rKNjPVcZnSN0Q3Dj9DUDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TN4s8DK0ch9wwx93m92xh5Cj4xj8ZXg66I4CeGEBYtE7yQHXzZK1K/vNEhN4jfSB1Q5IaT4JuvhtMbnC6KvugKp+K8sjchx+CVyESCon6/pEiDGya20pu5aoua6RfAfbhcmOvMwPYChwnvij9YrZC2CKLF871Xoan0hog6ji5Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K1BYROVz; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a7d98c1879so34785195ad.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540544; x=1770145344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEzmMy+VR9Xc34VYDgQek5eZk7wdXPLbQFrTaMwdat0=;
        b=K1BYROVzNG0hX/fb55qhnYIgw2tkd0Ty77b/cBtWSAGZ3zGpO4RThKWaKi+qnWwnHJ
         10ckYL2VsFYI/JQEhEcHuJLh7ujepF39sGHL6dR2c2mV1WxCmv9Mx837d+qKm6EBySt0
         AL5GsXXwRiN8WXtTM7/EtUTm1JoZsvzYJFbjatrwlycKBOppR0Qa7DrRtJ23vytQYnEj
         ewM4+jD99LMEwNKkv91ByktKZHuALZrMzF2wZAYoKEYaoW2/Ias356IrbQYwMkMTm2Y9
         bZYnY6k+d00C+P6BOB8IlqcG5NZZI/r9SOQGLrEM1k+h8RCJkYDadpFkvU5QqAoBWTzm
         wK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540544; x=1770145344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lEzmMy+VR9Xc34VYDgQek5eZk7wdXPLbQFrTaMwdat0=;
        b=Pw1zcbvvR3l2XDA959SgaGs86Tj/3hYQs501GfuqovEs4DgXjlzkmJ+klz40waBl4d
         zb6Gt+cvx+zPvMiYX0pYMMQAuADSSKIRS1WasUE19qouIBirWdhcw290Edo1aGzhiSRA
         A6rgURijmp1KuXAq+S+FxPDeCfxkPw8ICpihwcst6ouApuIXA4DRgivyaxUTE7z50XW3
         GLsjP7idVcFDeRy+2dnbk8uaVnbwMVWZb7lBopW5Img2C7jMJD+AUCl+OijKTOurufb2
         Qn7kacmdhAJ4zxLvI01SVl8RvQDEcDq0vFYdppqvPN7T2QozKsY0iYYedtUBF95FU78M
         E5fw==
X-Forwarded-Encrypted: i=1; AJvYcCXdGG8w/EGRorf3zE9cx1aaIaDSfayiAJ8O6fqZ0Ea+MiIgDvGiPEXm0TCngs/APgTOfU7XbGY2Fxpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx50ud3Bx9SEUkn18xG11DQcNnaT0J2jiSE182Uf1qpudgMN/vW
	1aMHy4+4992H6NEJFWZengHgauZKaSsufgb2pUoL+NCg75A8DDnFJ83n
X-Gm-Gg: AZuq6aKPbA1qGOBcPDKy9k95ngjunLsfLEBGavIniYbwQK9nVfzgRdHmM11yMIuzIcH
	tKPigeQ/BOoirqxuabT4kcNNXJ9ugmfxKkV9Oty1eud0gVg47KKJRip4fFLgoPor1eTagR3s2o2
	1pgn7FMmVaLJawbzvVqj28v+HafSU5cXtudx9RDbTeNb+8A/oZRuLkwNtfr9uG9oeB5P6l9Dl6d
	JjPlK3e3JVHqlubHtADNENB6h+E1LMIFHY8D/yMTCQqwliamJU2bLZ8gWk691tEuzJRrDJ9FNXw
	jud9+N/kzW0/gS8JK9146stygNZXIZvLb7utDYf6zjNefSOL4dcmvtWf7pIxyEZvqD0ta1JYTUb
	fyZ727YVJoCXarZHBgwgw+jnzmV5mToVYUzivfTGeeKBsx84KGdHX/OzUfveQsOGSeRrfdDNFKU
	EuThdW3hmc8zNgB/h0s6/tCEqwd/aEsovF8onxi/W76KSLArU=
X-Received: by 2002:a17:902:d2d1:b0:29d:9755:9bd8 with SMTP id d9443c01a7336-2a870d7b6ddmr23896415ad.22.1769540544233;
        Tue, 27 Jan 2026 11:02:24 -0800 (PST)
Received: from saikiran-Yoga-Slim-7-14Q8X9 ([2402:e280:3d17:646:6ecf:d9ab:b640:78c0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3d4csm938105ad.56.2026.01.27.11.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:02:23 -0800 (PST)
From: Saikiran <bjsaikiran@gmail.com>
To: broonie@kernel.org,
	lgirdwood@gmail.com
Cc: andersson@kernel.org,
	konrad.dybcio@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	Saikiran <bjsaikiran@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: regulator: qcom,rpmh: Allow regulator-off-on-delay-us
Date: Wed, 28 Jan 2026 00:32:10 +0530
Message-ID: <20260127190211.14312-2-bjsaikiran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260127190211.14312-1-bjsaikiran@gmail.com>
References: <20260127190211.14312-1-bjsaikiran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260087-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bjsaikiran@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DDFD399A0B
X-Rspamd-Action: no action

Add the standard 'regulator-off-on-delay-us' property to the list of
allowed properties for RPMh regulators.

This property is required for platforms where specific rails (like camera
LDOs) rely on passive discharge and need a mandatory off-time constraint
enforced by the regulator core.

Signed-off-by: Saikiran <bjsaikiran@gmail.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 58bb0ad5dda4..b02311263191 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -131,6 +131,8 @@ properties:
     $ref: regulator.yaml#
     unevaluatedProperties: false
     description: BOB regulator node.
+    properties:
+      regulator-off-on-delay-us: true
     dependencies:
       regulator-allow-set-load: [ regulator-allowed-modes ]
 
@@ -140,6 +142,8 @@ patternProperties:
     $ref: regulator.yaml#
     unevaluatedProperties: false
     description: smps/ldo regulator nodes(s).
+    properties:
+      regulator-off-on-delay-us: true
     dependencies:
       regulator-allow-set-load: [ regulator-allowed-modes ]
 
-- 
2.51.0


