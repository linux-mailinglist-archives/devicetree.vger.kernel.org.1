Return-Path: <devicetree+bounces-269548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOTEENPfomkV7gQAu9opvQ
	(envelope-from <devicetree+bounces-269548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:30:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D44D51C2F7D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58DDD30961EB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D967343636E;
	Sat, 28 Feb 2026 12:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NGKbI7iJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IVUXcLu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEFE43D4E5
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772281760; cv=none; b=ZVaZW+tLtYhecOSEqRjM316mrqKpKTBtFbH/BB1Bb7rj4pf4Z4UDXC8A0nRNTVb8Xy3sjqo40fB324lRGxRzxAXZly+MuSiy9Kc9nWDB8UFEDMwIbsDbXCWuHgvnyOOcHki3f97zCPmMepWHVanwJz3T78C7iEKCDgnF5WHWU9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772281760; c=relaxed/simple;
	bh=HaJPjomjAe6sI/JAV7r9SaqmhP69iNlrmBBhQ3l+Fk4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=omXqRKAYbnfHvK4OBendR+xXxa/AuNEcenH+6V9j6htRRcyK0MT3WpWznnbmHjGhYpn5iN0GY9dTEU8QW0A1n26jVtoiWbu3E1ETIcSUPOjxtjavjGTW7dds0N1DUFkFKqHFZuYM4d1hWir3EbTqGuIhoyitL7DPLMvHHVto3nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NGKbI7iJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IVUXcLu/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S9053D3319403
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iUiZWaSwaY4nsm3N/23RFTEkrK6hTPxNPS6evRR3BCw=; b=NGKbI7iJiBRPdkh2
	VSMe/AgwjWEx0CQmeuDG7lfaMxfN3lvIoyI6QyxJlWqvYyz57vBvj807iiVplWYn
	rCEBcC0oI8WgAsNFUPYxc5P5KeD7dR7lRpd0cc4QjTr9yBQv/V2BevOqmpfaEGJ0
	Gj3fOPTDGZjvObj39pLZCNU0yF6lzQqP0PuQTjXfLWuQYC/HN+t/KJg5NJSfsCuv
	FSsjaBiEibJSRUu7vf0O6R+2XifHd1EPYTDJqENPFsI+94Ee8B+VKjiETHvgBWmq
	t5d4qaSc8N7wCBl8ieg9R36+z6JylnBYNQVIxNeAVwUsvm+VZXX691ETa8+4Y2BQ
	faU1Dw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfyrsxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:18 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c70f19f0f37so1666728a12.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 04:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772281757; x=1772886557; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iUiZWaSwaY4nsm3N/23RFTEkrK6hTPxNPS6evRR3BCw=;
        b=IVUXcLu/JLlC6LljVJu/25At+Cpt95HFJUqtEA4aKJh41O7HAIn9CQx8206RnSuYn6
         v16RShDCfOlMq3BABIFps3YTj541dkZUgcPt79oe0NinhwoO3XNUvTOJ3izMHUXOCazI
         Kelg6aY+g/ur0/7OZCX+vyKiXqFYQX2KlOa9SLTf22PcU7nFQ+bkqKz3CIUnHu9AnIWP
         HqQM9Lo0Nv/YW9Eo8UbHfLMH4x4Lujn3/8DgeWCPNnoiXopA6MgtU8VuhbtjpdblSoXA
         4Mfjbz4kyQ3ZnKY6sMWHXE61DCbRY8+4M+dKrx06d0VtmdA7sC1DpRCB0vws7T83xr4k
         N2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772281757; x=1772886557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iUiZWaSwaY4nsm3N/23RFTEkrK6hTPxNPS6evRR3BCw=;
        b=tUimhkWNm6HkoYVqGRdI8LazeuwRKfLXD4bQoYx2EuHPGMDqIUqZ39dxO40TOzFDOb
         VOYEgPzv21hcsx5p9aptzBv1EmL7AIiUMLr9k2LjzFB1uTGGoi/ePT0+wTCuChduRDKt
         FWQZrKJBpN91IMHK01k0XOG5ko7NbIJhJYpX8Ben3xG1sg4OzjzuB5AacVi6wd/AOifC
         8t9uLkMGTm9Yaf6smLH6RlhuTeMjuf87zkkTrU9bS2fTGWDpjk6HTEVRN1d8VeydOwH7
         Ur6B5LFu7CSiyxrbgtPXY3xU0VkaBLiP383mYvWVK0nw/3jYXV/7o2EoXOv/os2fJLa/
         CINA==
X-Forwarded-Encrypted: i=1; AJvYcCWJxED8yQPwKr/nBdxDie9GOZRSDmNkNwIzsTkqNYw8VQ4NzY1Xh+1FnnS58e8qWOghToKHsjxs82Pl@vger.kernel.org
X-Gm-Message-State: AOJu0YwWIlwqRE2rPDnqoaLlHR8XQJE9ptUmGO0IFcvfzJyAGWHSqdgr
	INeh9NiCA9S0TNzEaKBMctQfNnIAh0UTz4IlO08IFUXY9rDsZ6ao8Ua+lx2Els6RGSgVN/k2BGg
	fNxlBAb71cXuUOmLKkbhDL61FyXPquqNQF9MLqHOTdMNinZNNmypanNdY+3wEESkC
X-Gm-Gg: ATEYQzxz0+uKu2ZTPhgp6RAYPDkYueEH1qN1da8zfqJjOUcsFSyXlkrd2InVzzBbS6k
	e5bjxNJcg+z5uQSuMlFQir4xAxVfxrCGYO1pFUL282LVIndR6iuEjWXKQEcRHYx+M1oX5siGIJA
	ZfQZa/GDH7LamFDFblAyUODLPy7U71l/SqmyYtG8Q7BYn0364DZ3m7jd2HQ9Q9FkiTwHGmbkItm
	nxDq49hQBt4DlT9bmwmQgm+hRe9MZR9vle52zafPDkYoEvYbe0FntSQwj6U7OAKmDvp//+V5vFn
	FKC+w0zA4jP/b3AbrOruGDRvc75NRJMQKjytgdb53t4wYSElPvKywmoeXhW6tVQzetWPrSbkFwU
	S+TcOKuSGSRC8QRd2Y8HvPz+ELKPzc1wvuexjEY5EddBCgPUbH5FBxNUAxLrMcGV2LXo59uUBXs
	0U/IQEaq5EhUQCANrHHMs0MatcLWTTVSTMCMrqGsX2R6fbEArc7tubH8Zc
X-Received: by 2002:a05:6a00:1da3:b0:81e:8e66:38dd with SMTP id d2e1a72fcca58-8274dbf31famr4325950b3a.33.1772281757581;
        Sat, 28 Feb 2026 04:29:17 -0800 (PST)
X-Received: by 2002:a05:6a00:1da3:b0:81e:8e66:38dd with SMTP id d2e1a72fcca58-8274dbf31famr4325932b3a.33.1772281757008;
        Sat, 28 Feb 2026 04:29:17 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d4e10csm8130048b3a.1.2026.02.28.04.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 04:29:16 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 17:59:01 +0530
Subject: [PATCH v9 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-wdt_reset_reason-v9-2-f96d7a4825d3@oss.qualcomm.com>
References: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
In-Reply-To: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772281742; l=1810;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=HaJPjomjAe6sI/JAV7r9SaqmhP69iNlrmBBhQ3l+Fk4=;
 b=oR/15d1m6js1GgjODwrAEdwC9IcbSQLj4HBqmQ8ZzTcqPQwKEGuJsjtLNpowUoeLS+gMApCwH
 Kev4fSGfFM0DfSd6OEfm+yM7NFwHe6dElYLvMkoFSP2NID7Qu1OUAxv
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDExNSBTYWx0ZWRfX+/JdQfRNKxwH
 OgiVNd12mjNfVpdSd7d2xe6rko0FqQ+2sKivksYzNHWAo3SXACxmWtKQGq/3WxNpEkD47qgIaFr
 OkUgylMJNds9CYVRB1BypehsYL5Pd7z2t9phVR7w2lmk2ZiR9WCm1Bv+pq84iQ4qzW8RT2gHX+b
 9YCzDndXgvac4LrFVfR0XLyKYB7fNT7m/r24gp3/a61E/s+QLv7PrIEfdwuk/w3q20W1DeqAzOe
 TWaQzZQS8ApVeOh4cH/PCBjuDzIAdDFQZEo2hDuANPs8Wz4wan99+4wN4nWuPfkyAVtVfyJdK3P
 qJ2M4l3ifpQAxlXjSCUusARdKVb0+v9H60QP3LnHv49IYoymnnRc+BYZOXQx9B5fGm0EPfcawJS
 98OzC6+bh2YC9QkXJKmBfY86YQU9b/1wTS0jUmdMa1/L33VQ8jHYklS9JMP7okabqAMf2+mOFFx
 g2BSRmd2iSfefUDC8uA==
X-Authority-Analysis: v=2.4 cv=avS/yCZV c=1 sm=1 tr=0 ts=69a2df9e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=QDJorwyCwNfNgOuVDpwA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: dJIDctLAvkokcAZTpM6pBTAXcrHZomHL
X-Proofpoint-ORIG-GUID: dJIDctLAvkokcAZTpM6pBTAXcrHZomHL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280115
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269548-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D44D51C2F7D
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 112KB but only initial 4KB is
accessible by all masters in the SoC.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v9:
	- No changes
Changes in v8:
	- Picked up the R-b tag
Changes in v7:
	- added the flag 'no-memory-wc'
	- Picked up the R-b tag
Changes in v6:
	- move to mmio-sram and drop the Konrad's R-b tag
Changes in v5:
	- No changes
Changes in v4:
	- No changes
Changes in v3:
	- Picked up the R-b tag
Changes in v2:
	- Describe the entire IMEM region in the node
	- Explicitly call out that initial 4K only accessible by all
	  masters in the commit message
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index eb393f3fd728f0b2fc8cd93c849f8c170d76e312..491bc3b00494c47c5524df069e9d65bb4654e863 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -697,6 +697,17 @@ ssphy_0: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5424-imem", "mmio-sram";
+			reg = <0 0x08600000 0 0x1c000>;
+			ranges = <0 0 0x08600000 0x1c000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb3@8a00000 {
 			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
 			reg = <0 0x08af8800 0 0x400>;

-- 
2.34.1


