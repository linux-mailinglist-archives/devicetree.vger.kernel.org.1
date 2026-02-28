Return-Path: <devicetree+bounces-269551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMu6FEXgomkV7gQAu9opvQ
	(envelope-from <devicetree+bounces-269551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:32:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F831C2FC6
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2762E313057E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB9043D512;
	Sat, 28 Feb 2026 12:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MW6tp5Qi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ASA8bB/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F3643D4FE
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772281774; cv=none; b=MZc3erE6HACTE/cYrRxc7Hvndg+qMgvC+JKFP5ozOIVS8Fw0eFqMXzbyLNBz22bwAwvPi2oWzTbZ2Ttu0FxbTzBDgBJxNgk1VdVfEMlWP1ed81Ccg9xbvGOnP6ujyI7vIe2E/eUY/9EjbXxAaPZtf8LwAz7qWHDL2oDuMc5KW3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772281774; c=relaxed/simple;
	bh=e5pr2oPvUAYu8JAFmPhcApNUXmTIdLegEO08XCkRGxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y2nCWTsViikuMV8iQXXLnosIgMi7tulpBpnXQeAaQx9vQa4vHSFPhibiavs/DAQMYvklSC3+ACm9iai9CiL+/VcO6zYFPkqMGoHyYpaxgOniBvMy+HwffXR5DW7RM+ac78gPQ89mhikeametLZT1BJUDG+Jjm2z/fpw+0bP5akg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MW6tp5Qi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ASA8bB/5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90AxV2001907
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F+UPxj+tjssc3U7W8al5a2umE/kNGiM4NRBgcK1RRgk=; b=MW6tp5QiI6GMJSGI
	jOg9Nel3rCdZLAWF+VqPSdLpzJaZBAskO9YPZdfT5h5sLkE3f1XKsHY96InIeiFu
	Cmc6d2DdF41oQmuAMSgqwcBJ/qdCWZ5DEWqLPA6ZEi90uCcI5lB/XEnxb387qGvW
	NUodzi47PWstHDZqUvVQuZb4AA/7fTV5UVZkF4ecAINBldK6cdNN3rNu7p2zPrzK
	QzWFNNDNtOdf1tPxkl772hrBJDnXBndduB5mG/1AkPYpyW16GtaKOzHFdAujuDXJ
	vZBPnieOt71zsPtIr+v/jql3Uz7EvULhD0yPS8Na/H/A/ZbKwu+ArRSVM/ezXT7y
	LgZ0nA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg70suy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824bbce0a44so13735686b3a.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 04:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772281772; x=1772886572; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+UPxj+tjssc3U7W8al5a2umE/kNGiM4NRBgcK1RRgk=;
        b=ASA8bB/5USASPp4bxuTb4HFZryojNPBb+eqQmWsyMcetRiz8YiY8TV9NAumBu0R5kx
         Urwo+Ud9X9btTaIaKxO3LRZUf08uEqIBUkAZQr3OxELuRJW7H95FF+5w+mMHb8rU6OXy
         wFrr4m4dHtRAaM4Cu4+rHUfOQlqcQ2w++UeSRCiqRA6QouCpd7tKzrn//KCQngKhNaMt
         d9B82M7ldGfFgMeZDKX6OGSMhS2epNdnN2ZJ8PuK3CRgr8PSF4h0qOsEubthhLv0nZ68
         vEeUZluwrYKwnq+XysbFU8xjJw6gLGRhD6vTR8d0BBBEQuiBBepZqWiCmkVTABWVzhZa
         qCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772281772; x=1772886572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F+UPxj+tjssc3U7W8al5a2umE/kNGiM4NRBgcK1RRgk=;
        b=H4pbDlD6qmYtH9BKsdxprVOTRbbrRJNwSRQmQ7MCV/G8hhJZ22uPDDzLHeOJ32oH5j
         BVs7QxpqpFcSAb6bU+5cyVL815ZtajMua4VLO49uE9ZOT/Bp12yAkbMi7oFu59eG6edr
         93yqRKcDSWvZzCfPeGyB1Ur6gorufCMRXHfNtPxC+Yjs9CWdG7+4JZouuPXmjwEVI1IN
         3iXXyGyJbtPLDKUFdyGb5soKYM+1LRGwIte0eZ5np8w35+R12WQH++1YXIHgVTkapICP
         JB+7BloW/YwZ4DxjDeM6gKJZaPWAjdAacC7uVGLD2bMZ7eJPKr2YoRNiwua4XWfKVudF
         gRDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBjKYIOXoQRC/gjJDKo590ii3ZyY+bXRw2ufhhYlFk3TcwRnFV/d8thUBByZvIXEMrLRz96g6bVmiB@vger.kernel.org
X-Gm-Message-State: AOJu0YxffGhGjy2+xk5k/AKADQ9FFC0TtZxX48BztlHme8Yr153pWvYV
	mHc0SiC68rTBlHSijB9FEVn8X95qXyMWHsfff6KN84JrPr66eTQF+dgxcvhFzrA9VUuGj3+ggPj
	wxejsg0DoW0XQhcscEpSdKNIz9NC5vO7cYxsr6WCX8CRHVFClOsuTnnmQIgcvlclG
X-Gm-Gg: ATEYQzxG7U4Zx1tBAzHlseEAqYgWmZ/wiEbuFNccmGp6kKffxQmXQIIYws8S8U9tm92
	JbWhSOV6qibpDK0EAlKaBRD4X8ZH1pPbmT0LLyhKBIKXIIC1k0cxZ6Y4y/Gqt9AfDsFvSnj0qkP
	Cvi87pzRXB9Z9ir/V24KTpWEf4Ok9bhtyOE9uN0YVTaOKesbllpZdJJk2ElM1D0xjMxWRSKXomP
	G7gdy/1iXkN21y8PtJ4LcYGX2foz5lv8bGkEiYxsz3wEyT5haQW7DEclluIWivOkoC0Ebu/4vZk
	Ndl1z7rZ+L10Udzj6/ApU2m2OeY1oQeyMr8bme6UqADn05CpUw+spQNPKFYZjx38pexLY5kYlFb
	Nmlzd7MVaDlGmsxtMg4kOi8aQFqUvWuKflOzd6QMloD1P0NYfQCeImZM9hlqesvVJMzkaahv1FG
	9s4vNPRtxzwp59CG03EgAHBSUon/Gxz4NdNQlj+UWsWFJ1YEAG50X6/9L8
X-Received: by 2002:a05:6a00:6b93:20b0:81f:3f88:89ee with SMTP id d2e1a72fcca58-8274d9408dcmr4190836b3a.12.1772281771688;
        Sat, 28 Feb 2026 04:29:31 -0800 (PST)
X-Received: by 2002:a05:6a00:6b93:20b0:81f:3f88:89ee with SMTP id d2e1a72fcca58-8274d9408dcmr4190820b3a.12.1772281771173;
        Sat, 28 Feb 2026 04:29:31 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d4e10csm8130048b3a.1.2026.02.28.04.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 04:29:30 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 17:59:04 +0530
Subject: [PATCH v9 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-wdt_reset_reason-v9-5-f96d7a4825d3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772281742; l=1582;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=e5pr2oPvUAYu8JAFmPhcApNUXmTIdLegEO08XCkRGxQ=;
 b=FZUZhRg3nwOF1qOCuA9SY+dY+pUmQ+nibWquq1sB/5IJnlrJPyKTC1CawvvK+Nt5lHZ7wsFpf
 4wlQIJdoR0FDfkIPQEEobeUk81o4uQiE5LslXaDBM7vz12wmhPl4FGp
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: 1bc4v0lL3NzTDXGboN22SZalkm-XCLCq
X-Proofpoint-GUID: 1bc4v0lL3NzTDXGboN22SZalkm-XCLCq
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a2dfac cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=WbeaI0-OC7IQdSlKmUMA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDExNiBTYWx0ZWRfX8zzLEZIhO7so
 KJWIUNtezC/ETX/p3sOxzEtUplVziC3PG25mL/LBABL0RX7ahdDDjavyLdx97z1g/DR0aAIRRO+
 f/SaLgKzSgsaD2M5IsNA+jX0iaoYdCu31ha0nVLjKntfsAWJSP0O57YKidoT+z/oPIeQlU7EXaE
 xeGzHqI/VCOkC8V0Ctp2xNKAleP/+T/v7cDnnbkIAFVaQQFlQuGqTvlLVY0dM+1UfRHzHxxXNPG
 9eZR4ycsopanUa/OePxBfzTiFfvB5mxNAY3d0c2x1zINbanQbkRFbI+63kd9SRyDwz+SRn+kS3y
 cbgA2rEO1Vlk5EZUtYteeh/b8pFr0N1Dp3KqLAUQavLLxM0tddN/fgDJPax7uUmCZeYJf8Hxt5B
 hhNpnpstQ3GfCMfYVjO88VgCEoLwdXLGADEfxei8RQZIk6cKItAZ7baVkGD9l4Iso6XgOGyAAc7
 VQVje0T4p1Hfcl9tudQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269551-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A6F831C2FC6
X-Rspamd-Action: no action

Add the "sram" property to the watchdog device node to enable
retrieval of the system restart reason from IMEM, populated by XBL.
Parse this information in the watchdog driver and update the bootstatus
sysFS if the restart was triggered by a watchdog timeout.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v9:
	- no changes
Changes in v8:
	- Picked up the R-b tag
Changes in v7:
	- Picked up the R-b tag
Changes in v6:
	- Update the 'sram' property to point to the SRAM region
Changes in v5:
	- Rename the property 'qcom,imem' to 'sram'
Changes in v4:
	- New patch
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 491bc3b00494c47c5524df069e9d65bb4654e863..86de974949f48269170a2bfbeb64214d37fbe488 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -591,6 +591,7 @@ watchdog@f410000 {
 			reg = <0 0x0f410000 0 0x1000>;
 			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&sleep_clk>;
+			sram = <&restart_reason>;
 		};
 
 		qusb_phy_1: phy@71000 {
@@ -706,6 +707,10 @@ sram@8600000 {
 
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			restart_reason: restartreason-sram@7b0 {
+				reg = <0x7b0 0x4>;
+			};
 		};
 
 		usb3: usb3@8a00000 {

-- 
2.34.1


