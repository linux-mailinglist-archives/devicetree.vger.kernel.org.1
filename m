Return-Path: <devicetree+bounces-259240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +X4rF9cYdmnzLgEAu9opvQ
	(envelope-from <devicetree+bounces-259240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:21:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E462D80A8F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:21:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD6F13006530
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4691D31C56D;
	Sun, 25 Jan 2026 13:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l9/uxyd3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gs9iLP1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846B531E0EB
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347241; cv=none; b=f3WIlPkP72GJp/AZ7cXgmWz/BqXULIj4oio5E66Ct7vWl3qgGALa2WY99yBg1VsK/QpZFzB4n3tkWRlV1NjGKYMPt3NX1OcnRlIrYVnx6H66vcOLb8CTJGcXcriTpm/tXEQlj/oX7zo9al+Si1wc86dXJ6EqsZCmqznDQ3X5A3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347241; c=relaxed/simple;
	bh=dIO5YayCmsnxyES+C8CIdExF900jm6HWgkVRfQodJ/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NzHmO9yVWPXspos16m1vYH7OpATHvDFF8+bvOttko0pcIJbvZvY/VjPFK6Mlw5L8YKjs/W8QlCGIPaK7KKMCzeCywCBzTeK3rh35YAeLWEJuA9WmD2I+olciPwZFAf9o33YR+fIk+9342UZitZsxHaUZ5DGmeDbOxBySaXqJdHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l9/uxyd3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gs9iLP1B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P1sTjO1864940
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=; b=l9/uxyd3r79U5lHV
	useGRrp/PHZJLBxFSqv2e2WpAs48u0iYzmQKFthgTdQisg01EKGsJZvRHddPG0Oe
	9hrWLv4kFj67dRmKRxWEyW/YKQ85cVCyP0tin/g6JI10FHmqrsIuw9goYaS5GfvZ
	1Zmt/U5iOyq8Vbs25TFy8GemcpN5Ax113K2k5YpN6CyB8gyWk1hOC3F7P0clClwH
	g7EjwSvo3ZkC5lMqTaD6Mc5by0V/T0rqG/M22BhyzZI2RVUAEJjut1rPjubKgzVA
	/AXg4np8iiGTB4ZsfLZB4zGxJperZvFa6Vy4I4rxueY3ESLB0kDCMn3dV9snDnPQ
	oGpY6w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6xt536-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb9f029f31so1337296085a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769347237; x=1769952037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=gs9iLP1B2NU5lsq+KW9rlMCWKfIgkUTPdCK7jYw4ezM/wbr//Mj9kbpxA/7ZKZ4YFP
         aqJFgyvZh/LWeHwCunXE1q7XM4/NYyoo0HDfzpyWw7CLmgiOfYv4X4i2DCo0M5pthD/r
         XbRUXuofzdav0dXmGQEHgRcMnd8UKzjnC9vAnm4oFSFCOtxWEttj0kbndxwTqEfkiaii
         apnKG1ccSuxMYmJSLJnhE6DpLPp7F2k57EDeI+tKfv+7Zg3g0wK06Hu8PFoRX8VTA0fZ
         4ltWxi8Ry/tvmjvtcD0LsE8iltcvUBawoNhXbzE0J2jnTSskG7K2i/NgHneh+VimE+hy
         Ft8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347237; x=1769952037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=oH2svwkKM2IhYS7npG4Je/VcIG0SVoXg+HlrX6+qWAyEMYGZin3prDZZE4NB5RZBNN
         HBYm8AKMrPhkkiE8W4aFk4OIVj1S65uyU+MD4H6+7AoxfN87sTzW3C0G51yki9qzL5Yy
         2jKr9G/ZgBmm36CjYwEW/r5+iiAqtpO7T39+J/hS4K3IclV8PuUG6gWCUR+B6pJr0uwd
         jAmMptSqHHK9YKmJvrERmD3CS3+CZFQArNrhpLAuLtlnVYwhrHilx30anXFAuRzFqKjE
         gRw5NW/lkdMu3JnXgSf/NA6druVFUOmadqSZtue1XcKxoNU7Np0pv0Y93B9UKRk+nWYJ
         s18Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRk/YHw7EID2yUJyfAtbRKCC47KlXd08EWMovvOuagvi7VqxEGsDUvOrwdPf0QFDpERdpWY0YeCcS6@vger.kernel.org
X-Gm-Message-State: AOJu0YyjAhkimzmk48YZd8Z14EPvZDbmXTKR8BazC4bePLcgtu7CqeeA
	cL55OKB8C4YIPyKJ4CIKI/zxs+6ao/UkfeJAFVOM+h1gPsfzfmWK6LRWRl1/HGT/tA8YhHsiBcT
	RaoAkdvdTBwuAg7hI/f5AcKsiZ7dF1S2j6jgcDNBkVtnOpbu14H26uimNS5T40qOh
X-Gm-Gg: AZuq6aKUbRpb/qFdzPcB1me+2EaEWn846I11jhPiPLmiNIdi+1d6qLKYCmsq3CA6ofb
	nzftXwaVhxO8N/dDomowXGkZloe3wgQcTw9hUIlT6tAU0hhZGQSpjDyC+GlEEd8Nj4DrgEjbANx
	rHyKODJUCnTKgZHrWgEegihRxYXRFQCgC0DO1VXmhCV6AmvXdik8rRc+oAbSOLyDDmqyLrXPjCr
	6zbVgGXOaoRC8GWuI5x0PyFyyU8lxBapLyasVd3UVyA3Kk6FlQlOsGidJsXDHWJj6BQmxt4RkDO
	dC2MXlljM0SED+NegBETR0nMkr+356GdCrmXQabjQ48Tx22RQ85inXfm2kddYt2zZlI2BvN0XDq
	YVOOZt60eyndkXKBOL6BOtxuejaEjFp+4eaGzttjNY8VECoTnkVV01TlJJNe/x0jC8HGjHSO8X0
	flNm8crSM+glPUz5n7/JhjbxM=
X-Received: by 2002:a05:620a:1906:b0:8a4:e7f6:bf57 with SMTP id af79cd13be357-8c6f95e7250mr167673585a.5.1769347237005;
        Sun, 25 Jan 2026 05:20:37 -0800 (PST)
X-Received: by 2002:a05:620a:1906:b0:8a4:e7f6:bf57 with SMTP id af79cd13be357-8c6f95e7250mr167671485a.5.1769347236622;
        Sun, 25 Jan 2026 05:20:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1706b5sm18901821fa.24.2026.01.25.05.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:20:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:20:24 +0200
Subject: [PATCH 7/7] arm64: dts: qcom: sm8350-hdk: enable Venus core
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v1-7-2c5e69fae76b@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
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
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdhiUienrcTdA6Os40FthnDFiLH2Vjqi5R8VQM
 99YJkO/ZvaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYYlAAKCRCLPIo+Aiko
 1VFkB/9fRfbFvEBSRuJnQY/BN7PzVlpWFe0Jr2F5smb9Al018yLKuxnAbHgTJ4vFb9ydB0VPv6Q
 91UlwxyCu5ZQ6EwroPm27CVarrECrcl6oSqxNjbZuAUlECnQf/vWtETX1T4BnLZFsuITVcMNzC3
 nU7VtckMNACtVTiGzY1EUa05+c9RNJKVbp07WDeL2vBgL9q9WNH2dB/FYNEYYhtDoQj9QX6usVB
 58I4ykMclaaXlw5rNGrUzsvtNDNNVFWwQnQylL/ri42qalOnxCCKzmdjLzMS8TjUmHND6x4Usvo
 mhYzi5P4X5hsXmhtPaty3BkP/Mnr62TkjCDDub8lPZGXTemK
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: sFdM7v4nQcYzotjxIt3S4sAL78NDq3e5
X-Proofpoint-ORIG-GUID: sFdM7v4nQcYzotjxIt3S4sAL78NDq3e5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExMSBTYWx0ZWRfX7WgeTmZM31bT
 aJhOB0sKS3Rv0WH2lzXHeADv3LHxWKublCS+Z0/Uh9XN5YJPBw0idCx6X/7KigwKZQkruB4UOzg
 ntiV36KitN+nBnE+1foSyZ+2s5XhZr7Stb0POD2sMMKJ9FhJt+Bo3YbL8hT0vN9N6VfQr9fPFWM
 VdQMG8kBizvwq6Sg55Fa4DXf3gbCXmO0/hnoDX2PNGv//c7oraLzH51uMexbmY2yV7jdphB/0k1
 GEorWuKTfly/+/ozw1ph37ht231ZtNC7h7hA9uUlPGj1xP9egy9d0Zpz0g1BFx4qfT9e/wSzEz+
 gJqEcyDWQXZ9wg8Wdf10rr6WhZHDY0W9epvT0RuOuEDfegwPtlL74NOgRGoKXrpymbZrbmesUR1
 vmkJznPS8WSOezlEZaNtDK4guKm0V33caQPseUEi+D0MLyDCRSxMViKE84tAzvbQ2b4UzmC9wA/
 SC8yQIC7ZUNyWVyclBQ==
X-Authority-Analysis: v=2.4 cv=Htd72kTS c=1 sm=1 tr=0 ts=697618a5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sbAN9nOpwR4X-TBSHOkA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259240-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E462D80A8F
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


