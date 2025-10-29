Return-Path: <devicetree+bounces-232836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F89C1BF0D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A95F19C2082
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180A53559E8;
	Wed, 29 Oct 2025 16:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fp4KlcOi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SyZaAezx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4DA3559DD
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761753693; cv=none; b=AdvRPY1kJFeVYQg07fNULCi/3tfL1TJUGVlYy0PAtbTexVeO9NdLRy7OuIV6g7glKyI7mHczn9tCiWBMDY/h+nOzGIVwaMJ4ADY+jExRUE37W17X8sYZAVanB42wiCmKAwlgQxf+qUsS+V3CVIHdT+9BLwbUQU2K5mFnMsAbURU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761753693; c=relaxed/simple;
	bh=EKU/HsGn5C1um2y0d1RTOlDdIIAAM6JbAG4htV2yCb0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AJGEPSTnIUtVOHSGwD5SrWsKYuKk99q4QL3N8odJXw7Ko99FMADxiAbSlT+PERoH7T9rqYfTSlIuMG8TaifCmE3xKqZHMZC06j4QJF39SCPTMcSCbrbO7oPSkX95+mjBFMyjrGnzF4yqtXF2oECiqJn72vbAk8oBTXGL7Ute7gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fp4KlcOi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SyZaAezx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TBe8Ev434943
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IEq2aSb00s4
	qKXheRiZL2KxJNF7/Ul190P2t2smNwvw=; b=Fp4KlcOisn08BOseA3d2L7cvsCh
	+XpBrZOspxy9+Xgbu+dU0wa2K2vKPOtqFvNgvjGeX50hQCwyczD6UPIKVci6Z8yR
	LtWEj2lBNTTCQRvodytoceCXnPiiFH/SnZn8F5nGAujRGdkByChv05TrW9Doe+uG
	u1RqPO4OtY1SDq/73NvjxToORamprtc6h+sFnF7b+lUqjofQglI6yPagrpVYesRb
	il4Mzuc5mdakde9uvcnyJ/P+oUBOxW+vXKy+EUWoedtlO4XOqHfOiUNRnlTUy6zT
	0tK2zzEnTfwMGT4Z4qogmS6FeLSUBlyhqs1eewbCdlNn1vGC32DV5uT42qg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3j8jrt5t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:30 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-54a887b39b2so15269048e0c.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761753689; x=1762358489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IEq2aSb00s4qKXheRiZL2KxJNF7/Ul190P2t2smNwvw=;
        b=SyZaAezx6suVil+wO1YJtjWKtYwPChc8sMKAvSnyMQIP0bYMvjoQM81nKzJAKrtHca
         bM3FMxJY1XSDG+NoP8gQ+0NbCDSu1UDlOKJq7rMpC0XwMWc9OmoZOUo5tyTgpI59dpCb
         SGCmbyzJacG8UU51pd2Hz0NoHL40JTefzOEkblwhNy03KpO10D06zKhkB8IHYLgg+AW3
         XoZWosSYJYl/GfFgn7wskS5czyO9m0O7Wjw61K0eva8bUQrg/shQ3k+J+pEKV+tGF9Xy
         qoobDEJCYgpxllX05Rsws3Hr9xpNk4XDyfp0LrW0qE+MxhrX9GNItgDUQTdAKnwNFfVE
         x4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761753689; x=1762358489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IEq2aSb00s4qKXheRiZL2KxJNF7/Ul190P2t2smNwvw=;
        b=jy9QssB9xfDMgTcGGdG3qN9ocLbS/WVh3j/nWo5QXh253YoNDKDqc2BoSOA5FZIHRv
         1J1EIlvjz1xarGXhjUNXvIEfT7Drk90bWgwGWoVX/XsDsbY1997dZguylWraYlii8YNF
         M07Nhu1VjeOTq55uHX0/XpmB/JTMkxQjcQuf1fMSMyfJ+GIreujAoC+r3ZURH8n4fc5F
         vI0zpKHaa6XZ4PMElJTVC+9kWBCsVdeqWvd/kP1bkUzM9QLdthz4Cd/56mftscOfQdxW
         72pwWQOl9o8ksN5EuSlDHSSvEYS/1SFz9d4lXt57yXEFkjJtKeuCaLl9Vjn/skGVbc2D
         tJcw==
X-Forwarded-Encrypted: i=1; AJvYcCXGslybEmm0tQOuuBYNiVQwvko2LPInwhi96iXgxUmvEfkTMisF7Nt5ADP/FSO+v4hN6QFRzWoWcquA@vger.kernel.org
X-Gm-Message-State: AOJu0YxePOXPovRYosNRpowmAOlDwZlOroo+0zE0anW4onzwY9Bp2Txl
	JJRbQ8icZ9quQ96m8KlB5xi3mP4oUZEYddvct6pYzfdgeF9+4eIkLZK2kZpP6+nOwsp4qq1dnUD
	t91Xv3w5+wwxaodDCprjlz0zEZKmlxcHynI/GLZd5tJeen7CmTTXxFzfUm830mwkw
X-Gm-Gg: ASbGncvgQEDpkaTL3VlN1oAkGJqCovpn61vBX7yCfQMJfWnnafGQSgsokoc+ro7qd73
	us5dRj96uT3WXA6lA8MrZBKsB/f7aEBeTAvJbjh9Cfn8X1sPfMPuFyUUMPSyLwFR+T4Gi+E8wNr
	+VE2RwxTkUy8vUPpPX49Nyyg91C8sYw7ZfH8wpZc1WL4tTpNJijnX3PfU2HNKINdOpbksES/WJ4
	Jv5n/c7XOmeNbon25Cd6e1kFq0aTpxOC5jXioe3J9FnVZ5w9HjuvzpdweHZis6XcYskZImIGRws
	V4zGCt0K1RULbTidC174QTM5pm3sM5zOMRex0F08zpkwFV5kdultFhNkRV4H5hqNYqQUafBH7YX
	afGhyPHfoJ9cw
X-Received: by 2002:a05:6122:90a:b0:556:97dc:4a83 with SMTP id 71dfb90a1353d-55814267160mr1315811e0c.14.1761753683466;
        Wed, 29 Oct 2025 09:01:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3Y9WaBzilw+bQFAcYPxp8fJjA+27I+dMEnAhZub51yTwrAHnCEemtfq+h8JeZrRrzVZ13BQ==
X-Received: by 2002:a05:6122:90a:b0:556:97dc:4a83 with SMTP id 71dfb90a1353d-55814267160mr1314998e0c.14.1761753680063;
        Wed, 29 Oct 2025 09:01:20 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e27f7b8sm57154535e9.0.2025.10.29.09.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 09:01:19 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 4/4] ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
Date: Wed, 29 Oct 2025 16:01:01 +0000
Message-ID: <20251029160101.423209-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDEyNSBTYWx0ZWRfX8Tn4O8Mgkh8L
 +Ja/z6Mt0haK3cyOQFvHltypvUHzL76U0Xhi6dmWWlXbI5mfxfkbFbmSW1gIuDzaLNpcIvZ+jqE
 WQRJP8wOJFwlVqi6+xzxj9pRXx9iNX2V0OjO2zTHb80sRICtd14WhkdZQy3ITQR3gyWSjuJ2xUa
 HYJduYb2GO7Uvt5ZTBdXcGc0JLLAe6i5UD0Ikm15QzNnyGr87qFMnabSv0WxxTlSUbq1uElZ9aF
 m/vLTGo98q3Y0e/EI54ahyxQycdc530a36RBhIpz/NbER7zLlpkKLHK1h+3+2mJEjsa0Rwv8is7
 2a6Vcy0DR2t02qXd70cxQXoJ8sgEE92bQgqJZdIz0mqsayPbNcKCLRoZfbN8cr8KvV5+SEEacCD
 vgfjf37n+PWqo+J146voUyo6sfLY3w==
X-Authority-Analysis: v=2.4 cv=FOoWBuos c=1 sm=1 tr=0 ts=69023a5a cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0AadgyblTOGOoKeRh1oA:9 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: jo8tHIgFFyHvHb5vJyJiNrIm3Q5nfXBC
X-Proofpoint-GUID: jo8tHIgFFyHvHb5vJyJiNrIm3Q5nfXBC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290125

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
VA macro codec, which looks like compatible with SM8450, however one of
the clocks macro is available in this SoC. So updated the bindings to
allow min-clocks to be 3 to be able to use SM8450 compatible for
SM6115.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,lpass-va-macro.yaml | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index 5b450f227b70..1ac3392776ca 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -26,6 +26,10 @@ properties:
               - qcom,sm8750-lpass-va-macro
               - qcom,x1e80100-lpass-va-macro
           - const: qcom,sm8550-lpass-va-macro
+      - items:
+          - enum:
+              - qcom,sm6115-lpass-va-macro
+          - const: qcom,sm8450-lpass-va-macro
 
   reg:
     maxItems: 1
@@ -44,9 +48,9 @@ properties:
     minItems: 1
     items:
       - const: mclk
-      - const: macro
       - const: dcodec
       - const: npl
+      - const: macro
 
   clock-output-names:
     maxItems: 1
@@ -125,10 +129,10 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 4
+          minItems: 3
           maxItems: 4
         clock-names:
-          minItems: 4
+          minItems: 3
           maxItems: 4
 
   - if:
-- 
2.51.0


