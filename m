Return-Path: <devicetree+bounces-219489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC3FB8BE55
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42576A05B7F
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D9D25484D;
	Sat, 20 Sep 2025 03:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iJCLG5K5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0D2459E7
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338491; cv=none; b=Kdd8l/ufRyhB0QcVNyjz0obMyFMwvvjTswlh58AVVpSaTqYidkefuVollese/xIo03WqsxPvWodDPIq21PWuyZcm/XFHZw5aCIyaWYL4mVHUXKAr8zSmgVlJKBR7gzq3wImiQZLJGAQcRGyLZVQqfvQj4R0+tAZgr72+pUwiTks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338491; c=relaxed/simple;
	bh=kP94qs9O8DLQcs2Bvirs3zIUN/e+b/TSSwwcST/H/sw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u4kyzD4I43sOBxDXNrOgE2LIE0JZkmWkj6XSVbthHHSiC1AxYp7fKUBGFMEFTxNr482xNI69x9OO6tNRUuqARwXf99VgCdvVHibWKAYplWxL987oPDX8mEoPRJE+1DID/TD+vpKSXy/LebZ5zPR3jOJPDTUQVKhLvXOyGudjLPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iJCLG5K5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FVBi023775
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6uA00onJvkc
	yy2M4ZvUqeOEt+eh84BjDYyNUmNEMNdU=; b=iJCLG5K5y5LXSke0an0jS6RPOOC
	7HuyWTkzcucl6yxfe+N7K38UlJerDUYkkFwGi37UqKs6CjIvueeWpMc8JZKrB6BZ
	yjemXDDG2iP7plYqEpLHoWvhxuBRtaUFnmq49boNm8xrJcrK4UgAL6uWmHz3CiRg
	w1L0RbC0ua6TOrO0UPiI+tW74nLJG1jbu8qYba77RhnrjB2Ne7vjOK+/X4ZeLVJe
	hBGjXLloLgoaWzEMdUV3n+xYIW9MTPmqtp5twpt3Uc0btFeY7kLjAu5JC404RdRx
	7xpdmPPOOOuRZflrmDYtYCECJcBLxA0qT8IC9GcFWS4LDjbxzfKYY2cWYyQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwmfyf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-777d7c52cc3so4208147b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338487; x=1758943287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6uA00onJvkcyy2M4ZvUqeOEt+eh84BjDYyNUmNEMNdU=;
        b=eARtIWL6YC6ekvPlyNySUqD3Oyu+KRZamWIfVcKoEYXoDrQ/3FaaW17twvso/x27yJ
         guHZITXwaeWqeRABXd4ph9IeVTSunb8gP0tHNQkqYBb/Yb/aaSI+rvaanYhfKeP67Npm
         3VBNpB91I6Sj4UpP+uEVuoxiAq9KZfVUfBonrmrSwTldaMUDHQ1LnBDbsAFhkf/XMa1k
         0fgWp/TTHJTPN4a1nT2bDN00sb1aohwaQqTHjEPhL9Zon2oLxbG0uzhKZoiLBTU7zjXe
         b153Ms2JjTblWLCj3loSLL5CvPZr1OPVp1K4XwH7yDZHc9SQc0FC6YEC3CXUrTsEY0jm
         1LXw==
X-Forwarded-Encrypted: i=1; AJvYcCV73QPql6Nn8Y7+EvzDX3ktIWK2Yz0U0mobHBLhSyDKT/lm71DWIdgRnpaAsTQURGa7lvisnqMxSgrW@vger.kernel.org
X-Gm-Message-State: AOJu0YxGodkgIg+dvyFSUnnKjpB8gll4ZpCzhloLhpnSSVWDO/IugoOb
	LsD8TStTT4lAJrWo4WGpv7VqZTKZ8oVCLgYob7mfqnDVg5xO8w2JVW9dasROahXRmOArkyX6kMA
	iv2SfGOZkE6e1/41dwLsOdfw69FvbixGwguKHCTWT/7QDsffAy8obWe3jy3QhE8Uu
X-Gm-Gg: ASbGncuxGRnnFCZASVcaRWbNSzP+MJFXTAGhNQ2ymVxqx9DWSxrxydj10jMGtN4LFbG
	xeaVz8f3dxGt5lMb2Q+93SRaAGUbzSm/p/jTvMOGvbxVPismpMyD+RBES6CIyPUTYy0uAmK7Sjl
	rUIG15zb/mjoWVmiCE3AadCZPs9KvR3qLMnr0zGu4XX0tnFZhMYPdIlxjAZPTgv+Wl3G8o9wMnO
	mupmrZqPTKzX2nYvGuRr4MEZwTgK7NaQPRUICbBiHm7Ftne4rNyBTUgFG422FqI4etfkdhfH/Cp
	GNZG3h+cfkC1RIC2ZimHibPqa832DwmcYaebGJ6H56/v5H8UdvERV+pWkYc82brQk7RFT0M4uHw
	ot0paG6K5HgtPP8gz
X-Received: by 2002:a05:6a20:9143:b0:262:cbbc:312c with SMTP id adf61e73a8af0-2925d0de225mr8589056637.17.1758338487155;
        Fri, 19 Sep 2025 20:21:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFXJwFYvetfpsIeKUWHiInvLQN1H67mlVltjKBQFq18DtwSU2ecOTFXwigElZASvrT0QR38Q==
X-Received: by 2002:a05:6a20:9143:b0:262:cbbc:312c with SMTP id adf61e73a8af0-2925d0de225mr8589029637.17.1758338486759;
        Fri, 19 Sep 2025 20:21:26 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:26 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Date: Fri, 19 Sep 2025 20:21:08 -0700
Message-Id: <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68ce1db8 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LPx1eKQi2Xt_nUOAx-wA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9U+zVXGTE+ho
 HbZlDAcGf9hx+KPj3A6/BeuNLlSR6UotIgFLjw+Y5mIG3ud8QazIh2bV0Bfg2KCguaVCPUhFkwu
 5St/h8FSApKULF/GNaxf8r2SMtz4Lu0bMySmk52B/5gmvhKKsjY/yAiFXcuHlLdnLDSGR1/D4iv
 LbtvxYyHXb1kICrvXAz0zP9yYCy+XXVFqeftGurQOruhzUnHZ0+KmCXJ5gitJSBUwh93lQoumjo
 a5uob2hIIp+/4jHbJp897hpX/KYF4hP/C1mbj8FNU3ruuT/dNrNPTkY576KR0hz0/zAUvpU2/AF
 laAPdXRzzrr/QXp02vzYsZ3FG2ljectdCeXIl6sSZ5CQpL9rJWDuAAtI3AjN2hbEoB2TRudc/P1
 hNuEhwzB
X-Proofpoint-GUID: oUpQOB7IqdubLDWlxeM86yRZaYDnE2Gu
X-Proofpoint-ORIG-GUID: oUpQOB7IqdubLDWlxeM86yRZaYDnE2Gu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

Change the notation of making the USB repeater a required DT parameter.
Issues were seen when supporting USB2 across different form
factor/platforms, which led to enumeration issues due to improper eUSB2
repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
repeaters, it can utilize repeater settings done in the bootloader,
which cover a wider range of platforms.

For other repeater vendors outside of the SMB/QC PMICs the repeater
should be defined and managed within the kernel.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index f4355d38aad9..b8ddadf78c53 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(phy->phy, phy);
 
-	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	phy->repeater = devm_phy_optional_get(dev, NULL);
 	if (IS_ERR(phy->repeater))
 		return dev_err_probe(dev, PTR_ERR(phy->repeater),
 				     "failed to get repeater\n");

