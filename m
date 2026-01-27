Return-Path: <devicetree+bounces-259849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4J+yNiCleGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:44:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5837293D0D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA7C13006F38
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D257634A77F;
	Tue, 27 Jan 2026 11:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ze+E/7uC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UuG1BKUm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC0F346AD5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514259; cv=none; b=r3NzL5XVarCZ0Nl4XvQauax1FoL74Rl5ZpJTuwmBovIWFsdZ24l6NP+GFxVUEV8NJyhN2HLrfb6p0Cf5YhWpJG3KQ4QGTvahovvs67YGWQwzhqTsDhbd6fb8AYvDATpd7dz8Hto2QS1DxQny2sD7iuieNPh+t5KnZcG5XpA7050=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514259; c=relaxed/simple;
	bh=zEbCJHYnifh2iMGDoTyM/ZQBliTMuai9RojnJyK5lTY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NDRHTaryYgyL0rJtM+5vkhxJpaorPtIkssVhYcNrsPy3wWgPSMc8w3+cj5vO1Ud4uGw2g+ipVd5ybFO7nOjZFV2HspDG1juIxMGnSo8okN14QWGDifiidvemYBfyCFFnHBXPlAZgss+QdVvXkFOBwrVOilkH/2RjEkdMOAVloSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ze+E/7uC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UuG1BKUm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9h95B786620
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ANLJGY/PXLAuh1XIWKAt1m
	U1h139CnaYFkml9edSEf8=; b=Ze+E/7uCHaBaNizUG/chzN9l+ZNMYvQn//7vJd
	lnrdG7dwNAH7U+ZfQhBc4TVeRtb8uUlEk/gaMNPQq/LWALbBZ6UhZMs2abB/JCWL
	yoQ+aqmbxjp8jlocmkaZ4CinpXb1zjMygH0Y1HWje+Cv753RUufY9EpHB4I+oztt
	NiHkCL2wWnoS9Am5un/9HXGZLdy0SgKPAiCNzAVuXjqF0yevcCd7qBm8YwGgzlX1
	W3u5/Z0L2GZ5FsrQWdCto8A5WOKHbb9qWK5I7NxsAUjvzAs/Z7bDkqmtgI7Y7Tmo
	/iycLsgN8aNkOnlSIRfl+QFeu8+CZ6vxdzNKRn0CTJj8LW9A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93je59-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-352c79abf36so4665867a91.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514256; x=1770119056; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ANLJGY/PXLAuh1XIWKAt1mU1h139CnaYFkml9edSEf8=;
        b=UuG1BKUmEdV7Feq8IKoHm48bNHTPy6+OfXpFw6ToULo/+XmHr0Hhl5GqANAbxBu9sY
         7FWusCrxByJgpl8EkqcS2X3hp31wsirvfBZqHA6fEUcWCb/QMSQhKHFfY1ewyDqVmDRC
         iwuO27cLZhA5xF28nR1rV+ZS1uDD+MEKX+XjOCJBP4+O9Qcumo3Z4bXz44ZwyWqCx0pa
         USJer9MhZyXiWVM1V/IgtZcZHGMkJiyJCREmMNwxaMbNiesujprKrtzXLo3rmXw7XZN7
         RIe/l9f2XlttrfOGIXZPpArgXG8FPtlkJdrXaqMDdtf/KnRlIb28HYWEMhIMhaTJzoyN
         SNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514256; x=1770119056;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ANLJGY/PXLAuh1XIWKAt1mU1h139CnaYFkml9edSEf8=;
        b=pDVzTyck4w+i0GSTaCXRoqc98eyIIspnFRLxOy8YQlU3/DmTi9M0Zh3zRcenTan1LY
         iT4pMkysjzcR8zEmUaXxnBKydYHvdukSD6fgjEjGeaMQriJCbeJ6MhPsXwjknL0uqyoi
         LG7QDllunYrtZfHUrwlvAP57kLJma3Qe3wzv9mHlKuI9lIy9uI2/zhp6ui7JWYt1N2d/
         OklaTKrXwDfmpI41quzMhQRuzLvYOHFHXeGGenx0P6Sa1TrkfCXSnJGhmgNEx36UrmTF
         sqdupV440hUlZvWWbE6pff6u6asS1R9RmCef5/dDU1hW8MvnO1RoEW36AdkduYG7AW2n
         vECg==
X-Forwarded-Encrypted: i=1; AJvYcCUHmEkW3ECHo3dMZgVEt1DXZy7Mf8oCiIYBVNlk3n7rLqYoeI3ei4j6OAPS2V9+rzu2ZsYS9U8xsph8@vger.kernel.org
X-Gm-Message-State: AOJu0YxxKGAu7LBQ1gaP5oUCbjdGP/xd/08JHvZ4hiPVxu4JGsbbkgdJ
	/MrCilRh0VnqHYsB1OYXPHbdifbXazHMjrX0+530DCsUb6ttsz39JhFNUXw1j43Sz2FdV7jC1F3
	/+xW1SxESJFJnpo8q5z/77TJckM0lu2zo9R62EBVIoR0YSSwz5duTDuzRj+MDpkit
X-Gm-Gg: AZuq6aIINvwO6+SfzLhCID4LxSijA0kziRy3X9Bdqffcnbm+1X7Zj1Y/sFJM/Azv7v1
	SVHadirJ0ij4/7WosKIUvxyatt57FfXtZV5QtxYoA30G6C7unKRpNnxbbDKoFFQrgc3s1gvxCzD
	/fd/gFAqXueuSdk6XBXJXR1tQSFWEHeFr4JQH++3fjc89tpHBF6Snehx0Xoq5jGtW8fJ5uU2mjz
	IFmcKICcpK3Adq8IEJaCw+Yp1gbQrWDTSDUURaDIY+PgjS2fZM+i68RBVsLGgVJ/nDw4wTDMpfh
	E6e78WH3mBIvzc/GKxb1dcQKfwFBEjpbKjhkcqeZjXVaBhGOJqZmLgRAOF6dCSuY8T/XIYcvVoX
	nEBayGDwSGz8LPS2Z25dCXy6EICbETsCA15Jz
X-Received: by 2002:a17:90b:50c8:b0:340:54a1:d703 with SMTP id 98e67ed59e1d1-353feda27c7mr1513035a91.35.1769514256071;
        Tue, 27 Jan 2026 03:44:16 -0800 (PST)
X-Received: by 2002:a17:90b:50c8:b0:340:54a1:d703 with SMTP id 98e67ed59e1d1-353feda27c7mr1513012a91.35.1769514255291;
        Tue, 27 Jan 2026 03:44:15 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6230d5dsm2392301a91.17.2026.01.27.03.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:44:15 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add EL2 overlay support
Date: Tue, 27 Jan 2026 17:13:47 +0530
Message-Id: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPOkeGkC/0WNwQqDMBBEf0X23IVk0yTVXxEPUbdtIERNrLSI/
 95QDz0Nb2De7JA5ec7QVDsk3nz2UyxAlwqGp4sPRj8WBhJkhCSLqwtTRg6E08YpuA8q42ytnDV
 Kaii7OfHdv3/Otjs58fIq6vUs/+ZyJEhLITUuQzYl8uwjEvJ41b0Yua/rW7NZ6I7jC6jQv8KrA
 AAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769514252; l=1717;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=zEbCJHYnifh2iMGDoTyM/ZQBliTMuai9RojnJyK5lTY=;
 b=V5etih+kUAL3UiHoyZFw51ERba8Ka3ZGGoq/phaYArBYerWNUas5t46Licv5cxQ/l28oygqxo
 Yv7Qiel+OwJCb5TZHepcbPZpGMVQ7K1ZK7ztAV1HvntHvkQTJR8PjBt
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX8d56rgXLkQK+
 2ucZJYV1ckKop0pqip2vO8OI0rkkOWl2RBOZC8A3tJtDwlRJZL2OCk/FaWvJDxdnr1S9jAdsQoN
 hZY6z4klA0Tz2CMj9F36Xqkqzx9fLGROLIqSJ2zmDRqihZvvnlCtDxMF1xJd5JcEB5vLe6yQIH2
 4XHOe5lKtHnw7rlBJcupTPnrq0hMMw08dLSW92Crkg9RTjDJy3ZKCoCIJZ5j4YRXZC99/nmTh4I
 yf/PnLUGMp0Cj2s1f/cjn+zn7DR7mCGVOF5DuNzy7SKPFQLldWfcBLpZKsE6I3zJjUsGbbl+S9Y
 oOeIEx3uJguUuKi2qxCUwJ1GecHiPT59wdmUbkTKrcAuFD9LbJIRVRXzp8ljVx8g99aPE5pvQ+H
 2U7qn6OPvZWNSPqW8uSVEligs+oNBlexczLEFR5UTslLokauRd5bfFv8vkX3ZihOq0OkgHOyq+G
 rm1Joqkou9MbXQU0eXQ==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978a511 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=T80VVIUPpn7IXxhHd2wA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: QITuuQBAzohshgAFn525YarNVZ0fwr25
X-Proofpoint-GUID: QITuuQBAzohshgAFn525YarNVZ0fwr25
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259849-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5837293D0D
X-Rspamd-Action: no action

We have recently added initial EL2 overlay support for Lemans and there
it was not disabling zap-shader as GPU changes were not available. Lets
disables the zap-shader there. And in the similar lines add support for
Monaco and Talos SoC variants as well which support EL2 configuration.

Talos GPU changes are not merged so its overlay file has dependency
on https://lore.kernel.org/lkml/20260121-qcs615-spin-2-v7-0-52419b263e92@oss.qualcomm.com/#t

Changes in v2:
 - Added patch to disable zap-shader for Lemans -El2 configuration.
 - Address comments on V1 about comments placement and sorting the
   labels.
 - Added dependency.
 - Link to v1: https://lore.kernel.org/lkml/20260123103503.1259645-1-mukesh.ojha@oss.qualcomm.com/

---
Mukesh Ojha (3):
      arm64: dts: qcom: lemans: disable zap-shader for EL2 configuration
      arm64: dts: qcom: monaco: Add EL2 overlay
      arm64: dts: qcom: talos: Add EL2 overlay

 arch/arm64/boot/dts/qcom/Makefile        | 12 ++++++++++++
 arch/arm64/boot/dts/qcom/lemans-el2.dtso |  4 ++++
 arch/arm64/boot/dts/qcom/monaco-el2.dtso | 29 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-el2.dtso  | 25 +++++++++++++++++++++++++
 4 files changed, 70 insertions(+)
---
base-commit: 8cf69ccde007c307a9e1f95bacf222c9e24aaa31
change-id: 20260127-talos-el2-overlay-36a793a76315
prerequisite-change-id: 20251015-qcs615-spin-2-ed45b0deb998:v7
prerequisite-patch-id: 7bd38514e695fab411815ae1e16c36f56d8f5c68
prerequisite-patch-id: cc5925cec2a27d3655f68f1c1bc1f56dbc38c132
prerequisite-patch-id: dc825427a872ecfb3615c0bc4d11d0cf75df0068
prerequisite-patch-id: b2298e5a32a81928a73e68b2254ae4427abdef82

Best regards,
-- 
-Mukesh Ojha


