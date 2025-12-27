Return-Path: <devicetree+bounces-249805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3407ECDF851
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 956B23005490
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 11:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B416D2459CF;
	Sat, 27 Dec 2025 11:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QqLo8btF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OiX+ZQJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3438F21ADB7
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 11:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766833525; cv=none; b=Tcwh5wI6SjOTjQrpe3bH5w/2nISGg73iUDL+bGtQecnwGjxWzeVr6f3H5lM19OYMJgxsDseUYr9o3DC6dLBzLfTnznjbp/D/wajAxOjpTqID43Fidxa7t58QiE6lk/e8aZo1DxbtWPM45aUguTD5Objtrpr9WVRWV2/pOnHTZDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766833525; c=relaxed/simple;
	bh=D+Za4rALfTUqTsiNInx0TahyFmiPEc3D4DRCUn9Cbis=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dpzbj7AX6bEsJMWUs+8uSxt0q6lXgm7MU0dwOr53tZfba2bDXsxkVEJqs+4pNfnwxnsGbbpJUBQo6YaLCgWeqFsp7dtb3aGnbQXcmHK1hinR12RPhr2ax+4GSm4YGxhbONxZj0G3w1BhF9C0drGV4O3TZo4TzUOA47ScrC6aGp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QqLo8btF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OiX+ZQJh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BR28vmC2876807
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 11:05:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=shVIZvPiGtuHUHHlZ/YorSQjKPwWM/wy48H
	1QPu4VJM=; b=QqLo8btFJES1VeobRb7iTMJ4TDKtiKcctcNAAG13OSOj28SJRn7
	gBcW0J1/V4mDE8iiD6CJamsZgQ463b/cfgFb1G4d/4Izju2FzojMMm+Q7HE5+zSh
	0gWJH44gHi4Kv0Bu6rpf4uc7vnuxtlmBVfQzwN/PRJgaFkAQOnA5n+E+zl7hmkhl
	4oilrkGoHTqUQi7TaHqjXwTroXN/P4x6jRjCstqZEnUG8TFyxSFwZxMw8upOePKc
	Z74H4raH+m6jOUPcGEq4Jm+iNqmpR7+9wj7SiObkf06e7Q0yHQxN6OVDw9Y5d93f
	PuHpXjEDsKliTHyYSQ/b4PzFEonQuU6sHpQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr0j97-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 11:05:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee04f4c632so151373051cf.3
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 03:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766833516; x=1767438316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=shVIZvPiGtuHUHHlZ/YorSQjKPwWM/wy48H1QPu4VJM=;
        b=OiX+ZQJh4GnLyQewOv/UcCU3dcNyUvxj60fTgV767qwdr1L6Gt4o0iebZaprPgHplX
         P+c9FgBmkTzseZggp/0U01NdzqWY2tmOQc+MIdT4QjdVSWz1ioDe6oh45PEfs7VhlX9N
         yfAP2EksxaDXYVnvRzPMPc2DkzGCe7PSln0ucUvlKhBEhjzG5oxRRuOtCgvRrIyG6Ncz
         b8YMeoFY4SIhzVE9YIcswL2Syq6eHtuqWgMjrKXnSJ5D01Vpc/34J9bIxepRB2f+HWfb
         IeZnOiBhBoLbVIb25chxluxohex6XM++Ti1d96q9pq+u/HKZMhOIpGik0P//0NFJbFSb
         iMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766833516; x=1767438316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shVIZvPiGtuHUHHlZ/YorSQjKPwWM/wy48H1QPu4VJM=;
        b=WlOWbeSEN+7rkBA4W0uDo1YGkfQPkbUUPuXmGuJPNTkvm13Tfi9bkBD5GxHCRUDXYb
         VcOHXeJIGmq1UMhJUxvEN5DrjKyOC/SfXTgIg1xAvmkwMkMmjbxOzQn/qgS8f6sjy7+P
         taP33vZDfOpfB8VYSPfOaaG09fbwrM+Gldtg95Au7INM8xhgqPNa89s8cMM+b7ucVCsl
         VjRg96XjkAz4Gx4KOD6vpnSfMPY/wpvVVjkXLgMuubn5YLLK83m9lda+Ve0DdMSur/ND
         MOgGKwX2DfK6bTcZ4gLXTxbHjFeYi0yKWF73acKXCDsDFKlG5hWE/kOaJW62vWrEkYoh
         u3eA==
X-Forwarded-Encrypted: i=1; AJvYcCUrlw8UR3L4OKzYSaG6hopmOLquuRF0L8Wvggxv0GfN+X46eeE1pfld3Vt72mZKW1TciApzn4cEOwzC@vger.kernel.org
X-Gm-Message-State: AOJu0YxVTMq7ySuIOZTlN9uUr2w6pp1XpVRke9643Y102Cz+JREVV3KY
	PF3fS0V4nAERa2JEjBkIlHzEnq+F2JKY+NwYS6wzWgogpPsXg09piBgcfyAGbVwwDJxa6+OKaeA
	MD6NryG/VgcL/QgM2eeKu2dqb0Ue/6r8A/gKy/lunk4i1CXyV/xE6hbzRLvM2DcwZ
X-Gm-Gg: AY/fxX4QCKq7MnqqrwAsDcK0l6ciAYcjw4hvJEswajSv6kmW9VszRSumjRa88CODZpU
	vNj8bnMSlKAFmK62b6cMs3LUDFnjl8jbP4vy+zHIaaGA3N6v6ftIGvPb08fs8/MMu8RlQAd3HDG
	xofIgeqsjEUcJ4m2bIzy5d+9e706cCWxUiQDEdbmZCN+5qBqwXzICIr/9TDTF16G50AYtSxuk3y
	bbjQCqrm2p3zvIxK2/llm8rFfkkEqNH1x1lp862RmcXlm0xiL+tjwZVEFfsCT4QsKPXdxxvooZq
	9v9WzrGchzRTo5kHv+uxHvJ9JDT8rZwjh/VGQAgzE8ZXugYQPHesrKMvAVN/VC1QalC96ST9gss
	iwJQ/8ayfNS7ewPOV/vdpXcsq
X-Received: by 2002:a05:622a:5e16:b0:4f1:dc5b:44ab with SMTP id d75a77b69052e-4f4abd75343mr340171431cf.45.1766833516313;
        Sat, 27 Dec 2025 03:05:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0TYgsGvrtMGtuU6/RL/Z/IVORpXU+8dilniFAv/6fmEz4NBxqef+dKiYVk4jnwyH692w09w==
X-Received: by 2002:a05:622a:5e16:b0:4f1:dc5b:44ab with SMTP id d75a77b69052e-4f4abd75343mr340170951cf.45.1766833515845;
        Sat, 27 Dec 2025 03:05:15 -0800 (PST)
Received: from quoll ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm49080283f8f.22.2025.12.27.03.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 03:05:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: display/msm/gpu: Narrow reg and reg-names for Adreno 610.0 and alike
Date: Sat, 27 Dec 2025 12:05:05 +0100
Message-ID: <20251227110504.36732-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1076; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=D+Za4rALfTUqTsiNInx0TahyFmiPEc3D4DRCUn9Cbis=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpT71hjLcG0oDux9ARg4VrdAiDoAASVRNvFJ7xO
 KRTKDG4zVuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaU+9YQAKCRDBN2bmhouD
 1+tQD/97pNqpk80f0BR+P+9aIcU0dXbS2l7pXSy1m5iLY36I9799J7z7O2+Dkc+ANvhNhvDHcrj
 9+taufqhVH616rKPRV8y+wKhoYqLEYNMy6UA7jcVpyPaSqHE7ge87zpGlqro7DjynV7BFOkfxKX
 kBrhz5M/Wb/gL01PgK4e9reY0Y8ag65gSDBdGSrDnsSVSrIPvnZYo60DiKWITN2fCq5J0rwXocE
 ZBQpU6+XdfC++IhaBOdBFgyRQHTDsI05mMOh/JJ1VwMxEgNKuqe2Ed618wTb7dDI5o62UbJ0nrK
 8Os4ZhH80z0OVPMEidaOFdQxfLOfpZgrMXRwJ6TrqLZh7ubbMmXeFfmdxmJIv8Y6+dSIcMuMw8x
 ktgtNLoVes5a6yWHwNK/uPgcl4j5DICQWxiHN4biqpKTE5ApjpZTXUihu+kkYVUD26XCeM9W7Mj
 G/uUw7ZgfDfBUt3SeBzHVHaDONICHrN2Jx7tjoKxdvASi7u7P470OvFyW9F9zzWWyz9v23928Qa
 5WVk64QQhwobL906S+iAgZXsMWk7xYEumnGjmAFqsWtSp1ehcUrJ+GqG06oQpVJdx0W4zxWsqsP
 37CQVs2eXzhuiAuOdROasUwpQymMLE+OOG2IbyPzdoWgqoQm+jNaj1qXblUKrwfk8tbiRNSlGCi 2gaaCOofZXFUwng==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDEwMiBTYWx0ZWRfX7hHMWJl4qvZ5
 AxCpTHi7njhOd9a2OssLF2Da63JpKo9BrcSrc9gfwiHfmTzvE3baDOJP6cGyhaq/+Q7HsZZwu2L
 lLClSrLnFoY3a56NVyZJz35on6TchsCsr4nyinJBWOdcHuiXGvPZhyafm2V4cuMye1AYen9DZZU
 jgkqLm6xX2CrAceHqqD2WWzFjfsrDraoOYGuKUiyZ5Uw7+qOTP1/MjmjLBeJJ+SPf7qQzawApki
 LRTaEATGh05VGTKkBCHtHyaOnLjSIbSL/Qow4EPjMNaXKz/5XT2/vSOygMkl3P+3ODeJEL6NB+S
 ohPD4b9fe8LJRV9Z+p/xzwaUZ+CDd4mb2xhd6fUH8lfUBnx5fTQanAkJfyVOxp64gixqEiJvuKY
 If8Zu3rAAWNmsRtz1hSxquWQXrXzWgzIGwlZW9c1X9W24yEMm1oVmHWvU3qW2wHYUWHda2351Ml
 G77w8KSf6NHgaluMNkQ==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=694fbd6d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HA3oLdluH4EBEQOtP_YA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: EWWJT8Sc4M4esAcd3lehvmyYrTm3V4ja
X-Proofpoint-ORIG-GUID: EWWJT8Sc4M4esAcd3lehvmyYrTm3V4ja
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_03,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270102

DTS files for qcom,adreno-610.0 and qcom,adreno-07000200 contain only one
"reg" entry, not two, and the binding defines the second entry in
"reg-names" differently than top-level part, so just simplify it and
narrow to only one entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 826aafdcc20b..1ae5faf2c867 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -378,11 +378,12 @@ allOf:
             - const: xo
               description: GPUCC clocksource clock
 
+        reg:
+          maxItems: 1
+
         reg-names:
-          minItems: 1
           items:
             - const: kgsl_3d0_reg_memory
-            - const: cx_dbgc
 
       required:
         - clocks
-- 
2.51.0


