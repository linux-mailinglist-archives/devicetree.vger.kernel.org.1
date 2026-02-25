Return-Path: <devicetree+bounces-268163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EYdOUejnmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:22:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 568A0193519
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:22:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A6AB13040334
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6E930E827;
	Wed, 25 Feb 2026 07:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IK7LCrtz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ckx8kJ6L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856BF30C35E
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004036; cv=none; b=ZSMfkdyf8xD2slaZQh3iZ+OF2S4ZaVKos5k1PZUGZeTk0D99GvBAMfp7wKd+xhneBMVrXcieo062lOOc+XRQoCaYnsbr8PMSVG8PLkq7NdK1W+OWmPigkMxF8dgs7ziE89Q036svf1xBCZDH6ugWuDRWzdmZUZqq8Iad/dfRPkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004036; c=relaxed/simple;
	bh=QgXLnV6T5dAkEpu/n55wFjWDZqtEWJc1dDIY5S4JeXk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=donOnSS57cEZPwjG5JwxQN9KSh9BL3BxZog5BmcA7eIeA9DfUKOYjYQ6Tte5J7pMYXF70hHihrGI8YgtR8Nixkg6sfnqy3XyN3ga/Y86AxRpwoCcwQ+JQE1165ib2f9kvsJ1XoltXyxipeuho/IsfY8lsCHvlxv6qlivPf17Ea8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IK7LCrtz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ckx8kJ6L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P0U0H44044481
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=; b=IK7LCrtz2TN+IVYe
	fbBKpedtFG5Mm7uWbjOkwcdvHBBHKlhfZIf3A3mnAwMe4YV0VhMrbb0W6SECDr7k
	2vXbypCU9fmmOtNWmxWk8v+EE9K4ZUotLwyNE9Bd2cyIGzlnie8qZNMhDz0Y2rX0
	OV/ucHtkPfD+S4Xzncg2ezJ6ARihmgR4DFpRARG4kgiWn55/jMzNf+qAnmYZ3VEt
	AQ+MxtsNWLuobkyYP4pbVphWniamUe0b5KTeNr1DwdPyi+Bvh8niv/EF17FEJXQx
	6ZnpwOS18Rx3yCji+SNGcnKtMzXcwTScFvWl0Akb77z+9ZUxT/CHm8HeON7TsGv8
	puAL1g==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexejjm8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:33 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d4bd83e456so71853776a34.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772004033; x=1772608833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=;
        b=Ckx8kJ6Lf5ih5pz2rzZsUqzjaCKK4PWOKZu7p/+JBlD10qchuEPvHHRXrYnoxg0MbZ
         HrxPh1snpfsgVJnDQXG6Lpun5Qez6WUZyCZQSORJCXMfmPHANHv1nPAjzEO6pIVvNYBQ
         BoTeQDpqyxkStRxSlkuOtJgDzEanz7oAIi/684R9f0LTeaaKb8FIPyLn2cHEZAS4dBYA
         o721G/xrcPS96adWkM9dzV44UIk0ZL+ITtYlxVEvt6XMV5KLqwkNsOUyNEbvMAyGvP77
         eEkMPvFrE0udcDrJwVwrqzo5sXdq0WIziuJ5UvY4jXXxztQBWEF+9MkaTPPfIvIOyjHg
         X4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004033; x=1772608833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uyNK3FGeG2/VWrJDgtIaYbV7K8X2Bvq/x/mAZbpKTS8=;
        b=Q+m854uw+vgDA3NkjVSc1dgBqbuwQ2/t48CBUEgPnVhS3NacFrYTvzOM89fkRgTJxv
         c/JeHSNS7sc0UYEHby8c5B/H8fsK4tueO9jqhc4e/sbTJ8RvqOnu/jghdGNkIRnWBUSN
         phQq6WXELAYeEI2SFQn0XLJtxLC04LMPuTxTBflbQJGEYMilLJYubQQ3OAd7KEMbkbhw
         idiFvdLIsAJSQ/whilYvI5USldfb+rfkM68VpD7u25bSdtU3gTpwELY0XEt6pTsj2MnA
         MvPs1UobSptzvVzGBPiMLi00CQjn9ZPIamG8QD5u2SD520CUHuXHCThQZzUi9upDelll
         s1aA==
X-Forwarded-Encrypted: i=1; AJvYcCV4vDj1LCiFLu8+uZLETZZAznrY4oHFEMgC72Tx9981iOSnYAb9s2kCnS6aNFmycbTifI9bp3VZ73ux@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9JEs/cU/5To9PCOJ3UPaL+rpxDYgRwDQVN5rckEnlejFBppYC
	e2KHXvXiqYzXXe+bZSHcWxWLG+mQ5zLW0+baizMWAD4vcJM/1lxLy0p9e/o/54GP186cdYp9VVB
	VbPjXSZTmVo5IEKYoyEcAxBEgha/yyJqRfAljjDtoFPQuwJOJlhZQMJCSYMhuVBVu
X-Gm-Gg: ATEYQzxKZi0IY0G/pKnL9bdMixaXkCcgP7eODGJ7nXyHYG7aNYDV6N16mF4sgGtMH5e
	G5zTu1/R58G2ge/ePwuzP1jeERkMM+YsKr0WUhCqOwIiwzmjHrvlZB4dTL3FDGX7K7fcwO8omu0
	B5tcydAjphskeNO7HZqfpofuRyeZPf10VS0dXt7UnDwuEcYI46fK0kkTcJG016nFifmlan2KkPd
	5TkRyd12UwwrqQkGo4zHHNb2Vd/dVmdrNUFeVr7gMlC9xVjrnsIGYEQHLEG+mftBnYLkHx5YUhn
	D5AFPx+Kaa4QwNFnNc5wk8s6Z16AH5UDOzV1TuUMxnc2I/a+nveyy+7qzNKA/0uhyodBMz3wH1P
	6x+XtZ7Ghw0KhUbEMgFcGaNrlbZVGslNTaQeZ/T/C28zxadiJemO1aYW2ATJ9AcBw4iCr13ev
X-Received: by 2002:a05:6830:2546:b0:7ca:c7b0:17eb with SMTP id 46e09a7af769-7d52be37e7dmr8932431a34.10.1772004032931;
        Tue, 24 Feb 2026 23:20:32 -0800 (PST)
X-Received: by 2002:a05:6830:2546:b0:7ca:c7b0:17eb with SMTP id 46e09a7af769-7d52be37e7dmr8932414a34.10.1772004032598;
        Tue, 24 Feb 2026 23:20:32 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d038dcdsm11711730a34.16.2026.02.24.23.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:20:32 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 23:19:22 -0800
Subject: [PATCH v6 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-knp-dts-misc-v6-7-79d20dab8a60@oss.qualcomm.com>
References: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
In-Reply-To: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772004019; l=1012;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=QgXLnV6T5dAkEpu/n55wFjWDZqtEWJc1dDIY5S4JeXk=;
 b=6/fWFyhMq3h7ZBLu8/cEhX9RAqL6e1qv8KztMgQ7R+C3M9mBhGm6zXPvpmhN1EyDVrairCbum
 AOXvK0TJgSTDPzOqJG/BRkXT+rMrPBzJYYuV8OKaG/e2Iw2KEZ/lXq3
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3MCBTYWx0ZWRfXwD1JJj7VEIZA
 jMzOUhO33Kr1UjowWTZgn0PNZhsRkCn9z2dechS8XTaskONDB02NKfV0VgWHoERhazGtW9rAgPq
 dUVCgAmbdnKy5B3xIS3pIfBTiHWsiu5yU5CCCdF4+CKQCjcIGDeZ1dpFpK7WKDfygrcZ5MhMNkD
 iVR3lsjCLfsGvOdYutNxm84p8oXpnnJOq3BzQqgjHb42ROtC2nU+fAVyB3g20YitqPBenfPk6w1
 8GOurq+SxHi1bAc/EoLFlWCxJGVCwUKa320XQJ7HYQ/rekqMREo2hXydDPxP8sRNqRNRmXKJZtK
 q/Kr37KOAKg5MtkyzuA3Lwn+pnCRWBCDX3+c3YAZdVowehYAm/yVvXXAzC0+15nn4d4OSym+pJ4
 J4qoty7YWf0WE9/iSXcnKHia/lPHjMwkRi6gEFDlDlli+2rkZFiRS/IZY7dVKMPUpINw4B4nwY7
 5JBS6lmIGqjBFD9qHtg==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699ea2c1 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=lIVsHN_WdLZ9tVWbX6YA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-GUID: us7958mpwBTFyphb-F6hXbY1SA2u7T41
X-Proofpoint-ORIG-GUID: us7958mpwBTFyphb-F6hXbY1SA2u7T41
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250070
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
	TAGGED_FROM(0.00)[bounces-268163-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 568A0193519
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


