Return-Path: <devicetree+bounces-268955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sASWGTCFoGkakgQAu9opvQ
	(envelope-from <devicetree+bounces-268955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:38:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3161AC98A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:38:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2AFDB3779991
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E686119CCF5;
	Thu, 26 Feb 2026 16:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ewZnY7Em";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I5XDYtM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3B4364939
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772125188; cv=none; b=G1fHk4OlqdYFAxf/Z6IChxW5WnuCGWyFiDUNo3xEjE1CyX2bAIxUFyfFMmVPbpPEGnoqsm+4o3ZQmue5NxW6PybwQZTNfKUHqK3A7MyHWxTvyr0N3XY3z9VFJF9GUlznw5/x9SrPuPr67qu13vSjMIKhZSUNygy/Iq0BdwA4gxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772125188; c=relaxed/simple;
	bh=DuCCb/XRGzy50z6hxqbTg5JmBvPSG3Rfjn4nj7hqk+E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LKvLqiErN+s1RRIcjOtFhSXIIxVBuvA6c0y90M9m3/8AolBWe1D1WA4Khcu8CXz1Wtr6b/Rw2kaIunYh4fg09AkzM10D5sc6A7rVIEQYfVGQp7O11TzIyi3OZwEqOBR90pJIVDBLiMed2EjGbG572BDnbsU5QjVWJCMRGepTO7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ewZnY7Em; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I5XDYtM9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QGho2u2516178
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=d2asf21f0pZXYOQMdBLM1d
	V3RQi6lpy5t1gpF0I3/7w=; b=ewZnY7EmotplmTwFRrWJdyoT2KUrZsn9l3xiD5
	+Ql2GpFEqD+HKwd6dzeY4/5Y4VBS/eQo0y96r/a3xdV9kbzNJCQWpdOmDldJJ8pY
	eVw+Q7HDqUEr+RfJ+7LW6mSDaqHDiVpAxOVTwIVXRTtOQh9vOHhUd3eRxU4nr9fc
	/OAOnzjcbKNe0AkCeR1C4uoEpXSm6px2zBCZbvUjOudL1nisIF696cNh2u440vDv
	Gs1MxRWYjt/F3QM5OfWyOENPqyvY52ViAbFfziRXybw7Z0I5kurLKnaeV+06p9eE
	RvZA/CuMHqvyMqAVvJIr8aLzOD2rZyqTzPJRhBmX38URk+KA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj4w4v6tw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:59:46 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8273494d873so459739b3a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772125185; x=1772729985; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d2asf21f0pZXYOQMdBLM1dV3RQi6lpy5t1gpF0I3/7w=;
        b=I5XDYtM9IgdZTarkobzDby1jIivR5xQSQzdYOsxDmZnKRlrMmHnIzmUk9oLg8K3rjt
         PEBz7QuKpXXRnDUYd/rGejonQyGunlNDW/CIjYN8g8+55zbmDg1RdpMj5wclmqsTA1d0
         wtbZ1Li9Xz0e0uZTZE3M8jgYAlKsvBq747Z+LF99d53+zJ3qquPE4OE0KfvFRFjS1udx
         f8kiGwIKw8xrReinnGs0Qk+o/m2kuO4L08cauu7zqB/CX+eGEBjxQjup96ABYvME6V7W
         hE7/2rYZMmGNRdNq9tvYIqwyA2iySmTo3tJ8EGHl2O5sK6bGCJ3WVlZ/SiBcxKTmo2WM
         jx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772125185; x=1772729985;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2asf21f0pZXYOQMdBLM1dV3RQi6lpy5t1gpF0I3/7w=;
        b=YCMu1PdZrO+j4Xh4cVKT5hrAgkVwUCngckrWvp1NZJDHfVSkhLfFGEyEqE/VrUaSdz
         FmoovIWZx/oYYh01ro8FEIKbxyQAQBkGo/GlQDRcy+3PpaRrPju7USJVtmAHMGU47z8J
         EbQjA9VgDSey9/zMNjx2HJzWOL7XTk77JA0nWDTBHrZibQDienPWaPkYfFkUTZW0+C+B
         KdMzqerBkkKpleWH8DL7WvoB1XhRQXQOafh/uSkF0i/60jYcxfsbsPvFyiTYdJwuAm9I
         f/w8oIfRWujSKhadLjdKEnJwifZwGBaS2j37t49FF0S30A005iGf5LQvsR31ChDk4lQP
         ++5w==
X-Forwarded-Encrypted: i=1; AJvYcCWpJfAmEnNSUpr6xwBYDVkT5kj29opNneYsIuBudQw4/Xgr+OvjjbRwPdX72I4y2WlnVuxB8pUs2Aaz@vger.kernel.org
X-Gm-Message-State: AOJu0YxJMK64SAsb9t8p5iAGfGfOIl0z4kO0HnWJgMvTG3uzgwFBdPkR
	uqijKglEEQyauhuna9Jwf4p0szAp0sXTqAMKw+LsLNW1nOqwMFUawzla/dktKjT1f3dNoK0g5FE
	qQMzeyyXvpDERM5g6VxDUjvdYAk+l/pktG5GMhiMyYvvJkvX46laq0jGyHZPxceKD
X-Gm-Gg: ATEYQzxEnjt5kfmjZU1Mnk1MZfgVntbn2cLfe45RfblKrXwMuivhZDCtow8fw2np0I+
	maPZJfv/ZC9E9ehHNRPgbmzTxW/wLn+sek4Qumeq9bmUPDhdzvoWDjjVN2NfD9CIpk4ahIX3KuI
	5kQlhlnbIsQLvN2mbE1YxtfUN4WSG9ZDcs9dHHq3PYdUhNP+I87W4XDJwF9ThQsZ1ddJoFJ2PTM
	4Fbs10gIPcfUCO2hcrDbJxhdV1cS7xKPME2ZdbRd+aiSBNk2GPuWcScKSdZcPbnnkWPaSBn7ScV
	mdp20qhSwqu/TUcnTg4ZsRVMoKXiHblQ8QQ88InSfGUD+mcWw0QgA3sYy1SDgp2KnfPK2P5VgDa
	72nWoP3fg1x80hWVIABr4cM+uR/T6GJIcsOGdq/TgHHtndUtP6bSun0HY2Vcf3CUpQGuy8qsFsh
	KQHU16PYuvp5U7npcKaZEnH3ODplLHSUaNsn5dhYmHVOXp+8wJPyb90KBs
X-Received: by 2002:a05:6a00:6c9a:b0:824:a466:7470 with SMTP id d2e1a72fcca58-8273980607amr3318729b3a.17.1772125185222;
        Thu, 26 Feb 2026 08:59:45 -0800 (PST)
X-Received: by 2002:a05:6a00:6c9a:b0:824:a466:7470 with SMTP id d2e1a72fcca58-8273980607amr3318704b3a.17.1772125184707;
        Thu, 26 Feb 2026 08:59:44 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01054dsm3626286b3a.43.2026.02.26.08.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:59:44 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v8 0/5] Add support to read the watchdog bootstatus from
 IMEM
Date: Thu, 26 Feb 2026 22:29:35 +0530
Message-Id: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPd7oGkC/23NQQ7CIBAF0KsY1tIAFaZ15T2MMbRMLYktChU1T
 e8udOOmm5/8Sf6bmQT0FgM57mbiMdpg3ZhKtd+RttfjDak1qRPBhGSKM/o209VjwJw6uJGClrp
 DYIKBJGn28NjZz0qeL6n3NkzOf9cPUeVrxhTj5QYWFWX0wEE3UNWtqeHkQiieL31v3TAUKUg2I
 /wdIeSGA8lR0sgGsESOzYazLMsPhpfXZ/8AAAA=
X-Change-ID: 20250610-wdt_reset_reason-7a5afe702075
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772125179; l=3591;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=DuCCb/XRGzy50z6hxqbTg5JmBvPSG3Rfjn4nj7hqk+E=;
 b=tQed1FF0lltwTzC7SkqiVeV7oHUd4NWOpxFR032Si4YzylEyb9Nhr90xfpmhVIcpJ5UAR82cg
 cq4I9HJ1byDCdWEK53Wv7rmtk6DII4sgL+FCYo77z1L1qFgfXA1fehK
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: VH6cCuBsuDvwOWps6rr0L7BM9pnYbmx2
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=69a07c02 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3xu3cfvniY9m67ySxx8A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDE1MyBTYWx0ZWRfX0sd3S5BN5/5F
 ASdz+xMty0Bhb9gLIgjg6bcqKqTNPtEAVq6giyFGiq/w1/CS6UyzqZQpyqaHJ03pzhVnM+/yAxu
 f2no6FkVL6FQn1ByLFa4o+lE78vYZd5N5ch1XsiAiC4/FbUt1d5pLH6IkpPXZItx/rXywbT4A/S
 0PZUXSEr143sAVQtDMSZDy/GTNCnp72HaYD/FQvRFVihtqfGC7YPFriZfrMRSViO1qGfXF8Cp/m
 FDhQ2n/JMPC/6Wn992AYkcow7KRSiTOAaUt9wN/GCS2R7ayVsGiNz/bmgBQWc+uC/PXolmKuU1N
 CgKY8WyZLwIHGJ8GtRHSwvg6PVGSqJRpdyPKtmVxqgMkj00H1N3n5D6fsXZl/ycD8BIKtIcB4Ac
 ifzUaVkX7ZiD5Jyzcgt4h4SoJlY+pKuMwnoPpbPwyKUzlOl7AScP4hG5sNHQ0zsoAE4lv7UJQsz
 Sk1Vi+8ZnFtznJxrl9g==
X-Proofpoint-GUID: VH6cCuBsuDvwOWps6rr0L7BM9pnYbmx2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260153
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268955-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BE3161AC98A
X-Rspamd-Action: no action

In Qualcomm IPQ SoCs, if the system is rebooted due to the watchdog
timeout, there is no way to identify it. Current approach of checking
the EXPIRED_STATUS in WDT_STS is not working.

To achieve this, if the system is rebooted due to watchdog timeout, the
information is captured in the IMEM by the bootloader (along with other
reason codes as well).

This series attempts to address this by adding the support to read the
IMEM and populate the information via bootstatus sysfs file.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat
/sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v8:
- Collected the tags
- Updated the commit msg with reasoning in 1/5
- Updated the comment in 4/5
- Link to v7: https://lore.kernel.org/r/20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com

Changes in v7:
- Collected the tags
- Added the reference link in 1/5
- Added the flag 'no-memory-wc' in 2/5
- Link to v6: https://lore.kernel.org/r/20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com

Changes in v6:
- Moved the IMEM compatible from qcom,imem to sram binding
- Updated the 'sram' property in watchdog binding to point to SRAM
  region and update the watchdog driver accordingly
- Dropped the Konrad's R-b tag in 2/5

Changes in v5:
- Rename property 'qcom,imem' to 'sram'
- Use dev_err_probe instead of dev_err
- Link to v4:
  https://lore.kernel.org/linux-arm-msm/20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com/

Changes in v4:
- Kept only the WDIOF_CARDRESET and dropped other codes (Guenter)
- Renamed qcom_wdt_get_restart_reason() to qcom_wdt_get_bootstatus()
- Dropped the device data and describe the required information in the
  DT (Konrad)
- Link to v3:
  https://lore.kernel.org/linux-arm-msm/20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com/

Changes in v3:
- Picked up the relevant tags
- Dropped the fallback compatible handling
- Split the driver changes into 2. Introduce the device data in one and
  extend the same in another for the use case
- Link to v2:
  https://lore.kernel.org/linux-arm-msm/20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com/

Changes in v2:
- Dropped the RFC tag
- Reworked the driver changes to use the syscon API
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com/

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

---
Kathiravan Thirumoorthy (5):
      dt-bindings: sram: describe the IPQ5424 IMEM as mmio-sram
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: qcom-wdt: Document sram property
      watchdog: qcom: add support to get the bootstatus from IMEM
      arm64: dts: qcom: ipq5424: add support to get watchdog bootstatus from IMEM

 .../devicetree/bindings/sram/qcom,imem.yaml        |  1 -
 Documentation/devicetree/bindings/sram/sram.yaml   |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml     |  6 ++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 16 +++++++++
 drivers/watchdog/qcom-wdt.c                        | 42 ++++++++++++++++++++--
 5 files changed, 63 insertions(+), 3 deletions(-)
---
base-commit: 7d6661873f6b54c75195780a40d66bad3d482d8f
change-id: 20250610-wdt_reset_reason-7a5afe702075

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


