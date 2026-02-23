Return-Path: <devicetree+bounces-267284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uF1PNkj6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7752C17270D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 214E93025111
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE6FB34B40F;
	Mon, 23 Feb 2026 06:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NKTrUkhx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ac38aeMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EDA34AB1D
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829802; cv=none; b=BkhSkn1nEOZQ4J51bKXtqpVuVC1vOyBzPq5+dAmkSXVVC1PWfrkcJn75mKRFn1brC6YzsjcSlMSbM3tYVyMqHeyrEu59GiJLx0a8XMvcnOId/PZbHB2Pj2EXLBj1HDTfcG0cd+4w58d9UHcXEHXYJz4n0HAAG7prtymfiwV/1Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829802; c=relaxed/simple;
	bh=DsL6kcYT3hY1q2jvZSOp/rxfO6RBNAUHqHA9yEMzJAk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SDZk4HzJYbnR7McScfWFWOsG1wuzBH01wakcliW3pWQSrUy6Z4JjKhZmK2umdbV+UuoeuprC0haE6CM6nF4ROiEPPdsxvrcMVtsVHfIfh3FjIb0aiH42NXQyC1uWXRW755ofusJ+7a6nbZHoeFcphIsyTu6zTqBJDLrJ3DsL1Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NKTrUkhx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ac38aeMm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MKPLsR1710276
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=; b=NKTrUkhxiWsvCWcm
	vcmRCE710MOBG1EFZ+jKlUiDMtVSYH2jHR5XFnMR6WXVr8EcrxTci/Kn7bYRORIa
	fEKMCteJYt8DajCcQ3jzWEHNgWBH9x+WBQYEmEne2152ptQyq9O1tGgVr5gpdxlf
	dFQRIjv9xhWC4Wu50v9X5tmTvSYKyvDOGBgNlFB4MQvk3k7lUgkaD+D5ovtTiIPZ
	gA1eOg7xku3rFNHr6hIOS/tU1ZeYU+Jj9vRhUxCkXk9tUEhT1cAzS57CrMo2UnrY
	AMIYjtpbrG2RZdsjt5p3RBX8bz+Fziy2tUd9kF7mVoNMcqMmfiMBhMa93RWpBEb2
	sfNqKw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wauq4b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a75ed2f89dso37232915ad.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829800; x=1772434600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=;
        b=Ac38aeMm+JFqKhbWS0anf/8OQ3zi2w+vHXOaHeIpcGHHMz24JP8f6iWTpXXSoEL5c4
         4eZstb4rDT2ZLID2D5TZ2U/5yiEW9Wso3COlA7rb8cDHOB+A+A3YzPjvz/KIsQembS02
         ZUlVpPqxT+/N1r2ligcpVx2mXnQfy2QBzwpycpSxJfg4jOrEKZA/1JBod9Vhrovv0FNf
         7fN08f38RRvOvRlETGjOM3qZs2VkGRybMfkFIuFIwl8gRr8qubwWe8BaCF2GQ6GV975p
         Slx62uf0CScli98+H5DaBtw/HGuqrOGgiuqiJbNd+V5D0vSjzzSiRpyJay/FDVoodAu1
         Gihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829800; x=1772434600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5AiUjeizRXgIt0pWaEk9wGXXVAIJo5RCeKWJBfIhvcE=;
        b=MrVwS7xeEeAXBXPVQ33kW+5ZBIiY1XFy9UHLyeajGnXSTxtSWV1WfEGHy8eLJTfMO2
         MVe35ar83OF2TJ2F5Ku4uvcUNVu2PS5m1FgLJkZPKelFhvgx3YOniytteJ6nF3prfcie
         6r5j3eJqdR36TsL/63KIaLude9tegFtPkk2M71KCzRn+uCWPMrRbbvoPZ/xugB6JBLnj
         rkwr1PaJTjkb1yEDK7QmLR7RXsWZTo4MFdX91enZtHMtPW5yqm4kJlaGscPmj0s6MGkv
         mefypTzyMuc4l3VX/X0W1YdzOkZrX1VKF8JgXgj/Kpg4HJVEx40JGabltF2SCZDRio/l
         yotw==
X-Forwarded-Encrypted: i=1; AJvYcCWxK9vtZ20mDZpMJ9OzYLTiP7FanOMw2v6oFgoIc5RAkqoCx1zep4HfOVOWj63CP+xRR+yBOAKiw+8U@vger.kernel.org
X-Gm-Message-State: AOJu0YwpMo2FX0c1DdRp0UqeGC1MK/c3tLgWNDRL35U77qCNTMI5VCiu
	N5FRZ5ztOf1NRgYbtaW1JWX/HFPyQA9KMBiSJtr8PTZSNSYimzgrplEUUJFoTpmtYj9keHM2b7q
	9F2txWQ4Z8/W/ymB0QZV+I2sNUuwqCRhsLEdPuMhe5RnCXS7nfD8xm6+CGtIAv3DW
X-Gm-Gg: ATEYQzyPEthGYRoB008VGtUtiE8aDurMxITk6a6ovYMd1OogWy2gNHhIldAITIUp5sP
	U+IuOeNkfavh9inzAqqxDnp+WrOEW2IgSdFVi66PMOttzNhEuGLG02+iC1VsrbYuo0ssQFmhAtT
	pczASnMh+v/hvUjf0bxTd55XKfI5TfYMlbm5/jwjJIYkfrs2IScccyfF4qokbGyPbwaLyVUBNV+
	ZHANUWJ6c+rYSzZS2c6yvJ9He5wnbjcsxr55wTNjoMhmQ21ga7FpBRFLmBy5Fq8V6p/SQOhBh+X
	24e80AWioPG3RDznXdU1wcY0PeKxC3VxQHtZsa8NmDfmKxWZdjHeIuY/Q5HOUB926wFWRrud4Hb
	4iHEcVRpr9Q0dsWDc097SJu35CV6n2o2YDGE/Z5sKJdP2wQD5ON3ASCEecMMJwr8ba9lN7zMKXx
	DqXaX8a2zF2vUF
X-Received: by 2002:a17:902:d2cb:b0:2aa:e568:164a with SMTP id d9443c01a7336-2ad7453de73mr74727905ad.31.1771829800057;
        Sun, 22 Feb 2026 22:56:40 -0800 (PST)
X-Received: by 2002:a17:902:d2cb:b0:2aa:e568:164a with SMTP id d9443c01a7336-2ad7453de73mr74727705ad.31.1771829799594;
        Sun, 22 Feb 2026 22:56:39 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:39 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:55:45 +0800
Subject: [PATCH v13 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-5-9cb44178b250@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829766; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=DsL6kcYT3hY1q2jvZSOp/rxfO6RBNAUHqHA9yEMzJAk=;
 b=QWedPA9AaKhex4ym4w+qoBHDsF0wrFknKypOlMeyS2Ij/VssAG7VHPQyN3j/KA5tLTxJRu3rk
 HHhK07Q3bjiBmdNBDhbjpw68FVZc/JPqnB8UxTmJgc5AcQHlArgI49R
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699bfa28 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfXz9W+vnS+uAzN
 0roeLep84baqiB7fXRxLSswjt11ya2w2BzP1gLH85tGo6Z8llKmjLZZi0JQ9/taQXUrRxbbWGFn
 JIIechpo0pB3m0aMbXD5nu5jQQ0wwei2lfKoHqZyScJQcveCtJ1LK32owNmk+9zJRMBx8u1N6Jh
 ykf1s9eoklQd1pE7Qa8YbGICeWSv18F2zmKQghvQb4DIYTWd2AINaeLyF1stD+On8tpZ1H6XPp8
 qH9uL1PYQrsPEGye2D4ypWLD6OkpZGYa6euZiu0az3fgrQgzb/xRJyQu7Jlpy2B+p7gK0dik42c
 p9xxvxsHVb5FOiESVpZfXwWNsxFbB8FqQx6pMU3jFaOngHk+ufZjPfxR9+KMcNSFbk7nuf7KQ3v
 AgsvIKsZy1kLmuQvDQoYEpp7ugp9+n7MbdTI+7AIZO5y+9HRqvcTjc/J0lIvmF0jeCBIyfhUmCr
 7IY5PHBGD2BeKbbS9tg==
X-Proofpoint-ORIG-GUID: 8gG4CyZFRwqGQ7s8pk_O-IGSj_NBW6xG
X-Proofpoint-GUID: 8gG4CyZFRwqGQ7s8pk_O-IGSj_NBW6xG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267284-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.15.70.40:email,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7752C17270D
X-Rspamd-Action: no action

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index e002f87361ad..2981001a7d7f 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -44,6 +44,11 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Interrupt for the ETR device connected to in-port0.
+      - description: Interrupt for the ETR device connected to in-port1.
+
   label:
     description:
       Description of a coresight device.
@@ -65,6 +70,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -72,6 +79,9 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;

-- 
2.34.1


