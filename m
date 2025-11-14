Return-Path: <devicetree+bounces-238593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D0FC5C96C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E83FD4F4A3E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9045730FF37;
	Fri, 14 Nov 2025 10:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pzk/Nxzs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BTxsiQlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A5330147C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115763; cv=none; b=KWHhW0J18HbGIYzWlHfqcvOuBTN5EJWiRPnhWgFPy8t+2hGnYucCru9ubBBmgy6deGy8UTpT8suju/zS7PFZk8Lo8yPr18fmQ/r52c3PUjNJ/xBwNMbc0cdoi/otgVsCpxQ+DjCjyf1gbNFfMvkLgMLZ8zsxH1vKPHaGhqqAUKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115763; c=relaxed/simple;
	bh=cvW46ry7pIu7R0scHAtxGzfzExIsVr93GRnzo1DinzM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JUGhVU5AtkykOZRR4OMePB7QHs+L6054jM364VGuTU8O4W1Tjsb6DVJOMeK1COr4FxUg5zqgrb1RdK3j8TOa3pKwC2WfGS74SusRJz3EoImOReGEQAJJf1qR12nI/bQRauWwY2/gr50xSWgDkOUSnE5VZke3gch1LGetijkOV5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pzk/Nxzs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BTxsiQlO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8iqKA1611644
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UgyTWGbkbQVvLrWWo2qJSUt0tmq/uB9p5M5fSzftSUY=; b=pzk/NxzsthTijrP9
	WMKucxELmsPsAyRm+UaQbb/CgpgX0T4Btr+EMDa2Rd/DF4XcIo0J1yY9+x0Sg2zF
	Jg0g2Rzj96G5zISRBgofX+D2ALM9havqbLSbabBvU/L9eLYk6+A4EyBfw1XNp/Sn
	dghMMScDWMSvCPSPO/zUgWWlxlGX4IMH8ZRXjtXf1RQeTK2MNqTswObqko55qwKl
	TUbGJGSfo56A+cT8J9kRks2/fx7ytB6dtrdsmidPWzjrDtmKqbhn/nqskN9wGrax
	JGFW/3fQFBbYmBTYEp1sEan5wnTPlysms2XkWu61W6O15Bpocbwwli74R3brDJ0F
	nS+8Zg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1sbw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295915934bfso27420305ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763115760; x=1763720560; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UgyTWGbkbQVvLrWWo2qJSUt0tmq/uB9p5M5fSzftSUY=;
        b=BTxsiQlOonMI1RJYVO1YVR7yQYMqYxryq/dfHUpMkr36zge3IWz2d9ayOgIIPv124o
         VyhltXsjPa4yWgoD8P4VCoAM5oCTAtzMnSphASMsaePnW4Y6nmjgW4Be2fLKQ42GfQGk
         1FeW9SAWfO7SNO94wcffF3JH7GF/sUIZcBRYDLgXMHxo2fv5KUIlaIgXN5OLyxcTfUq/
         tFgFEzpMNdCSonCJr5mcoKiYoJBXcOwQP3aFyMj699TfExQeWkiBlc1l7hP0TTn6nWFO
         o23H3QeZeCxnLCmaNvYG98+HmNl4e2yMo47qtK3DSYIK6jSris/yJDYoEETrR/PTjZCj
         fxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115760; x=1763720560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UgyTWGbkbQVvLrWWo2qJSUt0tmq/uB9p5M5fSzftSUY=;
        b=d7F6FiP4RvJlEVCLo2iHJm0bvw50e3vOCCZwbM1lM1688SDvSTG9lvVKB69CUHDBQn
         uci65wfQq2uQCIoJbFq9vgJ+ZZPVnCyTGkNMWr/Xk7nu1zXk3qkWcGsmcVi5yaPQYBQC
         fGUXzDk8wc+ZlBWNmoFzq59zw3WdzQJcnxfpdmW2osFq5LnTPKGtcsPKb+V26oS2w1nU
         FbDyc8Klw+Evt5sq5o/vGQsnfLGTlF76fx6LqO1t8FrAaRS4HxCSEMpmIrlpbmn7dA3w
         l6QkonoTYh1s71RPXMtxKbINCQx4vtDti3TjEH9q+GY9ejtBoJUhIGph98r3VpEj/uxn
         PO3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKrLal5QRc87IiHHVWgb39oMlNktSbt+C6RFwjMDZfu/2WS9VHwHp1xj8s04h+gxcwq0MacTQSdEhO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1dnMwG6Z1h3LgsIur/pS2abePAgcqsbZDUXD+PrylQVD2CxGa
	XSzGgXXBoGCGFF4oMd+ihCSUlWJ+fogyGN3j3c0V3pfwbNgbB4SW8vsjX+Ultp44WvOCsqDHZZK
	nL7x7SAWLITKCGmgHFmso62LVStcxomsnz0tWrCIS7INPgqVWK3KpgNhULwyhfqcz
X-Gm-Gg: ASbGnct7t+nzdlpcPStVTpBDBDTe23N0anUBrgi6j1YkruvPBJIWF93sFFNC36KN5Z2
	0JIRnPLQaoHDtXaFJtycLwId4NoDaWv2Ak+lDZEPXPrQo/CFbuXHjWiOPdkvsTqyCjVu1AciXI1
	4sh0qCSWtZHtq0Wi76nUxQNEO7TgbEpgLYQOfUi599NrJ4IsHgqaSH5QaDH1Lnrl0zmZbbvfT/e
	KAYmgD/nNLzGe2bYcfrr0fFO0b47MU1Tm1ZrE4eliZYWhwUDSIkWsJZ5hZPbmOhiJ9KfZ/x9tu4
	bqI4+nrvZbtyyynucx+MG/gCllZXB3kNqyt8gzMkHm1Xqp0frwvdl+Mw45sdhZCj6nNHsN3CH62
	oPTilBQL8HLITy8l8yUKim92WNcNx
X-Received: by 2002:a17:903:2349:b0:298:5abe:4b1 with SMTP id d9443c01a7336-2986a76bc5fmr26587195ad.52.1763115759369;
        Fri, 14 Nov 2025 02:22:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+NJodpENh5gfXKO3wDwpoE6d1mGJnrqIto96tOBNteYm3rrkrIjPNrBF+fIwbuU/gyWQU6w==
X-Received: by 2002:a17:903:2349:b0:298:5abe:4b1 with SMTP id d9443c01a7336-2986a76bc5fmr26586925ad.52.1763115758812;
        Fri, 14 Nov 2025 02:22:38 -0800 (PST)
Received: from [192.168.1.102] ([120.60.77.228])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245edasm50883705ad.27.2025.11.14.02.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:22:38 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 15:52:19 +0530
Subject: [PATCH 1/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-ath-variant-tbl-v1-1-a9adfc49e3f3@oss.qualcomm.com>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
In-Reply-To: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
To: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
        ath10k@lists.infradead.org, ath11k@lists.infradead.org,
        devicetree@vger.kernel.org, ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9048;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=cvW46ry7pIu7R0scHAtxGzfzExIsVr93GRnzo1DinzM=;
 b=kA0DAAoBVZ8R5v6RzvUByyZiAGkXAt+gRDO6ct4MnDYCpj+7of6Rlq6JRvQD83YvuFDh1OlCx
 okBMwQAAQoAHRYhBGelQyqBSMvYpFgnl1WfEeb+kc71BQJpFwLfAAoJEFWfEeb+kc71OnAH/jZj
 3GhZiZqzaHqWEyIiui5ye6ykDfO/Nw9NmHENl5f4Iov6+bW3OsekjVmUVUgdSl5K5Z8uymnY4R0
 UsjaxQ9/Txv6zu+6f+X+Dos5mlm9GQ8fp4vKmi6iWdYokl3GjVrL2w6n7rFuNO/lLeEIkyCljCG
 MSp5k1PopCLRc939o6GTE0v8owgSqdHy347NiPWwYitvvlCOYu13JMCwSEc6ICUGiBCo+DkZosC
 UaZRRkWKWyM4nefLEYVPpUmJ26+TMqMWZ/3VVzN9o89usYN/ySs8d42nvgb7pnHPLF2ncGHeux8
 15CI1wPpeyLYMf/roAaMAJdnem+4E3Av29NOepc=
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: bcMW2q98VYiaOHsZd376Sa7dkmzVqJ5G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4MiBTYWx0ZWRfX7Gcuih7gaTpT
 hqf08bDvkU+1Xy/y7mUC9NYF3NvQnXYoh7jAm2c98ZPIPBjVntvJiUasVHadqS1VKPp0IuseHgZ
 TIppvTgb/oxnTRTuCEb0I8bJiXsAOztVt5R80OSnBfKYHsEC5QzI4yeKOHNrNSAneeY0VBNLL0i
 UaCSBgSdGOqIrvd3WgpdrU8Nl+RnLwtOeIu4xL4zA7tpecpjpzTyznpw95M8oZKJZoe8dLYPYai
 jPLxxRGTiJLoITXitWGzsQolO0YeAiBlSCi5oHD3qs/DjVOhT0ZgJxY5zh9A1m5GSwXs5SaTwoj
 AvGHTdhtYcbSy3whqVV0zidutumP2aoxp485+PRnJLn0MQUA9lgu1nmCYq2HKFBu4TMD1OTx8/Q
 s3l9GvgeKUcfBg1fxpqdsjiJ3xuGRw==
X-Proofpoint-GUID: bcMW2q98VYiaOHsZd376Sa7dkmzVqJ5G
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=691702f0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=9R49FEQIXN7mQozuOwW6cA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=u1Wyjy0uBQZ4QtDYgmYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140082

On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
'qcom,*calibration-variant' property to select the correct calibration data
for device variants with colliding IDs.

But this property based selection has its own downside that it needs to be
added to the devicetree node of the WLAN device, especially for PCI based
devices. Currently, the users/vendors are forced to hardcode this property
in the PCI device node. If a different device need to be attached to the
slot, then the devicetree node also has to be changed. This approach is not
scalable and creates a bad user experience.

To get rid of this requirement, this commit introduces a static calibration
variant table ath_calib_variant_table[], consisting of the platform model
and the calibration variant for all upstream supported devices. The entries
of this table are derived from the upstream DTS files.

The newly introduced helper, ath_get_calib_variant() will parse the model
name from devicetree and use it to do the variant lookup during runtime. If
the platform model name doesn't match, it will fallback to the devicetree
property based lookup.

Going forward, the devicetree based lookup will be deprecated and this
table will be used exclusively for devices connected to the devicetree
based host platforms.

Tested-on: WCN6750 hw1.0 AHB WLAN.MSL.2.0.c2-00204-QCAMSLSWPLZ-1

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath.h         | 98 ++++++++++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/core.c |  5 ++
 drivers/net/wireless/ath/ath11k/core.c |  7 +++
 3 files changed, 110 insertions(+)

diff --git a/drivers/net/wireless/ath/ath.h b/drivers/net/wireless/ath/ath.h
index 34654f710d8a1e63f65a47d4602e2035262a4d9e..d0a12151b7fc13355161c48ba1fb200e4617ed11 100644
--- a/drivers/net/wireless/ath/ath.h
+++ b/drivers/net/wireless/ath/ath.h
@@ -21,6 +21,7 @@
 #include <linux/skbuff.h>
 #include <linux/if_ether.h>
 #include <linux/spinlock.h>
+#include <linux/of.h>
 #include <net/mac80211.h>
 
 /*
@@ -336,4 +337,101 @@ static inline const char *ath_bus_type_to_string(enum ath_bus_type bustype)
 	return ath_bus_type_strings[bustype];
 }
 
+static const struct __ath_calib_variant_table {
+	const char *machine;
+	const char *variant;
+} ath_calib_variant_table[] = {
+	{ "ALFA Network AP120C-AC", "ALFA-Network-AP120C-AC" },
+	{ "8devices Jalapeno", "8devices-Jalapeno" },
+	{ "Google cozmo board", "GO_COZMO" },
+	{ "Google damu board", "GO_DAMU" },
+	{ "Google fennel sku1 board", "GO_FENNEL" },
+	{ "Google fennel sku6 board", "GO_FENNEL" },
+	{ "Google fennel sku7 board", "GO_FENNEL" },
+	{ "Google fennel14 sku2 board", "GO_FENNEL14" },
+	{ "Google fennel14 sku0 board", "GO_FENNEL14" },
+	{ "Google juniper sku16 board", "GO_JUNIPER" },
+	{ "Google makomo sku0 board", "GO_FENNEL14" },
+	{ "Google makomo sku1 board", "GO_FENNEL14" },
+	{ "MediaTek kakadu board sku22", "GO_KAKADU" },
+	{ "MediaTek kakadu board", "GO_KAKADU" },
+	{ "Google katsu board", "GO_KATSU" },
+	{ "Google katsu sku38 board", "GO_KATSU" },
+	{ "MediaTek kodama sku16 board", "GO_KODAMA" },
+	{ "MediaTek kodama sku272 board", "GO_KODAMA" },
+	{ "MediaTek kodama sku288 board", "GO_KODAMA" },
+	{ "MediaTek kodama sku32 board", "GO_KODAMA" },
+	{ "MediaTek krane sku0 board", "LE_Krane" },
+	{ "MediaTek krane sku176 board", "LE_Krane" },
+	{ "Qualcomm Technologies, Inc. Lemans Ride Rev3", "QC_SA8775P_Ride" },
+	{ "Qualcomm Technologies, Inc. Lemans Ride", "QC_SA8775P_Ride" },
+	{ "Qualcomm SA8775P Ride Rev3", "QC_SA8775P_Ride" },
+	{ "Qualcomm SA8775P Ride", "QC_SA8775P_Ride" },
+	{ "Lenovo Miix 630", "Lenovo_Miix630" },
+	{ "Fairphone 5", "Fairphone_5" },
+	{ "Qualcomm Technologies, Inc. QCM6490 IDP", "Qualcomm_qcm6490idp" },
+	{ "SHIFT SHIFTphone 8", "SHIFTphone_8" },
+	{ "Qualcomm Technologies, Inc. QCS615 Ride", "QC_QCS615_Ride" },
+	{ "Qualcomm Technologies, Inc. Robotics RB3gen2", "Qualcomm_rb3gen2" },
+	{ "Qualcomm Technologies, Inc. Robotics RB1", "Thundercomm_RB1" },
+	{ "Qualcomm Technologies, Inc. QRB4210 RB2", "Thundercomm_RB2" },
+	{ "Google Homestar (rev2)", "GO_HOMESTAR" },
+	{ "Google Homestar (rev3)", "GO_HOMESTAR" },
+	{ "Google Homestar (rev4+)", "GO_HOMESTAR" },
+	{ "Google Kingoftown", "GO_KINGOFTOWN" },
+	{ "Google Lazor Limozeen without Touchscreen (rev10+)", "GO_LAZOR" },
+	{ "Google Lazor Limozeen without Touchscreen (rev5 - rev8)", "GO_LAZOR" },
+	{ "Google Lazor Limozeen without Touchscreen (rev9)", "GO_LAZOR" },
+	{ "Google Lazor Limozeen (rev10+)", "GO_LAZOR" },
+	{ "Google Lazor Limozeen (rev4 - rev8)", "GO_LAZOR" },
+	{ "Google Lazor Limozeen (rev9)", "GO_LAZOR" },
+	{ "Google Lazor (rev1 - 2)", "GO_LAZOR" },
+	{ "Google Lazor (rev10+) with KB Backlight", "GO_LAZOR" },
+	{ "Google Lazor (rev10+) with LTE", "GO_LAZOR" },
+	{ "Google Lazor (rev10+)", "GO_LAZOR" },
+	{ "Google Lazor (rev3 - 8) with KB Backlight", "GO_LAZOR" },
+	{ "Google Lazor (rev3 - 8) with LTE", "GO_LAZOR" },
+	{ "Google Lazor (rev3 - 8)", "GO_LAZOR" },
+	{ "Google Lazor (rev9) with KB Backlight", "GO_LAZOR" },
+	{ "Google Lazor (rev9) with LTE", "GO_LAZOR" },
+	{ "Google Lazor (rev9)", "GO_LAZOR" },
+	{ "Google Pazquel (Parade,LTE)", "GO_PAZQUEL360" },
+	{ "Google Pazquel (Parade,WIFI-only)", "GO_PAZQUEL360" },
+	{ "Google Pompom (rev1)", "GO_POMPOM" },
+	{ "Google Pompom (rev2)", "GO_POMPOM" },
+	{ "Google Pompom (rev3+)", "GO_POMPOM" },
+	{ "Google Wormdingler rev1+ (BOE, rt5682s)", "GO_WORMDINGLER" },
+	{ "Google Wormdingler rev1+ BOE panel board", "GO_WORMDINGLER" },
+	{ "Google Wormdingler rev1+ (INX, rt5682s)", "GO_WORMDINGLER" },
+	{ "Google Wormdingler rev1+ INX panel board", "GO_WORMDINGLER" },
+	{ "Qualcomm SC8280XP CRD", "QC_8280XP_CRD" },
+	{ "Lenovo ThinkPad X13s", "LE_X13S" },
+	{ "Microsoft Surface Pro 9 5G", "MS_SP9_5G" },
+	{ "Windows Dev Kit 2023", "MS_Volterra" },
+	{ "Inforce 6560 Single Board Computer", "Inforce_IFC6560" },
+	{ "Thundercomm Dragonboard 845c", "Thundercomm_DB845C" },
+	{ "Qualcomm Technologies, Inc. SDM845 MTP", "Qualcomm_sdm845mtp" },
+	{ "Lenovo Yoga C630", "Lenovo_C630" },
+	{ "F(x)tec Pro1X (QX1050)", "Fxtec_QX1050" },
+	{ "Lenovo Tab P11", "Lenovo_P11" },
+	{ "Qualcomm Technologies, Inc. SM8150 HDK", "Qualcomm_sm8150hdk" },
+	{ "Xiaomi Mi Pad 5 Pro (BOE)", "Xiaomi_Pad_5Pro" },
+	{ "Xiaomi Mi Pad 5 Pro (CSOT)", "Xiaomi_Pad_5Pro" },
+	{ "ASUS Zenbook A14 (UX3407QA)", "UX3407Q" },
+	{ "Google Scarlet", "GO_DUMO" },
+	{ /* Sentinel */ }
+};
+
+static inline const char *ath_get_calib_variant(void)
+{
+	const struct __ath_calib_variant_table *entry = ath_calib_variant_table;
+	struct device_node *root __free(device_node) = of_find_node_by_path("/");
+	const char *model = of_get_property(root, "model", NULL);
+
+	while ((entry->machine) && strcmp(entry->machine, model))
+		entry++;
+
+	return entry->machine ? entry->variant : NULL;
+}
+
 #endif /* ATH_H */
diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 6f78f1752cd6ffcf8eb56621ba0e4978ac23e696..099b8592d50bfac37c54dee7b0aa660ac126a410 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -1161,6 +1161,10 @@ int ath10k_core_check_dt(struct ath10k *ar)
 	struct device_node *node;
 	const char *variant = NULL;
 
+	variant = ath_get_calib_variant();
+	if (variant)
+		goto copy_variant;
+
 	node = ar->dev->of_node;
 	if (!node)
 		return -ENOENT;
@@ -1173,6 +1177,7 @@ int ath10k_core_check_dt(struct ath10k *ar)
 	if (!variant)
 		return -ENODATA;
 
+copy_variant:
 	if (strscpy(ar->id.bdf_ext, variant, sizeof(ar->id.bdf_ext)) < 0)
 		ath10k_dbg(ar, ATH10K_DBG_BOOT,
 			   "bdf variant string is longer than the buffer can accommodate (variant: %s)\n",
diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
index 2810752260f2f7eee226f88d5aea7cdabe7e9ed4..2db067d6357c8848ede7384ec4a615ca22282650 100644
--- a/drivers/net/wireless/ath/ath11k/core.c
+++ b/drivers/net/wireless/ath/ath11k/core.c
@@ -20,6 +20,8 @@
 #include "wow.h"
 #include "fw.h"
 
+#include "../ath.h"
+
 unsigned int ath11k_debug_mask;
 EXPORT_SYMBOL(ath11k_debug_mask);
 module_param_named(debug_mask, ath11k_debug_mask, uint, 0644);
@@ -1362,6 +1364,10 @@ int ath11k_core_check_dt(struct ath11k_base *ab)
 	const char *variant = NULL;
 	struct device_node *node;
 
+	variant = ath_get_calib_variant();
+	if (variant)
+		goto copy_variant;
+
 	node = ab->dev->of_node;
 	if (!node)
 		return -ENOENT;
@@ -1374,6 +1380,7 @@ int ath11k_core_check_dt(struct ath11k_base *ab)
 	if (!variant)
 		return -ENODATA;
 
+copy_variant:
 	if (strscpy(ab->qmi.target.bdf_ext, variant, max_len) < 0)
 		ath11k_dbg(ab, ATH11K_DBG_BOOT,
 			   "bdf variant string is longer than the buffer can accommodate (variant: %s)\n",

-- 
2.48.1


