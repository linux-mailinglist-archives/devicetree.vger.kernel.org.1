Return-Path: <devicetree+bounces-264592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLbpAtUEjGkeewAAu9opvQ
	(envelope-from <devicetree+bounces-264592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:25:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3AA1212E7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3072300E68D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73C43542C3;
	Wed, 11 Feb 2026 04:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JvdKua0U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5344030F531
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770783950; cv=none; b=bVHT8YyG1rakKs4MpTRwVM5ceeh4ZhEMjF4FXkOm/T5koTblkKNXAgms3KiZA/6dylZKg46xAXs6IiPShP7tRnynCerQOUnBmmLxal10626Ay3Y5uIC5WeFyfloF2epUBpB3LugbAbm4mVwXFMUaPCvtJDQu7vRJmODCi2KnVCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770783950; c=relaxed/simple;
	bh=hUYScQaRX0QfzkUatVOP/WusQlNS1mD4mV/UULK5pUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XtBi9UJ2HvjWI0Wl9Nc2vO3h5bSbtxYsyvaea65Nn/o6tv6lnaq541XDBdEfypHgzBtAatHnp96YDaEelKa8nbNhuCQIAgJe4ay7sRzD65eI2/UARVtq6ET168A1b5ZSl95MtBE0J/GdgYgMr5uAtCPxjJMdaR2RNkJyjOPMsCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JvdKua0U; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a95de4b5cbso42103145ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770783949; x=1771388749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=JvdKua0UidBGpipuazUYvB/pCtmf8vKUJmM9Nx5D/L6D28kQHvoRJFdSAyR2oCBAI7
         zxqQGecfOX+ddnwISSd1PkuGpgOZ/KF/gAtVYNUvoT5IeIMzjEKXFVrU7VRW8FKtYJbD
         rgpCs2UsXoegZrco0LgM/x0SDjcEJe1MVWx7DRALuvIf2ZYOEAsig3Sv4FjappR2WrtM
         iC1O82w7vYqDIGDpxA7ZR42/BmGJf8cM2NVpzVhdfljTPLhLVBLrW6ZGncYZ2qZPp6Nx
         RKY8n9ecdV0BnQmTN5GWPmMAfW/ElxZNXBzoUVY3pNzYjKFL03+hY2I/8GRWIKi7Lndp
         J+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770783949; x=1771388749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=HNv9HFykd3qqZHtLplkGZdQ4JWcxosZjz/gpJEnTpYmKItmrU/tAcFUZPDXHL5v2an
         VJ4jKlAaPlFROY2+//uMvnqeU4wVUup31ywfa35+EvvkLvzn3lInzeVJ5oXVZLfGHVnn
         vIvGXnBFPkf5ftxvVZMFu6k6vHXK/iGRUJvPaPU7PrMMV/66p0RbUPltyrCLdZ40ijSG
         jycH6HMBs4jRwsOWsvxF3MJ+vLh4h/lriUz51jINeyT731KrIA97QVQY40huRDD7MYSh
         jxpVbnwH999bzjsoRwU/yCejiYwR0CN0GUnbRpBC2inuyTYmEvfEl1u3RUdd0ugU4yhO
         gGmA==
X-Forwarded-Encrypted: i=1; AJvYcCUZbtBJu8OJVmlMhR5n+HIsU0Aoaihi43daROHLTBPvaSD2K0EVZt1UoVf1EIOCOJ3GV4m87fXDCedO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7STRuLrpyo7PjxOr5L7+ou2FIykSNjSnDLTalfuD14UjmuPB7
	pHPWSgRcPtsslY1p3iqJ9kaMApx6cxTpu8afFFqCkUUSYVBaZDHzvWIq
X-Gm-Gg: AZuq6aKm6+z0MOaU/809TcP7M2sZWN+2HdmnzJ23PNJH9B1XbG7XC2/mrx8mE19fXKd
	qPIWRF5/G/0L87lFVYYaugWHoQYCp1g3N/mYbmXZW+tgtNbLMIy2mSWqxSqy+g5939xOPs40Ebu
	zIc3NhjbrgBJpGqW6CqbAuDlDurypHNxO3P8ViPuwphQAWTn3eHatw97Etzr+pjEt39LgDtjBem
	CS4+4RNuf7EflFEDhkrM7I9m+f7Rs76j6Q6ncAMzZBssZzCLKiKU7DLtuvNNyfLHGCkcUUG9RSE
	v90rgfs4MBPo+JGNqZ7Tjm7tVJoUFCdM53MbcHMVDaQmfj++/sf9mtHEAAn2A83twPVX7SMB0dv
	FgtqBhH2mXeVapU6+oZkfoImb7NiQcd7Rk2YZSeuhj+b56mh2MKOojmbnIhP6gTvEZbSVIp2SEP
	zoMKuXrl0CmVV31GluPEl5jcMdVRzjpj956tB9GTPGTC1knCWL
X-Received: by 2002:a17:902:f541:b0:2a9:327f:aa31 with SMTP id d9443c01a7336-2ab2abf9fa0mr8528515ad.21.1770783948590;
        Tue, 10 Feb 2026 20:25:48 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2996617dsm8413545ad.47.2026.02.10.20.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 20:25:48 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v13 1/3] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Wed, 11 Feb 2026 09:55:32 +0530
Message-Id: <20260211042534.162007-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211042534.162007-1-tessolveupstream@gmail.com>
References: <20260211042534.162007-1-tessolveupstream@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264592-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2E3AA1212E7
X-Rspamd-Action: no action

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 4eb0a7a9ee4a..c081746636d1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -876,6 +876,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


