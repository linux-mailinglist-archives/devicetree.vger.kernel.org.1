Return-Path: <devicetree+bounces-268956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id al2uI6B/oGnxkQQAu9opvQ
	(envelope-from <devicetree+bounces-268956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:15:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0132D1AC072
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2497C328D0A7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A103876CB;
	Thu, 26 Feb 2026 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e9vjCa/A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KcFmJMuE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8373364957
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772125192; cv=none; b=tIjVCnGYhpKnHFTKzW2uwrj3wb6g218dRARF7Sm5wRzfIGHxuz0WEUTb6HNgRkrkKisAuoYtneDULmbDUlveVpmzSbfhHrHlEllUQBSSkLylnfRFYhziFM1n0BfF7YT1ZcsGkVDFrtqKEsfoCmyMP6KRsPM7EV9Az8uhRTbyl9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772125192; c=relaxed/simple;
	bh=1nf9r25JC3wCUmTdDPwcGDmYS5dtLGS8bBXewEOeDV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kzWVw1MrfD441rXp6kAKC99dHtExhxEborKYl3gnhxWa3jsaL4fs3a1uoJfTYEVxY2d2lkTfnnDnHre2E6hcoA2hgr2qXDBkjwNczHhP6zJ/zux9Hf4xTd6AazkiW+JRVbdt9NmOqJKr0+UxsFuc/CsdEM3SvHlmtwi9NBJ5pC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e9vjCa/A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KcFmJMuE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QGijlI1171881
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ddaq7w6/Dv8LEYsRp+9+T/nebioMANU6ECj+iROzaJs=; b=e9vjCa/AWAtRgvv6
	DBMpjlA/tuPpmQc30WgCRceydmdXcD8WLvNP/M86ghC/PUHPrT7mbem3x4m/thSz
	15YFS3VfW6b04y9PNOpsyKPFTyufBsNkDUvEmIsGDoqmxKDvY/FeMzCxjOlK4PGL
	ME5yiRr8ixwwXyo04qZrzu3MsjlKmw1VOWqClPFEBlqj20wALuYQAxyp/ed03UmM
	D1JnR2NPwphi1fcOxl+7PvII3Cp4n3LJiYAQ7FuhI/Q8fY+hoFIF9RIFZrn0iZSV
	gPiO4PwlIMKM3d7KH8/7URZQnsZllN5y2+Gau66UH9BimzkIn1lxNgfFuENxDX+B
	v2b3sg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjae0u3an-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:50 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70f19f0f37so665626a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772125190; x=1772729990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ddaq7w6/Dv8LEYsRp+9+T/nebioMANU6ECj+iROzaJs=;
        b=KcFmJMuE8nNawbkjhGfSdCsYEanyXlrFNZ7r1SlA6PiWmXEhhidVxNHYFHLjwoBTQ4
         DcE6lPTECbEgdBLgCF7lNl9mMEUvNMyxz5PHlunC48MTa2doo/yU/2UMLqQZHEgHisCS
         Zdxu3pP/E1FxEajr9THldWpzL8ZvnTjl5A0AeQTjtBQwF4n3F71V1+Wy2DivICi7g2+9
         hAujkEmZ3FhSFFi7fdSi4piKOtrFxGxREHzHKyb2KpeUPkQLjtE8yOsuI7z2PiCVdCr9
         Lj58s83x2louewZx/RR8aLukUREcNuMULHvIPCumZLZMYCufyz/CCMSmBPNMsJctT4Hv
         G4Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772125190; x=1772729990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ddaq7w6/Dv8LEYsRp+9+T/nebioMANU6ECj+iROzaJs=;
        b=TneDLly/PVU9O7RPJYi4vtYyMEQy7m2KzxqvspU/L4Fy3OVcDs3BvqUE/UKWHyaM0K
         /Xgg6OVCSFX+mkoN7ks8DTy8JZHrpy8hyyaBa+nEMsmYgtUvVb5vqkcTmd7UW5YBCMPc
         dtaTwaqBth+vc28eRqxsQiKnT7iy15xP3ECh0pzDQwXp4eELrLpJkUvlcArxbnyQx/qJ
         ip/fo7mUO7LUT+p0T5bf1O7v2oLEmrn92ZaGWQQv6hfBvNkslR7Vd/p2N0d4XcGsWT2A
         /nX6d0nvDk5z1zGRLWH7lwKiMjCa3w4FY6+wpwxEUC4hOnHpYV5V5kmQ0e5cmPlQ/IS+
         skvg==
X-Forwarded-Encrypted: i=1; AJvYcCW1gvFx3WoTn/FdlfLAYfkcdX3HixiTptDszrlNYw+lckmXO4R7hiiCBpnAaaY/M0hvr7W5mtKuTiWK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi7L9zBInB1b0hkChO4kL5X6VDhshMv12ldG2VH5mZZy/UlMFr
	jycQ7y9uAqXQOhKU+LhM/EWKEj8FzWr7u+4bcgWSGWhqsMw/PWRRk+E6MU6GV0L7SP7zp1ZGu9j
	h3UeF+6+w9VqetzMPKpShZj/S7/l/4VdfPZSUptu+igFQ4zetGTUtdtmyWDnYccj7
X-Gm-Gg: ATEYQzwZ13pSef5l9cc3gML2GKZ4vBtPEjGVm1iuHjCSdn5d3KALoC/DsvtkcE6tthZ
	2pZ16la/s5ZqsNc1OeEHV1qmKVX5JpX6U+ThhfRqe10CzFWZBwUAyjik3eVjkDscmunzCAdZikz
	kwtVjDBTGT7/RLDXRGwLCDa0LYb9eYGqBkzuyKpeKUw2cW0lMMRlzhkNCiID3smgAopJaoKkG0Y
	/kbLbiuxLEEHQvplU1PocT3wh/HciHr/8HRN63Oy768+/S7nnf3nhXGPRT8AW7tnqtltULRZtbR
	ij/4YUm6Z2SpbEIKuR5MlPJ+bCWo4b8xn2qBY3H94qbAC8rJCtm8iPbHc2raT2LORPPx19pXWzd
	j6a0EGTtT/5sNSLjyFIl6idZgNOKpujKrptyz76Vp3BQ35WD4uI0DD/JxLrcEyF7mZLBmkXox2E
	LeTtBhb1dtDuf6c6qxqjdxgdXlbJBi0QBl1Jykmi28LQk2NWMaINaaOD+x
X-Received: by 2002:a05:6a00:4217:b0:824:ad25:6477 with SMTP id d2e1a72fcca58-8273984fd38mr2629848b3a.30.1772125189652;
        Thu, 26 Feb 2026 08:59:49 -0800 (PST)
X-Received: by 2002:a05:6a00:4217:b0:824:ad25:6477 with SMTP id d2e1a72fcca58-8273984fd38mr2629827b3a.30.1772125189176;
        Thu, 26 Feb 2026 08:59:49 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01054dsm3626286b3a.43.2026.02.26.08.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:59:48 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 22:29:36 +0530
Subject: [PATCH v8 1/5] dt-bindings: sram: describe the IPQ5424 IMEM as
 mmio-sram
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-wdt_reset_reason-v8-1-011c3a8cb6ff@oss.qualcomm.com>
References: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
In-Reply-To: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772125179; l=1877;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=1nf9r25JC3wCUmTdDPwcGDmYS5dtLGS8bBXewEOeDV0=;
 b=zW5WiPOVPgHzXOUGHuSmdWaApnGjbJoQT0LPXl1r7SamrdHyzLkM7SzOdO3sLTKRVegetwyeB
 SkVTmYYbqQEB/EwFRUAjs0DE1c+QPHjAZrwuY1JgApnke1opVlcEtuY
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDE1MyBTYWx0ZWRfX+A66oTPPCtfe
 YEiCbwzi51x7wP3hOHg0wVtuILmaXr0JExg5ntw4ivaEpJ9slK+e71IYCQT0IE6Opf4hj/caWiR
 a33L1a0l8LLH3zYEPQ/uWBrZvaH5jO4VdW+XP+PCy4fMvJ5X4efrTjkTsL5G0fAFyTL7LWRJqhU
 4WDqFy5ZhTy+FpD1jkz9xe6ubvMCNKwW0Q6KgI3Bpix0X2RYy6iTYFbk4YNN7YKxuOrZiRUhwKJ
 yieEUbGIRFBQ7Dn/4xhy8ZxxFI/OnrkNcY5J1AeZv10FI5+kbd5naxSCiVXQ1+U4/YH5UMq75SM
 WT/Y7tJIJ8XCDkNERh6xETXNoQ8smJFMSdww5UiKsC4p3KyGlpeBQYGxVLUzQOdcsmrSOXq44JS
 lIycmW0DGxViwjHI0YMTIGRs/AmFdPozukBCtaWtp2K3CA3IKcxQ+5nlAL7WDz8u8l+2x9Lnh3w
 tv7YXlv+FfqNYzcBLKA==
X-Authority-Analysis: v=2.4 cv=O7Q0fR9W c=1 sm=1 tr=0 ts=69a07c06 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=e_-3XkEp85WdVaS5J-sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: VXJRyMyG1CAkjk76cSwJf3qfUbLB0S6z
X-Proofpoint-GUID: VXJRyMyG1CAkjk76cSwJf3qfUbLB0S6z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260153
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268956-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0132D1AC072
X-Rspamd-Action: no action

IMEM shouldn’t be treated as a syscon or simple-mfd because it’s really
just on‑chip SRAM, not a block of control registers or a device with
multiple hardware functions.

Describing it as generic mmio‑sram keeps the model simple and closer to
what the hardware actually is.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v8:
	* Updated the commit with the reasoning to move to mmio-sram
Changes in v7:
	* Added the reference link
Changes in v6:
	* New patch
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 -
 Documentation/devicetree/bindings/sram/sram.yaml      | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2fecdbb81cae710f6fb5e48156b1f5..72d35e30c439ccf4901d937f838fe7c7a81f33b1 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,7 +18,6 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
-          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index c451140962c86f4e8f98437a2830cb2c6a697e63..7bd24305a8c7d98dc6efad81e72dc8d86d8b212b 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,7 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,ipq5424-imem
         - qcom,kaanapali-imem
         - qcom,rpm-msg-ram
         - rockchip,rk3288-pmu-sram

-- 
2.34.1


