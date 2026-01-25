Return-Path: <devicetree+bounces-259273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2N1gFqw4dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:37:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF381454
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28E053053DC5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC86328604;
	Sun, 25 Jan 2026 15:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RuNgUwgM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c8KAnFEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D543532720D
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355198; cv=none; b=jN+CZ20VEAsVCLxjgM+XNRTkD79Z4R4fBVffgUPIkl/ulySMChlA+2UUelJFgJpLruLgliIyZatC/7xIw7FMCqPA4xrfT6gp526+3JMgBkteM64px3oG9fFgE3BKapJ2NCiCSFnV9JEWyd9qJ7lEUTQxaK2+0tVluicSZzw6R5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355198; c=relaxed/simple;
	bh=dIO5YayCmsnxyES+C8CIdExF900jm6HWgkVRfQodJ/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o40oZ45gmEKlKAHqgCwV5X+8zBYIVUGV77akUxNwHc0XiRfg731/t48t5AhDhq8SYMFcEQa8Q7MHibfcarFYPqCV+kKzfPwhWrtaaCqyyHOcyPkOg7Xrisn+H6ivduQBdqf7phPv1dzfFosgp3ER8w7seu0WlhfLhpekxcv+6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RuNgUwgM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c8KAnFEf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PFUuqb287908
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=; b=RuNgUwgMgUS9Lmr+
	XrUFZv3HhvM7w7W+V4kzZZmEh7Gl5ETyUG8T+q0RnLBUkudiiB6ZooFn1lP8E2vT
	iZuKAyVLVdunlBJtsbhZeWX7cARuhVPWuQSWfAO37Giv5aqw6H7h5r0Hz8ucBeMR
	qo08QpJyoZfZAISzpJPys5bFseSr/uCAodCsp5BOY673ZGYFNPTidVmaqi4dzJI/
	UnZ1QM5mZWW63+kaEBNhZn5fJGPzpuKkoacyXrKEyM2v0cREyPujR8njhqnyncYq
	ofausS8ODF3slUlbncJ6TrkL0yDlwEN9N+rZzmR5Opse0wdHn8Sx6c2p1asyLrS7
	EaFjHQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvwty9s3t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5311864d9so303870085a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769355195; x=1769959995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=c8KAnFEf35MwendzX/aFU/92s+W3RFgjvT+mQ5SSpNzO4U/pXDVPdxGaVygBX/vOCt
         7qg9a/kFG1WPMDhqT7JTCLftCcv5xtCb2pXByupuC6zyonkMEwZDLgApXeDqw9iiWZMH
         qqrubOO7Sux0q9rwyCWyRkjId1kXv823aoz48O72kvWImfvvvmR9o87D+NxCzNoB8Vqx
         Fyzm/3aT91l2Blbt4V0QxxyNsLmV+SilrBO3T6JxtaZMvpJzMHdWMnClFIYLSFD6eoBE
         TQlwORbzK+ErKD5wgT+tdFzuYoMsxEgKaQPzcwZOgDawjw8kWjusg/Pa++gtypXx6fsl
         b2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769355195; x=1769959995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=LIovzHusFJ6j2OgEiC1vbtEHZy+XVLch33StGz+YgD+m6isnyfLqUh35nXu7z00H4o
         lopM0qKBOuJbjV+/bs3BCklG2S98YJBlr2UmD8jbTfKlFpAn2PPbMTBIyZ4+1lM9+i7v
         +foMf7FRxKQER+z7q976MFG9JtFmvBKDhiksGInnjJgkU+AXug8bMUcG6Z48OzzK14zJ
         m3FgnqL+N+IjyIDo5WC0ar7Pe+wxEUvuJw2cQEfKv9qpBDfuqnhqWir3NtROHV9TXwF8
         eEz30dxLsITBD3QSgKQgKTV3SpmGqX0/xOWfTpiN0ih68vq+GZckP85NOpq41Wr8KMWo
         7CDA==
X-Forwarded-Encrypted: i=1; AJvYcCXiJ5WoYWL4t84zHEyb5L4GGCsXimHpvx0T7KAsvlci+hb3gqnBNf19OuJt8LOD7U2eAUXijYAdeVKu@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzx/nJzuURSq2y4ip3KoNNX16Ulk+ndQGsz62Gtq2l/Zgtw/u1
	sZiNuZ2m5OrdbtLfq+czHlR1OJcPMcU1hSjNeX8KJ3Tqd1z6G69eitk2dQ+5uBY5ijwjBhreXb/
	PS0GKI7bPYJ3jePMrSXgQvxGsrYyRPf2PI0QtyqpgiPlzuZBstKvWUeMNPAAeDRp2
X-Gm-Gg: AZuq6aLHHddrlnl2EVOHuTKuftg0p6erEU6B9WjoUET3H8PgJ61WNRuzR2Uf5TCRQL2
	tQiH5zjSqM4MWVIyrYdRijH3dmMcy7jT2fDdpzVp3Spp4706bI6JtK+48ZV6eUVN5OFCnBXhWY8
	UGj5WuWSFGW/Xo7OWk1vvUyppn3W1qOiSO0fr9VqlKeZ0tQ0dy5MxQ4gclMI8X6k7QWpDgV9alS
	qmacSBNS0uWZXp6xnoyBYkbJupc9NXK+OdSw4kbm95fyBT/Mg2YxIDJG4bwP2M1RIm7krs/lonc
	3+Byb54qCTdebdoJCPbVXbiNzSRhQb1nli5FVXzM246QptkHCqj4fcKlRXGMkL6BPO8p480TmsT
	nh98B2kq36shoxiP7OQEm5V7cSYl/BfSIgdoGZinRb0FYy373hjKw9ZSV1Hy0WI9Ht6uTMeeyGo
	/JQmckw1boRjg9wA2Hb4RhQ28=
X-Received: by 2002:a05:620a:4115:b0:8be:88f2:5b15 with SMTP id af79cd13be357-8c6f95d44fcmr205786185a.38.1769355194994;
        Sun, 25 Jan 2026 07:33:14 -0800 (PST)
X-Received: by 2002:a05:620a:4115:b0:8be:88f2:5b15 with SMTP id af79cd13be357-8c6f95d44fcmr205782485a.38.1769355194528;
        Sun, 25 Jan 2026 07:33:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a0a45sm19154661fa.34.2026.01.25.07.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 07:33:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 17:33:04 +0200
Subject: [PATCH v3 7/7] arm64: dts: qcom: sm8350-hdk: enable Venus core
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v3-7-d21861a9ea33@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=771;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dIO5YayCmsnxyES+C8CIdExF900jm6HWgkVRfQodJ/4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdjetDdXIMrIeYjwtTG4C6H9chW5bsLcrwEICJ
 Fo4kYX1xPWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXY3rQAKCRCLPIo+Aiko
 1VtwB/9eDbbVQFMsu6AWYK2Nvkq3JuOQAH7SfOxC8QRd+dKi+3K0hthB1FxAF4kX+o7/yx0FwY1
 1LfMWHqM33TgWtSh8bPmZac+XA/9SFpBm5Y/+UfpuSuO2r2Jt0+3vxOsEUEn89+jYZZkIYMWvMR
 WwRxGHpLwn9W4MpBVy20Fok25x9ql3pRJXplN4HdqZnaH9YRZrGKvd/IXSRu3wbztD4HNJWNRiS
 AgS4VQJG2P9q1WOzJUdC/nSDj/c7rj819zotfXu0qldcY84nsepUw+gwJ9lbF65lj3dloG1FRxx
 DsOcnWeqDm0AfCHQcXNuQFnLpLIv/AYvXJme3+mMobqX5EEZ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: u7UptVKahbEYhJz8eoL_FUPVA5jT5Jk0
X-Authority-Analysis: v=2.4 cv=BteQAIX5 c=1 sm=1 tr=0 ts=697637bb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sbAN9nOpwR4X-TBSHOkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: u7UptVKahbEYhJz8eoL_FUPVA5jT5Jk0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEzMCBTYWx0ZWRfX9FNhawyigrjT
 oN7486Q7bMVvuiRDJnL/OEM+tCVz3fOkPcbyG35TZ2u02nrfriz/K5o0+RQoIk5IFGtdTTlf9Ev
 T9nfFXERP3DagRC1U07RZMX7xA016LkfeZo1524MyKsHLEZL7O1R+hixQl7G6ujK4R9ZNuxJ0TD
 Zh/KheaEomqT+HqzIbLpYyfxXZUdGu7ERyYvchoj9UV9ZWo86WiiJClHDc9JuXVH3gbtx/Uc9bL
 mTAsUpUWFaXusbB9biULNPZFm8piWk6PcVVhXqEwa6UAQi8BLmlj0CcTJw8bBxGmAbodjyvQ+FR
 t7DkAin/NgNujxiRMfKH6ov25yY8OZm51JUE6onnDxWVMmVbTEu0M6jcgkpxQdc5ysCWy2ta2Us
 FlohC0mGm7lAMNR4kJJKvNs/ztttFNUekkDhvNbxK6iMAJS6pKFEKON8rE8lvpLDq1iVlJ5Sara
 DhmzqScuRt6DB9XNHWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250130
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259273-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B4BF381454
X-Rspamd-Action: no action

Enable video en/decoder on the SM8350 HDK board. There is no need to
specify the firmware as the driver will use the default one, provided by
the linux-firmware.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 5f975d009465..79f024fd47f9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -894,6 +894,10 @@ &usb_2_qmpphy {
 	vdda-pll-supply = <&vreg_l5b_0p88>;
 };
 
+&venus {
+	status = "okay";
+};
+
 /* PINCTRL - additions to nodes defined in sm8350.dtsi */
 
 &tlmm {

-- 
2.47.3


