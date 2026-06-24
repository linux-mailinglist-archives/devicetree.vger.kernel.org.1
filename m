Return-Path: <devicetree+bounces-315130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PjgkBm+oO2qrawgAu9opvQ
	(envelope-from <devicetree+bounces-315130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:50:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768F6BD104
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:50:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=lsdg1egx;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=aOz7Nh6X;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315130-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315130-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D881300EF9A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA983ACF14;
	Wed, 24 Jun 2026 09:49:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B2B39EF12
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:49:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782294591; cv=none; b=Nww0XqK6l21eSLHf/wQedE7v1hYEpFRMMRB16MdPnu8tKcP+RrxVNVCPBHzKBjUZNjrcxtDgmpylox777rukD4B0Fb7TILR1E2QQqV1390JFiMpVHJ0S4UpZXdF6/kw0nVBu5n7Tcgr6Jl/hEGAlKVExqyksWQXbD7Th6v586yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782294591; c=relaxed/simple;
	bh=VcP/Q4tJO2REh/sFJ+3sJ1plbn436MCaqHKTnhy6iLA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YcjhlZUJIhUjaa2SD8J+yWoBAewYTZLdJL8spwkTjQCDtD71O6EApD5NI4aLtWJl2DgJTCHausbRPo7wAwxlYjJqeDkN+3Z6uRkxSXuYSl5F+zsQHNJomRqVwq1tDN+eTw2XCedbVuravKwXrRN0WYXFhoh7lciSVymfhA25KCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lsdg1egx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aOz7Nh6X; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65O5u2wW2438933
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:49:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TmWx5mlplJVO/aPdm2p03E
	imgzhiIPG+EYrUm6eliLc=; b=lsdg1egxi3g13WvSRiEs1oA4x7S3KeHlsiu3U2
	+6d/IuYJpg5tYoXOgDJ/ALaR6P/UkmUSQQZLaNBbnesLjsTdJ2sRyJwfP7sq4ICg
	KNtnC3g2YXYnYSRrhRBLzzss/17AgKXGohwPvIDA1dpsxGZ3wyJ4nRpY7/cRqecC
	oFFF7bFExAOTkINW4g9J9C6urleSHf+3PNTA7GqVidDGSzfo7WdXPK8326+z4q5E
	XDoMQUeCBs5WoOAa5jFZzj4a21hNl+UuLIW3H9RvS/XrZLxIh5w8HsQtL+gUI/FO
	v4BytP0FTzqA+xRCSCwl3iPL9ky6Tl3Z3RsUiVzl9wc1zzlw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f05ar1khe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:49:46 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8423f544944so691152b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 02:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782294586; x=1782899386; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TmWx5mlplJVO/aPdm2p03EimgzhiIPG+EYrUm6eliLc=;
        b=aOz7Nh6XPaP05XxfjwxzdjRFtad/qfqqAF3wi2IVWjUvH7rvAN3vOdyc4m7k8nZ5c3
         lmlVc8S0is8t87TtkgWuyDx7opMo0Ap0pCsjSj1JWATimphSVsFXT4bS7A8uxUW9H1mA
         Y/GyAXtf1ZiezQiJCtbDddDQN+RnvwDXk7GaG2bo7uEmkMtEIltMmRRRmVhSPAGV9SEd
         M90TKk8Le5brIlarBsAb05ExgrQ0nzaq2SXoAVJtra1Ui9CVXEt68p1zpJn1/CmAVd+e
         tImgR+P4aWX8czdGGoCgWcNnuCc6apjwhWchCE3qnju05Ibxc5LxB+m4ghqSSTlyo36m
         L2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782294586; x=1782899386;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TmWx5mlplJVO/aPdm2p03EimgzhiIPG+EYrUm6eliLc=;
        b=ESsyf4dfY3gi47yGBCXHs1wDqQsRLCG8/+4LCRuaIP8irgc82IFAMHYsoc9+KbXRGc
         U1NT4/n+d0k0fo6sDv9xbaHBKdoOJqEQ9mXwZ6T1QaO1DmuYR1VqOfZpEgOplQRzL9it
         yxXqtyt4oeUKUPacDI6GjyUdi/VY7py7a94a3ry7fWxLlEq8LqU7UViuW8VQGRreUxvc
         zEEt0Rqsl3Tl8F/VLwEtYkUwEs8WnQJhdBcLfdm6fxoEqZCyFiuzzlyTG5ysKBAYxud/
         h69qru9fCgGQTnzuUWdWYo7WwiJK0/M3b1IhJBvclEuKttBG3AZAxK884URi1A2xVVJW
         ilXg==
X-Forwarded-Encrypted: i=1; AFNElJ/XZNg9ght7aqs+aTJ+0ecem7l2XFniwN+7hZirS5X1GQf6TcKoqe880Xu6g7FBIdLoB2RvKNXO8jko@vger.kernel.org
X-Gm-Message-State: AOJu0YwyDzxrxfckWcEbPbLBqVd1OErrAV8ed1zXo15LIo7+J7NORykT
	idOxaI603I+gen5/+0MNOlrIIWbn+qfDilhw07e4dSY4hnpGZDc6il4BGo5B7KPY2xCvlXWFOLA
	139oq13whiGGllElbZCApnVS+RmwBaUmkTFSU3N0kfmWDPgglJA30dn3SfsciTbR3
X-Gm-Gg: AfdE7cn1UJ3jtP/AvomeAOie7QiHJQkYJ/eMVq0MFg2l9cGzopGmyPQ00KMZ61LXrfJ
	F0mLVt5khh4WMhx2EaudDiDE7VtyaeLo+dvxHus12H0I+jslCNLISBFiCAvzwjIZhOGpOCNIlLS
	RckYAN9lAbjCjZLExuZr27un+95TMvS3bzfzpS9b/tS9sr05CaSuMKN0lZMZ1ckYtVDCrbkTWrJ
	AnQ1Shkdfwf+aRYyGJ1UqmN8WHMQDVejJCD6qKAGqjDQbXvi3zff2FNZVtpa/2sBrFcAU3q8trL
	9K83tUg3mSfXy8QtT4xlAMXsmh/xc1dJS40JJJHDhH0LNYX0OPb1sMbAZCDszMXFFp/804PileZ
	MfrZlgIemY0TcKb9eOrfMlOOKi51BEgXwLCW7Bpd/2yW1T//BsnBBZei0IQB52eeGOSNY0RPXCg
	==
X-Received: by 2002:a05:6a00:1405:b0:845:31a6:d84d with SMTP id d2e1a72fcca58-845a2a76d70mr3347717b3a.7.1782294585847;
        Wed, 24 Jun 2026 02:49:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:1405:b0:845:31a6:d84d with SMTP id d2e1a72fcca58-845a2a76d70mr3347676b3a.7.1782294585393;
        Wed, 24 Jun 2026 02:49:45 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a3feb7b3sm2161302b3a.13.2026.06.24.02.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 02:49:44 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Fix traceNoC probe issue on Kaanapali
Date: Wed, 24 Jun 2026 17:49:24 +0800
Message-Id: <20260624-fix-tracenoc-probe-issue-v2-0-786520f62f21@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACWoO2oC/42NTQ6CQAyFr2K6toSZAIIr72FYDKXIJMLgFIiGc
 HcrJ3Dzku/l/WwgHD0LXE8bRF69+DAq2PMJqHfjg9G3ymBTW6SFzbDzb5yjIx4D4RRDowmRhZG
 KzFats2XbZaD1KbJmj+l7rdx7mUP8HE+r+bl/jK4GDTZElzI3VdlRfgsiyWtxTwrDkKhAve/7F
 +QsnJnHAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@arm.com>, James Clark <james.clark@linaro.org>,
        Leo Yan <leo.yan@arm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782294579; l=1063;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=VcP/Q4tJO2REh/sFJ+3sJ1plbn436MCaqHKTnhy6iLA=;
 b=wIf6sFcLx3XxcdanGybD2LYXgyMPABJkNEpu7/0s7b5C1LFcMoeY6yDYGekgtIa7WERZ+kkf5
 Tt53FTdg/qEDaLwlsKpM9HQiJnbI2UnFNwoI0a6JJXCsgkBU92H2Lxn
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: OYc-XsJhjYDMBfhFslbuL9kC_JVtEfZY
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDA4MSBTYWx0ZWRfX1MB3SbYCb14E
 rxtLeKsn86W4BY8Xl3fgCdOzMv1HVI6A1jCszV3le2IFFHMoFb0LnQxYMhLR7bsZ65NYYW9FiRN
 EVSwk1bTsHrX+nxj9BUuM7G/FnSI4Ak=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDA4MSBTYWx0ZWRfX4t9OsXAPzbrQ
 lGyQ3SQBmkb2XnHJvJcDmYarxLeqwqotR1dnjxUa0gQSKENb9SNGiOaU9hKrn0qr1BGagN1shyv
 M97JHHwmoQjpoh+HYuUPeI+VLXzqaj1xaJaakHEbbfPVOqjKPcT/1xr1tBJoSJJyJbJV9wrQf00
 ugmVITZBFVV8fn3Uil5Wv0L9OA55i7dvxt4Iqp4moIds9BK2ETbrgTElV7AUH2sdLCfthtpNusH
 y322XtNY31RSqZd6CbpdIALpG4rkqcX/MP7AWOCoJ9qGEJQN2BRgE01U1iu2vRhn29KvzqaMriq
 4EaPMFd3weuXzfpexPxcB925peDJdBSHiYbEqHt2CWIXoc3zYLIZSq3Mbt/FVXLOZ4xteF3e2vb
 lt3xyfGIvGjFfRTda2te6/TpP7aC7A==
X-Proofpoint-GUID: OYc-XsJhjYDMBfhFslbuL9kC_JVtEfZY
X-Authority-Analysis: v=2.4 cv=EuLiaycA c=1 sm=1 tr=0 ts=6a3ba83a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UTefLX4YHh8himS-NM4A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606240081
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315130-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tingwei.zhang@oss.qualcomm.com,m:jingyi.wang@oss.qualcomm.com,m:jie.gan@oss.qualcomm.com,m:abel.vesa@oss.qualcomm.com,m:suzuki.poulose@arm.com,m:mike.leach@arm.com,m:james.clark@linaro.org,m:leo.yan@arm.com,m:yuanfang.zhang@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:coresight@lists.linaro.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6768F6BD104

Patch 1 changes the binding to allow the TraceNoC device accepts
arm,primecell-periphid property.

Patch 2 fixes the deferred probe issue for the TraceNoC device by
adding the arm,primecell-periphid property to bypass the AMBA check.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Changes in v2:
- address the ATID issue reported by Sashiko.
- update binding to accept arm,primecell-periphid property.
- Link to v1: https://lore.kernel.org/r/20260624-fix-tracenoc-probe-issue-v1-1-bcc785198fc5@oss.qualcomm.com

---
Jie Gan (2):
      dt-bindings: arm: qcom,coresight-tnoc: allow arm,primecell-periphid
      arm64: dts: qcom: kaanapali: fix traceNoC probe issue

 Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.yaml | 5 ++++-
 arch/arm64/boot/dts/qcom/kaanapali.dtsi                        | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)
---
base-commit: 4e5dfb7c84012007c3c7061126491bbc92d71bf1
change-id: 20260624-fix-tracenoc-probe-issue-c6429da28df4

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


