Return-Path: <devicetree+bounces-269176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCMoAih3oWmutQQAu9opvQ
	(envelope-from <devicetree+bounces-269176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7231B6321
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35819301A29B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BDEC3B530B;
	Fri, 27 Feb 2026 10:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nuPvpZCd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KqJDYs8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503E039A7EE
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189477; cv=none; b=oMRWW33sn0HefGUPC98LHMm/aSXHrfL6igm1nn6Er991+vsSojl+sJiHLbxHd9VKmJJ0NQI4ryMwqLkLfwiG/n2lHx1uQKvYKH5vPMV+AkpZ+jyTAH8Hhn11w2SzWPPbidKqrmo9QOdG0xhKgrgDvhUfyfrJQr608iYZfUlmaac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189477; c=relaxed/simple;
	bh=pMXLiMjaRZQzk8Ca04Br1UnE5JLjSlTR25wAaJ7Y94U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z2tTWDpXMV7WTWPhfomCz5jCnDGi3TiefH5he008jpof6St3BQV3X+DeGEZqZBazyuz9t3XCtecqQEQS6YAOYjw7ePg3G9jDdBI7mwe1TQGoKBs3TehuUln7pRns/xRC/Y9mn3um6/CtHBhe1OZaTd2e4Lgsm+H0niDLhO4W0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nuPvpZCd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KqJDYs8a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9kC4L3945807
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=J2NSJArG1H517xsr/epSX0RJs2NHIsXWrzs
	I2P1l1cQ=; b=nuPvpZCdmok4dHiadAqqT+iUrFGA7aUKnKayTSNCwezQJEhcs4e
	qZdrGJxTmzmGJtLSMVF++4TJ6QKDn5wGsk6VoSUOpc0i7Yc9vHoGitWBBgm32xY6
	CVVIbJu4bFHMHrO7sj5vPS6aGCp7VREToRUvnL8RWtyOHQk52IgJC+ov0wwxD/be
	VZC9bWJHkIsgO+1BpLKV2l6AlS4LBdBDJzQlydjNfIgpJzEYNLbRc/bDrwPS7auV
	TCWTUY6bWy/ahFmP/roiRjvNdukioqw6Ht75vTIcJWlw0IXuIkm/F0LjZi3TsdW0
	k0YESA8NP6/eKVCAYI1LKUzcF82P+xptoEQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck8x8864n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2adcab21141so18305375ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772189475; x=1772794275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J2NSJArG1H517xsr/epSX0RJs2NHIsXWrzsI2P1l1cQ=;
        b=KqJDYs8ag5Z7WEw0cPDKnjjWnKZNwqa1RWVYT93Klgw0i0NQF+P70lKDLD/rfq/1F1
         4Dz18oVsBPoPkOwkX2TdJ3nY66LBW49uLUXtHxG+i5Ps95oww4AtRbFFoMBbFBreOotJ
         9sNWP05H57crtdOu+LoqV1zNHKrOK0brd4YLgfx4K7qNmSoK9uI417yYce7fJ5jy9xyf
         ANI92pvqPm27usCQbvWeFazjzRkhT9DHYb4pCw19ZWJDOe4Ch+zF7EwPP9+4OiFJkbF8
         J6fD6iDcuf5cLnpNjOfmcFSlo9Zo+RmXQ8n20JNVxKjWPjG13jBtpadjhJ2LgrAmRH83
         MVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772189475; x=1772794275;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2NSJArG1H517xsr/epSX0RJs2NHIsXWrzsI2P1l1cQ=;
        b=RaimR7VFpi0sqG7yMZYmzD6m6ZnuClK0sO6vr5Mu6jAPuv2CCsxLhnQqLBOPt8mjdr
         hn+D0g2zhVynMm0OW7Eu/PccZQW7jbbx76ibTSAfUxeHVqr2cLjFOfyw5+gLiwDjXvhR
         seNZ01j9KqweRKa/7xwH3hGcsdNNQ+SNzSlmLq4d5NXe8OrqFWqaShh8QFI7dTFIMAHN
         s8LRBkzFo0c/dvfH34G8AaBg5pknpX6uBHq9LMGb58vaQ7z0bQKxgfYJTEQfYfZyWur8
         mioehjEy9dQGy0QQUqWQgxLmex1kR7pmt1GOXJBs0woysRrMGdOyEvyxGYB/96vWgIFi
         0d+A==
X-Forwarded-Encrypted: i=1; AJvYcCVhP1ydrGYJ6Psfay4jcKvoAwNtMsMV5/co91yYnOie625Qj3TJbVmode2WBSR1JoUDl/VZrnL5yPz3@vger.kernel.org
X-Gm-Message-State: AOJu0YzI5ti05QBpQivVj7tjx1q6vxddFkGCBdIEv9b/aofRVze4BdKc
	mOTlxGaPq7I31Tquo9QJpXE81EIAHv1QHk4lkFr2ZX6h+nWP7FJ29FEpKdT0sXDZ7DnU913Isu5
	ZGjJuX6QK/Rltl5+k/uk7VoFDiJNCmxhYbSzggIBfjFhgfEErqPJEonEAmhaax1I7
X-Gm-Gg: ATEYQzyxoIEx/uUpf9XUAJWTWrLwbyeCom71nsKaxWVBTNwAFXS1yBqWKrBoqLot18Z
	8ozTLbjd3gihqCGQB6rRSXjmI74LOqkmm9mgVttHPF2VhL2pmm7VQJk97SRDKUEB0aXRcVrJYK+
	nE46uzKNQwVfRww4OkTT2RBMFG+5l2dqAi9OwLKlhW3SR7HP1nyEHEY0ZiJx6qzL6rR3NNkKKnp
	eEotFr4nzwWXTSexEpb6aY8Ls1pu/PNlNcbh7SqUPLgmxJJiCHQMIxYrV9NhR7i4uR51/zcNmJ7
	ed7DwuBaxsAZOwxbXsdrj7+udEHTzCkJokEp+1XuWkVPpmIfg4OHb7X49ucYLs8ZkhSiuz+MlD8
	btCrp8298u11f/cXhtp+OMeqo5papWpiyVFvpn38HI+5tVOlP5J/Veodj
X-Received: by 2002:a17:902:e54c:b0:2aa:d2a7:ad2e with SMTP id d9443c01a7336-2ae2e49840emr22843615ad.36.1772189474877;
        Fri, 27 Feb 2026 02:51:14 -0800 (PST)
X-Received: by 2002:a17:902:e54c:b0:2aa:d2a7:ad2e with SMTP id d9443c01a7336-2ae2e49840emr22843365ad.36.1772189474374;
        Fri, 27 Feb 2026 02:51:14 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb757a8dsm73721885ad.40.2026.02.27.02.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 02:51:13 -0800 (PST)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com,
        Monish Chunara <monish.chunara@oss.qualcomm.com>
Subject: [PATCH 0/3] arm64: dts: qcom: monaco: Enable SDHCI storage support
Date: Fri, 27 Feb 2026 16:20:52 +0530
Message-Id: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WZwBqkhX c=1 sm=1 tr=0 ts=69a17723 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=p0eJXinjNNGP-7GWHw8A:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA5NCBTYWx0ZWRfX1ufZvIyi7IRg
 T1gYCZtvOgU7Niij1cBMySgjGWmPNkXjwTk+LJC9aK4IzfEP5v3/5VaVZq0RUkPQwa5zFaz0YqY
 V8eq7EXsYnmYGzwooSsV34CsDwfviCov6xoM0zGeOoe224yo0o0zggP93ACuYFLO0yq5tjsajdf
 fRPEzQjWY0f4FLBudWsorOW4OyOAVDkFS8pY1wEytRv4wsbA4iemX/yRYt7FEWNlYHLgoa81Dpa
 QUevYipMczwxrKOSiWiEAHYz2VPZoNJplyy8vr73Ti8MQPufSQ5xf39gv6H0qbQ5UKRY9ofT0+R
 tAZtW/KapHmdVbOyByw00jhUBVP+7EJekp9OCvooo1U1/n2nvzDkgDhMWb/EeELPO5AU0uDgV6o
 wM87yKEzuuuje8goEyfwAI+yZyXU1//4E2LSVdS80CAlSgTVeUg8HNW3dQ8EU1dUhYbHhuA9Umo
 TOczKALB4vw9DHXoZMQ==
X-Proofpoint-ORIG-GUID: hMlc9_KgB5DNiKyMI9oe-vWie1fH52HN
X-Proofpoint-GUID: hMlc9_KgB5DNiKyMI9oe-vWie1fH52HN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269176-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7B7231B6321
X-Rspamd-Action: no action

This series enables SDHCI storage support for both SD Card and eMMC on the
Qualcomm Monaco EVK platform.

The Monaco SoC shares the SDHCI controller between SD Card and eMMC use
cases. Previously, the common SoC dtsi unconditionally enabled the
'supports-cqe' property. This causes regression for SD cards, resulting
in timeouts and initialization failures during the probe sequence, as
the driver attempts to enable Command Queueing (CQE) logic incompatible
with the SD protocol.

To resolve this and enable full storage support, this series:

1. Moves the 'supports-cqe' property out of the common SoC dtsi. It is
   now only enabled in the specific eMMC configuration where it is
   supported.
2. Adds a device tree overlay to enable SD Card support (SDR/DDR modes).
3. Adds a device tree overlay to enable eMMC support. This configuration
   also explicitly disables the UFS controller to prevent power leakage,
   as the VCC regulator is shared between the UFS and eMMC rails on this
   platform.

Validated on Qualcomm Monaco EVK with both SD Card and eMMC modules.

Monish Chunara (3):
  arm64: dts: qcom: monaco: Move eMMC CQE support from SoC to board DT
  arm64: dts: qcom: monaco-evk: Enable SDHCI for SD Card via overlay
  arm64: dts: qcom: monaco-evk: Add SDHCI support for eMMC via overlay

 arch/arm64/boot/dts/qcom/Makefile             |  7 ++
 arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso | 46 ++++++++++++
 .../boot/dts/qcom/monaco-evk-sd-card.dtso     | 72 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  1 -
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  1 +
 5 files changed, 126 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso

-- 
2.34.1


