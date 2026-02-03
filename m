Return-Path: <devicetree+bounces-262062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEStJOuQgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6ADD505C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 58E463015251
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5335A374160;
	Tue,  3 Feb 2026 06:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jh/qEOk1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y9bxMtfm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C3236CDF5
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098804; cv=none; b=o8SMBZV9kcYS9dbmrSpNScP6b1KbGwOHgqAKqMtphz/k+gp9DoUNTGhnifIrOyVmTjLrsLulqCaX4Ot4NsHC4detXfCyHz7Ao46dr7Mh+OhAE6KfEgEimPXoVev1k4nacAKt0g46DdLr1/3lMtCal6gz5K6zBw4AzIuX9Iaewrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098804; c=relaxed/simple;
	bh=QgXLnV6T5dAkEpu/n55wFjWDZqtEWJc1dDIY5S4JeXk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JZzjpTCcOXqR0JyFYcpp1d669QkV9d3ZF3SvQBXN5RCmiNxeUBRA9kqDBVmYwMCLYJtn+e+rkFO3C10lDpNjXwxHe3CA42BSTjClF+QemxxMOu+yzvy3Kf1DztZC+OhfsXDh8oqaCCjgJjKQWWwCbl3DnONU0BkNDWeYG9C/YjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jh/qEOk1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y9bxMtfm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132Qqmb3386846
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=; b=Jh/qEOk1ALF9Gzqm
	qTIEtA5xmY+THEnp3F4zj83oViDyhYHiv90v777D8DOKE9KSdNDYJKpHcYjpsW6e
	iHXQICvwphNNbR7qPQWgxZvjEFxTiy460g5awoy4DVwXZI8fvPRGk0X3Jw2e0DfY
	PtxDly4AcDmYvD6TOsA/eDfVtSPry86L3cMY5YP2pbnP7smUrcRK3Ldezj/5/BAd
	UC42rV9HFTs6E5TFYqvwFGKs07bHj8eTLuzHJwEDjQ4Njj41+iMz+2+zp5C3tAAS
	LYvoDAxrfdWAhhe89M3x11xTy06R/ftkVhPJULGD6EdsFEFgzmJkNiau92ZHL3V4
	hB9RCA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbt9h4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:39 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b71d3ac508so5154257eec.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098799; x=1770703599; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=;
        b=Y9bxMtfmC5x/jWFzQ+bgLVN+XIjN17OovzxQgniL0L7d11exCHAl5viWmBY8CYqEz0
         RiFhKD1HfcBIGS4USQDm6g/tSarz/pNsMSmBpJp9zZuGupetERC6RAcZ7zlTy17Tkp7d
         96XjDMohJC7Z8etmisNSLUbkcBsvUZqJxK6xSqK/IRFkA109lszGFcMZZeNnp7x/v/+I
         Zfjd52n6KPAGyvORkYz0F0uupMCk386a+CqVH8+zh4t8pst5Wc53EmySi4yG4+JaO8Aa
         xbmPKPs1hCyCcJED4D/eOETq9iW1lNt21+mnCgR94LfPQ2fBjT64Bn848pDlmKDx7IRa
         45tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098799; x=1770703599;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=;
        b=sVTTJhr6xyPL3ags/1cFXJlEzRg6KUGIvRLn9vxze4ggXVtGzNje2B5Mem9mZAi+mb
         cdGtlhy89T9DMu/FKc9aJsn6S/tZKovETehHwyBrkb2fgaoxbWpyX28jXXyGtkwPxAzK
         X6pdUK9kYTl4NSiSjX1MRc+pr3cTdqJr7PDmhMIv+1h1Ox27ONtUURXrjHNvBOHX7gL4
         Y5XmdNDjrHZmRnXXUns/lYHsjKuc+2F3CoH2nlfM+GWhhWu5Zjq/Ak5GaSqjB9Tfc/nw
         cQ3cYX57DWJq3qd2f2zAXAKZQ3An8ptXbW6dKkumHUn7lScAN9zr1ACjmKRFe4LXSvL6
         Ziow==
X-Forwarded-Encrypted: i=1; AJvYcCVG9X8rCVPfqNN+xZHBZIweGNCB9I8n+g/pEdgX9wX6N2Qgs9uwTyf0yodWbR4kbnY9EFlTfpWfWSGb@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqh0BNda3WpIIOs7Ys3guhKwHhtk663iPKhoojXH6ACNvaSlR8
	vHgQi7hCn5yUzmx1tN7emR/VS5+KxT2m1MrNQtmOTTc7LNF+vlCYszeNHtPQTS/676PzF1BuYAA
	M//JORUGM/y9332WgDLlflTqzEskZ5QQEC48ay9347S70hp6EXgHz/1anWUDJI9Nu
X-Gm-Gg: AZuq6aKOZ1o9KRcUvu4gDwmUCpyu66i/46e6zHq8w9jhI+LjkF+Z4o5WRGwj+jUOkDe
	24bDgC5HBa4OlgCHDCP1IX6T9SNWBI856yKM7T0T5E2gjMcM4aieXprN/RhImUvqQWqpL9XDDmU
	hXRYzmIu/eGk3dNrADvALIR3pbGYsqyGtk5TwN8zl2gFCTiwpzSfl+tTfJcn9ID4G2KilxNBEC2
	GSXSazOmghI2DitOydWX1Se0xml+eRPil6b9k9kqnN+dxqbkWzXpqADW5VeUiHLK7e3SSGBjRuY
	ttC2G5IV8xpaHDL202KanMVDb4KvCzVn1/BY/yFicPDjjRpFooHCZUz56iBJ5Aydu4tvq2NYGmY
	wt8dl1UMyr9NwQQoT8iEZM/hlg7L+LYhsfK9RoOTJ0fF1E31TtIlobst2EjZf
X-Received: by 2002:a05:7300:ed0d:b0:2b4:7e6b:9c00 with SMTP id 5a478bee46e88-2b7c88ea112mr5598927eec.23.1770098798662;
        Mon, 02 Feb 2026 22:06:38 -0800 (PST)
X-Received: by 2002:a05:7300:ed0d:b0:2b4:7e6b:9c00 with SMTP id 5a478bee46e88-2b7c88ea112mr5598916eec.23.1770098798151;
        Mon, 02 Feb 2026 22:06:38 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:37 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:24 -0800
Subject: [PATCH v5 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-7-02de82bf9901@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=1012;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=QgXLnV6T5dAkEpu/n55wFjWDZqtEWJc1dDIY5S4JeXk=;
 b=cgpkYA/JtSSeggUxOpdT6dtm22z/PsZWecMplMFl3apBN+N4JL1DlQ1zxL8Wmsb7trFUVL5AO
 o8rIoiYjm28D2v+FXylfKoQ20LNaXXoN/P+8Klrnc/MtSD3JX7tJyqQ
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Uw17cY6nX5KQR0QMWt8ywPyB8uE_Qc1n
X-Proofpoint-ORIG-GUID: Uw17cY6nX5KQR0QMWt8ywPyB8uE_Qc1n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfXywx09v4wlFpk
 LNYILCapD2WoE6flZprz9cxJuomeuXD+WC4tq5rNvdiCg606/tG7koqDtswcY5rMPeRIMvN0eWF
 ilyH+SM1ZnVqayHTlPj6AljQeJupWIIvVEb3btZ7KECiA+Af95tr+c11koKwUndf6CeOoNTsmt7
 u5qJFCB1qUMaG0D89IaWmgmLG4udOCAz+r3KMAk1M7Oo4pPHxtg+CquUi45xcrzJc82Mww9C0Iz
 ++KZIFsq1Dal+MhQZn/MwvUevDqD8M7RFjPC2rNuAxWWaolUq4tPC+W8zVdSIREjuaVT/0YXcGA
 B9hFSLZcmKHZQclHxSVA2BYchxS53Ut1SWCKjHusvtC59z2a1jMmFsj7+hSO2hE5A8CJbu/41/v
 40yG3G987FyCnv/Z4N2d8PGAbcGSTHJjLE6fOCR0K3uZ4bSyNmGnW8aGNRzBWC60mhkj7vbnGmX
 6sunlJ5p/E8cAdbwv6A==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981906f cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lIVsHN_WdLZ9tVWbX6YA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-262062-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB6ADD505C
X-Rspamd-Action: no action

Enable ADSP and CDSP on Kaanapali QRD board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
index 66b423a497b3..32034eed03eb 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
@@ -682,6 +682,20 @@ &sdhc_2 {
 	status = "okay";
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
 &tlmm {
 	gpio-reserved-ranges = <36 4>, /* NFC eSE SPI */
 			       <74 1>, /* eSE */

-- 
2.25.1


