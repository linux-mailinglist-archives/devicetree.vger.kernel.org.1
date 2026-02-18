Return-Path: <devicetree+bounces-266472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCOXHIrxlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:06:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF59158119
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 779A73011BC3
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533062D8762;
	Wed, 18 Feb 2026 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGDmHQ0p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JJsvkFUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83D2344D9A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434364; cv=none; b=G1xlSWIMCXXPMxE9V5WAWsMZ0O0OFobXqd0RsgPYgrSL6wpqhSj5M9WeBqYdV9HDvbgN9zFp7EaannvpgHlgywS85BOg9/axqWsv7Y/i2CrSNLuAa03K5FOX44K5gfCNkCXJAVoS3rXLFLC5wT4nLV0ftPFwNaW57DfnG0gSzBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434364; c=relaxed/simple;
	bh=DvdWXdunRSkVA5KCX9rHSsw9oZhlQwqvoB6yqApJjz0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JjbaZdstH5USwNPqF8YHNE3oNeqj/EPzZXUkzDj5u6WPs2zqPQ90o+Ko/fqIcfaWmZdzV/UEkBbyHvOdbpupRhLfiicRwDC1ehhGUHVjjhh5PLsX7MUo4YUr4kzKFM24mfHQPlOJOVr/+l1qmoKwUg2U+IHV5+2lY3ZXgQ4DZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGDmHQ0p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JJsvkFUi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IF3FWF4025122
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1qK9Zb8zZyt0PbpYlMP1Wr
	O+HbhwOeofgpZF3zizBsg=; b=eGDmHQ0pcugp9iIotvrg8TovMEOqfuib5zoHjc
	vIgEkjP2aLM+9sNpjSgO05VUKKEDKhwyi3Amj6qgvvEsXEDaPJ3cg2kFl7Iqib4u
	j+0kg35cTVRqvfS3WOG9UbMEvTbXVQH2b472L0OxnbiTRzOvVHwpJExAk+p2jkHa
	XZLocvOtg5BSe1C2ujyw7+diEBX51l8dnybvIB9jC+2Y26NKW+dCfCTOd1yDQ28g
	OybRLFVnuR6bfmLcn0yNyItdztBhqjtG9f956RzG9TX6ddwq1EiB0g+ODkDLbGcr
	vhW7gHrwu0sjxsgrh4c9rhpBPHhyri9I/lD148k5jaRTWOUg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd78c1tv2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:01 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-948bb350372so66283241.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771434359; x=1772039159; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1qK9Zb8zZyt0PbpYlMP1WrO+HbhwOeofgpZF3zizBsg=;
        b=JJsvkFUiAGONLEjYyt+LKxscp02DXhVGjMhCi+/O1+ktgfl1K9UIVoSbbV7NcodOHI
         Xo791a5E3xMHPkHLtU+2DZxp6g6l8yfQM49F5dAuBWxRP5xZ0mchkG/XP1TJFzSsE72I
         jZ3RWmRU3SP/Qgp3olAXFmZA8+Nd2puHF2LEIw/YyYemHXRVqczvaJkF0ffjfP0m+DVo
         Z1T7hiFKdG7D5Uez7tqYucIkWky2ccvDMOMrf5VjwDPJtwhP49yGB37NmSVpas3HgSFJ
         vSxctPzEkHYL0Bqmitqc4x0e3d6ZDMb1L8nJd80PgqKivEJHs116ONKULZD6VKXvyFS0
         zcwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434359; x=1772039159;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qK9Zb8zZyt0PbpYlMP1WrO+HbhwOeofgpZF3zizBsg=;
        b=aBb5zYvZc06aXsW2YGm2QjV/pxfst2FaD7YEqRRXMeKAMcBn93ZOybKVbqZc+Y5IC4
         xZVUhTn3NMjYuovnuZafDK6E+/04UU2MpCWFbhWdqbt+WKMKnQrrU411MbSgdcBxQYvg
         i3EdnsPyOUXBJw737OFXVjbJS7IsRjYFmONTAhfoOSrKKZ1tRCYQ7uURt2uz6Aqeq8ll
         u6F6MWnGi0XTLIlPYQjFbP/1pSoLTmyRHAJgRRm/ZviI8+5G4SO0RQV8RTyQ1BOPXV+o
         U684yerV8eyQUPx8KEw6CT0S5eDX54rRNm3k2iwwLp4jGHirdru4Ho3xAhwgHwv84/UZ
         1Ltw==
X-Forwarded-Encrypted: i=1; AJvYcCXvoAAV23bT9nBxIHUmJnWLx3bzm/WFCmSZXcNGAOMiJl0D+xFGuVNq+eAOV6k6rlZvUCEPeJ4RqXMi@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv52ETv1Te3OBPmafvglQu54PFKLn2bENxlZW3T8sRm7S43Ltk
	W/c+lqR5SUSmXoehj2+CWi3SnH/vtIO6Mj6dJBWm7HWlDXMRPwHzED/NUsIuVc+EXBItcPGkqS5
	BTG8Wr97YIHxG9ByE8nC++0hXK4yFNWyekiIk/Pg9erW32gq6A/u91zcKmP5f1C/e3fEWA+t6
X-Gm-Gg: AZuq6aIVxz33xCHO1GMOEcrY5NPbsQLNB6LAY/dd6hFZkTG4P599ETQUqBsCMPje2jO
	kbCJlfOJJHD/3bkWnTLIEqSSpfl139b9PyVWTIc46kNOO6KlIRHwvDpSCOf27ZPg888CgLgbAHc
	+kAJAlAd1mABQXCewpCVLsVNutDxKeehx7JMRVugMWkRVB84ZLbITObn3zgNepCcgUv++w39e7G
	lbeVw78ttey9T48Qc9g+CGGMyo2e2plKiwElwhVJkwU3ZboERidECJzpOyzVJYcWxsVnTmbN6D7
	haHt/N6Dfgy/85e2ExdUjWt5AWCx7BhL/0ONd35gIHQlVTPxqRNo8U+z7q4ouMZ2+EAl31DCPZh
	pUnrtKBp73Ry1FOANDuZVlEpkXONtHB69FpHUFNqJik/P3Q==
X-Received: by 2002:a05:6102:41a5:b0:5fd:7140:e38b with SMTP id ada2fe7eead31-5fe16f5890dmr6211645137.35.1771434358718;
        Wed, 18 Feb 2026 09:05:58 -0800 (PST)
X-Received: by 2002:a05:6102:41a5:b0:5fd:7140:e38b with SMTP id ada2fe7eead31-5fe16f5890dmr6211627137.35.1771434358195;
        Wed, 18 Feb 2026 09:05:58 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d994670sm482188845e9.4.2026.02.18.09.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:05:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 0/4] arm64: dts: qcom: sm8750: Enable display
Date: Wed, 18 Feb 2026 18:05:41 +0100
Message-Id: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGXxlWkC/33NQQ7CIBAF0KsY1tLAAC268h7GBVJQkrZUpjY2T
 e8uaqILjZtJ/k/m/ZmgS8Eh2a5mktwYMMQuB7leEXs23cnRUOdMgIFiEiTFVleK0Tpg35iJ1gN
 SKStZCSOE957kxz45H25PdH945eQu12wPn/IccIhpeg6P/NH+3Rg5ZbT0RwBrNsoLvWtCZ1IsY
 jqRhzfC2+Ccw08DslFzVVZWaaGBfxniYwAvfxoiG0LrjbEOvGfHXUQsLlfT2Ni2RT7ksCzLHXQ
 Q+5tYAQAA
X-Change-ID: 20250424-sm8750-display-dts-447473a33fff
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1575;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=DvdWXdunRSkVA5KCX9rHSsw9oZhlQwqvoB6yqApJjz0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfFqBeizv5azQYn9CTGffHchcCI5s6G94+FH5
 hL2SWc0I82JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZXxagAKCRDBN2bmhouD
 12OVD/9wUHkPymt9cDq6f20WtVF+TTjiu+q2Z+SfB7LbchKK9HMHWR4nx/Jjc4tF42DP839aImD
 CTTDIO8eeH+J12ijpg3vEjOTsxEh61DVyBRDpBpWJHSwhmCngyEYHkGVxXVEelCeR69CYneWkdn
 JGKDPRJZbbUxkYhaM3FnuIvm3AXV+wdXsrZIZsRUS0JZGfLgIjlTkxyAYkVlFWMR6u53YTIHU0D
 KZUiKmLz6K8Kr0DtB5edhHSoPKigkM9s75yNWTKU2+YcDwrqLMMP4ufVzzbH/d7PlXY8gK7joFz
 4LdICBMKqPi0hKGMqdoOmP7JiwSD8fIyULI80eEd9nURIpKocwkYUxbt+MKFX2fqDOEvEbvUDzt
 U0ZgBtU4xN0JRbfRa4oT+HIoCzNb7f8/1jkgtiBxDRLA/GICOQoPuD2j/QCmoo2bfZKSysskivl
 QBrZGQh+9Jczm8oQb6qMPnnQYUErLfa+gWmLEin2kMU+LzT28+DjROEtYEKEX8jW9Pq7FJzNO8G
 sTFo+2bo6y/YCdoXJBchsR4HK/z083BrtsaUvbnCPbI3Td26K9vIjV3dBhXwsEIr05fypWXrYwW
 O81Dv/rusfEKI2Yi+rIpQ09aNqlsoqC8bM6kkZ5GyVEhhgrev8iNCX/FJkdl0kC7cp5K8zb+vDP
 TdUTshRreaSucSg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: Ls4oR_vR1co0clEx4EdQtLPDX0XLjWRI
X-Proofpoint-ORIG-GUID: Ls4oR_vR1co0clEx4EdQtLPDX0XLjWRI
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6995f179 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=9R8VuvqHf2Z2bX_J5xIA:9 a=QEXdDO2ut3YA:10 a=TD8TdBvy0hsOASGTdmB-:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0NiBTYWx0ZWRfX9Jc67mL+OdDK
 qj5j78clD53Av3Q/RhP/2PX5BEur26CbF0KoRHY+3BU3L90I6dMWlDBUilMBFfSaIj2fHiMOaSp
 kr2P34YrtCYeAUEXTxrbQB2j2skGIPuY/0G7DBwJCUA91j8omO4HGwZVWFpwgd9Q+IEyvrw5WnQ
 1LOJDexO7ayMe1S7Efs8w7ETnUTt1Qa4gk9NkTK4tVo1LNtO9i7Ze4Oxc3RdHVe66YmxMnbGKfV
 IpIXaAVzFxyWtMaJaUt0A2E542DeOQzcVfp3ACVy3TtzL75pcEaiZS18p+k705wu4LnCrAfwUYz
 0OhXAsbS6fq7eKFJ7zALiSRiRIhOt0MZ2lwCqpRVLAonB1jHAk5sRWVPj+m2oDI4oTISb93Ss6Z
 qaxzhfdM/D7K12DIa457qCw/KjCvg65VTZYYqD7mgv6pYb4ROL5akLjhqDW247Kq5W2ErQUhGUS
 IjuRNfssBfj7n5ihXnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266472-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFF59158119
X-Rspamd-Action: no action

Changes in v4:
- Add tags, rebase (context changes)
- altmode->accessory mode (Dmitry)
- Drop redundant TE mdp_sync pin state (Dmitry)
- Link to v3: https://patch.msgid.link/20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com

Changes in v3:
- Rebase, add Rb tags
- Patch #3: Add link-frequencies as Konrad Suggested
- Link to v2: https://patch.msgid.link/20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org

Changes in v2:
- Add Rb tags
- Re-order nodes/sort by unit address
- Add low_svs_d1 opps for DSI and DPU
- Add DP Pixel1 clock (they were added to other targets as well, also
  Abel pointed it out)
- Some context changes due to dependency changes/merging
- Link to v1: https://lore.kernel.org/r/20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org

All dependencies, including bindings, were merged, so this can be applied.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      arm64: dts: qcom: sm8750: Add display (MDSS) with Display CC
      arm64: dts: qcom: sm8750-mtp: Enable display
      arm64: dts: qcom: sm8750-mtp: Enable USB headset and Type-C accessory mode
      arm64: dts: qcom: sm8750-mtp: Enable DisplayPort over USB

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 122 +++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 439 ++++++++++++++++++++++++++++++++
 2 files changed, 561 insertions(+)
---
base-commit: 9f85da40ef9770dee2039c7f9e5cdb8942920241
change-id: 20250424-sm8750-display-dts-447473a33fff

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


