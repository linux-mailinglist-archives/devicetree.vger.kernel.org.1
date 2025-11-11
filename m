Return-Path: <devicetree+bounces-237031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F209CC4C15C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 771C034F46C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304BD346A1B;
	Tue, 11 Nov 2025 07:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fTxLvQWb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MrvBcmLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C35A3446A3
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845647; cv=none; b=QvNWrbBl9HfbIDC0rj/EMsEA6VrdcsLgOYQR50aQ+mHJynTdvO+dsLnyWu5672ErSvUczaXbxsOTXM2N1j8eicZuL8Di+dTnb6Cu+RgaLZ3ELlyHKbxtw39MbOsXOA0xiijsNk0NgxxcikBXwLasq9kyTtdZU3SYIezwLA+Viog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845647; c=relaxed/simple;
	bh=TpiTxJW1Bz3YKEyohqJFyPy/4FKxAmL8LRUVMUuk+JM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Q2RwauYvZn7CPtr+DFR1j5LcHtLasGUmgwgHl9qLkPjkuWTe/9twi6I+6w4EPQTyg4Vg8P40quQo8JVKi5VyK21g94puSc/EsQuO0Iq7GpnvzAIg//PYwCF9/qU7BjipZ2KfnG7gy0CK59u3jp43nyeufgIiTQz8z0ihtWp73Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fTxLvQWb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MrvBcmLa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AB58NLw1230469
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JBOvaCbH4Qv
	gqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=; b=fTxLvQWbsClP7mP9hBh5pwhH8vr
	vuX7p0yRwVCBe/JGZeA7JQxkI4r4nrax6NfxrTQsAi7J2wVkITZ83FdeFsfJQCjJ
	nKoQS40EwVniTslwqkTGwSgiILEwWp4ts3a8GK/h1Q68j26jlGEShjr/EONCjzxY
	HHHjgn9r/wLXYfbrRzOo66nWwaCO1/+Icyeqz8ObC5h4S/CNFkwlQ8/szydu7+E1
	+r0rvshvYAJ6oTpXdbD9wtagij1lVl164dZnhfpEPou7TtrpQew1Zq+t41bWdVQs
	j8kqy+209GxVND4UWimn6I6AF7pi6NpU1afNDSeYnV9/CGcgG2ZFBMaGWLg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxqw0bac-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29846a9efa5so488645ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 23:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762845639; x=1763450439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JBOvaCbH4QvgqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=;
        b=MrvBcmLamgguwXPHkVvfTgiWqPv4KIc/tCd/bAJy4weJZo1HK3e8UZz8xWpd5C253w
         pLVBtfa3kd8WAB8QvaDk7KWa0tB6kOqpOoYms+lWW8c+1vm/uCfJhI+upDi0e3jUHRW+
         SkNBBWcHzIlOyqRcRvidsBAWxQ8Fekm/T3PY/+M+OwzPqC3mjbcSz+BnDDN9EOZmU6db
         b7sKcdt6BMchLigKIY1IyKBQiR/Pb4T6i285Q2jyhyh3my6iXixWsuzZdfoIoSAnfIQ7
         dck5GNtc5u8B8eXc5XnrvVCrnl5mxj+Ozi9KnUqqwa0aOsDbjZy9eKYN8QvE0Ao2O9jA
         09lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762845639; x=1763450439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JBOvaCbH4QvgqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=;
        b=kBi03q2PUamn5y8gXS+8/3oMiBXr7SfsPVa37A5uTixs8T5qJ3iMJdvG9J6fwpSKFU
         AD69AswJwpq0sS1wpWGw1wDGv2G/jd61g/kgm+AOMz2wXWxAKBkXtzMLn8eFK/docCA/
         M3yU7RYntyYPEUkGtrsQROsYGPeySlUbEiAkdtvVzKC26S8yA2+85s0ChpQos2+nsMlL
         La6pgsSVSBOIPTsMPJzDpVxUEIPoWjElKLIA9rf/XxSZdsgZd4sUqeBDZntY5knVpkSW
         bjEkjiZGOKvE1XJ+gc/G/ilxa/kvPuoSEZ4SZYAyRAK7fLjkD8vERLYjMC5KxCtwWLSI
         3p/g==
X-Forwarded-Encrypted: i=1; AJvYcCWhGEyXtMNn1s7AbJe3HMxfytvJYT+ZZwY6xPXkybQCoZfhwS1S2lgBRqYhvxg0/04HVlrBAlrsEnrK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3lTkwcVTI9QeZVWFi/5CIK6S9oDQU6cNEKutNy/BD1mQ5ugLE
	LmdYm3slAE+Ha3kyAJGoY7Kr1UmtXzhMBi60sV2n9Hab/cNT9b/Gz+89jmKYskEBhFAsnTdPY7z
	0vjUXodF2AipeWkcvVgI6EtWpMNAd/6/6u9Xz289DszC8mwu32UraPZoikE7iz1cb
X-Gm-Gg: ASbGncuCZhWmugXDP6Mw/88nHaQz3W+CShIyUOw5OhoOS7d90OIQLbRfXSzDjg7mncD
	q7h3FWud4rF5kl4wmk+B+lSzmc+TxojL1yjerAFyGXFpDOtKyT2jlM8tKSAUSb23d1y1/4Pdvjn
	cXTmae8nCDtoOuLmB0n1Jb1xue5I9Yf9YGBNpOL6hY89m+UcPs65CFStI8yxU7UCiaatZQGu537
	l+kI4yMpIniyvHE799XH0KAi52c+8CTrut/f5yjAuO8zZvMmbZzspikFokHAURgAsMkS89OKmxW
	s1VSrPq4J+3wlX1rElqwUWTSmUqtNc9ZnDvc6JI5niWcnEcL0hUqMnDNr+esYwq0g7OVrfsHPSL
	6z7nf/k2413VS3Tzw9cKCOWIWq6rGUFtqISza
X-Received: by 2002:a17:902:f684:b0:290:dc5d:c0d0 with SMTP id d9443c01a7336-297e56d0e12mr161234405ad.49.1762845638719;
        Mon, 10 Nov 2025 23:20:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpLGQ9okfeOM8Fe2OiLV41keFkHRb8jT/CA0R0Bia88nwxW5ezVZaFGAyBgW1P3rMITHqq3w==
X-Received: by 2002:a17:902:f684:b0:290:dc5d:c0d0 with SMTP id d9443c01a7336-297e56d0e12mr161233995ad.49.1762845638234;
        Mon, 10 Nov 2025 23:20:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68c822dsm20035604a91.8.2025.11.10.23.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 23:20:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
Date: Tue, 11 Nov 2025 12:50:24 +0530
Message-Id: <20251111072025.2199142-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251111072025.2199142-1-krishna.kurapati@oss.qualcomm.com>
References: <20251111072025.2199142-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA1NiBTYWx0ZWRfXx5zsnNWZz/nZ
 wlJaJOecG4q5t39ufgVigrFwkMc+paWmMxa9d6BBz8Ft456BQvmY9PC3fsWnGOrDaSHi6vxwYp3
 CGjzoYdiHbGFlmhyfU4nYAhqysNMpUOR7os07okmpTauN8/2bx13lLi8fiEm+krLn0OlgBqEyxL
 UM9fkQ5sPqUtJNI+VWjxO+WS9aq2Yp+oMJ7jQQScq9D3bwIoSeh+HV3jcpG0D19txh+s+PiwGJC
 UXPeS9jMdbQzyUrRk8W6tVPfYa1KA6nH+HeVWWzv28PDjDJbUTZFKxunOsM9c+iGBw1O/5NF6k6
 jJbX5J5AFO2kSETs/KN5+LfprU+GlqdhQ/0JQrz4W9ONvfbZcJmCqpBDt8AYdU/Bm6oAAJtM3Ev
 m8VVU0+gCG0fV6uRjiHII10K1xWhaA==
X-Proofpoint-GUID: 6tAxDNy0XpVjYhvDmoXcleGYi4XQaFRj
X-Proofpoint-ORIG-GUID: 6tAxDNy0XpVjYhvDmoXcleGYi4XQaFRj
X-Authority-Analysis: v=2.4 cv=CeIFJbrl c=1 sm=1 tr=0 ts=6912e3c7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UO34u3PHWDRxg_ly3EkA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110056

Update the bindings to support reading ID state and VBUS, as per the
HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
VBUS must be at VSafe0V before re-enabling VBUS.

Add id-gpios property to describe the input gpio for USB ID pin.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
index bec1c8047bc0..06099e93c6c3 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
@@ -25,6 +25,14 @@ properties:
   interrupts:
     maxItems: 1
 
+  id-gpios:
+    description:
+      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
+      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
+      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
+      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: OF graph bindings (specified in bindings/graph.txt) that model
-- 
2.34.1


