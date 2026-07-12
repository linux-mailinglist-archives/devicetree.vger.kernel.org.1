Return-Path: <devicetree+bounces-325060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ctavEayaU2rIcAMAu9opvQ
	(envelope-from <devicetree+bounces-325060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:46:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB77744D94
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:46:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=quora.org header.s=google header.b=POmDG+sG;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325060-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325060-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91702300B75B
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 13:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BC63A874F;
	Sun, 12 Jul 2026 13:46:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5943A873C
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 13:46:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783863977; cv=none; b=gFdnujZ5E0KHclqjPu8HJpqUb7TczzvRE+hd2IrxbPvPtXpTs3XYv0dRRVL8N+ju1Ekaj55aawUHGkrMpnKzrbuGkKLezYQM+9VMZx0e2yjJNLvKzkrzQ/9wX6p2oqVgVsYJqUkDY/S3Lwo+JtrvYvaWOnOKqnxyZDuwX70Sg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783863977; c=relaxed/simple;
	bh=745xk+d8bU62cDW9chGbuU96+vAIrE7f3vnioeAiqf4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bazFf8KBD9R0SSlDKcG8v4ySiRxhlCY31UxI0SWszsZquqay6gP3GhTcLvS7NN5vf0X3U8B/2LNW7jqvVEj0s7HQUe5eVpAP7GGvEobFyiJoF99vhvk17zo+bsKZb7iH40l6le+SDZo+H1t2jcJuP+9azjxdWg5j1quQOMn8pZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org; spf=pass smtp.mailfrom=quora.org; dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b=POmDG+sG; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-37e0a189b0bso2037374a91.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 06:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1783863975; x=1784468775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Zij5vWCaKi9JF5NLKqK6c8ikNCjMvtbTlKZgqjFTiHQ=;
        b=POmDG+sGNBoO4oCyM2S2dvC/aDGpXo2WlhvcSGvRxwq+EARfK76phSVYQUpbrT4egH
         HYADuFWq08f1ZpVncTyqiIzkS4Fe7mRHhdncv4r9eNhO7kavkzNJ4pV4Yt+9ynkQWjLi
         I1iY6uSOoCEeCY698hrX1nAKYZjlLqaPEuqKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783863975; x=1784468775;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zij5vWCaKi9JF5NLKqK6c8ikNCjMvtbTlKZgqjFTiHQ=;
        b=VOR1K1HVL6ZGMhNgrQwCggCMN9TKjX3lK7gFPasnSyjU1683cWmyrWJ6bunecEMQbu
         +F3Z3znAePpMPv8xKNSFNoerkoXkH2jPiMmcArXlM3gRt6wB5SsF77Lu3o8z4OFY3Tg6
         4I21f1YmGLd2N3OWyKNF4ULXklvt9B/kLjnPLhkgcwvgRrmwQiEP/uJtZNYZncbvmIq4
         QVziU+OOfnwfM1G3mjJgqNOIr8Gfch5uIX1sMXX+JhM6bVVG2utoy223gbiJ4t0OU6Oh
         9B4nduvn7bENYF6dZHLSLU+NgxB0kUZ6Aostc4M3KKWrF9RxaGLrGipRfK+az6xnZYcJ
         C43g==
X-Forwarded-Encrypted: i=1; AHgh+RpB8HbnCuAJlm8DykUG74cVnbTBtC95C54LuqP7cJc3srqiADcwg886M+l/Ok0h4Eiym3dN6nwDO6B5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1tAqGr+TgaHbzlLoI5lTFA4886UmUMfEfsXbsG9PfBhB7lf+I
	fcIYmRi2342FqHMUIChiUktJrytgz2GX8FtXoHlUXxLPGxplF+pwOsp+RgfdCx5zIsQ=
X-Gm-Gg: AfdE7ckyhBI4TfGAAEoTcaipJ7whmeTyX/YpbXsygqih1h8XZhS+ok1XSZzFHsaXRb4
	ouAvC7EEp9EkCzm58Nz06wGKJYgjSE/Y1M/oND/in9HRhUi0VOJo+W9x0KeCOcF+PVIMYzPYURV
	laDyTovcqckmlynKPkknZFZYd+jGHmJqjLGuk7+Uba5OyABUxzHfDN5Cw344v9MHVoHXkSi+Gf7
	6fzTqNLgg1zUQa8fFNMlTw+v3/2KSnelFIbA/bhvqEmLGIw2iIm2vpFfBkft8tabITfsfk0ajTx
	dqOhoy2KspK5Y5Kv/sgwvRSiuztBGYbjY2/j99HyfFgSh509lfls7dMEOtfAlqiSa/EiCP2hypw
	pZ9eH0G92m+pWSPHml3EKHchpeS2MHWgckdKVmlRf3/Mly0ebowpb1YpqXcPae9qdvob/tdvFqO
	9ucDFMbVGdSXpcd2WVPfQwg3n+6Rb7LLH+HCkz05QWXqXdFAcPH+e2X4xq81WwwHr+wF532S9Oe
	GULyQOZgwSbXWgYYr8ZyTRHo/R+91g5YrEoPchiRz5jMvdhWAMuJ2G4Xnk2NZK3CvM0jeQh+ka0
	gs/1m7Gh4i0ZWTOGbgbGy6TgQe8rGTVECuKfxpnALDZCmLtaXLZDmA==
X-Received: by 2002:a17:90b:3502:b0:387:e0db:bc32 with SMTP id 98e67ed59e1d1-38dc7bbdb04mr5323087a91.40.1783863975485;
        Sun, 12 Jul 2026 06:46:15 -0700 (PDT)
Received: from aegis ([2001:fd8:4d03:6b00:edd2:3bb4:3b99:6291])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38d11b82d32sm2122434a91.0.2026.07.12.06.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 06:46:14 -0700 (PDT)
From: Daniel J Blueman <daniel@quora.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	"Bjorn Andersson" <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	"Sibi Sankar" <sibi.sankar@oss.qualcomm.com>,
	"Randy Dunlap" <rdunlap@infradead.org>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Hans de Goede" <hansg@kernel.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	linux-kernel@vger.kernel.org,
	Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Akhil P Oommen <akhilpo@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
	Daniel J Blueman <daniel@quora.org>
Subject: [PATCH v4 RESEND 1/2] dt-bindings: embedded-controller: qcom,hamoa-crd-ec: add Lenovo Yoga Slim 7x
Date: Sun, 12 Jul 2026 21:45:55 +0800
Message-ID: <20260712134601.99191-1-daniel@quora.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[quora.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325060-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:sibi.sankar@oss.qualcomm.com,m:rdunlap@infradead.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hansg@kernel.org,m:bryan.odonoghue@linaro.org,m:linux-kernel@vger.kernel.org,m:anvesh.p@oss.qualcomm.com,m:maccraft123mc@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:akhilpo@oss.qualcomm.com,m:abel.vesa@oss.qualcomm.com,m:gaurav.kohli@oss.qualcomm.com,m:daniel@quora.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[quora.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,oss.qualcomm.com,infradead.org,kernel.org,linaro.org,gmail.com,quora.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[quora.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,quora.org:from_mime,quora.org:email,quora.org:mid,quora.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AB77744D94

The Lenovo Yoga Slim 7x uses the same Embedded Controller as the Qualcomm
Hamoa X1 CRD. Add a board-specific compatible with qcom,hamoa-crd-ec as
the fallback.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Daniel J Blueman <daniel@quora.org>
---
v4:
- add reviews and acknowledgements
- updated dependency URL
v3: https://lore.kernel.org/lkml/20260526112409.66325-1-daniel@quora.org/
- new patch with DT bindings
v2: https://lore.kernel.org/lkml/20260502063518.15153-1-daniel@quora.org/
v1: https://lore.kernel.org/lkml/20260429103301.17449-1-daniel@quora.org/

Dependencies:
https://lore.kernel.org/lkml/20260511-add-driver-for-ec-v9-0-e5437c39b7f8@oss.qualcomm.com/

 .../bindings/embedded-controller/qcom,hamoa-crd-ec.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-crd-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-crd-ec.yaml
index ac5a08f8f76d..813d41769c0b 100644
--- a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-crd-ec.yaml
+++ b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-crd-ec.yaml
@@ -20,6 +20,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - lenovo,yoga-slim7x-ec
               - qcom,glymur-crd-ec
               - qcom,hamoa-iot-evk-ec
           - const: qcom,hamoa-crd-ec
-- 
2.53.0


