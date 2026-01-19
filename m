Return-Path: <devicetree+bounces-256755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F7D3A3E9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 226403029C21
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD92350D78;
	Mon, 19 Jan 2026 09:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CVr/tD+4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YCcw0K06"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E08309EF7
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768816771; cv=none; b=MqgODIKIhb7avxa8TW0IybPFNFluWucaWgqqgktZ8hHZAxV32Qef14IwVocrrM9nG2XUvbLyXvbaU0HmX3CXQJtBBQMLrNgYo/FqqebKmBhbHN4L8oA/eQjvgegRYwvOAsHaKW4MdHwR5WGByp68eP7m72MpvioZuiqhaQB4QVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768816771; c=relaxed/simple;
	bh=v4I27t4zkyHdh81jd8a+aaCsW9mByFB6MjUuHZRC0OY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dRoOgVH0ux+SJbJf3IJdJYKBBQBI0aR/RwW09VpBS6e59UlGSL35WemHa51jhLQwB7qiRXXtdE2eN6LGhZBSsFvQ0PDh8c3GOMds0DWFSQK4/R+9I9AvZNzz2Gqip2JxDslXIp3HTvVDHFuzoGDcbT6vVL0vMTIGZaqYPzF98OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CVr/tD+4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YCcw0K06; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J914l41044553
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lcb4tTnMlEy
	le8kREMhz/Sgr7ZDAdcJCOY5TwdgAjHw=; b=CVr/tD+4WhueomXEr/JWs2JQzfp
	5SaUpZVpYlz3DRQkqDJuA0fLhVxq61wZKq/ZJ9i03NPJBOD20AU1UJyQQ3IWXI0B
	OWMqwLK7ilyyJuoxYg8G+FlkLwQBpboGGP5fkPqzGXa9ohDy/BxM8+f1za1/0HhO
	TBwa/rAhdXch9SWEXhpIOnaE/Ltk9XRjKdVYxe8zbTVKHuW/RDyRkfkVoj24dDSu
	bOdHdf8705/GbPTpuIkAqUhh7SYnFcBYULMRlusMlXIMfMxZXkWbcijvo87JbHHe
	/f9w/l00u7rSxIJ5IZGYY17WRnoVtGDNu9cIiy1kQBgzTqiD6PRLmDMAR+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bs79ehnb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:59:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f07fbd0so212742985a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768816765; x=1769421565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcb4tTnMlEyle8kREMhz/Sgr7ZDAdcJCOY5TwdgAjHw=;
        b=YCcw0K066PAnRV9IdKF9frJ9HFTlK5TAXbrdRGtqLcMqpcS7ZdHXrIO6BOy6rTFQsc
         PloCXpznkfEBbCJaOTZclyqkYYrm6A/hvhZJanyFgLCGgaN8SbKYz0ks5ihVN3M4Xvhi
         IlVjRNLJhUQRgGxpyOtLF2dU1MmzO5wYUGZWUDlolWCP5hZzJucLkFnI5fV2k0Wl9Iua
         yxCl07nag+tscC84Fnh0DYjEdwc4rnTXXgxT14zcbjP12iWA+FoctMfdwQL58fvNBwf9
         j0maPnmYIAWVqgMwDamXM5cEQcTNF2pLtTiZJkqCMTzspF4bCx9PGALfe/xBX19GoHtz
         9hjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768816765; x=1769421565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lcb4tTnMlEyle8kREMhz/Sgr7ZDAdcJCOY5TwdgAjHw=;
        b=LfooHdN+3xVNKcdIJwU0C61VIeoGk7jOzWrRXhxO/BuJcwD+yDl/6IhQoe2ese58jK
         2/dDI6FONMmas1hxp97/jkgMFYDx0JpvjhNINIw6sx3+LglN00nVLdBeuaeNIkJu5xBv
         BWsh6MsiTO1uhrgrrU6GgKH3dpxbL3qv6zzoLur8DHcBYRDAoV/Vy3+LLpkZ7KAY+8/o
         +Kce2nYWDR07GC4SmAoMgZNQNaA7htoSU44ldFGU3y5WmFl7Vg7pOcWN37xC4+yUbNK0
         rLq8COU0zgqhLjshjjfF60ckcMGgvsKWP6lXwo4IuLEdtga1J+t1PXdxlgMg9lShMeUI
         lk3w==
X-Forwarded-Encrypted: i=1; AJvYcCUCjwxPSvh+3V/LOG5t1S24v9KfSuZ1FTggkeOFT1uFRrZ5YGjGa1Fgs1U3mRWnhmwDpwt8C/bKc23i@vger.kernel.org
X-Gm-Message-State: AOJu0YwQNkpLdao1/TL34c+tRIZY8vOjVmwllcxjXC02HZQC5R5M+zvh
	7D81wvNMk++FeqeVVpJjiXwRoBBrWSd5s0sLSh0GDUHNDG5zaGLkdScafn60s/yLz307b7k+wZq
	qZ1q0taadGmkBYia0AH7p1XsOUtnOmDDQtYi4w21E1obdR2Oi1uqJ4ssxvI8B4bH06tSvMPDN
X-Gm-Gg: AY/fxX60lrl9CCLmjl1iNrGrfz5+PgwcpMekfu1Z5Hzu0YHKcUJhscG+O+yvIoUXkRi
	879yKTQ0uJg+Td5bNxl2ukS70/EKPwdgBlk/MSgdtlmXusDxZ+4WFPbT3NVtWXoCoyYoe686utN
	M/nxpavlLTJsnJ9h2hi+M5TAX+YxrnmyMu/lN6uXmN3WU74h3kqUq7rL1T6+6J4tq2KyBDQSFQ8
	Kmcn0BPONiq1ZWTcmZ0909t1cOQt5zC+HDMPvi5HgQgxHVOWNDwf4A8FpdsI4cC29FVwAydLFd3
	mW/GJbuviTyGrpevdhEoTzOTZ551NpzVLpcpnT3HTJqMtI1FIFJa2CxQuLkNry+I819hfoHTHXd
	odMbnuyULroFInAoyVDj3h1fEyw==
X-Received: by 2002:a05:620a:1a86:b0:8c3:7027:400e with SMTP id af79cd13be357-8c6a69564a1mr1492845585a.70.1768816764706;
        Mon, 19 Jan 2026 01:59:24 -0800 (PST)
X-Received: by 2002:a05:620a:1a86:b0:8c3:7027:400e with SMTP id af79cd13be357-8c6a69564a1mr1492842885a.70.1768816764279;
        Mon, 19 Jan 2026 01:59:24 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm242530635e9.1.2026.01.19.01.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 01:59:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for CQ7790S
Date: Mon, 19 Jan 2026 10:59:09 +0100
Message-ID: <20260119095907.172080-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=974; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=v4I27t4zkyHdh81jd8a+aaCsW9mByFB6MjUuHZRC0OY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpbgBuiigm0dbMzstpmasFYSoz2u45pvvIf+Aeu
 Xs8Rwvwu3iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW4AbgAKCRDBN2bmhouD
 1/0QD/0SdvpkN0D/RCbyrXN96YFFVs0IxZtXDFR+uELVCAGVDK7DgVOWlES0W9bg08JJVOfqEbM
 07OeF+BZQYpj8Vypvcts2QvKO/hHl62jE8bAfhwHClmO1QdvqYNYSkVXj3lMg3Qfh21/VAFyo/a
 8zjsubpdpH9XmyoAsf8c6s2ZO40HXE6FTFm7lX0h8zmDecifKpdvJFtV48XuEBYI+btSKv7cYvS
 8UnEQp66pY4jHDAic9dkvTRnDvBtXvYRdsRUx8nM++3qYZexlWW/pOMm7hP9JJHCehRI4oY8IE2
 50Cc2vq78Gf+v7JgV/uW8oqE5dChfk2DPsQiwFgzg/TBPUQkffEgy0UEiYF5VJAjBKibhF1EHgQ
 uk7K5C4eVijXBS4zky1BRqFpT8IrIvABGw7hXXQrqQIdWrbqBBpHjpJYVKVKASb7Eh6LUXz63ET
 4manXdm8vMx9GXUjBspTSX40V38keJpxUt7L7+yqQbmXcHCzHXRextdyG4sUnQiwbiGjxTrWr1E
 JSPoqvS0ukByczKmUMjo5OdnmAfYMeNZjhQokSAeE8nEtPy5J2Jz6R5Zxgi5VmxJxoZW7obicJ/
 N6LX/Wdj1Y7hnepq9hOds/IPdvD+7O8Z7NsBqNlqxG5svfT8DBpvGYSundQ+sCEXMClNCWVKHcf ElR2fixZdSOnevA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4MSBTYWx0ZWRfX7+VM9yYN5bqf
 glNewHzajjT2mKhKoDHo8Rgdx0HBXNwjrQVo5WDC04eHdm81jvH3h3+6SViJrutkNpPwpx0p3kR
 wkXCM2vDYgjvsh89GNdFCJdoLOW089v3jvrMlKcnbR9LMwseolGwDUIBtGtYdkpYPlyFKEihCHU
 LTpDkT0dKnLBDKwihV2KIeCRoBYP1pQsS6+GWOnGNSp1YG+AkqVvttEugmeU/TBIFLF+vKdWknQ
 +khlm/3YW+3P9QH7HQ7EpogyL8AIYCcOaJK2AfvTssbuHWz+jhz0c7blEuw3LCALHAgBS/vRe5K
 2zYBmPooYH0v544HYjUsmf+QRw8FbE7VoW4KE035obsFbSFL85Nv9uIAi2b6hig6Jm+B6g6Cjkv
 kxCQxPzJcdKWpT7qw2KwK/oNVt0hPdry+QEHgvlggpNBpY0alH4hHGOWS5pLAim6ax3P8ew4F5M
 DdVvtykHyI8swJ3v/bw==
X-Authority-Analysis: v=2.4 cv=NY3rFmD4 c=1 sm=1 tr=0 ts=696e007d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=jmUqivxNbEi4yHIWxaMA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: tAkxG3sKR_Tl55qHw6TO4VYB-myRjonn
X-Proofpoint-GUID: tAkxG3sKR_Tl55qHw6TO4VYB-myRjonn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190081

Document the ID used by Eliza SoC IoT variant: CQ7790S, present for
example on MTP7790 IoT board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Before I receive comments that I need to cc phone-devel, because MTP
means "Mobile", this is not a phone - it is an IoT device without
modem... phone by definition needs modem to make phone calls.

Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 8776844e0eeb..3ebab74978d8 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -294,6 +294,7 @@
 #define QCOM_ID_QCS8275			675
 #define QCOM_ID_QCS9075			676
 #define QCOM_ID_QCS615			680
+#define QCOM_ID_CQ7790S			732
 
 /*
  * The board type and revision information, used by Qualcomm bootloaders and
-- 
2.51.0


