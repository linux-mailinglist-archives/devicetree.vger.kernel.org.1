Return-Path: <devicetree+bounces-319989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZDpNA2GIR2oIaQAAu9opvQ
	(envelope-from <devicetree+bounces-319989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 12:01:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7E6700E76
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 12:00:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="lXlg/U7q";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=i2hTxOeF;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319989-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319989-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48680300DE23
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BD13B3BE6;
	Fri,  3 Jul 2026 09:54:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCD23B1EFD
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 09:54:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783072454; cv=none; b=kCZ9j19rgSmRyVX1rIMPgRAWvVB56z3L/69FVWBq0gIb5iy4s/HDsQZxP0fSxm/0kbQtndarAgbJTW+G+BLxqC2RKL4vpl5EPuyyJYpyXpZMZcw7pCFdAlHYpv2FtlBgk5zGCw/kNr5xKKmgyRsnbhVw5e0FYkmkw/SiaWtRs50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783072454; c=relaxed/simple;
	bh=JvT7YP9LQMUZWUzXp4IGHtqPlcFpIMyEWUOZEgwRVRI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gNVJT9/sbP8Keuqy06BQEOMq8QpyYNXqeDY8GBusd2eEy8a80rGnE/x85WG2ifR/R22h2994qocQZ5RIsF7JJVZ3E5xFt8KXVcDhj4AdMLLC0G5d9ug6X9mxFm6GVKFw3pkjmcWRuzTTskFAVGKnvrUNhm68S3Iif7XFsIjkG5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lXlg/U7q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i2hTxOeF; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6635rqTU3088171
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 09:54:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Uz7PwRjb/ToHlqvOFOabrI
	0lLOtsa7etqjKsn48OZDM=; b=lXlg/U7qxIlg3lU4yWRXF1VzUGVqpVjrbNz1rZ
	SqONtRKFcn8/VVJ1AWhYMnD9X4gCHESa5ifcYsgk83xC7cBckVCltI84UKOLQGHI
	o1wVt1FZZGi9zQgDAKsfG/lsjGTBW04gUgtLhzWzhRIGct+/Z9tHIUyZjuS9f0bp
	AAD8I7QqvA5tx7I0JojM4MwrMu/SbmNm6+tesS8ph2qYiF5QBG9PcOYQsyo2Hz3r
	6p35VlyfS7+3xglkTn4bbkXG/zcajBqPhyJJlV9Vuicl4rm5pmU1Xlu6ftjcJp1O
	6f9zyareyoGSBhPVH1Ny+KsoYJ9DFVO3Nv+Yb6FUV93kpeNw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5s254cca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 09:54:10 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c9b71388fbso10259045ad.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 02:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783072449; x=1783677249; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Uz7PwRjb/ToHlqvOFOabrI0lLOtsa7etqjKsn48OZDM=;
        b=i2hTxOeFJDUp8YlEKdM4pCqpzSieEZWxMOyKyWZ7M26sYtaP0b9iKdUzp218FebPHH
         nAbEOJCATjDhF1S1ze4jT8RUVbaN9EjS098ZQEN5W+Vg/WCltGSOAuRYpHWqexJjlnHs
         zDKRJ8vQHSmJHImIcAoecU1cOE0oDRj32I1dVpf+4IF69hnh8VsqoYTtDaU3c8UkNUxK
         C0a92atLdXmtzhHDt2HVgCMuPwm5Y7HOCq7UjJmN61Khkb9S101uB72BuRMRqn62ewsI
         cSq48EuX/cZkRgBEw6x3eNtuPPN16Pi5rUTDzYKwDWpPDpUjiNCWJLBoen439ZXIqO3x
         ucqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783072449; x=1783677249;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uz7PwRjb/ToHlqvOFOabrI0lLOtsa7etqjKsn48OZDM=;
        b=YhQAbQL4gPa30XVt8ZnL0FPBS6bh+Drd0Lk6YziPvQ2LQsmp02OpYgWtSrxRTXeKEu
         t3DcZ63tEIrMGErNlRt1YLnLad0sPr4bmOPIbCrZh8d6gEftTX6bYWdf6cnld9n+ZAfS
         +upQEs09aD0OfEF3vG7n91U0LY4CRlVzMZo5lzg+yBNBpGepKDZcvG9mdphi57ak5NHW
         zdiZD/Xi6/bOV+9TBhBanj+SklDhDZGMXAPd+b8FPZzo88Xr0Oh0MweGa8z/6D0/W8kp
         Gi3NBhAuoDIdFNjCdX9taVMknmJEnjf9flxy5H2aRM9zPXE395WSfOlsQNbdGnQOb8r9
         mszQ==
X-Forwarded-Encrypted: i=1; AHgh+RojIASNVSudxtUIy1aSzDlg0+3tFNX0FJowX33edLeNFJq8goObhmtjKG1S3jpzuMAE4xqcUYYa8YQq@vger.kernel.org
X-Gm-Message-State: AOJu0YwChVETg/7EZeWv5FnSteyvmI1ydGh8YITAGCwsupJSXOQNFs3p
	OgA4uqkHn3NqsFZjrq6BSJFTffsB1YsgbLK+THb7FKtsN4r+cIpVRdjVtfLGcfFZtuO2LWb/kgK
	gX/0Ek8bmRScqIhbUBV3qKo0oyDN/8PJ0ap+nsTuBpZcG/ztoYxyWlmZ9HupNeISw
X-Gm-Gg: AfdE7ckKEvq9PqnFF7kuHtdblHMANEYnz5ujaUJj9ai9U1iJAyNrdNoMMiOSkUV1jN4
	KguOHEVwdaDOqbUl8qZQdAeZoly/QnQ9GZLpMILRXE77suZgRTrgT/RKLLhmkTi7Lvt+Hf79R3f
	SPswgLWMVvxqwvDZz+hPo+hp2TSn+FjQzklP6AAn+33ikjnJR0lt03sGsKGkBonr3rs234DkaQP
	ZGmGNncPEzjy3/WCqw7gimvmgKm2CKmnJWu854HWND8FxarqFHEK51ROQTuf2oFupqp9ZuJYgrm
	sIyrUyycJAVoLSYHfh0J3YsD4d67NWGA+cVJG0aV4SCPjizYXqRDWwLmGu9CLvy9E2jej8gO5/E
	DmXvEFRYeWwB9z82PbF9op/xViBXY5Be8+tNSBKtfW1NMq65CEYb6E8YzDXCiArJ60fakXFhxgC
	/Q2FFzSj+OFy6rU75hBEA/WdI=
X-Received: by 2002:a17:902:f688:b0:2c9:b396:1a55 with SMTP id d9443c01a7336-2ca7e6a79bamr109652885ad.12.1783072449399;
        Fri, 03 Jul 2026 02:54:09 -0700 (PDT)
X-Received: by 2002:a17:902:f688:b0:2c9:b396:1a55 with SMTP id d9443c01a7336-2ca7e6a79bamr109652615ad.12.1783072448951;
        Fri, 03 Jul 2026 02:54:08 -0700 (PDT)
Received: from hu-ajainp-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cad7146914sm7034515ad.35.2026.07.03.02.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 02:54:08 -0700 (PDT)
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add EC support for Purwa IOT EVK
Date: Fri, 03 Jul 2026 15:23:40 +0530
Message-Id: <20260703-ec_support_for_purwa_evk-v2-0-c59aac5c6aac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKSGR2oC/42NQQ6CMBREr0K6tqTUpBRX3oOQBspHGoXW/6FqC
 He3cgI3k7xJ5s3GCNABsUu2MYToyPk5gTxlzI7tfAPu+sRMCqmEkhUHa2gNweNiBo8mrPhqDcQ
 7V7ostejAikqzNA8Ig3sf6rpJPDpaPH6Op1j82j+kseCCg9CyK0Vx1r26eqL8ubYP66cpT8Gaf
 d+/KYKWQ8cAAAA=
X-Change-ID: 20260629-ec_support_for_purwa_evk-687780bec098
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Yushan Li <yushan.li@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783072444; l=1068;
 i=anvesh.p@oss.qualcomm.com; s=20260313; h=from:subject:message-id;
 bh=JvT7YP9LQMUZWUzXp4IGHtqPlcFpIMyEWUOZEgwRVRI=;
 b=+EYkvgi6Q+dRIUScgv8oxGZUzvaK9B4K/IAlB2iRXg21dV8cVW0Dl1sqWFrd7wYnqEdzC8I3i
 nT7KnkurkeTA1xqL0PWJKW9S5Dr4UHMEfkQweVCuK2zAoxPuhBWKjOR
X-Developer-Key: i=anvesh.p@oss.qualcomm.com; a=ed25519;
 pk=8o9EG7gkPe2Er9y9UVCx8MTdcFCwU8Pa54hBZPuduXE=
X-Authority-Analysis: v=2.4 cv=U7uiy+ru c=1 sm=1 tr=0 ts=6a4786c2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7jjU-lUb3pZ81cJkI4kA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: S9dGZRDtpOwRdCgZlIA2RREKXh716KcL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDA5NSBTYWx0ZWRfXzTx8o/OA+bKG
 BpRneJYwbnxYWQ1RtMlk1jwLd91PJlp9g60op4lPPfH5ikUhlONyU9ooTJZp163WO3mrxg9M7ok
 hQ6AKgCCBysvIDrD0LrfhWtJEIlmP80ErQ/zpDA8tTp3+pjw6bJXaQUw0MPhXWda57q0XMnuUtq
 o+DYclvtiUYve670POrHsvUQHs456ocnnhU5u9zB/mxRvAacZoSSmnBZU7ZZICOEiM6ljGnAH3k
 DlOpWOXXwFXoFqjdRExGm+SFoZQkcAwy1m/9tn7bHAo9HU/FosLmv2llqQbT5u+QftnWkKYmYYO
 21PnCTKUCZ4hrK6TMINf6Zpc18EEGmDRWVDJoJ4dbkYtb29+V8OJWosc8ugQyvTUn/20wHpgtYp
 boPVvn6XZCQJv7P1qz8bb6ZDaotOtaYDcGjEADJeQ2q1zQdyjxNSNlJJSCRo8juQgcIpT72JVhK
 6gi5sj8+26zBT72qDnQ==
X-Proofpoint-GUID: S9dGZRDtpOwRdCgZlIA2RREKXh716KcL
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDA5NSBTYWx0ZWRfX/eIy3C6rsI8j
 wuiL186/kHcZOptYlMq/eMfznbHwAm95Qq1txsBVWEPahMcWTOfNC6a/yBtFI9oS78OESXVabrg
 6urkoU1H197AAnfnSP/nxPj6GJRQ6qw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030095
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319989-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sibi.sankar@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anvesh.p@oss.qualcomm.com,m:yushan.li@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RSPAMD_URIBL_FAIL(0.00)[oss.qualcomm.com:server fail];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RSPAMD_EMAILBL_FAIL(0.00)[anvesh.p.oss.qualcomm.com:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB7E6700E76

Add the embedded controller node to the Purwa IOT EVK board and document
its compatible. The EC provides fan control, temperature sensors and EC
state change notifications.

Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
---
Changes in v2:
- dt-bindings: Reworded the commit message to describe the EC hardware
  details. [Krzysztof]
- Collected Reviewed-by and Tested-by tags on the dts patch.
- Link to v1: https://lore.kernel.org/r/20260629-ec_support_for_purwa_evk-v1-0-e082b70138d6@oss.qualcomm.com

---
Anvesh Jain P (2):
      dt-bindings: embedded-controller: qcom,hamoa-crd-ec: Add Purwa IOT EVK
      arm64: dts: qcom: purwa-iot-evk: Add Embedded controller node

 .../bindings/embedded-controller/qcom,hamoa-crd-ec.yaml  |  1 +
 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts               | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
---
base-commit: 948efecf22e49aa4bf55bb73ec79a0ddcfd38571
change-id: 20260629-ec_support_for_purwa_evk-687780bec098

Best regards,
-- 
Anvesh Jain P <anvesh.p@oss.qualcomm.com>


