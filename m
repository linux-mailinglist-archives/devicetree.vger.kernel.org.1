Return-Path: <devicetree+bounces-251843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC261CF7935
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BA483044C38
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4233322B89;
	Tue,  6 Jan 2026 09:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M+itOZeN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZxmF/wlV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9354F322B63
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692430; cv=none; b=Mq5y5A1SUArpF0elpR3NSk4g0TdwJLeQ9I1zJILAEq7ihuG5scOWFBgPxZds6YSRVwv8/uP63zl/N26vwJAAMw4YqvEk7w6ORUxe2yEL+hWTpxadjPPKnSk4lIgfB/BcCeCVC2rOf20Wiq+BSs3nbjMxMnT/Yv4Rw6oEHD/ol2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692430; c=relaxed/simple;
	bh=zSk1APnfdThvvuoMQXB5XRjhqPJzasZhcJEjPa9ow14=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qzV12hjT2I9jhdDSjVBE1GLAqyrK3CNphHaa0Zxcob5G0MkOO3ggpzpvLkuiFYc4YO9df0m/pnfM79g2Tq/iDsizmJED0hsym1ReFhRFKjSyr6fil7kvY2YhY239Nulwk9nmd84HOTruq5nWcAoj+/lI7J7GNWMyTN+/3AwSyGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M+itOZeN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZxmF/wlV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QCrh3052779
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:40:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iBPZlLuOcsj4AcXtblqDTvEo7d//tMHnTSCSYQb1X+s=; b=M+itOZeNvFit/ilV
	winrUrYjmxhgRVbOougbrh35IKIBS/cXYcGkzGPK6NsC0wcfhxPd3ergEwyBM81k
	WpoCSnX+1jbGjQelXKMeIOHjWHEPiLqD+fsasmHEwQz6XaMftNf87y1cd0VMhPhD
	1yzhUSRXlXm7xFZ+x4rdwuOjOmB8kGddt9MQ1c+99xPRsOYWrYfocHSQI7+h0gqv
	DuRJKp02RDQ9wlkkx0fleJoog2h1F3U6mbwlzGQ/Xxy50knHt49VWX5HGzA1I1nx
	cXNMyhLlR75OJch9uYlXmwirB4ERnxtJhE8LrFUQb/OUU2edXPexPYoPD4k5prrx
	AOc1hA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpn9sjaw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:40:24 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a366fa140so28166976d6.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767692423; x=1768297223; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iBPZlLuOcsj4AcXtblqDTvEo7d//tMHnTSCSYQb1X+s=;
        b=ZxmF/wlVtcUBpK2xsedS08WxTNVhN3mnCNHVcgeToDY6AHlBamehDVecrfUPnfBTJL
         4CwnEc+7rDhnbDZYFPvGwOzrpTfykGBqbjByv+IWS783ePy+b0FLEytRkbytUM4xuVFt
         C6kOhB+AQLwrBU0fueHNOg017BVBD9Z7DgLkyh+ooXcdiobvNgP+szJRpH/94Utb0EC1
         uCcljqxSjwyVwvAutrOmDC5YRsaYm0MwmLLbPnhwekInflp+fIv7vJFBlELyjfLTpVmW
         Vj9zhswW/Y+tEcdFpY+vTy+pQD5N3c3lQvtUondk4lompSlzqgXesLckzWVBVsQxPneS
         TGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767692423; x=1768297223;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iBPZlLuOcsj4AcXtblqDTvEo7d//tMHnTSCSYQb1X+s=;
        b=Qu/Gw9UyoUy9elLm2YW5LerFznBqFBrHenj3e/n34fMsDODC7Ju5fIb+kOBhf+T1I3
         WkEimRUtZNIJridXLQBGU8n9flPapDoLZ3Pv4RmiE79kRus2Af44YT/QtjOf/7RZblw4
         Vcqtxry+0X7hxUp+WLQNPfyI4p57WJQv4KSlgUiROrFswM9wgcSs9VVYzfvpph8a/epE
         B3otZ7PyYsIpZ2RQo0hAtRY0EmHlQxBHbCGrQORZo/OAA2USntFITuCrOIIc3UoiqKz6
         PmHMsbHzxb6BEW0PIxazu4XR1KfKI2f7iCxxcYN8M3wucX6PHyaLS9sNmVnuvEX6jVrv
         v0zA==
X-Forwarded-Encrypted: i=1; AJvYcCU1aQ67LGLHcYuPXxyn7H26CkoXQ2T5RQlTn08spKYRmJHHelCffU7b4r6aSHzOiY3JrCBkd/QVBXrr@vger.kernel.org
X-Gm-Message-State: AOJu0YznAle8+slLEbR2qAmiaKdWSzwAtie3rly0boxIFOZ64PNUSp27
	mInQsW/NNUB0k5i1KuuWQnc/aKPxRWjzgWMOu29mUISLINo6CN4zJOZAnO/rmf7Q+MrGALbjRqY
	4ycAN1pEs6ayBmdQOc7Wnfg0L9sMYMuymCQjDF6KLrCSppfr293kagFtQzSiGOyZe
X-Gm-Gg: AY/fxX6gWiggqaUpJPkDTVDOradwKzEagdw38pBG4VpXAL+u07EvOz0/DOO9Y0WTWky
	ZsnbCw05ucSJY/9FJy/ngDeViPvow1XqzZbcoXJlpdmH6U6A0R8KfdL45Itk8Brxjn/YInOSdz+
	qedB0K5fa5Dm/MqGum+uaX4V5WAhqh1dLDLCQZeUo8TeOqIhq1no8K1rtSZxxrJiANqBGqVB6zr
	MT3vGBNEg7VSbD9cHvieCCDIh8TmqAe0Pis3cJgF43EevNjCmXMH8ixVeyE+dPM2U7iI2++6lnG
	2fOffOGpaXMzveju0BDbfOQhIYYWLD7vzNqUp8v9gInYa2KH4JbMLoHUVsUzpANJlqCQqakorDR
	8f4QH3jWxGDEWPhnPnkeMk1J0CYFH8GpKI0rGLCcQD50MAh+sfbT6YR/jP2StA7DAmbbRqBFLBd
	up
X-Received: by 2002:a05:620a:25c7:b0:8b2:e87e:1093 with SMTP id af79cd13be357-8c37eb72a4emr298598285a.3.1767692423452;
        Tue, 06 Jan 2026 01:40:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMAm/z0JG4VqfvPOutweGcWxwBQ4HC4pgvIqFOkKyoPOyPw4PYsNpVNOXjFwkqMz/+ZcH1iA==
X-Received: by 2002:a05:620a:25c7:b0:8b2:e87e:1093 with SMTP id af79cd13be357-8c37eb72a4emr298595385a.3.1767692423064;
        Tue, 06 Jan 2026 01:40:23 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51cf95sm135397885a.33.2026.01.06.01.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:40:22 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 17:39:53 +0800
Subject: [PATCH v2 1/4] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-sm6150_evk-v2-1-bb112cb83d74@oss.qualcomm.com>
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767692409; l=1364;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=zSk1APnfdThvvuoMQXB5XRjhqPJzasZhcJEjPa9ow14=;
 b=ydzKyJw8JaSS17eXOdSXbA163ARvdltQImiQp4zHz7oi2mhkpTlWS6QJkxenalgitCtGsFmsI
 6kszHiwHWUTDwgyDutf8pOQL9Ke+mPC2CD0vbWtUsQB2gsfihh1Srxb
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: KlzwTjCv4Wm31VgVuxIDXbgbqitVUF1q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA4MiBTYWx0ZWRfX+KQlGNy7Tqgy
 cdgOrZ02YGm4ur+DBhmpVJsdhhpP44laulSgBM/K4J5tWvAcJqB4M4otnGtrc+xoNFnIVw5l1Qs
 x2BBXirxlb8qXR1y5KkdZQjFeldlESCt046ugBRNDu03841VHtfp3MckP4oLoDYUg5WGiNqp4sO
 YLkacd4WmZ2Kdm1sbNNAj8tSE4TyzPCJwjH8yj1bL3A/cJjWDUVWWC4mkB+93Cb2dUsqxzA2e3Z
 Yf1xySyMX8IMt5I+nhT3N47uSUbFBMVJff6xX9WKkXiURCt2VBVhwb5eFH5HswdJ+SF5/hS2R1g
 6XntQIdi8TL46p31wKSGYD9yd/en6xLll/dLreSiZoC99fGRdyymCrPulRubaXbjbUmyFZqG+Ld
 VK3vzzJtBe3itA5Z40e3Di2RdjCBjcb5hsRS+YNUhCsRruu10A0Efm5FBXb/mikHoRg4E93MgCL
 oICc93JmuRDfa545C4g==
X-Proofpoint-GUID: KlzwTjCv4Wm31VgVuxIDXbgbqitVUF1q
X-Authority-Analysis: v=2.4 cv=KfnfcAYD c=1 sm=1 tr=0 ts=695cd888 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gOhJHmANR_8o__jqBkAA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060082

Add the sm6150 CCI device string compatible.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..cb5e6fd5b2ad1de79a9b29d54869d093c952d778 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -33,6 +33,7 @@ properties:
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
               - qcom,sdm845-cci
+              - qcom,sm6150-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
@@ -263,6 +264,23 @@ allOf:
             - const: cpas_ahb
             - const: cci
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6150-cci
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: soc_ahb
+            - const: cpas_ahb
+            - const: cci
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


