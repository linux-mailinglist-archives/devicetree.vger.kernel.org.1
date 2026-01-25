Return-Path: <devicetree+bounces-259267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NuYD843dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD9F813AE
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48F68300DE3D
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015C63254AE;
	Sun, 25 Jan 2026 15:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L1V+T9cB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N9F6Yw5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3646B3254A5
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355188; cv=none; b=S9yyY6kdKGFVaHoQGO1VRyls9HKFJmk95TtBpiMEN/DXjzYhhFkATjFbfailOm4Nu65Q34lLzZXXPoDWSFHlfkPlKjKLgCBbuLgNARzFx5+wZnRPBehpjXYVw3oeghoui8JY8xlGLCf4J1Ie6HIAC4zQjYlcn2tr+blxraq+C2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355188; c=relaxed/simple;
	bh=hLnX9O+jNkWp4eIwqeLrNV1GLUMHqOPIj1AAiPtuF4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fBqnRGdZYFewUVsEfJ/+SCHD+Biwpb3cr3qAMXpttPL4VlMJa6LIezhxOfPbfeMR4OF1Lf5mZ+z0ML4N2aRO5LK4ihAZLEP9PJen/uodGPK8pk3rExgXOG5o88WfNt0/+K+il8IdzI+pYNud9GDPbEgfWC+zkc4Mh6iILLLgTHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L1V+T9cB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N9F6Yw5o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PDC7Af582017
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=; b=L1V+T9cBMR8tvw7i
	s4+IrQgBp9IDEBXcIZA1/CZZBu6GjvSMWNULIQNZqlFyMrNE7g4aGN0AyGTY14bo
	aKWXL6h9uS7LNii+8kLJ2vB4ikuDQfIRWVgd8vXBnZRT2c7IXHQ+FhI1z6wS3b2j
	VZeFMzJaapKMuFLrbOV69Oe15dHYE57tOvPJIQUCNK+qUUXVJjtidNheWTYgyC3k
	aUuj8Vjfi/WhJeXDqWD2q8C83TI85vdrFrp8Eyl+Uq73CQsZPttR9nFnjyPABtRW
	3rUujqU/ehPV9VrJoTNJLWUB+kRicd8BkdokHELkRTAifofZks5h20TbSRLyhNt1
	ZmxdOw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q298y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a344b86f7so133829276d6.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769355185; x=1769959985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=N9F6Yw5ot7TeVZWJuEb8V4JaYe6F6klB9Att7+VcwTevG8dkmJ/ubPda6UDuui5IxV
         aXnkSOWdpJMNVpYBPkaBVYP5cH3O3ueEhoe9iByYvlqkTc7n5q2exsl6MU+/gxctZN4W
         cdzcWPNCeA/jgrgShbS9E8u3aYq83etI3KocbQJ4KqMX+T1WJNDjxpKdO5+LdetLk109
         kxT4fG42IHKeiu2qwx7UZOlg17F5TqxCQ8WAyMky138XWko2vYyXEUsW7D+eHjnJsgYp
         cpZZS5wqF6SsQotEikoSd3zXCXYUVHgPY8pxeT5PZn7+Dv6ch0ysM/H+lNWrEh5cKLvN
         AZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769355185; x=1769959985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=Eq/LQD7UpKXqnlYjnLO2sHx1IbU0h3Tijm4RFAHSKGXioozKR9uMKMj2UbHRx0grr3
         Tk99kyKb3WLKkwVY9rvSJQS9Y20nkd/A7Du2mDc5z2FhbjcS96PJj+bHZwpyFSvTTvVU
         bgmgXSVEgsxpnWFe4Nhz4nwDVCG9pwHNuDJsNneXtmVuwBXutMQznczWuNVd4m0gnMY2
         VcUHtjIuz2Upy+xQ23urZROvcK54/txgv3a3tkPv2nM8BbzbKmoulD6/mZOI38dhal25
         z/kDnaLeZgNqxUA68Lgg1pNkoeyCHRFiLjNQWYnvRDtsba6OOYjZDI+1evQQfjK7O0s3
         1vFw==
X-Forwarded-Encrypted: i=1; AJvYcCVd4TCzaXA2PBrrvPtTfHMd4J8ZguHVo2Xc4uYq2UZ8/ihwI510/7sBnXXGC4Ac4S+E7cvIwc3FdDUn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzexwwm8pdFof+KOfMl0zJSMfFyHLjDhwLNf2OBYpezWOqJ3zxo
	t8+np9Fx+m708nHosqh1vpMt7eR6OG/9epdCO5hyDaRWvLtYlg4JhdQT8nzEp80BBq91QnyVf87
	YFIQPx/Xveam07nMzauC2oMcGMj5siFcTJ4b479rg5YlfDhQzn1MvCQVMg5dSv7HY
X-Gm-Gg: AZuq6aKe28yTdVd8H/zflFzCOhXpl6K5pRT8Wm+1b0m8NaMOK2Lywt9ffWf9LniJZXu
	pRISVxWjYdmYUQTHIi2j0S18YM4Lkm22ma80YeAo1jM1zIFMfuGPF+eSzf9tzvoHUD62y0yL73q
	Biy3vYWkK+iPTDZ2YQ0LODMxN6vl7Bdjc7PejhKMu2YhvAFt6kYAqFFlgQ9/piE86o4YI4EYBoV
	APyk/nik4EcZJ4oqjP4+bnVN/X8MedH3MaOekrpdcLjAQSft4NcA+ZqY6j3vjSV4xQgIB1yyZUc
	twLxT/45zw/SKzv0gMpLGl4yDVAF29S8jWzbTHwDZNBxhumf6L3kz+A1/TQBY4Xc1wDopqbhVIJ
	i89sqD6tHuGmNHeouQeZxIM/NKYrmdjIFlAIIYiYo5p1BQE0wXhLWOK1UZ2H7bdUK2GE+VbzSB2
	OeDozHmsWqASWQ7pP17OgclLg=
X-Received: by 2002:ad4:5dc6:0:b0:88a:589b:5dad with SMTP id 6a1803df08f44-894b071a436mr23645306d6.27.1769355185434;
        Sun, 25 Jan 2026 07:33:05 -0800 (PST)
X-Received: by 2002:ad4:5dc6:0:b0:88a:589b:5dad with SMTP id 6a1803df08f44-894b071a436mr23644966d6.27.1769355185011;
        Sun, 25 Jan 2026 07:33:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a0a45sm19154661fa.34.2026.01.25.07.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 07:33:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 17:32:58 +0200
Subject: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3992;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=EyYfaE2Cufcr0C/0jDHR82fWre92I+G4XxMx5Yzq/OM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdjes8MYBCmo3Wm0lvyaJTzAclQ/Nl+tieRCkV
 oPuih9D6auJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXY3rAAKCRCLPIo+Aiko
 1el4B/4vr69MPVnkCtY9YDLjQL+XGXW4slJ4UWKCBWfqVJ5w/1GiILoudJezApXNF2QGlFyp5kH
 hW0m6qtYj231v7x60eDlRVXTYI5GhAgIpHY6TljBIApEWtZ1RtqObuZ217g1y4gZYCzfHHha1Uo
 hq1wcXpBDLNBamMtcvNd2k5YsYLFsyQYZLWB2xKJYQG9eVmdk5PnygYnUWRxRgJu8FxVscKLf8N
 aboJPmB8jQkMVK8+ilKl8giYK+nyMafBvT14lToIM15Xli+9vjOe2wIT7eTH4H43w7ClrchAVqM
 vsXjCyHnia5YWxuJaHxAyUhqkA6ZfwlGp4psfn57WgnXOL0n
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: YyLmQYYUwfs2WnxrARfYmc8ogQLh406A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEzMCBTYWx0ZWRfX1Riigrl7BxPQ
 hMcd+K6JJlPDGQW3/8Aec71lNwFDNkV6h2uV+xoQVfJq06rEOdCQxsDPYd7/36kXBnUpHx5GFsI
 t4/JYKAppPqf7wW8TefFSOtCehGB3uora2+fsE/1BGfByc282CWZ/aVWBfOdZGgko1LVaKL46g6
 ED4/kZT+xNHXR3OYQ4M3ggzKZoNYrg33LY/0LLXmnh4JC9K8qcd8tqLe7yWYI/S69SlKaRqjs6c
 CAQrAYy9Q9VfTzOdRdIntpP4LsCyj6dmaM1Pg3S/V7Grm5rThnCqTdUHa1N9klWLcBqOYiTLbfD
 XnDC37ej0TcYrOHbO8sevDG8J1GTjj8m9RKMF+hsWHt52RUs7O5/vqF2P+nRmywOktxouzryNnB
 mJX5JLxcFO+pmMz0+MlH9YzL1X0LOgaJRpUqAG09uaAjeA1xtIXNDBZl7zBynBtEVdZI2LPszry
 KQ0ELAeueg8ZyzWlErA==
X-Proofpoint-ORIG-GUID: YyLmQYYUwfs2WnxrARfYmc8ogQLh406A
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=697637b2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gdo2EkX-Jlq9hQkSyREA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-259267-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,aa00000:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7DD9F813AE
X-Rspamd-Action: no action

From: Konrad Dybcio <konradybcio@kernel.org>

Both of these SoCs implement an IRIS2 block, with SC8280XP being able
to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
SC8280XP having just 2.

Document Iris2 cores found on these SoCs.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped dts video-encoder/video-decoder ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
[db: dropped status, dropped extra LLCC interconnect]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm8350-venus.yaml          | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
new file mode 100644
index 000000000000..d78bdc08d830
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8350-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8350 Venus video encode and decode accelerators
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description: |
+  The Venus Iris2 IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8280xp-venus
+      - qcom,sm8350-venus
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+      - const: vcodec0_core
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: mx
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: cpu-cfg
+      - const: video-mem
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-sm8350.h>
+    #include <dt-bindings/clock/qcom,sm8350-videocc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,sm8350.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@aa00000 {
+        compatible = "qcom,sm8350-venus";
+        reg = <0x0aa00000 0x100000>;
+        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+                 <&videocc VIDEO_CC_MVS0C_CLK>,
+                 <&videocc VIDEO_CC_MVS0_CLK>;
+        clock-names = "iface",
+                      "core",
+                      "vcodec0_core";
+
+        resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+        reset-names = "core";
+
+        power-domains = <&videocc MVS0C_GDSC>,
+                        <&videocc MVS0_GDSC>,
+                        <&rpmhpd SM8350_MX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "mx";
+
+        interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                        <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+        interconnect-names = "cpu-cfg",
+                             "video-mem";
+
+        operating-points-v2 = <&venus_opp_table>;
+        iommus = <&apps_smmu 0x2100 0x400>;
+        memory-region = <&pil_video_mem>;
+    };

-- 
2.47.3


