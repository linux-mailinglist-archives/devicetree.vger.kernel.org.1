Return-Path: <devicetree+bounces-272648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SC3zCkMIrmkN/AEAu9opvQ
	(envelope-from <devicetree+bounces-272648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1025232BA5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D926301AA91
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC66635C19B;
	Sun,  8 Mar 2026 23:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FaptaNFa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MybGw0mH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E3B35BDCE
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013039; cv=none; b=nfEl2LReto3SZzEYl6Y7W1s9fOZiaE+tnDFR4VSi5OkMB2HSosF+N4oMqa5AmU1xr+uo29P9WzGhq4NQWscKa1iDwt2M20SrxN0SCvoaQBcHaX1sgtCY/ZWTPmKskO9WNmfUvWpKAeAwpTeKyw8oxEn20f0+kEtlr2xjAc1zGNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013039; c=relaxed/simple;
	bh=M9K3UIkkj6b1jrYDTlji4S8p0UbCQhwBz60aeUglt/w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j3lxIILaqTIJHdZyJICtInG5nXOu6Sbw2ZnGCnS+jOR3KpwvmRx71SLEYDa+/NRBYVAaPHPaTjdZWEGWIcIqKPULvWNjAJ77XduNx0UaruUkvhNQCtkEhUZzZ96Yb+0/4dN7VNhxydAL+uhN9AQTAz7hlc5mKoo3iEbObokmxDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FaptaNFa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MybGw0mH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628MxmTh2556856
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 23:37:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=C14Nx1IUNye
	f2MrP0doHKCmiNVz/XfkIxGtXZvYTpdc=; b=FaptaNFaC+y4hdb9KQIHcNDAq5X
	2fRbGVDKk5y87z5VYCZ2Fu3vL3zrUtKNUXEc2a/qsxl///LnAmE3IwfBEjmUtUTW
	SiF84ZRubfdvcNJGweTCBGn60NC7K8IpghMws6J8M5XggrNa2skdcjZtOmmPx81h
	GKsgqfEppSea4xaP9LUyUDwJ9c0em+cbmQrh1DnVPinT+XzIw2/h5vDjrxIIigKK
	Q/2ZxQt19euD1vgcbDfb5FrS1uTih906Asv9gFCIsE/XtSnSKAkDNJK/cbCPIX8a
	PzXmIrJYZqUog3cvy1wwk4pnH1QZDSV8+uDigpO3m2F0vp28VJgIILMAcOg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbbg3b17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:37:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae3f446ccfso76871445ad.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 16:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773013034; x=1773617834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C14Nx1IUNyef2MrP0doHKCmiNVz/XfkIxGtXZvYTpdc=;
        b=MybGw0mHcXcHHJ4maxOhnWeUGSncWaBKaIeO8P8PFVdmYW8ERdpP6s491fgWFbI/06
         +Izg+/IFpaX3njWyA1Ik8apmCFVCtk6BO7yGs3vMmRN2snoKh2N/mtGf/c/00hu35sQZ
         yVw7UYnLfbIs8vy3v3U9ClwDY5+xMNj6VWuHJW200oxCyptxYHzesuPTMytt/dmaShFM
         RIze4379RvmB7GIqR9CkYNzJEJUWIS0eDZE8+Zqj3MbOcHsx/vfeh1yoRZ3jVVJ/+6Zl
         Gd0DwnyO5tbWFTrB1VDYPgcdpFpb/mFCj18dRW3A8Z+G+8zR+zkKNG+b9nQGRGaYBf6K
         dpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773013034; x=1773617834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C14Nx1IUNyef2MrP0doHKCmiNVz/XfkIxGtXZvYTpdc=;
        b=v4Rqwi3srAf8JBrxbUBgTISJ12LKrNxCdy64Tb5iO5O7fuwl4jkUm+O2HKck19q33R
         WSW4BNY9KFHLdM9usbbN9tZ684u2np+yMy7v6uAyTKqTgmY0L7AT8b17CSfsn0Jv3pUo
         MyG5VxxixPyuHnGp2ovwlU8CT1IjYrb9DX0bkHouk2JpxNvkdI748uiaRkr8KZ+ig8OL
         62vPdx0SBnnrM5qOY2N89wV5nt3N0hzeLkI79ZlgSKyTgyNZKq1iTAyafYX8GXgb9Eds
         aB7m6KStgyP+br5xVZfOlyopm1DYRIpqZnig2CXfq7Gens18Z48rgT9WKQeV20p89uxy
         m/Tw==
X-Forwarded-Encrypted: i=1; AJvYcCWazYi1hQToUmTbe+m4T0J5yR39FuJiSqhL5MqfejqcklLc4gF35pYn0SMMcHlEiyVsQul9ZnvnKEdR@vger.kernel.org
X-Gm-Message-State: AOJu0YzOQhYA2Si9GPX7fKB+EA60VbHQhSo4K9DsyMsUi6pM9gNvdYRz
	y7PZaqUWdW7A9PLnKe4FIjWmTtrKMCGwBctwnRdJFopcwy9IEY76eIA0SGRzoMjIMHWg+bYTni4
	S0S4lKpn6lQexu+3jxGXu3Be+MTBVJ/EiYrY+BuxBukKzpeyt+HRjBNbJ7+aaH46X
X-Gm-Gg: ATEYQzzeAAjyz2ULF2F36PwsK0TX2gj0omQRS1Yq5hETSfBr0Rl+PMKcs4hn2uT75GT
	ZU4AGLditCKW3jFa/8Cgv4Su9zVWGa2ZpYvbrKkAexRfDdXo4OPQCyaLc5Ine0UuMbCS707Pxs8
	o4YKNj/nR1o2X0rpSm+cYk3Fk3TOhzi3J016PCBrPaS1TQ2bitLgRYA7UPmnmzymOvyI9xFow1f
	i6EN1nGLun7bA0r1TVR3df9g0I5O0mBCBnQzFmBiW1idEOd7JIwoxl+LlR1pVYBlZxL+d+Jl5ZN
	5fpI/+cAVSyyC552tNhqo0CktBrhnkDIBDqgv0kPE8A1I7a75lKwisK//JG1neaOly8H3+U3P5/
	fwfn1243JLqDCPJ9iEIyr7LLgwTbRsjBcxlx8Qx8dGapQEn5Rvi7xT7ToW63REPcEN3qDLUuyVG
	UARqbq3ROpivay3+tSqiHrtbYpExgR5YmWCT6Y
X-Received: by 2002:a17:902:e80b:b0:2ae:54b2:27d1 with SMTP id d9443c01a7336-2ae82467157mr96392805ad.44.1773013034350;
        Sun, 08 Mar 2026 16:37:14 -0700 (PDT)
X-Received: by 2002:a17:902:e80b:b0:2ae:54b2:27d1 with SMTP id d9443c01a7336-2ae82467157mr96392645ad.44.1773013033896;
        Sun, 08 Mar 2026 16:37:13 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9ad26sm114274845ad.28.2026.03.08.16.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 16:37:13 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: [PATCH V3 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller node
Date: Mon,  9 Mar 2026 05:06:45 +0530
Message-Id: <20260308233646.2318676-5-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4I6kV5UiMUMo10gSkUyDlyHSrS2Qv6rN
X-Proofpoint-ORIG-GUID: 4I6kV5UiMUMo10gSkUyDlyHSrS2Qv6rN
X-Authority-Analysis: v=2.4 cv=SumdKfO0 c=1 sm=1 tr=0 ts=69ae082b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=gaXMZf0GDK_To7W6ZIUA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDIxOCBTYWx0ZWRfX+lTq8lPTnBxx
 PFSWk7wxe1RYYtrNcisoN0ZZ6pQ7L5h6MtoS/Fh+ktgGRU+xFf/BTmQ57P/pcicOFD5kiffPqim
 j30/K+cWSmdSafOeWkUfwIyIgQQyq5lXgMollA+qxNxUJ+lADu9LKqiIyRWWvFH+NFr5DDe9ELq
 K8TopabZ83qU9K/Y+ewN8kEwJfM6iQcqQ2A7BndchHEeFIVGU5/3d6EgU/VQEzceUJAig6DiL/H
 ajXK5c1mZsmKh0k87N7T7vOgLaAyjvEbPh1x2HW0a0rpNtwqMoA5w/yg8qczcXOfpE4qLfTjy2N
 S1tciMPv+4Kf8q68VtMxtV+WGLORYzucywNqZR8s/4/WwJZqprVFgl0VmAi6H+5SLUMe2so20jy
 Zz15nFT+fZ76ZtRvJA8lFgX77WY2GoalFATQfJW3WvREVABS0w6jyhX4CLOEa6M40UMloSEUWHH
 JXFVjROKdS3To5rBVJQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_07,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080218
X-Rspamd-Queue-Id: A1025232BA5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272648-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.76:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
temperature sensors, access to EC internal state changes and suspend
entry/exit notifications to the EC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index ded96fb43489..29a1aeb98353 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
 
 		#phy-cells = <0>;
 	};
+
+	embedded-controller@76 {
+		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c7 {
@@ -1485,6 +1495,12 @@ &tlmm {
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
 
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";
-- 
2.34.1


