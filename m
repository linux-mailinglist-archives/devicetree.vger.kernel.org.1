Return-Path: <devicetree+bounces-266479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMBWFtX1lWn1XQIAu9opvQ
	(envelope-from <devicetree+bounces-266479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:24:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A9C1583EA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC5AD30156E2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7703E344033;
	Wed, 18 Feb 2026 17:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V2ONqsQ7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="frmenS0U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FDA2FF657
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435475; cv=none; b=sMc2B/s8YZKaeOICn+1hQZaKAIYfEhzEXf01PqFoC8voXSIjah23h82CEqi06COyIsFnnTq+/DiRY5g2BvLgSbr2C2yaBOlaymS5hX9Tg/NoR4suyqeDImRUGzb86UYNsDkOaLywFWkp2e8HDmlBMXWUfz2QMAIXdRjsOujbXOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435475; c=relaxed/simple;
	bh=4hrjJGUuTmPdSNRouy7j/Yjv4LKXbVwkg62IVzhs4Og=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CvcYIhWOvuRLGWuFctrMF+hKnDGOj9bviSzof2W1sbaGandE7MqPRSpqAGiOjP8A8xnne9JjKCpUY1hUU2GiNpbG3DOYlU3CCKBb5di4luaxqpzxnubeBPallHtLtAuCsaBkRkwRpfXi2jLbna/bu9vfPKKkIIX0ma4KvZtxpMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V2ONqsQ7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=frmenS0U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I9trWQ2784578
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=HpAqhLvPxhuGwRTrvYggys
	NyS/zmnMo9K/I1PhEVNS0=; b=V2ONqsQ7A5vob43PptMVxgL4eme1dILoldcQMx
	xA2IXSFcyKSYT/hu4BaaKXghUxmSPsMybCoLWQCPJWVj00KPd8GfZCb6TxgapTVy
	ZJHo0CEGfWvUjlZbwCRxmcoULmPckpIbYbzkAk0KP2bHAkEvteRnR3IBFwcpAKto
	txOdKZowBcgNT/m85kz07wvDzeSoBwuzwdcEGgkHOg0MY05sj6XbgqZ4CbOTjdVa
	ygmF6u0PkkeA/9T8xBocUp25pIcwmIdc5zjuHq+V/8LxH3GZCdXMo8kPJxp4T9fc
	ZgA2PumHwL2ymBNJ9ORzRtVtimlsvFfpxuwIPGb6yjVaYmxA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccyrk2ym1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb37db8b79so32701585a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771435471; x=1772040271; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HpAqhLvPxhuGwRTrvYggysNyS/zmnMo9K/I1PhEVNS0=;
        b=frmenS0UZpfRH9UuQHZnlaP5j+1KUlgPMilG5+UfXzuSoREaNlgWKEgo78gJ1ympdu
         gfUAhVJfDS4OpT1NtTT+YVyZGQBHg8CWrKKlL7rzVNgs/0LXv/+9e3PRSCKDk0Pi2VWE
         2o2n9g+qY6vFV7dc5wpmVE7bSaahjPHT7IVNZ+UZjSztQLIe+AHfftQxVkfYVGarhFIZ
         b+vEtLLiM/Cxf2nJLYb1kzxLNelJdEKsNcP+Y+TkOvoRNucK1sr9qENK90XvIrWkphV0
         Ph35Eqhw2rqBAGHTAHGucZQUtU1ztuxXvXhbfz1bcyZFSAA9WBIFErPVMcWYcOmhTxle
         fnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435471; x=1772040271;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HpAqhLvPxhuGwRTrvYggysNyS/zmnMo9K/I1PhEVNS0=;
        b=P1N03E0iHMhxCxN9C9yMV+BydMM2AtbaiNCTV/r9tbnOI5Ce9dweE2h/TcRiZfxKt5
         ea9VrIj00FVL83Us9jxJk/sHJTLKdoz/a575vi5GhT5OUv/aYIIGzquQAhhHcS6ge1l0
         J+WsHW73WW1J29LXJdLpAuILTk7Jqxw72uF4dx90FQTD1lt8b/ITizN9B08Zx0WEyRDC
         i9UgIv5BqAarOkQeNch5Vxy5lqEUZhlbhHrNrvlEh5pJBK0YWAFDfP35utw1gPbzD0im
         YHpVXvqc/sM0IskBNWZfdh2l2NkBK28SjY8nIyArSFJ7b95rGKV9cRFfPpLzKrlv0N7t
         4DjA==
X-Forwarded-Encrypted: i=1; AJvYcCXEB6n9bv1H4/RCphHe/Iy38iCEkg8N+SFxw4aukVDxj0HOoCUG20nqpmMzLeKVswEF4bvfbXZlI2Dp@vger.kernel.org
X-Gm-Message-State: AOJu0YynpBucLJ3aKbsh/rA51tCSB2DtZd/N42CZR9h6ADCM9q3rpThd
	E2CsTElNVGjdbNmUNY00JWpl01Uz7U/u2zSa8ousrbjF4kjKZKpwJr5ebS6mb12oChhbIbNdYX0
	bDaQG5ky3HvvAAAylwYHJuOv3XUY/9xXUxufUwNS/R6NqejRI0stQyj+G6DZWmrE4
X-Gm-Gg: AZuq6aKYo551Kq6wivls2lL5llvJsd6HZdzrCgjVbQHArlGDOfuUE2PndtT6/rqjf4v
	+r32ieXShpqAzxSYLMgf08L82oB/oatMW8JEjqla6E50vT4GFA1RbjxQpRda4sFev6z+65/H3qY
	kWMz2hyq0Lhit3aKUe+WZ52hKUR7o8VqWGgzuT33YTMG3yslPGJ70Ruc6Euii2d6W8qCY5FOX6c
	da+eTxT0n4X4qa4MDE3NjMCblxyArpaI0W9z5+5cuj92nVvlTyTSniLlR1w/OgIF4w75EymZnAc
	mOvwUkduDcVRfcSaCeTSROhicX6BP64TsRkvL25Hx1zt3tRbKrFeN9VZieESvzKgRQUArYsIRyx
	SdkJJ1O+sLZk2ERMMx/NDveeSY/o7/jt2Dl69osyUEQGSUg==
X-Received: by 2002:a05:620a:44d5:b0:8cb:3a18:702 with SMTP id af79cd13be357-8cb4bf6994bmr1822432385a.17.1771435471391;
        Wed, 18 Feb 2026 09:24:31 -0800 (PST)
X-Received: by 2002:a05:620a:44d5:b0:8cb:3a18:702 with SMTP id af79cd13be357-8cb4bf6994bmr1822427585a.17.1771435470842;
        Wed, 18 Feb 2026 09:24:30 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8d46sm44181368f8f.32.2026.02.18.09.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:24:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 0/5] arm64: dts: qcom: Drop redundant VSYNC pin state
Date: Wed, 18 Feb 2026 18:24:22 +0100
Message-Id: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMb1lWkC/x3MQQqEMAxA0atI1gbaOsowVxEXtY2ahVEbFUG8u
 2WWb/H/DUqJSeFX3JDoZOVFMmxZQJi8jIQcs8EZ1xhnv7iFZca4KyaKh0QvO64sirbylTdDX4d
 PA7leEw18/c9t9zwvrHliDGkAAAA=
X-Change-ID: 20260218-qcom-dts-redundant-pins-13a3a0fb5c46
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1478;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=4hrjJGUuTmPdSNRouy7j/Yjv4LKXbVwkg62IVzhs4Og=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfXIE+4I+xwOO/6eTC6lSmcul/Hz8/QhHEfOg
 k7i9WvMj4qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZX1yAAKCRDBN2bmhouD
 11WZD/9PtPqPXMvG+qDp4LMAOorrZ1fgGD4744ibwZiVBZrP972449Lb57+Cg9Nf8mIQyM6LKxb
 pqlNGxeJF5+3/x2mscVM+PyQB0bxZZseF1jutvJXCKYWmnK9562GTUm+K79NLFgejHqYHFuQ2AE
 MQanrt5EUk3w+S79JPCMPJOwEu1nodEb2QrwI2vMbdd7f0bW6lvTXt8xTLkxOUMhEJ4jjskhRE1
 TI4zeyx4V3TQMiBLsAst2XIcYBD0Fwy4X3LAC5UGEgGdwa+TzUuC82O1tg3JzWPX5IxpULkS1Zm
 9Vr4AClY/phJibUK+CpV2TM0AAKVtsG0cFi38STOlObeHSXMSQyhCDKiXafnf1YV7JFKqJ3vyL1
 0bFmLIa+Cs27SYS8latUsBgiE6pkfSLjj3NSnVbHhZvKWB1awbRm53Z1yLGLQeQBPwwM9VMC0zv
 uJQz9gE6d0cFxCrjsKci4peHjq9BCRU6aoCchMNREvX5S0wnzJVkN0X3X0Kz2d/tDJTeQKeTbQr
 OkTjkSmOL+0FEqfgVXMzVWJHGipoCRUMK2RSWkSnGuMAeYuL+EoHfoOjMLmU2EuuFqL7oiZThM/
 /UVa5hNsq0kcBzC9oNr+TwnIpgx8cUZcc0sFjrZrrmLqUbmIcxvimc3CfmPejOEQxmmdUhK79zu
 ZB0shfyN4B++0qw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: mnDUPvZg-13b05V2ItiqGZwVp_Fi_z1_
X-Proofpoint-ORIG-GUID: mnDUPvZg-13b05V2ItiqGZwVp_Fi_z1_
X-Authority-Analysis: v=2.4 cv=eOweTXp1 c=1 sm=1 tr=0 ts=6995f5d0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=m1syVNA5OkyIPQ6o9u8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0OCBTYWx0ZWRfXxcXLPCLqL18L
 BAGCEDlHOPZKhjBjssdrxeTShCok1jJ/+DQw76WXe7f7ZVMBiBpATtukWhIS9CePEeKazOupBXx
 TQg1ydLNjqT+83UwaxxjrVKAW0vUmYxSP5dy+i02WhoBXLXxOOR429aZp6I/fhGDgCCpuTiKhRZ
 eGRnktLexm78CswY7Y7wrW/L3vL1W7RV+/KLKYFjfZa3fNBWUk4q8azq7Is2d+O4HC8shHkjw4Q
 UsKfBiLrIhzDuYeK7yIyqMPNN6KnHpIaQhnynclRcaOCWt8tbIF/PsXuiX/3KK3yQ0QYiEOwDNE
 vX8D0yvfdkEvkeLAQa5U0GmuMGq2cHOSRFqpBNLYqnd+nlrweTU9WJbwjng8iRip80K0ZMACpjT
 y3tfwZNf1G0Jj2WXeNzb2m00u1WljHhCoAb3aKY0dDtiv+E5qoXGX8cw73vvgZV7Z9/vQoELKmS
 l51hDNbSfbtVoJE2MtA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266479-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B5A9C1583EA
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (5):
      arm64: dts: qcom: msm8996: Drop redundant VSYNC pin state
      arm64: dts: qcom: msm8998: Drop redundant VSYNC pin state
      arm64: dts: qcom: sdm845-axolotl: Drop redundant VSYNC pin state
      arm64: dts: qcom: sm8550: Drop redundant VSYNC pin state
      arm64: dts: qcom: sm8650: Drop redundant VSYNC pin state

 arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi   |  9 +--------
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi    | 11 ++---------
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts     |  2 +-
 arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts |  2 +-
 arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts      |  9 +--------
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts      | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts                | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts                | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts                | 13 +++----------
 10 files changed, 21 insertions(+), 77 deletions(-)
---
base-commit: 350adaf7fde9fdbd9aeed6d442a9ae90c6a3ab97
change-id: 20260218-qcom-dts-redundant-pins-13a3a0fb5c46

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


