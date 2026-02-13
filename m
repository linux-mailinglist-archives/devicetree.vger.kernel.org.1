Return-Path: <devicetree+bounces-265451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK6vFY9ej2mtQgEAu9opvQ
	(envelope-from <devicetree+bounces-265451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A97421389CF
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EB2E3030B36
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5450364EBA;
	Fri, 13 Feb 2026 17:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P4+JA1yp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aRHy1ae9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B5E364046
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771003532; cv=none; b=qxqsN+qmErpsDOCr3JEZ+91X2A/LFYXOSVc+DGyCR18pqYvP21ROrD1fBZXQ5GUlKUOSFHx6eyYsTZqsxLnNOKchOF4+QoSrxGHT01h9GegiM9LIvbmi44l32zJt1fBKl5qwRaYIFeJKmyw2gjn4/KW+ThgyPjLsT4KGjSJwgos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771003532; c=relaxed/simple;
	bh=cl+XqgQoONKEY22Ce0VniF/jJ+caYf46XTqw9Rc2Th0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=V6KGfqAcMJIc/Vj87fvVJaN2jdpoJetiFREzpShDvCmWBlRiTL0ueyxTKnIvO89RoajITL22fXz/JS5HjUIlR/geTk047Wp5RHj+KTeMOZzB/dpJWQ15UgMXcnonxeu+wPCjxtkjCBQpcsu1teBXvUvimNW5Sohvf/UydbnFcfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P4+JA1yp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aRHy1ae9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DBrC2O1756664
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:25:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=IsSJ8tgmD1QKyWhNC4CdF9
	fy+m75GIV+dX4DFKXyL18=; b=P4+JA1yp52AYuU7XZUn2M9MN+u31ZxXXPbEuYW
	zyYdwIqPZhDzxIFHtx8g87/qwec5i8A4BuybD6ffUXEOY7qcq4FgBFEq4kJKoZHo
	LAMmonunysMsPScwXvFM6jPgW+CYlT7ECu7/5JkeB+atFsRa9GQ1BYOC9sq5qu89
	F2WgRyIAILko0QHS6nu08+Fat1pFoUU448pnuF1ZFeNwzahMg6sM/fZTuFXqZyZG
	mv62a/womaYIqeiUZQIpY8I/bVFCLtKU7x6pQPjKj9D5ChQ6eBVK3ibMk3QHllQQ
	/w3+hxLd5dOZj0o1oKR8mf7l6GE51jMjvFDWt72l/WkYJgiA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9mb14gsb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:25:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6ae763d03so129716785a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771003530; x=1771608330; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IsSJ8tgmD1QKyWhNC4CdF9fy+m75GIV+dX4DFKXyL18=;
        b=aRHy1ae9x5j3csd4PEwqrWb6Gbp7Ov8tmtLIckTVPYgGmTkB4R24wBWRnxE/9f16ko
         /tTQVyS7nSFz/+fmElprXNTC5ykI/xPoGKlafukIlcP7wwdeohq109f4xNw3Xo4Tf9oU
         3hjJ2Di4J6AxPGYzqYhJZWjqW8O3NRbT7xXtsFiGPL2G8GBNpXFmJyNMf8yFXguSQG6k
         uTR81EM906/nC5x5Pp19tyAUUy6r+ZAubVoPXFzS+j1O34cpunCsj4livM+jNHKQoeNg
         X4WxvmEc5bV8gseU2yBgGTIYb24cSlKd8ROyGkjJ/GTmiL6ygNO+e+VWru4diJhvjL8r
         o8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771003530; x=1771608330;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IsSJ8tgmD1QKyWhNC4CdF9fy+m75GIV+dX4DFKXyL18=;
        b=cVecFqi+DbepM2sPxNbHLmAwDYNUCGOsTKBFqrIFjdRMtuWFXO5Yqdexs4Zl8gRjRE
         iaE0iCCtddRWZsTv88LAYVC8VhdtXK1yWDQ91ZIrbt2Ly75qQq8fBgz3ZPCcR9rwQC5O
         frXH8jBylUQ8I9IYSayj1z8gqXA8p0iVFcabBQWZG8InUkVfjoGLHotYYHptaqFGshMM
         51yyMgvjta7wXh6ETkstSwHO025DJcX3xULjT2dCTDzE5nWECpo+OvlZIUOp9GcsrKhj
         4W8aPBo3jwmWbvWRHhS50tsG8bXFJ+k/N10gUXHe5GMaN9BnF4p83yX021x38q8YMymS
         qJxw==
X-Forwarded-Encrypted: i=1; AJvYcCWNzQW+diYJQmYftiB7FFCprcvCLbxcsruAhdbg0KEB+9351XieOoVZTxSaZC9p/Rbv0F5zWNhRMjx1@vger.kernel.org
X-Gm-Message-State: AOJu0YzRSZ5qypPmK3MKjqPK+tFVk4PMEwNQNrGNAMNT+kLWs6scXJkR
	mGkI8quXJviJm/HfArhmML6TQojfsOBLYqoSQhG4uhRzhavgttIGgqtPgJCrMA2Sc+2MK5c2+C2
	lWxROPP6bdFItajsKeGo+lhNAMUAR6VDoKGKyGrmHXH6wJgxkCv1dxz8oP/dyEjpv
X-Gm-Gg: AZuq6aKnxNqH+t3rxGFl6xM0lrmiHrPQCi73diNiLT9ZyjpNNC2k7Q4DbW6gsVWUhY5
	3dX6HMxJDnT5oqO+E5zeAkrp8ivEsA9Zki1gWYr+4a3ZOB/ucicHruDeMinHCv3gdGDNUAwNDQB
	vKgA6x6lYhpXReFKxycrw7Q5ERRErLcLO0q7v/yRk3Ww4i6j1K9Geq/XWGliS4Hll9z8Wf8KaPV
	wz5jeFQoMEFym3u/iWMrw3S+R9N5DRDiJplupKFu7DMBLTPJr/bLxrGOXKIogl2XWEPRzE3eLVc
	/8BSeKEN/howuVnb9jPInkamV+d2QvwfT+MAwKEAEgNNMy0BA2jwO0oUfXr9aIXhW8k9Bf39X0A
	b6UY/os8BzXFRqTieWnoTMg5A3KN1HL3KmwoPztnaS3v8dV4N2h8HbRP1wb9AxDTlu8hgLqoHc1
	PbBQV7h3I/rpgHtkXgmgFtcCxusu+fsbuDCX8=
X-Received: by 2002:a05:620a:170c:b0:8cb:2b30:1c7c with SMTP id af79cd13be357-8cb4245be7bmr316598085a.56.1771003529570;
        Fri, 13 Feb 2026 09:25:29 -0800 (PST)
X-Received: by 2002:a05:620a:170c:b0:8cb:2b30:1c7c with SMTP id af79cd13be357-8cb4245be7bmr316593285a.56.1771003528997;
        Fri, 13 Feb 2026 09:25:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068e5e11sm13482831fa.21.2026.02.13.09.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:25:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 19:25:25 +0200
Subject: [PATCH v2] arm64: dts: qcom: qrb2210-arduino-imola: describe DSI /
 DP bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-uno-q-anx7625-v2-1-c23359616528@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIRej2kC/3WMwQ7CIBAFf6XZs9sUGhfiyf8wPVAES2LBgiU1D
 f8u9u7lJfOSmR2Sic4kuDQ7RJNdcsFX4KcG9KT8w6C7Vwbeceo4Y7j6gAsqvwniZ+RkpVWyp04
 rqM4rGuu2o3cbKk8uvUP8HPnMfu+/UmbIkIQYR22pJ5LXkFK7rOqpwzy3dWAopXwBAMlTXrEAA
 AA=
X-Change-ID: 20260211-uno-q-anx7625-26f8fa8360ca
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Riccardo Mereu <r.mereu@arduino.cc>,
        Martino Facchin <m.facchin@arduino.cc>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4921;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=cl+XqgQoONKEY22Ce0VniF/jJ+caYf46XTqw9Rc2Th0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpj16GcCp73tbs+desX4CiOIkBB3qOI4w/Eheh+
 0/Xgq7MulWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaY9ehgAKCRCLPIo+Aiko
 1QWJB/4p9y4tKGkJf6gWtUHUGdXoffXGmrzXDibq2435MJRbqQYGIkxfQLO/AM70g4Wtz5oJGT/
 ARC8pofefFHGgHcwLayNoO0fbz7AeonRaHTPGl9eNaFbq/klS40338BWzuYm4HiJzdYXIJwpjQY
 5JuZMN+dHp/HWuizjKl6GmntvFNaxqTT2TsMkExyrTaIDCwdvgX26t/qC9FIEj4Z7FyYJcZWI5+
 n1aqLzzTfBpwcYFoxCPYT/mViSbtbzGnnpJnP+ERcuo6qh0lgMTqh4WWAdi+JF+r5BZhAt1wOTs
 qMjaw4npAbR+f8upjvhdKh18P8CxqZPyWbnQ9kD2USZQXNXl
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzMyBTYWx0ZWRfX+Me9ou+cdxkT
 1jHdZcsCFBYfcN7xqNhhaeoOiMw0YPeCHUbpviaGUiYjiBlSl/6Ati3usEu18IGOE3enXJbZwd8
 bQLAIiyrm+irzRMn+L1TDAl7KJJVq0EbVInk6tHst8GN46oFkeQqgCYb3FsQFq6oZDqXzBH3MFE
 +7uXSHEosJNnZGyTv242PsfeWeTu0oVYWWwW1YPgmiZzp9h9Hf08YygpY51ahgfx1SQsNbzFCiO
 bAUdZ5LxD5y6ELGAyoRu/z+Vbh4te/xAaLKwT+wbeyVdu83g3slIOrFMiLuAyNxoyfgaY+2riVF
 hyYraUedt90SQyaFnEQfPI+0qB5jW6bd6Krf79MI4mPMS8BJcERFXVR52annX3WuCBjsosPaU77
 VDfbs4+ygCrKCq/4SHTTvn0Zw49Spoox0EAv5+lL3O8Xzcd3+4NtEJ+spStmUGCmQEfOtbPCF2R
 9vFHfXzJ01wyYKmlpiw==
X-Proofpoint-ORIG-GUID: GvcrFCtMpEWOeIdHqCwqEdOXqgq6TK2t
X-Authority-Analysis: v=2.4 cv=asC/yCZV c=1 sm=1 tr=0 ts=698f5e8a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=D7Way3EH76BgfoHcdqkA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: GvcrFCtMpEWOeIdHqCwqEdOXqgq6TK2t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.58:email,arduino.cc:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265451-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.1:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A97421389CF
X-Rspamd-Action: no action

Aruino Uno-Q uses Analogix ANX7625 DSI-to-DP bridge to convert DSI
signals to the connected USB-C DisplayPort dongles. Decribe the chip,
USB-C connector and routing of USB and display signals.

Co-developed-by: Martino Facchin <m.facchin@arduino.cc>
Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
Tested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Note, to function correctly this patch depends on several patch series,
fixing the ANX7625 driver:

- https://lore.kernel.org/r/20251218151307.95491-1-loic.poulain@oss.qualcomm.com/
  (part of 7.0-rc1)

- https://lore.kernel.org/r/20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com/
  (part of drm-misc-next, to be landed in 7.1)

- https://lore.kernel.org/r/20260211-anx7625-fix-pd-v1-1-1dd31451b06f@oss.qualcomm.com/
  (recently submitted, hopefully to land in 7.1)
---
Changes in v2:
- Dropped extra comment (Konrad)
- Added empty lines before the subnodes (Konrad)
- Link to v1: https://lore.kernel.org/r/20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
index 197ab6eb1666..0be5f2a3b3f3 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
 #include "agatti.dtsi"
 #include "pm4125.dtsi"
 
@@ -109,6 +110,15 @@ multi-led {
 		leds = <&ledr>, <&ledg>, <&ledb>;
 	};
 
+	vreg_anx_30: regulator-anx-30 {
+		compatible = "regulator-fixed";
+		regulator-name = "anx30";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	/* PM4125 charger out, supplied by VBAT */
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
@@ -142,6 +152,86 @@ &i2c1 {
 	clock-frequency = <100000>;
 
 	status = "okay";
+
+	anx7625: encoder@58 {
+		compatible = "analogix,anx7625";
+		reg = <0x58>;
+		interrupts-extended = <&tlmm 81 IRQ_TYPE_EDGE_FALLING>;
+		vdd10-supply = <&pm4125_l11>;
+		vdd18-supply = <&pm4125_l15>;
+		vdd33-supply = <&vreg_anx_30>;
+		analogix,audio-enable;
+		analogix,lane0-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+		analogix,lane1-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+
+		pinctrl-0 = <&anx7625_int_pin>, <&anx7625_cable_det_pin>;
+
+		connector {
+			compatible = "usb-c-connector";
+			power-role = "sink";
+			data-role = "dual";
+			try-power-role = "sink";
+
+			pd-revision = /bits/ 8 <0x03 0x00 0x00 0x00>;
+			op-sink-microwatt = <15000000>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 3000)>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					anx_hs_in: endpoint {
+						remote-endpoint = <&usb_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					anx_ss_in: endpoint {
+						remote-endpoint = <&usb_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				anx_dsi0_in: endpoint {
+					remote-endpoint = <&mdss_dsi0_out>;
+					data-lanes = <0 1 2 3>;
+				};
+			};
+		};
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&pm4125_l5>;
+
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&anx_dsi0_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	status = "okay";
 };
 
 &pm4125_vbus {
@@ -361,6 +451,22 @@ key_vold_n: key-vold-n-state {
 		output-disable;
 	};
 
+	anx7625_cable_det_pin: anx7625-cable-det-pins-state {
+		pins = "gpio46";
+		function = "gpio";
+		drive-strength = <16>;
+		output-disable;
+		bias-pull-up;
+	};
+
+	anx7625_int_pin: anx7625-int-pins-state {
+		pins = "gpio81";
+		function = "gpio";
+		drive-strength = <16>;
+		output-disable;
+		bias-pull-up;
+	};
+
 	key_volp_n: key-volp-n-state {
 		pins = "gpio96";
 		function = "gpio";
@@ -428,6 +534,10 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3_hs {
+	remote-endpoint = <&anx_hs_in>;
+};
+
 &usb_hsphy {
 	vdd-supply = <&pm4125_l12>;
 	vdda-pll-supply = <&pm4125_l13>;
@@ -443,6 +553,10 @@ &usb_qmpphy {
 	status = "okay";
 };
 
+&usb_qmpphy_out {
+	remote-endpoint = <&anx_ss_in>;
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;

---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20260211-uno-q-anx7625-26f8fa8360ca

Best regards,
-- 
With best wishes
Dmitry


