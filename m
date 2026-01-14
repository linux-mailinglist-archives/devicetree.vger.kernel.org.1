Return-Path: <devicetree+bounces-255220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCF0D214B4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FBE5303198F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B5E535EDC1;
	Wed, 14 Jan 2026 21:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IC5K4dQ0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U3UJh1YQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10179346AE8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425485; cv=none; b=CxF9oQZMXoCJ+oYIwoiSJoIWNhqZ74VYOD9b/gR5iAqUL8t0iS8jRjyb3TDEiPeafK8RqF8smZBE6pcq4GVAYe47GjdCciBwTWJw/b643t01+xy7+O/xzQkHagZnzEaPF31CnLAfIbdi1iPwAG5z/HrxRY3kBGGtKOk5hM8MzJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425485; c=relaxed/simple;
	bh=KCD8mpSJBcMuXvj8iPeHFULwYB7wYTPxtG0IzBPkGlY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jn5BfNyw0seH0FSt6aNxOF1B1FwMknllifkmEDgkrvGaKGzNSNUJ3w1JsVQGyxhmoB9IpVhxaH91qBtFS82HyPyNa7Sp2dVg/2HxnFIqCH6CDXoR0FgRTmSwvksZTP5UhBp25sj+HR8PoZgvnNFuKAKfTw+uXKk67ERFQ1IEaeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IC5K4dQ0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U3UJh1YQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EKppCk1853494
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tXkDQ3+jMXQ
	qPPuK6mMrk1+pxz6fxmsNJ1KrtU9GbaM=; b=IC5K4dQ0+436/BXNAjS8oJVTScv
	jTRPFiE1aDrwKV043bY3NPNeg2JvWTOMF2QEJDz9YyY7qTJmEYU/ZrOtRQAXwBZR
	EYhHfI1SPLfmSH3M0WJHFcjeSC8vvDyQ4CKUJEzMCJsu4FZDX5WFFkkjjwcFBxIU
	KQWGYoT+SLfcORi60uS0uuyhxsX50j7xaeTCA1/7oB1Pfz9cC4o126ijaWfs18ed
	/Ecj+pFNw9R5VP14/oQkcN9lvqpd9ixiyIOpnJH5doNwndXVbZiaCe/1OISusDoU
	3ZPLGCms8dICzu9/K7bhaoUtMPnC2FOkAjgA7NUSCTPCgk7cJ4J/IHMntzA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj8821f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:03 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-122008d48e5so359015c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768425483; x=1769030283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXkDQ3+jMXQqPPuK6mMrk1+pxz6fxmsNJ1KrtU9GbaM=;
        b=U3UJh1YQsI+apIZHYyN1/c+KfwStoDpa7LBkCL5l2YsuxgwuePh8Ap3z2BQpvK7Ioz
         RZjHbkfrJRnGoXXqGhKemqrH5bZk/TcGpr3hIqiBpq+wGhqCAH0f9kxLHW5jHiWO40K1
         1XWs7ru7Is/TZcOT9mJ6YHmD3nmjmgyM9SSSvodGUkS8bYGlTZnJKtcEvLfMtqTtXzs6
         QiJrADy+Q+rPR22MCdwb7eoEse7aD4Ny3lzWO5qzyAw3Jp4f3HajAszqlu+UKwBbKReS
         MsuLTf6clNetd4z+TP11uTvFE5yckPNZ8MzJGMRI2AB1nVa5IZAr8yQn+PoboesDFs88
         /IWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768425483; x=1769030283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tXkDQ3+jMXQqPPuK6mMrk1+pxz6fxmsNJ1KrtU9GbaM=;
        b=ZaVyZBBTRRByYdQBO9CSJtG71yh+CuqR51y4N9U/4CNwbnjWn/7v/Cb3Cu/FXJZ9Ng
         6HCOAtq05z/boL9bDvP5liB7m4YrPF4WIaTKy+nkg780Xm4lGo2bk3u57NAwBLstXOgN
         GNr1tF6MayuUfzr0HTcqy+xT3f+CG66+qbeQa6scvViSyOYElBZoi9lSirTyw8H4ri9t
         7vsP7dvljuZs39GXRC21gk/HFZ8/t3CyttWdlcPoMPi5kqCL77PKwGsKO91Bdd41V+q0
         TdMYZG1HXQgqOH+Erk/FNlmOacDvx2Px7xaKvilTq7fokTXQMIYi5+59gQ7dKseXpamw
         WITw==
X-Forwarded-Encrypted: i=1; AJvYcCUlQdY9OcjiZ4dghXFMfrTVqeYX3FKEb0bE+dBw1ma4q0WMalicfX8ADNJ0DvpLGbZOgrArmHxJsKHM@vger.kernel.org
X-Gm-Message-State: AOJu0YzUPy8i0lA//k6Umw71Ls3e6usNHObxyeYHRDBoEJJJKvRchnA4
	00FgnYLsO9cha0CBr4qUEV22NuYTi9AQvS+QD3Z8W5dG9LAXBYCNtVcOEqYK5E9C8o70SJAE2LM
	bZF1f72RKAAPlyuebgfAoSUrjbwat+LuoVv6G+K4auPey2OE2AoUgKlQ4SSymeZr3
X-Gm-Gg: AY/fxX5EU1lcLndWXDZwElp9kwrORcJKWX3X3gIzQtRnB8//DsxUHhEsO8mkhGJdnjd
	lcVTLsgm9GwqbSUGaFsQdEQvgDcpPuUmaRMh1rMynmO9UIdJZsaC2pLdNajV7SuOrKU+dDj1TW0
	vPZArJQShd8caCLKiIrq2M9kkQ5RZSF564GPxba0UiS4Qin936mRG8csom/tCKR49z5DN6X5NBm
	AaVU2Olw4jPEbd/OyjUeN7yePj761wdzQDhKxLIfXChXUDbFS1/ao24o1bYR0neSepJlC7AMENa
	Zy5sbD3yqwI8ZlSQzVVXaRMVsyQsgioWqLhLKZB0ZrkRLr0QHZkdVLXckh78CHG8M8immHIRI5b
	hBNst2TIPpnfb+W+oAty0NDBlCJpRIBszYE8ydf7RJWRa8P7t8GBvldfL/MYOj5iEcR5rA2bV
X-Received: by 2002:a05:7022:e1b:b0:11b:9e5e:1a66 with SMTP id a92af1059eb24-12336a39a19mr4656756c88.14.1768425482712;
        Wed, 14 Jan 2026 13:18:02 -0800 (PST)
X-Received: by 2002:a05:7022:e1b:b0:11b:9e5e:1a66 with SMTP id a92af1059eb24-12336a39a19mr4656729c88.14.1768425482161;
        Wed, 14 Jan 2026 13:18:02 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243421esm32167118c88.2.2026.01.14.13.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:18:01 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: soc: qcom: qcom,pmic-glink: Update X1E80100 compatible string
Date: Wed, 14 Jan 2026 13:17:56 -0800
Message-Id: <20260114211759.2740309-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: zX0OzZ7j6o1x4dFBHANjW1w-UGh5mWJn
X-Proofpoint-ORIG-GUID: zX0OzZ7j6o1x4dFBHANjW1w-UGh5mWJn
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=6968080b cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=04UxXR2pUAMIs363SnUA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3NCBTYWx0ZWRfXxIi5MExflfLB
 5Hp7BlbpGbfqCwMBDWgxV1npZ1dloUe3KLh+4Fh3hFRSv4ITQ3WNEMios2l8QIplDNC2dVyU0Rd
 L0dyKFn7G0wbo756ttVq2UoRERIApMHvo1728FOquZKrDhIIfJW4yA/7t+Q859qfR7F7ttMfvLT
 4XRT1RJfhz82aibjV2fx7n9fCXB5MjtkMPB8WiyI/zxKxJaL4oHnskub6vbzBCeGNlIJ8ioNk0X
 DL3NhJA8FGiHRTR4RTLlSVxEwwSfhGmXWJiqg4aYEHdFXErCZHoYhyojA3XoCn56gWbd9zTO50i
 l5HeOB+LEG8ZNDOD5x5cRrRz5t87nOH2V9viGJeCwU8illAR7+UEMptR8N1wSxRLga7E75Kb44B
 L3YWDyc3dlFjoV2qFDZkPKRkwwR+39cJl5KeZgA5Lfase47MuN1NbYMJrLbzGdj7wOyoiZ/hCb4
 rABT9AMpyX2v9dhz+Lw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140174

Currently, the X1E80100 compatible string is defined to fallback onto
SM8550 which is incorrect as X1E80100 and SM8550 are not compatible
devices. Update "qcom,x1e80100-pmic-glink" to be a standalone compatible
string.

For now leave the original X1E80100 definition with fallback to SM8550
as is inorder to not break current definitions. This will be removed after
a grace period.

Fixes: 0ebeba917f03 ("dt-bindings: soc: qcom: qcom,pmic-glink: document X1E80100 compatible")
Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 7085bf88afab..012c5661115d 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,sm8350-pmic-glink
               - qcom,sm8450-pmic-glink
               - qcom,sm8550-pmic-glink
+              - qcom,x1e80100-pmic-glink
           - const: qcom,pmic-glink
       - items:
           - enum:
-- 
2.34.1


