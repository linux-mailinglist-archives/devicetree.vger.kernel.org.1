Return-Path: <devicetree+bounces-268960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIY8NUmIoGlvkgQAu9opvQ
	(envelope-from <devicetree+bounces-268960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:52:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 456211ACED0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 566363235263
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41DC842B729;
	Thu, 26 Feb 2026 17:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuUcFi9r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MiL8io+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125BB35FF50
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 17:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772125212; cv=none; b=CRyKh6ZHR/Io1GVcFgWG+df9MwOphS7fLHKJMVTb3+QUihB09pUF+1OekIS9MhCQJ8qB0GPfYwSBYLVfqBjwTRonzy836bd6ltkTEO9cWtR4komKKK+Mlju0PZQwKlkBtcDBM4Miy8U2U8oebJPAeIM+YRxyvxDAZf7pseFGAok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772125212; c=relaxed/simple;
	bh=gPVQ8S1LAyFSJ2kIEZxgLIWkdzkbKyz5I/jS24nk1TU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q/mLvzd5CYsupj5DFwN53pOK1T0I6vSLmAja2LZZs+KwjiKeS5p4k3sWAVKTsjKewIXrHmUwiOa49tY3cwKvd5tsVrvmO5sguAdSKM7LdFC962Rfc1BayFbFzKmC0Y5CHWYZ3AZ2x4voYgaTyAAScpDbehltpf06cLTTwG5QWyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuUcFi9r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MiL8io+p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QGiIYs1203397
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 17:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCoKANdRyCPMwnZPciJiARX0yilobsSsn7wAmuY1b0Q=; b=KuUcFi9r/GN8uxvV
	DRu0kzC2umOWlvBmVSNckC72D37WqcmC4dgwNAIJHWKWUGovBZSqv8RIc9HN2nb3
	dYcVNHLUJJ9VHBPQwLFFQHGmL0s1b/p/1DLq/JwvIFodA0zlP9Z1RPw1R3ruL7Km
	yTTmZMfj11QZ4ZXcr1tUo7TvXd2dXpFyFFoT3S22BnagVMnXRPnUs5BayPLCxffn
	vR7pd+Chmz75s69LhNw1APMqVwtTy2GwQWdfMMxBbcAHNapaYGxRdp6Ife28iPvz
	Wx64/uwjqtz2xYB+MIN4F10dt9UxQcnlNeBVS1+JTWi2onxj0TbMeu7GvwceU/xN
	y4wYxg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj8bdbcr3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 17:00:10 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-827185c410dso3634244b3a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772125209; x=1772730009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zCoKANdRyCPMwnZPciJiARX0yilobsSsn7wAmuY1b0Q=;
        b=MiL8io+p+VpIRkG/bN9CF3dJr4daaaHUJ7dZIQEF6fo8Ka2mRvbD2V5iPeWx/zvWVj
         SESzEOf1O0kC6mqL7VrmI7yE+Ft5m3eHKf1rj3BeHcv0eIF1LgX8bFyawyEkzS7kEOcI
         Ux4ZGXA05lCnbpDldDqCwX8ZPyludu/dSXP8PFI+CZTC70iJXS4U/COWhDKDa6xRkVma
         AL7Nra3St2pGialA8Va5Cq1JVPYk467aBYjcZObBGvIRVQMI/BZXka43rPb4NPbFMZ3v
         ngpqINKVid4YvH6V5oqcoJb1ey+NbrGcCXDyZioaZfNkkwnLgM8Q0lkke6b7EXtzKrCx
         VBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772125209; x=1772730009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zCoKANdRyCPMwnZPciJiARX0yilobsSsn7wAmuY1b0Q=;
        b=a2FZmi6P3pR1xfAHv//1CSvK5tjEhMTC1h+kgsZHgfg+PeVL0053SAqQ9mpmpN3IEv
         hZaHR+6Cdx6yz0FBA7/TIc4T9IdnGsJfDzLUdF628KBvhXx9ARQya0KQ5oJg5Fk9UHp5
         lAhgP3H3Z4pnC0nPt+LW10gt5vvoKag4CDwIqRuKzIyRVftkOxy9jU4vDQfsd/s6KQuZ
         GpbisppZwLWsqSOjFItl3KX7sesa7+fOONQRYOISrZyD++oVh5gsPgrzF4gFEwgtHjAg
         6OBLEbnwNpunErpTL7TCm7aHwdHKPH2NcLOyegYCK3+4WZkHJ3I3tunWJQ0tSw7UXeY0
         N8bg==
X-Forwarded-Encrypted: i=1; AJvYcCVbEKAcoGUXChTtkRqzZ0Mj1MgGzeolnSCK+mor1EJFiPXbzGzCToJoiw72tOq5mwu/B25COvsd73H7@vger.kernel.org
X-Gm-Message-State: AOJu0YzSV9s1l9guImgU3oy8lBnZ6UsA/ZvTCQBiSeNiSasHk3cofVuo
	NBA8Sin/eQ8SAHi4VDep7XxVVl+0r6WhFw0kGOvtilyDmApO4sb14grs2DGFkEKoS2HgKxMYqEW
	q6p6Dr6SzUKwAlm2hXE01d6Rm/1OYPgYdt35lpLr04QBLEywz2K+Lsdcl/WnPzjje
X-Gm-Gg: ATEYQzwWLOnM00DgAbvLwFVZsDgCsPvZns9aGxJBkrLkguxX35RCDlfwS4jZAVV5kmA
	0BQ67AJLLU0aU/VA8N9wWBwvTOaVMOURCkbt2HZupPYnhF9Kru1riOG/ncNvXjg/wFgcuSNiYft
	5eAvwumeP81Q8VVQp2DOPTEWVOUo/Om9XUzNZATIZITrClHxpWRMRq1SE7UOgnW4LnwvtW2B5zO
	cA8fuqL2fXsX6UXbWxdbomuKGXyu9TOLZ/Kd10p6rtt41HC8+PZSF9sUfelVvNfRbhrEYlVU2nV
	lOb4xCbWOKjCU3wkcRnlfWCdwug45trz3wjdqdxU692GP3kijfKHq7DZhCh0qAJ0pQ5zOBa+c5m
	pB9x5i30Xze9m99SiB6k3JYXsPk7naBjBk0Bf+rrfepRqRiYzTOSomP5omkk7BmABBYsxAD02pE
	JHOLb9DtE+3vWiCSlWV8dztk20Ospz+ubw1+6cbdLI8wWi8Emwp6sTz10i
X-Received: by 2002:a05:6a00:b483:b0:81f:3f03:6846 with SMTP id d2e1a72fcca58-826daa1ff11mr18495272b3a.47.1772125209237;
        Thu, 26 Feb 2026 09:00:09 -0800 (PST)
X-Received: by 2002:a05:6a00:b483:b0:81f:3f03:6846 with SMTP id d2e1a72fcca58-826daa1ff11mr18495210b3a.47.1772125208339;
        Thu, 26 Feb 2026 09:00:08 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01054dsm3626286b3a.43.2026.02.26.09.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 09:00:07 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 22:29:40 +0530
Subject: [PATCH v8 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-wdt_reset_reason-v8-5-011c3a8cb6ff@oss.qualcomm.com>
References: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
In-Reply-To: <20260226-wdt_reset_reason-v8-0-011c3a8cb6ff@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772125179; l=1551;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=gPVQ8S1LAyFSJ2kIEZxgLIWkdzkbKyz5I/jS24nk1TU=;
 b=eWY5KJ7an0ubp5dCxCHLe6F5zfmqxb4WfQfUBtCXzr5KlQx/DEiqlhVZnQ98X8rvB/XfDN2qY
 o55zoOFdVh8AfsmzZOYtwzxYl/BCiEcQHYjiGZqy0igmvp+6wvazrO6
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=FKQWBuos c=1 sm=1 tr=0 ts=69a07c1a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=WbeaI0-OC7IQdSlKmUMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: SbhgTs3gFnw-polUPVAaVynuQmDNKOcv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDE1MyBTYWx0ZWRfX+xrzgAI0ux7F
 Z5r4WjEhjjaQJl16UgDjZOblagzUdcmyq8SWLAltnIBy2tmrejzdDNbsQq4E+Wp4v6QK2yK1e5+
 hm5P46DyvLqGa3NyV5E8NpisiIvRFM/r96nm/j3A4YBj8BgxuMMRgk873cBZjknXhyEPptL25l5
 AMKVxIA6n37Lso9FZpZaxX5V9AS6/0Db7NSZ8VfvBXlUjCodzcsrUeaUqXshuEMehdzZtNlUIhH
 OanC52QOt9OAz28bTEf4CYvOPRCevDexPnJmo98f9kBLJkWIIj+u9c86R1rn6Ckyja6W7XceHn4
 rUgdc75yncFNrwJgnkHUQQUjfuNqUL8OCPGd9mflUc50ZOcRmzSPawqXg0bhLaUxFvpRI5fHk/8
 4mf+xulHT+Lvz488j+ENvAw+ddacU80jpos5wchaJ14es/BYL37oAvMdyndXCqvEAcl4lebAL5a
 tnk7wXiFLO9LhHXi2cQ==
X-Proofpoint-ORIG-GUID: SbhgTs3gFnw-polUPVAaVynuQmDNKOcv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260153
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268960-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,f410000:email,0.1.21.88:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,7b0:email,0.131.57.192:email,8a00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 456211ACED0
X-Rspamd-Action: no action

Add the "sram" property to the watchdog device node to enable
retrieval of the system restart reason from IMEM, populated by XBL.
Parse this information in the watchdog driver and update the bootstatus
sysFS if the restart was triggered by a watchdog timeout.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
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


