Return-Path: <devicetree+bounces-263849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GQoCBWQiWlz+wQAu9opvQ
	(envelope-from <devicetree+bounces-263849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:43:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A654210C8FB
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D77E300DE37
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B777A331A4A;
	Mon,  9 Feb 2026 07:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a9NNUZvn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UZb6m7Zo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEF7331206
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 07:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770622773; cv=none; b=uUy0gG9mCx1Yy8iISf3AVKO5UXqQ/1uDLBcyj+tv9HGnkXoWMe4X7jm3vXRNr8vlZo4I+jBKRKe3E0K/FZ8rEf+zZnx+LVW2P0M4E9wkQo2Q7DHr6bUbZYmz6ooo+JnMauC+1+HeUVTckAGfNpwfXtarjOIbm6m+DWDfaqTWzxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770622773; c=relaxed/simple;
	bh=u7Q09FoIZmpBmo7M2pTpw1RIgnALAxpSQSxtH/jdbjE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JtCnnLJf42ib2oBqU31OlYCuFPEJjreW0UKxJzvVok0NsWhur6bUaeGAwCnnrQFrctm1P/5oNnA5YamGfIn67kjtW8P3uMqfmGDswhYtWiB3SmcTNxMYRwI7/Sx61kaHz7hGE6lhdpKLWylUoIiazxzFsegPJo9llwOTGXth+B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a9NNUZvn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UZb6m7Zo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195O3vI2032940
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 07:39:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z3msSDjqrv2SZb7F4aJnhKq3at15ayITUulZXR371zE=; b=a9NNUZvn1Fw1zewY
	xBS7B5GeCSUub9CDhNqPLYHr9hGMAsD/87huLnSQLb8fpcLSdVAbcqWCVe14vaJS
	lhzeU2FChjaxG5KuvLmZTeqHiRluNVY4l5FQTPfcV+I7Jy7x0/KXy9S6ziv+PkIc
	RzVev2okZJoXcjiRY5DdWX2Hkv0GoaSrDjka7JDlKIIy3vKG6WYPcQ3QqNjJ3ON5
	BHyIq1o/6Yp5RBZhx4v+BbCuXgpNsjBzrcULxZQ8E+XXjfOhHxvruXcfrdLye+3H
	dJVAD5CFSEv+IreOL1EuPwBgNV0Ff5yJGTR2ZRTHQlgP6W7Et1yQPCq26nPMADsY
	sjTBoQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79d30ers-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:39:32 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a90510a6d1so37795255ad.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 23:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770622771; x=1771227571; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z3msSDjqrv2SZb7F4aJnhKq3at15ayITUulZXR371zE=;
        b=UZb6m7Zoj2L7JYdQFV9bJY5HgK/hSDSBsZJVbnnjID1GtXMZk7+YI+Xt0Ky1/w5EYd
         6ogYXRetCcjRVmXzlllTqFVf+wHT4DXAudhmpbcQRi4K5A3XA1BbLsV3WhcvbSHrIUz0
         FEB+l07eVglhx2ug4/QPA2yKi5Jpi0cNO+Y1dOE8Wfm+YcLD9uMJhriZEv8rxJyOiN/m
         2yCK8eR7Sor2m7/0ahzz874S2dCagTGj2JIqVFeF6J8/2DmwfBuny6ixp1n6KZAPYvhT
         xYQnD15VU/4wZBTjs0w+aZIPkaVvMaHIo7j1fYLr/i7gVz0Cm+vzUNfV9skOgbYX2Ng/
         EP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770622771; x=1771227571;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z3msSDjqrv2SZb7F4aJnhKq3at15ayITUulZXR371zE=;
        b=E/OY5Op2i9eyACA69crHepPwWfPoh+6TmXIsNUTa3FqJYB2Gloap9sGlTR6Ty983de
         /OM/QMwRgS8W/Z9Fd86Ojp0o9B1PTpZ3vNn2FjI5Z+CBYrquhb1YumB54lP7oleyoNcm
         zeHmpn1esmQZ4dZ3V39ZWVtrytQm63GmVNccSBiCbPHOqdl93323IhtpXchsBx6Wr9/I
         ZMgOC6U4voEiP0I8C3OXKmtgalwAebUHWIqDwHTRSOo8kVeMTHMld2HhAtosLXterNeC
         1fPIOqgLwKc40sPBMGBuO7TCTy6qiKnxyA6Pcj9vmi/vot3xXAuL4wmTvyJAPXZpp23g
         9ZOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXY9cOLEHZCaGMsnvMI9hzKQoKaVaTSSjFPgjH0Nxjpg2nvqef+OaOo2pJ5KHjntbCaRcoyqyv6Powi@vger.kernel.org
X-Gm-Message-State: AOJu0YyBys2kZOsCsKuD1lr4vuaHpincQYmyzQXOAWAPLr9cKb8emLXK
	PFFvC8U+l+adnIwvQesTsMxUQ9WLOu+CyzDMu7/cfPHl0if5JICPuSSGZIjRHorLVIYtl1Icc97
	RtHiUrYZ1PV/sdngjiUYLiiNiqbsW+ESE2COhyBxnyvp7LObX7RAIFyhBlEV8qr82
X-Gm-Gg: AZuq6aIUKAfEIj46q1Vmna8p9c/NuSAS20xZzcDaBr2yVzoRPhTAdz/qW12ByBRxQjl
	tJVrYgjMnuBVZ5SMqpR9nZD1n4NwUKp/Qm1RJI67L7k4RR3vy6+BR15Fzh/l8wdpAz647S6RXCK
	Jhg7BqHqRS86vcwAM/agHwui8jFea1uRapfWi644s0kvFdErdaOg6rNXejRad9fAex4MBX+64xP
	VNFNJIKP1uubZz+VqR9tqnPwLCqE4P1D7xH7iJf0/mDA0klEYuKUD4drLgiQy10ESvfzECasESe
	wjbt0PUZ/XaBL1EDZJ7ud7Av8eX57Ty7I45I+TWgRMgnwEXxrc1G7Zy4as65HSymsk/6k98b2JM
	pHSg2B6Jvrey44rJp4zdaut9ais+IK3ZpELoYdLY2WVA9ahfd7rUAbH05MDJpHGlDjjqCZkegEn
	XQsLoPnWIK
X-Received: by 2002:a17:903:1ca:b0:2a7:aac1:7201 with SMTP id d9443c01a7336-2a94105298cmr148197605ad.3.1770622771445;
        Sun, 08 Feb 2026 23:39:31 -0800 (PST)
X-Received: by 2002:a17:903:1ca:b0:2a7:aac1:7201 with SMTP id d9443c01a7336-2a94105298cmr148197155ad.3.1770622770942;
        Sun, 08 Feb 2026 23:39:30 -0800 (PST)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c9746esm99023545ad.39.2026.02.08.23.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 23:39:30 -0800 (PST)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 15:39:07 +0800
Subject: [PATCH 5/5] arm64: dts: qcom: purwa-iot-som: enable video
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-enable_iris_on_purwa-v1-5-537c410f604f@oss.qualcomm.com>
References: <20260209-enable_iris_on_purwa-v1-0-537c410f604f@oss.qualcomm.com>
In-Reply-To: <20260209-enable_iris_on_purwa-v1-0-537c410f604f@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770622746; l=736;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=u7Q09FoIZmpBmo7M2pTpw1RIgnALAxpSQSxtH/jdbjE=;
 b=fJqjTGdWL+qMTdp2HNRKc02HqVO8XTkraPeCrela7ZLw69U0vYX5RwaPsLh5sTeI+CKmeEQTu
 T8pjVNFqIymA/rKqeYKcgtkb2rEujMZecLfHVBUgy04G6Cz89cTi2wZ
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA2MiBTYWx0ZWRfXwfazSLMO85ni
 Tex3JV+I5FQfIgIIIhxivL20SgmOltValGP/ChMsVcgiiuKiRIFZMxI2694fwHXE0nNkqkE60gU
 PTA5JkB60faZ/VNuCaCg9/yWun9HI4f5LNwOiYxeMaJZJop5VKYmNrpsqTxBrVKADS17R9icZTs
 E50zIRyfn5glCp+5CntjKHu21ujzpSAzP1QKIvoGSa3WFXaOC8QEEmN29dksxZ/jUSHHyfk/I+4
 t7tAjerMv7p1I/mpVb21MkLUueiJU4gbJaqKADil5GzbvtodckMXzSnakWUnKpvMV6VGwU4Y44o
 aFVlxG5H4hme2VpdQhyxYIxkOvKERCIJ4FBCvgVSV0cyv0qtsKq+KvqAEopW+qSeOX+y1+jPI8U
 JLhPJnQ8PjHBg2D8DxDsIHKKxTj3wgySq3r9O9hbjsBWIAkXMUrnl62cDM0rqrzN1J1xciRAXaR
 6/3g/x6JXC8dFU3SUuQ==
X-Proofpoint-ORIG-GUID: rcixFqstqvrL4Soy-lDNuqlJErJ0vrLc
X-Authority-Analysis: v=2.4 cv=GJAF0+NK c=1 sm=1 tr=0 ts=69898f34 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=7aFPd-yBq2EfGddswiUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: rcixFqstqvrL4Soy-lDNuqlJErJ0vrLc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-263849-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A654210C8FB
X-Rspamd-Action: no action

Enable video nodes on the purwa-iot-som board.

Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index fb90beb1096f665dab834737b6f4115f56c72977..549fbfa3273270d287bb447b45a7d2f58fa15a47 100644
--- a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -389,6 +389,10 @@ &gpu_zap_shader {
 	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
+&iris {
+	status = "okay";
+};
+
 &pcie3 {
 	pinctrl-0 = <&pcie3_default>;
 	pinctrl-names = "default";

-- 
2.43.0


