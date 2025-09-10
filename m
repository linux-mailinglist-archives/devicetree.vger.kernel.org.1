Return-Path: <devicetree+bounces-215662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C25B5246B
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 01:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFE9DA823B5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 23:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F9A313529;
	Wed, 10 Sep 2025 23:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NzudkKRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2192307AD6
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757545566; cv=none; b=tV4M7YqyQm+fXQsD+1BA9X5bzzI6uUMo3CSlDgw87+KG14HjfopHP4V6BF1iygHTmRI01gX9bLXFl3xdJroE/OPEiGhZX2SNPuEnx5jOCnfwPyPrtaLryJ3DfGnYDyYyUjwtAowMdbNyFwcZGv4LiEOQPNNtI5lmVYUZXCYtZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757545566; c=relaxed/simple;
	bh=a+mbRp+XcSiq9uPRT5b+JZ1OJhZQF8kNQwJLg1rWuEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f1Fixw1OX7MVF1fcMc9lhcxDjN+u7JhFIoR3QXxCg5CoA7J1wk/CbvLgRUkTANTph10ToUVRNxn1CkRbQvlVaUSWEbJH+IYYpIk+GcbQM1W1EpFBbha9ipOBWEBzQwnhH0LoXZxv+/ro+u59Hj1NM90kU3NnIN9bLkDIjs3bEuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NzudkKRC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACgYrf029955
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mV2hiYuZcluDbrf0EuyfcF8cfLEOWhGcyAsYZL4u0tE=; b=NzudkKRCMvh6catk
	ISiJdduxnrqOqokdgcS8Kc77oukh5BTxz9O8z6nX/GMH1OGL5R6HIweeoa39iVV5
	dBGqhUMEfWj0GRFgd3fOOFFHngx5NVcwkXZmO5TBEW1ucDfNBdaE7Nvik4Pob6sU
	ValeJPksr8P472ew5vh4CiH35BNgzZSFgpP9eLqgqDWW4cWxapMYllbjH1Uv5H3+
	0Ljy0MgZ6Bq+tLj5AaJnN1l1/TyZT2gtpXiucrV4nMbR8gTreg2m5bM4tQWxyCRF
	bCnKLkeI3j3f1aSodLKuAsa0GZK8RAZS1uqW9d+wBGbtnoH52+YW+NjKEOMwQVQN
	6lD5jw==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapntme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:05:56 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-43b7cbbc466so122466b6e.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757545556; x=1758150356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mV2hiYuZcluDbrf0EuyfcF8cfLEOWhGcyAsYZL4u0tE=;
        b=tL4WDkVsTyKGN2r9ccuF37XkZovHZVQsJMc4mH36F3X/b3H+Igo+h2PDBWrTPlsgY/
         OtZ8J0YaxbYHFGOnlLL5DcYCW/xUB60x22VVPojf59Z+LNAqpDMnyZd95DCzVRnLw8hd
         N+AWRbEhkXdiVC5uC85kcP4EEq2rl1uQIaXVlb2hFktqVnGe8KeBNYunz1iLD9Qso5FK
         0DMcJcU2lep/W0tAPJBQL7V7H5i+m7SCTQt5fIopfX9XI+jvbkQgAZK1LOTDhYm8CMvh
         6NAoJbeYaQ1o+xezopIkHWSSMNpe0EOB3JjhFVT/cxhSl4M2owphfw+3ZO0UwuON4sGo
         M+Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUR0ytu2SYei6YRsKviSkh2YMs/1P/Xsl0Nr6NXs1eRZ8TwkSav8D7trukn0inQGXKd9xzUWS22XTFw@vger.kernel.org
X-Gm-Message-State: AOJu0YwtdApfW+LezNJ33//176mDao3NKGj8se18czHakKQpKh8jr8Of
	3SJ3dtY97ky2zRjO9pZoId7CW9Z0Ui9U6FqZ/PRL/hwiw4czPRZ2ZNp2XQrzP+dVn/ftOpbK4ep
	nRCjGm7oUtm5a9Pa48pE4DLGpnsiksEvX6Dsdpb8Xz9L2LpUu3DP5wdb9N+HilT74
X-Gm-Gg: ASbGncvLN59hUyDLcz0fUld8q4uSGBHsExP2MrizhDWZHodw9ZV0iLhzvrkEqYvH7pu
	kLQGwBfADv5ctrZPmu1Oo6r7V5SeHx3YyxjpbYFoG9Uql1V44NW8mheaiGdpeGleHAg3GgC2mTk
	TZNV//3MqPgycf0lricGrDKrX7LsYo0rR32j1I1EXXJJhAhxRkAWXYMpQGGCRIhg9BaQI8TX5Oq
	ykDYfhhs/hsMS0KBKnDMTz8UgkmrkF5YV/OaBDWh9mQV5I8rJlDE/T5IL5pD1rdYTg+zW2T4arM
	e5YIrLY4Elkwr5fh+OOMWJry3/XEIRMCl6Nw2oNe+gkaq0P66nso7LSeIt0Ubd29O9JXAkPcU6K
	PamXPNbH8kco+0W9RD2+ODkIiFzLAs5hbdZ9PgxY=
X-Received: by 2002:a05:6808:18aa:b0:438:4347:1f34 with SMTP id 5614622812f47-43b7bba390fmr555918b6e.13.1757545555807;
        Wed, 10 Sep 2025 16:05:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdh7ojtBsxC2nlAytzO2JMr1xMz/sVcQfBBtCFxe+Q9yrqt42iTb5wzswfM779K+lTyNap/Q==
X-Received: by 2002:a05:6808:18aa:b0:438:4347:1f34 with SMTP id 5614622812f47-43b7bba390fmr555908b6e.13.1757545555342;
        Wed, 10 Sep 2025 16:05:55 -0700 (PDT)
Received: from [192.168.86.59] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b7f1f7d63sm23944b6e.29.2025.09.10.16.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 16:05:54 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 18:05:37 -0500
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Particle Industries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-tachyon-v1-1-5090bfd133e0@oss.qualcomm.com>
References: <20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com>
In-Reply-To: <20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=951;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=a+mbRp+XcSiq9uPRT5b+JZ1OJhZQF8kNQwJLg1rWuEc=;
 b=owEBgwJ8/ZANAwAKAQsfOT8Nma3FAcsmYgBowgRQ3OyGfZaZGczWqXzLhyf8aWUIuqP6uejGI
 tgO5Jr2mJ6JAkkEAAEKADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaMIEUBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcU/AQ//Wu8IZ7Upkkm8KLIHoTM1QIQoxASJGc4mx9kLPyx
 HD4xWug8iBAMXyya1T6lVvnU99VR00jzEG/z7kZNxqBf6IOxme/9fkTPAxp2R8oclbYIRKiKn+y
 nL+r88ShFwDPMojpZpxcPby9EEVbuuve1ERylZT3CpTJ5mOFBDh272jzlMhYnreer9CgNgq1jNJ
 Y1cAj3cm3MV2EMcX7cnP9zD9Hpf6GZ94BoEJaeFwrbRO44RRGENSWEAOR2WqTs8iD1q4LBChKTH
 x/oDONonV6f2bW1tk4g/vc3x8gs5fb88TJyUJaDsq5yqY+MWmfMEId6bVcNU1dZQ44hpjJJoB4a
 /Z0jWKsDQE96zBbkTjNWlAJz25JKVC9h/nkQHcZN4TI9QEvvtRo03bVkOO775igE1MCD3HLziZW
 2FUly8PzjhTtGN7zQF1h3Q17ZejnKsf6wkYqf18tV/wUUR7zB8lsHxoUyAQvvd/4wFMc6wEafde
 GxhCTm2mZ1nX38twWpZQgBRsYt9hz3J6HlYKXJRxwGq0LGATN4UtGZUiocdSz/5Bcs2aXtfkCGt
 XdkTeEWrS9GdKoxV9N+NXxVJV4VGZWGWFneVpGWPR4ONEqX/O3o+Aja/C9A3M9DL07mbuEyailI
 jhH7DUHc3qQjK7rPZbNgXWLseeLfnyeQ2fF1wYu8VGSY=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c20454 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=7AODkVuKAAAA:8 a=EUspDBNiAAAA:8
 a=yJQI281MYtr6_Kcd3kEA:9 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
 a=sRHRY8H3vKB1GfNvUtpx:22
X-Proofpoint-GUID: ly967IL2lqB8434bmXTxFDgCILvi1kSQ
X-Proofpoint-ORIG-GUID: ly967IL2lqB8434bmXTxFDgCILvi1kSQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX2XniFwtwwxMD
 vEPI158sQ0GOk6hKbzIOjrTXzvSM+e65SO7tZejofer+491YrrcDO0Gg0iWJrXufSH3RuZ28oS+
 aZpNp89HRGm8b44+09V7tTFY72k5J5pck4l+w5cAiYuhMtcdve78P2t2pn18c2GV0S9xcMU4jZS
 lzvaM8Xf9t3ZKCK30Zbvz7fHZqmOAijQXYmM0r5WB+0jA6h5OpFGeJa432YQeNip+GCUvua+B22
 NJ93x7nGcXVuJxCkBdD2yPHh2SkyJcI+OENMsAU2FF/ChzZ/IkC+a/Fx/E4IWWMFYVuOXoAP3/5
 ZWIOS7jXbK2pCKSjRV03ePlulf4NXXOOtWd8OLygUbGDhshf9UHT5JaFiq3vwzxzy1pWm6ZwcLq
 aBZwTScm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

Particle is a San Francisco-based company providing an integrated IoT
Platform-as-a-Service.

https://www.particle.io/

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b4ee22ea7f1687ad6659b6846b070a73c9e27574..202c2f6d5942eb0efb9ff4d938c5bc447957df06 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1221,6 +1221,8 @@ patternProperties:
     description: Parade Technologies Inc.
   "^parallax,.*":
     description: Parallax Inc.
+  "^particle,.*":
+    description: Particle Industries, Inc.
   "^pda,.*":
     description: Precision Design Associates, Inc.
   "^pegatron,.*":

-- 
2.51.0


