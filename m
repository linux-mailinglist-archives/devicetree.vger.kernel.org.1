Return-Path: <devicetree+bounces-244701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C7CA7F08
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8FCB321DA25
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E3732D0CD;
	Fri,  5 Dec 2025 14:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cgub+KtK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cnG/TVaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C743D1DF25F
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944635; cv=none; b=m0v4PGXpWJLAn9bHANA/mMseM5zBlC79OxLjGxI5h6RkrAo3IsYAEBRIbA/rJJIhIUyDzn65OzQ78IDmYvl4+6emo1YxIXDCIjodOm+o3GnPYA67jhL7Qcv2x6NmfHbC8SQZAkw3ukdlp0juNZafmRmlANJZo5EYbSa+xkoAOFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944635; c=relaxed/simple;
	bh=/jOuE8d3e+GobmPU/LxYOH5c9BjtLinrRk2fHtRwo6Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oy/3tckcxy2bFB4m44RZ1vjNwMz79B2pEEDsrABd9T/OJSEJ44wUXH3UsmNXGFxbRHPoyxKRfoFQTJxL0yFmMvOiEZxsOM0IAYBIIkakVEcqgnN1vQ5ilkKUW6+KhK/6ogACsuMyOI3YHMNlaMx8nqjvjKSCRmYHX7Lrw8ZOwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cgub+KtK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cnG/TVaP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58kphv2896632
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vuWCgPoPMe2sLAxDvJpqamX3L7dnWA61SvmNLE48LOI=; b=Cgub+KtK6STxiPeu
	tVZbBpk6picphClrLntCWc26VyW17/kTfdEF+ARfNkdQcUOSWcpUrVTm1Vx3awIS
	MyWdzDk7KT8wAlkop9PKaHrX13U3xKBLRmixP/sVDa6q4TJbeyHo0E5yEhEhudlU
	ZMsocCJeG8ZflpcCPIXpgMvFrct5p+M4piACxGDzbE/2vADvdJhzj/WIiuN3V/DH
	OXwhe8VckMLY/P90m01bto6Cb9vBC5mc/XzGnNIYD8Yg6WhDO/T1rZiVuBmMgfSV
	1bsyt0y+tyfejEg3Eqk3hj3axSuCzqEP06/QNovSYCBrQ0ARQntiHVDZ5/aaFk+x
	jBrurg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj2841-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:23:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b30b6abb7bso445094685a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944627; x=1765549427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vuWCgPoPMe2sLAxDvJpqamX3L7dnWA61SvmNLE48LOI=;
        b=cnG/TVaP9149BQUGrtHLOtTOdB44DmxTsLFyKqj8ZpFECJEYqASoy0P2hLN6kFqusk
         hwmZIPlj1HbMNcs33Knmvl9JMxYRsCL6mETfOPfy3Ccno+sd2PwGKYBbnTm3KGLWVMnm
         BW9T7tzMJISqcRdW2f0x+vhSDS2OCLJHTQiUSU/KmZJ6qMH5A2mU18CNusrspHnEgtOu
         n6l5MdoMrRiw0vlQfqmsBWRqM0ZAVknCHfCuxOrD7TMTewGXlpOXgGd9K/GzSA1XTI1s
         ZvN4/yBmqkQB5OVRY2Z/lFYSb09hMkFgdA3IRdx8WydBeNgsVTbM0inSEc/PtbFAuRgA
         P6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944627; x=1765549427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vuWCgPoPMe2sLAxDvJpqamX3L7dnWA61SvmNLE48LOI=;
        b=D/cRgp7M7RV9pakE/l0Jo3HhPmyIUYvUIilC1nEugTle/hqcBnkVLcaUvApAeTf8OT
         oVF+HjyROeD9vmRAgC9NnqFOXLtN2yYn+cBxXIugYq5uxbEG2PKwoFDmbg9iks+ANvvO
         /FO5ZJ+Y3hQp70KtRBnIqL8PuiTmucT8+d9OlRNmrVSmedw+uVtPTa3PGR4x/79To0ET
         QuNVmKPmsbs9nlpW6j/syIAsCMWXvwCqpL5uy0BIeTlNI0K0nWKLUlHI98uJNs3T9VlU
         rm2hKf0eBLY9L1BFEfGvl8UQD2YxcouQ+VcTCW7w8bbiVCt40OQRpJugH4PKsnQSF4eI
         G7sg==
X-Forwarded-Encrypted: i=1; AJvYcCWffQ5xxP0WUbX5l68MI/0+cy1y2NXAVloDmzLN4Xsp2Y+d4tnQTMun3ghLIgigeIcctvH05HNn+m9f@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7pJ3tiVH5uUMsXCqhtnakdGddyaCFIcLJ84HUZ0bGDPoTNBap
	lSpe9zc1pjO6KB7SKUBr/u/XUgwYlhiP9PkIsBcKO5REeNHRl238q5r9IJ5im+AzVel1a6O1Ioz
	Zk2hbpWRlanRMLYUafroh/qOqnYiHH3ErZs0QT36zbeMomkepxXIdcT5j7pMRwEsW
X-Gm-Gg: ASbGncu6S+Wi0qhuQXkEk7WO3pyUdzt4rLdpd5331HgvI7AN8USTiGCJcIXboP648sK
	WjzfwHxQFJyT8WWc17vdgGgdlUAscw82wb4TEj/Vjb3NaA5L+jwOGF8SLdYOERhxN0GESB0f37n
	61Y726FFLmUOGP5gONxPlVDIRmOwlUR44Y9ZkRCA7vS4jlWPHV+61Pz2DChJWepNHvVkLyII3k3
	gzLGTbsSWbmFXNVe4GmtvRJc9hiE8u2i6E9U6hqAEriSaWiyCs6Oo1n4Y95v811La6uftmJhsTC
	g5wPaK7I7QqS6Pjar/HxllBP5jeekoVV5QPVo1kHCkgwC38f3p1ZrlUe9N1yF++8xdGlU/6UMSd
	TzAzU2k2hmxrtcHc=
X-Received: by 2002:a05:620a:3707:b0:8b1:2fab:30cd with SMTP id af79cd13be357-8b5e6c85198mr1450488085a.52.1764944627076;
        Fri, 05 Dec 2025 06:23:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJoe/V3+W7iCC9aVyWGOKM6JVC+El/xXC21ffsundrZ5R3xFUaKj3gQjm3fD4l82TuLMOh2Q==
X-Received: by 2002:a05:620a:3707:b0:8b1:2fab:30cd with SMTP id af79cd13be357-8b5e6c85198mr1450481985a.52.1764944626461;
        Fri, 05 Dec 2025 06:23:46 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:45 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:23 +0200
Subject: [PATCH v5 4/4] phy: qcom: edp: Add Glymur platform support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=12665;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZjnlIFJ6jxUYrs54lCL+1d5Ia/TJ6NcelFmy9NSrpBw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurn5lnmsEJk7M0Zwer5LgjSQ85D8dVEzV0Dm
 za+dX7K9yKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5wAKCRAbX0TJAJUV
 VkOwEACDK2s8St9CNUdccLELxPTP4KOPca7F06OYaP45uuEU2123cBZq336btFh0RFSiOs4RPlv
 V6PFMLK7bsMnkH2bEkPxPS2NNv4vQ9V1ldBucY7TTF2JfqON/7V3lu7k0W53Jf0Udg5VC05C9cD
 UUXMYtSZ7hPZUcSSjkDT0KzeJpE2IyvDchyQcBsoywnx7uaotwanOJtxllIzsr7cn58dAe2r78R
 SiQS7IdIukKThKHKdMlrCaxlx30BiFYCcK58P0gmsScqjG4fBq8v84PEILoKoORZIWbZb0ClaOF
 /OFlU8/ENu6vf6c9fSYs5N/Tl6WgyFyKBHbSXnGuCo3m27ErRUUPXvjqWvxf/h0cALhmOTnjtQR
 XWZ3zZ5vaPwzYrzR7fByPjxC4y3htBSZinBAPmKY/S8VEcriWsGJyJx9EdHdDt7huo8TZs9wKJ/
 E74TRct0bRuspzTRccNfR47lplMZZFxPNt8gJu9TPmzcEqbonmD2Jh6RO+QfAxbJHmL/i6kSR8S
 1qCiYOKBuFyYa0gI0kk0aOi8RZhn/Q/89P+ti8qtyJCPJvCAOpWeHE0fWdE9+0qfr+4uWdA7vHA
 jh3VylpNcQrMA8Ud9hS7bff2+lHQB2rZRSofPWnN3RsCI0D+JL6FToj+i2Mpc+NL9KZ8eNYU1Z8
 S5t5mgzRcrFh/xQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932eaf3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bEOjLjralwRXGxFemJsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: t5iaxBWA2XXyO1fx3zhiHEhQJfVyt8uC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfXxUMpnxRh/kBd
 vkichmxKEV6KDCHyx+/ZPqc+7lMN+jdGLyB3XbdPAWPeYO192dScyWbJHDld1SWpWVujcHI0vkd
 IFzoDEKtB6foNIRlu/B9YZFIZ0dJMgicyiGkFGovtjmxKUDPx2UMVBEdmpuE++sxcPh120Iz7CD
 yJC7Ms6tQ825+Dx/XkGTzGuG92xRolsfJWxRjeropJMfvAYYEtXfClewVTcXUc+MNdMBEdzcnSn
 lMxqMr72De26xcq+vhM9itVLmuxo39sP1uOaFugIKb9lg+TYzheWVyq9bKfGYzcKlBYsgxTjitW
 fUYUM3mlOfnD6uHKi58pgZdP5vLT07Tv474GpCedsF7X9uzv7bZ1PZigi1B9fqxh8t92vjXhsPd
 iKBd9wUR1ccp3N/PKh//M8NChJdxiQ==
X-Proofpoint-GUID: t5iaxBWA2XXyO1fx3zhiHEhQJfVyt8uC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050103

From: Abel Vesa <abel.vesa@linaro.org>

The Qualcomm Glymur platform has the new v8 version
of the eDP/DP PHY. So rework the driver to support this
new version and add the platform specific configuration data.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
 1 file changed, 224 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f98fe83de42e..052b7782b3d4 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -26,6 +26,8 @@
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
+
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
 #define DP_PHY_CFG_1                            0x0014
@@ -76,6 +78,7 @@ struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
 	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 };
@@ -83,6 +86,8 @@ struct phy_ver_ops {
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
+	int aux_cfg_size;
+	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -185,6 +190,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_vco_div_cfg_v4[4] = {
+	0x1, 0x1, 0x2, 0x0,
+};
+
 static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
 	{ 0x05, 0x11, 0x17, 0x1d },
 	{ 0x05, 0x11, 0x18, 0xff },
@@ -210,6 +219,14 @@ static const u8 edp_phy_aux_cfg_v5[10] = {
 	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_aux_cfg_v8[13] = {
+	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
+};
+
+static const u8 edp_phy_vco_div_cfg_v8[4] = {
+	0x1, 0x1, 0x1, 0x1,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -224,7 +241,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
-	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);
+
+	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+	if (ret)
+		return ret;
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -252,7 +273,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
+	for (int i = 0; i < edp->cfg->aux_cfg_size; i++)
 		writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
@@ -345,22 +366,22 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[0];
 		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[1];
 		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
-		vco_div = 0x2;
+		vco_div = edp->cfg->vco_div_cfg[2];
 		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
-		vco_div = 0x0;
+		vco_div = edp->cfg->vco_div_cfg[3];
 		*pixel_freq = 8100000000UL / 6;
 		break;
 
@@ -398,6 +419,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v4(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -530,6 +556,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
@@ -537,17 +564,23 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v5),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -555,6 +588,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -734,10 +769,192 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
+static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	case 5400:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 hsclk_sel;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x5;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x3;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 5400:
+	case 8100:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL);
+	writel(0x3b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x96, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
+
+static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
+{
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1);
+
+	return 0;
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v8(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
+static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+};
+
+static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v8,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v8),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v8,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -1133,6 +1350,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
+	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },

-- 
2.48.1


