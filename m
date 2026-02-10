Return-Path: <devicetree+bounces-264457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IP84EQVOi2mWTwAAu9opvQ
	(envelope-from <devicetree+bounces-264457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:25:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0AB11C71E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A2003021727
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C40933BBAF;
	Tue, 10 Feb 2026 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PLN+45Bj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MWavbrMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FF926ED48
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770737154; cv=none; b=ddA7BMKLR5ZaK4929fAkKjTHIkI/Vz3hzvhAYuCmYTITR17Z2Bndxuddqrtwa1Ac89Iy7m5plmtJrq5DGQcmIUc4aQUgscm+FWywdPpyIO4OFi7XjbbZCvg8dxATMxlYWb0hNr1u0ybEojhhpGpSgtQzHQhH9zFfnDRPhAqNzyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770737154; c=relaxed/simple;
	bh=5oqutB6Ty/9lCSsQjRkY14fg+3fK29MwJjcz4SrxIZg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=hIePrJjbHy2r+R6ofd8eu9UpD6tjdgi3o7hcfhCkzhzD1vNZXTxr8bkeClLs6JN2In8tthfBdqLXUdhCPNGOf2XuYPH+mkECxq1WWuFr8pODB/62GfFhyS1V5NHQ9N5dTMddZqJGoSKySCEq4XqY0WAKo4CTFwtGghpY49+KCTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PLN+45Bj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MWavbrMM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ACDshC2324514
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4oGs8dZMsmmW2XnSgzuMIV
	bLPFo0WdA0VDXWJkha+w4=; b=PLN+45BjcmOhX6Eo5x1pm0qINV2J6Dm+MkXrsc
	1pg0CJ/hcVtA3IQQ12gCiBuv3K62UvBUGeBwdE+f3k9QgKXVNQtfKFDlXpA9bDHD
	5xvBSiZbzxVgMuGJuwwZJeaHqXYj904QgiKucsxjOprcCSTVMpm3/nZpbxbIcSBJ
	//jn1i7a+Dp6jtYrXnUDH5fxJX5eScNMU8Kzbc95EkqRhjTHN9YGp6UL39b7NRMw
	LJR8aTp2FrIaBJJ1IkBkYMNcCdp5wTnFYSM/lb64kmCxo0y3zFDMNJMg2t5BeQ2r
	21n4xtLCISNaIc9dHHCK5Do21rT7xSB/+v57oL0jK0lbEEPw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c84g2gjt3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:25:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f89b415so251571885a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770737152; x=1771341952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4oGs8dZMsmmW2XnSgzuMIVbLPFo0WdA0VDXWJkha+w4=;
        b=MWavbrMMzg+XEPrywFjeyCJfLIP7BJ1Dvq9lXDiY8bPPNkBQvDoObcr9GF8hdikmJM
         PyQJ4MI3Grt2G5DEJYo/E/fKJDvOoVaHAWc3Ebw7iCyuGwWtyJk+24RmIEE7zkqExQVI
         eIDXFiDc6OwLd2lXLdYybd8eja0XaZ3rYxwLtW4bzEXAbCfXNUloN12vRaWv2SLe96DJ
         TtaX7oI1MX4ozuuN5FHe+2gdqdyRxxWyWWcm7TmDH6PWAyKcM5tG95D26V7wKWUpCia5
         nEXazjuuUXnou2E1rjyDLhDyuADjDbCBROA3kVECsU1ONtjyrANeUWa8aX9q6BX7aArT
         dagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770737152; x=1771341952;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oGs8dZMsmmW2XnSgzuMIVbLPFo0WdA0VDXWJkha+w4=;
        b=ctA6Sww1LrM8f71chwoMoK3fzYp1LAlpQzPPFuOmMB+3R1fw2KlnNyg4tkO5EjbY47
         LdGwg0dvoRwSZmnWfHPB7Uvo8yasBnXB2TWd0A+khJQ6unuNsCq4VgzXVduia7BhdP4h
         2w5aeWpT8ectVwB6D+fbigo2NAVQY0/ql1zCP/eXXnahV/Do5MiQr/7eJbtf6ndVHMnX
         UwycTb/iwwFFCZv1BGi+391Aj2srhreDHhTy0wACKKhhn9NTRMhdLO2y6DHRap6wrIRD
         AonJkwnmLg2SUNqRmUpV6bluks0Dw+0HIPtcyIFhhBYhfwklCf002YAS8INlyAeo/7PH
         N7NA==
X-Forwarded-Encrypted: i=1; AJvYcCXsbKs/1BgKkX7vSpnHQ7JDOuTHM3TcpBFh3iKN0EVI0wA7J6VdmH0JpdynuorzY62ba7RGQS2oTKsT@vger.kernel.org
X-Gm-Message-State: AOJu0YzeiHqanrT5H/PI+WzHoXy7J3xH7m+Ziq1gzcMvA6G+UZ5kICvj
	YXBS2CbZKLDV5HA+KM5+w4moTgDyVDAGcYLQdqOrG6sZ9M6zU9pqM0MC1lVvMzihDhUeGmyqyyc
	ARL9LcRFq5Rh/XKAq+AqnNzgIHtXXZ6XcVkZ85MZEtmnDygMpY8ulTay9xSyMnPEg
X-Gm-Gg: AZuq6aKVg9GzrpSPfhxyZ3ZCl7LqFqu8HRQdyeg92TuT1I/DxKY36BpcvNdcjkDeifc
	x6nAEm8GujHrA7FCbvh3Za68Rl/7Dk6FHY6LHm3rdgCUZb82PKWgyB9ECDT1BQy1hPISK2JsOZL
	x7uDzWdx+jyj9vz8abUxWsPF8DBLhvFB/eyAxpNKrHsM4xbglOHtcA6Npp0Ee/5Fup8YiGEviMe
	hqbylKkpyvhW//2CmkklHmug5iUX1rouYqPmVouRYu4g8NDHwAC2Y09fgQ8YL20Fam/WdNSCNy4
	r1OIokCV003mzSYetZWXY0WvJdXlU2VVmSR8SrWuRCErCq05j8S5zSFoJZshZRAjwyzhT7bueMn
	iMwB2qC8zCIWjCZtqvfSgvkBgHSB2CJdXm0uRBdwrcmWkMLTtN1XGD4BGS61HKvoje70aRacU3J
	bAzDERYetokQ0t
X-Received: by 2002:a05:620a:4441:b0:8c6:ac12:c282 with SMTP id af79cd13be357-8caf278aeb3mr1856163385a.86.1770737151589;
        Tue, 10 Feb 2026 07:25:51 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:8c6:ac12:c282 with SMTP id af79cd13be357-8caf278aeb3mr1856160385a.86.1770737151201;
        Tue, 10 Feb 2026 07:25:51 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8c9e:96c2:2930:e0f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm106676775e9.2.2026.02.10.07.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 07:25:50 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: monaco-evk: Configure USB1 as peripheral and USB0 as host
Date: Tue, 10 Feb 2026 16:25:48 +0100
Message-Id: <20260210152548.769951-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fcOgCkQF c=1 sm=1 tr=0 ts=698b4e00 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=gjCkitBQ8UzLeNF7HDgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: rmYbFp3_MKZLdtWS6tQYa--crKCEETCv
X-Proofpoint-ORIG-GUID: rmYbFp3_MKZLdtWS6tQYa--crKCEETCv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEyOSBTYWx0ZWRfX/8Ji/3fE2Zj0
 icXzzv+F9Q2OogigoZfeL0oSorRi3KWM/K2Nimlrv8h7MbKsZsmp0kw7MJBEEqUh5PCp0vokqyX
 cTFSB9zegsO0q6l8S8TSedoN/HlGQ9KmOXIY/BHiCXzNA8MjBfOONAStjrwp7rctk8rnbK/avs6
 aL08WClOG/aYhB5t56PPENsAdfj64hxvOue6JuZdhziCBweiexuenN+ii19AjL48YdeZ2t1uYBt
 IaVzGUzB9z8lQgTl+VD7cRnX2Jbd+x4dNPkmUYzEJdS9vLl2fmtnPjuStUy+Pa2fPv9/NAawS/A
 WWKOtFWJFBuDdQgvoqO3e5Y557h634C+NqttvbTHJ2ky4s7eY9RD/wDxJhaXjBGV76zuzGvwD73
 8O+bP6sMLPb5/m8Fgh27dwDQZHoasIVIc6mS/GxituTt7HFTjiHf2BaGS2D9WUvduG5lBCFHTU3
 ai6urvzQ6t7mvoChbTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264457-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7D0AB11C71E
X-Rspamd-Action: no action

On the monaco‑evk, USB1/HS is routed to the micro‑USB connector labeled
ADB/JUSB2. Enables that port and configures it in peripheral mode, as
expected for ADB/debug usage.

USB0/SS+HS is also repurposed into Host mode so that external peripherals
can be connected to the monaco‑evk, allowing it to function as a proper
SBC (e.g with USB/HID devices connected).

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 565418b86b2a..e98bffb5173d 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -593,8 +593,9 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+/* Host Mode on USB0 SS+HS (JUSB0) */
 &usb_1 {
-	dr_mode = "peripheral";
+	dr_mode = "host";
 
 	status = "okay";
 };
@@ -613,3 +614,18 @@ &usb_qmpphy {
 
 	status = "okay";
 };
+
+/* Peripheral Mode on USB1 HS (JUSB2/ADB) */
+&usb_2 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l7c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
-- 
2.34.1


