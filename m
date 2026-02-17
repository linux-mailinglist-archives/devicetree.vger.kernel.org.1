Return-Path: <devicetree+bounces-265950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO7pOPy1k2l17wEAu9opvQ
	(envelope-from <devicetree+bounces-265950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:27:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F0714845F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25EF4302297C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6EA024677B;
	Tue, 17 Feb 2026 00:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cv0CQp5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B48625776
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771288046; cv=none; b=F1vFDFSMDPgmjnQBOwaolt2OBOVu8H21JrLeIHolmimTbqZSC3InBPociPL4g2GTl60A07fsleAKcpRa9NNs2KbXT8oUlXO3Wy4kYUugIl2UHto/qWw8znkzmWZgMnBSrxUNEoD7F23XHw5jctU34Xrglf1+xXGbwSnAJ5knEHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771288046; c=relaxed/simple;
	bh=Toh8WfeMNLXt6DADlEJBFqnv4eGFPJoSXPt04u7zLAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PRJaGGSzkDxISWO7QwcREUQs3Rtq0xaxw8v/DER4nYczRhoJ9FcH3IAsB+GiMJuUlbcrK3VDXdap+G1PDPrF0bfaDM0NcphR86vboF9gpbJ6T3HXY/xosT9OA9Kh3tDlFYVROGhbA4iaJZYBGE7DRz1SJMOIU0KFnG/LZPKaSEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cv0CQp5X; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cb3dfb3461so393817285a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771288043; x=1771892843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bkLrppSycIxmkV68TSyhILxOTHj6vATFc9npwdaNyI=;
        b=Cv0CQp5Xj8/RZV1Ej1q42HksMP+0quklMfTfzYis1u+Oe3BpUwEEBqdIIS64CFox+H
         /5jI71p2YUfRiX21+kGK1ZPc3/oPkHisbiCGzMnEfw/p8Rn/yISE4gzhMtgshUTIDBTK
         d85GnbGKX5GmiglSRkIbFWqWpQ6m9mKJ6iJe6L0TXrnvb04qunL+SSO9ALUVXBU6WvF4
         gx2Pnk9lPJ2YqYP2RLqdxmgKiSmAwv71CXRmX21IBUkwwuIM8IgXqWzTrSGCaoY/ApEw
         BNMi5Cb/YIA+oKyZEx8DssWJpnkCM47RG05ZvoFaSJsKbf88aR6KDBJRfRUk1IwJiD+t
         4KtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771288043; x=1771892843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5bkLrppSycIxmkV68TSyhILxOTHj6vATFc9npwdaNyI=;
        b=SDHGJXA/hioD80rqiMsjN/+KUdP3Mn5MNr25tLGGcUPwRP7bYqZVR0B54exNFJKmZE
         gYx6YYAMfoFS5IuDVqlHa8oibo8m1jvV9AVEPlg5ttGwpyDuHdZZqU1p2008hDdt2SdH
         Vwv5eaJyeL6lv+pNBFDYwDMq1/A3zq+AFPC8+4ef8B32h68OiNj2G1azbnneCPStPMef
         LEJBvHZaByUFgLPgj5x3FofbofgtAxbnx8L2dZm1dutuBDSQGNF9HKW0vdY2p+pOmHGJ
         SFQ1gV/R2t4T1f0SzE3oMCdQN94sIgQJD5WDvOtxwRkqyHexHlS/u2Cpa+Q/bItmDnrv
         jF1w==
X-Forwarded-Encrypted: i=1; AJvYcCUuCLqYIBacqrVN620bfhy9Ck8Kwc5EfH7mmN1w5jihezxp/On9Uk+KX7pvAnjoFS1W5pDzaVWs4fJx@vger.kernel.org
X-Gm-Message-State: AOJu0YwRkfmd95s0iuvz2BhqgEUlRF8VXKN1T0ocBvWsCKdGW44eheVu
	D81bnA4wdb+WMfumXI6eUHkq3i5gRHAAyRBE5KJPzjibXuELOaL/ymRLMSuPWw==
X-Gm-Gg: AZuq6aLT1kqHvBsyzUIsbbq/a2iDGbdNG1Ex7D5LCrmAjf1AFTYbFtbQQr8Wgf3HTXu
	/u9exfRSz//nNqfv42ebQnL7/DSMDOSMCUXVmFOQUDSQd+6lZiKfZBbykgEzMMItYd9J8knrG3w
	ltjpOyV2y1YseUqbCPS3H0mFmqWvuKK1+rJAtQW2QDVippQN1eJLIJ5sxpQ+rfzDqMG3axu7OgA
	AhH5huRS7QmUvPF2J0wwdmWvHferNCQDWhwDVrGZutWT42qjc97fTgPY5WziQMcLDJpNMnOJoP6
	iZHDWw7k6LkCxm2CHgyWHr7VHDGfniHXNUZwN12mcFeVJy5eVZBnJ2nK6odnMzkY6SaKndkFYWM
	60suDpYUDmEK8S1cv6DMl9zmZWT06D73P2ma79MP0qM8p7HMoxd21D3XzU/wHJecRuUxErZ1anM
	S06RrGpg/P8I/WnTIZ6xL5g2RNI35BJw==
X-Received: by 2002:a05:620a:4495:b0:8cb:66dc:9fcd with SMTP id af79cd13be357-8cb66dca52amr244592685a.56.1771288043428;
        Mon, 16 Feb 2026 16:27:23 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc957c8sm156277346d6.15.2026.02.16.16.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:27:22 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v9 1/7] dt-bindings: media: qcom,sdm670-camss: Remove clock-lanes requirement
Date: Mon, 16 Feb 2026 19:27:32 -0500
Message-ID: <20260217002738.133534-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217002738.133534-1-mailingradian@gmail.com>
References: <20260217002738.133534-1-mailingradian@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265950-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 86F0714845F
X-Rspamd-Action: no action

The clock-lanes property has no effect on the hardware configuration, as
of commit 336136e197e2 ("media: dt-bindings: media: camss: Remove
clock-lane property"). Since boards with new camss support can omit the
property, remove it from the required lists.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
index 35c40fe22376..38b308f441ec 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
@@ -124,7 +124,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -147,7 +146,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -170,7 +168,6 @@ properties:
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
 required:
-- 
2.53.0


