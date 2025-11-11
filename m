Return-Path: <devicetree+bounces-237030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81931C4C1B3
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08C013BC8E7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10290329E4B;
	Tue, 11 Nov 2025 07:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BQEIGOcl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MaCMfFJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788E0313E15
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845642; cv=none; b=ktjWNTCwq59lO1QQDLwu6XflNEhBpWBge8O0b0zlZMTHm1bZxd1LLtqO/NXaFYWKHmfSUCDfOsC3WzYSY7sT03LSq32p2CWPywbT87+Nu+PNYrmnqrHFClhhc0fPy12467aYXHazS24NAe1wc5rCkDqZsQ6TdmSlBum8xU/431U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845642; c=relaxed/simple;
	bh=ojYpKrwiJr/IeRiFqYr/O9ysiIeANv2FZpkain5kT/w=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FdzDJJyELW6N+ymadhWB068dCkn10t5T+YfLDAd9A3gdh5zaZoiyOL5+SjFf2TEDMXxqiKYfTr4rnhFmlJmV5b2p4dHiXS1V0+JAZhTnE4pbW6jiElwX7E6H2PLHb6JlgzVBOkwZdLnGfo2EJsdKa/hN2OerniC2q3+XyL5iOBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BQEIGOcl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MaCMfFJ0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AB45m2A1009317
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=az1eS4yWnkGWVG3hRFxIBdC+UkohID5Sb1d
	RYK81rRY=; b=BQEIGOclxHxPwATXmgPgowWLUs0GrxLA4BiCGkTADCcIUhI22u9
	rmTBiyPEKHNi+CnBlX7e6U2ziWXEBem7cc0j1YQqVtxofhnmhaLcc2G+FeIXccW6
	aD3W407GQN49mE/svmsWcbwD1UFF2855GeaF4/W/JNEmyUlSQAyWIaJOTY3vD4UM
	x08RHnWv/LELx6HZBYPkPBzGJyTo9LKpppaTgwWoxmj9ZtaKwsZWVAKwbkN8bIRm
	mPHsHSFw7XjUtiBZAOP22WHw7UK4PIvOhwglaHjzOg42g7lSDP7i4E/UMGELcNmM
	WSgqajV+ZEcsKNOxlr0cISfUUPVMOVCpjbw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abwtj8g72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:20:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33da1f30fdfso9379907a91.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 23:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762845634; x=1763450434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=az1eS4yWnkGWVG3hRFxIBdC+UkohID5Sb1dRYK81rRY=;
        b=MaCMfFJ0JSwncX3yKOxM7Gk3UCsy861Qr8Y6ASzts50KNZXaw3+ErSdBm8VkBtTbNU
         rL2K8MyhE0xNlaLYJUQUY3XBfhytVZCsdzQlMSTAaccpXTl+DPhoMOZddWdSTEMToGAH
         GkxVGuksX972ZZagI7PIz7nDzKSefTWa/1EI0lhzB5wm5JrjDK9CjDp9OC1Q33YEX4NF
         chU0He/JhUYdRq2B97975uotCAHNK8KFOWCIVPG+XvxuSU987DKv5a3MEpcnkTrH6ypz
         78BnuMh0KQ6PAhFEjY0UV5sgFLLyB5tHt8I4W24U7STE8tmO5pa20uUg3H4TC+edrCqy
         zLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762845634; x=1763450434;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=az1eS4yWnkGWVG3hRFxIBdC+UkohID5Sb1dRYK81rRY=;
        b=SDcGr8cmC6/fCxvItH3DK4i8kuu6Y15CUrGcRcIqw5neCypDd75NUa5mi2+ZAud59m
         aJI91vAIxWVfCtbZubq8H/7emjda76HiEi2kBhWmRwgeHWQOO6Xp50Xg4CF9nAHEu4Td
         1EdBgJ78ke9wDmYpqmP2lMzXOovikIdUVbvvtN6Oxr+YxxBdHRd7dkcVB7OFPs7oMi2n
         FIu/IZuf1+33RQizkL91/hOqy+R8lHiy88GxycGpuJ1RYXtehx+o5hvvcocogTVXkVi2
         pjcEIs4UWE4MwKrKRLoqlLUnMC9UppmlQ+VXOn75ymFgHkvxCx68RyjXjrZcOO0clV0A
         aVGw==
X-Forwarded-Encrypted: i=1; AJvYcCX9C/4vlSpXmLBc8ML6//3GNZqNzwWNH6xk1LBrvLm4eNLNeeQvKa+o5b/n6RV9Q11OZnopGXRbcrsN@vger.kernel.org
X-Gm-Message-State: AOJu0YzgdRsFKafS+OKSlRXhnxLiTG+lB3Iyqf6B3ONeFYrdSA+ScJ4m
	vbRKR4WZcabcDWMLkynCbyXTX1nsU3Rws3YAbVfvBbsIlxByEskTKFYgoa1Ulw8URSHIruH7VMD
	gqS9M5ca8vu+KxCxcoGOs7jf1E5LiuhWFxL9jxdzUwKtYU1GM4iDyEcgTuqqlGc7Q
X-Gm-Gg: ASbGncux0Cp6FQG1q8SA4c4/AhCKW596WfaVmx9Fl9Nvk+pQoqBxHIWdJ286llP10qx
	wWGNsYxHbwFmUrt+M39Vz3jqlbdyKvQqsmB/wQVSfEdj/6JQxTS32kJAU4Zu7lTbYwZHcfTTu7z
	VIKJ1n3UV0i5KfpwlgbbEJt+SzpxjljwgLUJjNsnADcbZT9X2CkuClHPJFGkp8Seowwracqc39L
	IXCD5gLGttgSBAdEHeCiatFOZ+/yhxS0tFHtvWyns6RVQ4I6YNQFG+wn7QFaxsG1drxG7lcAEUW
	qa453bIP1fuid+QTIEU2dWzKxXA+FXbEMdgsceMKZNDD4f+Z9FfJqO/Oa3WH1oHemecyBvNvON3
	fpnncweo296ooXLv/+EksabU/bu85Km/rXfu9
X-Received: by 2002:a17:90b:2d0d:b0:341:d326:7354 with SMTP id 98e67ed59e1d1-3436cbda0e8mr14043475a91.37.1762845633947;
        Mon, 10 Nov 2025 23:20:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZON5M2sRDvjzPFjogKxNKUyz1kK/A/BZI9Od77i2TSBjqWmz2DCeVNpTB4N0QmcaQECKzkw==
X-Received: by 2002:a17:90b:2d0d:b0:341:d326:7354 with SMTP id 98e67ed59e1d1-3436cbda0e8mr14043441a91.37.1762845633481;
        Mon, 10 Nov 2025 23:20:33 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68c822dsm20035604a91.8.2025.11.10.23.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 23:20:33 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 0/2] Implement vbus support for HD3SS3220 port controller
Date: Tue, 11 Nov 2025 12:50:23 +0530
Message-Id: <20251111072025.2199142-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA1NiBTYWx0ZWRfX2LKwqKcyN1J1
 9Swx+L/w8pEEF1L85QYysJbzjIQHPxzPSB8g9rXgSwcd2zFdkXAiGEWtd0MN6sQx9XbVKmP11GJ
 oaRitE4JrXhWqhnt2NpFLvhm0DKI4vW4JJBtH6sH9hkfv+0d3dc/xTobza3DF74uURqPOLrATWp
 486RqoGECObO50omN+yGqCnibCaKCqC3JzUwlpwxm/qD3qtb1NEccAH06eWuRHlKAG7d/ZD5VuC
 t5fwVvY83nofS1kB50IwAO9D4x+xIhCAR/znObEEtROhAW86oLWuG4n6E9R0CDiQhOcq0FXJaNb
 y4TP3UtSO2qxaw+1Fv0KekC5x3V0Q3B5JUOE6sOW/A/L1L7qOHWjt9H9diFD4G3rK+wzRYFXSAq
 0m6e/Y+EECCozNj5yxCsmC2bVdsIDA==
X-Proofpoint-GUID: CtFo0k-JP_4JpfUHcg6Z_1CdSWlIQ_ub
X-Proofpoint-ORIG-GUID: CtFo0k-JP_4JpfUHcg6Z_1CdSWlIQ_ub
X-Authority-Analysis: v=2.4 cv=UI3Q3Sfy c=1 sm=1 tr=0 ts=6912e3c2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Nk2SLWWF8xhsZ517u1EA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110056

As per the data sheet of HD3SS3220:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID pin
low. This is done to enforce Type-C requirement that VBUS must be at
VSafe0V before re-enabling VBUS"

This series implements support to read ID pin state and accordingly enable
VBUS.

---
Changes in v7:
- Removed check for id pin validity in ID isr routine.
- Made changes to request ID Pin only if vbus is present.
- Checking for return value of regulator disable as well.
- Reordered variables in beginning of probe to be in reverse xmas order

Link to v6:
https://lore.kernel.org/all/20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com/

Changes in v6:
- Modified logic to get vbus from connector as per comments received on v5.

Link to v5:
https://lore.kernel.org/all/20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com/

Changes in v5:
- Modified error handling in driver as per comments received on v4.

Link to v4:
https://lore.kernel.org/all/20251025122854.1163275-1-krishna.kurapati@oss.qualcomm.com/

Changes in v4:
- Modified logic to check for vbus supply. Directly checking first remote
  endpoint.
- Used of_regulator_get_optional instead of of_regulator_get

Link to v3:
https://lore.kernel.org/all/20251024181832.2744502-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Removed vbus supply from hd3ss3220 bindings.
- Implemented getting vbus from connector node.

Link to v2:
https://lore.kernel.org/all/20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Fixed inclusion of header files appropriately.
- Modified commit text for driver patch.

Link to v1:
https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (2):
  dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
  usb: typec: hd3ss3220: Enable VBUS based on ID pin state

 .../devicetree/bindings/usb/ti,hd3ss3220.yaml |  8 ++
 drivers/usb/typec/hd3ss3220.c                 | 75 ++++++++++++++++++-
 2 files changed, 81 insertions(+), 2 deletions(-)

-- 
2.34.1


