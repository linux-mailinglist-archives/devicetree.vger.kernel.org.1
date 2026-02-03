Return-Path: <devicetree+bounces-262061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKtzB7WQgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:07:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 867A3D5027
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99C2D3059AE7
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4487636BCCB;
	Tue,  3 Feb 2026 06:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jgVIcypc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EP+AN2t4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5728C36BCC3
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098801; cv=none; b=bRQpAayr0qdXCC339Gnz2I/eic4FZru9ZZZye005C7Iy+vZWriPF++z0bqnvnVgzuhOYEdz7koHfC/pUuD8keG8p6ng48KWzCUXKvjkvfqZUmqmMk9LXsg9MYqOH7dQ4PFAndytlfxkp3X3klGRmLroQ1PuH2wy5mpiDdVv1TWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098801; c=relaxed/simple;
	bh=tW4K+WgSJyLZfWN+10XcL4+EBYZ+0pCMvRvFk+AoOeU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QbrclM8CQ93VRvZby37nsPstUYSTJWA181oa6Qlxsi1dYwPmDFzOYzxMyzV5GCO1w79/TAJQUn2WnYdgbzW2zmH34rIO6WgcHtl25fg1sH8LPjtFJFtp87NuwuYM5AUwbyfxyZV5MGnpcHd7bVy4n5eM8NZzxT6H8EieCnp0NPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jgVIcypc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EP+AN2t4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132m8w53388283
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=; b=jgVIcypcn9eSQMeo
	jrKtx9PmpNKete1KQ9DhqVR7d32rgzrY0jwcpEMne8Jhu3SqfvYh0XXMk5Yuvu2V
	PTSqF6d+rOlgZjhCJn/PlRBCUDfXHnFlM78/PMlzbrqIgsChjQp/+hPQOblxp42M
	7h/gM9lX38n+gyGKAk9iNpkUNDlcMHqOgNTiDtqG/mWc7lB4Hgfbz+K41SE+ep03
	ntqAo9w6g7P5D8BJgyM61OfVa70A7Fdlx7rRxVTOFsnaLraAlsnu4tggUQTU3dN3
	ZeePJDld4GhJdfYqkrc6LzU0iumDCtUbWUlaNXB1VUAMskAUKUKaLouoa14o84LV
	xMW4yQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbt9gy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:38 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b74766fae7so6234642eec.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098797; x=1770703597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=;
        b=EP+AN2t4IH9Z48+6d+nOvfhzDbZ2oLcBGbD8ZzpDKBIVUHfh8l9BZYWF7vmk697uqN
         pdMcTgvSMB6TKgZsP8KbWPIZY2ND7k6EY/eLSP4O1kHMp/mw7IV1ki158CHMWGVmwmLu
         K0aaB3Qd6W8wiLi3+HJfjYpp3EO1Qn4GvLsbelA9GdmK2nSelYnYJ2zJRXmZxvYl1cIv
         uDK+xSHaJfGWUBJqibdWXxm8DNZvtwGG5OT4sYsFJbX80GXrt/VVcmpEii9Nu2T91dFz
         8nKFBadBi83zBonFmvyKlo1BBzyAxshkZ9j8QK7g1U5a+CQLsdHNKkGdp1N0qFj4tKLg
         ps1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098797; x=1770703597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=;
        b=lVQAS3wBvxQcJxfpAyIxxW2f5Sy8Y6DZ6PFrf/Sa13MLEHiTPfxkt+u6enT3L80EUO
         KK+eAjQkINGRLXhkCqrRrXQ8WeGV6RfhFayr3QcpyQgYsXKCg5vcfHDKEi3vUKIhPsLp
         Rfu8k1Q8P6qma+Y2cXkPZhLGNSAKUm/VXwb11K3JNMFnrlG7Y5De/GI6DnohQZShEUFs
         +IYnkMlg1Btlgwp4TwZCedo0JHtN65JkO5IIrXEL2JivV6RKxM0HazXCoK1vJ5ItDBKi
         JxRqq/IhoOJZXHvD1spqXjVS7HqplwQRd6bghdN4EHcgL/EOQae8VWYoFqR1TmFlQ+pP
         CBDA==
X-Forwarded-Encrypted: i=1; AJvYcCXzLTSI15If3pabvoWZdOXmZw7BpwFVIvLxPxXz/tQ8PDhZvVrmD6hV+ZNjNgZ62+q8Sggegx98AMeN@vger.kernel.org
X-Gm-Message-State: AOJu0YxcgQKNILR/IMkcInv17MbijjiJlfX9sREwuaz2O7e6PrHW2apG
	kwk5JvVevBZJGRb0A4UER5Y8NLlV2mxzdR6OyRsY0ux4ySIaGLQZ9diTobJnLZuiafmPz8Dm7vy
	mhfBIPAVhKxZeyNx9vr3dTGumBVUESxYhGV3TqT7h40z/ppICmkGDAmsJZvSCL7fk
X-Gm-Gg: AZuq6aI4xB5BtsfksZJ3jYzW8AN6TVIcHsxh2qG6ln70Z+3/CKIBg5Pc3PTpJK/tNKg
	6SD5mPp8B6Z5KdhWQY2QR6cTlqSCkE0RSrMfH0j18hTJBGtkKqeFJdPyPq7KzMzBkZKHUnd7mXY
	oALJpMUplJqQMLBc8lLKqXppVqWeDf6cntMsnFbP5xtr0Wios6qelAyHWii7diL849ebklnF6NF
	nRzd9UROY0PcBy01wS3nXsChTpmyxT0vNbWrglSI56QN/+powAASlVSTPXlGQpGnp71AqGhLYJ2
	EgzoNxBD9xEukmGRv+aW7c+jD0qQ8gFIT4PC79rlWCTfF6NGkYU7pBKA1blMOfBW0o5hKXbA4Df
	hRlmy0+lRANy39+rsyGSA3uAcV3O/j6X9BFoAATzJc6/VBvDx2soZ2KmKgbVB
X-Received: by 2002:a05:7300:dc14:b0:2a4:630b:c789 with SMTP id 5a478bee46e88-2b7c893c6f3mr6488221eec.37.1770098797209;
        Mon, 02 Feb 2026 22:06:37 -0800 (PST)
X-Received: by 2002:a05:7300:dc14:b0:2a4:630b:c789 with SMTP id 5a478bee46e88-2b7c893c6f3mr6488206eec.37.1770098796703;
        Mon, 02 Feb 2026 22:06:36 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:35 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:23 -0800
Subject: [PATCH v5 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-6-02de82bf9901@oss.qualcomm.com>
References: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
In-Reply-To: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=1007;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=tW4K+WgSJyLZfWN+10XcL4+EBYZ+0pCMvRvFk+AoOeU=;
 b=6QZM++EU9JbCZOFu7qRZ7whOIuCVesGjBcACTqP6pML5HB+I2ob4OZDoi/YAFfQ8cSLE2EwuJ
 IfuFU0Skg2bCQrq0um+dGBj6rlDUXFZbAI6UNh9H2ysFwU2h7oJxbQm
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: xxE1E1F7j5scGHTbcGxg5xuPOYbF0u0V
X-Proofpoint-ORIG-GUID: xxE1E1F7j5scGHTbcGxg5xuPOYbF0u0V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX7qITe2gaoY7y
 rxdWpd2AOqu6B/MXLfdJrbRLK4rZExoF8jDOgiLxnK34uO/MkYL2y4YBbQvw7sqgMxvCAqddBJn
 aHnABERviQn0LqSYFYxeP9vJjJvHX/bLT8Nml2LNXrMf8z55h/0KAf6qGEOwETtdOM+/rQ7ztxu
 mQl+Px/tPxNXblUYaWzcDRkcGnwZrrt95ByOLRN5M0xX94A/JzW+QPiYV4BHyhjR/UgGNKfuq/1
 9Iv5t4Kao6JgOlzET5maSTOdUS0Zp3njqZ5fvqmeWLOKd8Ymm7swdo8ONgAeFxNIAQI9NvCSuqx
 V+lJbWVm1/3jmxI/DSje/owQqohVMTcBHA7l5vwcrzg4NIWF1jVk8h2QE1pvr86+atqrto1S6w3
 BiPCpqB1aR8hJZ2P1HkzWokJhPyiB+VFAumV5ZYCZwWbasX/wnsJtg1hD/uZka6TQZrZiVI6wdF
 lnmiGPgPyGosrICIXKw==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981906e cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6pSOtZClNuHiBGgWezYA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-262061-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 867A3D5027
X-Rspamd-Action: no action

Enable ADSP and CDSP on Kaanapali MTP board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 32a082598434..3544f744fd1d 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -684,6 +684,20 @@ &pcie_port0 {
 	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/kaanapali/adsp.mbn",
+			"qcom/kaanapali/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/kaanapali/cdsp.mbn",
+			"qcom/kaanapali/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &sdhc_2 {
 	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
 

-- 
2.25.1


