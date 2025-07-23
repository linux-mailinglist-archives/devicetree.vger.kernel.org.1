Return-Path: <devicetree+bounces-198956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63521B0ED82
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5459B963751
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8248B280CE5;
	Wed, 23 Jul 2025 08:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q5fbrSFO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE7027A103
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753260243; cv=none; b=FynZi9Yy4WzBVZQf8YXvLcs29RJPv7DXbB1IVCqkvT/pQz6z/x/aEaIsIpbMWG+uUfeOyIX4JU5pAeZPocwvRvQFRMCBH+aLYvZny0txjO4ID+A8802X4+vZGF8V+gTdhXmPjYWm3TBsgR89GQlE9AfwB/dvPsTQ2H0dt32QD+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753260243; c=relaxed/simple;
	bh=XUasQFYoY490T8WsoG5vluLO+2GFii8wwDKUuvEBYbY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=c1dEoXu/5UsN+cyDMh0x92JjCWZQa0wMi1njglENhG0bbLhGltU7InzdguhYFJeXewUYei9Feu7K7w9kUJyBIHGTTLTM5XDqj1nVx2uedHQaQqjIU7bHwNDX8AhRjsYDtyBWZ2l1dFTcSGi8Q2CIXXl0T/8ZwaeX471x1Eszdyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q5fbrSFO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMOGp6010846
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:44:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=C81n/IdXv7ES+6R3S+HgxZx6XJbHygDB5cl
	Xpax9EVE=; b=Q5fbrSFON+NBCVlx4cQaAoXSoRk5Kfqds4QO0/GsECEK58+T5yg
	+dSo7cd0Bei1MV7cIOsKMOBOWFZ/53ebcjv7SkdWxdsfSF24ya4i6gUDDWh4tFf5
	xdZWMn+C3lkVJufdnJak6MdPoPSkDVIpno46hO3nn4DdPvcWkRWZmsXChnzj9XWr
	N5su4QsEZLLGg0ntD6cUUHhnwst8PevKWoNz/FNg63Tt+HTIPcz7WVGGwd0amVFQ
	/oB7OdtQZtveED7wEaZlh+HfkThOvd6bB2XEXWTO/M5W1zKkrhA4uSpZk+ZRjrie
	9x/VFJQ8mHHdR6fMSVkBiYNoohLbWwphb7g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804na2uh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:44:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2369dd58602so54248745ad.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753260240; x=1753865040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C81n/IdXv7ES+6R3S+HgxZx6XJbHygDB5clXpax9EVE=;
        b=RkJmR1y7BqqotRkly2d2Mmn8pCcGVuInr+G+DKPSKhKQ4/7pNxpkg/8r3GtFrZGIjg
         GwPbMNsn2QbL2q5GDJvQ+xSjBixhyG6N3zJwMnCf96MDiJ4keM+hpxE7Pm5v39qHm5HW
         1DtuoocvxMOxnJsjploUUc0RjGbqD74S8XlXvX+D8xP/0PlFxGQ/9CPfTwcV7BRs6KnB
         44QSRcbhvtH4ime0TVN1q+AbU4xEK8KosPfeY5sxVF9MjWSuuJtltV7v86Rra2sg0x4o
         VlP92YeKRSpgptskN8mK5jShWj5zketDEfuSldVDYZBMkD8/mmQzpB1JDiERUnigEhTr
         7wpg==
X-Forwarded-Encrypted: i=1; AJvYcCWUR13on4TC018wD93e/YOiV01pXhb/BgMXZ8cMkC74doOO0C2+g1HRHDkRb8AStZEcmBemiYUb+n5f@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/vdE4VsZ8PKG5sQ23HsDYWW43NoWsWR4eL6JnS7JY2i2W5UWg
	rQgV9Tu0/kQaoAzg0PllCYDbNQqmowHMkvrPWiQ7yokUvJXQmX+rsCn4Y5C3cWTBX6/a88b9aR4
	Q4aH4rELzaCwUggoO6Iw+vEl4LOPy6Sk9iyMzkUC6IsuJeIB5ViSo/8rEt0yeHUmo
X-Gm-Gg: ASbGnctL3alR3CKOLIlREMhauAFUiEJtSJGe6Lj22BGFljrENxLQbzANX6hnXDd9jW0
	JXEIT9FJ9/p2Q260TcV07FWMoqwAxEANfd+q6OHToXET1e84sTyiYyqwXZJV13nvAouXTIxDj6J
	jlvHPFTJjtyUu8ytk3pqHnIw/uT17J3400H/UYuqktdSxlvCzLnIp4iCXnCssVvYFSG3LZC+iYq
	l+6ZgHCqZWDlInkaEpH8DfnTnlohqIMZUCWemQjwq3JL2pCOA3Rrtc7kGA8zgAOeRgQ4JNPI2E2
	atJq0j2bRLLvq/8vcPmUZGLJIF8Sq3cKWDXzWRI14jvhCka1NBRJ58LxxfIe4A3gzUbe+AMuP3R
	NN5ozy9NEAZl8Oj0=
X-Received: by 2002:a17:902:cccd:b0:234:98eb:8eda with SMTP id d9443c01a7336-23f981b445cmr27163885ad.28.1753260240178;
        Wed, 23 Jul 2025 01:44:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtRsvM3+AQBUPzMzqkonNubNB+b5qEeLhTQ4cIhxEqCbs6BelcoQshzWdlOA/REzw7hsekzQ==
X-Received: by 2002:a17:902:cccd:b0:234:98eb:8eda with SMTP id d9443c01a7336-23f981b445cmr27163655ad.28.1753260239761;
        Wed, 23 Jul 2025 01:43:59 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e3c95sm91696645ad.34.2025.07.23.01.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 01:43:59 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_tingweiz@quicinc.com,
        quic_yuanjiey@quicinc.com, kernel@oss.qualcomm.com
Subject: [PATCH] arm64: dts: qcom: qcs615-ride: remove redundant gpio header file
Date: Wed, 23 Jul 2025 16:43:51 +0800
Message-Id: <20250723084351.4627-1-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AoAHVCokf786VhEawjUaPyNwChqY7Poq
X-Proofpoint-ORIG-GUID: AoAHVCokf786VhEawjUaPyNwChqY7Poq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA3MyBTYWx0ZWRfX57gFb1welECY
 sU9c0AkTuk7zG68U8kerQklZoA5uVz1E953Ywi0njXfzLn5/kFvQQIukFklCkMxZ9hzj3Tph7FM
 yHAqX9inl+P+dFofcfRsSs657k1Vk/TQMmXq/bel0LwYTNaJ5SZ0x+I0xx58/cgSW68pCe0o8Hy
 sjpn93h2ChsBKZT5h2LyxTUVB3pN2B/DOAPRS0Hae8235JwcUSG1XYyBoH6bZH/21CaVJ6aqEn3
 886G1X/pfDqlJFgUTBwP/xWc/l+C7hNvpyMohUrWeLY4LYjUIAohG+orucmq/z/0yM5dYvuGVbx
 m5VZZP7Tvc+EWQqGTv2mQPwC1AhdAhQzTgkVr263OBdd6Rz8dP7Y5eCJEx8pK8BIErwn9lD2ZXC
 lTbVlV88DeGJJ5hkLpY/s45E5CXukwD1xg33RqQwjt9N8qzOLJMLF2thhj1AdBk5kBvFI9FZ
X-Authority-Analysis: v=2.4 cv=DoFW+H/+ c=1 sm=1 tr=0 ts=6880a0d1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=EiXXGwTVnQMrs5tmZeoA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1011 mlxscore=0 mlxlogscore=910
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230073

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Remove redundant gpio header file in QCS615 RIDE DTS.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index fdad6388f6f7..55b9a62cafae 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -6,7 +6,6 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
-#include <dt-bindings/gpio/gpio.h>
 #include "sm6150.dtsi"
 #include "pm8150.dtsi"
 / {

base-commit: a933d3dc1968fcfb0ab72879ec304b1971ed1b9a
-- 
2.34.1


